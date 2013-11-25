unit TPOEHI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TFOREHI = class(TFORMOD3)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    edEmpCod: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    eddata: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tela:integer;
    Emp: Integer;
    EmpNome: string;
    NovaEmp: Boolean;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FOREHI: TFOREHI;

implementation

uses TPODTA, TPOFNC, TPOCST, TPOEFU, TPOFUN;

{$R *.DFM}

procedure TFOREHI.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'func_cod';
  nomeNome := 'efu_nome';
  nomeTabela := 'EmpFuncionario';

  quPrincipal1 := DmDta.quEmpHistorico;
  DmDta.dsEmpHistorico.DataSet := quPrincipal1;
end;

procedure TFOREHI.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEmpHistorico.DataSet := DmDta.quEmpHistorico;
end;

procedure TFOREHI.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    DmDta.quEmpHistoricoEmp_cod.Text := DmDta.quEmpresaEmp_cod.Text;
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('hist_cod').Value := ultimoRegistro;
  end;

 { if edData.Text <> '  /  /    ' then
    DmDta.quEmpHistoricoehi_dthist.AsString := edData.Text
  else
    DmDta.quEmpHistoricoehi_dthist.AsString := '';}
end;

procedure TFOREHI.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('emp_cod').Text := edEmpCod.Text;
  quprincipal1.FieldByName('ehi_dthist').value := date;
 // edData.Text := FormatDateTime('dd/mm/yyyy', Date);

  DBEdit1.SetFocus;
end;

procedure TFOREHI.BuscaPrimeiroUltimo;
begin
  inherited;
  if not NovaEmp then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(hist_cod) as Maximo,');
      SQL.Add('  min(hist_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  EmpHistorico (nolock)');
      SQL.Add('where');
      SQL.Add('  emp_cod = :emp_cod');
      ParamByName('emp_cod').AsInteger := StrToInt(EdEmpCod.Text);
      Open;

      if FieldByName('Minimo').IsNull then
      begin
        PrimeiroRegistro := 0;
        UltimoRegistro := 0;
      end
      else
      begin
        PrimeiroRegistro := FieldByName('Minimo').AsInteger;
        UltimoRegistro := FieldByName('Maximo').AsInteger;
      end;

      Close;
      Free;
    end;
  end;
end;

procedure TFOREHI.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('emp_cod').AsInteger := Emp;
    Open;
  end;

  if NovaEmp then
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro := 0;
  end;

  inherited;
end;

procedure TFOREHI.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFOREHI.btSalvarClick(Sender: TObject);
begin
  if quprincipal1.FieldByName('ehi_dthist').text = '' then
  begin
    MSGERRO('Entre com a data do histórico!');
    DBEdit2.SetFocus;
  end
  else
    if DBEdit2.Text = '' then
    begin
      MSGERRO('Entre com o nome do funcionário do histórico!');
      DBEdit2.SetFocus;
    end
    else
      if DBMemo1.Text = '' then
      begin
        MSGERRO('Entre com a descrição do histórico!');
        DBMemo1.SetFocus;
      end
      else
        inherited;
end;

procedure TFOREHI.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFOREHI.CarregaDados;
begin
  inherited;
end;

procedure TFOREHI.LimpaCampos;
begin
  inherited;
end;

procedure TFOREHI.edDataKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
end;

procedure TFOREHI.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREHI.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREFU := TFOREFU.Create(Self);
  FOREFU.Emp := DmDta.quEmpresaEmp_cod.AsInteger;
  FOREFU.F2 := True;
  Screen.Cursor := crDefault;
  FOREFU.ShowModal;

  if FOREFU.F2Codigo <> '' then
  begin
    if DmDta.quEmpHistorico.Active then
    begin
      if not (DmDta.quEmpHistorico.State in [dsInsert, dsEdit]) then dmDta.quEmpHistorico.Edit;
      DmDta.quEmpHistoricofunc_cod.Text := FOREFU.F2Codigo;
      DmDta.quEmpHistoricofunc_nome.Text := FOREFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREFU.Free;
end;

procedure TFOREHI.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> '' then
  begin
    if DmDta.quEmpresa.Active then
    begin
      if not (DmDta.quEmpHistorico.State in [dsInsert, dsEdit]) then DmDta.quEmpHistorico.Edit;
      DmDta.quEmpHistoricofunc_nome.Text := DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod', StrToInt(edEmpCod.Text), StrToInt(DBEdit1.Text));

      if DmDta.quEmpHistoricofunc_nome.Text = '' then
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
    if DmDta.quEmpHistorico.Active then
    begin
      if not (DmDta.quEmpHistorico.State in [dsInsert, dsEdit]) then DmDta.quEmpHistorico.Edit;
      DmDta.quEmpHistoricofunc_nome.Text := '';
    end;
  end;
end;

procedure TFOREHI.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if DBEdit6.Text <> '' then
  begin
    if DmDta.quEmpHistorico.Active then
    begin
      if not (DmDta.quEmpHistorico.State in [dsInsert, dsEdit]) then DmDta.quEmpHistorico.Edit;
      DmDta.quEmpHistoricofunc_Cetefe.Text := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', StrToInt(DBEdit6.Text));

      if DmDta.quEmpHistoricofunc_cetefe.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit6.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quEmpHistorico.Active then
    begin
      if not (DmDta.quEmpHistorico.State in [dsInsert, dsEdit]) then DmDta.quempHistorico.Edit;
      DmDta.quEmpHistoricofunc_cetefe.Text := '';
    end;
  end;

end;

procedure TFOREHI.DBEdit6DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORFUN := TFORFUN.Create(Self);
  FORFUN.tipo := ''; //DmDta.quEmpresaEmp_cod.AsInteger;
  FORFUN.F2 := True;
  Screen.Cursor := crDefault;
  FORFUN.ShowModal;
  if FORFUN.F2Codigo <> '' then
  begin
    if DmDta.quempHistorico.Active then
    begin
      if not (DmDta.quempHistorico.State in [dsInsert, dsEdit]) then
        dmDta.quempHistorico.Edit;
      DmDta.quempHistoricofunccetefe_cod.text := FORFUN.F2Codigo;
      DmDta.quempHistoricofunc_cetefe.Text  := FORFUN.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFUN.Free;
end;

end.

