unit TPOEMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls,
  Mask, DB, BDE, DBTables, OleServer, Word97, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxGroupBox,
  cxRadioGroup, RXCtrls, RXDBCtrl, cxLookAndFeelPainters, Menus;

type
  TFOREMP = class(TFORMOD2)
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
    btResponsaveis: TSpeedButton;
    btEtiquetas: TSpeedButton;
    btConvenio: TSpeedButton;
    btSatisfacao: TSpeedButton;
    sbPagamento: TSpeedButton;
    sbComplemento: TSpeedButton;
    btImpressao: TSpeedButton;
    btEndEnc: TSpeedButton;
    btEndCor: TSpeedButton;
    cbProspect: TDBCheckBox;
    Label10: TLabel;
    rgSituacao: TRadioGroup;
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
    qrygrupo: TQuery;
    qrygrupoGrup_cod: TIntegerField;
    qrygrupoGrup_Nome: TStringField;
    qrygrupoGrup_Site: TStringField;
    DataSource1: TDataSource;
    qrypesquisa: TQuery;
    Pagina: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    DBEdit3: TDBEdit;
    Bevel4: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit21: TDBEdit;
    mskcpf: TcxDBMaskEdit;
    DBEdit25: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Bevel5: TBevel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxDBMaskEdit5: TcxDBMaskEdit;
    Tipopessoa: TcxDBRadioGroup;
    cxDBMaskEdit6: TcxDBMaskEdit;
    SpeedButton2: TSpeedButton;
    qryfunc: TQuery;
    qryfuncfunc_cod: TIntegerField;
    qryfuncfunc_nome: TStringField;
    dsfunc: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label55: TLabel;
    Label56: TLabel;
    DBStatusLabel2: TDBStatusLabel;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit22: TDBEdit;
    Label21: TLabel;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    pmContrato: TPopupMenu;
    miContratoEstagio: TMenuItem;
    miContratoEfetivo: TMenuItem;
    qAux: TQuery;
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
    procedure DBEdit7Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Enter(Sender: TObject);
    procedure tipopessoaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxDBLookupComboBox2Enter(Sender: TObject);
    procedure edParDblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure miContratoEstagioClick(Sender: TObject);
    procedure miContratoEfetivoClick(Sender: TObject);
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
  FOREMP: TFOREMP;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOEFU, TPOERE, TPOFAT, TPOETQ, TPORETQ, ComObj, TPOCST,
  TPOEMP2, TPOEMP1, TPOEMP3, TPOREMP1, TPOEMP4, TPOEMP5, TPOEMP6, TPOEHI,
  TPOINI, TPOETQ1, TPOGRUPO, TPOEMPOBS, DateUtils;

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




procedure TFOREMP.DBEdit18Exit(Sender: TObject);
var
  Linha: string;
begin
  inherited;
  if DmDTA.dsEmpresa.State in [dsedit, dsinsert] then
  begin
    linha := sonumero(DmDTA.quEmpresaemp_cnpj.AsString);
    if (sender as tcxdbmaskedit).Name = 'mskcpf' then
      DmDTA.quEmpresaemp_cnpj.AsString := linha;

   { if length(linha) = 14 then
    begin
      //DmDTA.quEmpresaemp_cnpj.AsString := copy(linha, 1, 2) + '.' + copy(linha, 3, 3) + '.' + copy(linha, 6, 3) + '/' + copy(linha, 9, 4) + '-' + copy(linha, 13, 2);
      if validatecnpj(linha) = false then
        showmessage('Cnpj  Inv�lido');
    end;

    if length(linha) = 11 then
    begin
      //DmDTA.quEmpresaemp_cnpj.AsString := copy(linha, 1, 3) + '.' + copy(linha, 4, 3) + '.' + copy(linha, 7, 3) + '-' + copy(linha, 10, 2);
      if validatecpf(linha) = false then
        showmessage('Cpf  Inv�lido');
    end;
    if length(linha) in [11, 14] = false then
      showmessage('Tamanho Cnpj/Cpf  Inv�lido');}
  end;
end;





procedure TFOREMP.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'emp_cod';
  nomeCodigo := 'emp_cod';
  nomeNome := 'emp_nome';
  nomeTabela := 'Empresa';

  quPrincipal := DmDta.quEmpresa;
  DmDta.dsEmpresa.DataSet := quPrincipal;
  mudaAba := True;
  qrygrupo.Open;
  QRYFUNC.OPEN;
end;

procedure TFOREMP.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEmpresa.DataSet := DmDta.quEmpresa;
end;

procedure TFOREMP.AtualizaDados;
begin
 //
 { if edEmpDtInc.Text <> '  /  /    ' then
    DmDta.quEmpresaemp_dtInc.AsString := edEmpDtInc.Text
  else
    DmDta.quEmpresaemp_dtInc.AsString := '';}

  {if edEmpDtRetorno.Text <> '  /  /    ' then
    DmDta.quEmpresaemp_dtretorno.AsString := edEmpDtRetorno.Text
  else
    DmDta.quEmpresaemp_dtretorno.AsString := '';}

  {if meCnpj.Text <> '' then
    DmDta.quEmpresaemp_cnpj.AsString := meCNPJ.Text
  else
    DmDta.quEmpresaemp_cnpj.AsString := '';}
end;

procedure TFOREMP.InicializaDados;
begin
  quPrincipal.FieldByName('emp_cod').Value := 0;
  quPrincipal.FieldByName('emp_indprospect').Value := '0';

  // datas
 // edEmpDtInc.Text := FormatDateTime('dd/mm/yyyy', Date);
  quPrincipal.FieldByName('emp_dtinc').Value := date;

  // detalhes do perfil da empresa
  quPrincipal.FieldByName('emp_observacao').Value := ' ';
  quPrincipal.FieldByName('emp_tipotaxa').Value := '0';
  quPrincipal.FieldByName('emp_ciee').Value := '0';
  quPrincipal.FieldByName('emp_iel').Value := '0';
  quPrincipal.FieldByName('emp_interage').Value := '0';
  quPrincipal.FieldByName('emp_educare').Value := '0';
  //edEmpDtInc.SetFocus;
end;

procedure TFOREMP.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFOREMP.CarregaDados;
begin
  {if (not DmDta.quEmpresaEmp_dtInc.IsNull) and (DmDta.quEmpresaEmp_dtInc.Text <> '') then
    edEmpDtInc.Text := DmDta.quEmpresaEmp_dtInc.AsString;}
  {if (not DmDta.quEmpresaEmp_cnpj.IsNull) and (DmDta.quEmpresaEmp_cnpj.Text <> '') then
    meCNPJ.Text := DmDta.quEmpresaEmp_cnpj.AsString;}
  {if (not DmDta.quEmpresaEmp_dtretorno.IsNull) and (DmDta.quEmpresaEmp_dtretorno.Text <> '') then
    edEmpDtRetorno.Text := DmDta.quEmpresaEmp_dtretorno.AsString;}
end;

procedure TFOREMP.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8, 9:
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

procedure TFOREMP.FormShow(Sender: TObject);
begin
  qrygrupo.open;
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
    Sql.Add('  e.emp_funccont  *= f.func_cod  ');
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

procedure TFOREMP.btSalvarClick(Sender: TObject);
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
    if (DBEdit3.Text = '') and not (cbProspect.Checked) then
    begin
      MSGERRO('Entre com o nome da empresa!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
   { else if DBComboBox1.Text = '' then
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
    end}
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
       // Notebook1.PageIndex := 0;
        //cbTipoPesquisa.ItemIndex := 1;
        edPar.Clear;
        mePesqCnpj.Clear;
        if edPar.CanFocus then edPar.SetFocus;
      end;
    end;
  end;
end;

procedure TFOREMP.edEmpDtIncExit(Sender: TObject);
begin
  {if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;}
end;

procedure TFOREMP.RadioGroup1Click(Sender: TObject);
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
  if rgsituacao.ItemIndex = 0 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''J''  ';
  if rgsituacao.ItemIndex = 1 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''F''  ';

  ordem := 'e.emp_nome';

  case radioGroup1.ItemIndex of
    0: argumento := argumento + ' and e.emp_ramo = ''Ind�stria''';
    1: argumento := argumento + ' and e.emp_ramo = ''Com�rcio''';
    2: argumento := argumento + ' and e.emp_ramo = ''Servi�os''';
  end;

  // abre a query
  DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;


procedure TFOREMP.RadioGroup2Click(Sender: TObject);
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
  if rgsituacao.ItemIndex = 0 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''J''  ';
  if rgsituacao.ItemIndex = 1 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''F''  ';


  ordem := 'e.emp_nome';

  case radioGroup2.ItemIndex of
    0: argumento := argumento + ' and e.emp_porte = ''Pequeno''';
    1: argumento := argumento + ' and e.emp_porte = ''M�dio''';
    2: argumento := argumento + ' and e.emp_porte = ''Grande''';
    3: argumento := argumento + ' and e.emp_porte = ''Multinac.''';
  end;

  // abre a query
  DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;

procedure TFOREMP.pgPrincipalChange(Sender: TObject);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
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

procedure TFOREMP.btExcluirClick(Sender: TObject);

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
    MSGAVISO('N�o � poss�vel excluir a empresa pois possuem TCE''s ativos!');
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

procedure TFOREMP.edParExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if CbTipoPesquisa.ItemIndex = 0 then
    if isnumeric(edPar.Text) = false then
      edPar.Text := '';

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
    if rgsituacao.ItemIndex = 0 then
      argumento := argumento + ' and  e.emp_tipopessoa = ''J''  ';
    if rgsituacao.ItemIndex = 1 then
      argumento := argumento + ' and  e.emp_tipopessoa = ''F''  ';


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
      9:
        begin
          ordem := 'e.emp_nome';
          argumento := ' e.grup_cod = ' + edPar.Text;
        end;
    end;

    // verifica a situa��o da vaga
  {  case rgSituacao.itemIndex of
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
    end;}

    // abre a query
    DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFOREMP.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Sender <> DBEdit2 then
    CaracterMinusculo(Key);
end;

procedure TFOREMP.btFuncionariosClick(Sender: TObject);
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

procedure TFOREMP.btResponsaveisClick(Sender: TObject);
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
   { Screen.Cursor := crHourGlass;
    FORERE := TFORERE.Create(Self);
    Screen.Cursor := crDefault;
    FORERE.ShowModal;}

{    Screen.Cursor := crHourGlass;
    FOREMPRESP := TFOREMPRESP.Create(Self);
    Screen.Cursor := crDefault;
    FOREMPRESP.edEmpCod.Text := quPrincipal.FieldByName('emp_cod').AsSTRING;
    FOREMPRESP.edEmpNome.Text := quPrincipal.FieldByName('emp_nome').AsSTRING;
    FOREMPRESP.ShowModal;}

  end;
  MudaAba := True;
end;

procedure TFOREMP.btCancelarClick(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := 0;
  edPar.Clear;
  if edPar.CanFocus then edPar.SetFocus;
end;

procedure TFOREMP.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFOREMP.LimpaCampos;
begin
  inherited;
  //edEmpDtInc.Clear;
  //edEmpDtRetorno.Clear;
  //meCnpj.Clear;
end;

procedure TFOREMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFOREMP.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
      Exit;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;

    {if not ValidaCgcCpf(meCnpj.text) then
    begin
      MSGERRO('CNPJ inv�lido. Informe novo CNPJ ou apague!');
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

procedure TFOREMP.btEtiquetasClick(Sender: TObject);
var
  nomefuncionario, End2, Cep: string;
  empresa, tipo, funcionario: integer;
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
    tipo := 1;
    empresa := dmDta.quEmpresaemp_cod.asinteger;
    funcionario := 0;
    dmdta.PegaResponsavel(tipo, empresa, Funcionario);
    nomefuncionario := dmdta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
      Empresa, Funcionario);


    FORETQ.nome := quPrincipal.FieldByName('emp_nome').AsString;
    FORETQ.nomeResp := nomefuncionario;
    //quPrincipal.FieldByName('emp_nomerespcomp').AsString;
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

procedure TFOREMP.edEmpDtIncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {if not (quPrincipal.State in [dsInsert, dsEdit]) then
    quPrincipal.Edit;}
end;

procedure TFOREMP.DBComboBox1Click(Sender: TObject);
begin
  inherited;
  Salvou := True;
end;

procedure TFOREMP.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
  //CaracterMaiusculo(Key);
end;

procedure TFOREMP.miContratoEstagioClick(Sender: TObject);
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
    me[3] := 'Mar�o';
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
    tempo, tempo0, tempo1, tempo2: string;
    empresa, funcionario: integer;
  begin
    if dmDta.quEmpresaemp_formapgto.asstring = '' then
    begin
      MessageBox(Handle, 'Defina a forma de pagamento (bot�o "Pagamento"->Forma de pagamento), antes de continuar!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      exit;
    end;

    Numero := FormatDateTime('yyyy', Now()) + Copy('0000' + DBEdit1.Text, Length(DBEdit1.Text) + 1, 4);

    var1 := CreateOleObject('Word.basic');
    empresa := DmDta.quEmpresaemp_cod.asinteger;
    funcionario := 0;

    dmdta.PegaResponsavel(2, empresa, funcionario);

    case DmDta.quEmpresaemp_tipotaxa.asinteger of

      0: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 30,00';
          tempo2 := '(trinta)';
        end;
      1: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 25,00';
          tempo2 := '(vinte e cinco)';
        end;
      2: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 40,00';
          tempo2 := '(quarenta)';
        end;
      3: begin
          tempo := '';
          tempo0 := '';
          tempo1 := 'R$ ' + FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency);
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') por estagi�rio';
        end;
      4: begin
          tempo := '';
          tempo0 := '';
          tempo1 := FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + '%';
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') da Bolsa';
        end;
      5: begin
          tempo := '9,5%';
          tempo0 := '(nove e meio por cento)';
          tempo1 := 'R$ 23,42';
          tempo2 := '(vinte e tres e quarenta e dois)';
        end;

      6: begin
          tempo := '';
          tempo0 := '';
          tempo1 := FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + '%';
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') da Folha';
        end;
    end;


    // pessoa Fisica
    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'F') and (dmDta.quEmpresaemp_formapgto.asstring = 'Pr�pria') then
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

      var1.editbookmark('diapg', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_dtpgto.Text)));



      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');
      //


      //if not DmDta.quEmpresaemp_respcont.IsNull then
      if funcionario <> 0 then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario));
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('nomerepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
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
      //qrypesquisa.Close;
      //qrypesquisa.SQL.clear;
      //qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
      //qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
      //qrypesquisa.ParamByName('data').value := date();
      //qrypesquisa.Open;
      if funcionario <> 0 then //if not qrypesquisa.Eof then //DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario)); //+ DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('nomerepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
            var1.editbookmark('cargorepresentante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;


    // Pessoa Juridica
    if (dmDta.quEmpresaemp_tipopessoa.asstring = 'J') and (dmDta.quEmpresaemp_formapgto.asstring = 'Pr�pria') then
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
      Var1.Insert('Paran�');


      var1.editbookmark('cnpj', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));
      qrypesquisa.Close;
      //qrypesquisa.SQL.clear;
      //qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
      //qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
      //qrypesquisa.ParamByName('data').value := date();
      //qrypesquisa.Open;
      if funcionario <> 0 then
        //if not qrypesquisa.Eof then // not DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario)); //+ DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
            var1.editbookmark('representantecargo', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
            var1.editbookmark('estadocivil', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_estcivil').Text)));
            var1.editbookmark('profissao', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_profissao').Text)));
            var1.editbookmark('rg', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_rg').Text));
            var1.editbookmark('cpf', 0, 0, 0, 1);
            Var1.Insert(poemascara(trim(FieldByName('efu_cpf').Text)));
            var1.editbookmark('nacionalidade', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_nacionalidade').Text)));

          end;
          Close;
          Free;
        end;
      end;


      var1.editbookmark('diapg', 0, 0, 0, 1);
      Var1.Insert(trim(lowercase(dmDta.quEmpresaemp_dtpgto.Text)));

      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');

      qrypesquisa.Close;
      //qrypesquisa.SQL.clear;
      //qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
      //qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
      //qrypesquisa.ParamByName('data').value := date();
      //qrypesquisa.Open;
      if not qrypesquisa.Eof then //DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario)); //+ DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
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
      Var1.Insert('Paran�');

      var1.editbookmark('cnpj', 0, 0, 0, 1);
      Var1.Insert(poemascara(dmDta.quEmpresaemp_cnpj.Text));

      qrypesquisa.Close;
      //qrypesquisa.SQL.clear;
      //qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
      //qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
      //qrypesquisa.ParamByName('data').value := date();
      //qrypesquisa.Open;
      if funcionario <> 0 then //if not qrypesquisa.Eof then //DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario)); //+ DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
            var1.editbookmark('representantecargo', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
            var1.editbookmark('estadocivil', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_estcivil').Text)));
            var1.editbookmark('profissao', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_profissao').Text)));
            var1.editbookmark('rg', 0, 0, 0, 1);
            Var1.Insert(trim(FieldByName('efu_rg').Text));
            var1.editbookmark('cpf', 0, 0, 0, 1);
            Var1.Insert(poemascara(trim(FieldByName('efu_cpf').Text)));
            var1.editbookmark('nacionalidade', 0, 0, 0, 1);
            Var1.Insert(trim(lowercase(FieldByName('efu_nacionalidade').Text)));

          end;
          Close;
          Free;
        end;
      end;

      var1.editbookmark('data', 0, 0, 0, 1);
      Var1.Insert('Curitiba, ' + dataC + '. ');


      //qrypesquisa.Close;
      //qrypesquisa.SQL.clear;
      //qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
      //qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
      //qrypesquisa.ParamByName('data').value := date();
      //qrypesquisa.Open;
      if funcionario <> 0 then //if not qrypesquisa.Eof then //DmDta.quEmpresaemp_respcont.IsNull then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
          Sql.Add('and func_cod = ' + inttostr(funcionario)); //+ DmDta.quEmpresaemp_respcont.Text);
          Open;
          if not IsEmpty then
          begin
            Cargo := FieldByName('efu_cargo').Text;
            var1.editbookmark('representante2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(FieldByName('efu_nome').Text));
            var1.editbookmark('representantecargo2', 0, 0, 0, 1);
            Var1.Insert(DmDta.PrimeirasMaiusculas(Cargo));
          end;
          Close;
          Free;
        end;
      end;
    end;
    var1.editbookmark('tempo', 0, 0, 0, 1);
    Var1.Insert(tempo);

    var1.editbookmark('tempo0', 0, 0, 0, 1);
    Var1.Insert(tempo0);

    var1.editbookmark('tempo1', 0, 0, 0, 1);
    Var1.Insert(tempo1);

    var1.editbookmark('tempo2', 0, 0, 0, 1);
    Var1.Insert(tempo2);

    Var1.AppShow;
  end;

  procedure Imprime;
  var
    tempo, tempo1, tempo0, tempo2, NomeFuncionario, Numero, Cargo: string;
    tipo, empresa, funcionario: integer;
  begin
    tipo := 2;
    empresa := dmDta.quEmpresaemp_cod.asinteger;
    funcionario := 0;
    dmDta.PegaResponsavel(tipo, empresa, Funcionario);
    nomefuncionario := dmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod',
      Empresa, Funcionario);

    // verificar Joilson         ok   23/10/2007
    Numero := FormatDateTime('yyyy', Now()) + Copy('0000' + DBEdit1.Text, Length(DBEdit1.Text) + 1, 4);

    var1 := CreateOleObject('Word.basic');
   // var1.FileOpen(FORINI.Diretorio+'Contrato_3.doc');
    var1.Filenew(FORINI.Diretorio + 'Contrato_3.dot');

    // Dados da impress�o
    Var1.Font('Arial', 12);
    Var1.Bold;

    Var1.CenterPara;
    if Numero <> '' then
      Var1.Insert('TERMO DE CONTRATO N� ' + Numero + #13 + #13 + #13 + #13);

    Var1.Font('Arial', 11);
    Var1.JustifyPara;
    Var1.Insert('Pelo presente instrumento particular, de um lado ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, ');
    Var1.Bold;
    Var1.Insert('pessoa jur�dica de direito privado, agente de integra��o declarado de utilidade p�blica, ');
    Var1.Insert('de fins educacionais e sem intuito lucrativo, com sede na cidade de Curitiba, Estado do Paran�, ');
    Var1.Insert('na Avenida Igua�u, n� 2.345, 1� andar, inscrita no CNPJ/MF sob n� 02.217.643/0001-17, neste ato ');
    Var1.Insert('representado por seu Diretor-Presidente ');
    Var1.Bold;
    Var1.Insert('RODRIGO KOTZIAS MOSCALEWSKI, ');
    Var1.Bold;
    Var1.Insert('brasileiro, casado, empres�rio, portador da carteira de identidade RG n� 3.655.060-0 SSP/PR e ');
    Var1.Insert('inscrito no CPF/MF sob n� 873.751.419-91, ora denominado ');
    Var1.Bold;
    Var1.Insert('CETEFE ou AGENTE DE INTEGRA��O, ');
    Var1.Bold;
    Var1.Insert('e de outro lado ');
    Var1.Bold;
    Var1.Insert(dmDta.quEmpresaemp_nome.Text + ', ');
    Var1.Bold;
    Var1.Insert('pessoa jur�dica de direito privado, com sede na cidade de ');
    Var1.Insert(DmDta.PrimeirasMaiusculas(dmDta.quEmpresaEmp_cidade.Text) + ', Estado do ' + dmDta.quEmpresaEmp_estado.Text + ', ');
    Var1.Insert('na ' + DmDta.PrimeirasMaiusculas(dmDta.quEmpresaEmp_endereco.Text));
    if dmDta.quEmpresa.fieldbyname('emp_numend').Text <> '' then
      Var1.Insert(' ' + dmDta.quEmpresa.fieldbyname('emp_numend').Text);
    if dmDta.quEmpresa.fieldbyname('emp_cjto').Text <> '' then
      Var1.Insert(' - CJ. ' + dmDta.quEmpresa.fieldbyname('emp_cjto').Text);

    Var1.Insert(', inscrita no CNPJ/MF sob n� ' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 1, 2) + '.' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 3, 3) + '.' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 6, 3) + '/' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 9, 4) + '-' + Copy(DmDta.quEmpresaEmp_cnpj.Text, 13, 2) + ', ');

    {qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.sql.Add('select * from Empresponsavel where emp_cod =:empresa and  :data between inicio and final and funcao = ''Contrato'' ');
    qrypesquisa.ParamByName('empresa').asstring := DmDta.quEmpresaemp_cod.AsString;
    qrypesquisa.ParamByName('data').value := date();
    qrypesquisa.Open;}
    if not qrypesquisa.Eof then
    begin
      Var1.Insert('neste ato representado por seu ');


      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select * from EmpFuncionario where emp_cod = ' + inttostr(empresa));
        //+ DmDta.quEmpresaemp_cod.Text);
        Sql.Add('and func_cod = ' + inttostr(funcionario));
        //+ qrypesquisa.fieldbyname('func_cod').AsString);
        Open;

        if not IsEmpty then
        begin
          Cargo := FieldByName('efu_cargo').Text;
          Var1.Insert(AnsiLowerCAse(Cargo) + ' ');
          Var1.Bold;
          Var1.Insert(nomefuncionario + ', ');
          //Var1.Insert(DmDta.quEmpresaemp_nomerespcont.text + ', ');
          Var1.Bold;
          Var1.Insert(lowercase(FieldByName('efu_nacionalidade').AsString) + ', ');
          Var1.Insert(lowercase(FieldByName('efu_estcivil').AsString) + ', ');
          Var1.Insert(lowercase(FieldByName('efu_profissao').AsString) + ', ');
          Var1.Insert('portador(a) da carteira de identidade RG n� ' + lowercase(FieldByName('efu_rg').AsString) + ' SSP/PR ');
          Var1.Insert('e inscrito(a) no CPF/MF sob n� ');
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
    Var1.Insert('CL�USULA PRIMEIRA: OBJETO ' + #13 + #13);
    Var1.Insert('Pelo presente instrumento e na melhor forma de direito, as partes estabelecem uma parceria que ');
    Var1.Insert('tem por objetivo promover o est�gio curricular de estudantes ');
    Var1.Insert('regularmente matriculados em estabelecimentos de ensino superior e ensino profissionalizante do 2� Grau e ');
    Var1.Insert('Supletivo, ou escolas de educa��o especial, sejam p�blicas e/ou privadas, em conformidade com a Lei n� 6.494/77, ');
    Var1.Insert('regulamentada pelo Decreto n� 87.497/82, e demais disposi��es legais aplic�veis.' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo �nico: ');
    Var1.Bold;
    Var1.Insert('O est�gio dever� oferecer ao estudante a complementa��o do ensino e da aprendizagem social, profissional e cultural, ');
    Var1.Insert('constituindo-se em instrumento de integra��o, em termos de treinamento pr�tico, de aperfei�oamento t�cnico, profissionalizante, ');
    Var1.Insert('cultural, cient�fico e de relacionamento humano. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CL�USULA SEGUNDA: OBRIGA��ES DO CETEFE, COMO AGENTE DE INTEGRA��O ' + #13 + #13);
    Var1.Insert('(i) Celebrar e manter Conv�nios de Coopera��o com as Institui��es de Ensino;' + #13 + #13);
    Var1.Insert('(ii) Obter informa��es por parte da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('com rela��o aos programas e oportunidades de est�gio a serem por esta oferecidos;' + #13 + #13);
    Var1.Insert('(iii) Cadastrar, convocar e selecionar os estudantes, encaminhando-os � ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('de acordo com suas necessidades; ' + #13 + #13);
    Var1.Insert('(iv) Providenciar toda a documenta��o necess�ria para a efetiva��o do est�gio;' + #13 + #13);
    Var1.Insert('(v) Realizar a intera��o entre a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('a as Institui��es de Ensino, visando � assinatura do instrumento jur�dico previsto no Art. 5� do Decreto n�. 87.497/82;' + #13 + #13);
    Var1.Insert('(vi) Providenciar a assinatura do competente Termo de Compromisso de Est�gio entre a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('o Estudante e a respectiva Institui��o de Ensino, de acordo com o par�grafo 1�, do artigo 6�, do Decreto n�. 87.497/82;' + #13 + #13);
    Var1.Insert('(vii) Providenciar o Seguro Contra Acidentes Pessoais em favor do estagi�rio, assumindo os custos correspondentes; ' + #13 + #13);
    Var1.Insert('(viii) Acompanhar o estudante em toda a dura��o do Programa de Est�gio, atrav�s de relat�rios apresentados pelo estagi�rio, bem com pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('e/ou atrav�s da realiza��o de visitas, tanto ao estudante quanto ao(s) seus(s) supervisor(es) de est�gio, sempre que se fizer ');
    Var1.Insert('conveniente ou necess�rio; ' + #13 + #13);
    Var1.Insert('(ix) Comunicar formalmente � ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('qualquer irregularidade verificada em rela��o ao est�gio;' + #13 + #13);

    if DmDta.quEmpresaemp_formapgto.Text = 'CETEFE' then
    begin
      Var1.Insert('(x) Efetuar o repasse da Bolsa-Aux�lio diretamente ao estagi�rio, no prazo de 02 (dois) dias �teis contados do efetivo recebimento dos recursos enviados pela ');
      Var1.Bold;
      Var1.Insert('UNIDADE CONCEDENTE ');
      Var1.Bold;
      Var1.Insert('para tanto. ' + #13 + #13 + #13);
    end
    else
    begin
      Var1.Insert('(x) Enviar � ');
      Var1.Bold;
      Var1.Insert('UNIDADE CONCEDENTE, ');
      Var1.Bold;
      Var1.Insert('com anteced�ncia m�nima de 02 (dois) dias �teis, boleto banc�rio referente � Bolsa Aux�lio a ser por esta paga diretamente ao estagi�rio, assim como o boleto banc�rio ');
      Var1.Insert('referente � Contribui��o Mensal prevista na Cl�usula Quarta. ' + #13 + #13 + #13);
    end;

    Var1.Bold;
    Var1.Insert('CL�USULA TERCEIRA: OBRIGA��ES DA UNIDADE CONCEDENTE' + #13 + #13);
    Var1.Insert('(i) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('as oportunidades e vagas dispon�veis para a realiza��o de est�gio, identificando as respectivas �reas ');
    Var1.Insert('de atua��o e principais atividades a serem desenvolvidas pelo estagi�rio; ' + #13 + #13);

    Var1.Insert('(ii) Manter centralizadas as informa��es relativas ao est�gio, indicando o respons�vel para receber e entrevistar os estudantes encaminhados pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O, ');
    Var1.Bold;
    Var1.Insert('assim como para assinar os documentos necess�rios � formaliza��o do Programa de Est�gio; ' + #13 + #13);

    Var1.Insert('(iii) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('os nomes dos estudantes que efetivamente realizar�o est�gio junto � ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ');
    Var1.Bold;
    Var1.Insert(#13 + #13);

    Var1.Insert('(iv) Assinar o competente Termo de Compromisso de Est�gio com a Institui��o de Ensino, o Estudante e o ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O, ');
    Var1.Bold;
    Var1.Insert('de acordo com o par�grafo 1�, do artigo 6�, do Decreto n�. 87.497/82, assim como outros documentos necess�rios � ');
    Var1.Insert('formaliza��o do est�gio; ' + #13 + #13);

    Var1.Insert('(v) Comunicar formalmente ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('detalhes sobre o desempenho do estagi�rio sempre que se fizer necess�rio; ' + #13 + #13);

    Var1.Insert('(vi) Fixar a jornada de atividade do est�gio, compatibilizando o hor�rio escolar do estudante com o hor�rio de trabalho da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ' + #13 + #13);

    if DmDta.quEmpresaemp_formapgto.Text = 'CETEFE' then
    begin
      Var1.Insert('(vii) Transferir mensalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O ');
      Var1.Bold;
      Var1.Insert('impreterivelmente at� o dia 02 (dois) do m�s subseq�ente ao vencido, os recursos referentes ');
      Var1.Insert('� Bolsa-Aux�lio a ser paga ao estagi�rio, juntamente com o valor da contribui��o mensal prevista na Cl�usula Quarta infra; ' + #13 + #13);

      Var1.Insert('(viii) Comunicar formalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O ');
      Var1.Bold;
      Var1.Insert('a interrup��o, conclus�o e/ou eventuais modifica��es do est�gio, tais como mudan�a de ');
      Var1.Insert('atividades a serem exercidas pelo estagi�rio, aumento da Bolsa Aux�lio, bem como outras ');
      Var1.Insert('informa��es referentes ao desenvolvimento do est�gio, para que o ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O ');
      Var1.Bold;
      Var1.Insert('possa providenciar as devidas altera��es do Termo de Compromisso de Est�gio ou sua rescis�o, conforme o caso. ' + #13 + #13 + #13);
    end
    else
    begin
      Var1.Insert('(vii) Efetuar mensalmente ao estagi�rio, at� o 5� (quinto) dia �til do m�s subseq�ente ao vencido, o pagamento da Bolsa Aux�lio estabelecida no Termo ');
      Var1.Insert('de Compromisso de Est�gio, enviando c�pia o comprovante de pagamento ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O, ');
      Var1.Bold;
      Var1.Insert('por fax ou correio; ' + #13 + #13);

      Var1.Insert('(viii) Efetuar mensalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O, ');
      Var1.Bold;
      Var1.Insert('at� o dia 05 (cinco) do m�s subseq�ente ao vencido, o pagamento da Contribui��o Mensal prevista na Cl�usula Quarta infra; ' + #13 + #13);

      Var1.Insert('(ix) Comunicar formalmente ao ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O ');
      Var1.Bold;
      Var1.Insert('a interrup��o, conclus�o e/ou eventuais modifica��es do est�gio, tais como mudan�a de ');
      Var1.Insert('atividades a serem exercidas pelo estagi�rio, aumento da Bolsa Aux�lio, bem como outras ');
      Var1.Insert('informa��es referentes ao desenvolvimento do est�gio, para que o ');
      Var1.Bold;
      Var1.Insert('AGENTE DE INTEGRA��O ');
      Var1.Bold;
      Var1.Insert('possa providenciar as devidas altera��es do Termo de Compromisso de Est�gio ou sua rescis�o, conforme o caso. ' + #13 + #13 + #13);
    end;

    Var1.Bold;
    Var1.Insert('CL�USULA QUARTA: CONTRIBUI��O MENSAL' + #13 + #13);

    Var1.Insert('Para o custeio administrativo do Programa de Est�gio e para a cobertura dos demais encargos incidentes, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagar� ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    tempo := '';
    tempo1 := '';
    case DmDta.quEmpresaemp_tipotaxa.asinteger of

      0: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 30,00';
          tempo2 := '(trinta)';
        end;
      1: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 25,00';
          tempo2 := '(vinte e cinco)';
        end;
      2: begin
          tempo := '10%';
          tempo0 := '(dez por cento)';
          tempo1 := 'R$ 40,00';
          tempo2 := '(quarenta)';
        end;
      3: begin
          tempo := '';
          tempo0 := '';
          tempo1 := 'R$ ' + FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency);
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') por estagi�rio';
        end;
      4: begin
          tempo := '';
          tempo0 := '';
          tempo1 := FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + '%';
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') da Bolsa';
        end;
      5: begin
          tempo := '9,5%';
          tempo0 := '(nove e meio por cento)';
          tempo1 := 'R$ 23,42';
          tempo2 := '(vinte e tres e quarenta e dois)';
        end;

      6: begin
          tempo := '';
          tempo0 := '';
          tempo1 := FormatFloat('##0.00', DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + '%';
          tempo2 := '(' + extenso2(DmDta.quEmpresa.FieldByName('emp_valortaxa').ascurrency) + ') da Folha';
        end;
    end;


    Var1.Insert('contribui��o mensal de 10% (dez por cento) sobre o valor da Bolsa Aux�lio estabelecida no Termo de Compromisso de Est�gio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Primeiro: ');
    Var1.Bold;
    Var1.Insert('Na hip�tese de Bolsa Aux�lio em valor inferior a R$ 250,00 (duzentos e cinq�enta reais) mensais, ou na hip�tese de est�gio n�o remunerado, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagar� ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('contribui��o mensal fixa no valor de R$ 25,00 (vinte e cinco) reais. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Segundo: ');
    Var1.Bold;
    Var1.Insert('Na hip�tese de Bolsa Aux�lio fixada por hora, a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagar� ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('contribui��o mensal considerando-se a carga hor�ria mensal estabelecida na Cl�usula Terceira do Termo de Compromisso de Est�gio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Terceiro: ');
    Var1.Bold;
    Var1.Insert('Ficar� a crit�rio da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('oferecer outros benef�cios ao estagi�rio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Quarto: ');
    Var1.Bold;
    Var1.Insert('O valor da contribui��o mensal poder� ser revisto anualmente entre as partes, caso fatores econ�micos justifiquem sua altera��o. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Quinto: ');
    Var1.Bold;
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('pagar� a contribui��o mensal ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('at� o momento em que este receba comunicado formal do t�rmino do est�gio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo Sexto: ');
    Var1.Bold;
    Var1.Insert('Em caso de cancelamento, ap�s decorridas 72 horas da data de abertura de vaga pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('junto ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O, ');
    Var1.Bold;
    Var1.Insert('a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('dever� pagar ao ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('a import�ncia de R$ 100,00 (cem reais) para fazer frente �s despesas por este realizadas. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo S�timo: ');
    Var1.Bold;
    Var1.Insert('Caso a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('tenha interesse apenas em utilizar o servi�o de recrutamento e sele��o oferecido pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O - ');
    Var1.Bold;
    Var1.Insert('sem que este tenha qualquer obriga��o ou responsabilidade pela administra��o do contrato de est�gio - ser� cobrada ');
    Var1.Insert('a import�ncia correspondente a 40% (quarenta por cento) do valor da respectiva Bolsa Aux�lio, por vaga preenchida. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CL�USULA QUINTA: CONDI��ES GERAIS ' + #13 + #13);

    Var1.Insert('(i) Fica o ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('expressamente autorizado a representar a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('junto �s Institui��es de Ensino, para realiza��o de atividades previstas no artigo 7� do Decreto n�. 87.497/82. ' + #13 + #13);

    Var1.Insert('(ii) O est�gio, como complemento de ensino e aprendizagem, n�o caracteriza v�nculo empregat�cio de qualquer natureza com a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('tampouco com o ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O, ');
    Var1.Bold;
    Var1.Insert('conforme o disposto no artigo 4� da Lei n�. 6.494/77 e no artigo 6� do Decreto n�. 87.497/82. ' + #13 + #13);

    Var1.Insert('(iii) O ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('fica totalmente livre e desobrigado de assumir ou arcar com qualquer despesa de responsabilidade exclusiva da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CL�USULA SEXTA: PRAZO' + #13 + #13);

    Var1.Insert('O presente instrumento vigorar� pelo prazo de 12 (doze) meses contados da data de sua assinatura, ');
    Var1.Insert('podendo ser renovado automaticamente, ap�s decorrido este prazo, por per�odos iguais e sucessivos, caso as partes ');
    Var1.Insert('n�o convencionem em sentido contr�rio. ' + #13 + #13);

    Var1.Bold;
    Var1.Insert('Par�grafo �nico: ');
    Var1.Bold;
    Var1.Insert('Este instrumento poder� ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante ');
    Var1.Insert('comunica��o pr�via e formal de 30 (trinta) dias, sem que assista � outra parte direito a qualquer reclama��o, permanecendo ');
    Var1.Insert('em vigor todas as cl�usulas e condi��es ora estabelecidas durante o prazo de den�ncia. ' + #13 + #13 + #13);


    Var1.Bold;
    Var1.Insert('CL�USULA S�TIMA: FORO' + #13 + #13);

    Var1.Insert('Fica eleito o Foro Central da Comarca da Regi�o Metropolitana de Curitiba, Estado do Paran�, para dirimir quaisquer d�vidas ou quest�es oriundas deste Contrato.' + #13 + #13);

    Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em 02 (duas) vias de igual teor e forma, na presen�a de 02 (duas) testemunhas. ' + #13 + #13 + #13);
    Var1.Insert('Curitiba, ' + dataC + '. ' + #13 + #13);

    Var1.NextCell;

    Var1.Insert('Representante da ' + #13);
    Var1.Insert('UNIDADE CONCEDENTE' + #13 + #13 + #13);

    Var1.Insert('________________________________' + #13);
    Var1.Insert(AnsiUpperCase(nomefuncionario) + #13);
 //   Var1.Insert(AnsiUpperCase(DmDta.quEmpresaemp_nomerespcont.text) + #13);
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
    Var1.Insert('AGENTE DE INTEGRA��O' + #13 + #13 + #13);

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

    // contribui��o
    If DmDta.quEmpresaemp_tipotaxa.AsInteger = 0 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 20,00 (vinte reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Est�gio para bolsa-aux�lio inferior a R$ 250,00 (duzentos e cinq�enta reais). Para bolsa-aux�lio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinq�enta reais), a contribui��o � de ');
      Var1.Bold;
      Var1.Insert('08% (oito por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-aux�lio por Termo de Compromisso de Est�gio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 1 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 25,00 (vinte e cinco reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Est�gio para bolsa-aux�lio inferior a R$ 250,00 (duzentos e cinq�enta reais). Para bolsa-aux�lio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinq�enta reais), a contribui��o � de ');
      Var1.Bold;
      Var1.Insert('10% (dez por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-aux�lio por Termo de Compromisso de Est�gio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 2 then
    begin
      Var1.Bold;
      Var1.Insert('R$ 20,00 (vinte reais) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Est�gio para bolsa-aux�lio inferior a R$ 250,00 (duzentos e cinq�enta reais). Para bolsa-aux�lio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinq�enta reais), a contribui��o � de ');
      Var1.Bold;
      Var1.Insert('R$ 25,00 (vinte e cinco reais). '+#13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 3 then
    begin
      Var1.Bold;
      Var1.Insert('R$ ' + DmDta.quEmpresaemp_valortaxa.Text + ' ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Est�gio. ' + #13);
    end
    else if DmDta.quEmpresaemp_tipotaxa.AsInteger = 4 then
    begin
      Var1.Bold;
      Var1.Insert(DmDta.quEmpresaemp_valortaxa.Text + '% ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-aux�lio por Termo de Compromisso de Est�gio. ' + #13);
    end
    else
    begin
      Var1.Bold;
      Var1.Insert('R$ 22,50 (vinte e dois reais e cinq�enta centavos) ');
      Var1.Bold;
      Var1.Insert('mensais por Termo de Compromisso de Est�gio para bolsa-aux�lio inferior a R$ 250,00 (duzentos e cinq�enta reais). Para bolsa-aux�lio com ');
      Var1.Insert('valor superior a R$ 250,00 (duzentos e cinq�enta reais), a contribui��o � de ');
      Var1.Bold;
      Var1.Insert('9% (nove por cento) ');
      Var1.Bold;
      Var1.Insert('mensal sobre o valor de bolsa-aux�lio por Termo de Compromisso de Est�gio. ' + #13);
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

procedure TFOREMP.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFOREMP.btSatisfacaoClick(Sender: TObject);
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
      foremp2.tela := 1;
      Screen.Cursor := crDefault;
      dmdta.dsEmpresa.AutoEdit := true;
      FOREMP2.ShowModal;
      dmdta.dsEmpresa.AutoEdit := false;
    end;
  end;
  MudaAba := True;
end;

procedure TFOREMP.sbPagamentoClick(Sender: TObject);
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
    foremp3.tela := 1;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREMP3.ShowModal;
    dmdta.dsEmpresa.AutoEdit := true;
  end;
  MudaAba := True;
end;

procedure TFOREMP.sbComplementoClick(Sender: TObject);
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
    foremp1.tela := 1;
    foremp1.pagina.ActivePageIndex := tipopessoa.ItemIndex;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREMP1.ShowModal;
    dmdta.dsEmpresa.AutoEdit := false;
  end;
  MudaAba := True;
end;

procedure TFOREMP.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('N�o h� registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  QREmp1 := TQREmp1.Create(Self);
  Screen.Cursor := crDefault;
  QREmp1.Preview;
  QREmp1.Free;
end;

procedure TFOREMP.btEndEncClick(Sender: TObject);
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
    foremp4.tela := 1;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREMP4.ShowModal;
    dmdta.dsEmpresa.AutoEdit := false;

  end;
  MudaAba := True;
end;

procedure TFOREMP.btEndCorClick(Sender: TObject);
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
    foremp5.tela := 1;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREMP5.ShowModal;
    dmdta.dsEmpresa.AutoEdit := false;
  end;
  MudaAba := True;
end;

procedure TFOREMP.DBEdit15Exit(Sender: TObject);
begin
  inherited;

  if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
    DmDta.quEmpresa.Edit;

  case DmDta.quEmpresa.FieldByName('Emp_func').AsInteger of
    1..9: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Micro';
    10..100: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Pequena';
    101..500: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'M�dia';
    501..100000: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Grande';
  else
    DmDta.quEmpresa.FieldByName('Emp_porte').AsString := '';
  end;
end;

procedure TFOREMP.rgSituacaoClick(Sender: TObject);
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
  if rgsituacao.ItemIndex = 0 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''J''  ';
  if rgsituacao.ItemIndex = 1 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''F''  ';

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

  // verifica a situa��o da vaga
 { case rgSituacao.itemIndex of
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
  end;}

  DmDta.MontaSql(quPrincipal, colunas, tabelas, argumento, ordem);
  estadoNavegando();
end;

procedure TFOREMP.sbComercialClick(Sender: TObject);
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
    foremp6.tela := 1;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREMP6.ShowModal;
    dmdta.dsEmpresa.AutoEdit := false;
  end;
  MudaAba := True;
end;

procedure TFOREMP.sbHistoricoClick(Sender: TObject);
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
    forehi.tela := 1;
    dmdta.dsEmpresa.AutoEdit := true;
    FOREHI.ShowModal;
    dmdta.dsEmpresa.AutoEdit := false;
  end;
  MudaAba := True;
end;

procedure TFOREMP.btExportarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  quExportacao.Open;

  GerarExcel(quExportacao, Caption);
  quExportacao.Close;
  Screen.Cursor := crDefault;
end;

procedure TFOREMP.mePesqCnpjExit(Sender: TObject);
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


  if rgsituacao.ItemIndex = 0 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''J''  ';
  if rgsituacao.ItemIndex = 1 then
    argumento := argumento + ' and  e.emp_tipopessoa = ''F''  ';


  ordem := 'e.emp_cod';

  if mePesqCnpj.Text <> '' then
  begin
    argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj.Text + '''';

    // verifica a situa��o da vaga
   { case rgSituacao.itemIndex of
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
    end;}

    // abre a query
    DmDta.MontaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFOREMP.btnEtiquetasAllClick(Sender: TObject);
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
          MSGErro('Erro na gera��o de etiquetas!');
          Exit;
        end;
      end;
      Next;
    end;
    First;
    EnableControls;

    // Chama a impress�o das etiquetas
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
        MSGErro('Erro na impress�o de etiquetas!');
        Exit;
      end;
    end;
    FORETQ1.Free;

    DmDta.tbEtiqueta.Close();
  end;
end;

procedure TFOREMP.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DmDta.quEmpresaemp_dtretorno.Visible := true;
  GerarExcel(DmDta.quEmpresa, Caption);
  DmDta.quEmpresaemp_dtretorno.Visible := false;
end;


procedure TFOREMP.DBEdit7Exit(Sender: TObject);
var
  //municipio: integer;
  Logradouro, Bairro, Cidade,
    Uf: string;
begin
  inherited;
  if DmDta.quEmpresa.State in [dsedit, dsinsert] then
  begin
    Buscacep(DmDta.quEmpresaemp_cep.AsString, Logradouro, Bairro, Cidade, Uf);
    if logradouro <> '' then
      DmDta.quEmpresaemp_endereco.AsString := logradouro;
    if bairro <> '' then
      DmDta.quEmpresaemp_bairro.AsString := bairro;
    if uf <> '' then
      DmDta.quEmpresaemp_estado.AsString := uf;
    if cidade <> '' then
      DmDta.quEmpresaemp_cidade.AsString := cidade;
  end;
end;

procedure TFOREMP.cxDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  qrygrupo.Close;
  qrygrupo.Open;

end;

procedure TFOREMP.tipopessoaChange(Sender: TObject);
begin
  inherited;
  pagina.ActivePageIndex := tipopessoa.ItemIndex;

end;

procedure TFOREMP.SpeedButton2Click(Sender: TObject);
begin
  if (DmDta.quEmpresa.State in [dsbrowse]) and
    (DmDta.quEmpresa.IsEmpty = false) then
  begin
    DmDta.quEmpresa.Edit;
    EstadoEditando;
    pgPrincipal.ActivePageIndex := 1;
  end;


end;

procedure TFOREMP.cxDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
  qryfunc.Close;
  qryfunc.Open;
end;

procedure TFOREMP.edParDblClick(Sender: TObject);
begin
   //inherited;
  if cbtipopesquisa.ItemIndex = 9 then
  begin
    Screen.Cursor := crHourGlass;
    FORGRUPO := TFORGRUPO.Create(Self);
    FORGRUPO.F2 := True;
    Screen.Cursor := crDefault;
    FORGRUPO.ShowModal;
    if FORGRUPO.F2Codigo <> '' then
    begin
      edpar.Text := FORGRUPO.F2Codigo;
    end;
    FOREMP.Free;
  end;
end;

procedure TFOREMP.SpeedButton3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORGRUPO := TFORGRUPO.Create(Self);
  Screen.Cursor := crDefault;
  FORGRUPO.ShowModal;

end;

procedure TFOREMP.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  Screen.Cursor := crHourGlass;
  FORMEmpObs := TFORMEmpObs.Create(Self);
  Screen.Cursor := crDefault;
  FORMEmpObs.ShowModal;
end;

procedure TFOREMP.btConvenioClick(Sender: TObject);
begin
  pmContrato.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TFOREMP.miContratoEfetivoClick(Sender: TObject);
var
  var1: variant;
  emp, nomeemp, endemp, baiemp, cidadeemp, telemp, cepemp, cnpjemp: string;
  estadoemp, inscemp, respemp, caremp, areaemp, cpfrespemp,rgrespemp: string;
  hojedia, hojemes, hojeano, nacionalidaderesp, estcivilresp, profissaoresp: string;
  funcionario, empresa: integer;
  aviso: string;

  procedure adicionaAviso(adicionar: boolean; msg: string);
  begin
    if adicionar then
      if aviso = '' then
        aviso := msg
      else
        aviso := aviso + #13#10 + msg;
  end;
  
  procedure imprimenova;
  begin
    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    var1.FileNew(FORINI.Diretorio + 'EmpresaContratoEfetivo.dot');

    // empresa
    var1.editbookmark('empresa', 0, 0, 0, 1);
    Var1.Insert(nomeemp);

    var1.editbookmark('empresa2', 0, 0, 0, 1);
    Var1.Insert(nomeemp);

    var1.editbookmark('enderecoempresa', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(endEmp));
    adicionaAviso(endEmp = '', 'O "Endere�o" n�o foi definido.'); 

    //var1.editbookmark('bairroempresa', 0, 0, 0, 1);
    //Var1.Insert(AnsiUpperCase(baiemp));
    var1.editbookmark('cidadeempresa', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(cidadeemp));
    adicionaAviso(cidadeemp = '', 'A "Cidade" n�o foi definida.'); 

    //var1.editbookmark('cepempresa', 0, 0, 0, 1);
    //Var1.Insert(CepEmp);
    var1.editbookmark('estadoempresa', 0, 0, 0, 1);
    Var1.Insert(estadoemp);
    adicionaAviso(cidadeemp = '', 'O "Estado" n�o foi definido.'); 

    var1.editbookmark('cnpjempresa', 0, 0, 0, 1);
    Var1.Insert(cnpjemp);
    adicionaAviso(cnpjemp = '', 'O "CNPJ" n�o foi definido.'); 

    //var1.editbookmark('telefoneempresa', 0, 0, 0, 1);
    //Var1.Insert(telemp);
    var1.editbookmark('representanteempresa', 0, 0, 0, 1);
    Var1.Insert(respemp);

    var1.editbookmark('representanteempresa2', 0, 0, 0, 1);
    Var1.Insert(respemp);

    var1.editbookmark('cargorepresentante', 0, 0, 0, 1);
    Var1.Insert(caremp);

    var1.editbookmark('cargorepresentante2', 0, 0, 0, 1);
    Var1.Insert(caremp);

    var1.editbookmark('cpfrepresentante', 0, 0, 0, 1);
    Var1.Insert(cpfrespemp);

    var1.editbookmark('rgrepresentante', 0, 0, 0, 1);
    Var1.Insert(rgrespemp);

    var1.editbookmark('hojedia', 0, 0, 0, 1);
    Var1.Insert(hojedia);

    var1.editbookmark('hojemes', 0, 0, 0, 1);
    Var1.Insert(hojemes);

    var1.editbookmark('hojeano', 0, 0, 0, 1);
    Var1.Insert(hojeano);

    var1.editbookmark('nacionalidaderesp', 0, 0, 0, 1);
    Var1.Insert(nacionalidaderesp);
    var1.editbookmark('estcivilresp', 0, 0, 0, 1);
    Var1.Insert(estcivilresp);
    var1.editbookmark('profissaoresp', 0, 0, 0, 1);
    Var1.Insert(profissaoresp);


    Screen.Cursor := crDefault;

    if aviso <> '' then
       MessageBox(Handle, PChar('Problemas encontrados:'#13#10+aviso), 'Alerta', MB_OK or MB_ICONEXCLAMATION);  
    var1.AppShow;
  end;
begin
    aviso := '';
    with DmDTA.quEmpresa do
    begin
      Emp := fieldbyname('emp_cod').Text;

      nomeemp := fieldbyname('emp_nome').asString;
      endemp := fieldbyname('emp_endereco').asstring;
      areaemp := fieldByName('emp_ramo').asstring;

      if fieldbyname('emp_numend').Text <> '' then
        endemp := endemp + ', ' + fieldbyname('emp_numend').Text;
      if fieldbyname('emp_cjto').Text <> '' then
        endemp := endemp + ' - CJ. ' + fieldbyname('emp_cjto').Text;
      baiemp := fieldbyname('emp_bairro').asstring;
      cidadeEmp := fieldByName('emp_cidade').asstring;
      // formata o telefone
      if telemp <> '' then
        telemp := '(' + Copy(telemp, 1, 2) + ') ' + Copy(telemp, 3, 4) + '-' + Copy(telemp, 7, 4);
      cepemp := fieldbyname('emp_cep').asstring;
      // formata o CEP
      if cepemp <> '' then
        cepemp := Copy(cepemp, 1, 5) + '-' + Copy(cepemp, 6, 3);
      cnpjemp := fieldbyname('emp_cnpj').asstring;
      if cnpjemp <> '' then
      // formata o CNPJ
      begin
        cnpjemp := poemascara(cnpjemp);
        {(  Copy(cnpjemp, 1, 2) + '.' + Copy(cnpjemp, 3, 3) + '.' + Copy(cnpjemp, 6, 3) + '/' +
          Copy(cnpjemp, 9, 4) + '-' + Copy(cnpjemp, 13, 2);}
      end;

      estadoemp := dmDTA.PegaEstadoPorExtenso(fieldByName('emp_estado').Asstring);
      inscemp := fieldbyname('Emp_inscest').Asstring;
  end;

  funcionario := 0;
  empresa := DmDTA.quEmpresa.fieldbyname('emp_cod').asInteger;
  
  dmdta.PegaResponsavel(2, empresa, funcionario);

  // busca os dados da empresa
  with qAux do
  begin
      if funcionario = 0 then
      begin
        respemp := '';
        caremp := '';
        cpfrespemp := '';
        rgrespemp := '';
        nacionalidaderesp := '';
        estcivilresp := '';
        profissaoresp := '';

        adicionaAviso(true, 'O funcion�rio respons�vel pelo contrato n�o foi encontrado!');
      end
      else
      begin
       // respemp := qrypesquisa.fieldbyname('Func_cod').asstring;
        qrypesquisa.Close;
        qrypesquisa.SQL.clear;
        qrypesquisa.sql.Add('select * from Empfuncionario where emp_cod =:empresa and  func_cod=' + inttostr(funcionario));
        qrypesquisa.ParamByName('empresa').asinteger := empresa;
        qrypesquisa.Open;
        respemp := qrypesquisa.fieldByName('efu_nome').Asstring;
        caremp := AnsiLowerCase(qrypesquisa.fieldbyname('efu_cargo').asstring);
        rgrespemp := trim(qrypesquisa.fieldbyname('efu_rg').asstring);
        cpfrespemp := trim(qrypesquisa.fieldbyname('efu_cpf').asstring);
        if cpfrespemp <> '' then
          cpfrespemp := Copy(cpfrespemp, 1, 3) + '.' + Copy(cpfrespemp, 4, 3) + '.' + Copy(cpfrespemp, 7, 3) + '-' + Copy(cpfrespemp, 10, 2);


        nacionalidaderesp := AnsiLowerCase(qrypesquisa.fieldbyname('efu_nacionalidade').asstring);
        estcivilresp := AnsiLowerCase(qrypesquisa.fieldbyname('efu_estcivil').asstring);
        profissaoresp := AnsiLowerCase(qrypesquisa.fieldbyname('efu_profissao').asstring);

        adicionaAviso(caremp = '', 'O funcion�rio "' + respemp+ '" n�o tem o cargo preenchido!');
        adicionaAviso(cpfrespemp = '', 'O funcion�rio "' + respemp+ '" n�o tem o cpf preenchido!');
        adicionaAviso(rgrespemp = '', 'O funcion�rio "' + respemp+ '" n�o tem o rg preenchido!');

        adicionaAviso(nacionalidaderesp = '', 'O funcion�rio "' + respemp+ '" n�o tem a Nacionalidade preenchida!');
        adicionaAviso(estcivilresp = '', 'O funcion�rio "' + respemp+ '" n�o tem o Estado Civil preenchido!');
        adicionaAviso(profissaoresp = '', 'O funcion�rio "' + respemp+ '" n�o tem a Profiss�o preenchida!');

      end;
      
  end;
  hojedia := FormatDateTime('dd', now);
  hojemes := RetornaMes(MonthOf(now));
  hojeano := FormatDateTime('yyyy', now);


  imprimenova;
end;

end.

