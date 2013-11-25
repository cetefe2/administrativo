unit TPOEMPA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls,
  Mask, DB, BDE, DBTables, OleServer, Word97, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDBEdit;

type
  TFOREMPA = class(TFORMOD2)
    btFuncionarios: TSpeedButton;
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    QConsEmp: TQuery;
    dsConsEmp: TDataSource;
    QConsEmpemp_cod: TIntegerField;
    QConsEmpemp_nome: TStringField;
    QConsEmpemp_ramo: TStringField;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    edEmpDtInc: TMaskEdit;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label20: TLabel;
    btResponsaveis: TSpeedButton;
    DBComboBox3: TDBComboBox;
    Label21: TLabel;
    btEtiquetas: TSpeedButton;
    DBMemo1: TDBMemo;
    btConvenio: TSpeedButton;
    btSatisfacao: TSpeedButton;
    sbPagamento: TSpeedButton;
    sbComplemento: TSpeedButton;
    btImpressao: TSpeedButton;
    btEndEnc: TSpeedButton;
    btEndCor: TSpeedButton;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    rgSituacao: TRadioGroup;
    DBEdit15: TDBEdit;
    Label6: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    sbComercial: TSpeedButton;
    sbHistorico: TSpeedButton;
    btExportar: TSpeedButton;
    quExportacao: TQuery;
    quExportacaoemp_cod: TIntegerField;
    quExportacaoemp_dtinc: TDateTimeField;
    quExportacaoemp_nome: TStringField;
    quExportacaoemp_nomefantasia: TStringField;
    quExportacaoemp_cnpj: TStringField;
    quExportacaoemp_inscest: TStringField;
    quExportacaoemp_site: TStringField;
    quExportacaoemp_ramo: TStringField;
    quExportacaoemp_tipo: TStringField;
    quExportacaoemp_func: TIntegerField;
    quExportacaoemp_estag: TIntegerField;
    quExportacaoemp_porte: TStringField;
    quExportacaoemp_endereco: TStringField;
    quExportacaoemp_numend: TStringField;
    quExportacaoemp_cjto: TStringField;
    quExportacaoemp_bairro: TStringField;
    quExportacaoemp_cidade: TStringField;
    quExportacaoemp_estado: TStringField;
    quExportacaoemp_cep: TStringField;
    quExportacaoemp_telefone: TStringField;
    quExportacaoemp_fax: TStringField;
    quExportacaoemp_observacao: TStringField;
    quExportacaofunc_nome: TStringField;
    quExportacaoemp_dtContatoCom: TDateTimeField;
    quExportacaoemp_dtEnvio: TDateTimeField;
    quExportacaoemp_dtretorno: TDateTimeField;
    quExportacaoEmp_DtPromCad: TDateTimeField;
    quExportacaoEmp_DtPromVaga: TDateTimeField;
    quExportacaoemp_formapgto: TStringField;
    quExportacaopagamento: TStringField;
    quExportacaoNatureza: TStringField;
    quExportacaoemp_nomerespcont: TStringField;
    quExportacaoemail1: TStringField;
    quExportacaodatanasc1: TStringField;
    quExportacaoemp_nomerespcomp: TStringField;
    quExportacaoemail2: TStringField;
    quExportacaodatanasc2: TStringField;
    quExportacaoemp_nomerespent: TStringField;
    quExportacaoemail3: TStringField;
    quExportacaodatanasc3: TStringField;
    quExportacaoemp_nomerespfin: TStringField;
    quExportacaoemail4: TStringField;
    quExportacaodatanasc4: TStringField;
    mePesqCnpj: TMaskEdit;
    btnEtiquetasAll: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CPF: TcxDBMaskEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBComboBox2: TDBComboBox;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit21: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    edEmpDtRetorno: TMaskEdit;
    qrypesquisa: TQuery;
    Label30: TLabel;
    DBEdit5: TDBEdit;
    DBEdit18: TDBEdit;
    Label31: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edEmpDtIncExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure pgPrincipalChange(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btFuncionariosClick(Sender: TObject);
    procedure btResponsaveisClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
    procedure edEmpDtIncKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure btConvenioClick(Sender: TObject);
    procedure btSatisfacaoClick(Sender: TObject);
    procedure sbPagamentoClick(Sender: TObject);
    procedure sbComplementoClick(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
    procedure btEndEncClick(Sender: TObject);
    procedure btEndCorClick(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure sbComercialClick(Sender: TObject);
    procedure sbHistoricoClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure btnEtiquetasAllClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure quPrincipalAfterInsert(DataSet: TDataSet);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
    mudaAba: Boolean;
  public
    { Public declarations }
    F2Tipo: string;
    F2Pgto: Integer;
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
  end;

var
  FOREMPA: TFOREMPA;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOEFU, TPOERE, TPOFAT, TPOETQ, TPORETQ, ComObj, TPOCST,
  TPOEMP2, TPOEMP1, TPOEMP3, TPOREMP1, TPOEMP4, TPOEMP5, TPOEMP6, TPOEHI,
  TPOINI, TPOETQ1;

function sonumero(linha: string): string;
var
  palavra: string;
  x: integer;
begin
  palavra := '';
  for x := 1 to length(linha) do
    if pos(linha[x], '0123456789') > 0 then
      palavra := palavra + linha[x];
  result := palavra;
end;

function ValidateCpf(Cpf: string): boolean;
var
  linDigito1: Integer;
  linDigito2: Integer;
  linPosicao: Integer;
begin
  if Length(Cpf) = 11 then
  begin
    linPosicao := 1;
    linDigito1 := 0;
    while linPosicao <= 9 do
    begin
      linDigito1 := linDigito1 + StrToInt(Cpf[linPosicao]) * (11 - linPosicao);
      linPosicao := linPosicao + 1;
    end;
    linDigito1 := (11 - linDigito1 mod 11);
    if linDigito1 >= 10 then
      linDigito1 := 0;
    linPosicao := 1;
    linDigito2 := 0;
    while linPosicao <= 10 do
    begin
      linDigito2 := linDigito2 + StrToInt(Cpf[linPosicao]) * (12 - linPosicao);
      linPosicao := linPosicao + 1;
    end;
    linDigito2 := (11 - linDigito2 mod 11);
    if linDigito2 >= 10 then
      linDigito2 := 0;
    if (StrToInt(Cpf[10]) <> linDigito1) or (StrToInt(Cpf[11]) <> linDigito2) then
      Result := False
    else
      if (Cpf = '11111111111') or (Cpf = '22222222222') or (Cpf = '33333333333') or
        (Cpf = '44444444444') or (Cpf = '55555555555') or (Cpf = '66666666666') or
        (Cpf = '77777777777') or (Cpf = '88888888888') or (Cpf = '99999999999') or
        (Cpf = '00000000000') then
        Result := False
      else
        Result := True;
  end
  else
    Result := False;
end;

function ValidateCnpj(Cnpj: string): Boolean;
var
  lstDig1, lstDig2: string;
  linNum, linTot: integer;
begin
  if Length(Cnpj) = 14 then
  begin
    linTot := ((StrToInt(Cnpj[1]) + StrToInt(Cnpj[9])) * 5) +
      ((StrToInt(Cnpj[2]) + StrToInt(Cnpj[10])) * 4) +
      ((StrToInt(Cnpj[3]) + StrToInt(Cnpj[11])) * 3) +
      ((StrToInt(Cnpj[4]) + StrToInt(Cnpj[12])) * 2) +
      ((StrToInt(Cnpj[5]) * 9) + (StrToInt(Cnpj[6]) * 8)) +
      ((StrToInt(Cnpj[7]) * 7) + (StrToInt(Cnpj[8]) * 6));

    linNum := 11 - (linTot mod 11);
    if linNum > 9 then linNum := 0;
    lstDig1 := IntToStr(linNum);

    linTot := ((StrToInt(Cnpj[1]) + StrToInt(Cnpj[9])) * 6) +
      ((StrToInt(Cnpj[2]) + StrToInt(Cnpj[10])) * 5) +
      ((StrToInt(Cnpj[3]) + StrToInt(Cnpj[11])) * 4) +
      ((StrToInt(Cnpj[4]) + StrToInt(Cnpj[12])) * 3) +
      ((StrToInt(Cnpj[5]) + StrToInt(lstDig1)) * 2) +
      ((StrToInt(Cnpj[6]) * 9) + (StrToInt(Cnpj[7]) * 8)) +
      ((StrToInt(Cnpj[8]) * 7));

    linNum := 11 - (linTot mod 11);
    if linNum > 9 then linNum := 0;
    lstDig2 := IntToStr(linNum);

    if Cnpj[13] + Cnpj[14] = lstDig1 + lstDig2 then
      Result := True
    else
      Result := False
  end
  else
    Result := False
end;

function poemascara(palavra: string): string;
var
  Linha: string;
begin
  linha := sonumero(palavra);
  if length(linha) = 14 then
    linha := copy(linha, 1, 2) + '.' + copy(linha, 3, 3) + '.' + copy(linha, 6, 3) + '/' + copy(linha, 9, 4) + '-' + copy(linha, 13, 2);

  if length(linha) = 11 then
    linha := copy(linha, 1, 3) + '.' + copy(linha, 4, 3) + '.' + copy(linha, 7, 3) + '-' + copy(linha, 10, 2);
  result := linha;
end;




procedure TFOREMPA.DBEdit18Exit(Sender: TObject);
var
  Linha: string;
begin
  inherited;
  if DmDTA.dsEmpresa.State in [dsedit, dsinsert] then
  begin
    linha := sonumero(DmDTA.quEmpresaemp_cnpj.AsString);
    if length(linha) = 14 then
    begin
      DmDTA.quEmpresaemp_cnpj.AsString := copy(linha, 1, 2) + '.' + copy(linha, 3, 3) + '.' + copy(linha, 6, 3) + '/' + copy(linha, 9, 4) + '-' + copy(linha, 13, 2);
      if validatecnpj(linha) = false then
        showmessage('Cnpj  Inválido');
    end;

    if length(linha) = 11 then
    begin
      DmDTA.quEmpresaemp_cnpj.AsString := copy(linha, 1, 3) + '.' + copy(linha, 4, 3) + '.' + copy(linha, 7, 3) + '-' + copy(linha, 10, 2);
      if validatecpf(linha) = false then
        showmessage('Cpf  Inválido');
    end;
    if length(linha) in [11, 14] = false then
      showmessage('Tamanho Cnpj/Cpf  Inválido');
  end;
end;





procedure TFOREMPA.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'emp_cod';
  nomeCodigo := 'emp_cod';
  nomeNome := 'emp_nome';
  nomeTabela := 'Empresa';

  quPrincipal := DmDta.quEmpresa;
  DmDta.dsEmpresa.DataSet := quPrincipal;
  mudaAba := True;
end;

procedure TFOREMPA.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEmpresa.DataSet := DmDta.quEmpresa;
end;

procedure TFOREMPA.AtualizaDados;
begin
  if edEmpDtInc.Text <> '  /  /    ' then
    DmDta.quEmpresaemp_dtInc.AsString := edEmpDtInc.Text
  else
    DmDta.quEmpresaemp_dtInc.AsString := '';

  if edEmpDtRetorno.Text <> '  /  /    ' then
    DmDta.quEmpresaemp_dtretorno.AsString := edEmpDtRetorno.Text
  else
    DmDta.quEmpresaemp_dtretorno.AsString := '';

  DmDTA.quEmpresaemp_tipopessoa.AsString := 'F';
  {if meCnpj.Text <> '' then
    DmDta.quEmpresaemp_cnpj.AsString := meCNPJ.Text
  else
    DmDta.quEmpresaemp_cnpj.AsString := '';}
end;

procedure TFOREMPA.InicializaDados;
begin
  quPrincipal.FieldByName('emp_cod').Value := 0;
  quPrincipal.FieldByName('emp_indprospect').Value := '0';

  // datas
  edEmpDtInc.Text := FormatDateTime('dd/mm/yyyy', Date);

  // detalhes do perfil da empresa
  quPrincipal.FieldByName('emp_observacao').Value := ' ';
  quPrincipal.FieldByName('emp_tipotaxa').Value := '0';
  quPrincipal.FieldByName('emp_ciee').Value := '0';
  quPrincipal.FieldByName('emp_iel').Value := '0';
  quPrincipal.FieldByName('emp_interage').Value := '0';
  quPrincipal.FieldByName('emp_educare').Value := '0';
  edEmpDtInc.SetFocus;
end;

procedure TFOREMPA.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFOREMPA.CarregaDados;
begin
  if (not DmDta.quEmpresaEmp_dtInc.IsNull) and (DmDta.quEmpresaEmp_dtInc.Text <> '') then
    edEmpDtInc.Text := DmDta.quEmpresaEmp_dtInc.AsString;
  {if (not DmDta.quEmpresaEmp_cnpj.IsNull) and (DmDta.quEmpresaEmp_cnpj.Text <> '') then
    meCNPJ.Text := DmDta.quEmpresaEmp_cnpj.AsString;}
  if (not DmDta.quEmpresaEmp_dtretorno.IsNull) and (DmDta.quEmpresaEmp_dtretorno.Text <> '') then
    edEmpDtRetorno.Text := DmDta.quEmpresaEmp_dtretorno.AsString;
end;

procedure TFOREMPA.cbTipoPesquisaChange(Sender: TObject);
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

procedure TFOREMPA.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp,');
    Sql.Add('  ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin,');
    Sql.Add('  f.func_nome');
    Sql.Add('from');
    Sql.Add('  Empresa e, EmpFuncionario ef1, EmpFuncionario ef2,');
    Sql.Add('  EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F');
    Sql.Add('where');
    Sql.Add('  e.emp_cod       *= ef1.emp_cod  and');
    Sql.Add('  e.emp_respcont  *= ef1.func_cod and');
    Sql.Add('  e.emp_cod       *= ef2.emp_cod  and');
    Sql.Add('  e.emp_respcomp  *= ef2.func_cod and');
    Sql.Add('  e.emp_cod       *= ef3.emp_cod  and');
    Sql.Add('  e.emp_respent   *= ef3.func_cod and');
    Sql.Add('  e.emp_cod       *= ef4.emp_cod  and');
    Sql.Add('  e.emp_respfin   *= ef4.func_cod and');
    Sql.Add('  e.emp_funccont  *= f.func_cod AND ');
    Sql.Add('  e.emp_tipopessoa= ''F''  ');
    Sql.Add('order by');
    Sql.Add('  e.emp_cod');
    Open;
    Last;
  end;
  if F2 then
    rgSituacao.ItemIndex := 0;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFOREMPA.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  {else if (meCnpj.Text = '') and not (cbProspect.Checked) then
    begin
      MSGERRO('Entre com o CNPJ da empresa!');
      meCnpj.SetFocus;
      Salvou := False;
    end}

  if Salvou then
  begin
    if (DBEdit3.Text = '')  then //and not (cbProspect.Checked) then
    begin
      MSGERRO('Entre com o nome da empresa!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
    else if DBComboBox1.Text = '' then
    begin
      MSGERRO('Entre com o ramo da empresa!');
      DBComboBox1.SetFocus;
      Salvou := False;
    end
    else if DBComboBox3.Text = '' then
    begin
      MSGERRO('Entre com o tipo da empresa!');
      DBComboBox3.SetFocus;
      Salvou := False;
    end
    else
    begin
      // salva o registro
      if quPrincipal.State = dsEdit then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end
      else if quPrincipal.State = dsInsert then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;

        // refresh
        quPrincipal.Close;
        quPrincipal.Open;
        quPrincipal.Last;
      end;

      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;
        Notebook1.PageIndex := 0;
        cbTipoPesquisa.ItemIndex := 1;
        edPar.Clear;
        mePesqCnpj.Clear;
        if edPar.CanFocus then edPar.SetFocus;
      end;
    end;
  end;
end;

procedure TFOREMPA.edEmpDtIncExit(Sender: TObject);
begin
  if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFOREMPA.RadioGroup1Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
  colunas := 'e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp, ' +
    'ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';

  ordem := 'e.emp_nome';

  case radioGroup1.ItemIndex of
    0: argumento := argumento + ' and e.emp_ramo = ''Indústria''';
    1: argumento := argumento + ' and e.emp_ramo = ''Comércio''';
    2: argumento := argumento + ' and e.emp_ramo = ''Serviços''';
  end;

  // abre a query
  DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;


procedure TFOREMPA.RadioGroup2Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
  colunas := 'e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp, ' +
    'ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';

  ordem := 'e.emp_nome';

  case radioGroup2.ItemIndex of
    0: argumento := argumento + ' and e.emp_porte = ''Pequeno''';
    1: argumento := argumento + ' and e.emp_porte = ''Médio''';
    2: argumento := argumento + ' and e.emp_porte = ''Grande''';
    3: argumento := argumento + ' and e.emp_porte = ''Multinac.''';
  end;

  // abre a query
  DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;

procedure TFOREMPA.pgPrincipalChange(Sender: TObject);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
      PgPrincipal.ActivePageIndex := 0;
      Exit;
    end;

    EstadoEditando;
  end
  else
  begin
    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      MSGERRO('Salve o registro primeiramente!');
      PgPrincipal.ActivePageIndex := 1;
    end
    else
      EstadoNavegando();

    cbTipoPesquisa.ItemIndex := 1;
    Notebook1.PageIndex := 0;
    edPar.Clear;
    if edPar.CanFocus then edPar.SetFocus;
  end;
end;

procedure TFOREMPA.btExcluirClick(Sender: TObject);

  function VerificaDelecao: Boolean;
  begin
    with TQuery.create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select * from Tce where emp_cod = ' + quPrincipal.FieldByName('emp_cod').Text);
      Sql.Add('and tce_situacao <> ''7''');
      Open;

      Result := IsEmpty;
      Close;
      Free;
    end;
  end;

  procedure DeletaTabelas;
    procedure Tabela(nomeTabela: string);
    begin
      with TQuery.create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Delete from ' + nomeTabela + ' where emp_cod = ' + quPrincipal.FieldByName('emp_cod').Text);
        ExecSql;
        Free;
      end;
    end;
  begin
    Tabela('EmpFuncionario');
    Tabela('Vaga');
  end;

begin
  if not VerificaDelecao() then
  begin
    MSGAVISO('Não é possível excluir a empresa pois possuem TCE''s ativos!');
    exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      btEnter.SetFocus;
      DeletaTabelas;
      DmDta.ExcluirRegistro(quPrincipal);
      estadoNavegando;

      cbTipoPesquisa.ItemIndex := 1;
      Notebook1.PageIndex := 0;
      edPar.Clear;
      if edPar.CanFocus then edPar.SetFocus;

    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFOREMPA.edParExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if edPar.Text <> '' then
  begin
    // argumentos iniciais
    colunas := 'e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp, ' +
      'ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin, ' +
      'f.func_nome';

    tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
      'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

    argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
      'e.emp_respcont  *= ef1.func_cod and ' +
      'e.emp_cod       *= ef2.emp_cod  and ' +
      'e.emp_respcomp  *= ef2.func_cod and ' +
      'e.emp_cod       *= ef3.emp_cod  and ' +
      'e.emp_respent   *= ef3.func_cod and ' +
      'e.emp_cod       *= ef4.emp_cod  and ' +
      'e.emp_respfin   *= ef4.func_cod and ' +
      'e.emp_funccont  *= f.func_cod';

    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'e.emp_cod';
          argumento := argumento + ' and e.emp_cod = ' + edPar.Text;
        end;
      1:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and ((e.emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(e.emp_nomefantasia like ''%' + edPar.Text + '%''))';
        end;
      4:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_cidade like ''%' + edPar.Text + '%''';
        end;
      8:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_estado = ''' + edPar.Text + '''';
        end;
    end;

    // verifica a situação da vaga
    case rgSituacao.itemIndex of
      0:
        begin
          if argumento <> '' then argumento := argumento + ' and ';
          argumento := argumento + ' e.emp_indprospect = ''0''';
        end;
      1:
        begin
          if argumento <> '' then argumento := argumento + ' and ';
          argumento := argumento + ' e.emp_indprospect = ''1''';
        end;
    end;

    // abre a query
    DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFOREMPA.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Sender <> DBEdit2 then
    CaracterMinusculo(Key);
end;

procedure TFOREMPA.btFuncionariosClick(Sender: TObject);
var
  bNovaemp: Boolean;
begin
  MudaAba := False;
  bNovaEmp := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      bNovaEmp := quPrincipal.State = dsInsert;
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREFU := TFOREFU.Create(Self);
    FOREFU.NovaEmp := bNovaEmp;
    FOREFU.Emp := quPrincipal.FieldByName('emp_cod').AsInteger;
    FOREFU.EmpNome := quPrincipal.FieldByName('emp_nome').AsString;
    Screen.Cursor := crDefault;
    FOREFU.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.btResponsaveisClick(Sender: TObject);
begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORERE := TFORERE.Create(Self);
    Screen.Cursor := crDefault;
    FORERE.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.btCancelarClick(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := 0;
  edPar.Clear;
  if edPar.CanFocus then edPar.SetFocus;
end;

procedure TFOREMPA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
    vk_F6: btFuncionariosClick(Sender);
    vk_F7: btResponsaveisClick(Sender);
    vk_F8: btEtiquetasClick(Sender);
    vk_F9: btConvenioClick(Sender);
    vk_F10: btSatisfacaoClick(Sender);
    vk_F11: sbComplementoClick(Sender);
    vk_F12: sbPagamentoClick(Sender);
  end;
end;

procedure TFOREMPA.LimpaCampos;
begin
  inherited;
  edEmpDtInc.Clear;
  edEmpDtRetorno.Clear;
  //meCnpj.Clear;
end;

procedure TFOREMPA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFOREMPA.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
      Exit;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;

    {if not ValidaCgcCpf(meCnpj.text) then
    begin
      MSGERRO('CNPJ inválido. Informe novo CNPJ ou apague!');
      meCnpj.SetFocus;
    end;}
  end
  else
  begin
    F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
    F2Nome := quPrincipal.FieldByName(nomeNome).AsString;
    F2Tipo := quPrincipal.FieldByName('emp_tipo').AsString;
    Close;
  end;
end;

procedure TFOREMPA.btEtiquetasClick(Sender: TObject);
var
  End2, Cep: string;
begin
  MudaAba := False;

  try
    btSalvar.Click;
  except
    btCancelar.Click; // Cancela Registro
  end;

  if Salvou then
  begin
    if quPrincipal.FieldByName('emp_cepcor').AsString <> '' then
    begin
      Cep := quPrincipal.FieldByName('emp_cepcor').AsString;
      Cep := Copy(Cep, 1, 2) + '.' + Copy(Cep, 3, 3) + '-' + Copy(Cep, 6, 3);
    end;

    End2 := 'CEP: ' + Cep + ' - ' +
      quPrincipal.FieldByName('emp_bairrocor').AsString + ' - ' +
      quPrincipal.FieldByName('emp_cidadecor').AsString + '/PR';

    Screen.Cursor := crHourGlass;
    FORETQ := TFORETQ.Create(Self);
    FORETQ.F2 := True;

    FORETQ.nome := quPrincipal.FieldByName('emp_nome').AsString;
    FORETQ.nomeResp := quPrincipal.FieldByName('emp_nomerespcomp').AsString;
    FORETQ.End1 := quPrincipal.FieldByName('emp_enderecocor').AsString;
    if quPrincipal.fieldbyname('emp_numendcor').Text <> '' then
      FORETQ.End1 := FORETQ.End1 + ' ' + quPrincipal.fieldbyname('emp_numendcor').Text;
    if quPrincipal.fieldbyname('emp_cjtoendcor').Text <> '' then
      FORETQ.End1 := FORETQ.End1 + ' - CJ. ' + quPrincipal.fieldbyname('emp_cjtoendcor').Text;
    FORETQ.End2 := End2;
    Screen.Cursor := crDefault;
    FORETQ.ShowModal;

    if (FORETQ.Linha <> 0) and (FORETQ.Coluna <> 0) and (FORETQ.Etiquetas <> 0) then
    begin
      QRETQ := TQREtq.Create(Application);
      QRETQ.SetaEtiquetas(FORETQ.Nome, 'A/C: RECURSOS HUMANOS', FORETQ.End1, FORETQ.End2,
        FORETQ.Linha, FORETQ.Coluna, FORETQ.Etiquetas);
      QRETQ.Preview;
      QRETQ.tbEtiqueta.Close;
      QRETQ.Free;
    end;
    FORETQ.Free;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.edEmpDtIncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then
    quPrincipal.Edit;
end;

procedure TFOREMPA.DBComboBox1Click(Sender: TObject);
begin
  inherited;
  Salvou := True;
end;

procedure TFOREMPA.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
  CaracterMaiusculo(Key);
end;

procedure TFOREMPA.btConvenioClick(Sender: TObject);
var
  var1: Variant;
  DataC: string;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'Janeiro';
    me[2] := 'Fevereiro';
    me[3] := 'Março';
    me[4] := 'Abril';
    me[5] := 'Maio';
    me[6] := 'Junho';
    me[7] := 'Julho';
    me[8] := 'Agosto';
    me[9] := 'Setembro';
    me[10] := 'Outubro';
    me[11] := 'Novembro';
    me[12] := 'Dezembro';
    dt := FormatDateTime('dd/mm/yyyy', date);
    da[1] := dt[1];
    da[2] := dt[2];
    da[3] := dt[4];
    da[4] := dt[5];
    da[5] := dt[7];
    da[6] := dt[8];
    da[7] := dt[9];
    da[8] := dt[10];
    d := da[1] + da[2];
    m := da[3] + da[4];
    a := da[5] + da[6] + da[7] + da[8];
    datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
  end;

  procedure imprime2;
  var
    numero, cargo: string;
  begin
    Numero := FormatDateTime('yyyy', Now()) + Copy('0000' + DBEdit1.Text, Length(DBEdit1.Text) + 1, 4);

    var1 := CreateOleObject('Word.basic');

    // pessoa Fisica
    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'F') and (dmDta.quEmpresaemp_formapgto.asstring = 'Própria') then
    begin
      var1.Filenew(FORINI.Diretorio + 'PFPD.dot');
      var1.editbookmark('numero', 0, 0, 0, 1);
      Var1.Insert(numero);
      var1.editbookmark('nome', 0, 0, 0, 1);
      Var1.Insert(trim(dmDta.quEmpresaemp_nome.Text));

      var1.editbookmark('cpf', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));

      var1.editbookmark('estadocivil', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_estadocivil.Text)));
      var1.editbookmark('conselho', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_conselhoclasse.Text)));
      var1.editbookmark('rg', 0, 0, 0, 1);
      Var1.Insert(dmDta.quEmpresaemp_rg.Text);

      var1.editbookmark('profissao', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_profissao.Text)));

      var1.editbookmark('nacionalidade', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_nacionalidade.Text)));

      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');

      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('nomerepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('cargorepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;

    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'F') and (dmDta.quEmpresaemp_formapgto.asstring = 'CETEFE') then
    begin
      var1.Filenew(FORINI.Diretorio + 'PFPC.dot');
      var1.editbookmark('numero', 0, 0, 0, 1);
      Var1.Insert(numero);
      var1.editbookmark('nome', 0, 0, 0, 1);
      Var1.Insert(trim(dmDta.quEmpresaemp_nome.Text));

      var1.editbookmark('cpf', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));

      var1.editbookmark('estadocivil', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_estadocivil.Text)));
      var1.editbookmark('conselho', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_conselhoclasse.Text)));
      var1.editbookmark('rg', 0, 0, 0, 1);
      Var1.Insert(dmDta.quEmpresaemp_rg.Text);

      var1.editbookmark('profissao', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_profissao.Text)));

      var1.editbookmark('nacionalidade', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_nacionalidade.Text)));
      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');

      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('nomerepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('cargorepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;


    // Pessoa Juridica
    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'J') and (dmDta.quEmpresaemp_formapgto.asstring = 'Própria') then
    begin
      var1.Filenew(FORINI.Diretorio + 'PJPD.dot');
      var1.editbookmark('numero', 0, 0, 0, 1);
      Var1.Insert(numero);
      var1.editbookmark('nome', 0, 0, 0, 1);
      Var1.Insert(trim(dmDta.quEmpresaemp_nome.Text));

      var1.editbookmark('cidade', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_cidade.Text)));

      var1.editbookmark('rua', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_endereco.Text)));
      var1.editbookmark('nro', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_numend.Text)));

      var1.editbookmark('estado', 0, 0, 0, 1);
      Var1.Insert('Paraná');


      var1.editbookmark('cnpj', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));
      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('representantecargo', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
            var1.editbookmark('estadocivil', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_estcivil').Text)));
            var1.editbookmark('profissao', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_profissao').Text)));
            var1.editbookmark('rg', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_rg').Text));
            var1.editbookmark('cpf', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_cpf').Text));
            var1.editbookmark('nacionalidade', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_nacionalidade').Text)));

          end;
          Close;
          Free;
        end;
      end;

      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');

      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('representantecargo2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;

    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'J') and (dmDta.quEmpresaemp_formapgto.asstring = 'CETEFE') then
    begin
      var1.Filenew(FORINI.Diretorio + 'PJPC.dot');
      var1.editbookmark('numero', 0, 0, 0, 1);
      Var1.Insert(numero);
      var1.editbookmark('nome', 0, 0, 0, 1);
      Var1.Insert(trim(dmDta.quEmpresaemp_nome.Text));

      var1.editbookmark('cidade', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_cidade.Text)));

      var1.editbookmark('rua', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_endereco.Text)));
      var1.editbookmark('nro', 0, 0, 0, 1);
      Var1.Insert(DmDta.PrimeirasMaiusculas(trim(dmDta.quEmpresaemp_numend.Text)));

      var1.editbookmark('estado', 0, 0, 0, 1);
      Var1.Insert('Paraná');

      var1.editbookmark('cnpj', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));
      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('representantecargo', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
            var1.editbookmark('estadocivil', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_estcivil').Text)));
            var1.editbookmark('profissao', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_profissao').Text)));
            var1.editbookmark('rg', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_rg').Text));
            var1.editbookmark('cpf', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_cpf').Text));
            var1.editbookmark('nacionalidade', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_nacionalidade').Text)));

          end;
          Close;
          Free;
        end;
      end;

      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');

      if not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
          Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(DmDta.quEmpresaemp_nomerespcont.text));
            var1.editbookmark('representantecargo2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;


    Var1.AppShow;



  end;

  procedure Imprime;
  var
    Numero, Cargo: string;
  begin
    // verificar Joilson         ok   23/10/2007
    Numero := FormatDateTime('yyyy', Now()) + Copy('0000' + DBEdit1.Text, Length(DBEdit1.Text) + 1, 4);

    var1 := CreateOleObject('Word.basic');
   // var1.FileOpen(FORINI.Diretorio+'Contrato_3.doc');
    var1.Filenew(FORINI.Diretorio + 'Contrato_3.dot');

    // Dados da impressão
    Var1.Font('Arial', 12);
    Var1.Bold;

    Var1.CenterPara;
    if Numero <> '' then
      Var1.Insert('TERMO DE CONTRATO Nº ' + Numero + #13 + #13 + #13 + #13);

    Var1.Font('Arial', 11);
    Var1.JustifyPara;
    Var1.Insert('Pelo presente instrumento particular, de um lado ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, ');
    Var1.Bold;
    Var1.Insert('pessoa jurídica de direito privado, agente de integração declarado de utilidade pública, ');
    Var1.Insert('de fins educacionais e sem intuito lucrativo, com sede na cidade de Curitiba, Estado do Paraná, ');
    Var1.Insert('na Avenida Iguaçu, nº 2.345, 1º andar, inscrita no CNPJ/MF sob nº 02.217.643/0001-17, neste ato ');
    Var1.Insert('representado por seu Diretor-Presidente ');
    Var1.Bold;
    Var1.Insert('RODRIGO KOTZIAS MOSCALEWSKI, ');
    Var1.Bold;
    Var1.Insert('brasileiro, casado, empresário, portador da carteira de identidade RG nº 3.655.060-0 SSP/PR e ');
    Var1.Insert('inscrito no CPF/MF sob nº 873.751.419-91, ora denominado ');
    Var1.Bold;
    Var1.Insert('CETEFE ou AGENTE DE INTEGRAÇÃO, ');
    Var1.Bold;
    Var1.Insert('e de outro lado ');
    Var1.Bold;
    Var1.Insert(dmDta.quEmpresaemp_nome.Text + ', ');
    Var1.Bold;
    Var1.Insert('pessoa jurídica de direito privado, com sede na cidade de ');
    Var1.Insert(DmDta.PrimeirasMaiusculas(dmDta.quEmpresaEmp_cidade.Text) + ', Estado do ' + dmDta.quEmpresaEmp_estado.Text + ', ');
    Var1.Insert('na ' + DmDta.PrimeirasMaiusculas(dmDta.quEmpresaEmp_endereco.Text));
    if dmDta.quEmpresa.fieldbyname('emp_numend').Text <> '' then
      Var1.Insert(' ' + dmDta.quEmpresa.fieldbyname('emp_numend').Text);
    if dmDta.quEmpresa.fieldbyname('emp_cjto').Text <> '' then
      Var1.Insert(' - CJ. ' + dmDta.quEmpresa.fieldbyname('emp_cjto').Text);

    Var1.Insert(', inscrita no CNPJ/MF sob nº ' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 1, 2) + '.' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 3, 3) + '.' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 6, 3) + '/' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 9, 4) + '-' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 13, 2) + ', ');
    if not DmDta.quEmpresaemp_respcont.IsNull then
    begin
      Var1.Insert('neste ato representado por seu ');


      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select * from EmpFuncionario where emp_cod = ' + DmDta.quEmpresaemp_cod.Text);
        Sql.Add('and func_cod = ' + DmDta.quEmpresaemp_respcont.Text);
        Open;

        if not IsEmpty then
        begin
          Cargo := FieldByName('efu_cargo').Text;
          Var1.Insert(AnsiLowerCAse(Cargo) + ' ');
          Var1.Bold;
          Var1.Insert(DmDta.quEmpresaemp_nomerespcont.text + ', ');
          Var1.Bold;
          Var1.Insert(lowercase(FieldByName('efu_nacionalidade').AsString) + ', ');
          Var1.Insert(lowercase(FieldByName('efu_estcivil').AsString) + ', ');
          Var1.Insert(lowercase(FieldByName('efu_profissao').AsString) + ', ');
          Var1.Insert('portador(a) da carteira de identidade RG nº ' + lowercase(FieldByName('efu_rg').AsString) + ' SSP/PR ');
          Var1.Insert('e inscrito(a) no CPF/MF sob nº ');
          Var1.Insert(Copy(FieldByName('efu_cpf').Text, 1, 3) + '.' + Copy(FieldByName('efu_cpf').Text, 4, 3) + '.' + Copy(FieldByName('efu_cpf').Text, 7, 3) + '-' + Copy(FieldByName('efu_cpf').Text, 10, 2) + '');
        end;

        Close;
        Free;
      end;
    end;
    Var1.Insert(', ora denominada ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('tem entre si justo e contratado o que segue: ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA PRIMEIRA: OBJETO ' + #13 + #13);
    Var1.Insert('Pelo presente instrumento e na melhor forma de direito, as partes estabelecem uma parceria que ');
    Var1.Insert('tem por objetivo promover o estágio curricular de estudantes ');
    Var1.Insert('regularmente matriculados em estabelecimentos de ensino superior e ensino profissionalizante do 2º Grau e ');
    Var1.Insert('Supletivo, ou escolas de educação especial, sejam públicas e/ou privadas, em conformidade com a Lei nº 6.494/77, ');
    Var1.Insert('regulamentada pelo Decreto nº 87.497/82, e demais disposições legais aplicáveis.' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Único: ');
    Var1.Bold;
    Var1.Insert('O estágio deverá oferecer ao estudante a complementação do ensino e da aprendizagem social, profissional e cultural, ');
    Var1.Insert('constituindo-se em instrumento de integração, em termos de treinamento prático, de aperfeiçoamento técnico, profissionalizante, ');
    Var1.Insert('cultural, científico e de relacionamento humano. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA SEGUNDA: OBRIGAÇÕES DO CETEFE, COMO AGENTE DE INTEGRAÇÃO ' + #13 + #13);
    Var1.Insert('(i) Celebrar e manter Convênios de Cooperação com as Instituições de Ensino;' + #13 + #13);
    Var1.Insert('(ii) Obter informações por parte da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('com relação aos programas e oportunidades de estágio a serem por esta oferecidos;' + #13 + #13);
    Var1.Insert('(iii) Cadastrar, convocar e selecionar os estudantes, encaminhando-os à ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('de acordo com suas necessidades; ' + #13 + #13);
    Var1.Insert('(iv) Providenciar toda a documentação necessária para a efetivação do estágio;' + #13 + #13);
    Var1.Insert('(v) Realizar a interação entre a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('a as Instituições de Ensino, visando à assinatura do instrumento jurídico previsto no Art. 5º do Decreto nº. 87.497/82;' + #13 + #13);
    Var1.Insert('(vi) Providenciar a assinatura do competente Termo de Compromisso de Estágio entre a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('o Estudante e a respectiva Instituição de Ensino, de acordo com o parágrafo 1º, do artigo 6º, do Decreto nº. 87.497/82;' + #13 + #13);
    Var1.Insert('(vii) Providenciar o Seguro Contra Acidentes Pessoais em favor do estagiário, assumindo os custos correspondentes; ' + #13 + #13);
    Var1.Insert('(viii) Acompanhar o estudante em toda a duração do Programa de Estágio, através de relatórios apresentados pelo estagiário, bem com pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('e/ou através da realização de visitas, tanto ao estudante quanto ao(s) seus(s) supervisor(es) de estágio, sempre que se fizer ');
    Var1.Insert('conveniente ou necessário; ' + #13 + #13);
    Var1.Insert('(ix) Comunicar formalmente à ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('qualquer irregularidade verificada em relação ao estágio;' + #13 + #13);

    if DmDta.quEmpresaemp_formapgto.Text = 'CETEFE' then
    begin
      Var1.Insert('(x) Efetuar o repasse da Bolsa-Auxílio diretamente ao estagiário, no prazo de 02 (dois) dias úteis contados do efetivo recebimento dos recursos enviados pela ');
      Var1.Bold;
      Var1.Insert('UNIDADE CONCEDENTE ');
      Var1.Bold;
      Var1.Insert('para tanto. ' + #13 + #13 + #13);
    end
    else
    begin
      Var1.Insert('(x) Enviar à ');
      Var1.Bold;
      Var1.Insert('UNIDADE CONCEDENTE, ');
      Var1.Bold;
      Var1.Insert('com antecedência mínima de 02 (dois) dias úteis, boleto bancário referente à Bolsa Auxílio a ser por esta paga diretamente ao estagiário, assim como o boleto bancário ');
      Var1.Insert('referente à Contribuição Mensal prevista na Cláusula Quarta. ' + #13 + #13 + #13);
    end;

    Var1.Bold;
    Var1.Insert('CLÁUSULA TERCEIRA: OBRIGAÇÕES DA UNIDADE CONCEDENTE' + #13 + #13);
    Var1.Insert('(i) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('as oportunidades e vagas disponíveis para a realização de estágio, identificando as respectivas áreas ');
    Var1.Insert('de atuação e principais atividades a serem desenvolvidas pelo estagiário; ' + #13 + #13);

    Var1.Insert('(ii) Manter centralizadas as informações relativas ao estágio, indicando o responsável para receber e entrevistar os estudantes encaminhados pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
    Var1.Bold;
    Var1.Insert('assim como para assinar os documentos necessários à formalização do Programa de Estágio; ' + #13 + #13);

    Var1.Insert('(iii) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('os nomes dos estudantes que efetivamente realizarão estágio junto à ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ');
    Var1.Bold;
    Var1.Insert(#13 + #13);

    Var1.Insert('(iv) Assinar o competente Termo de Compromisso de Estágio com a Instituição de Ensino, o Estudante e o ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
    Var1.Bold;
    Var1.Insert('de acordo com o parágrafo 1º, do artigo 6º, do Decreto nº. 87.497/82, assim como outros documentos necessários à ');
    Var1.Insert('formalização do estágio; ' + #13 + #13);

    Var1.Insert('(v) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('detalhes sobre o desempenho do estagiário sempre que se fizer necessário; ' + #13 + #13);

    Var1.Insert('(vi) Fixar a jornada de atividade do estágio, compatibilizando o horário escolar do estudante com o horário de trabalho da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ' + #13 + #13);

    if DmDta.quEmpresaemp_formapgto.Text = 'CETEFE' then
    begin
      Var1.Insert('(vii) Transferir mensalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO ');
      Var1.Bold;
      Var1.Insert('impreterivelmente até o dia 02 (dois) do mês subseqüente ao vencido, os recursos referentes ');
      Var1.Insert('à Bolsa-Auxílio a ser paga ao estagiário, juntamente com o valor da contribuição mensal prevista na Cláusula Quarta infra; ' + #13 + #13);

      Var1.Insert('(viii) Comunicar formalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO ');
      Var1.Bold;
      Var1.Insert('a interrupção, conclusão e/ou eventuais modificações do estágio, tais como mudança de ');
      Var1.Insert('atividades a serem exercidas pelo estagiário, aumento da Bolsa Auxílio, bem como outras ');
      Var1.Insert('informações referentes ao desenvolvimento do estágio, para que o ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO ');
      Var1.Bold;
      Var1.Insert('possa providenciar as devidas alterações do Termo de Compromisso de Estágio ou sua rescisão, conforme o caso. ' + #13 + #13 + #13);
    end
    else
    begin
      Var1.Insert('(vii) Efetuar mensalmente ao estagiário, até o 5° (quinto) dia útil do mês subseqüente ao vencido, o pagamento da Bolsa Auxílio estabelecida no Termo ');
      Var1.Insert('de Compromisso de Estágio, enviando cópia o comprovante de pagamento ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
      Var1.Bold;
      Var1.Insert('por fax ou correio; ' + #13 + #13);

      Var1.Insert('(viii) Efetuar mensalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
      Var1.Bold;
      Var1.Insert('até o dia 05 (cinco) do mês subseqüente ao vencido, o pagamento da Contribuição Mensal prevista na Cláusula Quarta infra; ' + #13 + #13);

      Var1.Insert('(ix) Comunicar formalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO ');
      Var1.Bold;
      Var1.Insert('a interrupção, conclusão e/ou eventuais modificações do estágio, tais como mudança de ');
      Var1.Insert('atividades a serem exercidas pelo estagiário, aumento da Bolsa Auxílio, bem como outras ');
      Var1.Insert('informações referentes ao desenvolvimento do estágio, para que o ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRAÇÃO ');
      Var1.Bold;
      Var1.Insert('possa providenciar as devidas alterações do Termo de Compromisso de Estágio ou sua rescisão, conforme o caso. ' + #13 + #13 + #13);
    end;

    Var1.Bold;
    Var1.Insert('CLÁUSULA QUARTA: CONTRIBUIÇÃO MENSAL' + #13 + #13);

    Var1.Insert('Para o custeio administrativo do Programa de Estágio e para a cobertura dos demais encargos incidentes, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagará ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('contribuição mensal de 10% (dez por cento) sobre o valor da Bolsa Auxílio estabelecida no Termo de Compromisso de Estágio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Primeiro: ');
    Var1.Bold;
    Var1.Insert('Na hipótese de Bolsa Auxílio em valor inferior a R$ 250,00 (duzentos e cinqüenta reais) mensais, ou na hipótese de estágio não remunerado, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagará ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('contribuição mensal fixa no valor de R$ 25,00 (vinte e cinco) reais. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Segundo: ');
    Var1.Bold;
    Var1.Insert('Na hipótese de Bolsa Auxílio fixada por hora, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagará ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('contribuição mensal considerando-se a carga horária mensal estabelecida na Cláusula Terceira do Termo de Compromisso de Estágio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Terceiro: ');
    Var1.Bold;
    Var1.Insert('Ficará a critério da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('oferecer outros benefícios ao estagiário. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Quarto: ');
    Var1.Bold;
    Var1.Insert('O valor da contribuição mensal poderá ser revisto anualmente entre as partes, caso fatores econômicos justifiquem sua alteração. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Quinto: ');
    Var1.Bold;
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagará a contribuição mensal ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('até o momento em que este receba comunicado formal do término do estágio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Sexto: ');
    Var1.Bold;
    Var1.Insert('Em caso de cancelamento, após decorridas 72 horas da data de abertura de vaga pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('junto ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
    Var1.Bold;
    Var1.Insert('a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('deverá pagar ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('a importância de R$ 100,00 (cem reais) para fazer frente às despesas por este realizadas. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Sétimo: ');
    Var1.Bold;
    Var1.Insert('Caso a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('tenha interesse apenas em utilizar o serviço de recrutamento e seleção oferecido pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO - ');
    Var1.Bold;
    Var1.Insert('sem que este tenha qualquer obrigação ou responsabilidade pela administração do contrato de estágio - será cobrada ');
    Var1.Insert('a importância correspondente a 40% (quarenta por cento) do valor da respectiva Bolsa Auxílio, por vaga preenchida. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA QUINTA: CONDIÇÕES GERAIS ' + #13 + #13);

    Var1.Insert('(i) Fica o ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('expressamente autorizado a representar a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('junto às Instituições de Ensino, para realização de atividades previstas no artigo 7º do Decreto nº. 87.497/82. ' + #13 + #13);

    Var1.Insert('(ii) O estágio, como complemento de ensino e aprendizagem, não caracteriza vínculo empregatício de qualquer natureza com a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('tampouco com o ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO, ');
    Var1.Bold;
    Var1.Insert('conforme o disposto no artigo 4º da Lei nº. 6.494/77 e no artigo 6º do Decreto nº. 87.497/82. ' + #13 + #13);

    Var1.Insert('(iii) O ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('fica totalmente livre e desobrigado de assumir ou arcar com qualquer despesa de responsabilidade exclusiva da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA SEXTA: PRAZO' + #13 + #13);

    Var1.Insert('O presente instrumento vigorará pelo prazo de 12 (doze) meses contados da data de sua assinatura, ');
    Var1.Insert('podendo ser renovado automaticamente, após decorrido este prazo, por períodos iguais e sucessivos, caso as partes ');
    Var1.Insert('não convencionem em sentido contrário. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Parágrafo Único: ');
    Var1.Bold;
    Var1.Insert('Este instrumento poderá ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante ');
    Var1.Insert('comunicação prévia e formal de 30 (trinta) dias, sem que assista à outra parte direito a qualquer reclamação, permanecendo ');
    Var1.Insert('em vigor todas as cláusulas e condições ora estabelecidas durante o prazo de denúncia. ' + #13 + #13 + #13);


    Var1.Bold;
    Var1.Insert('CLÁUSULA SÉTIMA: FORO' + #13 + #13);

    Var1.Insert('Fica eleito o Foro Central da Comarca da Região Metropolitana de Curitiba, Estado do Paraná, para dirimir quaisquer dúvidas ou questões oriundas deste Contrato.' + #13 + #13);

    Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em 02 (duas) vias de igual teor e forma, na presença de 02 (duas) testemunhas. ' + #13 + #13 + #13);
    Var1.Insert('Curitiba, ' + dataC + '. ' + #13 + #13);

    Var1.NextCell;

    Var1.Insert('Representante da ' + #13);
    Var1.Insert('UNIDADE CONCEDENTE' + #13 + #13 + #13);

    Var1.Insert('________________________________' + #13);
    Var1.Insert(AnsiUpperCase(DmDta.quEmpresaemp_nomerespcont.text) + #13);
    Var1.Insert(AnsiUpperCase(Cargo) + #13 + #13 + #13);


    VAr1.JustifyPAra;
    Var1.Insert('TESTEMUNHAS: ' + #13);
    Var1.Insert(#13 + #13 + #13);
    Var1.Insert('1. _____________________________ ' + #13);
    Var1.Insert('Nome: ' + #13);
    Var1.Insert('Cargo: ' + #13);
    Var1.Insert('CPF/MF: ');

    Var1.NextCell;

    Var1.Insert('Representante do ' + #13);
    Var1.Insert('AGENTE DE INTEGRAÇÃO' + #13 + #13 + #13);

    Var1.Insert('________________________________' + #13);
    Var1.Insert('RODRIGO KOTZIAS MOSCALEWSKI ' + #13);
    Var1.Insert('DIRETOR-PRESIDENTE' + #13 + #13 + #13);

    VAr1.JustifyPAra;
    Var1.Insert(#13);
    Var1.Insert(#13 + #13 + #13);
    Var1.Insert('2. _____________________________ ' + #13);
    Var1.Insert('Nome: ' + #13);
    Var1.Insert('Cargo: ' + #13);
    Var1.Insert('CPF/MF: ');





    ////////////////////////////////////////////////

    {

    // contribuição
    If DmDta.quEmpresaemp_tipotaxa.AsInteger = 0 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 20,00 (vinte reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Estágio para bolsa-auxílio inferior a R$ 250,00 (duzentos e cinqüenta reais). Para bolsa-auxílio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinqüenta reais), a contribuição é de ');
      Var1.Bold;
      Var1.Insert('08% (oito por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-auxílio por Termo de Compromisso de Estágio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 1 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 25,00 (vinte e cinco reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Estágio para bolsa-auxílio inferior a R$ 250,00 (duzentos e cinqüenta reais). Para bolsa-auxílio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinqüenta reais), a contribuição é de ');
      Var1.Bold;
      Var1.Insert('10% (dez por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-auxílio por Termo de Compromisso de Estágio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 2 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 20,00 (vinte reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Estágio para bolsa-auxílio inferior a R$ 250,00 (duzentos e cinqüenta reais). Para bolsa-auxílio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinqüenta reais), a contribuição é de ');
      Var1.Bold;
      Var1.Insert('R$ 25,00 (vinte e cinco reais). '+#13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 3 then
    begin
      Var1.Bold;
      Var1.Insert('R$ ' + DmDta.quEmpresaemp_valortaxa.Text + ' ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Estágio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 4 then
    begin
      Var1.Bold;
      Var1.Insert(DmDta.quEmpresaemp_valortaxa.Text + '% ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-auxílio por Termo de Compromisso de Estágio. ' + #13);
    end
    else
    begin
      Var1.Bold;
      Var1.Insert('R$ 22,50 (vinte e dois reais e cinqüenta centavos) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Estágio para bolsa-auxílio inferior a R$ 250,00 (duzentos e cinqüenta reais). Para bolsa-auxílio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinqüenta reais), a contribuição é de ');
      Var1.Bold;
      Var1.Insert('9% (nove por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-auxílio por Termo de Compromisso de Estágio. ' + #13);
    end;
    }


    Var1.AppShow;
  end;

begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    DtCompleta;
    Imprime2;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFOREMPA.btSatisfacaoClick(Sender: TObject);
var
  Ativa: string;
begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Ativa := 'SIM';
    if InputQuery('Status da Empresa', 'Empresa ativa?', Ativa) then
    begin
      Screen.Cursor := crHourGlass;
      FOREMP2 := TFOREMP2.Create(Self);
      FOREMP2.Ativa := UpperCase(Ativa);
      foremp2.tela := 2;
      Screen.Cursor := crDefault;
      FOREMP2.ShowModal;
    end;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.sbPagamentoClick(Sender: TObject);
begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREMP3 := TFOREMP3.Create(Self);
    Screen.Cursor := crDefault;
    foremp3.tela := 2;
    FOREMP3.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.sbComplementoClick(Sender: TObject);
begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREMP1 := TFOREMP1.Create(Self);
    Screen.Cursor := crDefault;
    foremp1.tela := 2;
    FOREMP1.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  QREmp1 := TQREmp1.Create(Self);
  Screen.Cursor := crDefault;
  QREmp1.Preview;
  QREmp1.Free;
end;

procedure TFOREMPA.btEndEncClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREMP4 := TFOREMP4.Create(Self);
    Screen.Cursor := crDefault;
    foremp4.tela := 2;
    FOREMP4.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.btEndCorClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREMP5 := TFOREMP5.Create(Self);
    Screen.Cursor := crDefault;
    foremp5.tela := 2;
    FOREMP5.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.DBEdit15Exit(Sender: TObject);
begin
  inherited;

  if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
    DmDta.quEmpresa.Edit;

  case DmDta.quEmpresa.FieldByName('Emp_func').AsInteger of
    0..9: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Micro';
    10..100: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Pequena';
    101..500: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Média';
    501..100000: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Grande';
  else
    DmDta.quEmpresa.FieldByName('Emp_porte').AsString := '';
  end;
end;

procedure TFOREMPA.rgSituacaoClick(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
  colunas := 'e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp, ' +
    'ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';

  ordem := 'e.emp_nome';

  if edPar.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'e.emp_cod';
          argumento := argumento + ' and e.emp_cod = ' + edPar.Text;
        end;
      1:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and ((e.emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(e.emp_nomefantasia like ''%' + edPar.Text + '%''))';
        end;
      4:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin
          ordem := argumento + ' and e.emp_nome';
          argumento := argumento + ' and e.emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin
          ordem := argumento + ' and e.emp_nome';
          argumento := argumento + ' and e.emp_cidade like ''%' + edPar.Text + '%''';
        end;
    end;
  end;

  // verifica a situação da vaga
  case rgSituacao.itemIndex of
    0:
      begin
        if argumento <> '' then argumento := argumento + ' and ';
        argumento := argumento + ' e.emp_indprospect = ''0''';
      end;
    1:
      begin
        if argumento <> '' then argumento := argumento + ' and ';
        argumento := argumento + ' e.emp_indprospect = ''1''';
      end;
    2:
      begin
        if argumento <> '' then argumento := argumento + ' and ';
        argumento := argumento + ' e.emp_indprospect in (''0'',''1'')';
      end;
  end;

  DmDta.MontaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;

procedure TFOREMPA.sbComercialClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREMP6 := TFOREMP6.Create(Self);
    Screen.Cursor := crDefault;
    foremp6.tela := 2;
    FOREMP6.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.sbHistoricoClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREHI := TFOREHI.Create(Self);
    FOREHI.Emp := DBEdit1.Field.AsInteger;
    Screen.Cursor := crDefault;
    FOREHI.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREMPA.btExportarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  quExportacao.Open;

  GerarExcel(quExportacao, Caption);
  quExportacao.Close;
  Screen.Cursor := crDefault;
end;

procedure TFOREMPA.mePesqCnpjExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
  colunas := 'e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespcomp, ' +
    'ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';

  ordem := 'e.emp_cod';

  if mePesqCnpj.Text <> '' then
  begin
    argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj.Text + '''';

    // verifica a situação da vaga
    case rgSituacao.itemIndex of
      0:
        begin
          if argumento <> '' then argumento := argumento + ' and ';
          argumento := argumento + ' e.emp_indprospect = ''0''';
        end;
      1:
        begin
          if argumento <> '' then argumento := argumento + ' and ';
          argumento := argumento + ' e.emp_indprospect = ''1''';
        end;
    end;

    // abre a query
    DmDta.MontaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFOREMPA.btnEtiquetasAllClick(Sender: TObject);
begin
  with DmDta.quEmpresa do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    DmDta.tbEtiqueta.Open;
    while not Eof do
    begin
      if dbgrid1.SelectedRows.CurrentRowSelected then
      begin
      // Gera Etiqueta
        try
          DmDta.GeraEtiquetaEmp(FieldByName('emp_cod').AsInteger);
        except
          MSGErro('Erro na geração de etiquetas!');
          Exit;
        end;
      end;
      Next;
    end;
    First;
    EnableControls;

    // Chama a impressão das etiquetas
    Screen.Cursor := crHourGlass;
    FORETQ1 := TFORETQ1.Create(Self);
    FORETQ1.F2 := True;
    FORETQ1.bEtiquetas := False;
    Screen.Cursor := crDefault;
    FORETQ1.ShowModal;

    if (FORETQ1.Linha <> 0) and (FORETQ1.Coluna <> 0) and (FORETQ1.Etiquetas <> 0) then
    begin
      try
        QRETQ := TQREtq.Create(Application);
        QRETQ.SetaEtiquetasVE('A/C: Recursos Humanos', FORETQ1.Linha, FORETQ1.Coluna, FORETQ1.Etiquetas);
        QRETQ.Preview;
        QRETQ.tbEtiqueta.Close;
        QRETQ.Free;
      except
        MSGErro('Erro na impressão de etiquetas!');
        Exit;
      end;
    end;
    FORETQ1.Free;

    DmDta.tbEtiqueta.Close();
  end;
end;

procedure TFOREMPA.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DmDta.quEmpresaemp_dtretorno.Visible := true;
  GerarExcel(DmDta.quEmpresa, Caption);
  DmDta.quEmpresaemp_dtretorno.Visible := false;
end;


procedure TFOREMPA.quPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
 // quprincipal.FieldByName('emp_tipopessoa').asstring := 'F'
  DmDTA.quEmpresaemp_tipopessoa.AsString := 'J';
  DmDTA.quEmpresaemp_formapgto.AsString := 'CETEFE';
end;

procedure TFOREMPA.DBEdit7Exit(Sender: TObject);
var
  municipio: integer;
begin
  inherited;
  if DmDta.quEmpresa.State in [dsedit, dsinsert] then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.add('select * from tb_logradouros where cep_logradouro =:cep');
    qrypesquisa.ParamByName('cep').asstring := copy(DmDta.quEmpresaemp_cep.AsString,1,5) + '-'+copy(DmDta.quEmpresaemp_cep.AsString,6,3);
    qrypesquisa.Open;
    if not qrypesquisa.Eof then
    begin
      if trim(DmDta.quEmpresaemp_endereco.AsString) = '' then
        DmDta.quEmpresaemp_endereco.AsString := qrypesquisa.fieldbyname('nm_logradouro').asstring;
      if trim(DmDta.quEmpresaemp_bairro.AsString) = '' then
        DmDta.quEmpresaemp_bairro.AsString := qrypesquisa.fieldbyname('bairro_logradouro').asstring;
      municipio := qrypesquisa.fieldbyname('id_municipio').asinteger;
      qrypesquisa.Close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.add('select a.*, b.sg_estado from tb_municipios A,tb_estados b where id_municipio =:municipio and a.id_estado=b.id_estado ');
      qrypesquisa.ParamByName('municipio').asinteger := municipio;
      qrypesquisa.Open;
      if trim(DmDta.quEmpresaemp_estado.AsString) = '' then
        DmDta.quEmpresaemp_estado.AsString := qrypesquisa.fieldbyname('sg_estado').asstring;
      if trim(DmDta.quEmpresaemp_cidade.AsString) = '' then
        DmDta.quEmpresaemp_cidade.AsString := qrypesquisa.fieldbyname('nm_municipio').asstring;
    end;
  end;
end;

end.

