unit TPOSVAG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSVAG = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    Label1: TLabel;
    btEnter: TBitBtn;
    Label2: TLabel;
    btEmail: TSpeedButton;
    GroupBox2: TGroupBox;
    edInstCod: TEdit;
    edInstNome: TEdit;
    GroupBox3: TGroupBox;
    rgTipoVaga: TRadioGroup;
    edTotalEst: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure meDataIniExit(Sender: TObject);
    procedure meDataFimExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery();
  public
    { Public declarations }
  end;

var
  FORSVAG: TFORSVAG;

implementation

Uses TPODTA, TPOFNC, TPORVAGCAN;

{$R *.DFM}

procedure TFORSVAG.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btImprimirClick(Sender);
  end;
end;

procedure TFORSVAG.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    Screen.Cursor     := crHourGlass;
    QRVagCan          := TQRVagCan.Create(Application);
    QRVagCan.DataIni  := meDataIni.Text;
    QRVagCan.DataFim  := meDataFim.Text;
    Screen.Cursor     := crDefault;
    QRVagCan.Preview;
    QRVagCan.Free;
  end;
end;

procedure TFORSVAG.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSVAG.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus;
end;

procedure TFORSVAG.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else
      AbreQuery;
  end;
end;

procedure TFORSVAG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quCandidatosEnc.Close;
  Action := caFree;
end;

procedure TFORSVAG.FormShow(Sender: TObject);
begin
  with DmDta.quCandidatosEnc do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  v.vag_cod, p.emp_nome, m.est_nome');
    Sql.Add('from');
    Sql.Add('  Vaga V, Encaminhamento E, Estudante M, Empresa p');
    Sql.Add('where  V.vag_cod = E.vag_cod');
    Sql.add('and e.est_cod = m.est_cod');
    Sql.add('and p.emp_cod = v.emp_cod');
    Sql.Add('and V.vag_dataabertura between :data1 and :data2');
    Sql.Add('order by');
    Sql.Add('  V.vag_cod, m.est_nome');
    ParamByName('data1').AsDateTime := StrToDateTIme('01/01/1990');
    ParamByName('data2').AsDateTime := StrToDateTIme('01/01/1990');
    Open;

    edTotalEst.Text := IntToStr(RecordCount);
  end;
end;

procedure TFORSVAG.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSVAG.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quCandidatosEnc, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSVAG.AbreQuery;
begin
  if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
  begin
    with DmDta.quCandidatosEnc do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  v.vag_cod, m.emp_nome, t.est_nome');
      Sql.Add('from');
      Sql.Add('  Vaga V, Estudante T, Encaminhamento E, Empresa M');
      Sql.Add('Where  V.vag_cod *= E.vag_cod');
      Sql.Add('and    V.emp_cod  = m.emp_cod');
      Sql.Add('and    T.est_cod *= e.est_cod');
      Sql.Add('and');
      Sql.Add('  V.vag_dataabertura between :data1 and :data2');
      If rgTipoVaga.ItemIndex = 0 then
        Sql.Add('and V.vag_qtde > v.vag_qtdepreenc')
      else if rgTipoVaga.ItemIndex = 1 then
        Sql.Add('and V.vag_qtde = v.vag_qtdepreenc');
      Sql.Add('order by');
      Sql.Add('  V.vag_cod, t.est_nome');
      ParamByName('data1').value := StrToDateTime(meDataIni.Text);
      ParamByName('data2').value := StrToDateTime(meDataFim.Text);
      Open;

      edTotalEst.Text := IntToStr(RecordCount);
    end;
  end;
end;

end.
