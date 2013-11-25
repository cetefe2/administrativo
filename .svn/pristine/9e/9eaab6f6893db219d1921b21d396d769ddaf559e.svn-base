unit TPOVSW;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORVSW = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbVagStwNivelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Vaga: Integer;
    F2: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
  end;

var
  FORVSW: TFORVSW;

implementation

Uses TPODTA, TPOFNC, TPOIDI, TPOSTW;

{$R *.DFM}

procedure TFORVSW.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'stw_cod';
  nomeNome   := 'stw_nome';
  nomeTabela := 'VagaSoftware';
  vaga       := -1;

  quPrincipal1 := DmDta.quVagaSoftware;
  DmDta.dsVagaSoftware.DataSet := quPrincipal1;
end;

procedure TFORVSW.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsVagaSoftware.DataSet := DmDta.quVagaSoftware;
end;

procedure TFORVSW.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('stw_cod').ReadOnly    := False;
  quPrincipal1.FieldByName('vag_cod').Text        := edVagCod.Text;
  DBEdit1.SetFocus;
end;

procedure TFORVSW.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
  end;
  inherited;
end;

procedure TFORVSW.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    If quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('stw_nome').AsString :=
        DmDta.BuscaCampo('Software', 'stw_nome', 'stw_cod', StrToInt(DBEdit1.Text));
      Salvou := DBEdit2.Text <> '';
    end;
  end
  else
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('stw_nome').AsString := '';
    end;
  end;
end;


procedure TFORVSW.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORSTW        := TFORSTW.Create(Self);
  FORSTW.F2     := True;
  Screen.Cursor := crDefault;
  FORSTW.ShowModal;

  if FORSTW.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('STW_cod').Text  := FORSTW.F2Codigo;
      quPrincipal1.FieldByName('STW_nome').Text := FORSTW.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORSTW.Free;
end;

procedure TFORVSW.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit1DblClick(Sender);
end;

procedure TFORVSW.btSalvarClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    MSGERRO('Entre com o software da vaga!');
    DBEdit1.SetFocus;
  end
  else
    inherited;
end;

procedure TFORVSW.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('stw_cod').AsString;
    F2Nome   := quPrincipal1.FieldByName('stw_nome').AsString;
    Close;
  end
  else
  begin
    inherited;
    quPrincipal1.FieldByName('stw_cod').ReadOnly  := True;
    DBEdit1.SetFocus;
  end;
end;

procedure TFORVSW.SetaCodigo(Codigo: Integer);
begin
  Vaga := Codigo;
  edVagCod.Text := IntToStr(Vaga);
end;

procedure TFORVSW.AtualizaDados;
begin
end;

procedure TFORVSW.CarregaDados;
begin
end;

procedure TFORVSW.cbVagStwNivelClick(Sender: TObject);
begin
  inherited;
  If quPrincipal1.Active then
  begin
    if not (quPrincipal1.State in [dsInsert,dsEdit]) then
      quPrincipal1.Edit;
  end;
end;

end.
