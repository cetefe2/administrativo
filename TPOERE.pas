unit TPOERE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db;

type
  TFORERE = class(TFORMOD1)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORERE: TFORERE;

implementation

Uses TPOEMP, TPODTA, TPOEFU, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORERE.DBEdit1DblClick(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  FOREFU          := TFOREFU.Create(Self);
  FOREFU.Emp      := FOREMP.quPrincipal.FieldByName('emp_cod').Value;
  FOREFU.EmpNome  := FOREMP.quPrincipal.FieldByName('emp_nome').Value;
  FOREFU.F2       := True;
  Screen.Cursor   := crDefault;
  FOREFU.ShowModal;

  if FOREFU.F2Codigo <> '' then
  begin
    if FOREMP.quPrincipal.Active then
    begin
      if not (FOREMP.quPrincipal.State in [dsInsert,dsEdit]) then FOREMP.quPrincipal.Edit;
      FOREMP.quPrincipal.FieldByName('emp_respcont').Text := FOREFU.F2Codigo;
      FOREMP.quPrincipal.FieldByName('emp_nomerespcont').Text := FOREFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
end;

procedure TFORERE.DBEdit4DblClick(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  FOREFU          := TFOREFU.Create(Self);
  FOREFU.Emp      := FOREMP.quPrincipal.FieldByName('emp_cod').Value;
  FOREFU.EmpNome  := FOREMP.quPrincipal.FieldByName('emp_nome').Value;
  FOREFU.F2       := True;
  Screen.Cursor   := crDefault;
  FOREFU.ShowModal;

  if FOREFU.F2Codigo <> '' then
  begin
    if FOREMP.quPrincipal.Active then
    begin
      if not (FOREMP.quPrincipal.State in [dsInsert,dsEdit]) then FOREMP.quPrincipal.Edit;
      FOREMP.quPrincipal.FieldByName('emp_respcomp').Text     := FOREFU.F2Codigo;
      FOREMP.quPrincipal.FieldByName('emp_nomerespcomp').Text := FOREFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
end;

procedure TFORERE.DBEdit2DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FOREFU          := TFOREFU.Create(Self);
  FOREFU.Emp      := FOREMP.quPrincipal.FieldByName('emp_cod').Value;
  FOREFU.EmpNome  := FOREMP.quPrincipal.FieldByName('emp_nome').Value;
  FOREFU.F2       := True;
  Screen.Cursor   := crDefault;
  FOREFU.ShowModal;

  if FOREFU.F2Codigo <> '' then
  begin
    if FOREMP.quPrincipal.Active then
    begin
      if not (FOREMP.quPrincipal.State in [dsInsert,dsEdit]) then FOREMP.quPrincipal.Edit;
      FOREMP.quPrincipal.FieldByName('emp_respent').Text := FOREFU.F2Codigo;
      FOREMP.quPrincipal.FieldByName('emp_nomerespent').Text := FOREFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
end;

procedure TFORERE.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FOREFU          := TFOREFU.Create(Self);
  FOREFU.Emp      := FOREMP.quPrincipal.FieldByName('emp_cod').Value;
  FOREFU.EmpNome  := FOREMP.quPrincipal.FieldByName('emp_nome').Value;
  FOREFU.F2       := True;
  Screen.Cursor   := crDefault;
  FOREFU.ShowModal;
  
  if FOREFU.F2Codigo <> '' then
  begin
    if FOREMP.quPrincipal.Active then
    begin
      if not (FOREMP.quPrincipal.State in [dsInsert,dsEdit]) then FOREMP.quPrincipal.Edit;
      FOREMP.quPrincipal.FieldByName('emp_respfin').Text := FOREFU.F2Codigo;
      FOREMP.quPrincipal.FieldByName('emp_nomerespfin').Text := FOREFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
end;

procedure TFORERE.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespcont.Value :=
        DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
                          DmDta.quEmpresaemp_cod.AsInteger,
                          StrToInt(DBEdit1.Text));

      if DmDta.quEmpresaemp_nomerespcont.Text = '' then
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
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespcont.Value := '';
    end;
  end;
end;

procedure TFORERE.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit4.Text <> '') then
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespcomp.Value :=
        DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
                          DmDta.quEmpresaemp_cod.AsInteger,
                          StrToInt(DBEdit4.Text));

      if DmDta.quEmpresaemp_nomerespcomp.Text = '' then
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
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespcomp.Value := '';
    end;
  end;
end;

procedure TFORERE.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit2.Text <> '') then
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespent.Value :=
        DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
                          DmDta.quEmpresaemp_cod.AsInteger,
                          StrToInt(DBEdit2.Text));

      if DmDta.quEmpresaemp_nomerespent.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit2.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespent.Value := '';
    end;
  end;
end;

procedure TFORERE.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit3.Text <> '') then
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespfin.Value :=
        DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
                          DmDta.quEmpresaemp_cod.AsInteger,
                          StrToInt(DBEdit3.Text));

      if DmDta.quEmpresaemp_nomerespfin.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit3.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    If DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_nomerespfin.Value := '';
    end;
  end;
end;

procedure TFORERE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f2 then
  begin
    if ActiveControl = DBEdit1 then
      DBEdit1DblClick(Sender)
    else if ActiveControl = DBEdit2 then
      DBEdit2DblClick(Sender)
    else if ActiveControl = DBEdit3 then
      DBEdit3DblClick(Sender)
    else if ActiveControl = DBEdit4 then
      DBEdit4DblClick(Sender);
  end;
end;

procedure TFORERE.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = vk_F2 then DBEdit1DblClick(sender);
end;

procedure TFORERE.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = vk_F2 then DBEdit4DblClick(sender);
end;

procedure TFORERE.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 If Key = vk_F2 then DBEdit2DblClick(sender);
end;

procedure TFORERE.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = vk_F2 then DBEdit3DblClick(sender);
end;

end.
