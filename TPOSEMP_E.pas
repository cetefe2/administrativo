unit TPOSEMP_E;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEMP_E = class(TForm)
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
    SpeedButton1: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure cboTipoEmpChange(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    SqlEstagiarios: string;
  public
    { Public declarations }
    meses: boolean;
  end;

var
  FORSEMP_E: TFORSEMP_E;


implementation

uses TPOREmp2, TPODTA, TPOFNC, TPOEML, TPOCST, TPORVER, TPORETQ1, TPOETQ1,
  TPORETQ, TPOREMPJ1, TPOREMPE1;

{$R *.DFM}

procedure TFORSEMP_E.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEmailClick(Sender);
  end;
end;

procedure TFORSEMP_E.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMP_E.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREmpresa.Close;
  Action := caFree;
end;

procedure TFORSEMP_E.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP_E.cboTipoEmpChange(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP_E.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  
  GerarExcel(DmDta.QryREstagiarios, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSEMP_E.FormCreate(Sender: TObject);
begin
  meses := False;
  SqlEstagiarios := ' SELECT tceEmpresa.Emp_nome AS Empresa, Estudante.Est_nome AS Estudante, ' +
    ' Empresa.Emp_endereco AS EmpEndereco, Empresa.Emp_bairro AS EmpBairro, Empresa.Emp_cidade AS EmpCidade, Empresa.Emp_estado AS EmpEstado, ' +
    ' Empresa.Emp_cep AS EmpCep, Empresa.Emp_cnpj AS Cnpj, ' +
    ' Estudante.Est_endereco AS EstEndereco, Estudante.Est_cpf AS Cpg, Estudante.Est_rg AS Rg, Estudante.Est_dtnasc Nascimento, ' +
    ' Estudante.Est_email, Estudante.Est_fone1,Estudante.Est_fone2,Estudante.Est_recado, ' +
    ' cast(CASE  WHEN Tce.tce_tipobolsa = ''0'' THEN isnull(Tce.tce_bolsa * tCE.tce_tothoras, 0)     ' +
    '     ELSE isnull(Tce.tce_bolsa, 0)  END as money)bolsa, ' +
    ' Estudante.Est_cidade AS EstCidade ,Estudante.Est_Bairro AS EstBairro,Estudante.Est_cep AS EstCep FROM  Tce INNER JOIN  ' +
    ' Empresa ON Tce.Emp_cod = Empresa.Emp_cod INNER JOIN  ' +
    '  Estudante ON Tce.Est_cod = Estudante.est_cod  WHERE     (Tce.Tce_situacao <> 7) ';
  //  'ORDER BY Empresa.Emp_nome,Estudante.Est_nome '
end;

procedure TFORSEMP_E.btImprimirClick(Sender: TObject);
begin
 // Imprimir
  QREmpE1 := TQREmpE1.Create(Application);
  QREmpE1.Preview;
  QREmpE1.Free;
end;

procedure TFORSEMP_E.cbTipoPesquisaChange(Sender: TObject);
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

procedure TFORSEMP_E.edParExit(Sender: TObject);
var
  ordem, linha, data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;

begin

  with DmDta.QryREstagiarios do
  begin
    Close;
    sql.Clear;
    linha := '';
    sql.Text := SqlEstagiarios;
    ordem := 'Empresa.Emp_nome,Estudante.Est_nome';

    case CbTipoPesquisa.ItemIndex of
      0:
        begin

          linha := linha + ' and empresa.emp_cod = ' + edPar.Text;
        end;
      1:
        begin


          linha := linha + ' and ((empresa.emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(empresa.emp_nomefantasia like ''%' + edPar.Text + '%''))'


        end;
      4:
        begin

          linha := linha + ' and empresa.emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin

          linha := linha + ' and empresa.emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin

          linha := linha + ' and empresa.emp_cidade like ''%' + edPar.Text + '%''';
        end;
      8:
        begin

          linha := linha + ' and empresa.emp_estado = ''' + edPar.Text + '''';
        end;
    end;



    if linha <> '' then
      sql.Text := sql.Text + linha;

    sql.Text := sql.Text + ' order by ' + ordem;


    Open;

  end;
end;

procedure TFORSEMP_E.RadioGroup1Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryREstagiarios do
  begin
    Close;
    sql.Clear;

    sql.Text := SqlEstagiarios;
    ordem := ' order by Empresa.Emp_nome,Estudante.Est_nome';
    case radioGroup1.ItemIndex of
      0: argumento := argumento + ' and empresa.emp_ramo = ''Indústria''';
      1: argumento := argumento + ' and empresa.emp_ramo = ''Comércio''';
      2: argumento := argumento + ' and empresa.emp_ramo = ''Serviços''';
    end;
    sql.Text := sql.Text + argumento + ordem;
    open;
  end
end;

procedure TFORSEMP_E.RadioGroup2Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryREstagiarios do
  begin
    Close;
    sql.Clear;
    sql.Text := sqlEstagiarios;
    ordem := 'order by Empresa.Emp_nome,Estudante.Est_nome';

    case radioGroup2.ItemIndex of
      0: argumento := argumento + ' and empresa.emp_porte = ''Pequeno''';
      1: argumento := argumento + ' and empresa.emp_porte = ''Médio''';
      2: argumento := argumento + ' and empresa.emp_porte = ''Grande''';
      3: argumento := argumento + ' and empresa.emp_porte = ''Multinac.''';
    end;

    sql.Text := sql.Text + argumento + ordem;
    open;
  end;
end;

procedure TFORSEMP_E.mePesqCnpjExit(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryREstagiarios do
  begin
    Close;
    sql.Clear;
    sql.Text := sqlEstagiarios;
    ordem := 'order by Empresa.Emp_nome,Estudante.Est_nome';
    if mePesqCnpj.Text <> '' then
      argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj.Text + '''';

    sql.Text := sql.Text + argumento + ordem;
    open;
  end;
end;

procedure TFORSEMP_E.edParKeyPress(Sender: TObject; var Key: Char);
begin
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORSEMP_E.SpeedButton1Click(Sender: TObject);
begin
  with dmdta do
    begin
    qryREstagiariosEmpEndereco.Visible := false;
    qryREstagiariosEmpBairro.Visible := false;
    qryREstagiariosEmpCidade.Visible := false;
    qryREstagiariosEmpEstado.Visible := false;
    qryREstagiariosEmpCep.Visible := false;
    qryREstagiariosCnpj.Visible := false;
    qryREstagiariosEstEndereco.Visible := false;

    qryREstagiariosRg.Visible := false;
    qryREstagiariosNascimento.Visible := false;
    qryREstagiariosbolsa.Visible := false;
    qryREstagiariosEstCidade.Visible := false;
    qryREstagiariosEstBairro.Visible := false;
    qryREstagiariosEstCep.Visible := false;

    Screen.Cursor := crHourGlass;
    GerarExcel(DmDta.QryREstagiarios, Caption);

    qryREstagiariosEmpEndereco.Visible := true;
    qryREstagiariosEmpBairro.Visible := true;
    qryREstagiariosEmpCidade.Visible := true;
    qryREstagiariosEmpEstado.Visible := true;
    qryREstagiariosEmpCep.Visible := true;
    qryREstagiariosCnpj.Visible := true;
    qryREstagiariosEstEndereco.Visible := true;

    qryREstagiariosRg.Visible := true;
    qryREstagiariosNascimento.Visible := true;
    qryREstagiariosbolsa.Visible := true;
    qryREstagiariosEstCidade.Visible := true;
    qryREstagiariosEstBairro.Visible := true;
    qryREstagiariosEstCep.Visible := true;


    Screen.Cursor := crDefault;
  end
end;

end.

