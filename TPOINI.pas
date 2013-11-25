unit TPOINI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Menus, DBTables, Db, jpeg, Buttons, dateutils,
  StdCtrls,
  OleServer, Word97, Outlook8, Mapi, Excel97, Grids, DBGrids, ImgList;

type
  TFORINI = class(TForm)
    sbPrincipal: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Tabelas2: TMenuItem;
    Idiomas1: TMenuItem;
    Softwares1: TMenuItem;
    Estudantes1: TMenuItem;
    Instituio1: TMenuItem;
    Estudantes2: TMenuItem;
    Cursos2: TMenuItem;
    N3: TMenuItem;
    Vagas1: TMenuItem;
    Empresas1: TMenuItem;
    N4: TMenuItem;
    Vagas2: TMenuItem;
    TCE1: TMenuItem;
    Pagamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    EstagiriosporEmpresa1: TMenuItem;
    VerificaoEscolar1: TMenuItem;
    Seguro1: TMenuItem;
    Incluso1: TMenuItem;
    Excluso1: TMenuItem;
    Contribuies1: TMenuItem;
    N1: TMenuItem;
    AberturadeMs1: TMenuItem;
    Contribuies2: TMenuItem;
    FolhadePagamento1: TMenuItem;
    PagamentosporEmpresa1: TMenuItem;
    N6: TMenuItem;
    Etiquetas1: TMenuItem;
    Despesas1: TMenuItem;
    Relatrio1: TMenuItem;
    Rescindidos1: TMenuItem;
    ResumodeCaixa1: TMenuItem;
    Entradas1: TMenuItem;
    Sadas1: TMenuItem;
    Receitas1: TMenuItem;
    Despesas2: TMenuItem;
    Resumo1: TMenuItem;
    Detalhado1: TMenuItem;
    AtualizaSituao1: TMenuItem;
    Dirio1: TMenuItem;
    Porperodo1: TMenuItem;
    AtualizaFolhaPgto1: TMenuItem;
    TaxaAdministrativa1: TMenuItem;
    Resumo2: TMenuItem;
    ContasCorrentes1: TMenuItem;
    Formandos1: TMenuItem;
    EstagiriosGeral1: TMenuItem;
    Relatrio2: TMenuItem;
    Etiquetas3: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    AgendadeEntrevistas1: TMenuItem;
    N8: TMenuItem;
    EnviodeEMail1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    imgEmpresa: TImage;
    AvaliaodeDesempenho1: TMenuItem;
    Estatsticas1: TMenuItem;
    Instituies1: TMenuItem;
    Cadastro1: TMenuItem;
    Colocao1: TMenuItem;
    ResumoTCEsAtivos1: TMenuItem;
    ResumodasEmpresas1: TMenuItem;
    N9: TMenuItem;
    FichasCadastro1: TMenuItem;
    Estudantes3: TMenuItem;
    Oportunidades1: TMenuItem;
    TCEs1: TMenuItem;
    UFPR1: TMenuItem;
    DemonsUFPR1: TMenuItem;
    RescindidosUFPR1: TMenuItem;
    TCEsEmitidos1: TMenuItem;
    Consultas1: TMenuItem;
    EnvioEMail1: TMenuItem;
    TotaisdeCadastro1: TMenuItem;
    N2: TMenuItem;
    EstatsticasGerais1: TMenuItem;
    N10: TMenuItem;
    Funcionrios1: TMenuItem;
    ListasdeEMails1: TMenuItem;
    Estudantes4: TMenuItem;
    Instituies2: TMenuItem;
    Empresas2: TMenuItem;
    Estudantes5: TMenuItem;
    Instituies3: TMenuItem;
    Empresas3: TMenuItem;
    EmpresasCadastradas1: TMenuItem;
    Dirio2: TMenuItem;
    PorPerodo2: TMenuItem;
    Dirio3: TMenuItem;
    Porperodo3: TMenuItem;
    CEsRescindidos1: TMenuItem;
    Dirio4: TMenuItem;
    Porperodo4: TMenuItem;
    odas1: TMenuItem;
    Ativas1: TMenuItem;
    odas2: TMenuItem;
    Ativas2: TMenuItem;
    VagasCadastradas1: TMenuItem;
    CandidatosEnviados1: TMenuItem;
    Fornecedores1: TMenuItem;
    ContasaPagar1: TMenuItem;
    FuncionrioporEmpresa1: TMenuItem;
    Formulrio1: TMenuItem;
    SituacaoTCEs1: TMenuItem;
    campos: TListBox;
    Memo1: TMemo;
    OportunidadespoEmpresa1: TMenuItem;
    PromoverAlunos1: TMenuItem;
    N11: TMenuItem;
    Memo2: TMemo;
    Relao1: TMenuItem;
    SemRetorno1: TMenuItem;
    EstagiriosGeralIta1: TMenuItem;
    qrypesquisa: TQuery;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    EstagiriosCetefe1: TMenuItem;
    QryItensLote: TQuery;
    FolhadePagamentolotes1: TMenuItem;
    QryItensLoteEmp_nome: TStringField;
    QryItensLotefat_numero: TIntegerField;
    QryItensLoteest_cod: TIntegerField;
    QryItensLotefbo_liberacao: TStringField;
    QryItensLotelot_numero: TIntegerField;
    QryItensLotetce_cod: TIntegerField;
    QryItensLoteEst_nome: TStringField;
    QryItensLotefat_datareceb2: TDateTimeField;
    QryItensLotefat_mes: TIntegerField;
    QryItensLotefat_ano: TIntegerField;
    QryItensLoteest_agencia: TStringField;
    QryItensLoteest_conta: TStringField;
    QryItensLoteEst_cpf: TStringField;
    QryItensLoteEst_Cidade: TStringField;
    QryItensLoteEst_Estado: TStringField;
    QryItensLoteEst_endereco: TStringField;
    QryItensLoteEst_cep: TStringField;
    QryItensLotelot_numero_1: TIntegerField;
    QryItensLotefbo_valor: TFloatField;
    QryItensLotefbo_descontos: TFloatField;
    QryItensLotefbo_situacao: TStringField;
    QryItensLotefbo_liberacao_1: TStringField;
    QryItensLoteValorCerto: TFloatField;
    Memo3: TMemo;
    N12: TMenuItem;
    RelatoriodeFaturasNoEmitidas1: TMenuItem;
    qryNE: TQuery;
    qryNEemp_cod: TIntegerField;
    qryNEemp_nome: TStringField;
    qryNEEstagiarios: TIntegerField;
    QryItensLoteRetorno: TStringField;
    QryItensLotecod_retorno: TStringField;
    LerArquivodeRetorno1: TMenuItem;
    open: TOpenDialog;
    atualiza: TQuery;
    Requisitos1: TMenuItem;
    EmpresaXInstituiodeEnsino1: TMenuItem;
    Inst: TQuery;
    InstInst_nome: TStringField;
    InstInst_endereco: TStringField;
    InstInst_bairro: TStringField;
    InstInst_cidade: TStringField;
    InstInst_estado: TStringField;
    InstInst_telefone: TStringField;
    Mailings1: TMenuItem;
    Grupos1: TMenuItem;
    psw: TLabel;
    trocaSenha1: TMenuItem;
    N13: TMenuItem;
    FunesCliente1: TMenuItem;
    FunesInstituio1: TMenuItem;
    N14: TMenuItem;
    Seleca1: TMenuItem;
    AreasdeTrabalho1: TMenuItem;
    FormasdeTratamento1: TMenuItem;
    N15: TMenuItem;
    AlunosquenoentregaramDM1: TMenuItem;
    Memo4: TMemo;
    AlunosEnquadradosnaNovaLei1: TMenuItem;
    Memo5: TMemo;
    PorPerodoNovo1: TMenuItem;
    ProcessaEntregadeRelatrio1: TMenuItem;
    quPrincipal: TQuery;
    N17: TMenuItem;
    CadastrodePendncias1: TMenuItem;
    Processos1: TMenuItem;
    N16: TMenuItem;
    Estudantescomrelatriospendntes1: TMenuItem;
    Memo6: TMemo;
    qrypendentes: TQuery;
    qrypendentesData1: TDateField;
    qrypendentesData2: TDateField;
    qrypendentesData3: TDateField;
    qrypendentesData4: TDateField;
    qrypendentesStatus1: TStringField;
    qrypendentesStatus2: TStringField;
    qrypendentesStatus3: TStringField;
    qrypendentesStatus4: TStringField;
    qrypendentesPendencia1: TStringField;
    qrypendentesPendencia2: TStringField;
    qrypendentesPendencia4: TStringField;
    qrypendentesStatusSup1: TStringField;
    qrypendentesStatusSup2: TStringField;
    qrypendentesStatusSup3: TStringField;
    qrypendentesPendenciaSup1: TStringField;
    qrypendentesPendenciaSup2: TStringField;
    qrypendentesPendenciaSup3: TStringField;
    qrypendentesPendenciaSup4: TStringField;
    qrypendentesStatusSup4: TStringField;
    qrypendentesPendencia3: TStringField;
    qrypendentesTCE: TIntegerField;
    qrypendentesTCEInicio: TDateTimeField;
    qrypendentesTCEEntregaRel: TDateTimeField;
    qrypendentesSituacao: TStringField;
    qrypendentesEstudante: TStringField;
    qrypendentesEstudanteEmail: TStringField;
    qrypendentesInicioNovaLei: TDateTimeField;
    qrypendentesempresa: TStringField;
    qrypendentesGrupo: TStringField;
    qrypendentesFuncionario: TStringField;
    qrypendentesEmail: TStringField;
    qrypendentesInstituicao: TStringField;
    qrypendentesFuncionario2: TStringField;
    qrypendentesEmail2: TStringField;
    qrypendentesStatusGeral: TStringField;
    qrypendentesEntrega1: TDateField;
    qrypendentesEntrega2: TDateField;
    qrypendentesEntrega3: TDateField;
    qrypendentesEntrega4: TDateField;
    qrypendentesDataSup1: TDateField;
    qrypendentesDatasup2: TDateField;
    qrypendentesDatasup3: TDateField;
    qrypendentesDataSup4: TDateField;
    Impressora1: TMenuItem;
    Excel2: TMenuItem;
    Memo7: TMemo;
    cesporEmpresaXPeriodo1: TMenuItem;
    lbEmpresa: TListBox;
    lbmeses: TListBox;
    Memo8: TMemo;
    LETRAS: TListBox;
    qrypesquisa2: TQuery;
    ContEmpresa: TMemo;
    ContEstudante: TMemo;
    ContVaga: TMemo;
    ContFuncionario: TMemo;
    N18: TMenuItem;
    Contatos1: TMenuItem;
    PorEmpresa1: TMenuItem;
    PorEstudante1: TMenuItem;
    PorVaga1: TMenuItem;
    PorFuncionrio1: TMenuItem;
    Atualiza11: TMenuItem;
    Atualiza2Semestre1: TMenuItem;
    progresso: TProgressBar;
    Bancos1: TMenuItem;
    lblVersao: TLabel;
    btnInconsistencias: TSpeedButton;
    timMostrarInconsistencia: TTimer;
    pnlMostrarInconsistencia: TPanel;
    pnlImageLogos: TPanel;
    ilEmpresaLogin1: TImage;
    ilEmpresaLogin2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Cursos2Click(Sender: TObject);
    procedure Instituio1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Estudantes2Click(Sender: TObject);
    procedure Softwares1Click(Sender: TObject);
    procedure Idiomas1Click(Sender: TObject);
    procedure Vagas2Click(Sender: TObject);
    procedure TCE1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Incluso1Click(Sender: TObject);
    procedure Excluso1Click(Sender: TObject);
    procedure Contribuies1Click(Sender: TObject);
    procedure FolhadePagamento1Click(Sender: TObject);
    procedure PagamentosporEmpresa1Click(Sender: TObject);
    procedure AberturadeMs1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure ResumodeCaixa1Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure Despesas2Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure Sadas1Click(Sender: TObject);
    procedure Resumo1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure AtualizaSituao1Click(Sender: TObject);
    procedure Porperodo1Click(Sender: TObject);
    procedure AtualizaFolhaPgto1Click(Sender: TObject);
    procedure TaxaAdministrativa1Click(Sender: TObject);
    procedure Resumo2Click(Sender: TObject);
    procedure ContasCorrentes1Click(Sender: TObject);
    procedure EstagiriosGeral1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Relatrio2Click(Sender: TObject);
    procedure Etiquetas3Click(Sender: TObject);
    procedure DemonsUFPR1Click(Sender: TObject);
    procedure RescindidosUFPR1Click(Sender: TObject);
    procedure AgendadeEntrevistas1Click(Sender: TObject);
    procedure EnviodeEMail1Click(Sender: TObject);
    procedure AvaliaodeDesempenho1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Colocao1Click(Sender: TObject);
    procedure ResumoTCEsAtivos1Click(Sender: TObject);
    procedure ResumodasEmpresas1Click(Sender: TObject);
    procedure Estudantes3Click(Sender: TObject);
    procedure Oportunidades1Click(Sender: TObject);
    procedure TCEs1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Consultas1Click(Sender: TObject);
    procedure EnvioEMail1Click(Sender: TObject);
    procedure TotaisdeCadastro1Click(Sender: TObject);
    procedure EstatsticasGerais1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Estudantes4Click(Sender: TObject);
    procedure Estudantes5Click(Sender: TObject);
    procedure Empresas3Click(Sender: TObject);
    procedure Instituies3Click(Sender: TObject);
    procedure Dirio2Click(Sender: TObject);
    procedure PorPerodo2Click(Sender: TObject);
    procedure Dirio3Click(Sender: TObject);
    procedure Porperodo3Click(Sender: TObject);
    procedure Dirio4Click(Sender: TObject);
    procedure Porperodo4Click(Sender: TObject);
    procedure odas1Click(Sender: TObject);
    procedure Ativas1Click(Sender: TObject);
    procedure odas2Click(Sender: TObject);
    procedure Ativas2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CandidatosEnviados1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure FuncionrioporEmpresa1Click(Sender: TObject);
    procedure Formulrio1Click(Sender: TObject);
    procedure SituacaoTCEs1Click(Sender: TObject);
    procedure OportunidadespoEmpresa1Click(Sender: TObject);
    procedure PromoverAlunos1Click(Sender: TObject);
    procedure Atualizaano;
    procedure Relao1Click(Sender: TObject);
    procedure SemRetorno1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure EstagiriosCetefe1Click(Sender: TObject);
    procedure FolhadePagamentolotes1Click(Sender: TObject);
    procedure RelatoriodeFaturasNoEmitidas1Click(Sender: TObject);
    procedure QryItensLoteCalcFields(DataSet: TDataSet);
    procedure LerArquivodeRetorno1Click(Sender: TObject);
    procedure Requisitos1Click(Sender: TObject);
    procedure EmpresaXInstituiodeEnsino1Click(Sender: TObject);
    procedure Mailings1Click(Sender: TObject);
    procedure Autonomos1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure trocaSenha1Click(Sender: TObject);
    procedure FunesCliente1Click(Sender: TObject);
    procedure FunesInstituio1Click(Sender: TObject);
    procedure Seleca1Click(Sender: TObject);
    procedure AreasdeTrabalho1Click(Sender: TObject);
    procedure FormasdeTratamento1Click(Sender: TObject);
    procedure AlunosquenoentregaramDM1Click(Sender: TObject);
    procedure AlunosEnquadradosnaNovaLei1Click(Sender: TObject);
    procedure PorPerodoNovo1Click(Sender: TObject);
    procedure ProcessaEntregadeRelatrio1Click(Sender: TObject);
    procedure CadastrodePendncias1Click(Sender: TObject);
    procedure Estudantescomrelatriospendntes1Click(Sender: TObject);
    procedure qrypendentesCalcFields(DataSet: TDataSet);
    procedure Impressora1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure cesporEmpresaXPeriodo1Click(Sender: TObject);
    procedure PorEmpresa1Click(Sender: TObject);
    procedure PorEstudante1Click(Sender: TObject);
    procedure PorFuncionrio1Click(Sender: TObject);
    procedure PorVaga1Click(Sender: TObject);
    procedure Atualiza11Click(Sender: TObject);
    procedure Atualiza2Semestre1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure btnInconsistenciasClick(Sender: TObject);
    procedure timMostrarInconsistenciaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    inicio: integer;
    sematual, anoatual, diaatual, mesatual: word;
    { Public declarations }
    Diretorio: string;

    procedure MostraHint(Sender: TObject);
  end;

var
  FORINI: TFORINI;

implementation

uses
  ComObj, TPOCUR, TPOINS, TPOEMP, TPOEST, TPOSTW, TPOIDI,
  TPOVAG, TPOTCE, TPOSEMP, TPOSVER, TPOSINC, TPOSEXC, TPOFAT, TPOSFPG,
  TPOSPEMP, TPORANI, TPODTA, TPORFOR, TPOREST,
  TPOETQ, TPORETQ, TPOSERE, TPOSDSP, TPOSREC, TPOSENT, TPOSSAI, TPOSTCE,
  TPOETQ1, TPOFNC, TPORERE, TPORTCO, TPOSFPP, TPOSTAX, TPOREVE, TPOSVER1,
  TPOSCCO, TPOCST, TPOSEMP2, TPOREMP3, TPOSVER2, TPOSEL1, TPOAGE, TPOSAVD,
  TPOEML, TPOESICAD, TPOESICOL, TPOESTAV, TPOESERS, TPOESFES, TPOESFOP,
  TPOESTCE, TPOSEST, TPORESC, TPOSTEST, TPOESTME, TPOFUN, TPOSECA, TPOSTCA,
  TPOSTCR, TPOSVAG, TPOFOR, TPOSEMPJ1, TPOFORMULARIO, UntIntervalo,
  TPOSEMPOPT, TPOPROMALUNO, tpoAtualizando, TPOSEMP_E, TPOSTCASR, TPOSEL2,
  TPOSEL3, TPOREQ, tposel4, untLibera, TpoMaling, TPOEMPA, TPOGRUPO,
  TPOTROCASENHA, TPOFUNEMP, TPOFUNINS, TPOSELECIONADOR, TPOAREA, TPOFORMT,
  TPOSERE2, TPOPEND, TPOSEL5, TPOBAN, TPOERR;

{$R *.DFM}

procedure TFORINI.MostraHint;
begin
  Self.sbPrincipal.Panels[0].Text := Application.Hint;
end;

procedure TFORINI.FormCreate(Sender: TObject);
begin
  // Calcula o m�s, ano e semestre atual
  DecodeDate(Date(), anoAtual, mesAtual, DiaAtual);
  if MesAtual < 7 then
    SemAtual := 1
  else
    SemAtual := 2;
  inicio := 0
end;

procedure TFORINI.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFORINI.Cursos2Click(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  FORCUR := TFORCUR.Create(Self);
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

end;

procedure TFORINI.Instituio1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  Screen.Cursor := crDefault;
  FORINS.ShowModal;
end;


procedure TFORINI.Atualizaano;
var
  Linha, linha2: string;
  ano: string;
  Atualizacoes: integer;
  i: integer;

begin
  ano := trim(inttostr(Anoatual - 1));
  if length(ano) < 4 then
    ano := '20' + ano;
  atualizacoes := 0;

  dmdta.qrypesquisa.close;
  linha := memo2.Text;
  // Verificando alunos do Ensino M�dio
  // (Tce.Tce_situacao < 7)  and
  //' Estudante.est_cod = Tce.Est_cod and ' +
  linha2 := ' Estudante.cur_cod = Curso.cur_cod  and';
  linha2 := linha2 + '  cur_nivel  = ''M�dio''  and est_cursoano = ' + ano;
  dmdta.qrypesquisa.SQL.Text := linha + ' where ' + linha2 + ' ORDER BY Curso.cur_nivel, Estudante.Est_nome ';
  dmdta.qrypesquisa.open;
  if dmdta.qrypesquisa.EOf = false then
  begin
    frmatualizando.Label1.caption := 'Aguarde Atualizando Alunos do Ensino M�dio';
    dmdta.qrypesquisa.last;
    frmatualizando.progresso.Maxvalue := dmdta.qrypesquisa.RowsAffected;
    frmatualizando.progresso.Progress := 0;
    frmatualizando.Show;
    frmatualizando.Refresh;
    dmdta.qrypesquisa.first;
  end;
 // if dmdta.qrypesquisa.fieldbyname('est_cod').asstring = '56058' then
 //   showmessage('pare');

  i := 0;
  while not dmdta.qrypesquisa.EOf do
  begin
    inc(i);
    frmatualizando.progresso.progress := i;
    frmatualizando.progresso.Repaint;
    frmatualizando.progresso.Refresh;
          // (Tce.Tce_situacao < 7)  and
   // ' Estudante.est_cod = Tce.Est_cod and ' +
    linha2 := ' Estudante.cur_cod = Curso.cur_cod  and pcu_anoatual is not null and';
    linha2 := linha2 + '  cur_nivel  = ''M�dio''  and est_cursoano = ' + ano;
    if dmdta.Busca('Estudante,curso', 'estudante.est_cod', linha2 + ' and estudante.est_cod=' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring) then
    begin
      dmdta.quAtuEstudante.close;
      if dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger < 3 then
      begin
        dmdta.quAtuEstudante.ParamByName('est_cod').asstring := dmdta.qrypesquisa.fieldbyname('est_cod').asstring;
        dmdta.quAtuEstudante.open;
        dmdta.quAtuEstudante.edit;
        dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger := dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger + 1;
        dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger := dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger + 1;
        dmdta.SalvarRegistro(dmdta.quAtuEstudante);
        inc(atualizacoes);
      end;
      if dmdta.qrypesquisa.fieldbyname('inst_cod').asstring <> '' then
      begin
        linha2 := ' est_cod =' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring + ' and cur_cod = ' + dmdta.qrypesquisa.fieldbyname('cur_cod').asstring;
        linha2 := linha2 + ' and pcu_cursoAno = ' + dmdta.qrypesquisa.FieldByName('pcu_anoatual').Asstring + ' and inst_cod=' + dmdta.qrypesquisa.fieldbyname('inst_cod').asstring;
        try
          linha2 := linha2 + ' and pcu_Ano = ' + ano;
          if dmdta.Busca('Historico', '*', linha2) = false then
          begin
            dmdta.quHistorico.Close;
            dmdta.quHistorico.ParamByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
            dmdta.quHistorico.Open;
            dmdta.quHistorico.Insert;
            dmdta.quHistorico.FieldByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
            dmdta.quHistorico.FieldByName('cur_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('cur_cod').asinteger;
            dmdta.quHistorico.FieldByName('pcu_cursoano').AsInteger := dmdta.qrypesquisa.fieldbyname('pcu_anoatual').asinteger;
            dmdta.quHistorico.FieldByName('pcu_ano').Asstring := ano;
            dmdta.quHistorico.FieldByName('inst_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('inst_cod').asinteger;
            dmdta.SalvarRegistro(dmdta.quHistorico);
          end;
        except
          showmessage(linha2);
        end
      end;
    end;
    dmdta.qrypesquisa.next;
  end;
  frmatualizando.close;
  dmdta.quHistorico.close;
  dmdta.quAtuEstudante.close;
  linha := memo2.Text;

  // Verificando alunos do T�cnico
  // and (Tce.Tce_situacao < 7)
  //'  Estudante.est_cod = Tce.Est_cod and ' +
  linha2 := ' Estudante.cur_cod = Curso.cur_cod  and pcu_anoatual is not null and';
  linha2 := linha2 + '  cur_nivel  = ''T�cnico''  and est_cursoano = ' + ano;
  dmdta.qrypesquisa.SQL.Text := linha + ' where ' + linha2 + ' ORDER BY Curso.cur_nivel, Estudante.Est_nome ';
  dmdta.qrypesquisa.open;
  if dmdta.qrypesquisa.EOf = false then
  begin
    frmatualizando.Label1.caption := 'Aguarde Atualizando Alunos do Curso T�cnico';
    dmdta.qrypesquisa.last;
    frmatualizando.progresso.Maxvalue := dmdta.qrypesquisa.RowsAffected;
    frmatualizando.progresso.progress := 0;
    frmatualizando.Show;
    frmatualizando.Refresh;
    dmdta.qrypesquisa.first;
  end;

  i := 0;
  while not dmdta.qrypesquisa.EOf do
  begin

    inc(i);
    frmatualizando.progresso.progress := i;
    frmatualizando.progresso.Repaint;
    frmatualizando.progresso.Refresh;
    // and (Tce.Tce_situacao < 7)
    //'   Estudante.est_cod = Tce.Est_cod and ' +
    linha2 := ' Estudante.cur_cod = Curso.cur_cod  and pcu_anoatual <= 4  and ';
    linha2 := linha2 + '  cur_nivel  = ''T�cnico''  and est_cursoano = ' + ano;
    if dmdta.Busca('Estudante,curso', 'estudante.est_cod', linha2 + ' and estudante.est_cod=' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring) then
    begin
      dmdta.quAtuEstudante.close;
      if dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger < 4 then
      begin
        dmdta.quAtuEstudante.ParamByName('est_cod').asstring := dmdta.qrypesquisa.fieldbyname('est_cod').asstring;
        dmdta.quAtuEstudante.open;
        dmdta.quAtuEstudante.edit;
        dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger := dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger + 1;
        dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger := dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger + 1;
        dmdta.SalvarRegistro(dmdta.quAtuEstudante);
        inc(atualizacoes);
      end;
      if dmdta.qrypesquisa.fieldbyname('inst_cod').asstring <> '' then
      begin
        linha2 := ' est_cod =' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring + ' and cur_cod = ' + dmdta.qrypesquisa.fieldbyname('cur_cod').asstring;
        linha2 := linha2 + ' and pcu_cursoAno = ' + dmdta.qrypesquisa.FieldByName('pcu_anoatual').Asstring + ' and inst_cod=' + dmdta.qrypesquisa.fieldbyname('inst_cod').asstring;
        linha2 := linha2 + ' and pcu_Ano = ' + ano;
        if dmdta.Busca('Historico', '*', linha2) = false then
        begin
          dmdta.quHistorico.Close;
          dmdta.quHistorico.ParamByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
          dmdta.quHistorico.Open;
          dmdta.quHistorico.Insert;
          dmdta.quHistorico.FieldByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
          dmdta.quHistorico.FieldByName('cur_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('cur_cod').asinteger;
          dmdta.quHistorico.FieldByName('pcu_cursoano').AsInteger := dmdta.qrypesquisa.fieldbyname('pcu_anoatual').asinteger;
          dmdta.quHistorico.FieldByName('pcu_ano').Asstring := ano;
          dmdta.quHistorico.FieldByName('inst_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('inst_cod').asinteger;
          dmdta.SalvarRegistro(dmdta.quHistorico);
        end;
      end;
    end;
    dmdta.qrypesquisa.next;
  end;
  frmatualizando.Close;
  dmdta.quHistorico.close;
  dmdta.quAtuEstudante.close;


  if linha2 = 'nada' then
  begin
  // Nivel Superior

  //(Tce.Tce_situacao < 7)  and
    linha2 := ' Estudante.est_cod = Tce.Est_cod and  pcu_anoatual is not null and' +
      ' Estudante.cur_cod = Curso.cur_cod  and';
    linha2 := linha2 + '  cur_nivel  not in (''M�dio'',''T�cnico'') and est_cursoano = ' + ano;
    dmdta.qrypesquisa.SQL.Text := linha + ' where ' + linha2 + ' ORDER BY Curso.cur_nivel, Estudante.Est_nome ';
    dmdta.qrypesquisa.open;
    if dmdta.qrypesquisa.EOf = false then
    begin
      frmatualizando.Label1.caption := 'Aguarde Atualizando Alunos';
      dmdta.qrypesquisa.last;
      frmatualizando.progresso.Maxvalue := dmdta.qrypesquisa.RowsAffected;
      frmatualizando.progresso.progress := 0;
      frmatualizando.Show;
      frmatualizando.Refresh;
      dmdta.qrypesquisa.first;
    end;

    i := 0;
    while not dmdta.qrypesquisa.EOf do
    begin

      inc(i);
      frmatualizando.progresso.progress := i;
      frmatualizando.progresso.Repaint;
      frmatualizando.progresso.Refresh;
      // (Tce.Tce_situacao < 7)  and
      // Estudante.est_cod = Tce.Est_cod and
      linha2 := '   estudante.pcu_peratual = 0 and ' +
        ' Estudante.cur_cod = Curso.cur_cod  and pcu_anoatual <  (select curi_duracao from InstCurso where cur_cod=estudante.cur_cod  and inst_cod=estudante.inst_cod )  and ';
      linha2 := linha2 + '  cur_nivel  not in (''M�dio'',''T�cnico'')   and est_cursoano = ' + ano;
      if dmdta.Busca('Estudante,curso', 'estudante.est_cod', linha2 + ' and estudante.est_cod=' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring) then
      begin
        dmdta.quAtuEstudante.close;
        if dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger < strtoint(dmdta.BuscaCampo2('InstCurso', 'Curi_duracao', 'Inst_cod', 'Cur_cod', dmdta.qrypesquisa.fieldbyname('inst_cod').asinteger, dmdta.qrypesquisa.fieldbyname('cur_cod').asinteger)) then
        begin
          dmdta.quAtuEstudante.ParamByName('est_cod').asstring := dmdta.qrypesquisa.fieldbyname('est_cod').asstring;
          dmdta.quAtuEstudante.open;
          dmdta.quAtuEstudante.edit;
          dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger := dmdta.quAtuEstudante.FieldByName('est_cursoano').AsInteger + 1;
          dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger := dmdta.quAtuEstudante.FieldByName('pcu_anoatual').AsInteger + 1;
          dmdta.SalvarRegistro(dmdta.quAtuEstudante);
          inc(atualizacoes);
        end;
        if dmdta.qrypesquisa.fieldbyname('inst_cod').asstring <> '' then
        begin
          linha2 := ' est_cod =' + dmdta.qrypesquisa.fieldbyname('est_cod').asstring + ' and cur_cod = ' + dmdta.qrypesquisa.fieldbyname('cur_cod').asstring;
          linha2 := linha2 + ' and pcu_cursoAno = ' + dmdta.qrypesquisa.FieldByName('pcu_anoatual').Asstring + ' and inst_cod=' + dmdta.qrypesquisa.fieldbyname('inst_cod').asstring;
          linha2 := linha2 + ' and pcu_Ano = ' + ano;

          if dmdta.Busca('Historico', '*', linha2) = false then
          begin
            dmdta.quHistorico.Close;
            dmdta.quHistorico.ParamByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
            dmdta.quHistorico.Open;
            dmdta.quHistorico.Insert;
            dmdta.quHistorico.FieldByName('est_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('est_cod').asinteger;
            dmdta.quHistorico.FieldByName('cur_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('cur_cod').asinteger;
            dmdta.quHistorico.FieldByName('pcu_cursoano').AsInteger := dmdta.qrypesquisa.fieldbyname('pcu_anoatual').asinteger;
            dmdta.quHistorico.FieldByName('pcu_ano').Asstring := ano;
            dmdta.quHistorico.FieldByName('inst_cod').AsInteger := dmdta.qrypesquisa.fieldbyname('inst_cod').asinteger;
            dmdta.SalvarRegistro(dmdta.quHistorico);
          end;
        end;
      end;
      dmdta.qrypesquisa.next;
    end;
    frmatualizando.Close;
    dmdta.quHistorico.close;
    dmdta.quAtuEstudante.close;
  end;

  if atualizacoes > 0 then
    showmessage(inttostr(atualizacoes) + ' Estudantes Atualizados');
end;


procedure TFORINI.Empresas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;
end;

procedure TFORINI.Estudantes2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  Screen.Cursor := crDefault;
  FOREST.ShowModal;
end;

procedure TFORINI.Softwares1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTW := TFORSTW.Create(Self);
  Screen.Cursor := crDefault;
  FORSTW.ShowModal;
end;

procedure TFORINI.Idiomas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORIDI := TFORIDI.Create(Self);
  Screen.Cursor := crDefault;
  FORIDI.ShowModal;
end;

procedure TFORINI.Vagas2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;
end;

procedure TFORINI.TCE1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORTCE := TFORTCE.Create(Self);
  Screen.Cursor := crDefault;
  FORTCE.ShowModal;
end;

procedure TFORINI.SpeedButton8Click(Sender: TObject);
begin
  close;
end;

procedure TFORINI.SpeedButton3Click(Sender: TObject);
begin
  Instituio1Click(Sender);
end;

procedure TFORINI.SpeedButton1Click(Sender: TObject);
begin
  Estudantes2Click(Sender);
end;

procedure TFORINI.SpeedButton2Click(Sender: TObject);
begin
  Cursos2Click(Sender);
end;

procedure TFORINI.SpeedButton4Click(Sender: TObject);
begin
  Empresas1Click(Sender);
end;

procedure TFORINI.SpeedButton5Click(Sender: TObject);
begin
  Vagas2Click(Sender);
end;

procedure TFORINI.SpeedButton6Click(Sender: TObject);
begin
  TCE1Click(Sender);
end;

procedure TFORINI.Incluso1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSINC := TFORSINC.Create(Self);
  Screen.Cursor := crDefault;
  FORSINC.ShowModal;
end;

procedure TFORINI.Excluso1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEXC := TFORSEXC.Create(Self);
  FORSEXC.InUFPR := False;
  Screen.Cursor := crDefault;
  FORSEXC.ShowModal;
end;

procedure TFORINI.Contribuies1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFAT := TFORFAT.Create(Self);
  Screen.Cursor := crDefault;
  FORFAT.ShowModal;
end;

procedure TFORINI.FolhadePagamento1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSFPG := TFORSFPG.Create(Self);
  Screen.Cursor := crDefault;
  FORSFPG.ShowModal;
end;

procedure TFORINI.PagamentosporEmpresa1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSPEMP := TFORSPEMP.Create(Self);
  Screen.Cursor := crDefault;
  FORSPEMP.ShowModal;
end;

procedure TFORINI.AberturadeMs1Click(Sender: TObject);
begin
 { Screen.Cursor := crHourGlass;
  FORCAI := TFORCAI.Create(Self);
  Screen.Cursor := crDefault;
  FORCAI.ShowModal;}
end;

procedure TFORINI.SpeedButton9Click(Sender: TObject);
begin
  AberturadeMs1Click(Sender);
end;

procedure TFORINI.SpeedButton10Click(Sender: TObject);
begin
  Contribuies1Click(Sender);
end;

procedure TFORINI.Despesas1Click(Sender: TObject);
begin
{  Screen.Cursor := crHourGlass;
  FORDSP := TFORDSP.Create(Self);
  Screen.Cursor := crDefault;
  FORDSP.ShowModal;}
end;

procedure TFORINI.Relatrio1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSVER := TFORSVER.Create(Self);
  Screen.Cursor := crDefault;
  FORSVER.ShowModal;
end;

procedure TFORINI.ResumodeCaixa1Click(Sender: TObject);
begin
  {Screen.Cursor := crHourGlass;
  FORSCAI := TFORSCAI.Create(Self);
  Screen.Cursor := crDefault;
  FORSCAI.ShowModal;}
end;

procedure TFORINI.Receitas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSREC := TFORSREC.Create(Self);
  Screen.Cursor := crDefault;
  FORSREC.ShowModal;
end;

procedure TFORINI.Despesas2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSDSP := TFORSDSP.Create(Self);
  Screen.Cursor := crDefault;
  FORSDSP.ShowModal;
end;

procedure TFORINI.Entradas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSENT := TFORSENT.Create(Self);
  Screen.Cursor := crDefault;
  FORSENT.ShowModal;
end;

procedure TFORINI.Sadas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSSAI := TFORSSAI.Create(Self);
  Screen.Cursor := crDefault;
  FORSSAI.ShowModal;
end;

procedure TFORINI.Resumo1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEMP2 := TFORSEMP2.Create(Self);
  Screen.Cursor := crDefault;
  FORSEMP2.ShowModal;
end;

procedure TFORINI.Detalhado1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEMP := TFORSEMP.Create(Self);
  Screen.Cursor := crDefault;

  FORSEMP.ShowModal;
end;

procedure TFORINI.AtualizaSituao1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTCE := TFORSTCE.Create(Self);
  Screen.Cursor := crDefault;
  FORSTCE.ShowModal;
end;

procedure TFORINI.Porperodo1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSERE := TFORSERE.Create(Self);
  Screen.Cursor := crDefault;
  FORSERE.ShowModal;
end;

procedure TFORINI.AtualizaFolhaPgto1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSFPP := TFORSFPP.Create(Self);
  Screen.Cursor := crDefault;
  FORSFPP.ShowModal;
end;

procedure TFORINI.TaxaAdministrativa1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTAX := TFORSTAX.Create(Self);
  Screen.Cursor := crDefault;
  FORSTAX.ShowModal;
end;

procedure TFORINI.Resumo2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSVER1 := TFORSVER1.Create(Self);
  Screen.Cursor := crDefault;
  FORSVER1.ShowModal;
end;

procedure TFORINI.ContasCorrentes1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSCCO := TFORSCCO.Create(Self);
  Screen.Cursor := crDefault;
  FORSCCO.ShowModal;
end;

procedure TFORINI.EstagiriosGeral1Click(Sender: TObject);
var Var1: Variant;
  cpf: string;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL2 := TFORSEL2.Create(Self);
  Screen.Cursor := crDefault;
  FORSEL2.ShowModal;
  if (forsel2.data <> 0) and (forsel2.datafim <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    data1 := '''' + datetostr(forsel2.Data) + '''';
    //'''01/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';
    data2 := '''' + datetostr(forsel2.Datafim) + '''';
    //'''' + IntToStr(RetornaDiasMes(FORSEL1.Mes, FORSEL1.Ano)) + '/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';

    var1 := CreateOleObject('Word.Basic');
    var1.FileNew(Diretorio + 'Rel_Estagiarios.dot');

    with DmDta.qrypesq do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  est_nome, est_cpf, est_dtnasc,');
      Sql.add(' case  when (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) is not null then ');
      Sql.add(' (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) ');
      Sql.add(' else (select  tce_cod   from  Tce  X where   x.tce_cod in ');
      Sql.add(' (select  t.tce_cod from TceAditivo TA, Tce t ');
      Sql.add(' where ta.tce_cod = t.tce_cod and  t.tce_situacao <> ''0'' and    t.tce_situacao <> ''7'' and ');
      Sql.add(' ta.tpr_dataini < ' + data2 + ' and ta.tpr_datafim > ' + data1 + ' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod  )) ');
      Sql.add(' end as tce ');
      Sql.Add('from');
      Sql.Add('  estudante');
      Sql.Add('where');
      Sql.Add('  est_cod in');
      Sql.Add('(select');
      Sql.Add('  est_cod');
      Sql.Add(' from ');
      Sql.Add('  Tce');
      Sql.Add('where');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select tce_cod from Tce');
      Sql.Add('   where tce_situacao = ''0'' and');
      Sql.Add('   tce_dataini < ' + data2 + ' and');
      Sql.Add('   tce_datafim > ' + data1 + ') or');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
      Sql.Add('   where ta.tce_cod = t.tce_cod and');
      Sql.Add('   t.tce_situacao <> ''0'' and');
      Sql.Add('   t.tce_situacao <> ''7'' and');
      Sql.Add('   ta.tpr_dataini < ' + data2 + ' and');
      Sql.Add('   ta.tpr_datafim > ' + data1 + '))');
      Sql.Add('order by');
      Sql.Add('  est_nome');
      Open;
      First;

      Var1.Bold;
      //var1.Insert(#13 + 'M�s: ' + Copy('00' + IntToStr(FORSEL1.mes), length(IntToStr(FORSEL1.mes)) + 1, 2) + '/' + IntToStr(FORSEL1.ano) + #13 + #13);
      var1.Insert(#13 + 'Periodo: ' + Data1 + ' .. ' + data2 + #13 + #13);


      while not eof do
      begin
        var1.Insert(#9 + FieldByName('est_nome').AsString);
        cpf := FieldByName('est_cpf').AsString;
        if cpf <> '' then
          cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
        var1.Insert(#9 + cpf);
        var1.Insert(#9 + FieldByName('est_dtnasc').AsString);
        var1.Insert(#9 + FieldByName('tce').AsString + #13);
        Next;
      end;

      Var1.Insert(#13);
      Var1.Insert(#9 + #9 + '                Total de estagi�rios: ' + IntToStr(RecordCount));
      Close;
    end;

    var1.AppShow;
    Screen.Cursor := crDefault;

  end;



  exit;
  Screen.Cursor := crHourGlass;
  FORSEL1 := TFORSEL1.Create(Self);
  Screen.Cursor := crDefault;
  FORSEL1.ShowModal;

  if (FORSEL1.Ano <> 0) and (FORSEL1.Mes <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    data1 := '''01/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';
    data2 := '''' + IntToStr(RetornaDiasMes(FORSEL1.Mes, FORSEL1.Ano)) + '/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';

    var1 := CreateOleObject('Word.Basic');
    var1.FileNew(Diretorio + 'Rel_Estagiarios.dot');

    with DmDta.qrypesq do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  est_nome, est_cpf, est_dtnasc,');
      Sql.add(' case  when (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) is not null then ');
      Sql.add(' (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) ');
      Sql.add(' else (select  tce_cod   from  Tce  X where   x.tce_cod in ');
      Sql.add(' (select  t.tce_cod from TceAditivo TA, Tce t ');
      Sql.add(' where ta.tce_cod = t.tce_cod and  t.tce_situacao <> ''0'' and    t.tce_situacao <> ''7'' and ');
      Sql.add(' ta.tpr_dataini < ' + data2 + ' and ta.tpr_datafim > ' + data1 + ' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod  )) ');
      Sql.add(' end as tce ');
      Sql.Add('from');
      Sql.Add('  estudante');
      Sql.Add('where');
      Sql.Add('  est_cod in');
      Sql.Add('(select');
      Sql.Add('  est_cod');
      Sql.Add(' from ');
      Sql.Add('  Tce');
      Sql.Add('where');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select tce_cod from Tce');
      Sql.Add('   where tce_situacao = ''0'' and');
      Sql.Add('   tce_dataini < ' + data2 + ' and');
      Sql.Add('   tce_datafim > ' + data1 + ') or');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
      Sql.Add('   where ta.tce_cod = t.tce_cod and');
      Sql.Add('   t.tce_situacao <> ''0'' and');
      Sql.Add('   t.tce_situacao <> ''7'' and');
      Sql.Add('   ta.tpr_dataini < ' + data2 + ' and');
      Sql.Add('   ta.tpr_datafim > ' + data1 + '))');
      Sql.Add('order by');
      Sql.Add('  est_nome');
      Open;
      First;

      Var1.Bold;
      var1.Insert(#13 + 'M�s: ' + Copy('00' + IntToStr(FORSEL1.mes), length(IntToStr(FORSEL1.mes)) + 1, 2) + '/' + IntToStr(FORSEL1.ano) + #13 + #13);


      while not eof do
      begin
        var1.Insert(#9 + FieldByName('est_nome').AsString);
        cpf := FieldByName('est_cpf').AsString;
        if cpf <> '' then
          cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
        var1.Insert(#9 + cpf);
        var1.Insert(#9 + FieldByName('est_dtnasc').AsString);
        var1.Insert(#9 + FieldByName('tce').AsString + #13);
        Next;
      end;

      Var1.Insert(#13);
      Var1.Insert(#9 + #9 + '                Total de estagi�rios: ' + IntToStr(RecordCount));
      Close;
    end;

    var1.AppShow;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFORINI.Button1Click(Sender: TObject);
begin
  with dmdta do
  begin
    quInstituicao.Open;
    quInstituicao.First;

    while not quInstituicao.Eof do
    begin
      GeraEtiqueta(quInstituicaoinst_cod.AsInteger);
      quInstituicao.Next;
    end;
    quInstituicao.Close;
  end;
end;

procedure TFORINI.Relatrio2Click(Sender: TObject);
var
  Data, DataI: TDate;
  DataIni, DataCerta: string;
begin
  dataIni := DateToStr(Date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      DataI := StrToDate(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    // Calcula a data com 45 dias
    //Data := DataI + 45;

    Data := DataI;
    // DataCerta := '''' + FormatDateTime('mm/dd/yyyy', Data) + '''';
    DataCerta := '''' + FormatDateTime('dd/mm/yyyy', Data) + '''';
    Screen.Cursor := crHourGlass;
    with DmDta.quEstResc do
    begin
      Close;
      Sql.Clear;
      {
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  , t.tce_dataini,');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, ');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual,');
      Sql.Add('e.pcu_anoatual, ''1'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('t.tce_situacao = ''0'' and');
      Sql.Add('t.tce_datafim between  :DataCerta AND :DataCerta');
    //  Sql.Add('and m.emp_cod = f.emp_cod');
     // Sql.Add('and m.emp_respent = f.func_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and e.cur_cod = c.cur_cod');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  , t.tce_dataini, t.tce_datafim, a.tpr_dataini,');
      Sql.Add('a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, e.pcu_anoatual, ''2'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.tce_cod = a.tce_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('T.tce_situacao <> ''7''');
     // Sql.Add('and m.emp_cod = f.emp_cod');
     // Sql.Add('and m.emp_respent = f.func_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and e.cur_cod = c.cur_cod and');
      Sql.Add('a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and');
      Sql.Add('a.tpr_datafim between :DataCerta  and :DataCerta ');
      Sql.Add('order by');
      Sql.Add('m.emp_nome, e.est_nome');
      PARAMBYNAME('DATACERTA').Value := DATA;
      }
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
      Sql.Add('e.pcu_anoatual, ''1'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C ');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_situacao = ''0'' and ');
      Sql.Add('t.tce_cod not in (select tce_cod from tceaditivo )  and   ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('t.tce_datafim between  :dataIni  and  :dataFim ');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim,');
      Sql.Add('a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, ');
      Sql.Add('e.pcu_peratual, e.pcu_anoatual, ''2'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso c');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_cod = a.tce_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('T.tce_situacao <> ''7'' and');
      Sql.Add('a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and ');
      Sql.Add('a.tpr_datafim between  :dataIni and :dataFim ') ;
      Sql.Add('order by');
      Sql.Add('m.emp_nome,t.tce_datafim, e.est_nome');
      ParamByName('dataini').AsDateTime := Data;
      ParamByName('datafim').AsDateTime := Data;

      Open;
    end;

    Screen.Cursor := crHourGlass;
    QRTCO := TQRTCO.Create(Application);
    Screen.Cursor := crDefault;
    QRTCO.Preview;
    QRTCO.Free;

    DmDta.quEstResc.Close;
  end;
end;

procedure TFORINI.Etiquetas3Click(Sender: TObject);
var
  Data, DataI: TDate;
  DataIni, DataCerta: string;
  F: TextFile;
  linha: string;
begin
  dataIni := DateToStr(Date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      DataI := StrToDate(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    // Calcula a data com 45 dias
    //Data := DataI + 45;
    Data := DataI;
    DataCerta := '''' + FormatDateTime('dd/mm/yyyy', Data) + '''';

    Screen.Cursor := crHourGlass;
    with DmDta.quEstResc do
    begin
      Close;
      Sql.Clear;
{
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome, t.tce_dataini,');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, ');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual,');
      Sql.Add('e.pcu_anoatual, ''1'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('t.tce_situacao = ''0'' and');
      Sql.Add('t.tce_datafim between  :DataCerta AND :DataCerta');
     // Sql.Add('and m.emp_cod = f.emp_cod');
     // Sql.Add('and m.emp_respent = f.func_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and e.cur_cod = c.cur_cod');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome, t.tce_dataini, t.tce_datafim, a.tpr_dataini,');
      Sql.Add('a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, e.pcu_anoatual, ''2'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.tce_cod = a.tce_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('T.tce_situacao <> ''7''');
      //Sql.Add('and m.emp_cod = f.emp_cod');
      //Sql.Add('and m.emp_respent = f.func_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and e.cur_cod = c.cur_cod and');
      Sql.Add('a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and');
      Sql.Add('a.tpr_datafim between :DataCerta  and :DataCerta ');
      Sql.Add('order by');
      Sql.Add('m.emp_nome, e.est_nome');
      PARAMBYNAME('DATACERTA').Value := DATA;
}
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
      Sql.Add('e.pcu_anoatual, ''1'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C ');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_situacao = ''0'' and ');
      Sql.Add('t.tce_cod not in (select tce_cod from tceaditivo )  and   ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('t.tce_datafim between  :dataIni  and  :dataFim ');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim,');
      Sql.Add('a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, ');
      Sql.Add('e.pcu_peratual, e.pcu_anoatual, ''2'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso c');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_cod = a.tce_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('T.tce_situacao <> ''7'' and');
      Sql.Add('a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and ');
      Sql.Add('a.tpr_datafim between  :dataIni and :dataFim ') ;
      Sql.Add('order by');
      Sql.Add('m.emp_nome,t.tce_datafim, e.est_nome');
      ParamByName('dataini').AsDateTime := Data;
      ParamByName('datafim').AsDateTime := Data;
      
      Open;
    end;

    AssignFile(F, 'C:\Temp\Relatorio.txt');
    Rewrite(F);
    WriteLn(F, 'CETEFE  -  Estagi�rios a Rescindir');
    WriteLn(F, 'Data: ' + DateToStr(Data));
    WriteLn(F);
    WriteLn(F, PreencheEspacosEsquerda('TCE', 9) + ' ' + PreencheEspacosDireita('Nome', 50) + ' ' + PreencheEspacosDireita('Empresa', 100) + ' ' + PreencheEspacosDireita('In�cio', 13) +
      ' ' + PreencheEspacosDireita('Fim', 13) + ' ' + PreencheEspacosDireita('Data Nasc.', 13) + ' ' + PreencheEspacosDireita('Meses', 5));
    WriteLn(F, PreencheTracos(9) + ' ' + PreencheTracos(50) + ' ' + PreencheTracos(100) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(5));

    with DmDta.quEstResc do
    begin
      DisableControls;
      First;

      while not Eof do
      begin
        linha := PreencheEspacosEsquerda(FieldByName('tce_cod').Text, 9) + ' ' +
          PreencheEspacosDireita(FieldByName('est_nome').Text, 50) + ' ' +
          PreencheEspacosDireita(FieldByName('emp_nome').Text, 100) + ' ' +
          PreencheEspacosDireita(FieldByName('tce_dataini').Text, 13) + ' ' +
          PreencheEspacosDireita(FieldByName('tce_datafim').Text, 13) + ' ' +
          PreencheEspacosDireita(FieldByName('est_dtnasc').Text, 13) + ' ' +
          PreencheEspacosDireita(FieldByName('MesesEstagiando').Text, 13);
        WriteLn(F, linha);
        Next;
      end;

      CloseFile(F);

      First;
      EnableControls;
    end;

    Screen.Cursor := crDefault;
    MSGAviso('Arquivo "C:\Temp\Relatorio.txt" gerado com sucesso!');

    DmDta.quEstResc.Close;
  end;
end;

procedure TFORINI.DemonsUFPR1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSVER2 := TFORSVER2.Create(Self);
  Screen.Cursor := crDefault;
  FORSVER2.ShowModal;
end;

procedure TFORINI.RescindidosUFPR1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEXC := TFORSEXC.Create(Self);
  FORSEXC.InUFPR := True;
  Screen.Cursor := crDefault;
  FORSEXC.ShowModal;
end;

procedure TFORINI.AgendadeEntrevistas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORAGE := TFORAGE.Create(Self);
  Screen.Cursor := crDefault;
  FORAGE.ShowModal;
end;

procedure TFORINI.EnviodeEMail1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREML := TFOREML.Create(Self);
  Screen.Cursor := crDefault;
  FOREML.Show;
end;

procedure TFORINI.AvaliaodeDesempenho1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSAVD := TFORSAVD.Create(Self);
  Screen.Cursor := crDefault;
  FORSAVD.ShowModal;
end;

procedure TFORINI.Cadastro1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESICAD := TFORESICAD.Create(Self);
  Screen.Cursor := crDefault;
  FORESICAD.ShowModal;
end;

procedure TFORINI.Colocao1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESICOL := TFORESICOL.Create(Self);
  Screen.Cursor := crDefault;
  FORESICOL.ShowModal;
end;

procedure TFORINI.ResumoTCEsAtivos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESTAV := TFORESTAV.Create(Self);
  Screen.Cursor := crDefault;
  FORESTAV.ShowModal;
end;

procedure TFORINI.ResumodasEmpresas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESERS := TFORESERS.Create(Self);
  Screen.Cursor := crDefault;
  FORESERS.ShowModal;
end;

procedure TFORINI.Estudantes3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESFES := TFORESFES.Create(Self);
  Screen.Cursor := crDefault;
  FORESFES.ShowModal;
end;

procedure TFORINI.Oportunidades1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESFOP := TFORESFOP.Create(Self);
  Screen.Cursor := crDefault;
  FORESFOP.ShowModal;
end;

procedure TFORINI.TCEs1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESTCE := TFORESTCE.Create(Self);
  Screen.Cursor := crDefault;
  FORESTCE.ShowModal;
end;

procedure TFORINI.FormActivate(Sender: TObject);
begin
  {Application.OnHint := nil;
  Application.OnHint := MostraHint;}
end;

procedure TFORINI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Application.OnHint := nil;
end;

procedure TFORINI.Consultas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEST := TFORSEST.Create(Self);
  Screen.Cursor := crDefault;
  FORSEST.ShowModal;
end;

procedure TFORINI.EnvioEMail1Click(Sender: TObject);
var
  DataIni, DataCerta: string;
  data, dataI: TDateTime;
  sGestor, sCopiaOculta, sPara: string;
  sCorpo: TStringList;
  sSituacao, sAssunto, sNomeEmail, sNomeEmpresa: string;
  i: Word;

begin
  sCopiaOculta := '';
  sPara := '';
  Screen.Cursor := crHourGlass;

  dataIni := DateToStr(Date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      DataI := StrToDate(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    // empresa
    InputQuery('Empresa', 'Informe a empresa de in�cio:', sNomeEmpresa);
    sNomeEmpresa := UpperCase(sNomeEmpresa);

    // Calcula a data com 45 dias
    //Data := DataI + 45;
    Data := DataI;


    DataCerta := '''' + FormatDateTime('dd/mm/yyyy', Data) + '''';
   // DataCerta := '''' + DateToStr(Data) + '''';
    //  FormatDateTime('dd/mm/yyyy', Datai)
    Screen.Cursor := crHourGlass;
    with DmDta.quEstResc do
    begin
     // Verificar SQL  Joilson        ok 23/10/2007
      Close;
      Sql.Clear;
{
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome, t.tce_dataini, ');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, ');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
      Sql.Add('e.pcu_anoatual, ''1'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('t.tce_situacao = ''0'' and');
      Sql.Add('t.tce_datafim between :DataCerta  and :DataCerta ');
//    Sql.Add('t.tce_datafim between ' + DataCerta + ' and ' + DataCerta);
    //  Sql.Add('and m.emp_cod = f.emp_cod');
    //  Sql.Add('and m.emp_respent = f.func_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and e.cur_cod = c.cur_cod');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome, t.tce_dataini, t.tce_datafim, a.tpr_dataini,');
      Sql.Add('a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, e.pcu_anoatual, ''2'' as Tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso C');
      Sql.Add('where t.est_cod = e.est_cod and');
      Sql.Add('t.tce_cod = a.tce_cod and');
      Sql.Add('t.emp_cod = m.emp_cod and');
      Sql.Add('T.tce_situacao <> ''7''');
      Sql.Add('and m.emp_cod = f.emp_cod');
     // Sql.Add('and m.emp_respent = f.func_cod');
     // Sql.Add('and e.cur_cod = c.cur_cod');
      Sql.Add(' and m.emp_cod *= f.emp_cod ');
      Sql.Add(' and (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod ');
      Sql.Add('and a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and');
      Sql.Add('a.tpr_datafim between :DataCerta  and  :DataCerta ');
//      Sql.Add('a.tpr_datafim between ' + DataCerta + ' and ' + DataCerta);
      Sql.Add('order by');
      Sql.Add('m.emp_nome, e.est_nome');
      PARAMBYNAME('DATACERTA').VALUE := DATA;
}
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,');
      Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
      Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
      Sql.Add('e.pcu_anoatual, ''1'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C ');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_situacao = ''0'' and ');
      Sql.Add('t.tce_cod not in (select tce_cod from tceaditivo )  and   ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('t.tce_datafim between  :dataIni  and  :dataFim ');
      Sql.Add('union');
      Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim,');
      Sql.Add('a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, ');
      Sql.Add('e.pcu_peratual, e.pcu_anoatual, ''2'' as tipo,');
      Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
      Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso c');
      Sql.Add('where t.est_cod = e.est_cod and ');
      Sql.Add('e.cur_cod = c.cur_cod and ');
      Sql.Add('t.tce_cod = a.tce_cod and ');
      Sql.Add('t.emp_cod = m.emp_cod and ');
      Sql.Add('m.emp_cod *= f.emp_cod and ');
      Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
      Sql.Add('T.tce_situacao <> ''7'' and');
      Sql.Add('a.prg_cod in');
      Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and ');
      Sql.Add('a.tpr_datafim between  :dataIni and :dataFim ') ;
      Sql.Add('order by');
      Sql.Add('m.emp_nome,t.tce_datafim, e.est_nome');
      ParamByName('dataini').AsDateTime := Data;
      ParamByName('datafim').AsDateTime := Data;

      Open;

      if IsEmpty then
      begin
        Screen.Cursor := crDefault;
        MSGERRO('N�o h� estudantes a serem rescindidos no dia: ' + DateToStr(Data) + '!');
        Exit;
      end;

      DisableControls;
      First;

      // posiciona no nome da empresa caso usu�rio tenha selecionado
      if sNomeEmpresa <> '' then
        while (not Eof) and (Pos(sNomeEmpresa, FieldByName('emp_nome').AsString) = 0) do
          Next;

      while not Eof do
      begin
        // Mostra a tela com os dados do estagi�rio

        FORRESC := TFORRESC.Create(Self);
        FORRESC.F2 := True;

        Screen.Cursor := crDefault;
        FORRESC.ShowModal;

        if FORRESC.ModalResult = mrCancel then
          Break;

        Screen.Cursor := crHourGlass;

        sNomeEMail := FORRESC.edNomeDestinatario.Text;
        sNomeEMail := PrimeirasMaiusculas(sNomeEMail);

        sPara := FORRESC.edEMailDestinatario.Text;
        sPara := AnsiLowerCase(sPara);

        sGestor := FORRESC.edGestorEstagiario.Text;
        sGestor := PrimeirasMaiusculas(sGestor);

        FORRESC.Free;

        // corpo do e-mail
        sCorpo := TStringList.Create();
        sCorpo.LoadFromFile(Diretorio + 'CorpoResc.txt');

        // substitui o nome do estudante
        for i := 0 to sCorpo.count - 1 do
        begin
          // substitui o nome do destinat�rio
          if Pos('<nomeemail>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<nomeemail>', sNomeEMail, []);

          // substitui o nome do estudante
          if Pos('<nomeestudante>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<nomeestudante>', FieldByName('est_nome').Text, []);

          // substitui o nome da empresa
          if Pos('<nomeempresa>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<nomeempresa>', FieldByName('emp_nome').Text, []);

          // substitui a data de t�rmino
          if Pos('<datatermino>', sCorpo[i]) > 0 then
          begin
            if (FieldByName('tpr_datafim').Text <> '') then
              sCorpo[i] := stringReplace(sCorpo[I], '<datatermino>', FieldByName('tpr_datafim').Text, [])
            else
              sCorpo[i] := stringReplace(sCorpo[I], '<datatermino>', FieldByName('tce_datafim').Text, []);
          end;

          // substitui n�mero de meses
          if Pos('<meses>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<meses>', FieldByName('MesesEstagiando').Text, []);

          // substitui a situa��o
          if Pos('<situacao>', sCorpo[i]) > 0 then
          begin
            // testa se n�o chegou nos 24 meses.
            if FieldByName('MesesEstagiando').AsInteger = 24 then
              sSituacao := 'RESCINDIDO. '
            else
              sSituacao := 'RESCINDIDO ou PRORROGADO. ';

            // testa se tem GESTOR
            if Trim(sGestor) <> '' then
              sSituacao := sSituacao + #13 + #13 + 'Gestor: ' + PrimeirasMaiusculas(sGestor) + '.';

            sCorpo[i] := stringReplace(sCorpo[I], '<situacao>', sSituacao, []);
          end;
        end;

        sAssunto := 'Vencimento do Termo de Compromisso de Est�gio - ' +
          FieldByName('est_nome').Text;

        // manda e-mail para o estudante
        FOREML := TFOREML.Create(Self);
        FOREML.RegistrarEmail(sAssunto, sPara, sCopiaOculta, sCorpo, nil, 'E-Mail do Respons�vel pela Empresa:');
        Screen.Cursor := crDefault;
        FOREML.ShowModal;

        Next;
      end;

      First;
      EnableControls;
    end;
  end;
end;

procedure TFORINI.TotaisdeCadastro1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTEST := TFORSTEST.Create(Self);
  Screen.Cursor := crDefault;
  FORSTEST.ShowModal;
end;

procedure TFORINI.EstatsticasGerais1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORESTME := TFORESTME.Create(Self);
  Screen.Cursor := crDefault;
  FORESTME.ShowModal;
end;

procedure TFORINI.Funcionrios1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFUN := TFORFUN.Create(Self);
  Screen.Cursor := crDefault;
  FORFUN.ShowModal;
end;

procedure TFORINI.Estudantes4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  // e-mails dos estudantes
  DmDta.quEMailEstudante.Open;
  //GerarExcel(DmDta.quEMailEstudante, 'E-Mails dos Estudantes');

  campos.Items.Clear;
  ExportarDadosExcel(DmDta.quEMailEstudante, campos, '', 'E-Mails dos Estudantes', '');
  DmDta.quEMailEstudante.Close;



  Screen.Cursor := crDefault;
end;

procedure TFORINI.Estudantes5Click(Sender: TObject);
var ano, mes, dia: Word;
  dataini: string;
begin
  dataini := DateToStr(date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    DecodeDate(StrToDate(dataini), ano, mes, dia);
    Screen.Cursor := crHourGlass;
    with DmDta.quAnivEstudante do
    begin
      ParamByName('dia').AsInteger := Dia;
      ParamByName('mes').AsInteger := Mes;
      Open;
    end;
    GerarExcel(dmDta.quAnivEstudante, 'Estudantes Aniversariantes', 'Dia ' + dataini);
    Screen.Cursor := crHourGlass;
    DmDta.quAnivEstudante.Close;
  end;
end;

procedure TFORINI.Empresas3Click(Sender: TObject);
var ano, mes, dia: Word;
  dataini: string;
begin
  dataini := DateToStr(date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    DecodeDate(StrToDate(dataini), ano, mes, dia);
    Screen.Cursor := crHourGlass;
    with DmDta.quAnivEmpresa do
    begin
      ParamByName('dia').AsInteger := Dia;
      ParamByName('mes').AsInteger := Mes;
      Open;
    end;
    GerarExcel(dmDta.quAnivEmpresa, 'Func. Empresa Aniversariantes', 'Dia ' + dataini);
    Screen.Cursor := crHourGlass;
    DmDta.quAnivEmpresa.Close;
  end;
end;

procedure TFORINI.Instituies3Click(Sender: TObject);
var ano, mes, dia: Word;
  dataini: string;
begin
  dataini := DateToStr(date);
  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    DecodeDate(StrToDate(dataini), ano, mes, dia);
    Screen.Cursor := crHourGlass;
    with DmDta.quAnivInstituicao do
    begin
      ParamByName('dia').AsInteger := Dia;
      ParamByName('mes').AsInteger := Mes;
      Open;
    end;
    GerarExcel(dmDta.quAnivInstituicao, 'Func. Institui��o Aniversariantes', 'Dia ' + DataIni);
    Screen.Cursor := crHourGlass;
    DmDta.quAnivInstituicao.Close;
  end;
end;

procedure TFORINI.Dirio2Click(Sender: TObject);
var
  Data: TDateTime;
  DataIni: string;
  var1: Variant;

begin
  DataIni := DateToStr(Date);

  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      Data := StrToDateTime(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    with DmDta.quBuscaEmpresa do
    begin
      Sql.Clear;
      Sql.Add('select e.emp_cod, e.emp_nome, e.emp_dtinc');
      Sql.Add('from Empresa e');
      Sql.Add('where e.emp_dtinc = ' + QuotedStr(FormatDateTime('dd/mm/yyyy', data)));
      Sql.Add('order by e.emp_nome');

      Open;
      first;

      if Eof then
      begin
        MSGAVISO('N�o h� empresas cadastradas no dia ' + DataIni);
        Exit;
      end;

      Screen.Cursor := crHourGlass;
      var1 := CreateOleObject('Word.basic');
      var1.FileOpen(Diretorio + 'RelEmpresaDia.doc');

      var1.Insert('Empresas Cadastradas no dia ' + DataIni);
      Var1.NextCell;

      while not Eof do
      begin
        Var1.Insert(FieldByName('emp_nome').Text);
        Var1.NextCell;
        Next;
      end;

      Close;
      var1.AppShow;
    end;
  end;
end;

procedure TFORINI.PorPerodo2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSECA := TFORSECA.Create(Self);
  Screen.Cursor := crDefault;
  FORSECA.ShowModal;
end;

procedure TFORINI.Dirio3Click(Sender: TObject);
var
  Data: TDateTime;
  DataIni: string;
  var1: Variant;

begin
  DataIni := DateToStr(Date);

  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      Data := StrToDateTime(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    with DmDta.quBuscaTCE do
    begin
      Sql.Clear;
      Sql.Add('select t.*, i.inst_nome, c.cur_nome, e.est_nome, m.emp_nome, e.est_email');
      Sql.Add('from TCE t, Estudante e, Instituicao I, Curso C, Empresa M');
      Sql.Add('where e.inst_cod = i.inst_cod and e.cur_cod = c.cur_cod');
      Sql.Add('and t.emp_cod = m.emp_cod and t.est_cod = e.est_cod');
      Sql.Add('and t.tce_data = ' + QuotedStr(FormatDateTime('dd/mm/yyyy', data)));
      Sql.Add('and t.est_cod = e.est_cod');
      Sql.Add('order by e.est_nome');
      Open;
      first;

      if Eof then
      begin
        MSGAVISO('N�o h� TCE�s emitidos no dia ' + DataIni);
        Exit;
      end;

      Screen.Cursor := crHourGlass;
      var1 := CreateOleObject('Word.basic');
      var1.Filenew(Diretorio + 'reltce.dot');

      var1.Insert('TCE''s emitidos no dia ' + DataIni);
      Var1.NextCell;

      while not Eof do
      begin
        Var1.Insert('Empresa:');
        Var1.NextCell;
        Var1.Insert(FieldByName('emp_nome').Text);
        Var1.NextCell;

        Var1.Insert('Nome do Estudante:');
        Var1.NextCell;
        Var1.Insert(FieldByName('est_nome').Text);
        Var1.NextCell;

        Var1.Insert('Curso do Estudante:');
        Var1.NextCell;
        Var1.Insert(FieldByName('cur_nome').Text);
        Var1.NextCell;

        Var1.Insert('TCE:');
        Var1.NextCell;
        Var1.Insert(FieldByName('tce_cod').Text);
        Var1.NextCell;

        Var1.Insert('Institui��o de Ensino:');
        Var1.NextCell;
        Var1.Insert(FieldByName('inst_nome').Text);
        Var1.NextCell;

        Var1.Insert('Data de In�cio do TCE:');
        Var1.NextCell;
        Var1.Insert(FieldByName('tce_dataini').Text);
        Var1.NextCell;

        Var1.NextCell;
        Var1.NextCell;
        Next;
      end;
      Close;
      var1.AppShow;
    end;
  end;
end;

procedure TFORINI.Porperodo3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTCA := TFORSTCA.Create(Self);
  Screen.Cursor := crDefault;
  FORSTCA.ShowModal;
end;

procedure TFORINI.Dirio4Click(Sender: TObject);
var
  Data: TDateTime;
  DataIni: string;
  var1: Variant;

begin
  DataIni := DateToStr(Date);

  if InputQuery('Data Inicial', 'Informe a data de refer�ncia:', DataIni) then
  begin
    try
      Data := StrToDateTime(DataIni);
    except
      MSGERRO('Par�metro errado. Tente novamente!');
      Exit;
    end;

    with DmDta.quBuscaTCE do
    begin
      Sql.Clear;
      Sql.Add('select t.*, i.inst_nome, c.cur_nome, m.emp_nome, e.est_nome, e.est_email');
      Sql.Add('from TCE t, Estudante e, Instituicao I, Curso C, Empresa M');
      Sql.Add('where e.inst_cod = i.inst_cod and e.cur_cod = c.cur_cod');
      Sql.Add('and t.emp_cod = m.emp_cod and t.est_cod = e.est_cod');
      Sql.Add('and t.tce_datares = ' + QuotedStr(FormatDateTime('dd/mm/yyyy', data)));
      Sql.Add('and t.est_cod = e.est_cod');
      Sql.Add('order by e.est_nome');
      Open;
      first;

      if Eof then
      begin
        MSGAVISO('N�o h� TCE�s rescindidos no dia ' + DataIni);
        Exit;
      end;

      Screen.Cursor := crHourGlass;
      var1 := CreateOleObject('Word.basic');
      var1.FileOpen(Diretorio + 'reltce.doc');

      var1.Insert('TCE''s rescindidos no dia ' + DataIni);
      Var1.NextCell;

      while not Eof do
      begin
        Var1.Insert('Empresa:');
        Var1.NextCell;
        Var1.Insert(FieldByName('emp_nome').Text);
        Var1.NextCell;

        Var1.Insert('Nome do Estudante:');
        Var1.NextCell;
        Var1.Insert(FieldByName('est_nome').Text);
        Var1.NextCell;

        Var1.Insert('Curso do Estudante:');
        Var1.NextCell;
        Var1.Insert(FieldByName('cur_nome').Text);
        Var1.NextCell;

        Var1.Insert('TCE:');
        Var1.NextCell;
        Var1.Insert(FieldByName('tce_cod').Text);
        Var1.NextCell;

        Var1.Insert('Institui��o de Ensino:');
        Var1.NextCell;
        Var1.Insert(FieldByName('inst_nome').Text);
        Var1.NextCell;

        Var1.Insert('Data de In�cio do TCE:');
        Var1.NextCell;
        Var1.Insert(FieldByName('tce_dataini').Text);
        Var1.NextCell;

        Var1.NextCell;
        Var1.NextCell;
        Next;
      end;

      Close;

      var1.AppShow;
    end;
  end;
end;

procedure TFORINI.Porperodo4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTCR := TFORSTCR.Create(Self);
  Screen.Cursor := crDefault;
  FORSTCR.ShowModal;
end;

procedure TFORINI.odas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  // e-mails das institui��es
  with DmDta.quEMailInstituicao do
  begin
    Sql.Clear;
    Sql.Add('select  i.inst_nome, ifu.ifu_nome, ifu.ifu_email');
    Sql.Add('from 	 instituicao i (nolock), instfuncionario ifu (nolock)');
    Sql.Add('where 	 ifu.inst_cod = i.inst_cod');
    Sql.Add('order by i.inst_nome, ifu.ifu_nome');
    Open;
    GerarExcel(DmDta.quEMailInstituicao, 'E-Mails das Institui��es de Ensino');
    Close;
  end;

  Screen.Cursor := crDefault;
end;

procedure TFORINI.Ativas1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  // e-mails das institui��es
  with DmDta.quEMailInstituicao do
  begin
    Sql.Clear;
    Sql.Add('select i.inst_nome, ifu.ifu_nome, ifu.ifu_email');
    Sql.Add('from 	instituicao i (nolock), instfuncionario ifu (nolock)');
    Sql.Add('where 	ifu.inst_cod = i.inst_cod');
    Sql.Add('and    i.inst_cod in (select inst_cod from Estudante where est_cod in (select est_cod from Tce where tce_situacao <> ''7''))');
    Sql.Add('order by i.inst_nome, ifu.ifu_nome');
    Open;
    GerarExcel(DmDta.quEMailInstituicao, 'E-Mails das Institui��es de Ensino');
    Close;
  end;

  Screen.Cursor := crDefault;
end;

procedure TFORINI.odas2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  with DmDta.quEMailEmpresa do
  begin
    Sql.Clear;
    Sql.Add('select  e.emp_nome, efu.efu_nome, efu.efu_email');
    Sql.Add('from 	 Empfuncionario efu (nolock), Empresa e (nolock)');
    Sql.Add('where 	 efu.emp_cod = e.emp_cod');
    Sql.Add('order by e.emp_nome, efu.efu_nome');

    // e-mails das empresas
    Open;
    GerarExcel(DmDta.quEMailEmpresa, 'E-Mails das Empresas');
    Close;
  end;

  Screen.Cursor := crDefault;
end;

procedure TFORINI.Ativas2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  {with DmDta.quEMailEmpresa do
  begin
    Sql.Clear;
    Sql.Add('select e.emp_nome, efu.efu_nome, efu.efu_email');
    Sql.Add('from 	Empfuncionario efu (nolock), Empresa e (nolock)');
    Sql.Add('where 	efu.emp_cod = e.emp_cod');
    Sql.Add('and    e.emp_cod in (select emp_cod from Tce where tce_situacao <> ''7'')');
    Sql.Add('order by e.emp_nome, efu.efu_nome');
    sql.add('');
    // e-mails das empresas
    Open;
    GerarExcel(DmDta.quEMailEmpresa, 'E-Mails das Empresas');
    Close;
  end;}

  with DmDta.qrypesquisa do
  begin
    Sql.Clear;

    Sql.Text := memo5.Text;

    // e-mails das empresas
    Open;
    GerarExcel(DmDta.qrypesquisa, 'E-Mails das Empresas');
    Close;
  end;



  Screen.Cursor := crDefault;

end;

procedure TFORINI.FormShow(Sender: TObject);
begin
  diretorio := ExtractFileDir(ParamStr(0)) + '\';

  if dmdta.MostrarInconsistenciasNoLogin then
  begin
    timMostrarInconsistencia.Enabled := true;
    pnlMostrarInconsistencia.Visible := true;
  end else
    pnlMostrarInconsistencia.Visible := false;
end;

procedure TFORINI.CandidatosEnviados1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSVAG := TFORSVAG.Create(Self);
  Screen.Cursor := crDefault;
  FORSVAG.ShowModal;
end;

procedure TFORINI.Fornecedores1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFOR := TFORFOR.Create(Self);
  Screen.Cursor := crDefault;
  FORFOR.ShowModal;
end;

procedure TFORINI.ContasaPagar1Click(Sender: TObject);
begin
{  Screen.Cursor := crHourGlass;
  FORCPG := TFORCPG.Create(Self);
  Screen.Cursor := crDefault;
  FORCPG.ShowModal;}
end;

procedure TFORINI.FuncionrioporEmpresa1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEMPJ1 := TFORSEMPJ1.Create(Self);
  Screen.Cursor := crDefault;
  FORSEMPJ1.ShowModal;

end;

procedure TFORINI.Formulrio1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Formulario := TFormulario.Create(Self);
  Screen.Cursor := crDefault;
  Formulario.preview;
  Formulario.free;


end;

procedure TFORINI.SituacaoTCEs1Click(Sender: TObject);
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.ShowModal;
  if frmintervalo.modalresult = mrok then
  begin
    with dmdta.qrytces do
    begin
      close;
      sql.Clear;
      sql.Text := memo1.text;
      if frmintervalo.filtro.ItemIndex = 0 then
        sql.Text := sql.Text + ' ' + 'where  Vaga.Vag_dataabertura  between  :inicio and :final ORDER BY Vaga.Vag_cod DESC '
      else
        sql.Text := sql.Text + ' ' + 'where  tce.tce_data  between  :inicio and :final ORDER BY Vaga.Vag_cod DESC ';

      parambyname('inicio').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
      parambyname('final').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date);
      open;
      campos.Items.Clear;
      campos.Items.Add('Qtde.');
      campos.Items.Add('Preenc.');
      ExportarDadosExcel(dmdta.qrytces, campos, '', 'Tces', 'Per�odo ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + ' - ' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date));
      close;
    end;
  end;
end;

procedure TFORINI.ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
var
  Excel: Variant;
  cor, ColunasVisiveis, Linha, i, coluna: Integer;
  totalcoluna: array of variant;
  totalcolunageral: array of variant;
  quebranova, quebra1: string;
begin
  SetLength(totalcoluna, campos.Items.Count);
  SetLength(totalcolunageral, campos.Items.Count);
  cor := 15;
  for i := 0 to campos.Items.Count - 1 do
  begin
    totalcoluna[i] := 0;
    totalcolunageral[i] := 0;
  end;

  ColunasVisiveis := 0;
  for i := 0 to Query.FieldCount - 1 do
  begin
    if Query.Fields[i].Visible then
      Inc(ColunasVisiveis);
  end;
  if not Query.IsEmpty then
  begin
    query.Last;
    Query.First;

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := false;
    Excel.Workbooks.Add;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Excel.Cells[1, 1] := AnsiUpperCase(Titulo);
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Excel.Cells[2, 1] := SubTitulo;
    Linha := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    Excel.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    Excel.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    Excel.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;

    Linha := 4;

    while not Query.Eof do
    begin
      coluna := -1;
      for i := 0 to Query.FieldCount - 1 do
        if Query.Fields[i].Visible then
        begin
          inc(coluna);
          if campos.Items.Count > 0 then
          begin
            if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
            begin
              totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
              totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
            end;
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].Value;
        end;
      Query.Next;
      if (quebra <> '') and (query.eof = false) then
        for i := 0 to Query.FieldCount - 1 do
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebranova := Query.Fields[i].value;
      Linha := Linha + 1;
      if (query.eof) or (quebranova <> quebra1) then
      begin
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if campos.Items.Count > 0 then
            begin
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
              begin
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
              end;
            end;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        inc(linha);
        inc(linha);
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if query.Eof = false then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName
            else
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
            if quebra <> '' then
              if quebra = Query.Fields[i].fieldName then
                quebra1 := Query.Fields[i].value;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        inc(cor);
        if query.Eof = false then
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 19
        else
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 12;

        for i := 0 to campos.Items.Count - 1 do
        begin
          totalcoluna[i] := 0;
        end;
        quebra1 := quebranova;
        inc(linha);
      end;

    end;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
          end;
        end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
      end;

    excel.columns.AutoFit; // esta linha � para fazer com que o Excel dimencione as c�lulas adequadamente.
    excel.visible := True;
  end;
end;




procedure TFORINI.OportunidadespoEmpresa1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEMPopt := TFORSEMPopt.Create(Self);
  Screen.Cursor := crDefault;
  FORSEMPopt.ShowModal;
end;

procedure TFORINI.PromoverAlunos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORPROMALUNO := TFORPROMALUNO.Create(Self);
  Screen.Cursor := crDefault;
  FORPROMALUNO.ShowModal;
end;

procedure TFORINI.Relao1Click(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  FORSEMP_E := TFORSEMP_E.Create(Self);
  Screen.Cursor := crDefault;
  FORSEMP_E.ShowModal;

end;

procedure TFORINI.SemRetorno1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSTCASR := TFORSTCASR.Create(Self);
  Screen.Cursor := crDefault;
  FORSTCASR.ShowModal;
end;

procedure TFORINI.Word1Click(Sender: TObject);
var Var1: Variant;
  cpf: string;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL2 := TFORSEL2.Create(Self);
  forsel2.outros.Visible := true;
  Screen.Cursor := crDefault;
  FORSEL2.ShowModal;
  if (forsel2.data <> 0) and (forsel2.datafim <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    data1 := '''' + datetostr(forsel2.Data) + '''';
    //'''01/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';
    data2 := '''' + datetostr(forsel2.Datafim) + '''';
    //'''' + IntToStr(RetornaDiasMes(FORSEL1.Mes, FORSEL1.Ano)) + '/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '''';

    var1 := CreateOleObject('Word.Basic');
    var1.FileNew(Diretorio + 'Rel_Estagiarios2.dot');
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('select emp_nome,emp_cod from empresa where emp_cod = (select emp_cod from tce where tce_cod = :tce) ');

    with DmDta.qrypesq do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  est_nome, est_cpf, est_dtnasc,est_conta,est_agencia,est_banco,est_rg,');
      Sql.add(' case  when (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) is not null then ');
      Sql.add(' (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) ');
      Sql.add(' else (select  tce_cod   from  Tce  X where   x.tce_cod in ');
      Sql.add(' (select  t.tce_cod from TceAditivo TA, Tce t ');
      Sql.add(' where ta.tce_cod = t.tce_cod and  t.tce_situacao <> ''0'' and    t.tce_situacao <> ''7'' and ');
      Sql.add(' ta.tpr_dataini < ' + data2 + ' and ta.tpr_datafim > ' + data1 + ' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod  )) ');
      Sql.add(' end as tce ');
      Sql.Add('from');
      Sql.Add('  estudante');
      if forsel2.outros.Checked then
        Sql.Add('where  (est_banco <> ''Banco Ita�'' or est_banco is null) and')
      else
        Sql.Add('where  est_banco = ''Banco Ita�'' and');
      Sql.Add('  est_cod in');
      Sql.Add('(select');
      Sql.Add('  est_cod');
      Sql.Add(' from ');
      Sql.Add('  Tce');
      Sql.Add('where');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select tce_cod from Tce');
      Sql.Add('   where tce_situacao = ''0'' and');
      Sql.Add('   tce_dataini < ' + data2 + ' and');
      Sql.Add('   tce_datafim > ' + data1 + ') or');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
      Sql.Add('   where ta.tce_cod = t.tce_cod and');
      Sql.Add('   t.tce_situacao <> ''0'' and');
      Sql.Add('   t.tce_situacao <> ''7'' and');
      Sql.Add('   ta.tpr_dataini < ' + data2 + ' and');
      Sql.Add('   ta.tpr_datafim > ' + data1 + '))');
      Sql.Add('order by');
      Sql.Add('  est_nome');
      Open;
      First;

      Var1.Bold;
     // var1.editbookmark('Periodo', 0, 0, 0, 1);
      //var1.Insert(#13 + 'M�s: ' + Copy('00' + IntToStr(FORSEL1.mes), length(IntToStr(FORSEL1.mes)) + 1, 2) + '/' + IntToStr(FORSEL1.ano) + #13 + #13);
     // var1.Insert(#13 + 'Periodo: '+ Data1 +' .. '+data2+ #13 + #13);
      var1.editbookmark('Inicio', 0, 0, 0, 1);

      while not eof do
      begin
        qrypesquisa.close;
        qrypesquisa.ParamByName('tce').asstring := FieldByName('tce').AsString;
        qrypesquisa.Open;

        var1.Insert(FieldByName('tce').AsString);
        var1.Insert(#9 + FieldByName('est_nome').AsString);
        var1.Insert(#9 + FieldByName('est_rg').AsString);

        cpf := FieldByName('est_cpf').AsString;
        if cpf <> '' then
          cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
        var1.Insert(#9 + cpf);

        var1.Insert(#9 + copy(qrypesquisa.FieldByName('emp_nome').asstring, 1, 51));
        var1.Insert(#9 + FieldByName('est_banco').AsString);
        var1.Insert(#9 + FieldByName('est_agencia').AsString);
        var1.Insert(#9 + FieldByName('est_conta').AsString + #13);
        Next;
      end;

      Var1.Insert(#13);
      Var1.Insert(#9 + #9 + '                Total de estagi�rios: ' + IntToStr(RecordCount) + #9);
      var1.Insert('Periodo: ' + datetostr(forsel2.Data) + ' .. ' + datetostr(forsel2.Datafim) + #13 + #13);
      Close;
    end;
    var1.AppShow;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFORINI.Excel1Click(Sender: TObject);
var Var1: Variant;
  cpf: string;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL2 := TFORSEL2.Create(Self);
  forsel2.outros.Visible := true;
  Screen.Cursor := crDefault;
  FORSEL2.ShowModal;
  if (forsel2.data <> 0) and (forsel2.datafim <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    data1 := '''' + datetostr(forsel2.Data) + '''';
    data2 := '''' + datetostr(forsel2.Datafim) + '''';

    with DmDta.qryitau do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  est_nome, est_cpf, est_dtnasc,est_conta,est_agencia,est_banco,est_rg,');
      Sql.add(' case  when (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) is not null then ');
      Sql.add(' (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) ');
      Sql.add(' else (select  tce_cod   from  Tce  X where   x.tce_cod in ');
      Sql.add(' (select  t.tce_cod from TceAditivo TA, Tce t ');
      Sql.add(' where ta.tce_cod = t.tce_cod and  t.tce_situacao <> ''0'' and    t.tce_situacao <> ''7'' and ');
      Sql.add(' ta.tpr_dataini < ' + data2 + ' and ta.tpr_datafim > ' + data1 + ' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod  )) ');
      Sql.add(' end as tce ');
      Sql.Add('from');
      Sql.Add('  estudante');
      if forsel2.outros.Checked then
        Sql.Add('where  (est_banco <> ''Banco Ita�'' or est_banco is null) and')
      else
        Sql.Add('where  est_banco = ''Banco Ita�'' and');
      Sql.Add('  est_cod in');
      Sql.Add('(select');
      Sql.Add('  est_cod');
      Sql.Add(' from ');
      Sql.Add('  Tce');
      Sql.Add('where');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select tce_cod from Tce');
      Sql.Add('   where tce_situacao = ''0'' and');
      Sql.Add('   tce_dataini < ' + data2 + ' and');
      Sql.Add('   tce_datafim > ' + data1 + ') or');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
      Sql.Add('   where ta.tce_cod = t.tce_cod and');
      Sql.Add('   t.tce_situacao <> ''0'' and');
      Sql.Add('   t.tce_situacao <> ''7'' and');
      Sql.Add('   ta.tpr_dataini < ' + data2 + ' and');
      Sql.Add('   ta.tpr_datafim > ' + data1 + '))');
      Sql.Add('order by');
      Sql.Add('  est_nome');
      Open;
      First;
      campos.Items.Clear;
      if forsel2.outros.Checked then
        ExportarDadosExcel(DmDta.qryitau, campos, '', 'Relat�rio Geral Outros Bancos', 'Per�odo ' + formatdatetime('dd/mm/yyyy', forsel2.Data) + ' - ' + formatdatetime('dd/mm/yyyy', forsel2.Datafim))
      else
        ExportarDadosExcel(DmDta.qryitau, campos, '', 'Relat�rio Geral Ita�', 'Per�odo ' + formatdatetime('dd/mm/yyyy', forsel2.Data) + ' - ' + formatdatetime('dd/mm/yyyy', forsel2.Datafim));
//      GerarExcel(DmDta.qryitau, 'Relat�rio Geral Ita�');
      Close;
    end;
  end;
end;

procedure TFORINI.EstagiriosCetefe1Click(Sender: TObject);
var Var1: Variant;
  cpf: string;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL3 := TFORSEL3.Create(Self);

  Screen.Cursor := crDefault;
  FORSEL3.ShowModal;
  if (forsel3.data <> 0) and (forsel3.datafim <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    data1 := '''' + datetostr(forsel3.Data) + '''';
    data2 := '''' + datetostr(forsel3.Datafim) + '''';

    with DmDta.qryitau do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  est_nome, est_cpf, est_dtnasc,est_conta,est_agencia,est_banco,est_rg,');
      Sql.add(' case  when (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add('  tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) is not null then ');
      Sql.add(' (select  tce_cod   from  Tce  X where  x.tce_cod in ');
      Sql.add(' (select tce_cod from Tce   where tce_situacao = ''0'' and tce_dataini < ' + data2 + ' and ');
      Sql.add(' tce_datafim > ' + data1 + '  and est_cod =estudante.est_cod ) ) ');
      Sql.add(' else (select  tce_cod   from  Tce  X where   x.tce_cod in ');
      Sql.add(' (select  t.tce_cod from TceAditivo TA, Tce t ');
      Sql.add(' where ta.tce_cod = t.tce_cod and  t.tce_situacao <> ''0'' and    t.tce_situacao <> ''7'' and ');
      Sql.add(' ta.tpr_dataini < ' + data2 + ' and ta.tpr_datafim > ' + data1 + ' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod  )) ');
      Sql.add(' end as tce ');
      Sql.Add('from');
      Sql.Add('  estudante');
      if forsel3.bancos.ItemIndex = 0 then
        Sql.Add('where ');
      if forsel3.bancos.ItemIndex = 2 then
        Sql.Add('where  ((est_banco <> ''Banco Ita�'') or (est_banco is null)) and');
      if forsel3.bancos.ItemIndex = 1 then
        Sql.Add('where  est_banco = ''Banco Ita�'' and');


      Sql.Add('  est_cod in');
      Sql.Add('(select');
      Sql.Add('  est_cod');
      Sql.Add(' from ');
      Sql.Add('  Tce');
      Sql.Add('where');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select tce_cod from Tce');
      Sql.Add('   where tce_situacao = ''0'' and');
      Sql.Add('   tce_dataini < ' + data2 + ' and');
      Sql.Add('   tce_datafim > ' + data1 + ') and  emp_cod in (select emp_cod from empresa where emp_formapgto =''CETEFE'')  or');
      Sql.Add('  tce_cod in');
      Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
      Sql.Add('   where ta.tce_cod = t.tce_cod and');
      Sql.Add('   t.tce_situacao <> ''0'' and');
      Sql.Add('   t.tce_situacao <> ''7'' and');
      Sql.Add('   ta.tpr_dataini < ' + data2 + ' and');
      Sql.Add('   ta.tpr_datafim > ' + data1 + ' and  emp_cod in (select emp_cod from empresa where emp_formapgto =''CETEFE'') ))');
      Sql.Add('order by');
      Sql.Add('  est_nome');
      Open;
      First;
      campos.Items.Clear;
      if forsel3.bancos.itemindex = 0 then
        ExportarDadosExcel(DmDta.qryitau, campos, '', 'Relat�rio Geral (Cetefe)', 'Per�odo ' + formatdatetime('dd/mm/yyyy', forsel3.Data) + ' - ' + formatdatetime('dd/mm/yyyy', forsel3.Datafim));
      if forsel3.bancos.itemindex = 2 then
        ExportarDadosExcel(DmDta.qryitau, campos, '', 'Relat�rio Geral Outros Bancos (Cetefe)', 'Per�odo ' + formatdatetime('dd/mm/yyyy', forsel3.Data) + ' - ' + formatdatetime('dd/mm/yyyy', forsel3.Datafim));
      if forsel3.bancos.itemindex = 1 then
        ExportarDadosExcel(DmDta.qryitau, campos, '', 'Relat�rio Geral Ita� (Cetefe)', 'Per�odo ' + formatdatetime('dd/mm/yyyy', forsel3.Data) + ' - ' + formatdatetime('dd/mm/yyyy', forsel3.Datafim));

//      GerarExcel(DmDta.qryitau, 'Relat�rio Geral Ita�');
      Close;
    end;
  end;
end;

procedure TFORINI.FolhadePagamentolotes1Click(Sender: TObject);

var Var1: Variant;
  cpf: string;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL1 := TFORSEL1.Create(Self);

  Screen.Cursor := crDefault;
  FORSEL1.ShowModal;
  if (forsel1.edmes.Text <> '') and (forsel1.edano.Text <> '') then
  begin
    Screen.Cursor := crHourGlass;
    qryitenslote.Close;
    qryitenslote.ParamByName('ano').AsString := forsel1.edano.Text;
    qryitenslote.ParamByName('mes').AsString := forsel1.edmes.Text;
    qryitenslote.open;
    campos.Items.Clear;
    ExportarDadosExcel(qryitenslote, campos, '', 'Relat�rio Pagamentos Efetuados (Cetefe)', 'Per�odo ' + forsel1.edano.Text + ' - ' + forsel1.edmes.Text);
    qryitenslote.close;
  end;

end;

procedure TFORINI.RelatoriodeFaturasNoEmitidas1Click(Sender: TObject);
var
  data1, data2: string;
  x: integer;
begin
  Screen.Cursor := crHourGlass;
  FORSEL1 := TFORSEL1.Create(Self);
  Screen.Cursor := crDefault;
  FORSEL1.ShowModal;

  if (FORSEL1.Ano <> 0) and (FORSEL1.Mes <> 0) then
  begin
    qryne.Close;
    qryne.SQL.Clear;
    for x := 0 to memo3.Lines.count - 1 do
      qryne.SQL.add(memo3.Lines[x]);
    data1 := '01/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '';
    data2 := '' + IntToStr(RetornaDiasMes(FORSEL1.Mes, FORSEL1.Ano)) + '/' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano) + '';
    qryne.ParamByName('datainicial').value := strtodate(data1);
    qryne.ParamByName('datafinal').value := strtodate(data2);
    qryne.ParamByName('xmes').asstring := inttostr(FORSEL1.Mes);
    qryne.ParamByName('xano').asstring := inttostr(FORSEL1.ano);
    qryne.Open;
    campos.Items.Clear;
    ExportarDadosExcel(qryne, campos, '', 'Relat�rio Empresas Sem Fatura', 'Per�odo ' + IntToStr(FORSEL1.Mes) + '/' + IntToStr(FORSEL1.Ano));
    qryne.close;
  end;
  FORSEL1.Free;
end;

procedure TFORINI.QryItensLoteCalcFields(DataSet: TDataSet);
begin
  if (not qryitenslote.isempty) and
    (qryitenslotelot_numero.asstring <> '') then
  begin
    if qryitenslotecod_retorno.AsString = '00' then
      qryitensloteRetorno.AsString := 'PAGAMENTO EFETUADO';
    if qryitenslotecod_retorno.AsString = 'AE' then
      qryitensloteRetorno.AsString := 'DATA DE PAGAMENTO ALTERADA';
    if qryitenslotecod_retorno.AsString = 'AG' then
      qryitensloteRetorno.AsString := 'NUMERO DE LOTE INV�LIDO';
    if qryitenslotecod_retorno.AsString = 'AH' then
      qryitensloteRetorno.AsString := 'N�MERO SEQUENCIAL DE RESTRO NO LOTE INV�LIDO';
    if qryitenslotecod_retorno.AsString = 'AI' then
      qryitensloteRetorno.AsString := 'PRODUTO DEMOSTRATIVO DE PAGAMENTO N�O CONTRATADO';
    if qryitenslotecod_retorno.AsString = 'AJ' then
      qryitensloteRetorno.AsString := 'TIPO DE MOVIMENTO INV�LIDO';
    if qryitenslotecod_retorno.AsString = 'AL' then
      qryitensloteRetorno.AsString := 'C�DIGO DO BANCO FAVORECIDO INV�LIDO';
    if qryitenslotecod_retorno.AsString = 'AM' then
      qryitensloteRetorno.AsString := 'AG�NCIA DO FAVORECIDO INV�LIDA';
    if qryitenslotecod_retorno.AsString = 'AN' then
      qryitensloteRetorno.AsString := 'CONTA CORRENTE DO FAVORECIDO INV�LIDA';
    if qryitenslotecod_retorno.AsString = 'AO' then
      qryitensloteRetorno.AsString := 'NOME DO FAVORECIDO INV�LIDO';
    if qryitenslotecod_retorno.AsString = 'AP' then
      qryitensloteRetorno.AsString := 'DATA DE PAGAMENO/DATA DE VALIDADE/ HORA DO LANCAMENTO ARRECADA��O / APURA��O INV�LIDA';
    if qryitenslotecod_retorno.AsString = 'AQ' then
      qryitensloteRetorno.AsString := 'QUANTIDADE DE REGISTROS MAIOR DE 999999';
    if qryitenslotecod_retorno.AsString = 'BD' then
      qryitensloteRetorno.AsString := 'PAGAMENTO AGENDADO';
  end;
end;

procedure TFORINI.LerArquivodeRetorno1Click(Sender: TObject);
var
  arqs: textfile;
  novoarquivo, procura, arquivo, linha, dataoc: string;
  valor, status, valorconfirmado, ocorrencia: string;
  x, y: integer;
  xx, zz: integer;
begin
  if open.Execute then
  begin
    arquivo := open.FileName;
    screen.Cursor := crSqlWait;
    assignfile(arqs, arquivo);
    reset(arqs);
    xx := 0;
    zz := 0;
    while not eof(arqs) do
    begin
      readln(arqs, linha);
      linha := trim(linha);
      procura := copy(linha, 38, 25);
      if (copy(linha, 8, 1) = '3') and (trim(copy(linha, 231, 2)) <> '') then
      begin
        inc(x);
        procura := copy(linha, 38, 25);
        atualiza.Close;
        atualiza.SQL.Clear;
        atualiza.SQL.Add('update FolhaPgto set cod_retorno=:ret where fat_numero=:fatura  and est_cod in (select est_cod from estudante where est_cpf =:cpf) ');
        atualiza.ParamByName('ret').AsString := trim(copy(linha, 231, 2));
        atualiza.ParamByName('fatura').AsString := trim(copy(linha, 74, 8));
        atualiza.ParamByName('cpf').Asstring := trim(copy(linha, 207, 11));
        atualiza.ExecSQL;
        if atualiza.RowsAffected > 0 then
          inc(xx);
      end;
    end;
    screen.Cursor := crDefault;
    closefile(arqs);
    renamefile(arquivo, copy(arquivo, 1, pos('.', arquivo)) + 'LRet');
    if xx > 0 then
      showmessage(inttostr(xx) + ' Lancamento(s) atualizado(s) ')
  //  rename(pchar(arquivo),pchar(copy(arquivo,1,pos('.',arquivo))+'LRet'));
  end;
end;

procedure TFORINI.Requisitos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FRMREQ := TFRMREQ.Create(Self);
  Screen.Cursor := crDefault;
  FRMREQ.ShowModal;
end;

procedure TFORINI.EmpresaXInstituiodeEnsino1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSEL4 := TFORSEL4.Create(Self);
  Screen.Cursor := crDefault;
  FORSEL4.ShowModal;
  if forsel4.TEXTO <> '' then
  begin
    inst.Close;
    inst.SQL.Clear;
    inst.SQL.add(forsel4.TEXTO);
    inst.Open;
    campos.Items.Clear;
    ExportarDadosExcel(inst, campos, '', 'Relat�rio Instituic�es de Ensino', forsel4.edCliente.Text);
    inst.close;
  end;
  FORSEL4.Free;
end;

procedure TFORINI.Mailings1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ForMailing := TForMailing.Create(Self);
  Screen.Cursor := crDefault;
  ForMailing.ShowModal;

end;

procedure TFORINI.Autonomos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMPA := TFOREMPA.Create(Self);
  Screen.Cursor := crDefault;
  FOREMPA.ShowModal;
end;

procedure TFORINI.Grupos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORGRUPO := TFORGRUPO.Create(Self);
  Screen.Cursor := crDefault;
  FORGRUPO.ShowModal;
end;

procedure TFORINI.trocaSenha1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORTROCASENHA := TFORTROCASENHA.Create(Self);
  Screen.Cursor := crDefault;
  FORTROCASENHA.ShowModal;
end;

procedure TFORINI.FunesCliente1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFUNEMP := TFORFUNEMP.Create(Self);
  Screen.Cursor := crDefault;
  FORFUNEMP.ShowModal;
end;

procedure TFORINI.FunesInstituio1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFUNINS := TFORFUNINS.Create(Self);
  Screen.Cursor := crDefault;
  FORFUNINS.ShowModal;
end;

procedure TFORINI.Seleca1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSELECIONADOR := TFORSELECIONADOR.Create(Self);
  Screen.Cursor := crDefault;
  FORSELECIONADOR.ShowModal;

end;

procedure TFORINI.AreasdeTrabalho1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORAREA := TFORAREA.Create(Self);
  Screen.Cursor := crDefault;
  FORAREA.ShowModal;
end;

procedure TFORINI.FormasdeTratamento1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORFORM := TFORFORM.Create(Self);
  Screen.Cursor := crDefault;
  FORFORM.ShowModal;
end;

procedure TFORINI.AlunosquenoentregaramDM1Click(Sender: TObject);
begin
  with qrypesquisa do
  begin
  //  DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.add('select Tce_cod Tce,tce_situacao Situacao,Est_nome Estudante,Emp_nome Empresa ,inst_nome Instituicao, CONVERT(char,tce_data,103) Data,Estudante.est_email Email  from Tce,empresa,Estudante,Instituicao where ' +
      ' Tce_situacao <> 7 and tce_datadec is null and   tce.est_cod = estudante.est_cod and  ' +
      ' tce.emp_cod = empresa.emp_cod and  estudante.inst_cod = instituicao.inst_cod  order by  emp_nome,est_nome ');
    Open;
    GerarExcel(qrypesquisa, 'Alunos que N�o entregaram a Declara��o de Matricula');
    Close;
  end;

end;

procedure TFORINI.AlunosEnquadradosnaNovaLei1Click(Sender: TObject);
begin
  with qrypendentes do
  begin
  //  DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Text := memo4.Text;
    Open;
    GerarExcel(qrypendentes, 'Alunos Em d�bito com relat�rios');
    Close;
  end;


end;

procedure TFORINI.PorPerodoNovo1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORSERE2 := TFORSERE2.Create(Self);
  Screen.Cursor := crDefault;
  FORSERE2.ShowModal;
end;

procedure TFORINI.ProcessaEntregadeRelatrio1Click(Sender: TObject);
var
  proximo, tce: integer;
  argumento, ordem: string;
  data1, data2: string;
  rdata1, rdata2, rdata3, rdata4: tdate;
begin
  inherited;
 // if edPar.Text = '' then
 //   exit;
  qrypesquisa.close;
  qrypesquisa.SQL.clear;
  qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and prev_data between :inicio and :final ');

  quPrincipal := DmDta.quTce;
  DmDta.dsTce.DataSet := quPrincipal;

  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';
  argumento := argumento + ' and t.tce_situacao <> ''7''';

  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

  atualiza.Close;
  atualiza.SQL.Clear;
  atualiza.SQL.Add(' insert into tceRelatorio (tce_cod,ordem,prev_data) values (:tce_cod,:ordem,:prev_data - 2) ');
  quPrincipal.Last;
  quPrincipal.first;
  while not quprincipal.Eof do
  begin
    if quprincipal.FieldByName('datalei').AsString <> '' then
    begin
      tce := quprincipal.fieldbyname('tce_cod').AsInteger;
      qrypesquisa.close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and prev_data between :inicio and :final ');
      qrypesquisa.ParamByName('tce').asinteger := quprincipal.fieldbyname('tce_cod').asinteger;
      rdata1 := primeiromes(quprincipal.fieldbyname('datalei').Value);
      rdata2 := proximomes(rdata1);
      rdata3 := proximomes(rdata2);
      rdata4 := proximomes(rdata3);

      qrypesquisa.parambyname('inicio').Value := rdata1 - 10;
      qrypesquisa.parambyname('final').Value := rdata1 + 10;
      qrypesquisa.Open;
      if qrypesquisa.Eof then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := quprincipal.fieldbyname('tce_cod').AsInteger;
          atualiza.ParamByName('prev_data').value := rdata1;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;
      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata2 - 10;
      qrypesquisa.parambyname('final').Value := rdata2 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := quprincipal.fieldbyname('tce_cod').AsInteger;
          atualiza.ParamByName('prev_data').value := rdata2;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;

      end;
      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata3 - 10;
      qrypesquisa.parambyname('final').Value := rdata3 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := quprincipal.fieldbyname('tce_cod').AsInteger;
          atualiza.ParamByName('prev_data').value := rdata3;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata4 - 10;
      qrypesquisa.parambyname('final').Value := rdata4 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := quprincipal.fieldbyname('tce_cod').AsInteger;
          atualiza.ParamByName('prev_data').value := rdata4;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

    end;
    quPrincipal.Next;
  end;

  DmDta.dsTce.DataSet := DmDta.quTce;
end;

procedure TFORINI.CadastrodePendncias1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORPEND := TFORPEND.Create(Self);
  Screen.Cursor := crDefault;
  FORPEND.ShowModal;
end;

procedure TFORINI.Estudantescomrelatriospendntes1Click(Sender: TObject);
var Var1: Variant;
  cpf: string;
  x: integer;
  data1, data2: string;
begin
  Screen.Cursor := crHourGlass;
  FORSEL5 := TFORSEL5.Create(Self);
  Screen.Cursor := crDefault;
  FORSEL5.ShowModal;
  //if (forsel5.data <> 0) then
  begin
    Screen.Cursor := crHourGlass;
    qrypendentes.Close;
    qrypendentes.SQL.Clear;
    qrypendentes.SQL.add(memo6.TEXT);
    if forsel5.Tipo.ItemIndex = 0 then
      qrypendentes.parambyname('data').value := forsel5.Data
    else
    begin
       //A.prev_data <= :data
      qrypendentes.SQL.Text := StringReplace(qrypendentes.SQL.Text, 'A.prev_data <= :data', 'A.ordem <= :ordem', []);
      qrypendentes.parambyname('ordem').asinteger := forsel5.ordem.ItemIndex + 1
    end;

    qrypendentes.Open;
    GerarExcel(qrypendentes, 'Alunos Em d�bito com relat�rios');
  end;
  FORSEL5.free;
end;

procedure TFORINI.qrypendentesCalcFields(DataSet: TDataSet);
var
  entregar, controle, pendencias, entregues, numero: integer;
begin
  if qrypendentes.FieldByName('tce').asstring <> '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + qrypendentes.FieldByName('tce').asstring + ' and ordem = 1');
      Open;
      pendencias := 0;
      entregues := 0;
      entregar := 0;
      controle := 0;
      if eof = false then
      begin
        qrypendentesEntrega1.Value := fieldbyname('prev_data').Value;
        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);
          qrypendentesdata1.Value := fieldbyname('Est_data').Value;
          qrypendentesstatus1.AsString := 'Entregue ';
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            qrypendentesstatus1.AsString := qrypendentesstatus1.AsString + 'com Pend�ncias';
            inc(pendencias);

          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatus1.AsString := 'Atrasado';
            inc(pendencias);

          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 1) AND (A.Tipo = 1)  and a.tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('est_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendencia1.AsString := qrypendentespendencia1.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          qrypendentesdatasup1.Value := fieldbyname('sup_data').Value;
          qrypendentesstatusSup1.AsString := 'Entregue  ';
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            qrypendentesstatussup1.AsString := qrypendentesstatussup1.AsString + 'com Pend�ncias';
            inc(pendencias);

          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatussup1.AsString := 'Atrasado';
            inc(pendencias);

          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 1) AND (A.Tipo = 2)  and tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('sup_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendenciaSup1.AsString := qrypendentespendenciasup1.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;
        SQL.Clear;
      end;
      // 2
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + qrypendentes.FieldByName('tce').asstring + ' and ordem = 2');
      Open;
      if eof = false then
      begin
        qrypendentesentrega2.Value := fieldbyname('prev_data').Value;
        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);
          qrypendentesdata2.Value := fieldbyname('est_data').Value;
          qrypendentesstatus2.AsString := 'Entregue ';
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            qrypendentesstatus2.AsString := qrypendentesstatus2.AsString + 'com Pend�ncias';
            inc(pendencias);

          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatus2.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 2) AND (A.Tipo = 1)  and a.tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('est_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendencia2.AsString := qrypendentespendencia2.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          qrypendentesdatasup2.Value := fieldbyname('sup_data').Value;
          qrypendentesstatussup2.AsString := 'Entregue ';
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            qrypendentesstatussup2.AsString := qrypendentesstatussup2.AsString + 'com Pend�ncias';
            inc(pendencias);
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatussup2.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 2) AND (A.Tipo = 2)  and tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('sup_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendenciaSup2.AsString := qrypendentespendenciasup2.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end; SQL.Clear;
      end;
      //  03
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + qrypendentes.FieldByName('tce').asstring + ' and ordem = 3');
      Open;
      if eof = false then
      begin
        qrypendentesentrega3.Value := fieldbyname('prev_data').Value;
        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          qrypendentesdata3.Value := fieldbyname('est_data').Value;
          qrypendentesstatussup3.AsString := 'Entregue ';
          inc(entregues);
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            qrypendentesstatus3.AsString := qrypendentesstatus3.AsString + 'com Pend�ncias';
            inc(pendencias);
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatus3.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 3) AND (A.Tipo = 1)  and a.tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('est_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendencia3.AsString := qrypendentespendencia3.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;
        if fieldbyname('sup_data').asstring <> '' then
        begin
          qrypendentesdatasup3.Value := fieldbyname('sup_data').Value;
          qrypendentesstatussup3.AsString := 'Entregue ';
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            qrypendentesstatussup3.AsString := qrypendentesstatussup3.AsString + 'com Pend�ncias';
            inc(pendencias);
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatussup3.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 3) AND (A.Tipo = 2)  and tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('sup_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendenciaSup3.AsString := qrypendentespendenciasup1.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end; SQL.Clear;

      end;
      // 04
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + qrypendentes.FieldByName('tce').asstring + ' and ordem = 4');
      Open;
      if eof = false then
      begin
        qrypendentesentrega4.Value := fieldbyname('prev_data').Value;
        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          qrypendentesdata4.Value := fieldbyname('est_data').Value;
          qrypendentesstatus4.AsString := 'Entregue ';
          inc(entregues);
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            qrypendentesstatus4.AsString := qrypendentesstatus4.AsString + 'com Pend�ncias';
            inc(pendencias);
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatus4.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 4) AND (A.Tipo = 1)  and a.tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('est_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendencia4.AsString := qrypendentespendencia4.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          qrypendentesdatasup4.Value := fieldbyname('sup_data').Value;
          qrypendentesstatussup4.AsString := 'Entregue';
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            qrypendentesstatussup4.AsString := qrypendentesstatussup4.AsString + ' com Pend�ncias';
            inc(pendencias);
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            qrypendentesstatussup4.AsString := 'Atrasado';
            inc(pendencias);
          end;
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.text := 'SELECT B.Pend_descricao AS Descricao  FROM  TceRelPendencias A ' +
          ' INNER JOIN  Pendencias B ON A.Pend_cod = B.Pend_cod  WHERE (A.ordem = 4) AND (A.Tipo = 2)  and tce =' + qrypendentes.FieldByName('tce').asstring;
        qrypesquisa.Open;
        numero := 0;
        if fieldbyname('sup_pendente').asstring = 'S' then
          while not qrypesquisa.eof do
          begin
            inc(numero);
            qrypendentespendenciaSup4.AsString := qrypendentespendenciasup4.AsString + inttostr(numero) + ' ' + qrypesquisa.fieldbyname('descricao').asstring + '  ';
            qrypesquisa.Next;
          end;
        SQL.Clear;
      end;

      if (entregar > 0) and (pendencias > 0) then
        qrypendentesStatusgeral.asstring := 'Pendente';
      if (entregar > 0) and (entregues = entregar) and (pendencias = 0) then
        qrypendentesStatusgeral.asstring := 'Em Dia';
    end;
  end;
end;


procedure TFORINI.Impressora1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  DmDta.quFormandos.Open;
  QRFor := TQRFor.Create(Self);
  Screen.Cursor := crDefault;
  QRFor.Preview;
  DmDta.quFormandos.Open;
  QRFor.Free;
end;

procedure TFORINI.Excel2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  DmDta.quFormandos.Open;
  //QRFor := TQRFor.Create(Self);
  campos.Items.Clear;
  ExportarDadosExcel(DmDta.quformandos, campos, '', 'Estudantes Formandos', '');
  DmDta.quEMailEstudante.Close;
  Screen.Cursor := crDefault;
  //QRFor.Preview;
 // DmDta.quFormandos.Open;
  //QRFor.Free;
end;

procedure TFORINI.cesporEmpresaXPeriodo1Click(Sender: TObject);
var
  inicio: tdate;
  cor, t, r, linha, i, x, coluna, linhas, colunas: integer;
  Excel: Variant;
  letra, letra2, data1, data2: string;
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.filtro.Visible := false;
  frmintervalo.ShowModal;
  lbempresa.Items.clear;
  lbmeses.Items.Clear;
  cor := 2;
  if frmintervalo.modalresult = mrok then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := memo7.Text;
    qrypesquisa.parambyname('data1').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
    qrypesquisa.parambyname('data2').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date);

    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      qrypesquisa.Last;
      linha := qrypesquisa.RecordCount;
      qrypesquisa.First;
      while qrypesquisa.Eof = false do
      begin
        lbempresa.Items.Add(qrypesquisa.fieldbyname('emp_cod').asstring);
        qrypesquisa.Next;
      end;
      inicio := frmintervalo.inicio.date;
      while formatdatetime('yyyymm', inicio) <= formatdatetime('yyyymm', frmintervalo.final.date) do
      begin
        lbmeses.Items.Add(formatdatetime('yyyymm', inicio));
        inicio := incmonth(inicio, 1);
      end;
      Excel := CreateOleObject('Excel.Application');
      Excel.Visible := false;
      Excel.Workbooks.Add;
      letra2 := LETRAS.Items[lbmeses.Items.count * 4];
      Excel.Range['A1', letra2 + '1'].Merge;
      Excel.Range['A1', letra2 + '1'].HorizontalAlignment := -4108;
      Excel.Range['A1', letra2 + '1'].Font.Bold := True;
      Excel.Range['A1', letra2 + '1'].Columns.Interior.ColorIndex := 17;
      Excel.Cells[1, 1] := 'N�MERO DE ESTAGI�RIOS - CETEFE';
      Excel.Range['A2', letra2 + '2'].Merge;
      Excel.Range['A2', letra2 + '2'].HorizontalAlignment := -4108;
      Excel.Range['A2', letra2 + '2'].Font.Bold := True;
      Excel.Range['A2', letra2 + '2'].Columns.Interior.ColorIndex := 15;
      Excel.Cells[2, 1] := 'Per�odo: ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + ' - ' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date);
      linha := 3;
      coluna := 1;
      Excel.Range['A3', chr(65 + lbmeses.Items.count) + '3'].Borders.LineStyle := 1;
      Excel.Range['A3', chr(65 + lbmeses.Items.count) + '3'].Font.bold := true;
      Excel.Range['A3', chr(65 + lbmeses.Items.count) + '3'].Columns.Interior.ColorIndex := 19;
      Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1] := 'Empresa';
      Excel.Range['A4', letra2 + '4'].Columns.Interior.ColorIndex := 19;
      for i := 0 to lbmeses.Items.Count - 1 do
      begin
        letra := LETRAS.Items[coluna];
        letra2 := LETRAS.Items[coluna + 3];
        Excel.Range[letra + '3', letra2 + '3'].Merge;
        Excel.Range[letra + '3', letra2 + '3'].HorizontalAlignment := -4108;
        Excel.Range[letra + '3', letra2 + '3'].Font.Bold := True;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4);

        Excel.Range[letra + '4', letra2 + '4'].HorizontalAlignment := -4108;
        Excel.Range[letra + '4', letra2 + '4'].Font.Bold := True;
        Excel.Range['A4', letra2 + '3'].Borders.LineStyle := 1;
        Excel.Range['A4', letra2 + '3'].Columns.Interior.ColorIndex := cor;
        if cor = 2 then
          cor := 24
        else
          cor := 2;

        Excel.WorkBooks[1].Sheets[1].Cells[Linha + 1, coluna + 1] := 'T';
        Excel.WorkBooks[1].Sheets[1].Cells[Linha + 1, coluna + 2] := 'N';
        Excel.WorkBooks[1].Sheets[1].Cells[Linha + 1, coluna + 3] := 'R';
        Excel.WorkBooks[1].Sheets[1].Cells[Linha + 1, coluna + 4] := 'S';

        coluna := coluna + 4;
      end;

      Excel.Range['A3', LETRA2 + '3'].Borders.LineStyle := 1;
      Excel.Range['A3', LETRA2 + '3'].Font.bold := true;
      Excel.Range['A3', LETRA2 + '3'].Columns.Interior.ColorIndex := 19;
      qrypesquisa.First;
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        SQL.Clear;
        sql.Text := memo8.Text;
        linha := 5;

        while qrypesquisa.Eof = false do
        begin
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1] := qrypesquisa.FieldByName('emp_nome').asstring;
          COLUNA := 2;
          cor := 2;
          for i := 0 to lbmeses.Items.Count - 1 do
          begin
            close;
            ParamByName('empresa').Asstring := qrypesquisa.fieldbyname('emp_cod').asstring;
            ParamByName('data1').AsDateTime := StrToDate('01/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
            ParamByName('data2').AsDateTime := StrToDate(inttostr(retornadiasmes(strtoint(copy(lbmeses.Items[i], 5, 2)), strtoint(copy(lbmeses.Items[i], 1, 4)))) + '/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
            Open;
            last;
            letra := LETRAS.Items[coluna - 1];
            letra2 := LETRAS.Items[coluna + 2];
            Excel.Range[Letra + inttostr(linha), Letra2 + inttostr(linha)].Columns.Interior.ColorIndex := cor;
            if cor = 2 then
              cor := 24
            else
              cor := 2;

            if recordcount > 0 then
            begin
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, COLUNA] := recordcount;
              t := recordcount;
              qrypesquisa2.Close;
              qrypesquisa2.SQL.clear;
              qrypesquisa2.SQL.Text := ' Select count(*) qtde from tce nolock where  emp_cod=:empresa and tce_dataini between :data1 and :data2 ';
              qrypesquisa2.ParamByName('empresa').Asstring := qrypesquisa.fieldbyname('emp_cod').asstring;
              qrypesquisa2.ParamByName('data1').AsDateTime := StrToDate('01/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
              qrypesquisa2.ParamByName('data2').AsDateTime := StrToDate(inttostr(retornadiasmes(strtoint(copy(lbmeses.Items[i], 5, 2)), strtoint(copy(lbmeses.Items[i], 1, 4)))) + '/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
              qrypesquisa2.Open;

              if qrypesquisa2.FieldByName('qtde').AsInteger > 0 then
              begin
                letra := LETRAS.Items[coluna + 1];
                letra2 := LETRAS.Items[coluna + 1];
                Excel.Range[Letra + inttostr(linha), Letra2 + inttostr(linha)].Columns.font.ColorIndex := 25;
              end;

              Excel.WorkBooks[1].Sheets[1].Cells[Linha, COLUNA + 1] := qrypesquisa2.FieldByName('qtde').AsInteger;

              qrypesquisa2.Close;
              qrypesquisa2.SQL.clear;
              qrypesquisa2.SQL.Text := ' Select count(*) qtde from tce nolock where  emp_cod=:empresa and tce_datares between :data1 and :data2 ';
              qrypesquisa2.ParamByName('empresa').Asstring := qrypesquisa.fieldbyname('emp_cod').asstring;
              qrypesquisa2.ParamByName('data1').AsDateTime := StrToDate('01/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
              qrypesquisa2.ParamByName('data2').AsDateTime := StrToDate(inttostr(retornadiasmes(strtoint(copy(lbmeses.Items[i], 5, 2)), strtoint(copy(lbmeses.Items[i], 1, 4)))) + '/' + copy(lbmeses.Items[i], 5, 2) + '/' + copy(lbmeses.Items[i], 1, 4));
              qrypesquisa2.Open;
              r := qrypesquisa2.FieldByName('qtde').AsInteger;
              if qrypesquisa2.FieldByName('qtde').AsInteger > 0 then
              begin
                letra := LETRAS.Items[COLUNA + 2];
                letra2 := LETRAS.Items[COLUNA + 2];
                Excel.Range[Letra + inttostr(linha), Letra2 + inttostr(linha)].Columns.font.ColorIndex := 3;
              end;

              Excel.WorkBooks[1].Sheets[1].Cells[Linha, COLUNA + 2] := qrypesquisa2.FieldByName('qtde').AsInteger;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, COLUNA + 3] := t - r;

            end
            else
            begin

              Excel.Range[Letra + inttostr(linha), Letra2 + inttostr(linha)].Columns.Interior.ColorIndex := 15;
            end;
            Coluna := Coluna + 4;
          end;


          inc(linha);
          qrypesquisa.Next;
        end;
        letra2 := LETRAS.Items[lbmeses.Items.count * 4];
        Excel.Range['A' + inttostr(linha), letra2 + inttostr(linha)].Font.Bold := True;
        Excel.Range['A' + inttostr(linha), letra2 + inttostr(linha)].Columns.Interior.ColorIndex := 16;
        Excel.Range['A' + inttostr(linha), letra2 + inttostr(linha)].Borders.LineStyle := 1;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1] := 'Total';
        cor := 2;
        coluna := 2;
        for i := 0 to lbmeses.Items.Count do
        begin
          letra := LETRAS.Items[coluna - 1];
          letra2 := LETRAS.Items[coluna + 2];
          Excel.Range[Letra + inttostr(linha), Letra2 + inttostr(linha)].Columns.Interior.ColorIndex := cor;
          if cor = 2 then
            cor := 24
          else
            cor := 2;
          coluna := coluna + 4;
        end;

        for i := 0 to (lbmeses.Items.Count * 4) - 1 do
        begin

          letra2 := LETRAS.Items[i + 1];
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, i + 2] := '=sum(' + letra2 + '5:' + letra2 + inttostr(linha - 1) + ')';
        end;
        excel.columns.AutoFit; // esta linha � para fazer com que o Excel dimencione as c�lulas adequadamente.
        excel.visible := True;
      end;
    end;
  end;
  frmintervalo.filtro.Visible := true;
end;

procedure TFORINI.PorEmpresa1Click(Sender: TObject);
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.filtro.Visible := false;
  frmintervalo.ShowModal;
  if frmintervalo.modalresult = mrok then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := ContEmpresa.Text;
    qrypesquisa.parambyname('inicio').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
    qrypesquisa.parambyname('final').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date) + ' 23:59:29';
    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Rela��o de Contatos Por Empresa', 'Intervalo ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + '..' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date));
    qrypesquisa.close;
  end;
  frmintervalo.filtro.Visible := true;

end;

procedure TFORINI.PorEstudante1Click(Sender: TObject);
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.filtro.Visible := false;
  frmintervalo.ShowModal;
  if frmintervalo.modalresult = mrok then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := ContEstudante.Text;
    qrypesquisa.parambyname('inicio').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
    qrypesquisa.parambyname('final').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date) + ' 23:59:29';
    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Rela��o de Contatos Por Estudantes', 'Intervalo ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + '..' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date));
    qrypesquisa.close;
  end;
  frmintervalo.filtro.Visible := true;


end;

procedure TFORINI.PorFuncionrio1Click(Sender: TObject);
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.filtro.Visible := false;
  frmintervalo.ShowModal;
  if frmintervalo.modalresult = mrok then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := ContFuncionario.Text;
    qrypesquisa.parambyname('inicio').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
    qrypesquisa.parambyname('final').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date) + ' 23:59:29';
    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Rela��o de Contatos Por Funcion�rio', 'Intervalo ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + '..' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date));
    qrypesquisa.close;
  end;
  frmintervalo.filtro.Visible := true;


end;

procedure TFORINI.PorVaga1Click(Sender: TObject);
begin
  frmintervalo.inicio.Date := date;
  frmintervalo.final.Date := date;
  frmintervalo.filtro.Visible := false;
  frmintervalo.ShowModal;
  if frmintervalo.modalresult = mrok then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := ContVaga.Text;
    qrypesquisa.parambyname('inicio').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date);
    qrypesquisa.parambyname('final').asstring := formatdatetime('dd/mm/yyyy', frmintervalo.final.date) + ' 23:59:29';
    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Rela��o de Contatos Por Vaga', 'Intervalo ' + formatdatetime('dd/mm/yyyy', frmintervalo.inicio.date) + '..' + formatdatetime('dd/mm/yyyy', frmintervalo.final.date));
    qrypesquisa.close;
  end;
  frmintervalo.filtro.Visible := true;

end;

procedure TFORINI.Atualiza11Click(Sender: TObject);
var
  Dia, Mes, Ano: Word;
  Contador: integer;
  Atualizados, Processados: integer;
  tempo: string;
begin
  Atualizados := 0;
  Processados := 0;
  DecodeDate(Date(), Ano, Mes, Dia);
  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.Text := 'select EST_COD,EST_NOME ,CUR_COD,EST_CURSOANO,PCU_ANOATUAL,PCU_PERATUAL, (select cur_nivel from curso where cur_cod = estudante.cur_cod ) curso, ' +
    ' CASE when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''M�dio'' then 3 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''Superior'' then 5 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''T�cnico'' then 4 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''P�s-M�dio'' then 2 ' +
    ' END TOTAL ' +
    ' from estudante where est_formado is null and est_trancado is null ' +
    ' and est_cursoano = ' + inttostr(ano - 1) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
    ' AND PCU_PERATUAL = 0  order by est_cod desc ';

  if MSGSIMNAO('Confirme Processamento de Atualiza��o de Periodo dos alunos do ano de ' + inttostr(ano - 1) + ' para o ano de ' + inttostr(ano)) = true then
  begin
    qrypesquisa.open;
    qrypesquisa.First;
    contador := 0;
    while qrypesquisa.Eof = false do
    begin
      inc(contador);
      qrypesquisa.Next;
    end;
    qrypesquisa.First;

    progresso.Visible := true;
    progresso.Max := contador;
    progresso.Position := 0;
    while qrypesquisa.Eof = false do
    begin

      Atualiza.close;
      atualiza.SQL.Clear;
      tempo := '';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 5) then
        tempo := '3';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'Superior') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 8) then
        tempo := '5';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'T�cnico') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 7) then
        tempo := '4';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 9) then
        tempo := '2';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-Gradua��o') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 13) then
        tempo := '2';

      if tempo = '' then
        atualiza.SQL.Text := 'update estudante set est_cursosituacao = ''FALTAM DADOS'' WHERE EST_COD =' + qrypesquisa.FIELDBYNAME('EST_COD').ASSTRING
      else
      begin
        if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger >= strtoint(tempo) then
          Atualiza.SQL.Text := ' update estudante set est_cursosituacao = ''POSSIVELMENTE FORMADO'',est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING
        else
          if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger < strtoint(tempo) then
            Atualiza.SQL.Text := ' update estudante set  est_cursosituacao = ''CURSANDO'',PCU_ANOATUAL = PCU_ANOATUAL + 1,est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING;
        inc(Atualizados);
      end;
      atualiza.ExecSQL;

      inc(processados);
      progresso.Position := progresso.Position + 1;
      qrypesquisa.Next;
    end;

    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select EST_COD Codigo,EST_NOME Nome ,CUR_COD [Codigo do Curso],EST_CURSOANO [Ano da Atualizacao],PCU_ANOATUAL [Ano Atual],(select cur_nivel from curso where cur_cod = estudante.cur_cod ) [Nivel do Curso], est_cursosituacao Situacao ' +
      ' from estudante where est_formado is null and est_trancado is null ' +
      ' and est_cursoano = ' + inttostr(ano - 1) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
      ' AND PCU_PERATUAL = 0  order by est_cod desc ';

    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Estudantes n�o Atualizado (Anual)');

    // por semestre
    qrypesquisa.Close;
    Qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Text := 'select EST_COD,EST_NOME,CUR_COD,EST_CURSOANO,PCU_ANOATUAL,PCU_PERATUAL,(select cur_nivel from curso where cur_cod = estudante.cur_cod ) curso ,' +
      ' CASE when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''M�dio'' then 3*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''Superior'' then 5*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''T�cnico'' then 4*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''P�s-M�dio'' then 2*2 ' +
      ' END TOTAL ' +
      ' from estudante where est_formado is null and est_trancado is null ' +
      ' and est_cursoano = ' + inttostr(ano - 1) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
      ' AND PCU_PERATUAL = 1 AND EST_CURSOSEM = 2  order by est_cod desc ';

    qrypesquisa.open;
    qrypesquisa.First;
    contador := 0;
    while qrypesquisa.Eof = false do
    begin
      inc(contador);
      qrypesquisa.Next;
    end;
    qrypesquisa.First;
    progresso.Visible := true;
    progresso.Max := contador;
    progresso.Position := 0;
    while qrypesquisa.Eof = false do
    begin
      Atualiza.close;
      atualiza.SQL.Clear;
      tempo := '';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 5) then
        tempo := '6';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'Superior') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 8) then
        tempo := '10';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'T�cnico') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 7) then
        tempo := '8';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 9) then
        tempo := '4';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-Gradua��o') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 13) then
        tempo := '4';
      if tempo = '' then
        atualiza.SQL.Text := 'update estudante set est_cursosituacao = ''FALTAM DADOS'' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING
      else
      begin
        if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger >= strtoint(tempo) then
          Atualiza.SQL.Text := ' update estudante set est_cursosituacao = ''POSSIVELMENTE FORMADO'', est_cursosem = 1  ,est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING
        else
          if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger < strtoint(tempo) then
            Atualiza.SQL.Text := ' update estudante set  est_cursosem = 1, est_cursosituacao = ''CURSANDO'',PCU_ANOATUAL = PCU_ANOATUAL + 1,est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING;
        inc(Atualizados);
      end;
      atualiza.ExecSQL;

      inc(processados);
      progresso.Position := progresso.Position + 1;
      qrypesquisa.Next;
    end;
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select EST_COD Codigo,EST_NOME Nome ,CUR_COD [Codigo do Curso],EST_CURSOANO [Ano da Atualizacao],PCU_ANOATUAL [Semestre Atual],(select cur_nivel from curso where cur_cod = estudante.cur_cod ) [Nivel do Curso], est_cursosituacao Situacao ' +
      ' from estudante where est_formado is null and est_trancado is null ' +
      ' and est_cursoano = ' + inttostr(ano - 1) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
      ' AND PCU_PERATUAL = 1 AND EST_CURSOSEM = 2 order by est_cod desc ';

    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Estudantes n�o Atualizado (Semestral)');

    //
    progresso.Visible := false;
    MSGAVISO('Processo de Atualiza��o Finalizado! ' + inttostr(processados) + ' registros processados ' + inttostr(Atualizados) + ' Estudantes Atualizados!');
  end;

end;

procedure TFORINI.Atualiza2Semestre1Click(Sender: TObject);
var
  Dia, Mes, Ano: Word;
  Contador: integer;
  Atualizados, processados: integer;
  tempo: string;
begin
  Atualizados := 0;
  processados := 0;
  DecodeDate(Date(), Ano, Mes, Dia);
  if mes < 7 then
  begin
    MSGAVISO('N�o � possivel atualizar o Segundo Semestre antes do Mes de Julho!');
    exit;
  end;
  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.Text := 'select EST_COD,EST_NOME ,CUR_COD,EST_CURSOANO,PCU_ANOATUAL,PCU_PERATUAL, (select cur_nivel from curso where cur_cod = estudante.cur_cod ) curso, ' +
    ' CASE when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''M�dio'' then 3 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''Superior'' then 5 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''T�cnico'' then 4 ' +
    ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''P�s-M�dio'' then 2 ' +
    ' END TOTAL ' +
    ' from estudante where est_formado is null and est_trancado is null ' +
    ' and est_cursoano = ' + inttostr(ano) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
    ' AND PCU_PERATUAL = 0  order by est_cod desc ';

  if MSGSIMNAO('Confirme Processamento de Atualiza��o de Periodo dos alunos do 1� Semestre de ' + inttostr(ano) + ' para o 2� Semestre do ano de ' + inttostr(ano)) = true then
  begin
    // por semestre
    qrypesquisa.Close;
    Qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Text := 'select EST_COD,EST_NOME,CUR_COD,EST_CURSOANO,PCU_ANOATUAL,PCU_PERATUAL,(select cur_nivel from curso where cur_cod = estudante.cur_cod ) curso ,' +
      ' CASE when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''M�dio'' then 3*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''Superior'' then 5*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''T�cnico'' then 4*2 ' +
      ' when (select cur_nivel from curso where cur_cod = estudante.cur_cod )  = ''P�s-M�dio'' then 2*2 ' +
      ' END TOTAL ' +
      ' from estudante where est_formado is null and est_trancado is null ' +
      ' and est_cursoano = ' + inttostr(ano) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
      ' AND PCU_PERATUAL = 0 AND EST_CURSOSEM = 1  order by est_cod desc ';
    qrypesquisa.open;
    qrypesquisa.First;
    contador := 0;
    while qrypesquisa.Eof = false do
    begin
      inc(contador);
      qrypesquisa.Next;
    end;
    qrypesquisa.First;
    progresso.Visible := true;
    progresso.Max := contador;
    progresso.Position := 0;
    while qrypesquisa.Eof = false do
    begin
      Atualiza.close;
      atualiza.SQL.Clear;
      tempo := '';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 5) then
        tempo := '6';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'Superior') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 8) then
        tempo := '10';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'T�cnico') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 7) then
        tempo := '8';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-M�dio') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 9) then
        tempo := '4';
      if (trim(qrypesquisa.FieldByName('curso').AsString) = 'P�s-Gradua��o') or (length(trim(qrypesquisa.FieldByName('curso').AsString)) = 13) then
        tempo := '4';
      if tempo = '' then
        atualiza.SQL.Text := 'update estudante set est_cursosituacao = ''FALTAM DADOS'' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING
      else
      begin
        if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger >= strtoint(tempo) then
          Atualiza.SQL.Text := ' update estudante set est_cursosituacao = ''POSSIVELMENTE FORMADO'', est_cursosem = 2  ,est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING
        else
          if qrypesquisa.FieldByName('PCU_ANOATUAL').AsInteger < strtoint(tempo) then
            Atualiza.SQL.Text := ' update estudante set  est_cursosem = 2, est_cursosituacao = ''CURSANDO'',PCU_ANOATUAL = PCU_ANOATUAL + 1,est_cursoano = ' + inttostr(ano) + ' WHERE EST_COD =' + QRYPESQUISA.FIELDBYNAME('EST_COD').ASSTRING;
        inc(Atualizados);
      end;
      atualiza.ExecSQL;
      inc(processados);
      progresso.Position := progresso.Position + 1;
      qrypesquisa.Next;
    end;
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select EST_COD Codigo,EST_NOME Nome ,CUR_COD [Codigo do Curso],EST_CURSOANO [Ano da Atualizacao],PCU_ANOATUAL [Semestre Atual],(select cur_nivel from curso where cur_cod = estudante.cur_cod ) [Nivel do Curso], est_cursosituacao Situacao ' +
      ' from estudante where est_formado is null and est_trancado is null ' +
      ' and est_cursoano = ' + inttostr(ano) + ' and est_cursosituacao in (''CURSANDO'',''FALTAM DADOS'') ' +
      ' AND PCU_PERATUAL = 0 AND EST_CURSOSEM = 1  order by est_cod desc ';

    qrypesquisa.Open;
    GerarExcel(qrypesquisa, 'Estudantes n�o Atualizado (Semestral)');
    //
    progresso.Visible := false;
    MSGAVISO('Processo de Atualiza��o Finalizado! ' + inttostr(processados) + ' registros processados ' + inttostr(Atualizados) + ' Estudantes Atualizados!');

  end;




end;

procedure TFORINI.Bancos1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORBAN := TFORBAN.Create(Self);
  Screen.Cursor := crDefault;
  FORBAN.ShowModal;
end;

procedure TFORINI.btnInconsistenciasClick(Sender: TObject);
begin
    timMostrarInconsistencia.Tag := 1;
    timMostrarInconsistencia.Enabled := true;
    if not Assigned(FORERR) then       
      pnlMostrarInconsistencia.Visible := true;
end;

procedure TFORINI.timMostrarInconsistenciaTimer(Sender: TObject);
begin
    timMostrarInconsistencia.Enabled := false;
    Application.ProcessMessages;
    if not Assigned(FORERR) then
      FORERR := TFORERR.Create(Application);

    FORERR.Show;

    if (timMostrarInconsistencia.Tag = 0) and FORERR.cdsDados.IsEmpty and FORERR.cdsEstudante.IsEmpty then
       FORERR.Close;

    timMostrarInconsistencia.Tag := 0;       
    pnlMostrarInconsistencia.Visible := false;
end;

end.


var
  Excel: Variant;
  cor, ColunasVisiveis, Linha, i, coluna: Integer;
  totalcoluna: array of variant;
  totalcolunageral: array of variant;
  quebranova, quebra1: string;
begin
  SetLength(totalcoluna, campos.Items.Count);
  SetLength(totalcolunageral, campos.Items.Count);
  cor := 15;
  for i := 0 to campos.Items.Count - 1 do
  begin
    totalcoluna[i] := 0;
    totalcolunageral[i] := 0;
  end;

  ColunasVisiveis := 0;
  for i := 0 to Query.FieldCount - 1 do
  begin
    if Query.Fields[i].Visible then
      Inc(ColunasVisiveis);
  end;
  if not Query.IsEmpty then
  begin
    query.Last;
    Query.First;

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := false;
    Excel.Workbooks.Add;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Excel.Cells[1, 1] := AnsiUpperCase(Titulo);
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Excel.Cells[2, 1] := SubTitulo;
    Linha := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    Excel.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    Excel.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    Excel.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;

    Linha := 4;

    while not Query.Eof do
    begin
      coluna := -1;
      for i := 0 to Query.FieldCount - 1 do
        if Query.Fields[i].Visible then
        begin
          inc(coluna);
          if campos.Items.Count > 0 then
          begin
            if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
            begin
              totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
              totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
            end;
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].Value;
        end;
      Query.Next;
      if (quebra <> '') and (query.eof = false) then
        for i := 0 to Query.FieldCount - 1 do
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebranova := Query.Fields[i].value;
      Linha := Linha + 1;
      if (query.eof) or (quebranova <> quebra1) then
      begin
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if campos.Items.Count > 0 then
            begin
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
              begin
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
              end;
            end;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        inc(linha);
        inc(linha);
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if query.Eof = false then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName
            else
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
            if quebra <> '' then
              if quebra = Query.Fields[i].fieldName then
                quebra1 := Query.Fields[i].value;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        inc(cor);
        if query.Eof = false then
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 19
        else
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 12;

        for i := 0 to campos.Items.Count - 1 do
        begin
          totalcoluna[i] := 0;
        end;
        quebra1 := quebranova;
        inc(linha);
      end;

    end;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
          end;
        end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
      end;

    excel.columns.AutoFit; // esta linha � para fazer com que o Excel dimencione as c�lulas adequadamente.
    excel.visible := True;
  end;
end;

