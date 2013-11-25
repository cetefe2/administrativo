unit TPOEMP6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, Buttons, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Db;

type
  TFOREMP6 = class(TFORMOD1)
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edEmpDtEnvio: TMaskEdit;
    Label1: TLabel;
    edEmpDtPromCad: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    edEmpDtPromVaga: TMaskEdit;
    edEmpDtContato: TMaskEdit;
    Label6: TLabel;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    tela: integer;
    { Public declarations }
  end;

var
  FOREMP6: TFOREMP6;

implementation

uses TPODTA, TPOFNC, TPOEMP, TPOFUN, TPOEMPA;

{$R *.DFM}

procedure TFOREMP6.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREMP6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOREMP.btSalvarClick(Sender);
  inherited;
end;

procedure TFOREMP6.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORFUN := TFORFUN.Create(Self);
  FORFUN.Tipo := 'Comercial';
  FORFUN.F2 := True;
  Screen.Cursor := crDefault;
  FORFUN.ShowModal;

  if FORFUN.F2Codigo <> '' then
  begin
    if DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then dmDta.quEmpresa.Edit;
      DmDta.quEmpresaemp_funccont.Text := FORFUN.F2Codigo;
      DmDta.quEmpresafunc_nome.Text := FORFUN.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFUN.Free;
end;

procedure TFOREMP6.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if DBEdit3.Text <> '' then
  begin
    if DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then DmDta.quEmpresa.Edit;
      DmDta.quEmpresafunc_nome.Text := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', StrToInt(DBEdit3.Text));

      if DmDta.quEmpresafunc_nome.Text = '' then
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
    if DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then DmDta.quEmpresa.Edit;
      DmDta.quEmpresafunc_nome.Text := '';
    end;
  end;
end;

procedure TFOREMP6.FormShow(Sender: TObject);
begin
  inherited;
  if (not DmDta.quEmpresaemp_dtEnvio.IsNull) and (DmDta.quEmpresaemp_dtEnvio.Text <> '') then
    edEmpDtEnvio.Text := DmDta.quEmpresaemp_dtEnvio.AsString;

  if (not DmDta.quEmpresaEmp_DtPromCad.IsNull) and (DmDta.quEmpresaEmp_DtPromCad.Text <> '') then
    edEmpDtPromCad.Text := DmDta.quEmpresaEmp_DtPromCad.AsString;
  if (not DmDta.quEmpresaEmp_DtPromVaga.IsNull) and (DmDta.quEmpresaEmp_DtPromVaga.Text <> '') then
    edEmpDtPromVaga.Text := DmDta.quEmpresaEmp_DtPromVaga.AsString;
  if (not DmDta.quEmpresaemp_dtContatoCom.IsNull) and (DmDta.quEmpresaemp_dtContatoCom.Text <> '') then
    edEmpDtContato.Text := DmDta.quEmpresaemp_dtContatoCom.AsString;
  Screen.Cursor := crDefault;
end;

procedure TFOREMP6.btOkClick(Sender: TObject);
begin
  inherited;
  if DmDta.quEmpresa.State in [dsInsert, dsEdit] then
  begin
    if edEmpDtEnvio.Text <> '  /  /    ' then
      DmDta.quEmpresaemp_dtenvio.AsString := edEmpDtEnvio.Text
    else
      DmDta.quEmpresaemp_dtenvio.AsString := '';

    if edEmpDtPromCad.Text <> '  /  /    ' then
      DmDta.quEmpresaemp_dtpromcad.AsString := edEmpDtPromCad.Text
    else
      DmDta.quEmpresaemp_dtpromcad.AsString := '';

    if edEmpDtPromVaga.Text <> '  /  /    ' then
      DmDta.quEmpresaemp_dtpromvaga.AsString := edEmpDtPromVaga.Text
    else
      DmDta.quEmpresaemp_dtpromvaga.AsString := '';

    if edEmpDtContato.Text <> '  /  /    ' then
      DmDta.quEmpresaemp_dtContatoCom.AsString := edEmpDtContato.Text
    else
      DmDta.quEmpresaemp_dtContatoCom.AsString := '';

    if tela = 1 then
      FOREMP.btSalvarClick(Sender)
    else
      FOREMPA.btSalvarClick(Sender)

  end;
end;

end.

