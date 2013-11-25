unit TPOIRE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db;

type
  TFORIRE = class(TFORMOD1)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit14: TDBEdit;
    Label9: TLabel;
    DBEdit15: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORIRE: TFORIRE;

implementation

uses TPOINS, TPODTA, TPOIFU, TPOCST, TPOFNC;

{$R *.DFM}

procedure TFORIRE.DBEdit1DblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;

  if FORIFU.F2Codigo <> '' then
  begin
    if FORINS.quPrincipal.Active then
    begin
      if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
      FORINS.quPrincipal.FieldByName('inst_respconv').Text := FORIFU.F2Codigo;
      FORINS.quPrincipal.FieldByName('inst_nomerespconv').Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU.Free;
end;

procedure TFORIRE.DBEdit4DblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;

  if FORIFU.F2Codigo <> '' then
  begin
    if FORINS.quPrincipal.Active then
    begin
      if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
      FORINS.quPrincipal.FieldByName('inst_respcomp').Text := FORIFU.F2Codigo;
      FORINS.quPrincipal.FieldByName('inst_nomerespcomp').Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU.Free;
end;

procedure TFORIRE.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F2 then DBEdit1DblClick(Sender);
end;

procedure TFORIRE.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F2 then DBEdit4DblClick(Sender);
end;

procedure TFORIRE.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaoinst_nomerespconv.Value :=
        DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'inst_cod', 'func_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit1.Text));

      if DmDta.quInstituicaoinst_nomerespconv.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit1.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaoinst_nomerespconv.Value := '';
    end;
  end;
end;

procedure TFORIRE.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit4.Text <> '') then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaoinst_nomerespcomp.Value :=
        DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'inst_cod', 'func_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit4.Text));

      if DmDta.quInstituicaoinst_nomerespcomp.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit4.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaoinst_nomerespcomp.Text := '';
    end;
  end;
end;

procedure TFORIRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FORINS.btSalvarClick(Sender);
  inherited;
end;

procedure TFORIRE.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;

  if FORIFU.F2Codigo <> '' then
  begin
    if FORINS.quPrincipal.Active then
    begin
      if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
      FORINS.quPrincipal.FieldByName('inst_respdiv1').Text := FORIFU.F2Codigo;
      FORINS.quPrincipal.FieldByName('divulga1').Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU.Free;
end;

procedure TFORIRE.DBEdit7DblClick(Sender: TObject);
begin
  inherited;
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;

  if FORIFU.F2Codigo <> '' then
  begin
    if FORINS.quPrincipal.Active then
    begin
      if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
      FORINS.quPrincipal.FieldByName('inst_respdiv2').Text := FORIFU.F2Codigo;
      FORINS.quPrincipal.FieldByName('divulga2').Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU.Free;
end;

procedure TFORIRE.DBEdit11DblClick(Sender: TObject);
begin
  inherited;
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
  FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;

  if FORIFU.F2Codigo <> '' then
  begin
    if FORINS.quPrincipal.Active then
    begin
      if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
      FORINS.quPrincipal.FieldByName('inst_respdiv4').Text := FORIFU.F2Codigo;
      FORINS.quPrincipal.FieldByName('divulga4').Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FORIFU.Free;
end;

procedure TFORIRE.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit5.Text <> '') then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga1.Value :=
        DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'inst_cod', 'func_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit5.Text));

      if DmDta.quInstituicaodivulga1.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga1.Text := '';
    end;
  end;
end;

procedure TFORIRE.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit7.Text <> '') then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga2.Value :=
        DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'inst_cod', 'func_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit7.Text));

      if DmDta.quInstituicaodivulga2.text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit7.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga2.Text := '';
    end;
  end;
end;

procedure TFORIRE.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit9.Text <> '') then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga3.Value :=
        DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'inst_cod', 'func_cod',
        DmDta.quInstituicaoinst_cod.AsInteger,
        StrToInt(DBEdit9.Text));

      if DmDta.quInstituicaodivulga3.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit9.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstituicao.State in [dsInsert, dsEdit]) then
        DmDta.quInstituicao.Edit;
      DmDta.quInstituicaodivulga3.Text := '';
    end;
  end;
end;

end.

inherited;
Screen.Cursor := crHourGlass;
FORIFU := TFORIFU.Create(Self);
FORIFU.Inst := FORINS.quPrincipal.FieldByName('inst_cod').Value;
FORIFU.InstNome := FORINS.quPrincipal.FieldByName('inst_nome').Value;
FORIFU.F2 := True;
Screen.Cursor := crDefault;
FORIFU.ShowModal;

if FORIFU.F2Codigo <> '' then
begin
  if FORINS.quPrincipal.Active then
  begin
    if not (FORINS.quPrincipal.State in [dsInsert, dsEdit]) then FORINS.quPrincipal.Edit;
    FORINS.quPrincipal.FieldByName('inst_respdiv3').Text := FORIFU.F2Codigo;
    FORINS.quPrincipal.FieldByName('divulga3').Text := FORIFU.F2Nome;
  end;
  SelectNext(ActiveControl, True, true);
end;

FORIFU.Free;

