unit TPOVID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORVID = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
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
    procedure cbVagIdiNivelClick(Sender: TObject);
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
  FORVID: TFORVID;

implementation

uses TPODTA, TPOFNC, TPOIDI;

{$R *.DFM}

procedure TFORVID.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'idi_cod';
  nomeNome := 'idi_nome';
  nomeTabela := 'VagaIdioma';
  vaga := -1;

  quPrincipal1 := DmDta.quVagaIdioma;
  DmDta.dsVagaIdioma.DataSet := quPrincipal1;
end;

procedure TFORVID.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsVagaIdioma.DataSet := DmDta.quVagaIdioma;
end;

procedure TFORVID.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('vag_cod').Text := edVagCod.Text;
  quPrincipal1.FieldByName('vid_fala').Text := 'N';
  quPrincipal1.FieldByName('vid_le').Text := 'N';
  quPrincipal1.FieldByName('vid_escreve').Text := 'N';
  quPrincipal1.FieldByName('vid_fluente').Text := 'N';
  DBEdit1.SetFocus;
end;

procedure TFORVID.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
  end;
  inherited;
end;

procedure TFORVID.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('idi_nome').AsString :=
        DmDta.BuscaCampo('Idioma', 'idi_nome', 'idi_cod', StrToInt(DBEdit1.Text));
      Salvou := DBEdit2.Text <> '';
    end;
  end
  else
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('idi_nome').AsString := '';
      Salvou := False;
    end;
  end;
end;

procedure TFORVID.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIDI := TFORIDI.Create(Self);
  FORIDI.F2 := True;
  Screen.Cursor := crDefault;
  FORIDI.ShowModal;

  if FORIDI.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('idi_cod').Text := FORIDI.F2Codigo;
      quPrincipal1.FieldByName('idi_nome').Text := FORIDI.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;
  FORIDI.Free;
end;

procedure TFORVID.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit1DblClick(Sender);
end;

procedure TFORVID.btSalvarClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    MSGERRO('Entre com o idioma da vaga!');
    DBEdit1.SetFocus;
  end
  else
    inherited;
end;

procedure TFORVID.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('idi_cod').AsString;
    F2Nome := quPrincipal1.FieldByName('idi_nome').AsString;
    Close;
  end
  else
  begin
    inherited;
    quPrincipal1.FieldByName('idi_cod').ReadOnly := True;
    DBEdit1.SetFocus;
  end;
end;

procedure TFORVID.SetaCodigo(Codigo: Integer);
begin
  Vaga := Codigo;
  edVagCod.Text := IntToStr(Vaga);
end;

procedure TFORVID.AtualizaDados;
begin
end;

procedure TFORVID.CarregaDados;
begin
end;

procedure TFORVID.cbVagIdiNivelClick(Sender: TObject);
begin
  inherited;
  if quPrincipal1.Active then
  begin
    if not (quPrincipal1.State in [dsInsert, dsEdit]) then
      quPrincipal1.Edit;
  end;
end;

end.

