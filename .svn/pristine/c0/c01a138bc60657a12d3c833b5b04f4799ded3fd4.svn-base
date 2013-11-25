unit TPOVCU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORVCU = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Vaga: Integer;
    F2: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
  end;

var
  FORVCU: TFORVCU;

implementation

uses TPODTA, TPOFNC, TPOCUR, TPOINS;

{$R *.DFM}

procedure TFORVCU.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'cur_cod';
  nomeNome := 'cur_nome';
  nomeTabela := 'VagaCurso';
  vaga := -1;

  quPrincipal1 := DmDta.quVagaCurso;
  DmDta.dsVagaCurso.DataSet := quPrincipal1;
end;

procedure TFORVCU.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsVagaCurso.DataSet := DmDta.quVagaCurso;
end;

procedure TFORVCU.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('vag_cod').Text := EdVagCod.Text;
  DBEdit1.SetFocus;
end;

procedure TFORVCU.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
  end;
  inherited;
end;

procedure TFORVCU.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('cur_nome').AsString :=
        DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(DBEdit1.Text));
      Salvou := DBEdit2.Text <> '';
    end;
  end
  else
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('cur_nome').AsString := '';
      Salvou := False;
    end;
  end;
end;


procedure TFORVCU.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORCUR := TFORCUR.Create(Self);
  FORCUR.F2 := True;
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

  if FORCUR.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('cur_cod').Text := FORCUR.F2Codigo;
      quPrincipal1.FieldByName('cur_nome').Text := FORCUR.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORCUR.Free;
end;

procedure TFORVCU.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit1DblClick(Sender);
end;

procedure TFORVCU.btSalvarClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    MSGERRO('Entre com o curso da vaga!');
    DBEdit1.SetFocus;
  end
  else if DBEdit3.Text = '' then
  begin
    MSGERRO('Entre com o ano em curso da vaga!');
    DBEdit3.SetFocus;
  end
  else
  begin
    inherited;
  end;
end;

procedure TFORVCU.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('cur_cod').AsString;
    F2Nome := quPrincipal1.FieldByName('cur_nome').AsString;
    Close;
  end
  else
  begin
    inherited;
    DBEdit3.SetFocus;
  end;
end;

procedure TFORVCU.SetaCodigo(Codigo: Integer);
begin
  Vaga := Codigo;
  edVagCod.Text := IntToStr(Vaga);
end;

procedure TFORVCU.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('inst_cod').Text := FORINS.F2Codigo;
      quPrincipal1.FieldByName('inst_nome').Text := FORINS.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORINS.Free;
end;

procedure TFORVCU.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(Sender);
end;

procedure TFORVCU.DBEdit5Exit(Sender: TObject);
begin
  if (DBEdit5.Text <> '') then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('inst_nome').AsString :=
        DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(DBEdit5.Text));
      Salvou := DBEdit6.Text <> '';
    end;
  end
  else
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('inst_nome').AsString := '';
      Salvou := true;
    end;
  end;
end;

procedure TFORVCU.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  // preenche ano final igual ao ano inicial, se não preenchido
  if (DBEdit3.Text <> '') and (DBEdit4.Text = '') then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then
        quPrincipal1.Edit;
      quPrincipal1.FieldByName('vcu_periodofim').Text := DBEdit3.Text;
    end;
  end;
end;

procedure TFORVCU.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.

