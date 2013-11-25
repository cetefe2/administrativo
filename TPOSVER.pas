unit TPOSVER;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls, QuickRpt;

type
  TFORSVER = class(TForm)
    Bevel1: TBevel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btEmail: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edInstCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImprimirTodas: Boolean;
  end;

var
  FORSVER: TFORSVER;

implementation

Uses TPODTA, TPOFNC, TPOINS, TPORVER;

{$R *.DFM}

procedure TFORSVER.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F2: edInstCodDblClick(Sender);
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSVER.btImprimirClick(Sender: TObject);
begin
  if edInstCod.Text = '' then
  begin
    MSGERRO('Instituição não informada!');
    edInstCod.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRVer := TQRVer.Create(Application);
    QRVer.QRQuebraCurso.Enabled := (edInstCod.Text = '261') OR (edInstCod.Text = '331');
    Screen.Cursor := crDefault;
    QRVer.Preview;
    QRVer.Free;
  end;
end;

procedure TFORSVER.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSVER.edInstCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edINStCod.Text  := FORINS.F2Codigo;
    edINStNome.Text := FORINS.F2Nome;
    SelectNExt(ActiveControl,True,True);
  end
  else
  begin
    edINStCod.Text := '';
    edINStNome.Text := '';
  end;
  FORINS.Free;
end;

procedure TFORSVER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.QuVErEsc.Close;
  Action := caFree;
end;

procedure TFORSVER.FormShow(Sender: TObject);
begin
  If Not ImprimirTodas then
  begin
    with DmDta.quVerEsc do
    begin
      Close;
      ParamByName('inst_cod').asInteger := -1;
      Open;
    end;
  end;
end;

procedure TFORSVER.edInstCodExit(Sender: TObject);
begin
  if edInstCod.Text <> '' then
  begin
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text));

    if edInstNome.Text <> '' then
    begin
      with DmDta.quVerEsc do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select');
        SQL.Add('  e.est_nome, i.inst_nome, e.pcu_peratual, e.pcu_anoatual, c.cur_nome,');
        SQL.Add('  m.emp_nome, i.inst_cidade,');
        SQL.Add('  (select count(*) from Tce t, Estudante e1 where t.est_cod = e1.est_cod and');
        SQL.Add('   e1.inst_cod = i.inst_cod and t.tce_situacao <> ''7'') as TotEstagiarios');
        SQL.Add('from');
        SQL.Add('  Tce t, instituicao i, estudante e, curso c, empresa m');
        SQL.Add('where');
        SQL.Add('  t.est_cod = e.est_cod and');
        SQL.Add('  e.inst_cod = i.inst_cod and');
        SQL.Add('  e.cur_cod = c.cur_cod and');
        SQL.Add('  t.emp_cod = m.emp_cod and');
        SQL.Add('  i.inst_cod = :inst_cod and');
        SQL.Add('  t.tce_situacao <> ''7''');
        If (edInstCod.Text = '261') OR (edInstCod.Text = '331') then // Tuiuti
          SQL.Add('order by c.cur_nome, e.est_nome')
        else
          SQL.Add('order by e.est_nome');
        ParamByName('Inst_cod').Text := edINStCod.Text;
        Open;

        If IsEmpty then
        begin
          MSGAVISO('Não há estudantes cadastrados nesta instituição!');
          edInstCod.SetFocus;
        end;
      end;
    end;
  end
  else
    edInstNome.Text := '';
end;

procedure TFORSVER.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSVER.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quVerEsc, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSVER.FormCreate(Sender: TObject);
begin
  ImprimirTodas := False;
end;

end.
