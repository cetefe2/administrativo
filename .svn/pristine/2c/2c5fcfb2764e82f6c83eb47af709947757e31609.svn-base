unit TPOEST3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;
//BÁSICO, INTERMEDIÁRIO, AVANÇADO, FLUENTE
type
  TFOREST3 = class(TFORMOD3)
    Label6: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10Exit(Sender: TObject);
    procedure cbPerIdiNivelClick(Sender: TObject);
  private
    { Private declarations }
  public
    EstCod: Integer;
    procedure InicializaDados; override;
    { Public declarations }
  end;

var
  FOREST3: TFOREST3;

implementation

Uses TPODTA, TPOFNC, TPOIDI;

{$R *.DFM}

procedure TFOREST3.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'idi_cod';
  nomeNome   := 'idi_nome';
  nomeTabela := 'PerIdioma';

  quPrincipal1 := DmDta.quPerIdioma;
  DmDta.dsPerIdioma.DataSet := quPrincipal1;
end;

procedure TFOREST3.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;

  inherited;
end;

procedure TFOREST3.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsPerIdioma.DataSet := DmDta.quPerIdioma;
end;

procedure TFOREST3.InicializaDados;
begin
  inherited;
  DmDta.quPerIdiomaEST_COD.Value     := EstCod;
  DmDta.quPerIdiomapid_fala.Value    := 'N';
  DmDta.quPerIdiomapid_le.Value      := 'N';
  DmDta.quPerIdiomapid_escreve.Value := 'N';
  DBEdit10.SetFocus;
end;

procedure TFOREST3.btSalvarClick(Sender: TObject);
begin
  if DBEdit10.Text = '' then
  begin
    MSGERRO('Entre com o idioma do estudante!');
    DBEdit10.SetFocus;
  end
  else
    inherited;
end;

procedure TFOREST3.DBEdit10DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIDI := TFORIDI.Create(Self);
  FORIDI.F2 := True;
  Screen.Cursor := crDefault;
  FORIDI.ShowModal;

  if FORIDI.F2Codigo <> '' then
  begin
    If DmDta.quPerIdioma.Active then
    begin
      if not (DmDta.quPerIdioma.State in [dsInsert,dsEdit]) then dmDta.quPerIdioma.Edit;
      DmDta.quPerIdiomaIdi_cod.Text  := FORIDI.F2Codigo;
      DmDta.quPerIdiomaIdi_nome.Text := FORIDI.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORIDI.Free;
end;

procedure TFOREST3.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then DBEdit10DblClick(Sender);
end;

procedure TFOREST3.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit10.Text <> '') then
  begin
    If DmDta.quPerIdioma.Active then
    begin
      if not (DmDta.quPerIdioma.State in [dsInsert,dsEdit]) then DmDta.quPerIdioma.Edit;
      DmDta.quPerIdiomaidi_nome.Text := DmDta.BuscaCampo('Idioma', 'idi_nome', 'idi_cod', StrToInt(DBEdit10.Text));

      if DmDta.quPerIdiomaidi_nome.Text = '' then
      begin
        MSGERRO('Idioma inexistente. Selecione outro idioma!');
        DBEdit10.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    If DmDta.quPerIdioma.Active then
    begin
      if not (DmDta.quPerIdioma.State in [dsInsert,dsEdit]) then DmDta.quPerIdioma.Edit;
      DmDta.quPerIdiomaidi_nome.Text := '';
    end;
  end;
end;

procedure TFOREST3.cbPerIdiNivelClick(Sender: TObject);
begin
  inherited;
  If quPrincipal1.Active then
  begin
    if not (quPrincipal1.State in [dsInsert,dsEdit]) then
      quPrincipal1.Edit;
  end;
end;

end.
