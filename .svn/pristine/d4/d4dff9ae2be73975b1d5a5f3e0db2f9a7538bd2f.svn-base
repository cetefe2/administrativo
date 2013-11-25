unit TPOICU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, RxDBComb;

type
  TFORICU = class(TFORMOD3)
    Label1: TLabel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label2: TLabel;
    edInstNome1: TEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cbPerCur: TComboBox;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    retirados: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Inst: Integer;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer; Nome: string);
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
  end;

var
  FORICU: TFORICU;

implementation

uses TPODTA, TPOFNC, TPOCUR, TPOIFU, TPOINS, TPOIFU1, TPOIFU2;

{$R *.DFM}

procedure TFORICU.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'cur_cod';
  nomeNome := 'cur_nome';
  nomeTabela := 'InstCurso';

  quPrincipal1 := DmDta.quInstCurso;
  DmDta.dsInstCurso.DataSet := quPrincipal1;
end;

procedure TFORICU.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsInstCurso.DataSet := DmDta.quInstCurso;
end;

procedure TFORICU.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('cur_cod').ReadOnly := False;
  quPrincipal1.FieldByName('inst_cod').Text := EdInstCod.Text;
  quPrincipal1.FieldByName('curi_registro').Value := '0';
  DBEdit1.SetFocus;
end;

procedure TFORICU.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('inst_cod').AsInteger := Inst;
    Open;
  end;
  inherited;
end;

procedure TFORICU.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaNumero(Key);
end;

procedure TFORICU.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> '' then
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
    if not DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      quPrincipal1.FieldByName('cur_nome').AsString := '';
      Salvou := False;
    end;
  end;
end;

procedure TFORICU.DBEdit1DblClick(Sender: TObject);
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

procedure TFORICU.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit1DblClick(Sender);
end;

procedure TFORICU.btSalvarClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    MSGERRO('Entre com o curso da instituição!');
    DBEdit1.SetFocus;
  end
  else if DBEdit3.Text = '' then
  begin
    MSGERRO('Entre com a duração do curso na instituição!');
    DBEdit3.SetFocus;
  end
  else if DBEdit4.Text = '' then
  begin
    DBEdit4.Text := DBEdit3.Text;
  end
  else
    inherited;
end;

procedure TFORICU.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('cur_cod').AsString;
    F2Nome := quPrincipal1.FieldByName('cur_nome').AsString;
    Close;
  end
  else
    inherited;
end;

procedure TFORICU.SetaCodigo(Codigo: Integer; Nome: string);
begin
  Inst := Codigo;
  edInstCod.Text := IntToStr(Inst);
  edInstNome.Text := Nome;
  edInstNome1.Text := Nome;
end;

procedure TFORICU.btNovoClick(Sender: TObject);
begin
  inherited;
  cbPerCur.ItemIndex := 0;
end;

procedure TFORICU.AtualizaDados;
begin
  inherited;
  DmDta.quInstCursoCuri_periodic.Value := IntToStr(cbPerCur.ItemIndex);
end;

procedure TFORICU.CarregaDados;
begin
  inherited;
  if DmDta.quInstCursoCuri_periodic.Value <> '' then
    cbPerCur.ItemIndex := DmDta.quInstCursoCuri_periodic.AsInteger;
end;

procedure TFORICU.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F2 then DbEdit1DblClick(Sender);
end;

procedure TFORICU.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit5.Text <> '') then
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCursocuri_nomecoord.Value :=
        DmDta.BuscaCampo2('InstCoordenador', 'ico_nome', 'inst_cod', 'coord_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit5.Text));
      DmDta.quInstCursoico_email.Value :=
        DmDta.BuscaCampo2('InstCoordenador', 'ico_email', 'inst_cod', 'coord_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit5.Text));
      DmDta.quInstCursoico_fone.Value :=
        DmDta.BuscaCampo2('InstCoordenador', 'ico_fone', 'inst_cod', 'coord_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit5.Text));

      if DmDta.quInstCursocuri_nomecoord.Text = '' then
      begin
        MSGERRO('Coordenador inexistente. Selecione outro coordenador!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCursocuri_nomecoord.Text := '';
      DmDta.quInstCursoico_email.Text := '';
      DmDta.quInstCursoico_fone.Text := '';
      Salvou := True;
    end;
  end;
end;

procedure TFORICU.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU1 := TFORIFU1.Create(Self);
  FORIFU1.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU1.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU1.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU1.ShowModal;

  if FORIFU1.F2Codigo <> '' then
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCurso.FieldByName('curi_coord').Text := FORIFU1.F2Codigo;
      DmDta.quInstCurso.FieldByName('curi_nomecoord').Text := FORIFU1.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU1.Free;
end;

procedure TFORICU.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(Sender);
end;

procedure TFORICU.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORICU.DBEdit10DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU2 := TFORIFU2.Create(Self);
  FORIFU2.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU2.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU2.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU2.ShowModal;

  if FORIFU2.F2Codigo <> '' then
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCurso.FieldByName('curi_diretor').Text := FORIFU2.F2Codigo;
      DmDta.quInstCurso.FieldByName('curi_nomediretor').Text := FORIFU2.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU2.Free;
end;

procedure TFORICU.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit10.Text <> '') then
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCursocuri_nomediretor.Value :=
        DmDta.BuscaCampo2('Instdiretor', 'idr_nome', 'inst_cod', 'dire_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit10.Text));

      if DmDta.quInstCursocuri_nomediretor.Text = '' then
      begin
        MSGERRO('Diretor inexistente. Selecione outro diretor!');
        DBEdit10.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstCurso.Active then
    begin
      if not (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
        DmDta.quInstCurso.Edit;
      DmDta.quInstCursocuri_nomediretor.Text := '';
      Salvou := True;
    end;
  end;
end;

procedure TFORICU.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit10DblClick(Sender);
end;

procedure TFORICU.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
  begin
    if DmDta.quInstCursocuri_ano.Value > 0 then
    begin
      DmDta.quInstCursocuri_semestre.AsInteger := strtoint(floattostr(DmDta.quInstCursocuri_ano.AsFloat * 2));
    end
  end;

end;

procedure TFORICU.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (DmDta.quInstCurso.State in [dsInsert, dsEdit]) then
  begin
    if DmDta.quInstCursocuri_ano.Value > 0 then
    begin
      DmDta.quInstCursocuri_ano.Value := DmDta.quInstCursocuri_semestre.Value / 2;
    end
  end;
end;

procedure TFORICU.SpeedButton1Click(Sender: TObject);
begin
  FORIFU := TFORIFU.Create(Self);
  FORIFU.NovaIns := false;;
  FORIFU.Inst := strtoint(edinstcod.text) ;
  FORIFU.InstNome := Edinstnome.Text;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;
end;

end.

