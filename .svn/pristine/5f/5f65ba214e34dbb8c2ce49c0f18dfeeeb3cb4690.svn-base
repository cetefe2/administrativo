unit TPOSEMPJ1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEMPJ1 = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    btEmail: TSpeedButton;
    btProcessar: TSpeedButton;
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    mePesqCnpj: TMaskEdit;
    Label2: TLabel;
    cbTipoPesquisa: TComboBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure cboTipoEmpChange(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProcessarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    meses: boolean;
  end;

var
  FORSEMPJ1: TFORSEMPJ1;


implementation

uses TPOREmp2, TPODTA, TPOFNC, TPOEML, TPOCST, TPORVER, TPORETQ1, TPOETQ1,
  TPORETQ, TPOREMPJ1;

{$R *.DFM}

procedure TFORSEMPJ1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEmailClick(Sender);
  end;
end;

procedure TFORSEMPJ1.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMPJ1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREmpresa.Close;
  Action := caFree;
end;

procedure TFORSEMPJ1.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMPJ1.cboTipoEmpChange(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMPJ1.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.QryRempresa, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSEMPJ1.FormCreate(Sender: TObject);
begin
  meses := False;
end;

procedure TFORSEMPJ1.btProcessarClick(Sender: TObject);
var
  linha, data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;

begin

 { with DmDta.QryRempresa do
  begin
    Close;
    sql.Clear;
    linha := '';
    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
    {if cbotipoemp.ItemIndex > 0 then
      linha := 'Where  Empresa.Emp_tipo =:tipo ';


    if trim(edit1.Text) <> '' then

        linha := linha + ' and Empresa.Emp_nome >= ''' + edit1.Text + '''';

    if trim(edit2.Text) <> '' then

        linha := linha + ' and Empresa.Emp_nome <= ''' + edit2.Text + ''''
      else
        linha := ' where Empresa.Emp_nome <= ''' + edit2.Text + '''';
    if linha <> '' then
      sql.Text := sql.Text + linha;

    sql.Text := sql.Text + ' ORDER BY Empresa.Emp_nome, EmpFuncionario.Efu_nome ';
    if cbotipoemp.ItemIndex > 0 then
      Params.ParamByName('tipo').asString := cbotipoemp.Items[cboTipoEmp.ItemIndex];

    Open;

  end; }
end;

procedure TFORSEMPJ1.btImprimirClick(Sender: TObject);
begin
 // Imprimir
  QREmpJ1 := TQREmpJ1.Create(Application);
  QREmpJ1.Preview;
  QREmpJ1.Free;
end;

procedure TFORSEMPJ1.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8:
      begin
        Notebook1.PageIndex := 0;
        edPar.SetFocus;
      end;
    2: Notebook1.PageIndex := 1;
    3: Notebook1.PageIndex := 2;
    7:
      begin
        Notebook1.PageIndex := 3;
        mePesqCnpj.SetFocus;
      end;
  end;
end;

procedure TFORSEMPJ1.edParExit(Sender: TObject);
var
  ordem, linha, data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;

begin

  with DmDta.QryRempresa do
  begin
    Close;
    sql.Clear;
    linha := '';
    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
   { if cbotipoemp.ItemIndex > 0 then
      linha := 'Where  Empresa.Emp_tipo =:tipo ';}

    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'empresa.emp_cod';
          linha := linha + ' where empresa.emp_cod = ' + edPar.Text;
        end;
      1:
        begin
          ordem := 'empresa.emp_nome';

          linha := linha + ' where ((empresa.emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(empresa.emp_nomefantasia like ''%' + edPar.Text + '%''))'


        end;
      4:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' where empresa.emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' where empresa.emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' and empresa.emp_cidade like ''%' + edPar.Text + '%''';
        end;
      8:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' and empresa.emp_estado = ''' + edPar.Text + '''';
        end;
    end;



    if linha <> '' then
      sql.Text := sql.Text + linha;

    sql.Text := sql.Text + ' order by ' + ordem + ',EmpFuncionario.Efu_nome';
  //    ' ORDER BY Empresa.Emp_nome, EmpFuncionario.Efu_nome ';

    Open;

  end;
end;

procedure TFORSEMPJ1.RadioGroup1Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryRempresa do
  begin
    Close;
    sql.Clear;

    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
    ordem := ' order by empresa.emp_nome';
    case radioGroup1.ItemIndex of
      0: argumento := argumento + ' where empresa.emp_ramo = ''Indústria''';
      1: argumento := argumento + ' where empresa.emp_ramo = ''Comércio''';
      2: argumento := argumento + ' where empresa.emp_ramo = ''Serviços''';
    end;
    sql.Text := sql.Text + argumento + ordem + ',EmpFuncionario.Efu_nome';
    open;
  end
end;

procedure TFORSEMPJ1.RadioGroup2Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryRempresa do
  begin
    Close;
    sql.Clear;
    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
    ordem := 'order by empresa.emp_nome';

    case radioGroup2.ItemIndex of
      0: argumento := argumento + ' where empresa.emp_porte = ''Pequeno''';
      1: argumento := argumento + ' where empresa.emp_porte = ''Médio''';
      2: argumento := argumento + ' where empresa.emp_porte = ''Grande''';
      3: argumento := argumento + ' where empresa.emp_porte = ''Multinac.''';
    end;

    sql.Text := sql.Text + argumento + ordem + ',EmpFuncionario.Efu_nome';
    open;
  end;
end;

procedure TFORSEMPJ1.mePesqCnpjExit(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryRempresa do
  begin
    Close;
    sql.Clear;
    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
    ordem := 'order by empresa.emp_nome';
    if mePesqCnpj.Text <> '' then
      argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj.Text + '''';

    sql.Text := sql.Text + argumento + ordem + ',EmpFuncionario.Efu_nome';
    open;
  end;
end;

procedure TFORSEMPJ1.edParKeyPress(Sender: TObject; var Key: Char);
begin
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

end.

