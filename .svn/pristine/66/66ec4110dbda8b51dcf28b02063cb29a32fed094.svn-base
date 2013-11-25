unit TPOEST1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db,
  DBTables;

type
  TFOREST1 = class(TFORMOD1)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    cbPerCurInicio: TComboBox;
    cboPEriodic: TComboBox;
    Label1: TLabel;
    cboTurno: TComboBox;
    DBEdit32: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    qrypesquisa: TQuery;
    situacao: TDBComboBox;
    Label13: TLabel;
    ckFormado: TDBCheckBox;
    ckTrancado: TDBCheckBox;
    qryBancos: TQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    qryBancosID_BANCOS: TIntegerField;
    qryBancosCOD_BANCO: TStringField;
    qryBancosBANCO: TStringField;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    dslBancos: TDataSource;
    Label15: TLabel;
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure cbPerCurInicioClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ckFormadoClick(Sender: TObject);
    procedure ckTrancadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREST1: TFOREST1;

implementation

{$R *.DFM}

uses TPODTA, TPOINS, TPOCUR, TPOFNC, TPOEST, TPOICU;

procedure TFOREST1.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    if DmDta.quEstudante.Active then
    begin
      if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then dmDta.quEstudante.Edit;
      DmDta.quEstudanteInst_cod.Text := FORINS.F2Codigo;
      DmDta.quEstudanteInst_nome.Text := FORINS.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORINS.Free;
end;

procedure TFOREST1.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  if DmDta.quEstudanteInst_cod.IsNull then
  begin
    MSGERRO('Escolha a instituição primeiramente!');
    DBEdit3.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
  //FORCUR := TFORCUR.Create(Self);
  //FORCUR.F2 := True;
 // Screen.Cursor := crDefault;
 // FORCUR.ShowModal ;
 
 
    Screen.Cursor := crHourGlass;

    FORICU := TFORICU.Create(Self);
    FORICU.F2 := True;
    FORICU.SetaCodigo(DmDTA.QUEstudante.FieldByName('inst_cod').AsInteger, DmDTA.quEstudante.FieldByName('inst_nome').AsString);
    Screen.Cursor := crDefault;
    FORICU.ShowModal;
    if FORICU.F2Codigo <> '' then
    begin
      if DmDta.quEstudante.Active then
      begin
        if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then dmDta.quEstudante.Edit;
        DmDta.quEstudanteCur_cod.Text := FORICU.F2Codigo;
        DmDta.quEstudanteCur_nome.Text := FORICU.F2Nome;
      end;
      SelectNext(ActiveControl, True, True);
    end;
    FORICU.Free;
  end;
end;

procedure TFOREST1.FormShow(Sender: TObject);
begin
  if (not DmDta.quEstudantePcu_vestib.IsNull) and (DmDta.quEstudantePcu_vestib.Value <> '') then
    cbPerCurInicio.ItemIndex := DmDta.quEstudantePcu_vestib.AsInteger;
  if (not DmDta.quEstudantePcu_peratual.IsNull) and (DmDta.quEstudantePcu_peratual.Value <> '') then
    cboPeriodic.ItemIndex := DmDta.quEstudantePcu_peratual.AsInteger;
  if (not DmDta.quEstudantePcu_turno.IsNull) and (DmDta.quEstudantePcu_turno.Value <> '') then
    cboTurno.ItemIndex := DmDta.quEstudantePcu_turno.AsInteger;
  Screen.Cursor := crDefault;
  qrybancos.Close ;
  qrybancos.Open;
end;

procedure TFOREST1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DmDta.quEstudante.State in [dsInsert, dsEdit] then
  begin
    if cbPerCurInicio.ItemIndex >= 0 then
      DmDta.quEstudantePcu_Vestib.Value := IntToStr(cbPerCurInicio.ItemIndex);
    if cboPeriodic.ItemIndex >= 0 then
      DmDta.quEstudantePcu_peratual.Value := IntToStr(cboPeriodic.ItemIndex);
   { if cboPeriodic.ItemIndex < 1 then
      DmDta.quEstudanteest_cursosem.AsString := '';}

    if pos(DmDta.quEstudanteest_cursosem.AsString, ' 12') = 0 then
      DmDta.quEstudanteest_cursosem.AsString := '';




    if cboTurno.ItemIndex >= 0 then
      DmDta.quEstudantePcu_turno.Value := IntToStr(cboTurno.ItemIndex);

    FOREST.btSalvarClick(Sender);
  end;
  inherited;
end;

procedure TFOREST1.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if DBEdit3.Text <> '' then
  begin
    if DmDta.quEstudante.Active then
    begin
      if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then DmDta.quEstudante.Edit;
      DmDta.quEstudanteinst_nome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(DBEdit3.Text));

      if DmDta.quEstudanteinst_nome.Text = '' then
      begin
        MSGERRO('Instituição inexistente. Selecione outra instituição!');
        DBEdit3.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quEstudante.Active then
    begin
      if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then DmDta.quEstudante.Edit;
      DmDta.quEstudanteinst_nome.Text := '';
    end;
  end;
end;

procedure TFOREST1.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if DBEdit5.Text <> '' then
  begin
    if DmDta.quEstudante.Active then
    begin
      if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then DmDta.quEstudante.Edit;
      DmDta.quEstudantecur_nome.Text := DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(DBEdit5.Text));

      if DmDta.quEstudantecur_nome.Text = '' then
      begin
        MSGERRO('Curso inexistente. Selecione outro curso!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quEstudante.Active then
    begin
      if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then DmDta.quEstudante.Edit;
      DmDta.quEstudantecur_nome.Text := '';
    end;
  end;
end;

procedure TFOREST1.cbPerCurInicioClick(Sender: TObject);
begin
  if DmDta.quEstudante.Active then
  begin
    if not (DmDta.quEstudante.State in [dsInsert, dsEdit]) then
      DmDta.quEstudante.Edit;
  end;
end;

procedure TFOREST1.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREST1.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit3DblClick(Sender);
end;

procedure TFOREST1.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(Sender);
end;

procedure TFOREST1.FormCreate(Sender: TObject);
begin
  inherited;

  qrypesquisa.close;
  qrypesquisa.SQL.clear;
  qrypesquisa.SQL.Add('select * from tce where emp_cod = 533 and est_cod = ' + dmDta.quEstudanteest_cod.AsString);
  qrypesquisa.open;
  dbcombobox1.Clear;
  if (dmDta.quEstudanteDescSituacao.AsString = 'Ex-Estagiário') or (not qrypesquisa.Eof) then
  begin
    dbcombobox1.Items.add('Banco do Brasil');
   { dbcombobox1.Items.add('Bradesco');}
    dbcombobox1.Items.add('Banco Itaú');
    if dmDta.quEstudanteest_banco.AsString = 'Banco Itaú' then
      dbcombobox1.ItemIndex := 1;
    {if dmDta.quEstudanteest_banco.AsString = 'Bradesco' then
      dbcombobox1.ItemIndex := 1;}
    if dmDta.quEstudanteest_banco.AsString = 'Banco do Brasil' then
      dbcombobox1.ItemIndex := 0;
  end
  else
  begin
    dbcombobox1.Items.add('Banco Itaú');
    if dmDta.quEstudanteest_banco.AsString = 'Banco Itaú' then
      dbcombobox1.ItemIndex := 0;
  end;
  dbcombobox1.Text := dmDta.quEstudanteest_banco.AsString;



end;

procedure TFOREST1.ckFormadoClick(Sender: TObject);
begin
  inherited;
{   if ckformado.Checked then
      dmdta.quEstudanteest_cursoSituacao.AsString := 'FORMADO';}
end;

procedure TFOREST1.ckTrancadoClick(Sender: TObject);
begin
  inherited;
 { if ckTRANCADO.Checked then
      dmdta.quEstudanteest_cursoSituacao.AsString := 'TRANCADO';}
end;


end.

Banco do Brasil
Bradesco
Banco Itaú

