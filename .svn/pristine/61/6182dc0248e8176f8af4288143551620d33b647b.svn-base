unit TPOEMPRESP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, cxGraphics, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFOREMPRESP = class(TFORMOD3)
    edEmpCod: TEdit;
    Label1: TLabel;
    edEmpNome: TEdit;
    qryFuncionario: TQuery;
    qryFuncionarioFunc_cod: TIntegerField;
    qryFuncionarioEfu_nome: TStringField;
    qryFuncionarioEfu_setor: TStringField;
    qryFuncionarioEfu_cargo: TStringField;
    Label25: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsfunc: TDataSource;
    cbfuncao: TcxDBComboBox;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    dbinicio: TcxDBDateEdit;
    dbfim: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure cxDBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREMPRESP: TFOREMPRESP;

implementation
uses TPODTA, TPOFNC, TPOEFU, TPOEMP, TPOCST;
{$R *.dfm}

procedure TFOREMPRESP.btNovoClick(Sender: TObject);
begin
  inherited;
  DmDta.quResponsavelEmp_cod.AsInteger := strtoint(edEmpCod.Text);
end;

procedure TFOREMPRESP.btSalvarClick(Sender: TObject);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    if dmdta.quresponsavelcod_Empresponsavel.AsString <> '' then
    begin
      Sql.add('select * from Empresponsavel where  cod_empresponsavel <> :atual and  emp_cod=:empresa and funcao=:funcao and (:inicio between inicio and final and :final between inicio and final )');
      parambyname('atual').AsString := dmdta.quresponsavelcod_Empresponsavel.AsString;
    end
    else
    begin
      Sql.add('select * from Empresponsavel where   emp_cod=:empresa and funcao=:funcao and (:inicio between inicio and final and :final between inicio and final )');
    end;
    parambyname('empresa').AsString := edempcod.Text;
    parambyname('funcao').AsString := cbfuncao.Text;
    parambyname('inicio').value := dbinicio.date;
    parambyname('final').value := dbfim.Date;
    open;
    if not eof then
    begin
      showmessage('Já existe uma pessoa Cadastrada Nesta Função dentro do Periodo Informado!');
      Close;
      Free;
      exit;
    end;
    Close;
    Free;
  end;

  if quPrincipal1.State in [dsEdit, dsinsert] then
  begin
    try
      DMDta.SalvarRegistro(quPrincipal1);
      pgPrincipal.ActivePage := tbConsulta;
      quprincipal1.Close;
      quprincipal1.Open;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end
end;

procedure TFOREMPRESP.FormCreate(Sender: TObject);
begin
  inherited;
  quPrincipal1 := DmDta.quresponsavel;
  quprincipal1.Close;
  quprincipal1.sql.Clear;
  quprincipal1.sql.Add('SELECT     EmpResponsavel.*, EmpFuncionario.Efu_nome AS Nome ');
  quprincipal1.sql.Add(' FROM     EmpResponsavel INNER JOIN ');
  quprincipal1.sql.Add('  EmpFuncionario ON EmpResponsavel.Emp_cod = EmpFuncionario.Emp_cod AND EmpResponsavel.Func_cod = EmpFuncionario.Func_cod ');
  quprincipal1.sql.Add(' and  EmpResponsavel.emp_cod =:empresa order by  EmpFuncionario.Efu_nome ');
  quprincipal1.sql.Add(' , EmpResponsavel.Inicio desc ');
  DmDta.dsresponsavel.DataSet := quPrincipal1;
  DmDta.quResponsavelNome.Visible := true;
end;

procedure TFOREMPRESP.FormShow(Sender: TObject);
begin
  inherited;
  quprincipal1.parambyname('empresa').AsInteger := strtoint(edEmpCod.Text);
  quprincipal1.open;
  btexcluir.Enabled := not quprincipal1.IsEmpty;
  qryfuncionario.ParamByName('empresa').AsInteger := strtoint(edEmpCod.Text);
  qryfuncionario.Open;
end;

procedure TFOREMPRESP.btCancelarClick(Sender: TObject);
begin
  inherited;
  pgPrincipal.ActivePage := tbConsulta;
end;

procedure TFOREMPRESP.cxDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  qryfuncionario.Close;
  qryfuncionario.open;

end;

procedure TFOREMPRESP.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREFU := TFOREFU.Create(Self);
  FOREFU.Emp := strtoint(edempCod.text);
  FOREFU.EmpNome := edempNome.Text;
  FOREFU.F2 := True;
  Screen.Cursor := crDefault;
  FOREFU.ShowModal;
  qryfuncionario.Close;
  qryfuncionario.Open;
  qryfuncionario.last;
  if FOREFU.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if (quPrincipal1.State in [dsInsert, dsEdit]) then // FOREMP.quPrincipal.Edit;
      begin
        quPrincipal1.FieldByName('Func_Cod').Text := FOREFU.F2Codigo;
       // quPrincipal1.FieldByName('emp_nomerespcomp').Text := FOREFU.F2Nome;
      end;
    end;
   // SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
end;

procedure TFOREMPRESP.btExcluirClick(Sender: TObject);
begin
  inherited;
{ if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    quPrincipal1.Delete;
    quPrincipal1.ApplyUpdates;
    estadoNavegando;
  end;}
end;

end.

