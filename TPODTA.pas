unit TPODTA;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DateUtils, DBTables, DB, DBClient;
type
  TEmpresaLogin = record
    Codigo: integer;
    Descricao: string;
    DirTemplate: string;
    AliasBDE: string;
  end;

  TDmDTA = class(TDataModule)
    dsCurso: TDataSource;
    dsInstituicao: TDataSource;
    dsEmpresa: TDataSource;
    quCurso: TQuery;
    quCursoCur_cod: TIntegerField;
    quCursoCur_nome: TStringField;
    quCursoCur_area: TStringField;
    quCursoCur_nivel: TStringField;
    usCurso: TUpdateSQL;
    db_Principal: TDatabase;
    quInstituicao: TQuery;
    usInstituicao: TUpdateSQL;
    quInstituicaoInst_cod: TIntegerField;
    quInstituicaoInst_nome: TStringField;
    quInstituicaoInst_endereco: TStringField;
    quInstituicaoInst_bairro: TStringField;
    quInstituicaoInst_cidade: TStringField;
    quInstituicaoInst_estado: TStringField;
    quInstituicaoInst_cep: TStringField;
    quInstituicaoInst_telefone: TStringField;
    quInstituicaoInst_fax: TStringField;
    quInstituicaoInst_cnpj: TStringField;
    quInstituicaoInst_inscest: TStringField;
    quInstituicaoInst_tipo: TStringField;
    quInstituicaoInst_nivel: TStringField;
    quEmpresa: TQuery;
    usEmpresa: TUpdateSQL;
    dsEstudante: TDataSource;
    quEstudante: TQuery;
    usEstudante: TUpdateSQL;
    quEstudanteEst_cod: TIntegerField;
    quEstudanteEst_nome: TStringField;
    quEstudanteEst_rg: TStringField;
    quEstudanteEst_cpf: TStringField;
    quEstudanteEst_sexo: TStringField;
    quEstudanteEst_endereco: TStringField;
    quEstudanteEst_bairro: TStringField;
    quEstudanteEst_cidade: TStringField;
    quEstudanteEst_cep: TStringField;
    quEstudanteEst_estadocivil: TStringField;
    quEstudanteEst_religiao: TStringField;
    quEstudanteEst_estado: TStringField;
    quEstudanteEst_fone2: TStringField;
    quEstudanteEst_recado: TStringField;
    quEmpresaEmp_cod: TIntegerField;
    quEmpresaEmp_nome: TStringField;
    quEmpresaEmp_endereco: TStringField;
    quEmpresaEmp_bairro: TStringField;
    quEmpresaEmp_cidade: TStringField;
    quEmpresaEmp_estado: TStringField;
    quEmpresaEmp_cep: TStringField;
    quEmpresaEmp_telefone: TStringField;
    quEmpresaEmp_fax: TStringField;
    quEmpresaEmp_cnpj: TStringField;
    quEmpresaEmp_inscest: TStringField;
    quEmpresaEmp_ramo: TStringField;
    quEmpresaEmp_porte: TStringField;
    quEmpresaEmp_caixapostal: TStringField;
    quInstituicaoInst_caixapostal: TStringField;
    quEstudanteEst_ctpsnum: TStringField;
    quEstudanteEst_ctpsserie: TStringField;
    quEstudanteEst_fone1: TStringField;
    quEstudanteEst_fumante: TStringField;
    quEstudanteEst_email: TStringField;
    dsSoftware: TDataSource;
    quSoftware: TQuery;
    usSoftware: TUpdateSQL;
    quSoftwareStw_cod: TIntegerField;
    quSoftwareStw_nome: TStringField;
    dsIdioma: TDataSource;
    quIdioma: TQuery;
    usIdioma: TUpdateSQL;
    quIdiomaIdi_cod: TIntegerField;
    quIdiomaIdi_nome: TStringField;
    dsInstFuncionario: TDataSource;
    usInstFuncionario: TUpdateSQL;
    dsEmpFuncionario: TDataSource;
    quEmpFuncionario: TQuery;
    usEmpFuncionario: TUpdateSQL;
    quEmpFuncionarioEmp_cod: TIntegerField;
    quEmpFuncionarioFunc_cod: TIntegerField;
    quEmpFuncionarioEfu_nome: TStringField;
    dsInstCurso: TDataSource;
    quInstCurso: TQuery;
    usInstCurso: TUpdateSQL;
    quInstCursoInst_cod: TIntegerField;
    quInstCursoCur_cod: TIntegerField;
    quInstCursoCuri_duracao: TIntegerField;
    quInstCursoCuri_periodic: TStringField;
    quInstCursoCuri_duracaomax: TIntegerField;
    quInstCursoCuri_registro: TStringField;
    quInstCursocur_nome: TStringField;
    dsPerIdioma: TDataSource;
    quPerIdioma: TQuery;
    quPerIdiomaEst_cod: TIntegerField;
    quPerIdiomaIdi_cod: TIntegerField;
    quPerIdiomaidi_nome: TStringField;
    usPerIdioma: TUpdateSQL;
    dsPerSoftware: TDataSource;
    quPerSoftware: TQuery;
    usPerSoftware: TUpdateSQL;
    quPerSoftwareEst_cod: TIntegerField;
    quPerSoftwareStw_cod: TIntegerField;
    quPerSoftwarestw_nome: TStringField;
    dsExperiencia: TDataSource;
    quExperiencia: TQuery;
    usExperiencia: TUpdateSQL;
    quExperienciaEst_cod: TIntegerField;
    quExperienciaExp_cod: TIntegerField;
    quExperienciaExp_empresa: TStringField;
    dsPerPChave: TDataSource;
    quPerPChave: TQuery;
    usPerPChave: TUpdateSQL;
    dsPerCursos: TDataSource;
    quPerCursos: TQuery;
    usPerCursos: TUpdateSQL;
    quPerPChaveEst_cod: TIntegerField;
    quPerPChavePal_cod: TIntegerField;
    quPerPChavePal_nome: TStringField;
    quPerPChavePal_experiencia: TIntegerField;
    quPerPChavePal_perexp: TStringField;
    quPerCursosEst_cod: TIntegerField;
    quPerCursosCur_cod: TIntegerField;
    quPerCursosEcu_conclusao: TIntegerField;
    usPerOutCursos: TUpdateSQL;
    quPerOutCursos: TQuery;
    dsPerOutCursos: TDataSource;
    quPerOutCursosEst_cod: TIntegerField;
    quPerOutCursosCure_cod: TIntegerField;
    quPerOutCursosCure_descricao: TStringField;
    quPerOutCursosCure_local: TStringField;
    quPerOutCursosCure_conclusao: TIntegerField;
    quPerOutCursosCure_diploma: TStringField;
    quPerCursoscur_nome: TStringField;
    quPerPChavePerExp: TStringField;
    quInstituicaoInst_respconv: TIntegerField;
    quInstituicaoInst_respcomp: TIntegerField;
    quEmpresaEmp_respcont: TIntegerField;
    quEmpresaEmp_respcomp: TIntegerField;
    quEmpresaEmp_respent: TIntegerField;
    quEmpresaEmp_respfin: TIntegerField;
    dsVaga: TDataSource;
    dsVagaCurso: TDataSource;
    quVagaCurso: TQuery;
    usVagaCurso: TUpdateSQL;
    quVagaCursoVag_cod: TIntegerField;
    quVagaCursoCur_cod: TIntegerField;
    quVagaCursoInst_cod: TIntegerField;
    quVagaCursocur_nome: TStringField;
    quVagaCursoinst_nome: TStringField;
    dsVagaIdioma: TDataSource;
    quVagaIdioma: TQuery;
    usVagaIdioma: TUpdateSQL;
    quVagaIdiomaVag_cod: TIntegerField;
    quVagaIdiomaIdi_cod: TIntegerField;
    quVagaIdiomaidi_nome: TStringField;
    dsVagaSoftware: TDataSource;
    quVagaSoftware: TQuery;
    StringField3: TStringField;
    usVagaSoftware: TUpdateSQL;
    quVagaSoftwareVag_cod: TIntegerField;
    quVagaSoftwareStw_cod: TIntegerField;
    quVagaSoftwarevsw_nivel: TStringField;
    dsVagaAtividade: TDataSource;
    quVagaAtividade: TQuery;
    usVagaAtividade: TUpdateSQL;
    quVagaAtividadeVag_cod: TIntegerField;
    quVagaAtividadeAti_cod: TIntegerField;
    quVagaAtividadeAti_nome: TStringField;
    dsTce: TDataSource;
    quTce: TQuery;
    usTce: TUpdateSQL;
    quTceTce_cod: TIntegerField;
    quTceEst_cod: TIntegerField;
    quTceTce_estenc: TStringField;
    quTceEmp_cod: TIntegerField;
    quTceTce_tipocont: TStringField;
    quTceVag_cod: TIntegerField;
    quTceTce_seguro: TStringField;
    quTceTce_situacao: TStringField;
    quTceest_nome: TStringField;
    quTceemp_nome: TStringField;
    quTceDescSituacao: TStringField;
    quTceTce_bolsa: TCurrencyField;
    quTceTce_tipobolsa: TStringField;
    quTceDescBolsa: TStringField;
    quTceAlteracao: TQuery;
    dsTceAlteracao: TDataSource;
    usTceAlteracao: TUpdateSQL;
    quTceAlteracaoTce_cod: TIntegerField;
    quTceAlteracaoTal_novabolsa: TCurrencyField;
    quTceAlteracaoTal_tipobolsa: TStringField;
    quTceAlteracaoDescbolsa: TStringField;
    dsTceAditivo: TDataSource;
    quTceAditivo: TQuery;
    usTceAditivo: TUpdateSQL;
    quTceAditivoTce_cod: TIntegerField;
    quTceAditivoPrg_cod: TIntegerField;
    quEstEmp: TQuery;
    quEstudanteEst_dtinc: TDateTimeField;
    quEstudanteEst_dtnasc: TDateTimeField;
    quInstituicaoInst_dtinc: TDateTimeField;
    quInstituicaoInst_iniconv: TDateTimeField;
    quInstituicaoInst_fimconv: TDateTimeField;
    quEmpresaEmp_dtinc: TDateTimeField;
    quEmpresaEmp_iniconv: TDateTimeField;
    quEmpresaEmp_fimconv: TDateTimeField;
    quEmp: TQuery;
    quEmpemp_cod: TIntegerField;
    quEmpemp_nome: TStringField;
    quEst: TQuery;
    quTceTce_horarioini1: TDateTimeField;
    quTceTce_horariofim1: TDateTimeField;
    quTceTce_horarioini2: TDateTimeField;
    quTceTce_horariofim2: TDateTimeField;
    quTceTce_dataini: TDateTimeField;
    quTceTce_datafim: TDateTimeField;
    quTceTce_datares: TDateTimeField;
    quTceTce_data: TDateTimeField;
    quEstEmpest_cod: TIntegerField;
    quEstEmpest_nome: TStringField;
    quEstEmpemp_nome: TStringField;
    quEstEmptce_cod: TIntegerField;
    quEstEmptce_dataini: TDateTimeField;
    quEstEmptce_datafim: TDateTimeField;
    quEstEmptce_situacao: TStringField;
    quEstEmpDescSituacao: TStringField;
    dsEstEmp: TDataSource;
    quTceAdit: TQuery;
    quTceAditMaiorIni: TDateTimeField;
    quTceAditMaiorFim: TDateTimeField;
    quVerEsc: TQuery;
    quVerEscest_nome: TStringField;
    quVerEscinst_nome: TStringField;
    quVerEscpcu_peratual: TStringField;
    quVerEscpcu_anoatual: TIntegerField;
    quVerEsccur_nome: TStringField;
    quVerEscemp_nome: TStringField;
    dsVerEsc: TDataSource;
    quSeguroInc: TQuery;
    dsSeguroInc: TDataSource;
    quSeguroIncest_cod: TIntegerField;
    quSeguroIncest_nome: TStringField;
    quSeguroInctce_cod: TIntegerField;
    quSeguroInctce_dataini: TDateTimeField;
    quSeguroInctce_datafim: TDateTimeField;
    quSeguroExc: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    dsSeguroExc: TDataSource;
    dsFatura: TDataSource;
    quFatura: TQuery;
    quFaturafat_numero: TIntegerField;
    quFaturaemp_cod: TIntegerField;
    quFaturaemp_nome: TStringField;
    quFaturafat_mes: TSmallintField;
    quFaturafat_ano: TSmallintField;
    quFaturafat_totbolsa: TFloatField;
    quFaturafat_totcont: TFloatField;
    quFaturafat_formapgto: TStringField;
    quFaturafat_datalib: TDateTimeField;
    usfatura: TUpdateSQL;
    quFaturafat_numest: TSmallintField;
    quFaturafat_totgeral: TFloatField;
    quFolhaPgto: TQuery;
    dsFolhaPgto: TDataSource;
    usFolhaPgto: TUpdateSQL;
    quFolhaPgtofat_numero: TIntegerField;
    quFolhaPgtoest_nome: TStringField;
    quFolhaPgtofbo_valor: TFloatField;
    quFolhaPgtofbo_situacao: TStringField;
    quFolhaPgtoDescSituacao: TStringField;
    quFolhaPgtofbo_descontos: TFloatField;
    quSFolhaPgto: TQuery;
    dsSFolhaPgto: TDataSource;
    quSFolhaPgtofat_numero: TIntegerField;
    quSFolhaPgtoest_cod: TSmallintField;
    quSFolhaPgtoest_nome: TStringField;
    quSFolhaPgtofbo_valor: TFloatField;
    quSFolhaPgtofbo_descontos: TFloatField;
    quSFolhaPgtofbo_situacao: TStringField;
    quSFolhaPgtoValor: TFloatField;
    quSFolhaPgtoDescSituacao: TStringField;
    dsSPgto: TDataSource;
    quSPgto: TQuery;
    quSPgtofat_numero: TIntegerField;
    quSPgtoemp_cod: TIntegerField;
    quSPgtofat_mes: TSmallintField;
    quSPgtofat_ano: TSmallintField;
    quSPgtofat_numest: TSmallintField;
    quSPgtofat_totbolsa: TFloatField;
    quSPgtofat_totcont: TFloatField;
    quSPgtofat_formapgto: TStringField;
    quSPgtofat_datalib: TDateTimeField;
    quEstudanteest_situacao: TStringField;
    quEstudanteinst_cod: TIntegerField;
    quEstudantecur_cod: TIntegerField;
    quEstudantepcu_anoatual: TSmallintField;
    quEstudantepcu_peratual: TStringField;
    quEstudanteDescSituacao: TStringField;
    quInstituicaoinst_nomerespconv: TStringField;
    quInstituicaoinst_nomerespcomp: TStringField;
    quEmpresaemp_nomerespcont: TStringField;
    quEmpresaemp_nomerespcomp: TStringField;
    quEmpresaemp_nomerespent: TStringField;
    quEmpresaemp_nomerespfin: TStringField;
    quTcevag_qtde: TSmallintField;
    quTcevag_qtdepreenc: TSmallintField;
    quTceAlteracaoTal_horarioini1: TDateTimeField;
    quTceAlteracaoTal_horarioini2: TDateTimeField;
    quTceAlteracaoTal_horariofim1: TDateTimeField;
    quTceAlteracaoTal_horariofim2: TDateTimeField;
    quTceAlteracaoTal_vigencia: TDateTimeField;
    quTceAditivoTpr_dataini: TDateTimeField;
    quTceAditivoTpr_datafim: TDateTimeField;
    quSFolhaPgtofat_mes: TSmallintField;
    quSFolhaPgtoemp_nome: TStringField;
    quSFolhaPgtofat_ano: TSmallintField;
    quEstudantepcu_turno: TStringField;
    quTceAditivotpr_retorno: TDateTimeField;
    quEstudanteEst_nomerecado: TStringField;
    quEstEst_cod: TIntegerField;
    quEstEst_dtinc: TDateTimeField;
    quEstEst_nome: TStringField;
    quEstEst_dtnasc: TDateTimeField;
    quEstEst_rg: TStringField;
    quEstEst_cpf: TStringField;
    quEstEst_sexo: TStringField;
    quEstEst_endereco: TStringField;
    quEstEst_bairro: TStringField;
    quEstEst_cidade: TStringField;
    quEstEst_estado: TStringField;
    quEstEst_cep: TStringField;
    quEstEst_ctpsnum: TStringField;
    quEstEst_ctpsserie: TStringField;
    quEstEst_email: TStringField;
    quEstEst_fone1: TStringField;
    quEstEst_fone2: TStringField;
    quEstEst_recado: TStringField;
    quEstEst_nomerecado: TStringField;
    quEstEst_estadocivil: TStringField;
    quEstEst_fumante: TStringField;
    quEstEst_religiao: TStringField;
    quEstest_situacao: TStringField;
    quEstinst_cod: TIntegerField;
    quEstinst_nome: TStringField;
    quEstcur_cod: TIntegerField;
    quEstcur_nome: TStringField;
    quEstpcu_anoatual: TSmallintField;
    quEstpcu_peratual: TStringField;
    quEstpcu_turno: TStringField;
    quSeguroExctce_situacao: TStringField;
    quSeguroExcest_dtnasc: TDateTimeField;
    quSeguroInctce_situacao: TStringField;
    quSeguroIncest_dtnasc: TDateTimeField;
    quTcetce_dataret: TDateTimeField;
    quTcetce_datadec: TDateTimeField;
    quEstudanteest_pgtolib: TStringField;
    quEstest_pgtolib: TStringField;
    quTcetce_tothoras: TFloatField;
    tbEtiqueta: TTable;
    tbEtiquetaNomeEsc: TStringField;
    tbEtiquetaNomeResp: TStringField;
    tbEtiquetaEnd1: TStringField;
    tbEtiquetaEnd2: TStringField;
    quEstudantepcu_vestib: TStringField;
    quFolhaPgtotce_cod: TIntegerField;
    quTriagem: TQuery;
    quTriagemest_nome: TStringField;
    quTriagempcu_turno: TStringField;
    quTriagempcu_anoatual: TSmallintField;
    quTriagemest_fone1: TStringField;
    quTriagemest_fone2: TStringField;
    quTriagemest_recado: TStringField;
    quTriagemest_cod: TIntegerField;
    dsRCaixa: TDataSource;
    quRCaixa: TQuery;
    quRCaixacai_ano: TIntegerField;
    quRCaixacai_mes: TIntegerField;
    quRCaixacai_inicial: TFloatField;
    quRCaixacen_data: TDateTimeField;
    quRCaixacen_motivo: TStringField;
    quRCaixacen_valor: TFloatField;
    dsFornecedor: TDataSource;
    quFornecedor: TQuery;
    usFornecedor: TUpdateSQL;
    quFornecedorforn_cod: TIntegerField;
    quFornecedorforn_dtinc: TDateTimeField;
    quFornecedorforn_nome: TStringField;
    quFornecedorforn_cnpj: TStringField;
    quFornecedorforn_inscest: TStringField;
    quFornecedorforn_endereco: TStringField;
    quFornecedorforn_bairro: TStringField;
    quFornecedorforn_cidade: TStringField;
    quFornecedorforn_estado: TStringField;
    quFornecedorforn_telefone: TStringField;
    quFornecedorforn_fax: TStringField;
    quFornecedorforn_cep: TStringField;
    quFornecedorforn_caixapostal: TStringField;
    quEstResc: TQuery;
    quEstResctce_cod: TIntegerField;
    quEstRescest_nome: TStringField;
    quEstRescemp_nome: TStringField;
    quEstResctce_dataini: TDateTimeField;
    quEstResctce_datafim: TDateTimeField;
    quEstRescest_dtnasc: TDateTimeField;
    quRDespesa: TQuery;
    quRDespesadsp_cod: TIntegerField;
    quRDespesadsp_nome: TStringField;
    quRDespesaValor1: TFloatField;
    quRDespesaValor2: TFloatField;
    quRDespesaValor3: TFloatField;
    quRDespesaValor4: TFloatField;
    quRDespesaValor5: TFloatField;
    quRDespesaValor6: TFloatField;
    quRReceita: TQuery;
    quREntrada: TQuery;
    quREntradacai_ano: TIntegerField;
    quREntradacai_mes: TIntegerField;
    quREntradacen_cod: TIntegerField;
    quREntradacen_data: TDateTimeField;
    quREntradacen_valor: TFloatField;
    quREntradacen_motivo: TStringField;
    quRSaida: TQuery;
    quRSaidacai_ano: TIntegerField;
    quRSaidacai_mes: TIntegerField;
    quRSaidacsa_cod: TIntegerField;
    quRSaidacsa_tipodesp: TStringField;
    quRSaidadsp_cod: TIntegerField;
    quRSaidacsa_motivo: TStringField;
    quRSaidacsa_valor: TFloatField;
    quRSaidacsa_data: TDateTimeField;
    quEstEmp1: TQuery;
    quEstEmp1emp_nome: TStringField;
    quAnivEstudante: TQuery;
    quAnivEstudanteest_nome: TStringField;
    quAnivEstudanteest_email: TStringField;
    quEtiqueta: TQuery;
    quEmpresaemp_tipo: TStringField;
    quEmpresaemp_formapgto: TStringField;
    quEmpresaemp_observacao: TStringField;
    quFolhaPgtofbo_liberacao: TStringField;
    quFolhaPgtoDescLiberacao: TStringField;
    quFolhaPgtoValorCerto: TFloatField;
    quTriagemTelefone: TStringField;
    quTriagemTelCompleto: TStringField;
    quTriagemTurno: TStringField;
    quSFolhaPgtotce_cod: TIntegerField;
    quSFolhaPgtofbo_liberacao: TStringField;
    quSFolhaPgtoDescLiberacao: TStringField;
    quSEntradas: TQuery;
    quSEntradasEntradas: TFloatField;
    quSSaidas: TQuery;
    quSSaidasSaidas: TFloatField;
    dsREntrada: TDataSource;
    dsRSaida: TDataSource;
    quREntradaTotEntradas: TFloatField;
    quRSaidaTotSaidas: TFloatField;
    quFaturafat_datareceb1: TDateTimeField;
    quFaturafat_datareceb2: TDateTimeField;
    quTceAlteracaotal_cod: TIntegerField;
    quTceAlteracaotal_tothoras: TFloatField;
    dsEstEmp1: TDataSource;
    quEstEmp1emp_cod: TIntegerField;
    quEstEmp1Estagiarios: TIntegerField;
    quEstEmp1TotEstagiarios: TIntegerField;
    quVerEscTotEstagiarios: TIntegerField;
    quSeguroIncemp_nome: TStringField;
    quSeguroIncTotEstagiarios: TIntegerField;
    quSeguroExcTotEstagiarios: TIntegerField;
    dsEstResc: TDataSource;
    quSPgtofat_datareceb1: TDateTimeField;
    quSPgtofat_datareceb2: TDateTimeField;
    quSFolhaPgtoTotEstagiarios: TIntegerField;
    quSFolhaPgtoTotBolsa: TFloatField;
    quSFolhaPgtoemp_nomerespcomp: TStringField;
    quSFolhaPgtoemp_telefone: TStringField;
    quRCaixaSomaEntradas: TFloatField;
    quRCaixaValEntrada: TFloatField;
    quRCaixaValSaida: TFloatField;
    quRCaixaSomaSaidas: TFloatField;
    quRCaixaTotalGeral: TFloatField;
    quRSomaCaixa: TQuery;
    quRSomaCaixacai_ano: TIntegerField;
    quRSomaCaixaSomaEntradas: TFloatField;
    quRSomaCaixaSomaSaidas: TFloatField;
    quRSomaCaixacai_mes: TIntegerField;
    quRCaixaTipo: TStringField;
    quRCaixaMesExtenso: TStringField;
    dsRDespesa: TDataSource;
    dsRReceita: TDataSource;
    quRReceitaemp_nome: TStringField;
    quEstEmpemp_telefone: TStringField;
    quEstEmpemp_nomerespcomp: TStringField;
    quEstpcu_vestib: TStringField;
    quEmpFuncionarioEfu_fone: TStringField;
    quEmpFuncionarioEfu_fonecel: TStringField;
    quEmpFuncionarioEfu_email: TStringField;
    quEmpFuncionarioEfu_setor: TStringField;
    quEmpFuncionarioEfu_cargo: TStringField;
    quEmpFuncionarioEfu_observacao: TStringField;
    quTceAlteracaotal_retorno: TDateTimeField;
    quFaturafat_totliberado: TFloatField;
    quFaturafat_totgeralLib: TFloatField;
    quSFolhaPgtoDataTCE: TStringField;
    quEstRescemp_nomerespent: TStringField;
    quEstEmptce_datares: TDateTimeField;
    quEmpresaemp_bolsa: TStringField;
    quEstRescMesesEstagiando: TFloatField;
    quTaxa: TQuery;
    quTaxatce_cod: TIntegerField;
    quTaxaest_cod: TIntegerField;
    quTaxaest_nome: TStringField;
    quTaxaemp_nome: TStringField;
    quTaxaDescSituacao: TStringField;
    quTaxaemp_telefone: TStringField;
    quTaxatce_datares: TDateTimeField;
    dsTaxa: TDataSource;
    quTaxatce_bolsa: TFloatField;
    quTaxaTaxa: TFloatField;
    quTaxatce_tipobolsa: TStringField;
    quTaxatce_tothoras: TFloatField;
    quSFolhaPgtofat_totcont: TFloatField;
    quEstResctipo: TStringField;
    quEstRescIncio: TStringField;
    quEstRescFim: TStringField;
    dsTotal: TDataSource;
    quTotal: TQuery;
    quTotalEst: TIntegerField;
    quTotalTotal: TFloatField;
    quSFolhaPgtofat_totliberado: TFloatField;
    quSFolhaPgtofat_totbolsa: TFloatField;
    quSFolhaPgtoNaoLiberado: TFloatField;
    quTotalEstagiarios: TIntegerField;
    quVerEscSemestre: TStringField;
    quVerEsc1: TQuery;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    dsVerEsc1: TDataSource;
    dsContaCorr: TDataSource;
    quContaCorr: TQuery;
    quEstudanteest_banco: TStringField;
    quEstudanteest_agencia: TStringField;
    quEstudanteest_conta: TStringField;
    quContaCorrest_nome: TStringField;
    quContaCorrest_endereco: TStringField;
    quContaCorrest_bairro: TStringField;
    quContaCorrest_cidade: TStringField;
    quContaCorrest_estado: TStringField;
    quContaCorrest_cep: TStringField;
    quContaCorrest_rg: TStringField;
    quContaCorrest_cpf: TStringField;
    quContaCorrest_banco: TStringField;
    quContaCorrest_agencia: TStringField;
    quContaCorrest_conta: TStringField;
    quContaCorrtce_cod: TIntegerField;
    quContaCorrEndCompleto: TStringField;
    quContaCorremp_nome: TStringField;
    quEstEmpest_pgtolib: TStringField;
    quEstEmpDescLiberacao: TStringField;
    quEmpresaemp_tipotaxa: TStringField;
    quEmpresaemp_valortaxa: TFloatField;
    dsTaxaF: TDataSource;
    quTaxaF: TQuery;
    quTaxaFTaxa: TFloatField;
    quTaxaFest_nome: TStringField;
    quTaxaFemp_nome: TStringField;
    quTaxaFemp_telefone: TStringField;
    quTaxaFemp_nomerespcomp: TStringField;
    quTaxaFtce_cod: TSmallintField;
    quTaxaFfbo_valor: TFloatField;
    quTaxaFest_cod: TIntegerField;
    quTaxaFfbo_liberacao: TStringField;
    quTaxaemp_tipotaxa: TStringField;
    quTaxaemp_valortaxa: TFloatField;
    quTaxatce_dataini: TDateTimeField;
    quTaxatce_datafim: TDateTimeField;
    quTaxaFemp_tipotaxa: TStringField;
    quTaxaFemp_valortaxa: TFloatField;
    dsFormandos: TDataSource;
    quFormandos: TQuery;
    quFormandosemp_cod: TIntegerField;
    quFormandosemp_nome: TStringField;
    quFormandosest_nome: TStringField;
    quFormandosinst_nome: TStringField;
    quFormandoscur_nome: TStringField;
    quFormandospcu_anoatual: TSmallintField;
    quFormandospcu_peratual: TStringField;
    quFormandosAnoPeriodo: TStringField;
    quFormandospcu_vestib: TStringField;
    quFormandosVestibular: TStringField;
    dsEstagiarios: TDataSource;
    quEstagiarios: TQuery;
    quEstagiariosest_nome: TStringField;
    quEstagiariosest_dtnasc: TDateTimeField;
    quTceAditivotpr_dataemi: TDateTimeField;
    quTceAlteracaotal_dataemi: TDateTimeField;
    dsREmpresa: TDataSource;
    quREmpresa: TQuery;
    quTaxaValBolsa: TFloatField;
    quContaCorrest_dtnasc: TDateTimeField;
    quVerEscinst_cidade: TStringField;
    tbEtiquetaEnd3: TStringField;
    quEtiquetaEmp: TQuery;
    quEtiquetaEmpEmp_cod: TIntegerField;
    quEtiquetaEmpEmp_dtinc: TDateTimeField;
    quEtiquetaEmpEmp_nome: TStringField;
    quEtiquetaEmpEmp_endereco: TStringField;
    quEtiquetaEmpEmp_bairro: TStringField;
    quEtiquetaEmpEmp_cidade: TStringField;
    quEtiquetaEmpEmp_estado: TStringField;
    quEtiquetaEmpEmp_cep: TStringField;
    quEtiquetaEmpEmp_caixapostal: TStringField;
    quEtiquetaEmpEmp_telefone: TStringField;
    quEtiquetaEmpEmp_fax: TStringField;
    quEtiquetaEmpEmp_cnpj: TStringField;
    quEtiquetaEmpEmp_inscest: TStringField;
    quEtiquetaEmpEmp_ramo: TStringField;
    quEtiquetaEmpEmp_porte: TStringField;
    quEtiquetaEmpEmp_iniconv: TDateTimeField;
    quEtiquetaEmpEmp_fimconv: TDateTimeField;
    quEtiquetaEmpEmp_respcont: TIntegerField;
    quEtiquetaEmpemp_nomerespcont: TStringField;
    quEtiquetaEmpEmp_respcomp: TIntegerField;
    quEtiquetaEmpemp_nomerespcomp: TStringField;
    quEtiquetaEmpEmp_respent: TIntegerField;
    quEtiquetaEmpemp_nomerespent: TStringField;
    quEtiquetaEmpEmp_respfin: TIntegerField;
    quEtiquetaEmpemp_nomerespfin: TStringField;
    quEtiquetaEmpemp_tipo: TStringField;
    quEtiquetaEmpemp_formapgto: TStringField;
    quEtiquetaEmpemp_observacao: TStringField;
    quEtiquetaEmpemp_bolsa: TStringField;
    quEtiquetaEmpemp_tipotaxa: TStringField;
    quEtiquetaEmpemp_valortaxa: TFloatField;
    quTotalTotalBB: TFloatField;
    quSFolhaPgtoValorBB: TFloatField;
    quEstEmpest_endereco: TStringField;
    quEstEmpest_dtnasc: TDateTimeField;
    quEstEmpinst_nome: TStringField;
    quEstEmpest_bairro: TStringField;
    quEstEmpest_fone1: TStringField;
    quEstEmpinst_nivel: TStringField;
    quEstEmpIdade: TStringField;
    quEstEmpemp_cod: TIntegerField;
    quEstagiariosest_cpf: TStringField;
    quEstEmpest_cpf: TStringField;
    quEstEmpest_cidade: TStringField;
    quEstEmpCPFFormatado: TStringField;
    quContUFPR: TQuery;
    quContUFPRest_nome: TStringField;
    quContUFPRinst_nome: TStringField;
    quContUFPRemp_nome: TStringField;
    quContUFPRemp_tipotaxa: TStringField;
    dsContUFPR: TDataSource;
    quContUFPRDescSituacao: TStringField;
    quContUFPRvalorCont: TFloatField;
    quContUFPRValorUFPR: TFloatField;
    quContUFPRtce_cod: TIntegerField;
    usContUFPR: TUpdateSQL;
    quContUFPRemp_valortaxa: TFloatField;
    quContUFPRtce_datares: TDateTimeField;
    quContUFPRConfirmacao: TStringField;
    quContUFPRtce_bolsa: TFloatField;
    quContUFPRtce_dataini: TDateTimeField;
    quSeguroIncest_cpf: TStringField;
    quSeguroIncCpfFormatado: TStringField;
    quSeguroExcest_cpf: TStringField;
    quSeguroExcCPFFormatado: TStringField;
    quVerEsc1Etiqueta: TStringField;
    usVerEsc1: TUpdateSQL;
    quSeguroExctce_datares: TDateTimeField;
    quEstRescpcu_peratual: TStringField;
    quEstRescpcu_anoatual: TSmallintField;
    quEstRescSemestre: TStringField;
    quEstResccur_nome: TStringField;
    quEstEmpcur_nome: TStringField;
    quFolhaPgtoest_cpf: TStringField;
    quFolhaPgtoest_endereco: TStringField;
    quFolhaPgtoest_cidade: TStringField;
    quFolhaPgtoest_estado: TStringField;
    quFolhaPgtoest_agencia: TStringField;
    quFolhaPgtoest_conta: TStringField;
    quFolhaPgtoest_Cep: TStringField;
    quEmpresaemp_site: TStringField;
    quEmpresaemp_filiais: TIntegerField;
    quEmpresaemp_atuacao: TIntegerField;
    quEmpresaemp_segmento: TStringField;
    quEmpresaemp_func: TIntegerField;
    quEmpresaemp_estag: TIntegerField;
    quEmpresaemp_missao: TStringField;
    quEmpresaemp_visao: TStringField;
    quEmpresaemp_valores: TStringField;
    quEmpresaemp_obsperfil: TStringField;
    quEmpresaemp_espera: TStringField;
    quEmpresaemp_perspec: TStringField;
    quEmpresaemp_treina: TStringField;
    quEstEmptpr_dataini: TDateTimeField;
    quEstEmptpr_datafim: TDateTimeField;
    quEstResctpr_dataini: TDateTimeField;
    quEstRescTpr_datafim: TDateTimeField;
    quInstFuncionario: TQuery;
    quInstFuncionarioInst_cod: TIntegerField;
    quInstFuncionarioFunc_cod: TIntegerField;
    quInstFuncionarioIfu_nome: TStringField;
    quInstFuncionarioIfu_fone: TStringField;
    quInstFuncionarioIfu_fonecel: TStringField;
    quInstFuncionarioIfu_email: TStringField;
    quInstFuncionarioIfu_setor: TStringField;
    quInstFuncionarioIfu_cargo: TStringField;
    quInstFuncionarioIfu_observacao: TStringField;
    quTcetce_horsabini1: TDateTimeField;
    quTcetce_horsabfim1: TDateTimeField;
    quTcetce_horsabini2: TDateTimeField;
    quTcetce_horsabfim2: TDateTimeField;
    quTceAlteracaotal_horsabini1: TDateTimeField;
    quTceAlteracaotal_horsabfim1: TDateTimeField;
    quTceAlteracaotal_horsabini2: TDateTimeField;
    quTceAlteracaotal_horsabfim2: TDateTimeField;
    quFolhaPgtotce_situacao: TStringField;
    quContUFPRtce_datafim: TDateTimeField;
    quContUFPRtce_tothoras: TFloatField;
    quContUFPRcur_nome: TStringField;
    quEmpFuncionarioefu_dia: TIntegerField;
    quEmpFuncionarioefu_mes: TIntegerField;
    dsAgenda: TDataSource;
    quAgenda: TQuery;
    usAgenda: TUpdateSQL;
    quAgendaage_data: TDateTimeField;
    quAgendaage_estcod1: TIntegerField;
    quAgendaage_estnome1: TStringField;
    quAgendaage_estcod2: TIntegerField;
    quAgendaage_estnome2: TStringField;
    quAgendaage_estcod3: TIntegerField;
    quAgendaage_estnome3: TStringField;
    quAgendaHora: TStringField;
    dsAgendaEst: TDataSource;
    quAgendaEst: TQuery;
    usAgendaEst: TUpdateSQL;
    quAgendaEstage_data: TDateTimeField;
    dsEntrevista: TDataSource;
    quEntrevista: TQuery;
    quEntrevistaage_data: TDateTimeField;
    quEntrevistaeva_resultado: TStringField;
    quEntrevistaEncaminhado: TStringField;
    quEntrevistaResultado: TStringField;
    quEntrevistavag_cod: TIntegerField;
    quAgendaage_faltou1: TStringField;
    quAgendaage_faltou2: TStringField;
    quAgendaage_faltou3: TStringField;
    quEntrevistaPresenca: TStringField;
    quEstudanteest_apresentacao: TStringField;
    quEstudanteest_faccomunicacao: TStringField;
    quEstudanteest_vocabulario: TStringField;
    quEstudanteest_factrabalho: TStringField;
    quEstudanteest_rotinas: TStringField;
    quAgendaage_vagcod1: TIntegerField;
    quAgendaage_vagcod2: TIntegerField;
    quAgendaage_vagcod3: TIntegerField;
    quAgendaempresa1: TStringField;
    quAgendaempresa2: TStringField;
    quAgendaempresa3: TStringField;
    quSeguroExcest_email: TStringField;
    quFolhaPgtoest_cod: TIntegerField;
    quEstEmpSituacao: TIntegerField;
    quAvalDesemp: TQuery;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dsAvalDesemp: TDataSource;
    quTcetce_avaliacao: TDateTimeField;
    quAvalDesemptce_avaliacao: TDateTimeField;
    quAvalDesempemp_nome: TStringField;
    quAvalDesempemp_telefone: TStringField;
    quAvalDesempFoneFormatado: TStringField;
    quEmpresaemp_contratacao: TStringField;
    quEmpresaemp_incontratacao: TStringField;
    quEmpresaemp_atendcetefe: TStringField;
    quEmpresaemp_inatendcetefe: TStringField;
    quEmpresaemp_prevcontrat: TStringField;
    quEmpresaemp_respcontato: TStringField;
    quEmpresaemp_contato: TStringField;
    quEmpresaemp_datacontato: TDateTimeField;
    quEmpresaemp_setorcontato: TStringField;
    quEmpresaemp_rapidez: TStringField;
    quEmpresaemp_inrapidez: TStringField;
    quEmpresaemp_qualidade: TStringField;
    quEmpresaemp_inqualidade: TStringField;
    quEmpresaemp_atendimento: TStringField;
    quEmpresaemp_inatendimento: TStringField;
    quEmpresaemp_pagamento: TStringField;
    quEmpresaemp_inpagamento: TStringField;
    quEmpresaemp_duvidas: TStringField;
    quEmpresaemp_induvidas: TStringField;
    quEmpresaemp_ciee: TStringField;
    quEmpresaemp_iel: TStringField;
    quEmpresaemp_interage: TStringField;
    quEmpresaemp_educare: TStringField;
    quEmpresaemp_outrasint: TStringField;
    quEmpresaemp_sugestoes: TStringField;
    quAgendaage_ficha1: TStringField;
    quAgendaage_ficha2: TStringField;
    quAgendaage_ficha3: TStringField;
    quAgendasetor1: TStringField;
    quAgendasetor2: TStringField;
    quAgendasetor3: TStringField;
    quVagaCursoVcu_periodoini: TFloatField;
    quVagaCursoVcu_periodofim: TFloatField;
    quVagaCursovcu_observacoes: TStringField;
    quEntrevistaemp_nome: TStringField;
    quEstudanteest_filhos: TSmallintField;
    quEstudanteest_numend: TStringField;
    quEstudanteest_apto: TStringField;
    quEstudanteest_bloco: TStringField;
    quInstCursocuri_coord: TIntegerField;
    quInstCursocuri_nomecoord: TStringField;
    quPerSoftwarePsw_nivel: TStringField;
    quPerSoftwareNivel: TStringField;
    quPerIdiomapid_fala: TStringField;
    quPerIdiomapid_le: TStringField;
    quPerIdiomapid_escreve: TStringField;
    quInstCursocuri_obs: TStringField;
    quEmpresaemp_enderecoenc: TStringField;
    quEmpresaemp_bairroenc: TStringField;
    quEmpresaemp_cidadeenc: TStringField;
    quEmpresaemp_telefoneenc: TStringField;
    quExperienciaExp_inicio: TStringField;
    quExperienciaExp_fim: TStringField;
    quRReceitaRec1: TFloatField;
    quRReceitaEst1: TIntegerField;
    quRReceitaRec2: TFloatField;
    quRReceitaEst2: TIntegerField;
    quRReceitaRec3: TFloatField;
    quRReceitaEst3: TIntegerField;
    quRReceitaRec4: TFloatField;
    quRReceitaEst4: TIntegerField;
    quRReceitaRec5: TFloatField;
    quRReceitaEst5: TIntegerField;
    quRReceitaRec6: TFloatField;
    quRReceitaEst6: TIntegerField;
    usCoordenador: TUpdateSQL;
    quInstCoordenador: TQuery;
    IntegerField7: TIntegerField;
    dsInstCoordenador: TDataSource;
    quEmpresaemp_numend: TStringField;
    quEmpresaemp_cjto: TStringField;
    quEmpresaemp_numendenc: TStringField;
    quEmpresaemp_cjtoendenc: TStringField;
    quInstituicaoinst_numend: TStringField;
    quEstudanteest_dtatu: TDateTimeField;
    quEntrevistaest_cod: TIntegerField;
    quTaxatce_situacao: TIntegerField;
    quVagaIdiomavid_fala: TStringField;
    quVagaIdiomavid_le: TStringField;
    quVagaIdiomavid_escreve: TStringField;
    quAgendaVaga: TQuery;
    quAgendaVagavag_cod: TIntegerField;
    quAgendaVagaemp_nome: TStringField;
    quAgendaVagaest_nome: TStringField;
    quAgendaVagaage_data: TDateTimeField;
    quEntrevNaoRealiz: TQuery;
    quEntrevNaoRealizage_data: TDateTimeField;
    quEntrevNaoRealizage_estcod1: TIntegerField;
    quEntrevNaoRealizage_faltou1: TStringField;
    quEntrevNaoRealizage_ficha1: TStringField;
    quEntrevNaoRealizage_estcod2: TIntegerField;
    quEntrevNaoRealizage_faltou2: TStringField;
    quEntrevNaoRealizage_ficha2: TStringField;
    quEntrevNaoRealizage_estcod3: TIntegerField;
    quEntrevNaoRealizage_faltou3: TStringField;
    quEntrevNaoRealizage_ficha3: TStringField;
    quEntrevNaoRealizage_vagcod1: TIntegerField;
    quEntrevNaoRealizage_vagcod2: TIntegerField;
    quEntrevNaoRealizage_vagcod3: TIntegerField;
    quEntrevNaoRealizemp_nome: TStringField;
    quEntrevNaoRealizest_nome: TStringField;
    quEntrevNaoRealizPresenca: TStringField;
    quEstudanteinst_nome: TStringField;
    quEstudantecur_nome: TStringField;
    quExperienciaexp_telefone: TStringField;
    quExperienciaexp_funcest: TStringField;
    quExperienciaexp_motivo: TStringField;
    quExperienciaexp_salinicial: TFloatField;
    quExperienciaexp_salfinal: TFloatField;
    quExperienciaExp_atividades: TStringField;
    quEstudanteest_nacionalidade: TStringField;
    quEstudanteest_localnasc: TStringField;
    quExperienciaexp_contato: TStringField;
    quEmpresaEmp_dtretorno: TDateTimeField;
    quInstituicaoinst_dtretorno: TDateTimeField;
    quEmpresaemp_estadoenc: TStringField;
    quEntrevistaporque: TStringField;
    quEntrevistaest: TIntegerField;
    quExperienciaexp_nroemp: TIntegerField;
    quInstCoordenadorcoord_cod: TIntegerField;
    quInstCoordenadorico_nome: TStringField;
    quInstCoordenadorico_fone: TStringField;
    quInstCoordenadorico_fonecel: TStringField;
    quInstCoordenadorico_email: TStringField;
    quInstCoordenadorico_setor: TStringField;
    quInstCoordenadorico_cargo: TStringField;
    quInstCoordenadorico_observacao: TStringField;
    quInstCursoico_email: TStringField;
    quInstCursoico_fone: TStringField;
    quInstituicaoInst_site: TStringField;
    quEmpresaemp_enderecocor: TStringField;
    quEmpresaemp_bairrocor: TStringField;
    quEmpresaemp_cidadecor: TStringField;
    quEmpresaemp_estadocor: TStringField;
    quEmpresaemp_telefonecor: TStringField;
    quEmpresaemp_numendcor: TStringField;
    quEmpresaemp_cjtoendcor: TStringField;
    quEmpresaemp_cepenc: TStringField;
    quEmpresaemp_cepcor: TStringField;
    quEtiquetaEmpEmp_dtretorno: TDateTimeField;
    quEtiquetaEmpemp_site: TStringField;
    quEtiquetaEmpemp_filiais: TIntegerField;
    quEtiquetaEmpemp_atuacao: TIntegerField;
    quEtiquetaEmpemp_segmento: TStringField;
    quEtiquetaEmpemp_func: TIntegerField;
    quEtiquetaEmpemp_estag: TIntegerField;
    quEtiquetaEmpemp_missao: TStringField;
    quEtiquetaEmpemp_visao: TStringField;
    quEtiquetaEmpemp_valores: TStringField;
    quEtiquetaEmpemp_obsperfil: TStringField;
    quEtiquetaEmpemp_espera: TStringField;
    quEtiquetaEmpemp_perspec: TStringField;
    quEtiquetaEmpemp_treina: TStringField;
    quEtiquetaEmpemp_dtpgto: TIntegerField;
    quEtiquetaEmpemp_contratacao: TStringField;
    quEtiquetaEmpemp_incontratacao: TStringField;
    quEtiquetaEmpemp_atendcetefe: TStringField;
    quEtiquetaEmpemp_inatendcetefe: TStringField;
    quEtiquetaEmpemp_prevcontrat: TStringField;
    quEtiquetaEmpemp_respcontato: TStringField;
    quEtiquetaEmpemp_contato: TStringField;
    quEtiquetaEmpemp_datacontato: TDateTimeField;
    quEtiquetaEmpemp_setorcontato: TStringField;
    quEtiquetaEmpemp_rapidez: TStringField;
    quEtiquetaEmpemp_inrapidez: TStringField;
    quEtiquetaEmpemp_qualidade: TStringField;
    quEtiquetaEmpemp_inqualidade: TStringField;
    quEtiquetaEmpemp_atendimento: TStringField;
    quEtiquetaEmpemp_inatendimento: TStringField;
    quEtiquetaEmpemp_pagamento: TStringField;
    quEtiquetaEmpemp_inpagamento: TStringField;
    quEtiquetaEmpemp_duvidas: TStringField;
    quEtiquetaEmpemp_induvidas: TStringField;
    quEtiquetaEmpemp_ciee: TStringField;
    quEtiquetaEmpemp_iel: TStringField;
    quEtiquetaEmpemp_interage: TStringField;
    quEtiquetaEmpemp_educare: TStringField;
    quEtiquetaEmpemp_outrasint: TStringField;
    quEtiquetaEmpemp_sugestoes: TStringField;
    quEtiquetaEmpemp_enderecoenc: TStringField;
    quEtiquetaEmpemp_bairroenc: TStringField;
    quEtiquetaEmpemp_cidadeenc: TStringField;
    quEtiquetaEmpemp_estadoenc: TStringField;
    quEtiquetaEmpemp_telefoneenc: TStringField;
    quEtiquetaEmpemp_numend: TStringField;
    quEtiquetaEmpemp_cjto: TStringField;
    quEtiquetaEmpemp_numendenc: TStringField;
    quEtiquetaEmpemp_cjtoendenc: TStringField;
    quEtiquetaEmpemp_enderecocor: TStringField;
    quEtiquetaEmpemp_bairrocor: TStringField;
    quEtiquetaEmpemp_cidadecor: TStringField;
    quEtiquetaEmpemp_estadocor: TStringField;
    quEtiquetaEmpemp_telefonecor: TStringField;
    quEtiquetaEmpemp_numendcor: TStringField;
    quEtiquetaEmpemp_cjtoendcor: TStringField;
    quEtiquetaEmpemp_cepenc: TStringField;
    quEtiquetaEmpemp_cepcor: TStringField;
    quInstituicaoinst_sala: TStringField;
    quBuscaTCE: TQuery;
    quBuscaTCETce_cod: TIntegerField;
    quBuscaTCETce_data: TDateTimeField;
    quBuscaTCEEst_cod: TIntegerField;
    quBuscaTCEest_nome: TStringField;
    quBuscaTCETce_estenc: TStringField;
    quBuscaTCEEmp_cod: TIntegerField;
    quBuscaTCEemp_nome: TStringField;
    quBuscaTCETce_tipocont: TStringField;
    quBuscaTCEVag_cod: TIntegerField;
    quBuscaTCETce_horarioini1: TDateTimeField;
    quBuscaTCETce_horariofim1: TDateTimeField;
    quBuscaTCETce_horarioini2: TDateTimeField;
    quBuscaTCETce_horariofim2: TDateTimeField;
    quBuscaTCEtce_horsabini1: TDateTimeField;
    quBuscaTCEtce_horsabfim1: TDateTimeField;
    quBuscaTCEtce_horsabini2: TDateTimeField;
    quBuscaTCEtce_horsabfim2: TDateTimeField;
    quBuscaTCETce_seguro: TStringField;
    quBuscaTCETce_dataini: TDateTimeField;
    quBuscaTCETce_datafim: TDateTimeField;
    quBuscaTCETce_datares: TDateTimeField;
    quBuscaTCETce_bolsa: TFloatField;
    quBuscaTCETce_tipobolsa: TStringField;
    quBuscaTCETce_situacao: TStringField;
    quBuscaTCEtce_dataret: TDateTimeField;
    quBuscaTCEtce_datadec: TDateTimeField;
    quBuscaTCEtce_tothoras: TFloatField;
    quBuscaTCEtce_avaliacao: TDateTimeField;
    quBuscaTCEinst_nome: TStringField;
    quBuscaTCEcur_nome: TStringField;
    quAvalDesempemp_nomerespent: TStringField;
    quAvalDesempefu_email: TStringField;
    quContUFPRtce_situacao: TIntegerField;
    quSeguroExcemp_nome: TStringField;
    quVagaSoftwarestw_nome: TStringField;
    quConsEstudante: TQuery;
    quConsEstudanteest_cod: TIntegerField;
    quConsEstudanteest_nome: TStringField;
    quConsEstudanteinst_nome: TStringField;
    quConsEstudantecur_nome: TStringField;
    quConsEstudantepcu_anoatual: TIntegerField;
    quConsEstudanteest_situacao: TStringField;
    dsConsEstudante: TDataSource;
    quEstRescemail: TStringField;
    quEstudanteest_tipoconta: TStringField;
    quEstudanteest_cnh: TStringField;
    quAnivEstudanteemp_nome: TStringField;
    quAnivEstudanteinst_nome: TStringField;
    quEmpresaEmp_indprospect: TStringField;
    quEmpresaEmp_nomefantasia: TStringField;
    quEmpresaemp_fornec: TIntegerField;
    quFuncionario: TQuery;
    dsFuncionario: TDataSource;
    usFuncionario: TUpdateSQL;
    quFuncionariofunc_cod: TIntegerField;
    quFuncionariofunc_nome: TStringField;
    quFuncionariofunc_fone: TStringField;
    quFuncionariofunc_fonecel: TStringField;
    quFuncionariofunc_email: TStringField;
    quFuncionariofunc_setor: TStringField;
    quFuncionariofunc_tipo: TStringField;
    quFuncionariofunc_dia: TIntegerField;
    quFuncionariofunc_mes: TIntegerField;
    quEmpresaemp_dtenvio: TDateTimeField;
    quEmpresaemp_dtpromcad: TDateTimeField;
    quEmpresaemp_dtpromvaga: TDateTimeField;
    quEmpresaemp_funccont: TIntegerField;
    quEmpresafunc_nome: TStringField;
    dsEmpHistorico: TDataSource;
    quEmpHistorico: TQuery;
    usEmpHistorico: TUpdateSQL;
    quFuncionariofunc_ativo: TStringField;
    quEmpresaemp_dtContatoCom: TDateTimeField;
    quREmpresaemp_cod: TIntegerField;
    quREmpresaemp_nome: TStringField;
    quREmpresaEstagiarios: TIntegerField;
    quREmpresabolsa: TFloatField;
    quREmpresataxa: TFloatField;
    quTcevag_cancelada: TStringField;
    quEMailEstudante: TQuery;
    quEMailInstituicao: TQuery;
    quEMailInstituicaoinst_nome: TStringField;
    quEMailInstituicaoifu_nome: TStringField;
    quEMailInstituicaoifu_email: TStringField;
    quEMailEmpresa: TQuery;
    quEMailEmpresaemp_nome: TStringField;
    quEMailEmpresaefu_nome: TStringField;
    quEMailEmpresaefu_email: TStringField;
    quInstFuncionarioifu_dia: TIntegerField;
    quInstFuncionarioifu_mes: TIntegerField;
    quAnivEmpresa: TQuery;
    quAnivEmpresaemp_nome: TStringField;
    quAnivEmpresaefu_nome: TStringField;
    quAnivEmpresaTotalEst: TIntegerField;
    quAnivInstituicao: TQuery;
    quAnivInstituicaoinst_nome: TStringField;
    quAnivInstituicaoifu_nome: TStringField;
    quAnivInstituicaoTotalEst: TIntegerField;
    quBuscaEmpresa: TQuery;
    quBuscaEmpresaemp_nome: TStringField;
    quBuscaEmpresaemp_cod: TIntegerField;
    dsBuscaEmpresa: TDataSource;
    quBuscaEmpresaemp_dtinc: TDateTimeField;
    dsBuscaTCE: TDataSource;
    quEmpFuncionarioefu_cpf: TStringField;
    quEmpFuncionarioefu_rg: TStringField;
    quEmpFuncionarioefu_nacionalidade: TStringField;
    quEmpFuncionarioefu_estcivil: TStringField;
    quEmpFuncionarioefu_profissao: TStringField;
    quTransfCursoEst: TQuery;
    IntegerField8: TIntegerField;
    StringField9: TStringField;
    DateTimeField4: TDateTimeField;
    IntegerField9: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField10: TIntegerField;
    StringField12: TStringField;
    IntegerField11: TIntegerField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    DateTimeField12: TDateTimeField;
    StringField13: TStringField;
    DateTimeField13: TDateTimeField;
    DateTimeField14: TDateTimeField;
    DateTimeField15: TDateTimeField;
    FloatField1: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateTimeField16: TDateTimeField;
    DateTimeField17: TDateTimeField;
    FloatField2: TFloatField;
    DateTimeField18: TDateTimeField;
    StringField16: TStringField;
    StringField17: TStringField;
    quTransfCursoInst: TQuery;
    IntegerField12: TIntegerField;
    StringField18: TStringField;
    DateTimeField19: TDateTimeField;
    IntegerField13: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField14: TIntegerField;
    StringField21: TStringField;
    IntegerField15: TIntegerField;
    DateTimeField20: TDateTimeField;
    DateTimeField21: TDateTimeField;
    DateTimeField22: TDateTimeField;
    DateTimeField23: TDateTimeField;
    DateTimeField24: TDateTimeField;
    DateTimeField25: TDateTimeField;
    DateTimeField26: TDateTimeField;
    DateTimeField27: TDateTimeField;
    StringField22: TStringField;
    DateTimeField28: TDateTimeField;
    DateTimeField29: TDateTimeField;
    DateTimeField30: TDateTimeField;
    FloatField3: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField31: TDateTimeField;
    DateTimeField32: TDateTimeField;
    FloatField4: TFloatField;
    DateTimeField33: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    quCandidatosEnc: TQuery;
    quCandidatosEncvag_cod: TIntegerField;
    quCandidatosEncemp_nome: TStringField;
    quCandidatosEncest_nome: TStringField;
    dsCandidatosEnc: TDataSource;
    dsInstDiretor: TDataSource;
    quInstDiretor: TQuery;
    quInstDiretorinst_cod: TIntegerField;
    quInstDiretordire_cod: TIntegerField;
    quInstDiretoridr_nome: TStringField;
    quInstDiretorIdr_fone: TStringField;
    quInstDiretoridr_fonecel: TStringField;
    quInstDiretoridr_email: TStringField;
    quInstDiretoridr_setor: TStringField;
    quInstDiretoridr_cargo: TStringField;
    quInstDiretoridr_observacao: TStringField;
    usInstDiretor: TUpdateSQL;
    quInstCursocuri_diretor: TIntegerField;
    quInstCursocuri_nomediretor: TStringField;
    quTcetce_segunda: TStringField;
    quTcetce_terca: TStringField;
    quTcetce_quarta: TStringField;
    quTcetce_quinta: TStringField;
    quTcetce_sexta: TStringField;
    quTcetce_sabado: TStringField;
    quTceAlteracaotal_segunda: TStringField;
    quTceAlteracaotal_terca: TStringField;
    quTceAlteracaotal_quarta: TStringField;
    quTceAlteracaotal_quinta: TStringField;
    quTceAlteracaotal_sexta: TStringField;
    quTceAlteracaotal_sabado: TStringField;
    quTaxaBolsaTotal: TFloatField;
    quAgendaage_porque1: TStringField;
    quAgendaage_porque2: TStringField;
    quAgendaage_porque3: TStringField;
    quInstFuncionarioIfu_cpf: TStringField;
    quInstFuncionarioIfu_rg: TStringField;
    quEmpresaEmp_periodopgto: TStringField;
    quEmpresaEmp_periodopgtoobs: TStringField;
    quEmpresaEmp_dtInicio: TDateTimeField;
    quEmpresaTempo: TStringField;
    quTcetce_domingo: TStringField;
    quEstudantePeriodo: TStringField;
    quConsEstudanteSemestre: TStringField;
    quConsEstudanteSituacao: TStringField;
    quConsEstudantepcu_peratual: TStringField;
    quConsEstudanteEst_email: TStringField;
    quConsEstudanteEst_fone1: TStringField;
    quConsEstudanteEst_fone2: TStringField;
    quConsEstudantepcu_turno: TStringField;
    quConsEstudanteTurno: TStringField;
    dsInstHistorico: TDataSource;
    quInstHistorico: TQuery;
    usInsHistorico: TUpdateSQL;
    quEmpHistoricoemp_cod: TIntegerField;
    quEmpHistoricohist_cod: TIntegerField;
    quEmpHistoricoehi_dthist: TDateTimeField;
    quEmpHistoricofunc_cod: TIntegerField;
    quEmpHistoricoehi_descricao: TMemoField;
    quEmpHistoricofunccetefe_cod: TIntegerField;
    quEmpHistoricofunc_nome: TStringField;
    quInstHistoricoinst_cod: TIntegerField;
    quInstHistoricohist_cod: TIntegerField;
    quInstHistoricoehi_dthist: TDateTimeField;
    quInstHistoricofunc_cod: TIntegerField;
    quInstHistoricoehi_descricao: TMemoField;
    quInstHistoricofunccetefe_cod: TIntegerField;
    quInstHistoricofunc_nome: TStringField;
    quEmpHistoricoFunc_Cetefe: TStringField;
    quInstHistoricoFunc_Cetefe: TStringField;
    DsqryRempresa: TDataSource;
    QryRempresa: TQuery;
    QryRempresaEmp_cod: TIntegerField;
    QryRempresaTipo: TStringField;
    QryRempresaEmp_nome: TStringField;
    QryRempresaFuncionario: TStringField;
    QryRempresaEmail: TStringField;
    QryRempresaCelular: TStringField;
    QryRempresaSetor: TStringField;
    QryRempresaCargo: TStringField;
    QryRempresaTelefone: TStringField;
    dsVagHistorico: TDataSource;
    quVagHistorico: TQuery;
    usVagHistorico: TUpdateSQL;
    quVagHistoricovag_cod: TIntegerField;
    quVagHistoricohist_cod: TIntegerField;
    quVagHistoricovhi_dthist: TDateTimeField;
    quVagHistoricofunc_cod: TIntegerField;
    quVagHistoricovhi_descricao: TMemoField;
    quVagHistoricofunccetefe_cod: TIntegerField;
    quVagHistoricoFunc_Cetefe: TStringField;
    quVagHistoricoemp_cod: TIntegerField;
    quEstudanteest_porqueestagio: TStringField;
    quEstudanteest_areasexp: TStringField;
    quEstudanteest_sitfamiliar: TMemoField;
    quEstudanteest_impedimento: TMemoField;
    quEstudanteest_habilidades: TMemoField;
    quEstudanteest_caracteristicas: TMemoField;
    quEstudanteest_porquestagioest: TMemoField;
    qrypesquisa: TQuery;
    quVaga: TQuery;
    quVagaVag_cod: TIntegerField;
    quVagaEmp_cod: TIntegerField;
    quVagaVag_setor: TStringField;
    quVagaVag_dataabertura: TDateTimeField;
    quVagaVag_qtde: TIntegerField;
    quVagaVag_qtdepreenc: TIntegerField;
    quVagaVag_horarioini1: TDateTimeField;
    quVagaVag_horariofim1: TDateTimeField;
    quVagaVag_horarioini2: TDateTimeField;
    quVagaVag_horariofim2: TDateTimeField;
    quVagaVag_periodo: TStringField;
    quVagaVag_duracao: TIntegerField;
    quVagaVag_periodic: TStringField;
    quVagaVag_efetiva: TStringField;
    quVagaVag_prorroga: TStringField;
    quVagaVag_sexo: TStringField;
    quVagaVag_idademin: TIntegerField;
    quVagaVag_idademax: TIntegerField;
    quVagaVag_digitacao: TStringField;
    quVagaVag_valetransp: TStringField;
    quVagaVag_refeicaoprop: TStringField;
    quVagavag_valeref: TStringField;
    quVagaVag_valorvaleref: TFloatField;
    quVagavag_valealim: TStringField;
    quVagaVag_valorvalealim: TFloatField;
    quVagaVag_valorbolsa: TFloatField;
    quVagaVag_tipobolsa: TStringField;
    quVagavag_respselecao: TStringField;
    quVagavag_divulgasite: TStringField;
    quVagavag_divulgaemail: TStringField;
    quVagavag_transpemp: TStringField;
    quVagavag_assistmedica: TStringField;
    quVagavag_cancelada: TStringField;
    quVagavag_observacao: TMemoField;
    quVagaemp_nome: TStringField;
    quVagaEncaminhados: TIntegerField;
    quVagaDesistentes: TIntegerField;
    quVagaAprovados: TIntegerField;
    Qrypesq: TQuery;
    qryTCES: TQuery;
    qryTCESTce_cod: TIntegerField;
    qryTCESResultado: TStringField;
    qryTCESEst_nome: TStringField;
    qryTCESVag_cod: TIntegerField;
    qryTCESVag_setor: TStringField;
    qryTCESVag_qtde: TIntegerField;
    qryTCESVag_qtdepreenc: TIntegerField;
    qryTCESSituacaoTce: TStringField;
    qryTCESEmp_nome: TStringField;
    qryTCESVag_dataabertura: TDateTimeField;
    qryTCEStce_data: TDateTimeField;
    quVagaCanceladas: TIntegerField;
    QRYOPTEMPRESA: TQuery;
    QRYOPTEMPRESAEmp_cod: TIntegerField;
    QRYOPTEMPRESAVag_cod: TIntegerField;
    QRYOPTEMPRESAEmp_nome: TStringField;
    QRYOPTEMPRESAEst_nome: TStringField;
    QRYOPTEMPRESAcur_nome: TStringField;
    QRYOPTEMPRESAEst_fone1: TStringField;
    QRYOPTEMPRESAEst_fone2: TStringField;
    QRYOPTEMPRESApcu_anoatual: TIntegerField;
    QRYOPTEMPRESAPeriodo: TStringField;
    QRYOPTEMPRESATurno: TStringField;
    QRYOPTEMPRESAResultado: TStringField;
    QRYOPTEMPRESAVag_setor: TStringField;
    QRYOPTEMPRESAVag_dataabertura: TDateTimeField;
    QRYOPTEMPRESAEva_dataenc: TDateTimeField;
    QRYOPTEMPRESAVag_qtde: TIntegerField;
    QRYOPTEMPRESAVag_qtdepreenc: TIntegerField;
    dsOptEmpresa: TDataSource;
    qryPromocao: TQuery;
    qryPromocaoEst_nome: TStringField;
    qryPromocaoest_cod: TIntegerField;
    qryPromocaocur_nome: TStringField;
    qryPromocaocur_nivel: TStringField;
    qryPromocaoTce_data: TDateTimeField;
    qryPromocaoTce_cod: TIntegerField;
    qryPromocaoTce_situacao: TStringField;
    qryPromocaocur_cod: TIntegerField;
    qryPromocaoest_situacao: TStringField;
    qryPromocaoest_cursoano: TIntegerField;
    qryPromocaoest_cursoSem: TIntegerField;
    dtspromocao: TDataSource;
    dtspesquisa: TDataSource;
    qryPromocaopcu_anoatual: TIntegerField;
    qryPromocaoTipo: TStringField;
    dsAtuEstudante: TDataSource;
    quAtuEstudante: TQuery;
    usAtuEstudante: TUpdateSQL;
    dsHistorico: TDataSource;
    quHistorico: TQuery;
    questHistorico: TUpdateSQL;
    quAtuEstudanteest_cod: TIntegerField;
    quAtuEstudanteest_situacao: TStringField;
    quAtuEstudanteinst_cod: TIntegerField;
    quAtuEstudantecur_cod: TIntegerField;
    quAtuEstudantepcu_anoatual: TIntegerField;
    quAtuEstudantepcu_peratual: TStringField;
    quAtuEstudantepcu_turno: TStringField;
    quAtuEstudanteest_cursoAno: TIntegerField;
    quAtuEstudanteest_cursoSem: TIntegerField;
    quHistoricoest_cod: TIntegerField;
    quHistoricocur_cod: TIntegerField;
    quHistoricopcu_cursoAno: TIntegerField;
    quHistoricopcu_cursoSem: TIntegerField;
    quHistoricopcu_ano: TIntegerField;
    quHistoricoinst_cod: TIntegerField;
    quTceest_fone1: TStringField;
    quTceest_fone2: TStringField;
    quTceest_recado: TStringField;
    quTceest_nomerecado: TStringField;
    quEstudanteest_cursoano: TIntegerField;
    quEstudanteest_cursoSem: TIntegerField;
    quVagavag_qtdecancel: TIntegerField;
    quVagaRespEmpresa: TStringField;
    quAgendaage_CRC1: TStringField;
    quAgendaage_crc2: TStringField;
    quAgendaage_crc3: TStringField;
    qryREstagiarios: TQuery;
    DsQryREstariagios: TDataSource;
    qryREstagiariosEmpresa: TStringField;
    qryREstagiariosEstudante: TStringField;
    qryREstagiariosEmpEndereco: TStringField;
    qryREstagiariosEmpBairro: TStringField;
    qryREstagiariosEmpCidade: TStringField;
    qryREstagiariosEmpEstado: TStringField;
    qryREstagiariosEmpCep: TStringField;
    qryREstagiariosCnpj: TStringField;
    qryREstagiariosEstEndereco: TStringField;
    qryREstagiariosCpg: TStringField;
    qryREstagiariosRg: TStringField;
    qryREstagiariosNascimento: TDateTimeField;
    qryREstagiariosbolsa: TFloatField;
    qryREstagiariosEstCidade: TStringField;
    qryREstagiariosEstBairro: TStringField;
    qryREstagiariosEstCep: TStringField;
    quAgendaage_dtEnvio1: TDateTimeField;
    quAgendaage_dtEnvio2: TDateTimeField;
    quAgendaage_dtEnvio3: TDateTimeField;
    quEntrevNaoRealizage_dtEnvio1: TDateTimeField;
    quEntrevNaoRealizage_dtEnvio2: TDateTimeField;
    quEntrevNaoRealizage_dtEnvio3: TDateTimeField;
    quEntrevNaoRealizest_email: TStringField;
    quVagaAux: TQuery;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    DateTimeField34: TDateTimeField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    StringField31: TStringField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    quEtiquetaInst_cod: TIntegerField;
    quEtiquetaInst_dtinc: TDateTimeField;
    quEtiquetainst_dtretorno: TDateTimeField;
    quEtiquetaInst_nome: TStringField;
    quEtiquetaInst_endereco: TStringField;
    quEtiquetaInst_bairro: TStringField;
    quEtiquetaInst_cidade: TStringField;
    quEtiquetaInst_estado: TStringField;
    quEtiquetaInst_cep: TStringField;
    quEtiquetaInst_caixapostal: TStringField;
    quEtiquetaInst_telefone: TStringField;
    quEtiquetaInst_fax: TStringField;
    quEtiquetaInst_site: TStringField;
    quEtiquetaInst_cnpj: TStringField;
    quEtiquetaInst_inscest: TStringField;
    quEtiquetaInst_tipo: TStringField;
    quEtiquetaInst_nivel: TStringField;
    quEtiquetaInst_iniconv: TDateTimeField;
    quEtiquetaInst_fimconv: TDateTimeField;
    quEtiquetaInst_respconv: TIntegerField;
    quEtiquetaInst_respcomp: TIntegerField;
    quEtiquetainst_numend: TStringField;
    quEtiquetainst_sala: TStringField;
    quEtiquetainst_nomerespconv: TStringField;
    quEtiquetainst_nomerespcomp: TStringField;
    quFolhaPgtoLot_numero: TIntegerField;
    quLotePgto: TQuery;
    DsLotePgto: TDataSource;
    usLotePgto: TUpdateSQL;
    quLotePgtoLot_numero: TIntegerField;
    quLotePgtoFat_numero: TIntegerField;
    quLotePgtoLot_data: TDateTimeField;
    quLotePgtoEmp_cod: TIntegerField;
    quLotePgtoLot_sequencia: TIntegerField;
    quLotePgtoemp_nome: TStringField;
    quLotePgtofat_ano: TIntegerField;
    quLotePgtoFat_mes: TIntegerField;
    qryREstagiariosEst_email: TStringField;
    qryREstagiariosEst_fone1: TStringField;
    qryREstagiariosEst_fone2: TStringField;
    qryREstagiariosEst_recado: TStringField;
    quTcetce_EstObrigato: TStringField;
    quContaCorrcpf_formatado: TStringField;
    quSeguroExcest_conta: TStringField;
    quSeguroExcest_agencia: TStringField;
    quSeguroExcest_banco: TStringField;
    quSeguroIncest_conta: TStringField;
    quSeguroIncest_agencia: TStringField;
    quSeguroIncest_banco: TStringField;
    quSeguroExcest_rg: TStringField;
    quSeguroIncest_rg: TStringField;
    quTcetce_horsegini1: TDateTimeField;
    quTcetce_horsegfim1: TDateTimeField;
    quTcetce_horsegini2: TDateTimeField;
    quTcetce_horsegfim2: TDateTimeField;
    quTcetce_horterini1: TDateTimeField;
    quTcetce_horterfim1: TDateTimeField;
    quTcetce_horterini2: TDateTimeField;
    quTcetce_horterfim2: TDateTimeField;
    quTcetce_horquaini1: TDateTimeField;
    quTcetce_horquafim1: TDateTimeField;
    quTcetce_horquaini2: TDateTimeField;
    quTcetce_horquafim2: TDateTimeField;
    quTcetce_horquiini1: TDateTimeField;
    quTcetce_horquifim1: TDateTimeField;
    quTcetce_horquiini2: TDateTimeField;
    quTcetce_horquifim2: TDateTimeField;
    quTcetce_horsexini1: TDateTimeField;
    quTcetce_horsexfim1: TDateTimeField;
    quTcetce_horsexini2: TDateTimeField;
    quTcetce_horsexfim2: TDateTimeField;
    quTcetce_hordomini1: TDateTimeField;
    quTcetce_hordomfim1: TDateTimeField;
    quTcetce_hordomini2: TDateTimeField;
    quTcetce_hordomfim2: TDateTimeField;
    qryitau: TQuery;
    qryitauest_nome: TStringField;
    qryitauest_cpf: TStringField;
    qryitauest_dtnasc: TDateTimeField;
    qryitauest_conta: TStringField;
    qryitauest_agencia: TStringField;
    qryitauest_banco: TStringField;
    qryitauest_rg: TStringField;
    qryitautce: TIntegerField;
    qryitauEmpresa: TStringField;
    Query1: TQuery;
    quTceAlteracaoTal_domingo: TStringField;
    quTceAlteracaoTal_horsegini1: TDateTimeField;
    quTceAlteracaoTal_horsegfim1: TDateTimeField;
    quTceAlteracaoTal_horsegini2: TDateTimeField;
    quTceAlteracaoTal_horsegfim2: TDateTimeField;
    quTceAlteracaoTal_horterini1: TDateTimeField;
    quTceAlteracaoTal_horterfim1: TDateTimeField;
    quTceAlteracaoTal_horterini2: TDateTimeField;
    quTceAlteracaoTal_horterfim2: TDateTimeField;
    quTceAlteracaoTal_horquaini1: TDateTimeField;
    quTceAlteracaoTal_horquafim1: TDateTimeField;
    quTceAlteracaoTal_horquaini2: TDateTimeField;
    quTceAlteracaoTal_horquafim2: TDateTimeField;
    quTceAlteracaoTal_horquiini1: TDateTimeField;
    quTceAlteracaoTal_horquifim1: TDateTimeField;
    quTceAlteracaoTal_horquiini2: TDateTimeField;
    quTceAlteracaoTal_horquifim2: TDateTimeField;
    quTceAlteracaoTal_horsexini1: TDateTimeField;
    quTceAlteracaoTal_horsexfim1: TDateTimeField;
    quTceAlteracaoTal_horsexini2: TDateTimeField;
    quTceAlteracaoTal_horsexfim2: TDateTimeField;
    quTceAlteracaoTal_hordomini1: TDateTimeField;
    quTceAlteracaoTal_hordomfim1: TDateTimeField;
    quTceAlteracaoTal_hordomini2: TDateTimeField;
    quTceAlteracaoTal_hordomfim2: TDateTimeField;
    quAgendaAge_Teste1: TStringField;
    quAgendaAge_Redacao1: TStringField;
    quAgendaAge_Teste2: TStringField;
    quAgendaAge_Redacao2: TStringField;
    quAgendaAge_Teste3: TStringField;
    quAgendaAge_Redacao3: TStringField;
    quTceNivel: TStringField;
    quLotePgtolot_datacred: TDateTimeField;
    quAgendaAge_info1: TStringField;
    quAgendaAge_info2: TStringField;
    quAgendaAge_info3: TStringField;
    quAgendaAge_LEstrangeira1: TStringField;
    quAgendaAge_LEstrangeira2: TStringField;
    quAgendaAge_LEstrangeira3: TStringField;
    qryREstagiarioscpfEstudante: TStringField;
    qryREstagiariosCnpjEmpresa: TStringField;
    quTriagemSituacao: TStringField;
    quTriagemest_situacao: TStringField;
    quTriagemcur_cod: TIntegerField;
    quTriagemCurso: TStringField;
    quFolhaPgtocod_retorno: TStringField;
    quFolhaPgtoRetorno: TStringField;
    dsRequisito: TDataSource;
    quRequisito: TQuery;
    usRequisito: TUpdateSQL;
    quRequisitoid_requisito: TIntegerField;
    quRequisitorequisito: TStringField;
    qryID: TQuery;
    dsvagaRequisto: TDataSource;
    quVagaRequisito: TQuery;
    Upvagarequisito: TUpdateSQL;
    quVagaRequisitoCOD_VAGA: TIntegerField;
    quVagaRequisitoID_REQUISITO: TIntegerField;
    quVagaRequisitoTIPO: TStringField;
    quEmpFuncionarioefu_inativo: TStringField;
    Requisitos: TQuery;
    Requisitosid_requisito: TIntegerField;
    Requisitosrequisito: TStringField;
    quVagaRequisitoRequisito: TStringField;
    dsEstudanteRequisito: TDataSource;
    quEstudanteRequisito: TQuery;
    UpEstudanteRequisto: TUpdateSQL;
    quEstudanteRequisitoest_cod: TIntegerField;
    quEstudanteRequisitoid_requisito: TIntegerField;
    quEstudanteRequisitoRequisito: TStringField;
    quFuncionariofunc_funcao: TStringField;
    quFuncionariofunc_rg: TStringField;
    quFuncionariofunc_cpf: TStringField;
    quFuncionariofunc_ct: TStringField;
    quFuncionariofunc_inicio: TDateTimeField;
    quSPgtofat_totliberado: TFloatField;
    quSPgtoEmpresa: TStringField;
    quFaturaid_documentoContribuicao: TIntegerField;
    quFaturaId_documento: TIntegerField;
    quFolhaPgtoid_parcela: TIntegerField;
    quInstituicaoinst_Prazo1: TStringField;
    quInstituicaoinst_Prazo2: TStringField;
    quEstudanteest_Ativo: TStringField;
    quEstudanteest_impedidoSN: TStringField;
    quEstudanteest_cnhSN: TStringField;
    quEstudanteest_tipocnh: TStringField;
    quPerIdiomapid_fluente: TStringField;
    quVagaIdiomavid_fluente: TStringField;
    quAgendaAge_nome1: TStringField;
    quAgendaAge_nome2: TStringField;
    quAgendaAge_nome3: TStringField;
    usvaga: TUpdateSQL;
    quVagavag_Supervisor: TStringField;
    quVagavag_FormSupervisor: TStringField;
    quInstCursocuri_turno: TIntegerField;
    quInstCoordenadorico_sexo: TStringField;
    quInstCoordenadorCursos: TStringField;
    quInstCursocuri_semestre: TIntegerField;
    quInstituicaoInst_respDiv1: TIntegerField;
    quInstituicaoInst_respDiv2: TIntegerField;
    quInstituicaoInst_Respdiv3: TIntegerField;
    quInstituicaoInst_RespDivMail1: TStringField;
    quInstituicaoInst_RespDivMail2: TStringField;
    quInstituicaoInst_RespDivMail3: TStringField;
    quInstituicaoDivulga1: TStringField;
    quInstituicaoDivulga2: TStringField;
    quInstituicaoDivulga3: TStringField;
    quEmpresaEmp_tipoPessoa: TStringField;
    quEmpresaEmp_Nacionalidade: TStringField;
    quEmpresaEmp_EstadoCivil: TStringField;
    quEmpresaEmp_Profissao: TStringField;
    quEmpresaEmp_Rg: TStringField;
    quEmpresaEmp_ConselhoClasse: TStringField;
    quEmpresaGrup_Cod: TIntegerField;
    dsgrupo: TDataSource;
    qugrupo: TQuery;
    usgrupo: TUpdateSQL;
    qugrupoGrup_cod: TIntegerField;
    qugrupoGrup_Nome: TStringField;
    qugrupoGrup_Site: TStringField;
    quEmpresaEmp_FoneRes: TStringField;
    quEmpresaEmp_FoneCel: TStringField;
    dsResponsavel: TDataSource;
    quResponsavel: TQuery;
    usResponsavel: TUpdateSQL;
    quResponsavelEmp_cod: TIntegerField;
    quResponsavelFunc_cod: TIntegerField;
    quResponsavelNome: TStringField;
    qugrupoGrup_pais: TStringField;
    qugrupoGrup_Nacionalidade: TStringField;
    qugrupoGrup_filiais: TIntegerField;
    qugrupoGrup_Funcionarios: TIntegerField;
    qugrupoGrup_Estagiarios: TIntegerField;
    quEmpresaFunc_cod: TIntegerField;
    quEmpresaFuncGrupo: TIntegerField;
    quEmpresaEstGrupo: TIntegerField;
    quEmpresaNacgrupo: TStringField;
    qugrupoCalcFunc: TIntegerField;
    qugrupoCalcEstag: TIntegerField;
    qugrupoCalcfiliais: TIntegerField;
    quEmpresaEmp_Ramo1: TStringField;
    quEmpresaEmp_Ramo2: TStringField;
    quEmpresaEmp_Ramo3: TStringField;
    quEmpresaEmp_RamoInic1: TDateTimeField;
    quEmpresaEmp_RamoInic2: TDateTimeField;
    quEmpresaEmp_RamoInic3: TDateTimeField;
    quResponsavelCod_Empresponsavel: TIntegerField;
    quEmpresaEmp_Email: TStringField;
    quEmpresaTempo1: TStringField;
    quEmpresaTempo2: TStringField;
    quEmpresaTempo3: TStringField;
    quEmpresaEmp_Estrutura: TMemoField;
    quEmpresaEmp_ExpecCetefe: TStringField;
    quEmpresaSiteGrupo: TStringField;
    estados: TQuery;
    quEmpresaEmp_PeriodoAvaliacao: TStringField;
    quEmpresaFiliaisGrupo: TIntegerField;
    quEmpresaFilialInfoGrupo: TIntegerField;
    quEmpresaEstagiarioInfoGrupo: TIntegerField;
    quEmpresaFuncInfoGrupo: TIntegerField;
    quTceTce_AuxTransp: TStringField;
    quTceTce_AuxTranspValor: TFloatField;
    quEmpresaEmp_AuxTransp: TStringField;
    quEmpresaEmp_AuxTranspValor: TFloatField;
    quEmpresaEmp_AuxTransPTexto: TStringField;
    quVagavag_ExpSupervisor: TStringField;
    quVagavag_CargSupervisor: TStringField;
    quTceAlteracaoTal_AuxTransp: TStringField;
    quTceAlteracaoTal_AuxTranspValor: TFloatField;
    quVagaVag_AreaSupervisor: TStringField;
    dsRestricao: TDataSource;
    QuRestricao: TQuery;
    usRestricao: TUpdateSQL;
    QuRestricaoEmp_cod: TIntegerField;
    QuRestricaoFunc_cod: TIntegerField;
    QuRestricaoInst_Cod: TIntegerField;
    QuRestricaoNome: TStringField;
    quVagaVag_domingo: TStringField;
    quVagaVag_horsegini1: TDateTimeField;
    quVagaVag_horsegfim1: TDateTimeField;
    quVagaVag_horsegini2: TDateTimeField;
    quVagaVag_horsegfim2: TDateTimeField;
    quVagaVag_horterini1: TDateTimeField;
    quVagaVag_horterfim1: TDateTimeField;
    quVagaVag_horterini2: TDateTimeField;
    quVagaVag_horterfim2: TDateTimeField;
    quVagaVag_horquaini1: TDateTimeField;
    quVagaVag_horquafim1: TDateTimeField;
    quVagaVag_horquaini2: TDateTimeField;
    quVagaVag_horquafim2: TDateTimeField;
    quVagaVag_horquiini1: TDateTimeField;
    quVagaVag_horquifim1: TDateTimeField;
    quVagaVag_horquiini2: TDateTimeField;
    quVagaVag_horquifim2: TDateTimeField;
    quVagaVag_horsexini1: TDateTimeField;
    quVagaVag_horsexfim1: TDateTimeField;
    quVagaVag_horsexini2: TDateTimeField;
    quVagaVag_horsexfim2: TDateTimeField;
    quVagaVag_hordomini1: TDateTimeField;
    quVagaVag_hordomfim1: TDateTimeField;
    quVagaVag_hordomini2: TDateTimeField;
    quVagaVag_hordomfim2: TDateTimeField;
    quVagavag_Interseg: TDateTimeField;
    quVagavag_Interter: TDateTimeField;
    quVagavag_Interqua: TDateTimeField;
    quVagavag_Interqui: TDateTimeField;
    quVagavag_Intersex: TDateTimeField;
    quVagavag_Interdom: TDateTimeField;
    quTceFunc_cod: TIntegerField;
    quTcetce_InterSeg: TDateTimeField;
    quTceTce_Intervalo: TDateTimeField;
    quTcetce_InterTer: TDateTimeField;
    quTcetce_InterQua: TDateTimeField;
    quTcetce_InterQui: TDateTimeField;
    quTcetce_InterDom: TDateTimeField;
    quTcetce_InterSab: TDateTimeField;
    quTceAlteracaoFunc_cod: TIntegerField;
    quTceAlteracaoTal_Intervalo: TDateTimeField;
    quTceAlteracaotal_Interseg: TDateTimeField;
    quTceAlteracaotal_Interter: TDateTimeField;
    quTceAlteracaotal_Interqua: TDateTimeField;
    quTceAlteracaotal_Interqui: TDateTimeField;
    quTceAlteracaotal_Intersex: TDateTimeField;
    quTceAlteracaotal_Interdom: TDateTimeField;
    dsSupervisorVaga: TDataSource;
    quSupervisorVaga: TQuery;
    usSupervisorVaga: TUpdateSQL;
    quSupervisorVagaEmp_cod: TIntegerField;
    quEmpFuncionarioEfu_formacao: TStringField;
    quEmpFuncionarioefu_area: TStringField;
    quEmpFuncionarioefu_DataExperiencia: TDateTimeField;
    quEmpFuncionarioTempExperiencia: TStringField;
    quSupervisorVagaFormacao: TStringField;
    quSupervisorVagaArea: TStringField;
    quSupervisorVagaCargo: TStringField;
    quSupervisorVagaTempo: TStringField;
    quSupervisorVagaProfissao: TStringField;
    quSupervisorVagaRestricoes: TStringField;
    quSupervisorVagaNome: TStringField;
    quVagaVag_Intervalo: TDateTimeField;
    quVagaVag_segunda: TStringField;
    quVagaVag_terca: TStringField;
    quVagaVag_quarta: TStringField;
    quVagaVag_quinta: TStringField;
    quVagaVag_sexta: TStringField;
    quVagaVag_sabado: TStringField;
    quVagaVag_horsabini1: TDateTimeField;
    quVagaVag_horsabfim1: TDateTimeField;
    quVagaVag_horsabini2: TDateTimeField;
    quVagaVag_horsabfim2: TDateTimeField;
    quVagavag_Intersab: TDateTimeField;
    quVagaVag_AuxTransp: TStringField;
    quVagaVag_AuxTranspValor: TFloatField;
    quTceFormacao: TStringField;
    quTceArea: TStringField;
    quTceCargo: TStringField;
    quTceTempo: TStringField;
    qutceProfissao: TStringField;
    quTceRestricoes: TStringField;
    quTceAlteracaoFormacao: TStringField;
    quTceAlteracaoArea: TStringField;
    quTceAlteracaoCargo: TStringField;
    quTceAlteracaoTempo: TStringField;
    quTceAlteracaoProfissao: TStringField;
    quTceAlteracaoRestricoes: TStringField;
    quTcetce_InterSex: TDateTimeField;
    quTceAlteracaotal_InterSab: TDateTimeField;
    quEmpFuncionarioefu_documentacao: TStringField;
    quVagaVag_DataSolicitacao: TDateTimeField;
    quVagaReprovados: TIntegerField;
    quVagaStand_By: TIntegerField;
    quVagaEntrevistados: TIntegerField;
    quVagaPendentes: TIntegerField;
    quVagaTces: TIntegerField;
    quVagaAgendados: TIntegerField;
    quVagaVag_AuxAlim: TStringField;
    quVagaVag_AuxAlimAntecipa: TStringField;
    quVagaVag_AuxAlimTipo: TStringField;
    quVagaVag_AuxAlimtexto: TStringField;
    quVagaVag_AuxAlimValor: TFloatField;
    quSupervisorVagaFunc_cod: TIntegerField;
    quSupervisorVagaVag_cod: TIntegerField;
    dsEntrevistadorVaga: TDataSource;
    quEntrevistadorVaga: TQuery;
    usEntrevistadorVaga: TUpdateSQL;
    dsVagaBeneficio: TDataSource;
    quVagaBeneficio: TQuery;
    usvagaBeneficio: TUpdateSQL;
    quVagaBeneficioVbn_Cod: TIntegerField;
    quVagaBeneficioEmp_cod: TIntegerField;
    quVagaBeneficioVBN_nome: TStringField;
    quVagaBeneficioVag_cod: TIntegerField;
    quEntrevistadorVagaEmp_cod: TIntegerField;
    quEntrevistadorVagaFunc_cod: TIntegerField;
    quEntrevistadorVagaVag_cod: TIntegerField;
    quEntrevistadorVagaNome: TStringField;
    quEntrevistadorVagaCargo: TStringField;
    quEntrevistadorVagaArea: TStringField;
    quEntrevistadorVagaTempo: TStringField;
    quEntrevistadorVagaFormacao: TStringField;
    quEntrevistadorVagaProfissao: TStringField;
    quVagaIdiomaVid_Nivel: TStringField;
    quPerIdiomaIdi_Nivel: TStringField;
    quTceTCE_AuxAlim: TStringField;
    quTceTCE_AuxAlimAntecipa: TStringField;
    quTceTCE_AuxAlimTipo: TStringField;
    quTceTCE_AuxAlimtexto: TStringField;
    quTceTCE_AuxAlimValor: TFloatField;
    quTceAlteracaoTal_AuxAlim: TStringField;
    quTceAlteracaoTal_AuxAlimAntecipa: TStringField;
    quTceAlteracaoTal_AuxAlimTipo: TStringField;
    quTceAlteracaoTal_AuxAlimtexto: TStringField;
    quTceAlteracaoTal_AuxAlimValor: TFloatField;
    dsQuestionario: TDataSource;
    quQuestionario: TQuery;
    quQuestionarioquest_cod: TIntegerField;
    quQuestionarioQuest_Descricao: TStringField;
    usquestionario: TUpdateSQL;
    dsPerguntas: TDataSource;
    quPerguntas: TQuery;
    quPerguntasPerg_ord: TIntegerField;
    quPerguntasTipoResposta2: TStringField;
    quPerguntasTextoPergunta: TStringField;
    quPerguntasQuest_cod: TIntegerField;
    quPerguntasPerg_cod: TIntegerField;
    quPerguntasOpcaoA: TMemoField;
    quPerguntasOpcaoB: TMemoField;
    quPerguntasOpcaoC: TMemoField;
    quPerguntasOpcaoD: TMemoField;
    quPerguntasOpcaoE: TMemoField;
    quPerguntasOpcaoF: TMemoField;
    quPerguntasObservacao: TMemoField;
    quPerguntasPergunta: TMemoField;
    usperguntas: TUpdateSQL;
    dsinstCoordenador2: TDataSource;
    quinstCoordenador2: TQuery;
    quinstCoordenador2inst_cod: TIntegerField;
    quinstCoordenador2Func_cod: TIntegerField;
    quinstCoordenador2Cur_cod: TIntegerField;
    quinstCoordenador2Ativo: TStringField;
    quinstCoordenador2Curso: TStringField;
    usinstCoordenador2: TUpdateSQL;
    dsContatos: TDataSource;
    quContatos: TQuery;
    quContatosDat_Contato: TDateTimeField;
    quContatosVag_cod: TIntegerField;
    quContatosEmpresa: TStringField;
    quContatosNumeroLigacoes: TIntegerField;
    quContatosVaga: TStringField;
    quContatosAtendente: TStringField;
    quContatosMelhorDia: TStringField;
    quContatosCont_cod: TIntegerField;
    quContatosFunc_alterou: TIntegerField;
    quContatosDat_alterou: TDateTimeField;
    quContatosAtendenteAlterou: TStringField;
    quContatosEstudante: TStringField;
    quContatosest_cod: TIntegerField;
    quContatosEmp_cod: TIntegerField;
    quContatosfunc_cod: TIntegerField;
    quContatosRecadoCom: TStringField;
    quContatosValoMinimo: TFloatField;
    quContatosMotivoInativo: TStringField;
    quContatosPrevisaoRetorno: TStringField;
    quContatosTextoOutros: TStringField;
    quContatosObservacoes: TStringField;
    quContatosStatus: TIntegerField;
    quContatosSituacao: TStringField;
    usContatos: TUpdateSQL;
    dsfuncgrupo: TDataSource;
    qufuncGrupo: TQuery;
    qufuncGrupoEmp_Cod: TIntegerField;
    qufuncGrupoFunc_cod: TIntegerField;
    qufuncGrupoEmp_Cod2: TIntegerField;
    qufuncGrupoFilial: TStringField;
    upfuncgrupo: TUpdateSQL;
    usInstFuncao: TUpdateSQL;
    quInstFuncao: TQuery;
    quInstFuncaoFun_Cod: TIntegerField;
    quInstFuncaoFun_Nome: TStringField;
    quInstFuncaoFun_Descricao: TStringField;
    quInstFuncaoFun_unica: TStringField;
    dsInstFuncao: TDataSource;
    dsEmpfuncao: TDataSource;
    quEmpFuncao: TQuery;
    quEmpFuncaoFun_Cod: TIntegerField;
    quEmpFuncaoFun_Nome: TStringField;
    quEmpFuncaoFun_Descricao: TStringField;
    quEmpFuncaoFun_unica: TStringField;
    UsEmpFuncao: TUpdateSQL;
    usResponsavelInstituicao: TUpdateSQL;
    quResponsavelInstituicao: TQuery;
    quResponsavelInstituicaoInst_cod: TIntegerField;
    quResponsavelInstituicaoFunc_cod: TIntegerField;
    quResponsavelInstituicaofun_cod: TIntegerField;
    quResponsavelInstituicaoinativo: TStringField;
    quResponsavelInstituicaoNome: TStringField;
    quResponsavelInstituicaonfuncao: TStringField;
    dsResponsavelInstituicao: TDataSource;
    quInstFuncionarioifu_nacionalidade: TStringField;
    quInstFuncionarioifu_estcivil: TStringField;
    quInstFuncionarioifu_sexo: TStringField;
    quInstFuncionarioifu_Inativo: TStringField;
    quResponsavelfun_cod: TIntegerField;
    quResponsavelInativo: TStringField;
    quEmpFuncionarioefu_recebeemail: TStringField;
    quEmpFuncionarioefu_DataInclusao: TDateTimeField;
    quEmpFuncionarioefu_DataAlteracao: TDateTimeField;
    quEmpFuncionarioefu_DataInativacao: TDateTimeField;
    quEmpFuncionarioefu_login: TStringField;
    quEmpFuncionarioefu_senha: TStringField;
    quEmpFuncionarioefu_trocasenha: TStringField;
    usEncaminhamento: TUpdateSQL;
    quEncaminhamento: TQuery;
    quEncaminhamentoVag_cod: TIntegerField;
    quEncaminhamentoEst_cod: TIntegerField;
    quEncaminhamentoest_nome: TStringField;
    quEncaminhamentoinst_cod: TIntegerField;
    quEncaminhamentoinst_nome: TStringField;
    quEncaminhamentocur_cod: TIntegerField;
    quEncaminhamentocur_nome: TStringField;
    quEncaminhamentopcu_anoatual: TIntegerField;
    quEncaminhamentopcu_peratual: TStringField;
    quEncaminhamentoEva_dataenc: TDateTimeField;
    quEncaminhamentoEva_datares: TDateTimeField;
    quEncaminhamentoEva_resultado: TStringField;
    quEncaminhamentoResultado: TStringField;
    quEncaminhamentoEva_observacao: TStringField;
    quEncaminhamentoDescPeriodo: TStringField;
    quEncaminhamentoeva_agedata: TDateTimeField;
    quEncaminhamentoest_email: TStringField;
    quEncaminhamentofunc_cod: TIntegerField;
    quEncaminhamentoest_fone1: TStringField;
    quEncaminhamentoest_fone2: TStringField;
    quEncaminhamentopcu_turno: TStringField;
    quEncaminhamentoComplemento: TStringField;
    quEncaminhamentofunc_nome: TStringField;
    quEncaminhamentoEva_dataret: TDateTimeField;
    quEncaminhamentoenderecoenc: TStringField;
    quEncaminhamentobairroenc: TStringField;
    quEncaminhamentocidadeenc: TStringField;
    quEncaminhamentoestadoenc: TStringField;
    quEncaminhamentotelefoneenc: TStringField;
    quEncaminhamentonumendenc: TStringField;
    quEncaminhamentocjtoendenc: TStringField;
    dsEncaminhamento: TDataSource;
    quVagaVag_AuxTransptexto: TMemoField;
    quVagaVag_Escala: TStringField;
    quVagaVag_Tipo: TStringField;
    quTceTce_AuxTranspTexto: TMemoField;
    quTceTCE_Escala: TStringField;
    quTceTCE_Matricula: TStringField;
    quTceemp_cod2: TIntegerField;
    quTcevagaAuxTransp: TStringField;
    quTceVagaAuxTranspValor: TCurrencyField;
    quTceVagaAuxTranspTexto: TStringField;
    dsEstContVaga: TDataSource;
    quEstContVaga: TQuery;
    quEstContVagaEstContVaga_cod: TIntegerField;
    quEstContVagaCont_cod: TIntegerField;
    quEstContVagaVag_cod: TIntegerField;
    quEstContVagaEmp_cod: TIntegerField;
    quEstContVagaEmpresa: TStringField;
    quEstContVagaVaga: TStringField;
    upEstContVaga: TUpdateSQL;
    quTceAlteracaoTal_Escala: TStringField;
    quTceAlteracaoemp_cod2: TIntegerField;
    quTceAlteracaoTal_AuxTranspTexto: TMemoField;
    quTceAditivoFunc_cod: TIntegerField;
    quTceAditivoFormacao: TStringField;
    quTceAditivoArea: TStringField;
    quTceAditivoTempo: TStringField;
    quTceAditivoProfissao: TStringField;
    quTceAditivoCargo: TStringField;
    quEmpFuncionariotces: TIntegerField;
    quFuncionariofunc_login: TStringField;
    quFuncionariofunc_psw: TStringField;
    quInstituicaoInst_nomeFantasia: TStringField;
    quInstituicaoINST_OBSERVACAO: TMemoField;
    quResponsavelFuncao: TStringField;
    quInstCursocuri_ano: TFloatField;
    quInstFuncionarioifu_registro: TStringField;
    quInstFuncionarioifu_formacao: TStringField;
    quInstFuncionarioifu_formacao2: TStringField;
    quEmpFuncionarioefu_outraformacao: TStringField;
    quEmpFuncionarioefu_registro: TStringField;
    quEmpFuncionarioefu_registro2: TStringField;
    quTceoutraformacao: TStringField;
    quTceRegistro: TStringField;
    quTceRegistro2: TStringField;
    quTceAlteracaoTal_funcEscolha: TIntegerField;
    quTceAlteracaooutraformacao: TStringField;
    quTceAlteracaoregistro: TStringField;
    quTceAlteracaoregistro2: TStringField;
    quTceTce_FuncEscolha: TIntegerField;
    quTceLei: TStringField;
    quEstRescLei: TStringField;
    quTceAditivoformacao2: TStringField;
    quTceAditivoTpr_funcEscolha: TIntegerField;
    dsTalAtividade: TDataSource;
    quTalAtividade: TQuery;
    usTalAtividade: TUpdateSQL;
    quTalAtividadetce_cod: TIntegerField;
    quTalAtividadetal_cod: TIntegerField;
    quTalAtividadeati_talcod: TIntegerField;
    quTceAlteracaoTal_Jornada: TStringField;
    quTceAlteracaoTal_Atividades: TStringField;
    quTceAlteracaoTal_Bolsa: TStringField;
    quTceAlteracaoTal_Prazo: TStringField;
    quTceAditivoemp_cod2: TIntegerField;
    quTceTCE_Observacao: TStringField;
    quTceAditivotpr_observacao: TStringField;
    quTceAlteracaotal_observacao: TStringField;
    quTalAtividadeAti_talnome: TStringField;
    quTceTce_formacao1: TStringField;
    quTcetce_formacao2: TStringField;
    quTcetce_Registro1: TStringField;
    quTcetce_registro2: TStringField;
    quTcetce_area: TStringField;
    quTcetce_tempo: TStringField;
    quTceAditivotpr_formacao1: TStringField;
    quTceAditivotpr_formacao2: TStringField;
    quTceAditivotpr_registro1: TStringField;
    quTceAditivotpr_registro2: TStringField;
    quTceAditivotpr_area: TStringField;
    quTceAditivotpr_tempo: TStringField;
    quTceAlteracaotal_formacao1: TStringField;
    quTceAlteracaotal_formacao2: TStringField;
    quTceAlteracaotal_registro1: TStringField;
    quTceAlteracaotal_registro2: TStringField;
    quTceAlteracaotal_area: TStringField;
    quTceAlteracaotal_tempo: TStringField;
    quTceAditivoRegistro: TStringField;
    quTceAditivoRegistro2: TStringField;
    quEMailEstudanteEstudante: TStringField;
    quEMailEstudanteEmail: TStringField;
    quEMailEstudanteInstituicao: TStringField;
    quEMailEstudanteEmpresa: TStringField;
    quEMailEstudanteSituacao: TStringField;
    quTcetce_Orientador: TIntegerField;
    quTceProfessorOrientador: TStringField;
    quTceOrientadorCargo: TStringField;
    quTceAditivoinst_cod: TIntegerField;
    quTceAditivotpr_orientador: TIntegerField;
    quTceAditivocur_cod: TIntegerField;
    quTceAlteracaotal_Orientador: TIntegerField;
    quTceAlteracaoInst_cod: TIntegerField;
    quTceAlteracaoCur_cod: TIntegerField;
    quTceInst_cod: TIntegerField;
    quTceCur_cod: TIntegerField;
    quTceAditivoProfessorOrientador: TStringField;
    quTceAditivoOrientadorCargo: TStringField;
    quTceAlteracaoProfessorOrientador: TStringField;
    quTceAlteracaoOrientadorCargo: TStringField;
    quInstFuncionarioifu_registro2: TStringField;
    quInstFuncionarioifu_profissao: TStringField;
    quInstFuncionarioifu_recebeEmail: TStringField;
    quInstFuncionarioifu_DataExperiencia: TDateTimeField;
    quInstFuncionarioifu_area: TStringField;
    dsInstOrientador: TDataSource;
    quInstOrientador: TQuery;
    usInstOrientador: TUpdateSQL;
    quInstOrientadorinst_cod: TIntegerField;
    quInstOrientadorFunc_cod: TIntegerField;
    quInstOrientadorCur_cod: TIntegerField;
    quInstOrientadorCurso: TStringField;
    quInstOrientadorAtivo: TStringField;
    quEmpresaemp_dtpgto: TIntegerField;
    quEmpresaemp_descpgto: TMemoField;
    quEstEmpLei: TStringField;
    quEstEmpGrupo: TStringField;
    quEtiquetaEmpemp_descpgto: TMemoField;
    dsSelecao: TDataSource;
    quSelecao: TQuery;
    usSelecao: TUpdateSQL;
    dsAreaEstagio: TDataSource;
    quAreaEstagio: TQuery;
    usAreaEstagio: TUpdateSQL;
    dsFormaTratamento: TDataSource;
    quFormaTratamento: TQuery;
    usFormaTratamento: TUpdateSQL;
    quFormaTratamentoForm_Cod: TIntegerField;
    quFormaTratamentoForm_nome: TStringField;
    quAreaEstagioAREA_COD: TIntegerField;
    quAreaEstagioAREA_NOME: TStringField;
    quSelecaoSel_cod: TIntegerField;
    quSelecaoSel_Nome: TStringField;
    quVagaArea_cod: TIntegerField;
    quVagaSel_cod: TIntegerField;
    quVagaSelecionador: TStringField;
    quVagaAreaEstagio: TStringField;
    quEstEmpTempo: TStringField;
    quEmpFuncionarioForm_cod: TIntegerField;
    quEmpFuncionarioFormaTratamento: TStringField;
    quInstFuncionarioForm_cod: TIntegerField;
    quInstFuncionarioFormatratamento: TStringField;
    quTaxaSituacao: TStringField;
    quFaturaRescisao: TStringField;
    quFolhaPgtoControle: TIntegerField;
    quFaturatot_RecInd: TFloatField;
    quFaturaTot_RecIndCont: TFloatField;
    quFaturaTot_Recesso: TFloatField;
    quFaturaTot_RecessoCont: TFloatField;
    quFaturaTotalContribuicao: TCurrencyField;
    quFaturaTotalBolsa: TCurrencyField;
    quTceTce_RelEstudante: TDateTimeField;
    quTceTce_RelSupervisor: TDateTimeField;
    quInstituicaoInst_TceProcedimento: TMemoField;
    quBuscaTCEest_email: TStringField;
    quTceDTAlteracao: TDateTimeField;
    quTceDTAditivo: TDateTimeField;
    quEstRescGrupo: TStringField;
    quVagaVag_Selecao: TStringField;
    quVagaVag_Fechada: TStringField;
    quTcevag_selecao: TStringField;
    quVagHistoricoemp_cod1: TIntegerField;
    quVagHistoricoFunc_nome: TStringField;
    quEstudanteEst_Formado: TStringField;
    quEstudanteEst_trancado: TStringField;
    quEstudanteest_cursoSituacao: TStringField;
    qutceRelatorio: TQuery;
    DsTceRelatorio: TDataSource;
    UsTceRelatorio: TUpdateSQL;
    qutceRelatorioTce_cod: TIntegerField;
    qutceRelatorioOrdem: TIntegerField;
    qutceRelatorioEst_Data: TDateTimeField;
    qutceRelatorioSup_Data: TDateTimeField;
    qutceRelatorioPrev_data: TDateTimeField;
    quTceDataLei: TDateField;
    quTceUltimodia: TDateField;
    quTceDTFinal: TDateTimeField;
    qutceRelatorioUser_Aluno: TIntegerField;
    qutceRelatorioUser_Supervisor: TIntegerField;
    qutceRelatorioUserAluno: TStringField;
    qutceRelatorioUserSupervisor: TStringField;
    dsPendencias: TDataSource;
    quPendencias: TQuery;
    usPendencias: TUpdateSQL;
    qutceRelatorioEst_pendente: TStringField;
    qutceRelatorioSup_pendente: TStringField;
    quPendenciasPend_cod: TIntegerField;
    quPendenciasPend_descricao: TStringField;
    dsTceRelPend1: TDataSource;
    qutceRelPend1: TQuery;
    usRelPend1: TUpdateSQL;
    qutceRelPend1Tipo: TSmallintField;
    qutceRelPend1tce: TIntegerField;
    qutceRelPend1ordem: TIntegerField;
    qutceRelPend1Pend_cod: TIntegerField;
    dstceRelPend2: TDataSource;
    qutceRelPend2: TQuery;
    usRelPend2: TUpdateSQL;
    QryPend: TQuery;
    QryPendPend_cod: TIntegerField;
    QryPendPend_descricao: TStringField;
    qutceRelPend1Descricao: TStringField;
    qutceRelPend2Descricao: TStringField;
    qutceRelPend2Tipo: TSmallintField;
    qutceRelPend2tce: TIntegerField;
    qutceRelPend2ordem: TIntegerField;
    qutceRelPend2Pend_cod: TIntegerField;
    quVagaVag_Resp: TStringField;
    quVagaVag_DataEnc: TDateTimeField;
    quVagaVag_Permanente: TStringField;
    quVagaVag_acao: TStringField;
    quVagaAcao: TStringField;
    quEstudanteEst_recrutadora: TIntegerField;
    quEstudanteDat_perfil: TDateTimeField;
    quEstudanteStatus: TStringField;
    quEstEmpDtAlteracao: TDateField;
    quTaxaRepasse: TStringField;
    quTaxaSoma: TStringField;
    quEstudanteEst_desempenho: TStringField;
    quEstudanteest_perfilpessoal: TMemoField;
    quVagaVag_ReqInterno: TMemoField;
    quVagaVag_ReqDivulgacao: TMemoField;
    quVagaVag_DataProcesso: TStringField;
    quVagaVag_HoraProcesso: TStringField;
    quVagaVag_bolsabeneficio: TStringField;
    quEstudanteEst_codbanco: TIntegerField;
    dsBanco: TDataSource;
    quBanco: TQuery;
    usBanco: TUpdateSQL;
    quBancoID_BANCOS: TIntegerField;
    quBancoCOD_BANCO: TStringField;
    quBancoBANCO: TStringField;
    quTaxaEmp_periodopgtoobs: TStringField;
    quTaxaemp_nomerespcomp: TStringField;
    quTaxaFBanco: TStringField;
    quTaxaFEmp_periodopgtoobs: TStringField;
    quTaxabanco: TStringField;
    quFolhaPgtoBanco: TStringField;
    quBancoAPELIDO: TStringField;
    quContaCorrApelido: TStringField;
    quFolhaPgtoEST_CODBANCO: TIntegerField;
    quTotalTotalDesconto: TCurrencyField;
    quBancoDESCONTO_FOLHA: TFloatField;
    quFolhaPgtodesconto_banco: TFloatField;
    quInconsistenciaTCE: TQuery;
    quInconsistenciaTCETipo: TStringField;
    quInconsistenciaTCEest_nome: TStringField;
    quInconsistenciaTCEDescSituacaoAtual: TStringField;
    quInconsistenciaTCEDescSituacaoDestino: TStringField;
    quInconsistenciaTCESituacaoAtual: TStringField;
    quInconsistenciaTCESituacaoDestino: TIntegerField;
    quInconsistenciaTCEtce_datares: TDateTimeField;
    quInconsistenciaTCEtce_cod: TIntegerField;
    quInconsistenciaTCEemp_nome: TStringField;
    quDataAtual: TQuery;
    quDataAtualDATA_ATUAL: TDateTimeField;
    quCorrigeSituacaoTCE: TQuery;
    quTceINTERVALOREL: TIntegerField;
    quFuncionariofunc_mostrarinconsist: TStringField;
    quInconsistenciaEstudante: TQuery;
    quInconsistenciaEstudanteest_cod: TIntegerField;
    quInconsistenciaEstudantetce_cod: TIntegerField;
    quInconsistenciaEstudanteest_pgtolib_atual: TStringField;
    quInconsistenciaEstudanteest_pgtolib_novo: TStringField;
    quInconsistenciaEstudanteest_nome: TStringField;
    quInconsistenciaEstudanteDescSituacaoAtual: TStringField;
    quInconsistenciaEstudanteDescSituacaoDestino: TStringField;
    quInconsistenciaEstudanteemp_nome: TStringField;
    quInconsistenciaEstudantetce_datares: TDateTimeField;
    quCorrigeSituacaoEstudante1: TQuery;
    quCorrigeSituacaoEstudante2: TQuery;
    procedure quPerSoftwareCalcFields(DataSet: TDataSet);
    procedure quPerPChaveCalcFields(DataSet: TDataSet);
    procedure quVagaSoftwareCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure quEncaminhamentoCalcFields(DataSet: TDataSet);
    procedure quTceCalcFields(DataSet: TDataSet);
    procedure quTceAlteracaoCalcFields(DataSet: TDataSet);
    procedure quEstEmpCalcFields(DataSet: TDataSet);
    procedure quVerEscCalcFields(DataSet: TDataSet);
    procedure quFaturaCalcFields(DataSet: TDataSet);
    procedure quFolhaPgtoCalcFields(DataSet: TDataSet);
    procedure quSFolhaPgtoCalcFields(DataSet: TDataSet);
    procedure quEstudanteCalcFields(DataSet: TDataSet);
    procedure quCaixaCalcFields(DataSet: TDataSet);
    procedure quContasPagarCalcFields(DataSet: TDataSet);
    procedure quTriagemCalcFields(DataSet: TDataSet);
    procedure quRCaixaCalcFields(DataSet: TDataSet);
    procedure quEstRescCalcFields(DataSet: TDataSet);
    procedure quTaxaCalcFields(DataSet: TDataSet);
    procedure quFolhaPgtoAfterOpen(DataSet: TDataSet);
    procedure quFolhaPgtoAfterClose(DataSet: TDataSet);
    procedure quFolhaPgtoBeforeInsert(DataSet: TDataSet);
    procedure quTotalCalcFields(DataSet: TDataSet);
    procedure quContaCorrCalcFields(DataSet: TDataSet);
    procedure quTaxaFCalcFields(DataSet: TDataSet);
    procedure quFormandosCalcFields(DataSet: TDataSet);
    procedure quContUFPRCalcFields(DataSet: TDataSet);
    procedure quContUFPRAfterInsert(DataSet: TDataSet);
    procedure quSeguroIncCalcFields(DataSet: TDataSet);
    procedure quSeguroExcCalcFields(DataSet: TDataSet);
    procedure tbEtiquetaBeforeOpen(DataSet: TDataSet);
    procedure tbEtiquetaAfterClose(DataSet: TDataSet);
    procedure quEntrevistaCalcFields(DataSet: TDataSet);
    procedure quAvalDesempCalcFields(DataSet: TDataSet);
    procedure quEmpresaCalcFields(DataSet: TDataSet);
    procedure quConsEstudanteCalcFields(DataSet: TDataSet);
    procedure tbEtiquetaAfterOpen(DataSet: TDataSet);
    procedure quAgendaAfterInsert(DataSet: TDataSet);
    procedure qryitauCalcFields(DataSet: TDataSet);
    procedure qryREstagiariosCalcFields(DataSet: TDataSet);
    procedure quRequisitoBeforePost(DataSet: TDataSet);
    procedure quEmpFuncionarioAfterInsert(DataSet: TDataSet);
    procedure quVagaRequisitoAfterInsert(DataSet: TDataSet);
    procedure quEstudanteAfterInsert(DataSet: TDataSet);
    procedure quInstCoordenadorCalcFields(DataSet: TDataSet);
    procedure quEmpresaAfterInsert(DataSet: TDataSet);
    procedure qugrupoCalcFields(DataSet: TDataSet);
    procedure CriaCampo(Tabela, campo, chave, condicao: string);
    procedure quEmpFuncionarioCalcFields(DataSet: TDataSet);
    procedure quSupervisorVagaCalcFields(DataSet: TDataSet);
    procedure quVagaAfterInsert(DataSet: TDataSet);
    procedure quVagaCalcFields(DataSet: TDataSet);
    procedure quEntrevistadorVagaCalcFields(DataSet: TDataSet);
    procedure quVagaBeneficioAfterInsert(DataSet: TDataSet);
    procedure quResponsavelInstituicaoCalcFields(DataSet: TDataSet);
    procedure qufuncGrupoCalcFields(DataSet: TDataSet);
    procedure quResponsavelCalcFields(DataSet: TDataSet);
    procedure quEmpFuncionarioBeforePost(DataSet: TDataSet);
    procedure quEstContVagaCalcFields(DataSet: TDataSet);
    procedure quContatosAfterInsert(DataSet: TDataSet);
    procedure quContatosBeforePost(DataSet: TDataSet);
    procedure quContatosCalcFields(DataSet: TDataSet);
    procedure quContatosBeforeDelete(DataSet: TDataSet);
    procedure quEmpFuncionarioBeforeDelete(DataSet: TDataSet);
    procedure quTceAditivoCalcFields(DataSet: TDataSet);
    procedure quTceAlteracaoAfterInsert(DataSet: TDataSet);
    procedure quInstFuncionarioCalcFields(DataSet: TDataSet);
    procedure quVagHistoricoCalcFields(DataSet: TDataSet);
    procedure qutceRelatorioCalcFields(DataSet: TDataSet);
    procedure quInstFuncionarioBeforeDelete(DataSet: TDataSet);
    procedure quPendenciasBeforeDelete(DataSet: TDataSet);
    procedure quEstudanteBeforePost(DataSet: TDataSet);
    procedure quBancoBeforePost(DataSet: TDataSet);
    procedure quBancoBeforeDelete(DataSet: TDataSet);
    procedure quTceNewRecord(DataSet: TDataSet);
    procedure quFuncionarioNewRecord(DataSet: TDataSet);
  private
  public
    { Public declarations }
    Fatura: Integer;
    usuario: string;
    MostrarInconsistenciasNoLogin: boolean;
    sRelatoriosPendentes: string;
    EmpresaLogin: TEmpresaLogin;

//    function RetornaBolsaTaxa(empCod: Integer): Double;
    function NEW_ID(TABELA: string): INTEGER;
    procedure SalvarRegistro(q: TQuery);
    procedure ExcluirRegistro(q: TQuery);
    procedure CancelarRegistro(q: TQuery);
    procedure IncluirRegistro(q: TQuery);
    function Busca(Tabela, nomeCampo, Argumento: string): bool;
    function BuscaCampo(Tabela, nomeCampo, nomeArgumento: string; argumento: Integer; Where: string = ''): string;
    function BuscaCampo2(Tabela, nomeCampo, nomeArg1, nomeArg2: string; arg1, arg2: Integer; Where: string = ''): string;
    function montaSql(var Q: TQuery; C, T, A, O: string): bool;
    procedure AtualizaTabela(nomeTabela, nomeChave: string; campoChave: Integer;
      nomeAtual: string; CampoAtual: string);
    procedure AtualizaTabela2(nomeTabela, nomeChave1, nomeChave2: string; campoChave1, campoChave2: Integer;
      nomeAtual: string; CampoAtual: string);
    procedure GeraEtiqueta(InstCod: Integer);
    procedure GeraEtiquetaEmp(EmpCod: Integer);
    function calculatempo(Tce: integer; Data: Tdate): real;
    function PrimeirasMaiusculas(Origem: string): string;
    procedure AtualizaPgtoEstagiario(EstCod, TceCod: Integer);
    procedure CadastraCep(cep: string);
    procedure PegaResponsavel(tipo: integer; var empresa, Funcionario: integer);
    procedure PegaResponsavelEscola(tipo: integer; var Escola, FuncionarioEscola: integer);
    function Relatorios(tce: integer): boolean;
    function PegaEstadoPorExtenso(uf: string): string;
  end;

var
  DmDTA: TDmDTA;

implementation

{$R *.DFM}

uses TPOFNC, TPOINI, TPOCST;


function iif(Condicao: Boolean; retornaTrue, retornaFalse: Variant): Variant;
begin
  if Condicao then
    Result := retornaTrue
  else
    Result := retornaFalse;
end;



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



function TDmDTA.NEW_ID(TABELA: string): INTEGER;
var
  ID: INTEGER;
  qryID2: tquery;
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    close;
    Sql.Clear;
    Sql.add('select CONTADOR from z_CONTADORES WHERE TABELA=''' + TABELA + '''');
    Open;
    id :=  FieldByName('contador').AsInteger + 1;
    close;
    sql.clear;
    SQL.Add('update z_contadores set contador =:id WHERE TABELA=''' + TABELA + '''');
    ParamByName('id').AsInteger := id;
    ExecSQL;
    Free;

  {qryid2 := create(tquery);
  qryid2.databasename := 'TalentPool';
  qryid2.close;
  qryID2.sql.clear;
  qryID2.SQL.Add('select CONTADOR from z_CONTADORES WHERE TABELA=''' + TABELA + '''');
  qryID2.open;
  id := qryID2.FieldByName('contador').AsInteger + 1;
  qryID2.close;
  qryID2.SQL.Clear;
  qryID2.SQL.Add('update z_contadores set contador =:id WHERE TABELA=''' + TABELA + '''');
  qryID2.ParamByName('id').AsInteger := id;
  qryID2.ExecSQL;
  qryID2.Free;}
  end;
  RESULT := ID;
end;

procedure TDmDTA.DataModuleCreate(Sender: TObject);
begin
  db_Principal.Connected := True;
end;

procedure TDmDTA.DataModuleDestroy(Sender: TObject);
begin
  db_Principal.Connected := False;
end;

procedure TDmDTA.CancelarRegistro(q: TQuery);
begin
  try
    q.Cancel;

    if q.UpdatesPending then
      q.CancelUpdates;
  except
    on E: EDBEngineError do
    begin
      case E.Errors[0].ErrorCode of
        $2606: MSGERRO('Exclus�o n�o Permitida!'); // Problemas com integridade
      end;
    end;
  end;
end;

procedure TDmDTA.ExcluirRegistro(q: TQuery);
begin
  try
    q.Delete;
    q.ApplyUpdates;
  except
    on E: EDBEngineError do
    begin
      case E.Errors[0].ErrorCode of
        $2606: MSGERRO('Exclus�o n�o Permitida!'); // Problemas com integridade
      end;
    end;
  end;
end;

procedure TDmDTA.IncluirRegistro(q: TQuery);
begin
  q.Append;
end;

procedure TDmDTA.SalvarRegistro(q: TQuery);
begin
  try
    q.Post;

    if q.UpdatesPending then
    begin
      q.ApplyUpdates;
      q.CommitUpdates;
    end;
  except
    on E: EDBEngineError do
    begin
      case E.Errors[0].ErrorCode of // Exce��es do banco
        $3303: MSGERRO('Grava��o n�o Permitida!');
        9733: MSGERRO('Erro na Grava��o de Dados!');
      end;
      q.CancelUpdates; // Cancela Registro
      raise;
    end;
  end;
end;

function TDmDTA.montaSql(var Q: TQuery; C, T, A, O: string): bool;
begin
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('select ' + C + ' from ' + T);
  if A <> '' then Q.SQL.Add('where ' + A);
  if O <> '' then Q.SQL.Add('order by ' + O);
  Q.Active := True;
  Result := True;
end;

procedure TDmDTA.quPerSoftwareCalcFields(DataSet: TDataSet);
begin
  if (not DmDta.quPerSoftwarepsw_nivel.IsNull) and
    (DmDta.quPerSoftwarepsw_nivel.Value <> '') then
    case DmDta.quPerSoftwarepsw_nivel.AsInteger of
      0: DmDta.quPerSoftwareNivel.Text := 'Regular';
      1: DmDta.quPerSoftwareNivel.Text := 'Bom';
      2: DmDta.quPerSoftwareNivel.Text := '�timo';
    end;
end;

procedure TDmDTA.quPerPChaveCalcFields(DataSet: TDataSet);
begin
  try
    case DmDta.quPerPChavepal_perexp.AsInteger of
      0: DmDta.quPerPChavePerExp.Text := DmDta.quPerPChavePal_experiencia.Text + ' Dias';
      1: DmDta.quPerPChavePerExp.Text := DmDta.quPerPChavePal_experiencia.Text + ' Meses';
      2: DmDta.quPerPChavePerExp.Text := DmDta.quPerPChavePal_experiencia.Text + ' Anos';
    end;
  except
  end;
end;

procedure TDmDTA.quVagaSoftwareCalcFields(DataSet: TDataSet);
begin
  try
    case quVagaSoftware.FieldByName('vsw_nivel').AsInteger of
      0: quVagaSoftware.FieldByName('Nivel').Value := 'B�sico';
      1: quVagaSoftware.FieldByName('Nivel').Value := 'Intermedi�rio';
      2: quVagaSoftware.FieldByName('Nivel').Value := 'Avan�ado';
    end;
  except
  end;
end;

procedure TDmDTA.quEncaminhamentoCalcFields(DataSet: TDataSet);
begin
  if (not quEncaminhamentoEva_resultado.IsNull) and (quEncaminhamentoEva_resultado.Value <> '') then
  begin
    case quEncaminhamentoEva_resultado.AsInteger of
      0: quEncaminhamentoResultado.Value := 'Em Espera';
      1: quEncaminhamentoResultado.Value := 'Reprovado';
      2: quEncaminhamentoResultado.Value := 'Aprovado';
      3: quEncaminhamentoResultado.Value := 'Desistiu';
      4: quEncaminhamentoResultado.Value := 'Selecionado pela Empresa';
      5: quEncaminhamentoResultado.Value := 'N�o entrevistado pelo Cliente';
      6: quEncaminhamentoResultado.Value := 'STANDBY';

    end;
  end;

  if (not quEncaminhamentopcu_peratual.IsNull) and
    (quEncaminhamentopcu_peratual.Value <> '') then
  begin
    case quEncaminhamentopcu_peratual.AsInteger of
      0: quEncaminhamentoDescPEriodo.Value := 'Ano';
      1: quEncaminhamentoDescPeriodo.Value := 'Per�odo';
    end;
  end;

  if (not quEncaminhamentopcu_turno.IsNull) and
    (quEncaminhamentopcu_turno.Value <> '') then
  begin
    case quEncaminhamentopcu_turno.AsInteger of
      0: quEncaminhamentoComplemento.Value := 'Manh�';
      1: quEncaminhamentoComplemento.Value := 'Tarde';
      2: quEncaminhamentoComplemento.Value := 'Noite';
    end;
  end;

  if (not quEncaminhamentoest_fone1.IsNull) and
    (quEncaminhamentoest_fone1.Value <> '') then
    quEncaminhamentoComplemento.Value := quEncaminhamentoComplemento.Value + ' - ' +
      '(' + Copy(quEncaminhamentoest_fone1.Value, 1, 2) +
      ') ' + Copy(quEncaminhamentoest_fone1.Value, 3, 4) +
      '-' + Copy(quEncaminhamentoest_fone1.Value, 7, 4);

  if (not quEncaminhamentoest_fone2.IsNull) and
    (quEncaminhamentoest_fone2.Value <> '') then
    quEncaminhamentoComplemento.Value := quEncaminhamentoComplemento.Value + ' - ' +
      '(' + Copy(quEncaminhamentoest_fone2.Value, 1, 2) +
      ') ' + Copy(quEncaminhamentoest_fone2.Value, 3, 4) +
      '-' + Copy(quEncaminhamentoest_fone2.Value, 7, 4);
end;

procedure TDmDTA.quTceCalcFields(DataSet: TDataSet);
var
  anos, meses: integer;
  data: tdate;
  idade, unidade: string;
begin
  // Situa��o
  {if quTceTCE_cod.AsString <> '' then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add(' select min(tal_vigencia) data from tcealteracao where tce_cod = '+quTceTCE_cod.asstring + ' and tal_vigencia >= ''25/09/2008'' ');
      Open;
      if eof = false then
      begin
        if fieldbyname('data').asstring <> '' then
          qutcedtAlteracao.AsString := fieldbyname('data').asstring
        else
          qutcedtAlteracao.AsString := '01/01/2000';
      end;
      Close;
      Sql.Clear;
      Sql.add('select min(tpr_dataini) data from tceaditivo where tce_cod = '+quTceTCE_cod.asstring + ' and tpr_dataini >= ''25/09/2008'' ');
      Open;
      if eof = false then
      begin
        if fieldbyname('data').asstring <> '' then
          qutcedtAditivo.AsString := fieldbyname('data').asstring
        else
         qutcedtAditivo.AsString := '01/01/2000';
      end;
      Free;
    end;}


  if (not quTceTCE_SITUACAO.IsNull) and (quTceTCE_SITUACAO.Value <> '') then
  begin
    case quTceTce_situacao.AsInteger of
      0: quTceDescSituacao.Value := 'Normal';
      1: quTceDescSituacao.Value := '1� Prorroga��o';
      2: quTceDescSituacao.Value := '2� Prorroga��o';
      3: quTceDescSituacao.Value := '3� Prorroga��o';
      4: quTceDescSituacao.Value := '4� Prorroga��o';
      5: quTceDescSituacao.Value := '5� Prorroga��o';
      6: quTceDescSituacao.Value := '6� Prorroga��o';
      7: quTceDescSituacao.Value := 'Resc. ' + quTceTce_DataRes.Text;
    end;
  end;
  // Nivel
  //ultimo dia
  if qutcetce_cod.asstring <> '' then
    if qutce.FieldByName('dtfinal').value > strtodate('25/09/2008') then
      qutceultimodia.Value := qutce.FieldByName('dtfinal').value
    else
      if qutce.FieldByName('tce_datafim').asstring <> '' then
        qutceultimodia.Value := qutce.FieldByName('tce_datafim').value;

  if (qutceest_cod.AsString <> '') then
  begin
    qrypesquisa.close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.Text := 'select cur_nivel from curso where cur_cod in (select cur_cod from estudante where est_cod =' + qutceest_cod.AsString + ')';
    qrypesquisa.open;
    if qrypesquisa.eof = false then
      qutcenivel.AsString := qrypesquisa.fieldbyname('cur_nivel').asstring;
  end;
  if (qutcetce_dataini.Value >= strtodate('25/09/2008 ')) or
    (qutcedtalteracao.Value >= strtodate('25/09/2008 ')) or
    (qutcedtaditivo.Value >= strtodate('25/09/2008 ')) then
  begin
    qutcelei.AsString := 'NOVA LEI';
    data := strtodate('25/09/2200');
    if qutcetce_dataini.Value >= strtodate('25/09/2008 ') then
      data := qutcetce_dataini.Value;

    if qutcedtalteracao.Value >= strtodate('25/09/2008 ') then
      if qutcedtalteracao.Value < data then
        data := qutcedtalteracao.Value;

    if qutcedtaditivo.Value >= strtodate('25/09/2008 ') then
      if qutcedtaditivo.Value < data then
        data := qutcedtaditivo.Value;

    qutcedatalei.Value := data;


  end
  else
    qutcelei.AsString := 'Lei 6.494/77';

  if qutcevag_cod.AsString <> '' then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from vaga where vag_cod = ' + quTcevag_cod.AsString);
      Open;
      if eof = false then
      begin
        if fieldbyname('Vag_AuxTransp').asstring <> '' then
          qutcevagaAuxTransp.AsString := fieldbyname('Vag_AuxTransp').asstring;
        if fieldbyname('Vag_AuxTranspValor').asstring <> '' then
          qutcevagaAuxTranspvalor.value := fieldbyname('Vag_AuxTranspValor').value;
        if fieldbyname('Vag_AuxTransptexto').asstring <> '' then
          qutcevagaAuxTransptexto.value := fieldbyname('Vag_AuxTransptexto').value;
      end;

      Close;
      Free;
    end;

  if (qutceFunc_cod.AsString <> '') and (quTceEmp_cod2.AsString <> '') then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod=' + quTceEmp_cod2.AsString + ' and Func_cod = ' + qutceFunc_cod.AsString);
      Open;
      if eof = false then
      begin
        qutceformacao.AsString := FieldByName('efu_formacao').Text;
        qutceoutraformacao.AsString := FieldByName('efu_outraformacao').Text;
        qutceregistro.AsString := FieldByName('efu_registro').Text;
        qutceregistro2.AsString := FieldByName('efu_registro2').Text;

        quTceArea.AsString := FieldByName('efu_area').Text;
        quTceCargo.AsString := FieldByName('efu_cargo').Text;
        quTceProfissao.AsString := FieldByName('efu_profissao').Text;
        if FieldByName('efu_dataexperiencia').Text <> '' then
        begin
          RetornaIdade(FieldByName('efu_dataexperiencia').Text, Idade, unidade);
          quTcetempo.AsString := idade + ' ' + unidade;
        end;
      end;
      Close;
      Free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select EmpFuncRest.*,Instituicao.inst_nome from EmpFuncRest,Instituicao   where  Instituicao.Inst_cod = EmpFuncRest.inst_cod and  emp_cod=' + quTceEmp_cod.AsString + ' and Func_cod = ' + quTceFunc_cod.AsString);
      Open;
      quTceRestricoes.AsString := '';
      while eof = false do
      begin
        quTceRestricoes.AsString := quTceRestricoes.AsString + FieldByName('inst_nome').Text;
        if eof = false then
          quTceRestricoes.AsString := quTceRestricoes.AsString + ', ';
        next;
      end;
      Close;
      Free;
    end;
  end;
  if (qutcetce_orientador.AsString <> '') and (qutceInst_cod.AsString <> '') then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from instFuncionario where func_cod = ' + quTcetce_orientador.AsString + ' and inst_cod=' + qutceInst_cod.AsString);
      Open;
      qutceProfessorOrientador.AsString := '';
      qutceOrientadorCargo.AsString := '';
      if eof = false then
      begin
        if fieldbyname('ifu_Formacao').asstring <> '' then
          qutceOrientadorCargo.AsString := fieldbyname('ifu_Formacao').asstring;
        if fieldbyname('ifu_Nome').asstring <> '' then
          qutceProfessorOrientador.AsString := fieldbyname('ifu_Nome').asstring;
      end;

      Close;
      Free;
    end;


end;

procedure TDmDTA.quTceAlteracaoCalcFields(DataSet: TDataSet);
var
  Idade, Unidade: string;
begin
  // Tipo Bolsa
  if (not quTceAlteracaoTal_tipobolsa.IsNull) and
    (quTceAlteracaoTal_tipobolsa.Value <> '') then
  begin
    case quTceAlteracaoTal_tipobolsa.AsInteger of
      0: quTceAlteracaoDescBolsa.Value := 'Hora';
      1: quTceAlteracaoDescBolsa.Value := 'M�s';
    end;
  end;

  if (qutceAlteracaoFunc_cod.AsString <> '') and (quTcealteracaoEmp_cod2.AsString <> '') then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod=' + quTceAlteracaoEmp_cod2.AsString + ' and Func_cod = ' + qutceAlteracaoFunc_cod.AsString);
      Open;
      if eof = false then
      begin
        qutceAlteracaoformacao.AsString := FieldByName('efu_formacao').Text;
        qutceAlteracaooutraformacao.AsString := FieldByName('efu_outraformacao').Text;
        qutceAlteracaoregistro.AsString := FieldByName('efu_registro').Text;
        qutceAlteracaoregistro2.AsString := FieldByName('efu_registro2').Text;

        quTceAlteracaoArea.AsString := FieldByName('efu_area').Text;
        quTceAlteracaoCargo.AsString := FieldByName('efu_cargo').Text;
        quTceAlteracaoProfissao.AsString := FieldByName('efu_profissao').Text;
        if FieldByName('efu_dataexperiencia').Text <> '' then
        begin
          RetornaIdade(FieldByName('efu_dataexperiencia').Text, Idade, unidade);
          quTceAlteracaotempo.AsString := idade + ' ' + unidade;
        end;
      end;
      Close;
      Free;
    end;
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select EmpFuncRest.*,Instituicao.inst_nome from EmpFuncRest,Instituicao   where  Instituicao.Inst_cod = EmpFuncRest.inst_cod and  emp_cod=' + quTceAlteracaoEmp_cod2.AsString + ' and Func_cod = ' + quTceAlteracaoFunc_cod.AsString);
      Open;
      quTceAlteracaoRestricoes.AsString := '';
      while eof = false do
      begin
        quTceAlteracaoRestricoes.AsString := quTceAlteracaoRestricoes.AsString + FieldByName('inst_nome').Text;
        if eof = false then
          quTceAlteracaoRestricoes.AsString := quTceAlteracaoRestricoes.AsString + ', ';
        next;
      end;
      Close;
      Free;
    end;
  end;
  if (qutceAlteracaotal_orientador.AsString <> '') and (qutceAlteracaoInst_cod.AsString <> '') then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from instFuncionario where func_cod = ' + quTceAlteracaoTal_orientador.AsString + ' and inst_cod=' + qutceAlteracaoInst_cod.AsString);
      Open;
      qutcealteracaoProfessorOrientador.AsString := '';
      qutceAlteracaoOrientadorCargo.AsString := '';
      if eof = false then
      begin
        if fieldbyname('ifu_Formacao').asstring <> '' then
          qutceAlteracaoOrientadorCargo.AsString := fieldbyname('ifu_Formacao').asstring;
        if fieldbyname('ifu_Nome').asstring <> '' then
          qutcealteracaoProfessorOrientador.AsString := fieldbyname('ifu_Nome').asstring;
      end;
      Close;
      Free;
    end;

end;

procedure TDmDTA.quEstEmpCalcFields(DataSet: TDataSet);
var
  cpf, idade, unidade: string;
begin
  if (not questempTCE_SITUACAO.IsNull) and
    (questempTCE_SITUACAO.Value <> '') then
  begin
    // testa a data de rescis�o
    if not quEstEmptce_datares.IsNull then
    begin
      if (quEstEmpTce_DataRes.AsDateTime >= quEstEmp.ParamByName('data1').AsDateTime) then
      begin
        questempDescSituacao.Value := 'Resc. ' + quEstEmpTce_DataRes.Text;
        exit;
      end;
    end;

    case questempSituacao.AsInteger of
      0: questempDescSituacao.Value := 'Normal';
      1: questempDescSituacao.Value := '1� Prorroga��o';
      2: questempDescSituacao.Value := '2� Prorroga��o';
      3: questempDescSituacao.Value := '3� Prorroga��o';
      4: questempDescSituacao.Value := '4� Prorroga��o';
      5: questempDescSituacao.Value := '5� Prorroga��o';
      6: questempDescSituacao.Value := '6� Prorroga��o';
    end;
  end;

  // CPF
  cpf := sonumero(questempest_cpf.Value);
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  questempcpfformatado.value := cpf;

  if questempDescSituacao.Value = 'Resc. ' + quEstEmpTce_DataRes.Text then
    quEstEmpDescLiberacao.Value := 'Rescindido'
  else
  begin
    if (not quEstEmpest_pgtolib.IsNull) and
      (quEstEmpest_pgtolib.Value <> '') then
    begin
      case quEstEmpest_pgtolib.AsInteger of
        0: quEstEmpDescLiberacao.Value := 'Liberado';
        1: quEstEmpDescLiberacao.Value := 'Falta D.M.';
        2: quEstEmpDescLiberacao.Value := 'Falta T.C.E.';
        3: quEstEmpDescLiberacao.Value := 'Falta T.C.E./D.M.';
        4: quEstEmpDescLiberacao.Value := 'Falta T.A.';
        5: quEstEmpDescLiberacao.Value := 'Falta T.C.E./T.A.';
        6: quEstEmpDescLiberacao.Value := 'Falta D.M./T.A.';
        7: quEstEmpDescLiberacao.Value := 'Falta T.C.E./D.M./T.A.';
        8: quEstEmpDescLiberacao.Value := 'Falta T.Alt.';
        9: quEstEmpDescLiberacao.Value := 'Falta D.M./T.Alt.';
        10: quEstEmpDescLiberacao.Value := 'Falta T.C.E./T.Alt.';
        11: quEstEmpDescLiberacao.Value := 'Falta T.C.E./D.M./T.Alt.';
        12: quEstEmpDescLiberacao.Value := 'Falta T.A./T.Alt.';
        13: quEstEmpDescLiberacao.Value := 'Falta T.C.E./T.A./T.Alt.';
        14: quEstEmpDescLiberacao.Value := 'Falta D.M./T.A./T.Alt.';
        15: quEstEmpDescLiberacao.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
      end;
    end;
    if relatorios(quEstEmpTCE_cod.asinteger) = false then
    begin
      if quEstEmpest_pgtolib.AsInteger = 0 then
        quEstEmpDescLiberacao.Value := 'Relat�rios Pendentes'
      else
        quEstEmpDescLiberacao.Value := quEstEmpDescLiberacao.Value + ' Relat�rios Pendentes';
    end;
  end;
  if (quEstEmptce_dataini.Value >= strtodate('25/09/2008 ')) or
    (quEstEmptpr_dataini.Value >= strtodate('25/09/2008 ')) or
    (quEstEmpdtAlteracao.Value >= strtodate('25/09/2008 ')) then
    quEstEmplei.AsString := 'NOVA LEI'
  else
    quEstEmplei.AsString := 'Lei 6.494/77';
  // C�lculo da idade
  RetornaIdade(quEstempest_dtnasc.Text, Idade, unidade);
  quEstEmpIdade.Text := Idade + ' ' + Unidade;
  Retornatempo(quEstEmptce_dataini.Text, Idade);
  quEstEmpTempo.Text := Idade;

  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.add('select grup_nome from grupo A ,Empresa b where  a.grup_cod = b.grup_cod   and   b.emp_cod = ' + quEstEmpEmp_cod.Text);
    Open;
    quEstEmpGrupo.text := '';
    if not eof then
      quEstempGrupo.Text := fieldbyname('grup_nome').Text;
    Close;
    Free;
  end;

  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.add('select top 1 tal_dataemi from tcealteracao where tce_cod = ' + quEstEmptce_cod.Text + ' order by tal_cod desc ');
    Open;
    quEstEmpDtAlteracao.text := '';
    if not eof then
      quEstEmpDtAlteracao.Text := fieldbyname('tal_dataemi').Text;
    Close;
    Free;
  end;




end;

procedure TDmDTA.quVerEscCalcFields(DataSet: TDataSet);
begin
  if (not quVerEscpcu_peratual.IsNull) and (quVerEscpcu_peratual.Value <> '') then
    case quVerEscpcu_peratual.AsInteger of
      0: quVerEscSemestre.Value := quVerEscpcu_anoAtual.Text + '� Ano';
      1: quVerEscSemestre.Value := quVerEscpcu_anoAtual.Text + '� Periodo';
    end;
end;

procedure TDmDTA.quFaturaCalcFields(DataSet: TDataSet);
begin
  qufaturatotalcontribuicao.AsCurrency := qufaturatot_recindCont.AsCurrency +
    qufaturatot_recessoCont.AsCurrency +
    qufaturafat_totcont.AsCurrency;
  qufaturatotalbolsa.AsCurrency := qufaturatot_recind.AsCurrency +
    qufaturatot_recesso.AsCurrency +
    qufaturafat_totbolsa.AsCurrency;



  //if (not quFaturafat_totbolsa.IsNull) and
  //  (not quFaturafat_totcont.IsNull) then
  begin
   // quFaturafat_totgeral.Value := quFaturafat_totbolsa.Value + quFaturafat_totcont.Value;
    quFaturafat_totgeral.Value := qufaturatotalbolsa.AsCurrency + qufaturatotalcontribuicao.AsCurrency;
  end;

  if (not quFaturafat_totliberado.IsNull) and
    (not quFaturafat_totcont.IsNull) then
  begin
    quFaturafat_totgeralLib.Value := quFaturafat_totliberado.Value + quFaturafat_totcont.Value;
  end;
end;

procedure TDmDTA.quFolhaPgtoCalcFields(DataSet: TDataSet);
begin
  if quFolhaPgtoTCE_SITUACAO.Value = '7' then
  begin
    quFolhaPgtoDescSituacao.Value := 'Rescindido';
    if quFolhaPgtocontrole.Value = 1 then
      quFolhaPgtoDescSituacao.Value := 'Recesso Remu. Prop.';


  end
  else if (not quFolhaPgtofbo_situacao.IsNull) and
    (quFolhaPgtofbo_situacao.Value <> '') then
  begin
    case quFolhaPgtofbo_situacao.AsInteger of
      0: quFolhaPgtoDescSituacao.Value := 'Liberado';
      1: quFolhaPgtoDescSituacao.Value := 'Falta D.M.';
      2: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E.';
      3: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M.';
      4: quFolhaPgtoDescSituacao.Value := 'Falta T.A.';
      5: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A.';
      6: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A.';
      7: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A.';
      8: quFolhaPgtoDescSituacao.Value := 'Falta T.Alt.';
      9: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.Alt.';
      10: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.Alt.';
      11: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.Alt.';
      12: quFolhaPgtoDescSituacao.Value := 'Falta T.A./T.Alt.';
      13: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A./T.Alt.';
      14: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A./T.Alt.';
      15: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
    end;
    if relatorios(quFolhaPgtoTCE_cod.asinteger) = false then
    begin
      if quFolhaPgtofbo_situacao.AsInteger = 0 then
        quFolhaPgtoDescSituacao.Value := 'Relat�rios Pendentes'
      else
        quFolhaPgtoDescSituacao.Value := quFolhaPgtoDescSituacao.Value + ' Relat�rios Pendentes';
    end;
  end;

  if (not quFolhaPgtofbo_liberacao.IsNull) and
    (quFolhaPgtofbo_liberacao.Value <> '') then
    case quFolhaPgtofbo_liberacao.AsInteger of
      0: quFolhaPgtoDescLiberacao.Value := 'N�o';
      1: quFolhaPgtoDescLiberacao.Value := 'Sim';
    end;

  if (not quFolhapgtocod_retorno.isnull) and
    (quFolhaPgtolot_numero.asstring <> '') then
  begin
    if quFolhapgtocod_retorno.AsString = '00' then
      quFolhapgtoRetorno.AsString := 'PAGAMENTO EFETUADO';
    if quFolhapgtocod_retorno.AsString = 'AE' then
      quFolhapgtoRetorno.AsString := 'DATA DE PAGAMENTO ALTERADA';
    if quFolhapgtocod_retorno.AsString = 'AG' then
      quFolhapgtoRetorno.AsString := 'NUMERO DE LOTE INV�LIDO';
    if quFolhapgtocod_retorno.AsString = 'AH' then
      quFolhapgtoRetorno.AsString := 'N�MERO SEQUENCIAL DE RESTRO NO LOTE INV�LIDO';
    if quFolhapgtocod_retorno.AsString = 'AI' then
      quFolhapgtoRetorno.AsString := 'PRODUTO DEMOSTRATIVO DE PAGAMENTO N�O CONTRATADO';
    if quFolhapgtocod_retorno.AsString = 'AJ' then
      quFolhapgtoRetorno.AsString := 'TIPO DE MOVIMENTO INV�LIDO';
    if quFolhapgtocod_retorno.AsString = 'AL' then
      quFolhapgtoRetorno.AsString := 'C�DIGO DO BANCO FAVORECIDO INV�LIDO';
    if quFolhapgtocod_retorno.AsString = 'AM' then
      quFolhapgtoRetorno.AsString := 'AG�NCIA DO FAVORECIDO INV�LIDA';
    if quFolhapgtocod_retorno.AsString = 'AN' then
      quFolhapgtoRetorno.AsString := 'CONTA CORRENTE DO FAVORECIDO INV�LIDA';
    if quFolhapgtocod_retorno.AsString = 'AO' then
      quFolhapgtoRetorno.AsString := 'NOME DO FAVORECIDO INV�LIDO';
    if quFolhapgtocod_retorno.AsString = 'AP' then
      quFolhapgtoRetorno.AsString := 'DATA DE PAGAMENO/DATA DE VALIDADE/ HORA DO LANCAMENTO ARRECADA��O / APURA��O INV�LIDA';
    if quFolhapgtocod_retorno.AsString = 'AQ' then
      quFolhapgtoRetorno.AsString := 'QUANTIDADE DE REGISTROS MAIOR DE 999999';
    if quFolhapgtocod_retorno.AsString = 'BD' then
      quFolhapgtoRetorno.AsString := 'PAGAMENTO AGENDADO';

  end;
  {00  PAGAMENTO EFETUADO
 AE  DATA DE PAGAMENTO ALTERADA
 AG  NUMERO DE LOTE INV�LIDO
 AH  N�MERO SEQUENCIAL DE RESTRO NO LOTE INV�LIDO
 AI  PRODUTO DEMOSTRATIVO DE PAGAMENTO N�O CONTRATADO
 AJ  TIPO DE MOVIMENTO INV�LIDO
 AL  C�DIGO DO BANCO FAVORECIDO INV�LIDO
 AM  AG�NCIA DO FAVORECIDO INV�LIDA
 AN  CONTA CORRENTE DO FAVORECIDO INV�LIDA
 AO  NOME DO FAVORECIDO INV�LIDO
 AP  DATA DE PAGAMENO/DATA DE VALIDADE/ HORA DO LANCAMENTO ARRECADA��O / APURA��O INV�LIDA
 AQ  QUANTIDADE DE REGISTROS MAIOR DE 999999  }

  if (quFolhaPgtoFbo_valor.AsFloat -
    quFolhaPgtofbo_descontos.AsFloat) > 0 then
    quFolhaPgtoValorCerto.AsFloat := quFolhaPgtoFbo_valor.AsFloat -
      quFolhaPgtofbo_descontos.AsFloat - quFolhaPgtodesconto_banco.asFloat
      //quFolhaPgtofbo_descontos.AsFloat - iif(qufolhapgtoest_codbanco.AsInteger = 7, 0, 3.98)
       { foi tirado o 50 centavos de desconto  - 0.50}
  else
    quFolhaPgtoValorCerto.AsFloat := 0;

end;


procedure TDmDTA.quSFolhaPgtoCalcFields(DataSet: TDataSet);
begin
  if (not quSFolhaPgtofbo_situacao.IsNull) and
    (quSFolhaPgtofbo_situacao.Value <> '') then
  begin
    case quSFolhaPgtofbo_situacao.AsInteger of
      0: quSFolhaPgtoDescSituacao.Value := 'Liberado';
      1: quSFolhaPgtoDescSituacao.Value := 'Falta D.M.';
      2: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E.';
      3: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M.';
      4: quSFolhaPgtoDescSituacao.Value := 'Falta T.A.';
      5: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A.';
      6: quSFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A.';
      7: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A.';
      8: quSFolhaPgtoDescSituacao.Value := 'Falta T.Alt.';
      9: quSFolhaPgtoDescSituacao.Value := 'Falta D.M./T.Alt.';
      10: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.Alt.';
      11: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.Alt.';
      12: quSFolhaPgtoDescSituacao.Value := 'Falta T.A./T.Alt.';
      13: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A./T.Alt.';
      14: quSFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A./T.Alt.';
      15: quSFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
    end;
  end;
  if relatorios(qusFolhaPgtoTCE_cod.asinteger) = false then
  begin
    if qusFolhaPgtofbo_situacao.AsInteger = 0 then
      qusFolhaPgtoDescSituacao.Value := 'Relat�rios Pendentes'
    else
      qusFolhaPgtoDescSituacao.Value := qusFolhaPgtoDescSituacao.Value + ' Relat�rios Pendentes';
  end;

  if (not quSFolhaPgtofbo_liberacao.IsNull) and
    (quSFolhaPgtofbo_liberacao.Value <> '') then
    case quSFolhaPgtofbo_liberacao.AsInteger of
      0: quSFolhaPgtoDescLiberacao.Value := 'N�o';
      1: quSFolhaPgtoDescLiberacao.Value := 'Sim';
    end;

  quSFolhaPgtoValor.AsFloat := quSFolhaPgtofbo_valor.AsFloat - quSFolhaPgtofbo_descontos.AsFloat;
  //quSFolhaPgtoValorBB.AsFloat := quSFolhaPgtoValor.AsFloat - iif(qufolhapgtoEst_codbanco.AsInteger = 7, 0, 3.98)
  quSFolhaPgtoValorBB.AsFloat := quSFolhaPgtoValor.AsFloat - quFolhaPgtodesconto_banco.asFloat;


  {- 0.50 foi tirado o cinqueta centacvos de desconto };

  if quSFolhaPgtotce_cod.AsInteger > 0 then
  begin
    case quSFolhaPgtofbo_situacao.AsInteger of
      // TCE
      2, 3, 5, 7, 10, 11, 13, 15:
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.add('select tce_data from Tce where tce_cod = ' + quSFolhaPgtotce_cod.Text);
          Open;
          quSFolhaPgtoDataTCE.Text := FieldByName('tce_data').Text;
          Close;
          Free;
        end;

      // TA
      4, 6, 12, 14:
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.add('select tpr_dataemi from TceAditivo where tce_cod = ' + quSFolhaPgtotce_cod.Text);
          Open;
          Last;

          quSFolhaPgtoDataTCE.Text := FieldByName('tpr_dataemi').Text;
          Close;
          Free;
        end;

      // T. Alteracao
      8, 9:
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          Sql.add('select tal_dataemi from TceAlteracao where tce_cod = ' + quSFolhaPgtotce_cod.Text);
          Open;
          Last;

          quSFolhaPgtoDataTCE.Text := FieldByName('tal_dataemi').Text;
          Close;
          Free;
        end;
    end;
  end;
  qusFolhaPgtoNaoLiberado.AsFloat := quSFolhaPGtofat_totbolsa.AsFloat - quSFolhaPgtofat_totliberado.AsFloat;
end;

procedure TDmDTA.quEstudanteCalcFields(DataSet: TDataSet);
begin
  if DmDta.quEstudanteest_situacao.Value = 'S' then
    DMDta.quEstudanteDescSituacao.Value := 'Estagiando'
  else if DmDta.quEstudanteest_situacao.Value = 'N' then
    DMDta.quEstudanteDescSituacao.Value := 'N�o Estagiando'
  else if DmDta.quEstudanteest_situacao.Value = 'X' then
    DMDta.quEstudanteDescSituacao.Value := 'Ex-Estagi�rio';

  if DmDta.quEstudantedat_perfil.asstring = '' then
    DmDta.quEstudantestatus.AsString := 'Sem Perfil'
  else if (date - DmDta.quEstudantedat_perfil.Value) > 91 then
    DmDta.quEstudantestatus.AsString := 'Desatualizado'
  else
    DmDta.quEstudantestatus.AsString := 'Atualizado'




end;

function TDmDTA.BuscaCampo(Tabela, nomeCampo, nomeArgumento: string;
  argumento: Integer; Where: string = ''): string;
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('Select ' + nomeCampo + ' from ' + tabela + ' where ' + nomeArgumento + ' = ' + IntToStr(Argumento));
    if Where <> '' then
      Sql.Add('and ' + Where);
    Open;

    Result := FieldByName(nomeCampo).AsString;
    Close;
    free;
  end;
end;

function TDmDTA.Busca(Tabela, nomeCampo, Argumento: string): bool;
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('Select ' + nomeCampo + ' from ' + tabela + ' where ' + argumento);
    Open;
    Result := not eof;
    Close;
    free;
  end;
end;


procedure TDmDTA.AtualizaTabela(nomeTabela, nomeChave: string; campoChave: Integer;
  nomeAtual: string; CampoAtual: string);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('Update ' + nomeTabela);
    Sql.Add('Set ' + nomeAtual + ' = ''' + CampoAtual + '''');
    Sql.Add('where ' + nomeChave + ' = ' + IntToStr(CampoChave));
    ExecSql;
    free;
  end;
end;

procedure TDmDTA.AtualizaTabela2(nomeTabela, nomeChave1, nomeChave2: string; campoChave1, campoChave2: Integer;
  nomeAtual: string; CampoAtual: string);
begin
  with Tquery.create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('Update ' + nomeTabela);
    Sql.Add('Set ' + nomeAtual + ' = ''' + CampoAtual + '''');
    Sql.Add('where ' + nomeChave1 + ' = ' + IntToStr(CampoChave1));
    Sql.Add('and ' + nomeChave2 + ' = ' + IntToStr(CampoChave2));
    ExecSql;
    free;
  end;
end;

function TDmDTA.BuscaCampo2(Tabela, nomeCampo, nomeArg1, nomeArg2: string;
  arg1, arg2: Integer; Where: string = ''): string;
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('Select ' + nomeCampo + ' from ' + tabela + ' where ' + nomeArg1 + ' = ' + IntToStr(Arg1));
    Sql.Add('and ' + nomeArg2 + ' = ' + IntToStr(Arg2));
    if Where <> '' then
      Sql.Add('and ' + Where);
    Open;
    Result := FieldByName(nomeCampo).AsString;
    Close;
    free;
  end;
end;

procedure TDmDTA.GeraEtiqueta(InstCod: Integer);
var
  Cep: string;
begin

  tbEtiqueta.Append;
  with quEtiqueta do
  begin
    ParamByName('inst_cod').AsInteger := InstCod;
    Open;

    if quEtiquetainst_cep.AsString <> '' then
    begin
      Cep := quEtiquetainst_cep.AsString;
      Cep := Copy(Cep, 1, 5) + '-' + Copy(Cep, 6, 3);
    end;

    tbEtiquetaNomeEsc.Value := quEtiquetainst_nome.AsString;
    tbEtiquetaNomeResp.Value := 'A/C: ' + quEtiquetainst_nomerespcomp.AsString;
    tbEtiquetaEnd1.Value := quEtiquetainst_endereco.AsString;

    if quEtiqueta.fieldbyname('inst_numend').Text <> '' then
      tbEtiquetaEnd1.Value := tbEtiquetaEnd1.Value + ' ' + quEtiqueta.fieldbyname('inst_numend').Text;
    if quEtiqueta.fieldbyname('inst_sala').Text <> '' then
      tbEtiquetaEnd1.Value := tbEtiquetaEnd1.Value + ' - SALA ' + quEtiqueta.fieldbyname('inst_sala').Text;
    tbEtiquetaEnd2.Value := 'CEP: ' + Cep + ' - ' +
      quEtiquetainst_bairro.AsString + ' - ' +
      quEtiquetainst_cidade.AsString + '/' + quEtiquetaInst_estado.AsString;
    if quEtiquetainst_caixapostal.Text <> '' then
      tbEtiquetaEnd2.Value := tbEtiquetaEnd2.Value + ' - C.P. ' + quEtiquetainst_caixapostal.Text;
    Close;
  end;
  tbEtiqueta.Post;
end;

procedure TDmDTA.GeraEtiquetaEmp(EmpCod: Integer);
var
  Cep, Fone, Fax: string;
begin
  tbEtiqueta.Append;
  with quEtiquetaEmp do
  begin
    ParamByName('emp_cod').AsInteger := EmpCod;
    Open;

    if quEtiquetaEmpemp_cepcor.AsString <> '' then
    begin
      Cep := quEtiquetaEmpemp_cepcor.AsString;
      Cep := Copy(Cep, 1, 5) + '-' + Copy(Cep, 6, 3);
    end;
    if quEtiquetaEmpemp_telefonecor.AsString <> '' then
    begin
      Fone := quEtiquetaEmpemp_telefonecor.AsString;
      Fone := '(' + Copy(Fone, 1, 2) + ') ' + Copy(Fone, 3, 4) + '-' + Copy(Fone, 7, 4);
    end;
    if quEtiquetaEmpemp_fax.AsString <> '' then
    begin
      Fax := quEtiquetaEmpemp_fax.AsString;
      Fax := '(' + Copy(Fax, 1, 2) + ') ' + Copy(Fax, 3, 4) + '-' + Copy(Fax, 7, 4);
    end;
    tbEtiquetaNomeEsc.Value := quEtiquetaEmpemp_nome.AsString;
    tbEtiquetaEnd1.Value := quEtiquetaEmpemp_enderecocor.AsString;
    if quEtiquetaEmp.fieldbyname('emp_numendcor').Text <> '' then
      tbEtiquetaEnd1.Value := tbEtiquetaEnd1.Value + ' ' + quEtiquetaEmp.fieldbyname('emp_numendcor').Text;
    if quEtiquetaEmp.fieldbyname('emp_cjtoendcor').Text <> '' then
      tbEtiquetaEnd1.Value := tbEtiquetaEnd1.Value + ' - CJ. ' + quEtiquetaEmp.fieldbyname('emp_cjtoendcor').Text;
    tbEtiquetaEnd2.Value := 'CEP: ' + Cep + ' - ' +
      quEtiquetaEmpemp_bairrocor.AsString + ' - ' +
      quEtiquetaEmpemp_cidadecor.AsString + '/' + quEtiquetaEmpemp_estadocor.AsString;
    tbEtiquetaEnd3.Value := 'Telefone: ' + Fone + ' - Fax: ' + Fax;
    Close;
  end;
  tbEtiqueta.Post;
end;

procedure TDmDTA.quCaixaCalcFields(DataSet: TDataSet);
var
  Entradas, Saidas: Double;
begin
  // Total de Entradas
 { Entradas := 0;
  with quSEntradas do
  begin
    ParamByName('cai_ano').AsInteger := quCaixacai_ano.AsInteger;
    ParamByName('cai_mes').AsInteger := quCaixacai_mes.AsInteger;
    Open;

    if not IsEmpty then
      Entradas := FieldByName('Entradas').AsFloat;

    Close;
  end;

  // Total de Sa�das
  Saidas := 0;
  with quSSaidas do
  begin
    ParamByName('cai_ano').AsInteger := quCaixacai_ano.AsInteger;
    ParamByName('cai_mes').AsInteger := quCaixacai_mes.AsInteger;
    Open;

    if not IsEmpty then
      Saidas := FieldByName('Saidas').AsFloat;

    Close;
  end;

  quCaixacai_entradas.Value := Entradas;
  quCaixacai_saidas.Value := Saidas;

  quCaixaSaldo.AsFloat := quCaixaCAI_INICIAL.AsFloat + quCaixaCAI_ENTRADAS.AsFloat - quCaixaCAI_SAIDAS.AsFloat;}
end;

procedure TDmDTA.quContasPagarCalcFields(DataSet: TDataSet);
begin
{  if (not quContasPagarcpg_tipodesp.IsNull) and
    (quContasPagarcpg_tipodesp.Value <> '') then
  begin
    case quContasPagarcpg_tipodesp.AsInteger of
      0: quContasPagarDescricao.Value := BuscaCampo('Despesa', 'dsp_nome', 'dsp_cod', quContasPagardsp_cod.Value);
      1: quContasPagarDescricao.Value := quContasPagarcpg_descricao.Value;
    end;
  end;}
end;

procedure TDmDTA.quTriagemCalcFields(DataSet: TDataSet);
begin
  if (not quTriagempcu_turno.IsNull) and
    (quTriagempcu_turno.Value <> '') then
  begin
    case quTriagempcu_turno.AsInteger of
      0: quTriagemTurno.Value := 'Manh�';
      1: quTriagemTurno.Value := 'Tarde';
      2: quTriagemTurno.Value := 'Noite';
    end;
  end;
  quTriagemTelefone.value := '';
  quTriagemTelCompleto.Value := '';
  if quTriagemest_fone1.Value <> '' then
  begin
    quTriagemTelefone.value := '(' + Copy(quTriagemest_fone1.Value, 1, 2) + ') ' + Copy(quTriagemest_fone1.Value, 3, 4) + '-' + Copy(quTriagemest_fone1.Value, 7, 4);
  //  quTriagemTelCompleto.Value := quTriagemTelCompleto.Value + '(' + Copy(quTriagemest_fone1.Value, 1, 2) + ') ' + Copy(quTriagemest_fone1.Value, 3, 4) + '-' + Copy(quTriagemest_fone1.Value, 7, 4);
  end;
  //else
  if quTriagemest_fone2.Value <> '' then
  begin
   // quTriagemTelefone.value := '(' + Copy(quTriagemest_fone2.Value, 1, 2) + ') ' + Copy(quTriagemest_fone2.Value, 3, 4) + '-' + Copy(quTriagemest_fone2.Value, 7, 4);
   // if quTriagemTelCompleto.Value <> '' then
   //   quTriagemTelCompleto.Value := quTriagemTelCompleto.Value + ' - ';
    quTriagemTelCompleto.Value := quTriagemTelCompleto.Value + '(' + Copy(quTriagemest_fone2.Value, 1, 2) + ') ' + Copy(quTriagemest_fone2.Value, 3, 4) + '-' + Copy(quTriagemest_fone2.Value, 7, 4);
  end;
  {else if quTriagemest_recado.Value <> '' then
  begin
    quTriagemTelefone.value := '(' + Copy(quTriagemest_recado.Value, 1, 2) + ') ' + Copy(quTriagemest_recado.Value, 3, 4) + '-' + Copy(quTriagemest_recado.Value, 7, 4) + ' (R)';
    if quTriagemTelCompleto.Value <> '' then
      quTriagemTelCompleto.Value := quTriagemTelCompleto.Value + ' - ';
    quTriagemTelCompleto.Value := quTriagemTelCompleto.Value + '(' + Copy(quTriagemest_recado.Value, 1, 2) + ') ' + Copy(quTriagemest_recado.Value, 3, 4) + '-' + Copy(quTriagemest_recado.Value, 7, 4) + ' (R)';
  end;}
  if quTriagemest_situacao.Value = 'X' then
    quTriagemsituacao.Value := 'Ex-estagi�rio'
  else
    quTriagemsituacao.Value := '';
  qrypesquisa.close;
  qrypesquisa.SQL.clear;
  qrypesquisa.SQL.Add('select cur_nome from curso where cur_cod=:curso');
  qrypesquisa.ParamByName('curso').AsInteger := qutriagemcur_cod.AsInteger;
  qrypesquisa.Open;
  if not qrypesquisa.Eof then
    qutriagemcurso.AsString := qrypesquisa.fieldbyname('cur_nome').asstring;
end;

procedure TDmDTA.quRCaixaCalcFields(DataSet: TDataSet);
begin
  if quRCaixaTipo.Value = 'E' then
    quRCaixaValEntrada.Value := quRCaixacen_valor.Value
  else
    quRCaixaValSaida.Value := quRCaixacen_valor.Value;

  case quRCaixacai_mes.Value of
    1: quRCaixaMesExtenso.Value := 'JANEIRO';
    2: quRCaixaMesExtenso.Value := 'FEVEREIRO';
    3: quRCaixaMesExtenso.Value := 'MAR�O';
    4: quRCaixaMesExtenso.Value := 'ABRIL';
    5: quRCaixaMesExtenso.Value := 'MAIO';
    6: quRCaixaMesExtenso.Value := 'JUNHO';
    7: quRCaixaMesExtenso.Value := 'JULHO';
    8: quRCaixaMesExtenso.Value := 'AGOSTO';
    9: quRCaixaMesExtenso.Value := 'SETEMBRO';
    10: quRCaixaMesExtenso.Value := 'OUTUBRO';
    11: quRCaixaMesExtenso.Value := 'NOVEMBRO';
    12: quRCaixaMesExtenso.Value := 'DEZEMBRO';
  end;

  quRCaixaSomaEntradas.Value := 0;
  quRCaixaSomaSaidas.Value := 0;

  with quRSomaCaixa do
  begin
    ParamByName('cai_ano').AsInteger := quRCaixacai_ano.AsInteger;
    ParamByName('cai_mes').AsInteger := quRCaixacai_mes.AsInteger;
    Open;
    if not IsEmpty then
    begin
      quRCaixaSomaEntradas.Value := FieldByName('somaEntradas').AsFloat;
      quRCaixaSomaSaidas.Value := FieldByName('somaSaidas').AsFloat;
    end;
    Close;
  end;

  quRCaixaTotalGeral.Value := quRCaixacai_inicial.Value + quRCaixaSomaEntradas.Value -
    quRCaixaSomaSaidas.Value;
end;

function TDmDTA.PrimeirasMaiusculas(Origem: string): string;
var
  Espaco: boolean;
  Posicao, i: Integer;
  Retorno: string;
begin
  Espaco := True;
  Retorno := '';

  for i := 1 to Length(Origem) do
  begin
    if Espaco then
      Retorno := Retorno + Origem[i]
    else
      Retorno := Retorno + AnsiLowerCase(Origem[i]);
    Espaco := origem[i] = ' ';
  end;

  if pos(' Da ', retorno) > 0 then
  begin
    posicao := pos(' Da ', retorno);
    Delete(retorno, posicao, 4);
    Insert(' da ', retorno, posicao)
  end;

  if pos(' De ', retorno) > 0 then
  begin
    posicao := pos(' De ', retorno);
    Delete(retorno, posicao, 4);
    Insert(' de ', retorno, posicao)
  end;

  if pos(' Do ', retorno) > 0 then
  begin
    posicao := pos(' Do ', retorno);
    Delete(retorno, posicao, 4);
    Insert(' do ', retorno, posicao)
  end;

  if pos(' Das ', retorno) > 0 then
  begin
    posicao := pos(' Das ', retorno);
    Delete(retorno, posicao, 5);
    Insert(' das ', retorno, posicao)
  end;

  if pos(' Dos ', retorno) > 0 then
  begin
    posicao := pos(' Dos ', retorno);
    Delete(retorno, posicao, 5);
    Insert(' dos ', retorno, posicao)
  end;

  if pos(' E ', retorno) > 0 then
  begin
    posicao := pos(' E ', retorno);
    Delete(retorno, posicao, 3);
    Insert(' e ', retorno, posicao)
  end;
  Result := Retorno;
end;

procedure TDmDTA.AtualizaPgtoEstagiario(EstCod, TceCod: Integer);
var
  Pgto: string[2];
begin
  Pgto := '';
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select * from Tce where tce_cod = ' + IntToStr(TceCod));
    Open;

    // S� o TCE
    if (not FieldByName('tce_dataret').IsNull) and (not FieldByName('tce_datadec').IsNull) then
      Pgto := '0' // Liberado
    else if (FieldByName('tce_dataret').IsNull) and (FieldByName('tce_datadec').IsNull) then
      Pgto := '3' // Falta TCE e DM
    else if FieldByName('tce_datadec').IsNull then
      Pgto := '1' // Falta DM
    else if FieldByName('tce_dataret').IsNull then
      Pgto := '2'; // Falta TCE

    if FieldByName('tce_situacao').AsInteger > 0 then
    begin
      // TA's
      Sql.Clear;
      Sql.Add('select * from TceAditivo where  tce_cod  = ' + IntToStr(TceCod));
      Open;

      if not IsEmpty then
      begin
        First;

        // Percorre os TA's
        while not Eof do
        begin
          // N�o retornou
          if FieldByName('tpr_retorno').IsNull then
          begin
            if Pgto = '0' then
              Pgto := '4' // Falta s� TA
            else if Pgto = '1' then
              Pgto := '6' // Falta DM / Ta
            else if Pgto = '2' then
              Pgto := '5' // Falta TCE / TA
            else if Pgto = '3' then
              Pgto := '7'; // Falta TCE / TA / DM
          end;

          // Se j� tiver faltando algum TA, n�o precisa mais
          if StrToInt(Pgto) < 4 then
            Next
          else
            break;
        end;
      end;
    end;

    // Termos de Alt.
    Close;
    Sql.Clear;
    Sql.Add('select * from TceAlteracao where tce_cod = ' + IntToStr(TceCod));
    Open;

    if not IsEmpty then
    begin
      First;

      // Percorre os TA's
      while not Eof do
      begin
        // N�o retornou
        if FieldByName('tal_retorno').IsNull then
        begin
          if Pgto = '0' then
            Pgto := '8' // Falta s� T. Alt.
          else if Pgto = '1' then
            Pgto := '9' // Falta DM / T. Alt.
          else if Pgto = '2' then
            Pgto := '10' // Falta TCE / T. Alt.
          else if Pgto = '3' then
            Pgto := '11' // Falta TCE / DM / T. Alt.
          else if Pgto = '4' then
            Pgto := '12' // Falta TA / T. Alt.
          else if Pgto = '5' then
            Pgto := '13' // Falta TCE / TA / T. Alt.
          else if Pgto = '6' then
            Pgto := '14' // Falta DM / TA / T. Alt.
          else if Pgto = '7' then
            Pgto := '15'; // Falta TCE / DM / TA / T. Alt.
        end;

        // Se j� tiver faltando algum T. Alt. n�o precisa mais
        if StrToInt(Pgto) < 8 then
          Next
        else
          break;
      end;
    end;
    Close;
    Sql.Clear;
    Sql.Add('Update Estudante set est_pgtolib = :est_pgtolib where est_cod = ' + IntToStr(EstCod));
    ParamByName('est_pgtolib').AsString := Pgto;
    ExecSql;
    Sql.Clear;
    Sql.Add('Update FolhaPgto set fbo_situacao = :fbo_situacao');
    Sql.Add('where est_cod = ' + IntToStr(EstCod));
    ParamByName('fbo_situacao').AsString := Pgto;
    ExecSql;
    Free;
  end;
end;

procedure TDmDTA.quEstRescCalcFields(DataSet: TDataSet);
begin
  if (not quEstRescpcu_peratual.IsNull) and (quEstRescpcu_peratual.Value <> '') then
    case quEstRescpcu_peratual.AsInteger of
      0: quEstRescSemestre.Value := quEstRescpcu_anoAtual.Text + '� Ano';
      1: quEstRescSemestre.Value := quEstRescpcu_anoAtual.Text + '� Periodo';
    end;
  if (quEstResctce_dataini.Value >= strtodate('28/09/2008')) or
    (quEstResctpr_dataini.Value >= strtodate('28/09/2008')) then
    quEstResclei.AsString := 'NOVA LEI'
  else
    quEstResclei.AsString := 'Lei 6.494/77';


  if quEstRescTipo.Value = '1' then
  begin
    quEstRescMesesEstagiando.AsFloat :=
      (quEstRescTce_datafim.AsDateTime - quEstRescTce_dataini.AsDateTime) / 365 * 12;
    quEstRescIncio.Value := FormatDateTime('DD/MM/YYYY', quEstRescTce_dataini.AsDateTime);
    quEstRescFim.Value := FormatDateTime('DD/MM/YYYY', quEstRescTce_datafim.AsDateTime);
  end
  else
  begin
    quEstRescMesesEstagiando.AsFloat :=
      (quEstRescTpr_datafim.AsDateTime - quEstRescTce_dataini.AsDateTime) / 365 * 12;
    quEstRescIncio.Value := FormatDateTime('DD/MM/YYYY', quEstRescTce_dataini.AsDateTime);
    quEstRescFim.Value := FormatDateTime('DD/MM/YYYY', quEstRescTpr_datafim.AsDateTime);
  end;
end;

procedure TDmDTA.quTaxaCalcFields(DataSet: TDataSet);
var
  ValBolsaCont, ValBolsa, ValBolsaAnt: Double;
  ano, mes, dia, diasMes: word;
  tempo: real;

  procedure RetornarDescSituacao();
  begin
    case quTaxatce_Situacao.AsInteger of
      0: quTaxaDescSituacao.Value := 'Normal';
      1: quTaxaDescSituacao.Value := '1� Prorroga��o';
      2: quTaxaDescSituacao.Value := '2� Prorroga��o';
      3: quTaxaDescSituacao.Value := '3� Prorroga��o';
      4: quTaxaDescSituacao.Value := '4� Prorroga��o';
      5: quTaxaDescSituacao.Value := '5� Prorroga��o';
      6: quTaxaDescSituacao.Value := '6� Prorroga��o';


    end;
  end;

  procedure RetornarSituacao();
  begin
    with TQuery.Create(nil) do
    begin

      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      sql.Text := ' select * from Estudante where est_cod =' + qutaxaest_cod.AsString;
      open;
      case fieldbyname('est_pgtolib').AsInteger of
        0: quTaxaSituacao.Value := 'Liberado';
        1: quTaxaSituacao.Value := 'Falta D.M.';
        2: quTaxaSituacao.Value := 'Falta T.C.E.';
        3: quTaxaSituacao.Value := 'Falta T.C.E./D.M.';
        4: quTaxaSituacao.Value := 'Falta T.A.';
        5: quTaxaSituacao.Value := 'Falta T.C.E./T.A.';
        6: quTaxaSituacao.Value := 'Falta D.M./T.A.';
        7: quTaxaSituacao.Value := 'Falta T.C.E./D.M./T.A.';
        8: quTaxaSituacao.Value := 'Falta T.Alt.';
        9: quTaxaSituacao.Value := 'Falta D.M./T.Alt.';
        10: quTaxaSituacao.Value := 'Falta T.C.E./T.Alt.';
        11: quTaxaSituacao.Value := 'Falta T.C.E./D.M./T.Alt.';
        12: quTaxaSituacao.Value := 'Falta T.A./T.Alt.';
        13: quTaxaSituacao.Value := 'Falta T.C.E./T.A./T.Alt.';
        14: quTaxaSituacao.Value := 'Falta D.M./T.A./T.Alt.';
        15: quTaxaSituacao.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
      end;
      if relatorios(qutaxaTCE_cod.asinteger) = false then
      begin
        if fieldbyname('est_pgtolib').AsInteger = 0 then
          qutaxaSituacao.Value := 'Rel. Pendentes: '+ sRelatoriosPendentes
        else
          qutaxaSituacao.Value := qutaxaSituacao.Value + '/Rel. Pendentes: '+ sRelatoriosPendentes;
      end;
      close;
      free;
    end;
  end;


begin
  Valbolsacont := 0;
  if (not quTaxatce_situacao.IsNull) and
    (quTaxatce_situacao.text <> '') then
  begin
    // testa a data de rescis�o
    if not quTaxatce_datares.IsNull then
    begin
      if (quTaxatce_DataRes.AsDateTime >= quTaxa.ParamByName('data1').AsDateTime) then
      begin
        quTaxaDescSituacao.Value := 'Resc. ' + quTaxatce_DataRes.Text;
        if quTaxatce_situacao.ASSTRING = '9' then
          quTaxaDescSituacao.Value := 'Recesso Remu. Prop.';
      end
      else
        RetornarDescSituacao;
    end
    else
      RetornarDescSituacao;
  end;
  RetornarSituacao;

  with quTceAlteracao do
  begin
    ParamByName('tce_cod').AsInteger := qutaxatce_cod.AsInteger;
    Open;
    if not IsEmpty then
    begin
      // TCE Altera��o
      Last;
      if quTceAlteracaotal_tipobolsa.Value = '0' then
      begin
        // novo calculo
        // horas := quTceAlteracaotal_tothoras.AsFloat / 20;
        // total := (horas * 22)  * quTceAlteracaotal_novabolsa.AsFloat
        quTaxaBolsaTotal.Value := quTceAlteracaotal_novabolsa.AsFloat * quTceAlteracaotal_tothoras.AsFloat;
        ValBolsa := quTceAlteracaotal_novabolsa.AsFloat * quTceAlteracaotal_tothoras.AsFloat;
     //   ValBolsaCont := ((quTceAlteracaotal_tothoras.AsFloat / 20) * 22) * quTceAlteracaotal_novabolsa.AsFloat
        ValBolsaCont := (quTceAlteracaotal_tothoras.AsFloat) * quTceAlteracaotal_novabolsa.AsFloat
      end
      else
      begin
        quTaxaBolsaTotal.Value := quTceAlteracaotal_novabolsa.AsFloat;
        ValBolsa := quTceAlteracaotal_novabolsa.AsFloat;
        ValbolsaCont := ValBolsa;
      end;
    end
    else
    begin
      // TCE Normal
      if quTaxatce_tipobolsa.Value = '0' then
      begin
        quTaxaBolsaTotal.Value := quTaxaTce_Bolsa.AsFloat * quTaxaTce_tothoras.AsFloat;
        ValBolsa := quTaxatce_bolsa.AsFloat * quTaxatce_tothoras.AsFloat;
      //  ValBolsaCont := ((quTaxaTce_tothoras.AsFloat / 20) * 22) * quTaxatce_bolsa.AsFloat;
        ValBolsaCont := (quTaxaTce_tothoras.AsFloat) * quTaxatce_bolsa.AsFloat;
      end
      else
      begin
        quTaxaBolsaTotal.Value := quTaxaTce_Bolsa.AsFloat;
        ValBolsa := quTaxatce_bolsa.AsFloat;
        ValbolsaCont := ValBolsa;
      end;
    end;
    Close;
  end;
  ValBolsaAnt := ValBolsa;
  {
  // Faz o c�lculo do valor da bolsa proporcional se for estagi�rio rescindido
  if quTaxaDescSituacao.Value = 'Resc. ' + quTaxatce_DataRes.Text then
  begin
    decodeDate(quTaxatce_datares.AsDateTime, ano, mes, dia);
    diasMes := retornaDiasMes(mes, ano);
    valBolsa := ValBolsa * dia/diasMes;
    quTaxaBolsaTotal.Value := 'R$ ' + FormatFloat('#,##0.00', ValBolsa);
  end;
  }
  // C�lculo da taxa em cima do valor da bolsa
  if not quTaxaemp_tipotaxa.IsNull then
  begin
    case quTaxaemp_tipotaxa.AsInteger of
      0: // 20,00 ou 8%      alterado para 30,00 ou 10
        begin
          if ValBolsaAnt <= 300 then
            quTaxaTaxa.AsFloat := 30
          else
            quTaxaTaxa.AsFloat := ValBolsaCont * 0.10;
        end;

      1: // 25,00 ou 10
        begin
          if ValBolsa <= 250 then
            quTaxaTaxa.AsFloat := 25
          else
            quTaxaTaxa.AsFloat := ValBolsaCont * 0.1;
        end;

      2: // 40,00 ou 10
        begin
          if ValBolsa <= 400 then
            quTaxaTaxa.AsFloat := 40
          else
            quTaxaTaxa.AsFloat := ValBolsaCont * 0.1;
        end;

      3: // Por Estagi�rio
        quTaxaTaxa.AsFloat := quTaxaemp_valortaxa.AsFloat;
      4: // Porcentagem - bolsa
        quTaxaTaxa.AsFloat := quTaxaemp_valortaxa.AsFloat / 100 * ValBolsaCont;

      6: // Porcentagem - folha
        quTaxaTaxa.AsFloat := quTaxaemp_valortaxa.AsFloat / 100 * ValBolsaCont;


      5: // 23,42 ou 9,5%
        begin
          if ValBolsaAnt <= 250 then
            quTaxaTaxa.AsFloat := 23.42
          else
            quTaxaTaxa.AsFloat := ValBolsaCont * 0.095;
        end;


    end;

    if qutaxatce_situacao.AsInteger = 9 then
    begin
      tempo := calculatempo(qutaxatce_cod.asinteger, qutaxatce_datares.Value);
      quTaxaBolsatotal.AsFloat := arredondar((ValBolsa / 12) * tempo, 2);
      quTaxaTaxa.AsFloat := arredondar((quTaxaBolsatotal.AsFloat * 0.1), 2);
      // arredondar((quTaxaTaxa.AsFloat / 12) * tempo,2);
    end
    else
      quTaxaValBolsa.AsFloat := ValBolsa;
  end;
end;

procedure TDmDTA.quFolhaPgtoAfterOpen(DataSet: TDataSet);
begin
  quTotal.ParamByName('fat_numero').AsInteger :=
    DmDta.quFolhaPgtofat_numero.AsInteger;
  quTotal.Open;
end;

procedure TDmDTA.quFolhaPgtoAfterClose(DataSet: TDataSet);
begin
  quTotal.Close;
end;

procedure TDmDTA.quFolhaPgtoBeforeInsert(DataSet: TDataSet);
begin
  if Fatura = 0 then // Fatura = 0 controle pelo GRID, n�o pode inserir
    abort;
end;

procedure TDmDTA.quTotalCalcFields(DataSet: TDataSet);
begin
  quTotalEstagiarios.AsInteger := quFolhaPgto.RecordCount;

end;

procedure TDmDTA.quContaCorrCalcFields(DataSet: TDataSet);
var Cep, cpf: string;
begin
  // CPF
  cpf := sonumero(quContaCorr.FieldByName('est_cpf').Value);
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  quContaCorr.FieldByName('cpf_formatado').value := cpf;

  Cep := '';
  if quContaCorrest_cep.Text <> '' then
  begin
    Cep := quContaCorrest_cep.Text;
    Cep := Copy(Cep, 1, 2) + '.' + Copy(Cep, 3, 3) + '-' + Copy(Cep, 6, 3);
  end;

  quContaCorrEndCompleto.Text :=
    quContaCorrest_endereco.Text + ' - ' + quContaCorrest_bairro.Text + ' - ' +
    quContaCorrest_cidade.Text + '/' + quContaCorrest_estado.Text + ' - CEP: ' + cep;
end;

procedure TDmDTA.quTaxaFCalcFields(DataSet: TDataSet);
var
  ValBolsa: Double;
begin
  ValBolsa := quTaxaFfbo_valor.AsFloat;

  // C�lculo da taxa em cima do valor da bolsa
  if not quTaxaFEmp_TipoTaxa.IsNull then
  begin
    case quTaxaFemp_tipotaxa.AsInteger of
      0: // 30,00 ou 10%
        begin
          if ValBolsa <= 300 then
            quTaxaFTaxa.AsFloat := 30
          else
            quTaxaFTaxa.AsFloat := ValBolsa * 0.1;
        end;

      1: // 25,00 ou 10%
        begin
          if ValBolsa <= 250 then
            quTaxaFTaxa.AsFloat := 25
          else
            quTaxaFTaxa.AsFloat := ValBolsa * 0.1;
        end;

      2: // 40,00 ou 10%
        begin
          if ValBolsa <= 400 then
            quTaxaFTaxa.AsFloat := 40
          else
            quTaxaFTaxa.AsFloat := 10;
        end;

      3: // Por Estagi�rio
        quTaxaFTaxa.AsFloat := quTaxaFemp_valortaxa.AsFloat;
      4: // Porcentagem - bolsa
        quTaxaFTaxa.AsFloat := quTaxaFemp_valortaxa.AsFloat / 100 * ValBolsa;
      6: // Porcentagem - Folha
        quTaxaFTaxa.AsFloat := quTaxaFemp_valortaxa.AsFloat / 100 * ValBolsa;

      5: // 22,50 ou 9%        passou para  23.42  e 9,5
        begin
          if ValBolsa <= 250 then
            quTaxaFTaxa.AsFloat := 23.42
          else
            quTaxaFTaxa.AsFloat := ValBolsa * 0.095;
        end;
    end;
  end;

  // Faz o c�lculo do valor da bolsa proporcional se for estagi�rio rescindido
  {if quTaxaDescSituacao.Value = 'Resc. ' + quTaxatce_DataRes.Text then
  begin
    decodeDate(quTaxatce_datares.AsDateTime, ano, mes, dia);
    diasMes := retornaDiasMes(mes, ano);
    valBolsa := ValBolsa * dia/diasMes;
    quTaxaBolsaTotal.Value := 'R$ ' + FormatFloat('#,##0.00', ValBolsa);
  end;         }
end;

procedure TDmDTA.quFormandosCalcFields(DataSet: TDataSet);
begin
  if (not quFormandospcu_anoAtual.IsNull) and
    (not quFormandospcu_perAtual.IsNull) then
  begin
    if quFormandospcu_peratual.Value = '0' then
      quFormandosAnoPeriodo.Value := quFormandospcu_anoatual.Text + '� Ano'
    else
      quFormandosAnoPeriodo.Value := quFormandospcu_anoatual.Text + '� Per�odo';
  end;

  quFormandosVestibular.Value := 'N�o informado';

  if (not quFormandospcu_vestib.IsNull) then
  begin
    if quFormandospcu_vestib.Value = '0' then
      quFormandosVestibular.Value := 'Ver�o'
    else if quFormandospcu_vestib.Value = '1' then
      quFormandosVestibular.Value := 'Inverno';
  end;
end;


procedure TDmDTA.quContUFPRCalcFields(DataSet: TDataSet);
begin
  // Situa��o
  if (not quContUFPRTCE_SITUACAO.IsNull) then
  begin
    // testa a data de rescis�o
    if not quContUFPRtce_datares.IsNull then
    begin
      if (quContUFPRTce_DataRes.AsDateTime <= quContUFPR.ParamByName('data2').AsDateTime) then
        quContUFPRDescSituacao.Value := 'Resc. ' + quContUFPRTce_DataRes.Text
      else
        quContUFPRDescSituacao.Value := '';
    end;

    if quContUFPRDescSituacao.Value = '' then
    begin
      case quContUFPRTce_situacao.AsInteger of
        0: quContUFPRDescSituacao.Value := 'Normal';
        1: quContUFPRDescSituacao.Value := '1� Prorroga��o';
        2: quContUFPRDescSituacao.Value := '2� Prorroga��o';
        3: quContUFPRDescSituacao.Value := '3� Prorroga��o';
        4: quContUFPRDescSituacao.Value := '4� Prorroga��o';
        5: quContUFPRDescSituacao.Value := '5� Prorroga��o';
        6: quContUFPRDescSituacao.Value := '6� Prorroga��o';
        7: quContUFPRDescSituacao.Value := 'Resc. ' + quContUFPRTce_DataRes.Text;
      end;
    end;
  end;

  // C�lculo da taxa em cima do valor da bolsa
  if not quContUFPRemp_tipotaxa.IsNull then
  begin
    case quContUFPRemp_tipotaxa.AsInteger of
      0: // 20,00 ou 8%
        begin
          if quContUFPRtce_bolsa.AsFloat <= 250 then
            quContUFPRValorCont.AsFloat := 20
          else
            quContUFPRValorCont.AsFloat := quContUFPRtce_bolsa.AsFloat * 0.08;
        end;

      1: // 25,00 ou 10%
        begin
          if quContUFPRtce_bolsa.AsFloat <= 250 then
            quContUFPRValorCont.AsFloat := 25
          else
            quContUFPRValorCont.AsFloat := quContUFPRtce_bolsa.AsFloat * 0.10;
        end;

      2: // 20,00 ou 25,00
        begin
          if quContUFPRtce_bolsa.AsFloat <= 500 then
            quContUFPRValorCont.AsFloat := 20
          else
            quContUFPRValorCont.AsFloat := 25;
        end;

      3: // Por Estagi�rio
        quContUFPRValorCont.AsFloat := quContUFPRemp_valortaxa.AsFloat;
      4: // Porcentagem - bolsa
        quContUFPRValorCont.AsFloat := quContUFPRtce_bolsa.AsFloat / 100 * quContUFPRemp_valortaxa.AsFloat;
      6: // Porcentagem - folha
        quContUFPRValorCont.AsFloat := quContUFPRtce_bolsa.AsFloat / 100 * quContUFPRemp_valortaxa.AsFloat;

      5: // 22,50 ou 9%
        begin
          if quContUFPRtce_bolsa.AsFloat <= 250 then
            quContUFPRValorCont.AsFloat := 22.5
          else
            quContUFPRValorCont.AsFloat := quContUFPRtce_bolsa.AsFloat * 0.09;
        end;

    end;
  end;

  // Valor Cont Ufpr
  if quContUFPRtce_bolsa.AsFloat > 0 then
    quContUFPRValorUFPR.AsFloat := quContUFPRValorCont.AsFloat * 0.3
  else
    quContUFPRValorUFPR.AsFloat := 3;
end;

procedure TDmDTA.quContUFPRAfterInsert(DataSet: TDataSet);
begin
  DataSet.delete;
end;

procedure TDmDTA.quSeguroIncCalcFields(DataSet: TDataSet);
var
  cpf: string;
begin
  // CPF
  cpf := quSeguroIncest_cpf.Value;
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  quSeguroInccpfformatado.value := cpf;
end;

procedure TDmDTA.quSeguroExcCalcFields(DataSet: TDataSet);
var
  cpf: string;
begin
  // CPF
  cpf := sonumero(quSeguroExcest_cpf.Value);
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  quSeguroExccpfformatado.value := cpf;
end;

procedure TDmDTA.tbEtiquetaBeforeOpen(DataSet: TDataSet);
begin

// exit;
  with tbEtiqueta do
  begin
    Active := False;
    TableType := ttParadox;
    TableName := 'Etiqueta.DB';
    // campos da tabela
    with FieldDefs do
    begin
      Clear;
      with AddFieldDef do
      begin
        Name := 'NomeEsc';
        DataType := ftString;
        Size := 100;
      end;
      with AddFieldDef do
      begin
        Name := 'NomeResp';
        DataType := ftString;
        Size := 100;
      end;
      with AddFieldDef do
      begin
        Name := 'End1';
        DataType := ftString;
        Size := 100;
      end;
      with AddFieldDef do
      begin
        Name := 'End2';
        DataType := ftString;
        Size := 100;
      end;
      with AddFieldDef do
      begin
        Name := 'End3';
        DataType := ftString;
        Size := 100;
      end;
      // cria a tabela
      CreateTable();
    end;
  end;
end;

procedure TDmDTA.tbEtiquetaAfterClose(DataSet: TDataSet);
begin
//  tbEtiqueta.DeleteTable();
  tbetiqueta.EmptyTable;
end;

procedure TDmDTA.quEntrevistaCalcFields(DataSet: TDataSet);
begin

  case quEntrevista.FieldByName('Eva_resultado').AsInteger of
    0: quEntrevista.FieldByName('Resultado').Value := 'Em Espera';
    1: quEntrevista.FieldByName('Resultado').Value := 'Reprovado';
    2: quEntrevista.FieldByName('Resultado').Value := 'Aprovado';
   // 4: quEntrevista.FieldByName('Resultado').Value := 'N�o Encaminhado';
    5: quEntrevista.FieldByName('Resultado').Value := 'N�o entrevistado pelo Cliente';
    6: quEntrevista.FieldByName('Resultado').Value := 'STANDBY';
    4: quEntrevista.FieldByName('Resultado').Value := 'Selecionado pela Empresa';
  end;
end;

procedure TDmDTA.quAvalDesempCalcFields(DataSet: TDataSet);
var
  cpf, sTelefone: string;
begin
  // CPF
  cpf := quAvalDesemp.FieldByName('est_cpf').Value;
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  quAvalDesemp.FieldByName('cpfformatado').value := cpf;

  // fone formatado
  sTelefone := quAvalDesemp.FieldByName('emp_telefone').Value;
  sTelefone := '(' + Copy(sTelefone, 1, 2) + ') ' + Copy(sTelefone, 3, 4) + '-' + Copy(sTelefone, 7, 4);
  quAvalDesemp.FieldByName('FoneFormatado').value := sTelefone;
end;

procedure TDmDTA.quEmpresaCalcFields(DataSet: TDataSet);
var
  anos, meses: integer;
  idade, unidade: string;
begin
  if quempresaemp_dtinicio.AsString <> '' then
  begin
    RetornaIdade(quempresaemp_dtinicio.AsString, Idade, unidade);
    quempresatempo.AsString := idade + ' ' + unidade;
  end;

  if quempresaemp_ramoinic1.AsString <> '' then
  begin
    RetornaIdade(quempresaemp_ramoinic1.AsString, Idade, unidade);
    quempresatempo1.AsString := idade + ' ' + unidade;
  end;

  if quempresaemp_ramoinic2.AsString <> '' then
  begin
    RetornaIdade(quempresaemp_ramoinic2.AsString, Idade, unidade);
    quempresatempo2.AsString := idade + ' ' + unidade;
  end;

  if quempresaemp_ramoinic3.AsString <> '' then
  begin
    RetornaIdade(quempresaemp_ramoinic1.AsString, Idade, unidade);
    quempresatempo3.AsString := idade + ' ' + unidade;
  end;

  if quempresagrup_cod.asstring <> '' then
  begin
    qrypesquisa.close;
    qrypesquisa.sql.clear;
    qrypesquisa.SQL.Add('select count(*) total from Empresa where grup_cod =' + quempresagrup_cod.AsString);
    qrypesquisa.Open;
    quempresafiliaisGrupo.AsInteger := qrypesquisa.fieldbyname('total').asinteger;

    qrypesquisa.close;
    qrypesquisa.sql.clear;
    qrypesquisa.SQL.Add('select sum(coalesce(emp_func,0)) funcionarios, sum(coalesce(emp_estag,0)) Estagiarios from Empresa where grup_cod =' + quempresagrup_cod.AsString);
    qrypesquisa.Open;
    quempresafuncGrupo.AsInteger := qrypesquisa.fieldbyname('funcionarios').asinteger;
    quempresaEstGrupo.AsInteger := qrypesquisa.fieldbyname('estagiarios').asinteger;
    qrypesquisa.close;
    qrypesquisa.sql.clear;
    qrypesquisa.SQL.Add('select * from grupo  where grup_cod =' + quempresagrup_cod.AsString);
    qrypesquisa.Open;
    quempresaNacGrupo.asstring := qrypesquisa.fieldbyname('grup_Pais').asstring;
    quempresaSiteGrupo.asstring := qrypesquisa.fieldbyname('grup_Site').asstring;
    quempresafilialinfogrupo.asstring := qrypesquisa.fieldbyname('grup_filiais').asstring;
    quempresaestagiarioinfoGrupo.asstring := qrypesquisa.fieldbyname('grup_estagiarios').asstring;
    quempresafuncinfogrupo.asstring := qrypesquisa.fieldbyname('grup_funcionarios').asstring;
  end;
end;

procedure TDmDTA.quConsEstudanteCalcFields(DataSet: TDataSet);
var
  car: char;
begin

  DmDta.quconsEstudanteturno.AsString := '';
  if quconsEstudantepcu_turno.asstring <> '' then
  begin
    car := quconsEstudantepcu_turno.asstring[1];
    case car of
      '0': DmDta.quconsEstudanteturno.AsString := 'Manh�';
      '1': DmDta.quconsEstudanteturno.AsString := 'Tarde';
      '2': DmDta.quconsEstudanteturno.AsString := 'Noite';
      '3': DmDta.quconsEstudanteturno.AsString := 'Manh� & Tarde';
      '4': DmDta.quconsEstudanteturno.AsString := 'Manh� & Noite';
      '5': DmDta.quconsEstudanteturno.AsString := 'Tarde & Noite';
    end;
  end;

  if (not quconsEstudantepcu_peratual.IsNull) and (quconsEstudantepcu_peratual.Value <> '') then
    case quconsEstudantepcu_peratual.AsInteger of
      0: quconsEstudanteSemestre.Value := quconsEstudantepcu_anoAtual.Text + '� Ano';
      1: quconsEstudanteSemestre.Value := quconsEstudantepcu_anoAtual.Text + '� Periodo';
    end;
  if DmDta.quconsEstudanteest_situacao.Value = 'S' then
    DMDta.quconsEstudanteSituacao.Value := 'Estagiando'
  else if DmDta.quconsEstudanteest_situacao.Value = 'N' then
    DMDta.quconsEstudanteSituacao.Value := 'N�o Estagiando'
  else if DmDta.quconsEstudanteest_situacao.Value = 'X' then
    DMDta.quconsEstudanteSituacao.Value := 'Ex-Estagi�rio';
end;

procedure TDmDTA.tbEtiquetaAfterOpen(DataSet: TDataSet);
begin
  // tbetiqueta.EmptyTable ;
end;

procedure TDmDTA.quAgendaAfterInsert(DataSet: TDataSet);
begin
  quagendaage_crc1.AsString := 'N';
  quagendaage_crc2.AsString := 'N';
  quagendaage_crc3.AsString := 'N';
  quagendaage_teste1.AsString := 'N';
  quagendaage_teste2.AsString := 'N';
  quagendaage_teste3.AsString := 'N';
  quagendaage_redacao1.AsString := 'N';
  quagendaage_redacao2.AsString := 'N';
  quagendaage_redacao3.AsString := 'N';

  quagendaage_info1.AsString := 'N';
  quagendaage_info2.AsString := 'N';
  quagendaage_info3.AsString := 'N';

  quagendaage_lestrangeira1.AsString := 'N';
  quagendaage_lestrangeira2.AsString := 'N';
  quagendaage_lestrangeira3.AsString := 'N';

end;

procedure TDmDTA.qryitauCalcFields(DataSet: TDataSet);
begin
  query1.Close;
  query1.SQL.Clear;
  query1.SQL.Add('select emp_nome,emp_cod from empresa where emp_cod = (select emp_cod from tce where tce_cod = :tce) ');
  query1.close;
  query1.ParamByName('tce').asstring := qryitau.FieldByName('tce').AsString;
  query1.Open;
  if not query1.Eof then
    qryitauempresa.AsString := query1.FieldByName('emp_nome').asstring


end;



procedure TDmDTA.qryREstagiariosCalcFields(DataSet: TDataSet);
var
  cpf: string;
begin
  // CPF
  cpf := sonumero(qryREstagiarios.FieldByName('cpg').Value);
  if cpf <> '' then
    cpf := Copy(cpf, 1, 3) + '.' + Copy(cpf, 4, 3) + '.' + Copy(cpf, 7, 3) + '-' + Copy(cpf, 10, 2);
  qryREstagiarios.FieldByName('cpfEstudante').value := cpf;

  cpf := sonumero(qryREstagiarios.FieldByName('cnpj').Value);
  if cpf <> '' then
    cpf := Copy(cpf, 1, 2) + '.' + Copy(cpf, 3, 3) + '.' + Copy(cpf, 6, 3) + '/' + Copy(cpf, 9, 4) + '-' + Copy(cpf, 13, 2);
  qryREstagiarios.FieldByName('cnpjEmpresa').value := cpf;


end;

procedure TDmDTA.quRequisitoBeforePost(DataSet: TDataSet);
begin
  if quRequisito.State in [dsinsert] then
    quRequisito.FieldByName('id_requisito').asinteger := dmdta.NEW_ID('tb_requisito');
end;

procedure TDmDTA.quEmpFuncionarioAfterInsert(DataSet: TDataSet);
begin
  quEmpFuncionarioefu_inativo.AsString := 'N';
  quempfuncionarioefu_datainclusao.Value := date();
end;

procedure TDmDTA.quVagaRequisitoAfterInsert(DataSet: TDataSet);
begin
  quvagarequisitotipo.AsString := 'O';
  requisitos.Close;
  requisitos.open;
  requisitos.Last;

end;

procedure TDmDTA.quEstudanteAfterInsert(DataSet: TDataSet);
begin
  questudanteest_cursosituacao.AsString := 'CURSANDO';
end;

procedure TDmDTA.quInstCoordenadorCalcFields(DataSet: TDataSet);
begin
  qrypesquisa.Close;
  qrypesquisa.SQL.clear;
  qrypesquisa.SQL.add('SELECT  Curso.cur_nome from   InstCurso INNER JOIN Curso ON InstCurso.Cur_cod = Curso.cur_cod');
  qrypesquisa.SQL.add(' where instcurso.inst_cod =:instituicao and instcurso.curi_coord=:coordenador ');
  qrypesquisa.parambyname('instituicao').AsInteger := quInstCoordenador.fieldbyname('inst_cod').asinteger;
  qrypesquisa.parambyname('coordenador').AsInteger := quInstCoordenador.fieldbyname('coord_cod').asinteger;
  qrypesquisa.Open;
  quInstCoordenadorcursos.AsString := '';
  while qrypesquisa.Eof = false do
  begin
    if quInstCoordenadorcursos.AsString = '' then
      quInstCoordenadorcursos.AsString := qrypesquisa.Fieldbyname('cur_nome').asstring
    else
      quInstCoordenadorcursos.AsString := quInstCoordenadorcursos.AsString + ' - ' + qrypesquisa.Fieldbyname('cur_nome').asstring;
    qrypesquisa.next;
  end;

end;

procedure TDmDTA.quEmpresaAfterInsert(DataSet: TDataSet);
begin
  DmDTA.quEmpresaemp_tipopessoa.AsString := 'J';
  DmDTA.quEmpresaemp_tipo.AsString := 'Privada';
end;

procedure TDmDTA.qugrupoCalcFields(DataSet: TDataSet);
begin
  if qugrupogrup_cod.asstring <> '' then
  begin
    qrypesquisa.close;
    qrypesquisa.sql.clear;
    qrypesquisa.SQL.Add('select sum(coalesce(emp_func,0)) funcionarios, sum(coalesce(emp_estag,0)) Estagiarios from Empresa where grup_cod =' + qugrupogrup_cod.AsString);
    qrypesquisa.Open;
    qugrupocalcfunc.AsInteger := qrypesquisa.fieldbyname('funcionarios').asinteger;
    qugrupocalcEstag.AsInteger := qrypesquisa.fieldbyname('estagiarios').asinteger;
    qrypesquisa.close;
    qrypesquisa.sql.clear;
    qrypesquisa.SQL.Add('select count(*) total from empresa  where grup_cod =' + qugrupogrup_cod.AsString);
    qrypesquisa.Open;
    qugrupoCalcfiliais.asinteger := qrypesquisa.fieldbyname('total').asinteger;
  end;
end;

procedure TDmDTA.CadastraCep(cep: string);
var
  y, nestado, nmunicipio: integer;
  arq: textfile;
  linha, Scep, estado, municipio, bairro, logradouro: string;
begin

end;

procedure TDmDTA.CriaCampo(Tabela, campo, chave, condicao: string);
begin
  qrypesquisa.CLOSE;
  qrypesquisa.SQL.clear;
  qrypesquisa.sql.text := 'select * from ' + tabela + ' where ' + chave + ' = -1';
  qrypesquisa.Open;
  if qrypesquisa.FieldList.IndexOf(campo) < 0 then
  begin
    try
      qrypesquisa.Close;
      qrypesquisa.SQL.Clear;
      qrypesquisa.SQL.Add('alter table ' + tabela + ' add  ' + campo + ' ' + condicao + ' ');
      qrypesquisa.ExecSQL;
    except
      showmessage('Campo J� foi Criado');
    end;
  end;
end;

procedure TDmDTA.quEmpFuncionarioCalcFields(DataSet: TDataSet);
var
  total, anos, meses: integer;
  idade, unidade: string;
begin
  if quempFuncionarioefu_DataExperiencia.AsString <> '' then
  begin
    RetornaIdade(quempFuncionarioefu_DataExperiencia.AsString, Idade, unidade);
    quempFuncionarioTempExperiencia.AsString := idade + ' ' + unidade;
  end;

  with TQuery.Create(nil) do
  begin
    Total := 0;
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    sql.Text := ' select TOP 1 (select count(T.tce_cod) TotalT  from  tce t ' +
      ' where  T.FUNC_COD IS NOT NULL AND  T.FUNC_COD = :func ' +
      '  AND  t.tce_situacao <> ''7'' and T.EMP_COD2=:empresa ' +
      '  AND  t.tce_cod not in (select tce_cod from tcealteracao )) + ' +
      ' (select count(X.tce_cod)  TotalN  from  tcealteracao x where ' +
      ' x.tce_cod in (select tce_cod from tce t where  t.tce_situacao <> ''7'') ' +
      ' AND X.FUNC_COD=:func AND X.EMP_COD2=:empresa AND X.func_cod IS NOT NULL  and ' +
      '   X.tal_cod = (select top 1 tal_cod from tcealteracao where tce_cod = x.tce_cod order by tal_cod desc )) ' +
      ' T2 FROM  TCE WHERE 1=1 ';

    parambyname('empresa').AsInteger := quempFuncionarioemp_cod.AsInteger;
    parambyname('func').AsInteger := quempFuncionarioFunc_cod.asinteger;
    Open;
    total := fieldbyname('t2').asinteger;
    quEmpFuncionarioTces.AsInteger := Total;

    if quempFuncionarioform_cod.Text <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from formatratamento  where form_cod=' + quempFuncionarioform_cod.AsString);
      Open;
      if not eof then
        quempFuncionarioformatratamento.AsString := FieldByName('form_nome').Text
    end;
  end;




end;

procedure TDmDTA.quSupervisorVagaCalcFields(DataSet: TDataSet);
var
  anos, meses: integer;
  idade, unidade: string;
begin
  if quSupervisorVagaFunc_cod.AsString <> '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod=' + quSupervisorVagaemp_cod.AsString + ' and Func_cod = ' + quSupervisorVagaFunc_cod.AsString);
      Open;
      quSupervisorvagaformacao.AsString := FieldByName('efu_formacao').Text;
      quSupervisorvagaNome.AsString := FieldByName('efu_nome').Text;
      quSupervisorvagaarea.AsString := FieldByName('efu_area').Text;
      quSupervisorvagacargo.AsString := FieldByName('efu_cargo').Text;
      quSupervisorvagaprofissao.AsString := FieldByName('efu_profissao').Text;
      if FieldByName('efu_dataexperiencia').Text <> '' then
      begin
        RetornaIdade(FieldByName('efu_dataexperiencia').Text, Idade, unidade);
        quSupervisorvagatempo.AsString := idade + ' ' + unidade;
      end;
      Close;
      Free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select EmpFuncRest.*,Instituicao.inst_nome from EmpFuncRest,Instituicao   where  Instituicao.Inst_cod = EmpFuncRest.inst_cod and  emp_cod=' + quSupervisorVagaemp_cod.AsString + ' and Func_cod = ' + quSupervisorVagaFunc_cod.AsString);
      Open;
      quSupervisorvagarestricoes.AsString := '';
      while eof = false do
      begin
        quSupervisorvagarestricoes.AsString := quSupervisorvagarestricoes.AsString + FieldByName('inst_nome').Text;
        if eof = false then
          quSupervisorvagarestricoes.AsString := quSupervisorvagarestricoes.AsString + ', ';
        next;
      end;
      Close;
      Free;
    end;
  end;
end;

procedure TDmDTA.quVagaAfterInsert(DataSet: TDataSet);
begin
  quVagavag_duracao.AsInteger := 6;
  quvagavag_selecao.asstring := 'N';
  quvagavag_FECHADA.asstring := 'N';
  quvagavag_acao.asstring := 'S';
  quvagavag_permanente.asstring := 'N';

end;

procedure TDmDTA.quVagaCalcFields(DataSet: TDataSet);
begin
//  if quvaga.IsEmpty = false then
  begin
    if quvagavag_cancelada.asstring = '1' then
      quvagapendentes.AsInteger := 0
    else
      if quvagavag_qtdecancel.Asstring <> '' then
        quvagapendentes.AsInteger := quvagavag_qtde.AsInteger - (quvagavag_qtdecancel.AsInteger + quvagavag_qtdepreenc.AsInteger)
      else
        quvagapendentes.AsInteger := quvagavag_qtde.AsInteger - (quvagavag_qtdepreenc.AsInteger);

   { if quvagapendentes.AsString = '' then
      quvagapendentes.AsInteger := quvagavag_qtde.AsInteger - (quvagavag_qtdepreenc.AsInteger);}


  end;
  if quvagavag_acao.AsString = 'R' then
    quvagaacao.asstring := 'Falta retorno do Cliente';
  if quvagavag_acao.AsString = 'P' then
    quvagaacao.asstring := 'Em processo seletivo';
  if quvagavag_acao.AsString = 'T' then
    quvagaacao.asstring := 'Falta emiss�o de TCE';
  if quvagavag_acao.AsString = 'F' then
    quvagaacao.asstring := 'Vaga fechada';
  if quvagavag_acao.AsString = 'S' then
    quvagaacao.asstring := 'Sem an�lise';
  if quvagavag_acao.AsString = 'V' then
    quvagaacao.asstring := 'Vaga Permanente';

  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;

    if quvagaarea_cod.Text <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from areaestagio  where area_cod=' + quvagaarea_cod.Text);
      Open;
      if not eof then
        quvagaareaestagio.AsString := FieldByName('area_nome').Text

    end;

    if quvagasel_cod.Text <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from selecao  where sel_cod=' + quvagasel_cod.Text);
      Open;
      if not eof then
        quvagaSelecionador.AsString := FieldByName('sel_nome').Text
    end;


    Close;
    Free;

  end;
end;

procedure TDmDTA.quEntrevistadorVagaCalcFields(DataSet: TDataSet);
var
  anos, meses: integer;
  idade, unidade: string;
begin
  if quentrevistadorVagaFunc_cod.AsString <> '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod=' + quEntrevistadorVagaemp_cod.AsString + ' and Func_cod = ' + quEntrevistadorVagaFunc_cod.AsString);
      Open;
      quEntrevistadorvagaformacao.AsString := FieldByName('efu_formacao').Text;
      quEntrevistadorvagaNome.AsString := FieldByName('efu_nome').Text;
      quEntrevistadorvagaarea.AsString := FieldByName('efu_area').Text;
      quEntrevistadorvagacargo.AsString := FieldByName('efu_cargo').Text;
      quEntrevistadorvagaprofissao.AsString := FieldByName('efu_profissao').Text;
      if FieldByName('efu_dataexperiencia').Text <> '' then
      begin
        RetornaIdade(FieldByName('efu_dataexperiencia').Text, Idade, unidade);
        quentrevistadorvagatempo.AsString := idade + ' ' + unidade;
      end;
      Close;
      Free;
    end;
  end;
end;

procedure TDmDTA.quVagaBeneficioAfterInsert(DataSet: TDataSet);
begin
  DmDta.quVagaBeneficioemp_cod.asinteger := dmdta.quVagaemp_cod.AsInteger;
  DmDta.quVagaBeneficioVag_cod.asinteger := dmdta.quVagaVag_cod.AsInteger;
end;

procedure TDmDTA.quResponsavelInstituicaoCalcFields(DataSet: TDataSet);
begin
  if quResponsavelInstituicaofun_cod.Text <> '' then
  begin
    with Tquery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('select * from instfuncao where fun_cod = ' + quResponsavelInstituicaofun_cod.Text);
      Open;
      if eof = false then
        quResponsavelInstituicaonfuncao.AsString := fieldbyname('fun_nome').AsString;
      close;
      free;
    end;
  end;
end;

procedure TDmDTA.qufuncGrupoCalcFields(DataSet: TDataSet);
begin

  if qufuncgrupoemp_cod2.Text <> '' then
    with Tquery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('select * from empresa where emp_cod = ' + qufuncgrupoemp_cod2.Text);
      Open;
      if eof = false then
        qufuncGrupoFilial.AsString := fieldbyname('emp_nome').AsString;
      close;
      free;
    end;

end;

procedure TDmDTA.quResponsavelCalcFields(DataSet: TDataSet);
begin
  if quResponsavelfun_cod.Text <> '' then
  begin
    with Tquery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('select * from empfuncao where fun_cod = ' + quResponsavelfun_cod.Text);
      Open;
      if eof = false then
        quResponsavelFuncao.AsString := fieldbyname('fun_nome').AsString;
      close;
      free;
    end;
  end;
end;

procedure TDmDTA.quEmpFuncionarioBeforePost(DataSet: TDataSet);
begin
  if quempfuncionario.State in [dsedit] then
    quempfuncionarioefu_dataalteracao.Value := date();

  if quempfuncionarioefu_inativo.AsString = 'S' then
  begin
    if quempfuncionarioefu_datainativacao.AsString = '' then
      quempfuncionarioefu_datainativacao.Value := date();
  end
  else
  begin
    if quempfuncionarioefu_datainativacao.AsString <> '' then
      quempfuncionarioefu_datainativacao.asstring := '';

  end;
end;

procedure TDmDTA.PegaResponsavel(tipo: integer; var empresa,
  Funcionario: integer);
var
  LEmpresa, LFuncionario: integer;
begin
  Lempresa := 0;
  Lfuncionario := 0;
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select top 1 emp_cod,func_cod from empresponsavel where fun_cod = ' + inttostr(tipo) + ' and emp_cod = ' + inttostr(empresa) + ' and  inativo <> ''S'' and  func_cod not in (Select func_cod from empfuncionario where emp_cod = ' + inttostr(empresa) + ' and func_cod = empresponsavel.func_cod and efu_inativo = ''S'') order by  cod_empresponsavel desc ');
    Open;
    if eof = false then
    begin
      LEmpresa := fieldbyname('emp_cod').asinteger;
      LFuncionario := fieldbyname('func_cod').asinteger;
    end
    else
    begin
      close;
      sql.Clear;
      sql.Add('select top 1 emp_cod,func_cod from empresponsavel where fun_cod = ' + inttostr(tipo) + ' and inativo <> ''S''  ');
      sql.add(' and emp_cod in (select emp_cod from empfuncgrupo where emp_cod2 =' + inttostr(empresa) + ' and  empresponsavel.func_cod=func_cod) ');
      open;
      if eof = false then
      begin
        LEmpresa := fieldbyname('emp_cod').asinteger;
        LFuncionario := fieldbyname('func_cod').asinteger;
      end;
    end;
    close;
    free;
  end;
  empresa := Lempresa;
  Funcionario := LFuncionario;
end;

procedure TDmDTA.quEstContVagaCalcFields(DataSet: TDataSet);
begin
  if questcontvagavag_cod.AsString <> '' then
    questcontvagavaga.AsString := DmDta.BuscaCampo('Vaga', 'Vag_setor', 'Vag_cod', questcontvagavag_cod.Asinteger);
  if questcontvagaemp_cod.AsString <> '' then
    questcontvagaempresa.AsString := DmDta.BuscaCampo('Empresa', 'Emp_nome', 'Emp_cod', questcontvagaemp_cod.Asinteger);

end;

procedure TDmDTA.quContatosAfterInsert(DataSet: TDataSet);
begin
  qucontatosfunc_cod.Asstring := usuario;
  qucontatosdat_contato.Value := now();
  qucontatosnumeroligacoes.AsInteger := 1;
end;

procedure TDmDTA.quContatosBeforePost(DataSet: TDataSet);
begin
  if qucontatos.State in [dsEdit] then
  begin
    qucontatosFunc_alterou.Asstring := usuario;
    qucontatosdat_alterou.Value := now();
  end;
end;

procedure TDmDTA.quContatosCalcFields(DataSet: TDataSet);
begin
  if qucontatosfunc_cod.AsString <> '' then
    qucontatosAtendente.AsString := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', qucontatosfunc_cod.Asinteger);
  if questcontvagaemp_cod.AsString <> '' then
    qucontatosAtendenteAlterou.AsString := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', qucontatosfunc_cod.Asinteger);

  case qucontatosstatus.AsInteger of
    1: qucontatossituacao.AsString := 'Ningu�m atende';
    2: qucontatossituacao.AsString := 'Telefone ocupado';
    3: qucontatossituacao.AsString := 'Indispon�vel';
    4: qucontatossituacao.AsString := 'Recado';
    5: qucontatossituacao.AsString := 'N�mero incorreto';
    6: qucontatossituacao.AsString := 'Trabalhando/Efetivo';
    7: qucontatossituacao.AsString := 'Estagiando';
    8: qucontatossituacao.AsString := 'Bolsa-aux�lio insuficiente';
    9: qucontatossituacao.AsString := 'Trancou matr�cula';
    10: qucontatossituacao.AsString := 'Inativo';
    11: qucontatossituacao.AsString := 'Outro';
    12: qucontatossituacao.AsString := 'Agendado';
  end

end;

procedure TDmDTA.quContatosBeforeDelete(DataSet: TDataSet);
begin
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('delete from estcontvaga where cont_cod = ' + qucontatoscont_cod.AsString);
    execsql;
    free;
  end;
end;

procedure TDmDTA.quEmpFuncionarioBeforeDelete(DataSet: TDataSet);
begin
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('delete from empresponsavel where emp_cod = ' + quempFuncionarioemp_cod.AsString + '  and  func_cod = ' + quempFuncionariofunc_cod.AsString);
    execsql;
    close;
    Sql.Clear;
    Sql.Add('delete from empfuncrest where emp_cod = ' + quempFuncionarioemp_cod.AsString + '  and  func_cod = ' + quempFuncionariofunc_cod.AsString);
    execsql;
    close;
    Sql.Clear;
    Sql.Add('delete from empfuncgrupo where emp_cod = ' + quempFuncionarioemp_cod.AsString + '  and  func_cod = ' + quempFuncionariofunc_cod.AsString);
    execsql;
    free;
  end;
end;





procedure TDmDTA.PegaResponsavelEscola(tipo: integer; var Escola,
  FuncionarioEscola: integer);
var
  LEmpresa, LFuncionario: integer;
begin
  Lempresa := 0;
  Lfuncionario := 0;
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select top 1 Inst_cod,func_cod from Instresponsavel where fun_cod = ' + inttostr(tipo) + ' and inst_cod = ' + inttostr(escola) + ' and  inativo <> ''S'' and  func_cod not in (Select func_cod from instfuncionario where inst_cod = ' + inttostr(Escola) + ' and func_cod = Instresponsavel.func_cod and inativo = ''S'')  ');
    Open;
    if eof = false then
    begin
      LEmpresa := fieldbyname('Inst_cod').asinteger;
      LFuncionario := fieldbyname('func_cod').asinteger;
    end;
    close;
    free;
  end;
  Escola := Lempresa;
  FuncionarioEscola := LFuncionario;
end;

procedure TDmDTA.quTceAditivoCalcFields(DataSet: TDataSet);
var
  idade, unidade: string;
begin
  if qutceAditivoFunc_cod.AsString <> '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod= (select emp_cod2 from TceAditivo where tce_cod = ' + quTceAditivoTce_cod.AsString + ' and prg_cod = ' + quTceAditivoprg_cod.AsString + ' ) and Func_cod = ' + qutceAditivoFunc_cod.AsString);
      Open;
      if eof = false then
      begin
        qutceAditivoformacao.AsString := FieldByName('efu_formacao').Text;
        qutceAditivoformacao2.AsString := FieldByName('efu_outraformacao').Text;
        qutceAditivoregistro.AsString := FieldByName('efu_registro').Text;
        qutceAditivoregistro2.AsString := FieldByName('efu_registro2').Text;
        quTceAditivoArea.AsString := FieldByName('efu_area').Text;
        quTceaditivoCargo.AsString := FieldByName('efu_cargo').Text;
        quTceAditivoProfissao.AsString := FieldByName('efu_profissao').Text;
        if FieldByName('efu_dataexperiencia').Text <> '' then
        begin
          RetornaIdade(FieldByName('efu_dataexperiencia').Text, Idade, unidade);
          quTceAditivotempo.AsString := idade + ' ' + unidade;
        end;
      end;
      Close;
      Free;
    end;
  end;
  if (qutceAditivotpr_orientador.AsString <> '') and (qutceAditivoInst_cod.AsString <> '') then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from instFuncionario where func_cod = ' + quTceAditivotpr_orientador.AsString + ' and inst_cod=' + qutceAditivoInst_cod.AsString);
      Open;
      qutceAditivoProfessorOrientador.AsString := '';
      qutceAditivoOrientadorCargo.AsString := '';
      if eof = false then
      begin
        if fieldbyname('ifu_Formacao').asstring <> '' then
          qutceAditivoOrientadorCargo.AsString := fieldbyname('ifu_Formacao').asstring;
        if fieldbyname('ifu_Nome').asstring <> '' then
          qutceAditivoProfessorOrientador.AsString := fieldbyname('ifu_Nome').asstring;
      end;
      Close;
      Free;
    end;
end;

procedure TDmDTA.quTceAlteracaoAfterInsert(DataSet: TDataSet);
begin
  qutcealteracaotal_jornada.AsString := 'N';
  qutcealteracaotal_bolsa.AsString := 'N';
  qutcealteracaotal_prazo.AsString := 'N';
  qutcealteracaotal_Atividades.AsString := 'N';
end;

procedure TDmDTA.quInstFuncionarioCalcFields(DataSet: TDataSet);
begin
  with TQuery.Create(nil) do
  begin

    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    if quinstFuncionarioform_cod.Text <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from formatratamento  where form_cod=' + quInstFuncionarioform_cod.AsString);
      Open;
      if not eof then
        quInstFuncionarioformatratamento.AsString := FieldByName('form_nome').Text
    end;
    close;
    free;
  end;
end;

function TDmDTA.calculatempo(Tce: integer; Data: Tdate): real;
var
  DataMarco, Datainicio, DataFinal: TDate;
  tempo1, dias: integer;
  tempo: real;
begin
  data := data;

  DataMarco := strtodate('25/09/2008');
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    sql.add('Select T.tce_dataini,(select min(tal_dataemi) from tcealteracao where tce_cod = t.tce_cod  and tal_dataemi >= ''25/09/2008'') DTAlteracao, ');
    sql.add('  (select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ) DTAditivo ');
    sql.add('  from  Tce T  where t.tce_cod = ' + inttostr(tce));
    open;

    if (fieldbyname('tce_dataini').Value >= strtodate('25/09/2008')) then
    begin
      datainicio := fieldbyname('tce_dataini').Value;
      tempo := TotalMeses(fieldbyname('tce_dataini').Value, data);
      tempo1 := TotalMeses(fieldbyname('tce_dataini').Value, data);
      datainicio := IncMonth(fieldbyname('tce_dataini').Value, tempo1) - 1;
      dias := DaysBetween(datainicio, data);
    end
    else
      if (not fieldbyname('dtalteracao').IsNull) and (not fieldbyname('DTAditivo').IsNull) then
      begin
        if fieldbyname('dtalteracao').Value <= fieldbyname('DTAditivo').Value then
        begin
          tempo := TotalMeses(fieldbyname('dtalteracao').Value, data);
          tempo1 := TotalMeses(fieldbyname('dtalteracao').Value, data);
          datainicio := IncMonth(fieldbyname('dtalteracao').Value, tempo1) - 1;
          dias := DaysBetween(datainicio, data);
        end
        else
        begin
          tempo := TotalMeses(fieldbyname('dtaditivo').Value, data);
          tempo1 := TotalMeses(fieldbyname('dtaditivo').Value, data);
          datainicio := IncMonth(fieldbyname('dtaditivo').Value, tempo1) - 1;
          dias := DaysBetween(datainicio, data);
        end;
      end
      else
        if (not fieldbyname('dtalteracao').IsNull) then
        begin
          tempo := TotalMeses(fieldbyname('dtalteracao').Value, data);
          tempo1 := TotalMeses(fieldbyname('dtalteracao').Value, data);
          datainicio := IncMonth(fieldbyname('dtalteracao').Value, tempo1) - 1;
          dias := DaysBetween(datainicio, data);
        end
        else
        begin
          tempo := TotalMeses(fieldbyname('dtaditivo').Value, data);
          tempo1 := TotalMeses(fieldbyname('dtaditivo').Value, data);
          datainicio := IncMonth(fieldbyname('dtaditivo').Value, tempo1) - 1;
          dias := DaysBetween(datainicio, data);
        end;

   // if dias > 0 then
   //   tempo := tempo + arredondar((dias / 30), 2);
    if dias >= 15 then
      tempo := tempo + 1;


   { if (fieldbyname('dtalteracao').Value >= strtodate('25/09/2008')) then
    begin
      tempo := MonthsBetween(fieldbyname('dtalteracao').Value, data);
      datainicio := IncMonth(fieldbyname('dtalteracao').Value, tempo);
      dias := DaysBetween(datainicio, fieldbyname('dtalteracao').Value)
    end
    else if (fieldbyname('dtaditivo').Value >= strtodate('25/09/2008')) then
    begin
      tempo := MonthsBetween(fieldbyname('dtaditivo').Value, data);
      datainicio := IncMonth(fieldbyname('dtaditivo').Value, tempo);
      dias := DaysBetween(datainicio, fieldbyname('dtaditivo').Value)
    end;}
    close;
    free;
    calculatempo := tempo;
  end;

end;

procedure TDmDTA.quVagHistoricoCalcFields(DataSet: TDataSet);
begin
  if (quvaghistoricoFunc_cod.AsString <> '') and
    (quvaghistoricoEmp_cod1.AsString <> '') then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.add('select * from EmpFuncionario where emp_cod=' + quvaghistoricoEmp_cod1.AsString + ' and Func_cod = ' + quvaghistoricoFunc_cod.AsString);
      Open;

      quvaghistoricoFunc_Nome.AsString := FieldByName('efu_nome').Text;

      Close;
      Free;
    end;
  end;
end;

procedure TDmDTA.qutceRelatorioCalcFields(DataSet: TDataSet);
begin
//
  qutcerelatoriouseraluno.AsString := '';
  qutcerelatoriousersupervisor.AsString := '';
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;

    if qutcerelatoriouser_aluno.AsString <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from Funcionario where func_cod=' + qutcerelatoriouser_aluno.AsString);
      Open;
      qutcerelatoriouseraluno.AsString := fieldbyname('func_nome').asstring;
      close;
    end;

    if qutcerelatoriouser_supervisor.AsString <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from Funcionario where func_cod=' + qutcerelatoriouser_supervisor.AsString);
      Open;
      qutcerelatoriousersupervisor.AsString := fieldbyname('func_nome').asstring;
      close;
    end;

    Free;
  end;

end;

procedure TDmDTA.quInstFuncionarioBeforeDelete(DataSet: TDataSet);
begin
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('delete from instresponsavel where inst_cod = ' + quinstFuncionarioinst_cod.AsString + '  and  func_cod = ' + quinstFuncionariofunc_cod.AsString);
    execsql;
    close;
    Sql.Clear;
    Sql.Add('delete from instOrientador where inst_cod = ' + quinstFuncionarioinst_cod.AsString + '  and  func_cod = ' + quinstFuncionariofunc_cod.AsString);
    execsql;
    close;
    Sql.Clear;
    Sql.Add('delete from instcoordenador2 where inst_cod = ' + quinstFuncionarioinst_cod.AsString + '  and  func_cod = ' + quinstFuncionariofunc_cod.AsString);
    execsql;
    free;
  end;
end;

procedure TDmDTA.quPendenciasBeforeDelete(DataSet: TDataSet);
begin
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('delete from tcerelpendencias where tce = ' + qutcerelatoriotce_cod.AsString + '  and  ordem = ' + qutcerelatorioordem.AsString);
    execsql;
    close;
    free;
  end;
end;

function TDmDTA.Relatorios(tce: integer): boolean;
var
  entregar, controle, pendencias, entregues, numero: integer;
  STATUS: string;
  qryRel: TQuery;
  
  procedure AddRelatorioPendente;
  var
    sOrdem: String;
  begin
    sOrdem := IntToStr(qryRel.FieldByName('ORDEM').asInteger)+'�';
    if pos(sOrdem, sRelatoriosPendentes) = 0 then
    begin
      if sRelatoriosPendentes = '' then
        sRelatoriosPendentes := sOrdem
      else
        sRelatoriosPendentes := sRelatoriosPendentes + ',' + sOrdem;
    end;    
  end;
begin
  qryRel := TQuery.Create(nil);

  try
    sRelatoriosPendentes := '';

    with qryRel do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + inttostr(tce) + ' and ordem = 1');
      Open;
      pendencias := 0;
      entregues := 0;
      entregar := 0;
      controle := 0;
      if eof = false then
      begin

        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);


          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

      end;
      // 2
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + inttostr(tce) + ' and ordem = 2');
      Open;
      if eof = false then
      begin

        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

      end;
      //  03
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + INTTOSTR(TCE) + ' and ordem = 3');
      Open;
      if eof = false then
      begin

        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        if fieldbyname('sup_data').asstring <> '' then
        begin
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

      end;
      // 04
      SQL.Clear;
      sql.Add('select * from tcerelatorio where tce_cod =' + INTTOSTR(tce) + ' and ordem = 4');
      Open;
      if eof = false then
      begin

        if fieldbyname('prev_data').Value < date() then
          entregar := entregar + 2;
        if fieldbyname('est_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('est_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;

        if fieldbyname('sup_data').asstring <> '' then
        begin
          inc(entregues);
          if fieldbyname('sup_pendente').asstring = 'S' then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
        end
        else
          if fieldbyname('prev_data').Value < date() then
          begin
            inc(pendencias);
            AddRelatorioPendente;
          end;
      end;
      status := '';
      if (entregar > 0) and (pendencias > 0) then
        Status := 'Pendente';
      if (entregar > 0) and (entregues = entregar) and (pendencias = 0) then
        status := 'Em Dia';

      if status = 'Pendente' then
        result := false
      else
      begin
        result := true;
        sRelatoriosPendentes := '';  
      end;
    end;
  finally
    qryRel.Free;
  end;
end;

procedure TDmDTA.quEstudanteBeforePost(DataSet: TDataSet);
begin

  if questudanteest_formado.asstring = 'S' then
    quEstudanteest_cursoSituacao.AsString := 'FORMADO';
  if questudanteest_trancado.asstring = 'S' then
    quEstudanteest_cursoSituacao.AsString := 'TRANCADO';
end;

procedure TDmDTA.quBancoBeforePost(DataSet: TDataSet);
begin
  if quBanco.State in [dsinsert] then
    quBanco.FieldByName('id_Bancos').asinteger := dmdta.NEW_ID('tb_bancos');
end;

procedure TDmDTA.quBancoBeforeDelete(DataSet: TDataSet);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    if qubancoid_bancos.AsString <> '' then
    begin
      Sql.Clear;
      Sql.add('select * from estudante where est_codbanco=' + qubancoid_bancos.AsString);
      Open;
      if eof = false then
      begin
        abort;
        SHOWMESSAGE('Existem Ocorrencias desse Banco na Tabela de Estudantes');
      end;
    end;

  end;
end;

function TDmDTA.PegaEstadoPorExtenso(uf: string): string;
begin
  uf := UpperCase(uf);
  if uf = 'RO' then
    Result := 'Rond�nia'
  else if uf = 'AC' then
    Result := 'Acre'
  else if uf = 'AM' then
    Result := 'Amazonas'
  else if uf = 'RR' then
    Result := 'Roraima'
  else if uf = 'PA' then
    Result := 'Par�'
  else if uf = 'AP' then
    Result := 'Amap�'
  else if uf = 'TO' then
    Result := 'Tocantins'
  else if uf = 'MA' then
    Result := 'Maranh�o'
  else if uf = 'PI' then
    Result := 'Piau�'
  else if uf = 'CE' then
    Result := 'Cear�'
  else if uf = 'RN' then
    Result := 'Rio Grande do Norte'
  else if uf = 'PB' then
    Result := 'Para�ba'
  else if uf = 'PE' then
    Result := 'Pernambuco'
  else if uf = 'AL' then
    Result := 'Alagoas'
  else if uf = 'SE' then
    Result := 'Sergipe'
  else if uf = 'BA' then
    Result := 'Bahia'
  else if uf = 'MG' then
    Result := 'Minas Gerais'
  else if uf = 'ES' then
    Result := 'Esp�rito Santo'
  else if uf = 'RJ' then
    Result := 'Rio de Janeiro'
  else if uf = 'SP' then
    Result := 'S�o Paulo'
  else if uf = 'PR' then
    Result := 'Paran�'
  else if uf = 'SC' then
    Result := 'Santa Catarina'
  else if uf = 'RS' then
    Result := 'Rio Grande do Sul'
  else if uf = 'MS' then
    Result := 'Mato Grosso do Sul'
  else if uf = 'MT' then
    Result := 'Mato Grosso'
  else if uf = 'GO' then
    Result := 'Goi�s'
  else if uf = 'DF' then
    Result := 'Distrito Federal'
  else
    result := uf;
end;

procedure TDmDTA.quTceNewRecord(DataSet: TDataSet);
begin
  quTceINTERVALOREL.asInteger := 3+2; // 6 meses
end;

procedure TDmDTA.quFuncionarioNewRecord(DataSet: TDataSet);
begin
  quFuncionariofunc_mostrarinconsist.asString := 'N';
end;

end.

