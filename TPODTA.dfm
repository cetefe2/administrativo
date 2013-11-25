object DmDTA: TDmDTA
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 308
  Top = 53
  Height = 780
  Width = 1036
  object dsCurso: TDataSource
    DataSet = quCurso
    Left = 64
    Top = 189
  end
  object dsInstituicao: TDataSource
    DataSet = quInstituicao
    Left = 64
    Top = 65533
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = quEmpresa
    Left = 64
    Top = 45
  end
  object quCurso: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from Curso'
      'order by cur_cod')
    UpdateObject = usCurso
    Left = 128
    Top = 189
    object quCursoCur_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.Curso.Cur_cod'
    end
    object quCursoCur_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 49
      FieldName = 'Cur_nome'
      Origin = 'TALENTPOOL.Curso.Cur_nome'
      Size = 150
    end
    object quCursoCur_area: TStringField
      DisplayLabel = #193'rea'
      DisplayWidth = 15
      FieldName = 'Cur_area'
      Origin = 'TALENTPOOL.Curso.Cur_area'
      Visible = False
    end
    object quCursoCur_nivel: TStringField
      FieldName = 'Cur_nivel'
      Origin = 'TALENTPOOL.Curso.Cur_nivel'
      Visible = False
    end
  end
  object usCurso: TUpdateSQL
    ModifySQL.Strings = (
      'update Curso'
      'set'
      '  cur_nome = :cur_nome,'
      '  cur_nivel = :cur_nivel,'
      '  cur_area = :cur_area'
      'where'
      '  cur_cod = :OLD_cur_cod')
    InsertSQL.Strings = (
      'insert into Curso'
      '  (cur_nome, cur_nivel, cur_area)'
      'values'
      '  (:cur_nome, :cur_nivel, :cur_area)')
    DeleteSQL.Strings = (
      'delete from Curso'
      'where'
      '  cur_cod = :OLD_cur_cod')
    Left = 192
    Top = 189
  end
  object db_Principal: TDatabase
    AliasName = 'CETEFE'
    Connected = True
    DatabaseName = 'TalentPool'
    LoginPrompt = False
    Params.Strings = (
      'user name=sa'
      'password=cba857')
    SessionName = 'Default'
    Top = 65534
  end
  object quInstituicao: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomeres' +
        'pcomp,'
      '  IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2,'
      '  IF5.ifu_nome Divulga3'
      ''
      ''
      'from'
      '  Instituicao I, InstFuncionario IF1, InstFuncionario IF2,'
      '  InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5'
      ''
      'where'
      '  I.inst_cod      *= IF1.Inst_cod and'
      '  I.inst_respconv *= IF1.func_cod and'
      '  I.inst_cod      *= IF2.Inst_cod and'
      '  I.inst_respcomp *= IF2.func_cod and'
      '  I.inst_cod      *= IF3.Inst_cod and'
      '  I.inst_respdiv1 *= IF3.func_cod and'
      '  I.inst_cod      *= IF4.Inst_cod and'
      '  I.inst_respdiv2 *= IF4.func_cod and'
      '  I.inst_cod      *= IF5.Inst_cod and'
      '  I.inst_respdiv3 *= IF5.func_cod '
      ''
      'order by'
      '  i.inst_cod')
    UpdateObject = usInstituicao
    Left = 128
    Top = 65533
    object quInstituicaoInst_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.Instituicao.Inst_cod'
    end
    object quInstituicaoInst_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 52
      FieldName = 'Inst_nome'
      Origin = 'TALENTPOOL.Instituicao.Inst_nome'
      Size = 150
    end
    object quInstituicaoInst_endereco: TStringField
      FieldName = 'Inst_endereco'
      Origin = 'TALENTPOOL.Instituicao.Inst_endereco'
      Visible = False
      Size = 100
    end
    object quInstituicaoInst_bairro: TStringField
      FieldName = 'Inst_bairro'
      Origin = 'TALENTPOOL.Instituicao.Inst_bairro'
      Visible = False
      Size = 50
    end
    object quInstituicaoInst_cidade: TStringField
      FieldName = 'Inst_cidade'
      Origin = 'TALENTPOOL.Instituicao.Inst_cidade'
      Visible = False
      Size = 50
    end
    object quInstituicaoInst_estado: TStringField
      FieldName = 'Inst_estado'
      Origin = 'TALENTPOOL.Instituicao.Inst_estado'
      Visible = False
      Size = 2
    end
    object quInstituicaoInst_cep: TStringField
      FieldName = 'Inst_cep'
      Origin = 'TALENTPOOL.Instituicao.Inst_cep'
      Visible = False
      EditMask = '99.999-999;0; '
      Size = 8
    end
    object quInstituicaoInst_telefone: TStringField
      FieldName = 'Inst_telefone'
      Origin = 'TALENTPOOL.Instituicao.Inst_telefone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quInstituicaoInst_fax: TStringField
      FieldName = 'Inst_fax'
      Origin = 'TALENTPOOL.Instituicao.Inst_fax'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quInstituicaoInst_cnpj: TStringField
      FieldName = 'Inst_cnpj'
      Origin = 'TALENTPOOL.Instituicao.Inst_cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
    object quInstituicaoInst_inscest: TStringField
      FieldName = 'Inst_inscest'
      Origin = 'TALENTPOOL.Instituicao.Inst_inscest'
      Visible = False
    end
    object quInstituicaoInst_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'Inst_tipo'
      Origin = 'TALENTPOOL.Instituicao.Inst_tipo'
      Size = 12
    end
    object quInstituicaoInst_nivel: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'Inst_nivel'
      Origin = 'TALENTPOOL.Instituicao.Inst_nivel'
    end
    object quInstituicaoInst_caixapostal: TStringField
      FieldName = 'Inst_caixapostal'
      Origin = 'TALENTPOOL.Instituicao.Inst_caixapostal'
      Visible = False
      Size = 5
    end
    object quInstituicaoInst_respconv: TIntegerField
      FieldName = 'Inst_respconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_respconv'
      Visible = False
    end
    object quInstituicaoInst_respcomp: TIntegerField
      FieldName = 'Inst_respcomp'
      Origin = 'TALENTPOOL.Instituicao.Inst_respcomp'
      Visible = False
    end
    object quInstituicaoInst_dtinc: TDateTimeField
      FieldName = 'Inst_dtinc'
      Origin = 'TALENTPOOL.Instituicao.Inst_dtinc'
      Visible = False
    end
    object quInstituicaoInst_iniconv: TDateTimeField
      FieldName = 'Inst_iniconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_iniconv'
      Visible = False
    end
    object quInstituicaoInst_fimconv: TDateTimeField
      FieldName = 'Inst_fimconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_fimconv'
      Visible = False
    end
    object quInstituicaoinst_nomerespconv: TStringField
      FieldName = 'inst_nomerespconv'
      Origin = 'TALENTPOOL.Instituicao.inst_nomerespconv'
      Visible = False
      Size = 50
    end
    object quInstituicaoinst_nomerespcomp: TStringField
      FieldName = 'inst_nomerespcomp'
      Origin = 'TALENTPOOL.Instituicao.inst_nomerespcomp'
      Visible = False
      Size = 50
    end
    object quInstituicaoinst_numend: TStringField
      FieldName = 'inst_numend'
      Origin = 'TALENTPOOL.Instituicao.inst_numend'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quInstituicaoinst_dtretorno: TDateTimeField
      FieldName = 'inst_dtretorno'
      Origin = 'TALENTPOOL.Instituicao.inst_dtretorno'
      Visible = False
    end
    object quInstituicaoInst_site: TStringField
      FieldName = 'Inst_site'
      Origin = 'TALENTPOOL.Instituicao.Inst_site'
      Visible = False
      Size = 100
    end
    object quInstituicaoinst_sala: TStringField
      FieldName = 'inst_sala'
      Origin = 'TALENTPOOL.Instituicao.Inst_cod'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quInstituicaoinst_Prazo1: TStringField
      DisplayLabel = 'Prazo Decl. Matric.'
      FieldName = 'inst_Prazo1'
      Visible = False
      Size = 15
    end
    object quInstituicaoinst_Prazo2: TStringField
      DisplayLabel = 'Prazo TCE.'
      FieldName = 'inst_Prazo2'
      Visible = False
      Size = 15
    end
    object quInstituicaoInst_respDiv1: TIntegerField
      FieldName = 'Inst_respDiv1'
      Visible = False
    end
    object quInstituicaoInst_respDiv2: TIntegerField
      FieldName = 'Inst_respDiv2'
      Visible = False
    end
    object quInstituicaoInst_Respdiv3: TIntegerField
      FieldName = 'Inst_Respdiv3'
      Visible = False
    end
    object quInstituicaoInst_RespDivMail1: TStringField
      FieldName = 'Inst_RespDivMail1'
      Visible = False
      Size = 60
    end
    object quInstituicaoInst_RespDivMail2: TStringField
      FieldName = 'Inst_RespDivMail2'
      Visible = False
      Size = 60
    end
    object quInstituicaoInst_RespDivMail3: TStringField
      FieldName = 'Inst_RespDivMail3'
      Visible = False
      Size = 60
    end
    object quInstituicaoDivulga1: TStringField
      FieldName = 'Divulga1'
      Visible = False
      Size = 50
    end
    object quInstituicaoDivulga2: TStringField
      FieldName = 'Divulga2'
      Visible = False
      Size = 50
    end
    object quInstituicaoDivulga3: TStringField
      FieldName = 'Divulga3'
      Visible = False
      Size = 50
    end
    object quInstituicaoInst_nomeFantasia: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'Inst_nomeFantasia'
      Visible = False
      Size = 150
    end
    object quInstituicaoINST_OBSERVACAO: TMemoField
      FieldName = 'INST_OBSERVACAO'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quInstituicaoInst_TceProcedimento: TMemoField
      FieldName = 'Inst_TceProcedimento'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
  end
  object usInstituicao: TUpdateSQL
    ModifySQL.Strings = (
      'update Instituicao'
      'set'
      '  Inst_dtinc = :Inst_dtinc,'
      '  inst_dtretorno = :inst_dtretorno,'
      '  Inst_nome = :Inst_nome,'
      '  Inst_nomeFantasia = :Inst_nomeFantasia,'
      '  Inst_endereco = :Inst_endereco,'
      '  Inst_bairro = :Inst_bairro,'
      '  Inst_cidade = :Inst_cidade,'
      '  Inst_estado = :Inst_estado,'
      '  Inst_cep = :Inst_cep,'
      '  Inst_caixapostal = :Inst_caixapostal,'
      '  Inst_telefone = :Inst_telefone,'
      '  Inst_fax = :Inst_fax,'
      '  Inst_site = :Inst_site,'
      '  Inst_cnpj = :Inst_cnpj,'
      '  Inst_inscest = :Inst_inscest,'
      '  Inst_tipo = :Inst_tipo,'
      '  Inst_nivel = :Inst_nivel,'
      '  Inst_iniconv = :Inst_iniconv,'
      '  Inst_fimconv = :Inst_fimconv,'
      '  inst_numend = :inst_numend,'
      '  inst_sala = :inst_sala,'
      '  inst_prazo1 = :inst_prazo1,'
      '  inst_prazo2 = :inst_prazo2,'
      '  Inst_RespDiv1 = :Inst_RespDiv1,'
      '  Inst_RespDiv2 = :Inst_RespDiv2,'
      '  Inst_RespDiv3 = :Inst_RespDiv3,'
      '  Inst_RespDivMail1 = :Inst_RespDivMail1,'
      '  Inst_RespDivMail2 = :Inst_RespDivMail2,'
      '  Inst_RespDivMail3 = :Inst_RespDivMail3,'
      '  INST_OBSERVACAO = :INST_OBSERVACAO,'
      '  Inst_TceProcedimento = :Inst_TceProcedimento'
      'where'
      '  Inst_cod = :OLD_Inst_cod')
    InsertSQL.Strings = (
      'insert into Instituicao'
      
        '  (Inst_dtinc, inst_dtretorno, Inst_nome, Inst_nomeFantasia, Ins' +
        't_endereco, '
      
        '   Inst_bairro, Inst_cidade, Inst_estado, Inst_cep, Inst_caixapo' +
        'stal, Inst_telefone, '
      
        '   Inst_fax, Inst_site, Inst_cnpj, Inst_inscest, Inst_tipo, Inst' +
        '_nivel, '
      
        '   Inst_iniconv, Inst_fimconv, inst_numend, inst_sala, inst_praz' +
        'o1, inst_prazo2, '
      
        '   Inst_RespDiv1, Inst_RespDiv2, Inst_RespDiv3, Inst_RespDivMail' +
        '1, Inst_RespDivMail2, '
      '   Inst_RespDivMail3, INST_OBSERVACAO, Inst_TceProcedimento)'
      'values'
      
        '  (:Inst_dtinc, :inst_dtretorno, :Inst_nome, :Inst_nomeFantasia,' +
        ' :Inst_endereco, '
      
        '   :Inst_bairro, :Inst_cidade, :Inst_estado, :Inst_cep, :Inst_ca' +
        'ixapostal, '
      
        '   :Inst_telefone, :Inst_fax, :Inst_site, :Inst_cnpj, :Inst_insc' +
        'est, :Inst_tipo, '
      
        '   :Inst_nivel, :Inst_iniconv, :Inst_fimconv, :inst_numend, :ins' +
        't_sala, '
      
        '   :inst_prazo1, :inst_prazo2, :Inst_RespDiv1, :Inst_RespDiv2, :' +
        'Inst_RespDiv3, '
      
        '   :Inst_RespDivMail1, :Inst_RespDivMail2, :Inst_RespDivMail3, :' +
        'INST_OBSERVACAO, '
      '   :Inst_TceProcedimento)')
    DeleteSQL.Strings = (
      'delete from Instituicao'
      'where'
      '  Inst_cod = :OLD_Inst_cod')
    Left = 192
    Top = 65533
  end
  object quEmpresa: TQuery
    CachedUpdates = True
    AfterInsert = quEmpresaAfterInsert
    OnCalcFields = quEmpresaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespc' +
        'omp,'
      '  ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin,'
      '  f.func_nome '
      'from'
      '  Empresa e, EmpFuncionario ef1, EmpFuncionario ef2,'
      '  EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F'
      'where'
      '  e.emp_cod       *= ef1.emp_cod  and'
      '  e.emp_respcont  *= ef1.func_cod and'
      '  e.emp_cod       *= ef2.emp_cod  and'
      '  e.emp_respcomp  *= ef2.func_cod and'
      '  e.emp_cod       *= ef3.emp_cod  and'
      '  e.emp_respent   *= ef3.func_cod and'
      '  e.emp_cod       *= ef4.emp_cod  and'
      '  e.emp_respfin   *= ef4.func_cod and'
      '  e.emp_funccont  *= f.func_cod'
      'order by'
      '  e.emp_cod'
      '')
    UpdateObject = usEmpresa
    Left = 128
    Top = 45
    object quEmpresaEmp_cod: TIntegerField
      DisplayLabel = 'Empresa'
      DisplayWidth = 7
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.Empresa.Emp_cod'
    end
    object quEmpresaEmp_nome: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 50
      FieldName = 'Emp_nome'
      Origin = 'TALENTPOOL.Empresa.Emp_nome'
      Size = 150
    end
    object quEmpresaEmp_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Emp_endereco'
      Origin = 'TALENTPOOL.Empresa.Emp_endereco'
      Visible = False
      Size = 100
    end
    object quEmpresaEmp_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Emp_bairro'
      Origin = 'TALENTPOOL.Empresa.Emp_bairro'
      Visible = False
      Size = 50
    end
    object quEmpresaEmp_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Emp_cidade'
      Origin = 'TALENTPOOL.Empresa.Emp_cidade'
      Visible = False
      Size = 50
    end
    object quEmpresaEmp_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'Emp_estado'
      Origin = 'TALENTPOOL.Empresa.Emp_estado'
      Visible = False
      Size = 2
    end
    object quEmpresaEmp_cep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 9
      FieldName = 'Emp_cep'
      Origin = 'TALENTPOOL.Empresa.Emp_cep'
      Visible = False
      EditMask = '99999-999;0; '
      Size = 9
    end
    object quEmpresaEmp_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Emp_telefone'
      Origin = 'TALENTPOOL.Empresa.Emp_telefone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaEmp_fax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'Emp_fax'
      Origin = 'TALENTPOOL.Empresa.Emp_fax'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaEmp_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'Emp_cnpj'
      Origin = 'TALENTPOOL.Empresa.Emp_cnpj'
      Visible = False
      Size = 18
    end
    object quEmpresaEmp_inscest: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'Emp_inscest'
      Origin = 'TALENTPOOL.Empresa.Emp_inscest'
      Visible = False
    end
    object quEmpresaEmp_ramo: TStringField
      DisplayLabel = 'Ramo'
      DisplayWidth = 12
      FieldName = 'Emp_ramo'
      Origin = 'TALENTPOOL.Empresa.Emp_ramo'
      Visible = False
      Size = 12
    end
    object quEmpresaEmp_porte: TStringField
      DisplayLabel = 'Porte'
      DisplayWidth = 10
      FieldName = 'Emp_porte'
      Origin = 'TALENTPOOL.Empresa.Emp_porte'
      Visible = False
      Size = 10
    end
    object quEmpresaEmp_caixapostal: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'Emp_caixapostal'
      Origin = 'TALENTPOOL.Empresa.Emp_caixapostal'
      Visible = False
      Size = 5
    end
    object quEmpresaEmp_respcont: TIntegerField
      DisplayLabel = 'Resp. Contrato'
      FieldName = 'Emp_respcont'
      Origin = 'TALENTPOOL.Empresa.Emp_respcont'
      Visible = False
    end
    object quEmpresaEmp_respcomp: TIntegerField
      DisplayLabel = 'Resp. Contrato'
      FieldName = 'Emp_respcomp'
      Origin = 'TALENTPOOL.Empresa.Emp_respcomp'
      Visible = False
    end
    object quEmpresaEmp_respent: TIntegerField
      DisplayLabel = 'Resp. Entrevista'
      FieldName = 'Emp_respent'
      Origin = 'TALENTPOOL.Empresa.Emp_respent'
      Visible = False
    end
    object quEmpresaEmp_respfin: TIntegerField
      DisplayLabel = 'Resp. Financeiro'
      FieldName = 'Emp_respfin'
      Origin = 'TALENTPOOL.Empresa.Emp_respfin'
      Visible = False
    end
    object quEmpresaEmp_dtinc: TDateTimeField
      DisplayLabel = 'Dt. Inclus'#227'o'
      FieldName = 'Emp_dtinc'
      Origin = 'TALENTPOOL.Empresa.Emp_dtinc'
      Visible = False
    end
    object quEmpresaEmp_iniconv: TDateTimeField
      DisplayLabel = 'In'#237'cio Conv'#234'nio'
      FieldName = 'Emp_iniconv'
      Origin = 'TALENTPOOL.Empresa.Emp_iniconv'
      Visible = False
    end
    object quEmpresaEmp_fimconv: TDateTimeField
      DisplayLabel = 'Fim Conv'#234'nio'
      FieldName = 'Emp_fimconv'
      Origin = 'TALENTPOOL.Empresa.Emp_fimconv'
      Visible = False
    end
    object quEmpresaemp_nomerespcont: TStringField
      DisplayLabel = 'Nome Resp. Contrato'
      FieldName = 'emp_nomerespcont'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespcont'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_nomerespcomp: TStringField
      DisplayLabel = 'Nome Resp. Compromisso'
      FieldName = 'emp_nomerespcomp'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespcomp'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_nomerespent: TStringField
      DisplayLabel = 'Nome Resp. Entrevista'
      FieldName = 'emp_nomerespent'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespent'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_nomerespfin: TStringField
      DisplayLabel = 'Nome Resp. Financeiro'
      FieldName = 'emp_nomerespfin'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespfin'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'emp_tipo'
      Origin = 'TALENTPOOL.Empresa.emp_tipo'
      Visible = False
      Size = 10
    end
    object quEmpresaemp_formapgto: TStringField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'emp_formapgto'
      Origin = 'TALENTPOOL.Empresa.emp_formapgto'
      Visible = False
      Size = 10
    end
    object quEmpresaemp_observacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'emp_observacao'
      Origin = 'TALENTPOOL.Empresa.emp_observacao'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_bolsa: TStringField
      DisplayLabel = 'Bolsa'
      FieldName = 'emp_bolsa'
      Origin = 'TALENTPOOL.Empresa.emp_bolsa'
      Visible = False
      Size = 30
    end
    object quEmpresaemp_tipotaxa: TStringField
      FieldName = 'emp_tipotaxa'
      Origin = 'TALENTPOOL.Empresa.emp_tipotaxa'
      Visible = False
      Size = 1
    end
    object quEmpresaemp_valortaxa: TFloatField
      DisplayLabel = 'Valor Taxa'
      FieldName = 'emp_valortaxa'
      Origin = 'TALENTPOOL.Empresa.emp_valortaxa'
      Visible = False
    end
    object quEmpresaemp_site: TStringField
      DisplayLabel = 'Site'
      FieldName = 'emp_site'
      Origin = 'TALENTPOOL.Empresa.emp_site'
      Visible = False
      Size = 100
    end
    object quEmpresaemp_filiais: TIntegerField
      DisplayLabel = 'Filiais'
      FieldName = 'emp_filiais'
      Origin = 'TALENTPOOL.Empresa.emp_filiais'
      Visible = False
    end
    object quEmpresaemp_atuacao: TIntegerField
      DisplayLabel = 'Atua'#231#227'o'
      FieldName = 'emp_atuacao'
      Origin = 'TALENTPOOL.Empresa.emp_atuacao'
      Visible = False
    end
    object quEmpresaemp_segmento: TStringField
      DisplayLabel = 'Segmento'
      FieldName = 'emp_segmento'
      Origin = 'TALENTPOOL.Empresa.emp_segmento'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_func: TIntegerField
      DisplayLabel = 'Funcion'#225'rios'
      FieldName = 'emp_func'
      Origin = 'TALENTPOOL.Empresa.emp_func'
      Visible = False
    end
    object quEmpresaemp_estag: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      FieldName = 'emp_estag'
      Origin = 'TALENTPOOL.Empresa.emp_estag'
      Visible = False
    end
    object quEmpresaemp_missao: TStringField
      DisplayLabel = 'Miss'#227'o'
      FieldName = 'emp_missao'
      Origin = 'TALENTPOOL.Empresa.emp_missao'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_visao: TStringField
      DisplayLabel = 'Vis'#227'o'
      FieldName = 'emp_visao'
      Origin = 'TALENTPOOL.Empresa.emp_visao'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_valores: TStringField
      DisplayLabel = 'Valores'
      FieldName = 'emp_valores'
      Origin = 'TALENTPOOL.Empresa.emp_valores'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_obsperfil: TStringField
      DisplayLabel = 'Obs. Perfil'
      FieldName = 'emp_obsperfil'
      Origin = 'TALENTPOOL.Empresa.emp_obsperfil'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_espera: TStringField
      DisplayLabel = 'Espera'
      FieldName = 'emp_espera'
      Origin = 'TALENTPOOL.Empresa.emp_espera'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_perspec: TStringField
      DisplayLabel = 'Perspectiva'
      FieldName = 'emp_perspec'
      Origin = 'TALENTPOOL.Empresa.emp_perspec'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_treina: TStringField
      DisplayLabel = 'Treinamento'
      FieldName = 'emp_treina'
      Origin = 'TALENTPOOL.Empresa.emp_treina'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_contratacao: TStringField
      DisplayLabel = 'Contrata'#231#227'o'
      FieldName = 'emp_contratacao'
      Origin = 'TALENTPOOL.Empresa.emp_contratacao'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_incontratacao: TStringField
      FieldName = 'emp_incontratacao'
      Origin = 'TALENTPOOL.Empresa.emp_incontratacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_atendcetefe: TStringField
      DisplayLabel = 'Atend. CETEFE'
      FieldName = 'emp_atendcetefe'
      Origin = 'TALENTPOOL.Empresa.emp_atendcetefe'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_inatendcetefe: TStringField
      FieldName = 'emp_inatendcetefe'
      Origin = 'TALENTPOOL.Empresa.emp_inatendcetefe'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_prevcontrat: TStringField
      FieldName = 'emp_prevcontrat'
      Origin = 'TALENTPOOL.Empresa.emp_prevcontrat'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_respcontato: TStringField
      FieldName = 'emp_respcontato'
      Origin = 'TALENTPOOL.Empresa.emp_respcontato'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_contato: TStringField
      FieldName = 'emp_contato'
      Origin = 'TALENTPOOL.Empresa.emp_contato'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_datacontato: TDateTimeField
      FieldName = 'emp_datacontato'
      Origin = 'TALENTPOOL.Empresa.emp_datacontato'
      Visible = False
    end
    object quEmpresaemp_setorcontato: TStringField
      FieldName = 'emp_setorcontato'
      Origin = 'TALENTPOOL.Empresa.emp_setorcontato'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_rapidez: TStringField
      FieldName = 'emp_rapidez'
      Origin = 'TALENTPOOL.Empresa.emp_rapidez'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_inrapidez: TStringField
      FieldName = 'emp_inrapidez'
      Origin = 'TALENTPOOL.Empresa.emp_inrapidez'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_qualidade: TStringField
      FieldName = 'emp_qualidade'
      Origin = 'TALENTPOOL.Empresa.emp_qualidade'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_inqualidade: TStringField
      FieldName = 'emp_inqualidade'
      Origin = 'TALENTPOOL.Empresa.emp_inqualidade'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_atendimento: TStringField
      FieldName = 'emp_atendimento'
      Origin = 'TALENTPOOL.Empresa.emp_atendimento'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_inatendimento: TStringField
      FieldName = 'emp_inatendimento'
      Origin = 'TALENTPOOL.Empresa.emp_inatendimento'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_pagamento: TStringField
      FieldName = 'emp_pagamento'
      Origin = 'TALENTPOOL.Empresa.emp_pagamento'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_inpagamento: TStringField
      FieldName = 'emp_inpagamento'
      Origin = 'TALENTPOOL.Empresa.emp_inpagamento'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_duvidas: TStringField
      FieldName = 'emp_duvidas'
      Origin = 'TALENTPOOL.Empresa.emp_duvidas'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_induvidas: TStringField
      FieldName = 'emp_induvidas'
      Origin = 'TALENTPOOL.Empresa.emp_induvidas'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_ciee: TStringField
      FieldName = 'emp_ciee'
      Origin = 'TALENTPOOL.Empresa.emp_ciee'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_iel: TStringField
      FieldName = 'emp_iel'
      Origin = 'TALENTPOOL.Empresa.emp_iel'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_interage: TStringField
      FieldName = 'emp_interage'
      Origin = 'TALENTPOOL.Empresa.emp_interage'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_educare: TStringField
      FieldName = 'emp_educare'
      Origin = 'TALENTPOOL.Empresa.emp_educare'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaemp_outrasint: TStringField
      FieldName = 'emp_outrasint'
      Origin = 'TALENTPOOL.Empresa.emp_outrasint'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_sugestoes: TStringField
      FieldName = 'emp_sugestoes'
      Origin = 'TALENTPOOL.Empresa.emp_sugestoes'
      Visible = False
      Size = 250
    end
    object quEmpresaemp_enderecoenc: TStringField
      FieldName = 'emp_enderecoenc'
      Origin = 'TALENTPOOL.Empresa.emp_enderecoenc'
      Visible = False
      Size = 100
    end
    object quEmpresaemp_bairroenc: TStringField
      FieldName = 'emp_bairroenc'
      Origin = 'TALENTPOOL.Empresa.emp_bairroenc'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_cidadeenc: TStringField
      FieldName = 'emp_cidadeenc'
      Origin = 'TALENTPOOL.Empresa.emp_cidadeenc'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_telefoneenc: TStringField
      FieldName = 'emp_telefoneenc'
      Origin = 'TALENTPOOL.Empresa.emp_telefoneenc'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaemp_numend: TStringField
      FieldName = 'emp_numend'
      Origin = 'TALENTPOOL.Empresa.emp_numend'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_cjto: TStringField
      FieldName = 'emp_cjto'
      Origin = 'TALENTPOOL.Empresa.emp_cjto'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_numendenc: TStringField
      FieldName = 'emp_numendenc'
      Origin = 'TALENTPOOL.Empresa.emp_numendenc'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_cjtoendenc: TStringField
      FieldName = 'emp_cjtoendenc'
      Origin = 'TALENTPOOL.Empresa.emp_cjtoendenc'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_estadoenc: TStringField
      FieldName = 'emp_estadoenc'
      Origin = 'TALENTPOOL.Empresa.emp_estadoenc'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object quEmpresaemp_enderecocor: TStringField
      FieldName = 'emp_enderecocor'
      Origin = 'TALENTPOOL.Empresa.emp_enderecocor'
      Visible = False
      Size = 100
    end
    object quEmpresaemp_bairrocor: TStringField
      FieldName = 'emp_bairrocor'
      Origin = 'TALENTPOOL.Empresa.emp_bairrocor'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_cidadecor: TStringField
      FieldName = 'emp_cidadecor'
      Origin = 'TALENTPOOL.Empresa.emp_cidadecor'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_estadocor: TStringField
      FieldName = 'emp_estadocor'
      Origin = 'TALENTPOOL.Empresa.emp_estadocor'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object quEmpresaemp_telefonecor: TStringField
      FieldName = 'emp_telefonecor'
      Origin = 'TALENTPOOL.Empresa.emp_telefonecor'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaemp_numendcor: TStringField
      FieldName = 'emp_numendcor'
      Origin = 'TALENTPOOL.Empresa.emp_numendcor'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_cjtoendcor: TStringField
      FieldName = 'emp_cjtoendcor'
      Origin = 'TALENTPOOL.Empresa.emp_cjtoendcor'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEmpresaemp_cepenc: TStringField
      FieldName = 'emp_cepenc'
      Origin = 'TALENTPOOL.Empresa.emp_cepenc'
      Visible = False
      EditMask = '99999-999;0; '
      FixedChar = True
      Size = 8
    end
    object quEmpresaemp_cepcor: TStringField
      FieldName = 'emp_cepcor'
      Origin = 'TALENTPOOL.Empresa.emp_cepcor'
      Visible = False
      EditMask = '99999-999;0; '
      FixedChar = True
      Size = 8
    end
    object quEmpresaEmp_indprospect: TStringField
      FieldName = 'Emp_indprospect'
      Origin = 'TALENTPOOL.Empresa.Emp_indprospect'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaEmp_nomefantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 40
      FieldName = 'Emp_nomefantasia'
      Origin = 'TALENTPOOL.Empresa.Emp_nomefantasia'
      Size = 150
    end
    object quEmpresaemp_fornec: TIntegerField
      FieldName = 'emp_fornec'
      Origin = 'TALENTPOOL.Empresa.emp_fornec'
      Visible = False
    end
    object quEmpresaEmp_dtretorno: TDateTimeField
      DisplayLabel = 'Data do Retorno'
      FieldName = 'Emp_dtretorno'
      Origin = 'TALENTPOOL.Empresa.Emp_dtretorno'
      Visible = False
    end
    object quEmpresaemp_dtenvio: TDateTimeField
      FieldName = 'emp_dtenvio'
      Origin = 'TALENTPOOL.Empresa.emp_dtenvio'
      Visible = False
    end
    object quEmpresaemp_dtpromcad: TDateTimeField
      FieldName = 'emp_dtpromcad'
      Origin = 'TALENTPOOL.Empresa.emp_dtpromcad'
      Visible = False
    end
    object quEmpresaemp_dtpromvaga: TDateTimeField
      FieldName = 'emp_dtpromvaga'
      Origin = 'TALENTPOOL.Empresa.emp_dtpromvaga'
      Visible = False
    end
    object quEmpresaemp_funccont: TIntegerField
      FieldName = 'emp_funccont'
      Origin = 'TALENTPOOL.Empresa.emp_funccont'
      Visible = False
    end
    object quEmpresafunc_nome: TStringField
      FieldName = 'func_nome'
      Origin = 'TALENTPOOL.funcionario.func_nome'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_dtContatoCom: TDateTimeField
      FieldName = 'emp_dtContatoCom'
      Origin = 'TALENTPOOL.Empresa.emp_dtContatoCom'
      Visible = False
    end
    object quEmpresaEmp_periodopgto: TStringField
      FieldName = 'Emp_periodopgto'
      Visible = False
      Size = 15
    end
    object quEmpresaEmp_periodopgtoobs: TStringField
      FieldName = 'Emp_periodopgtoobs'
      Visible = False
      Size = 100
    end
    object quEmpresaEmp_dtInicio: TDateTimeField
      FieldName = 'Emp_dtInicio'
      Visible = False
    end
    object quEmpresaTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Calculated = True
    end
    object quEmpresaEmp_tipoPessoa: TStringField
      FieldName = 'Emp_tipoPessoa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaEmp_Nacionalidade: TStringField
      FieldName = 'Emp_Nacionalidade'
      Visible = False
      Size = 25
    end
    object quEmpresaEmp_EstadoCivil: TStringField
      FieldName = 'Emp_EstadoCivil'
      Visible = False
      Size = 15
    end
    object quEmpresaEmp_Profissao: TStringField
      DisplayWidth = 40
      FieldName = 'Emp_Profissao'
      Visible = False
      Size = 40
    end
    object quEmpresaEmp_Rg: TStringField
      FieldName = 'Emp_Rg'
      Visible = False
      Size = 15
    end
    object quEmpresaEmp_ConselhoClasse: TStringField
      FieldName = 'Emp_ConselhoClasse'
      Visible = False
      Size = 60
    end
    object quEmpresaGrup_Cod: TIntegerField
      FieldName = 'Grup_Cod'
      Visible = False
    end
    object quEmpresaEmp_FoneRes: TStringField
      FieldName = 'Emp_FoneRes'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaEmp_FoneCel: TStringField
      FieldName = 'Emp_FoneCel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 10
    end
    object quEmpresaFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Visible = False
    end
    object quEmpresaFuncGrupo: TIntegerField
      DisplayLabel = 'N'#186' Funcion'#225'rios'
      FieldKind = fkCalculated
      FieldName = 'FuncGrupo'
      Visible = False
      Calculated = True
    end
    object quEmpresaEstGrupo: TIntegerField
      DisplayLabel = 'N'#186' de Estagi'#225'rios'
      FieldKind = fkCalculated
      FieldName = 'EstGrupo'
      Visible = False
      Calculated = True
    end
    object quEmpresaNacgrupo: TStringField
      DisplayLabel = 'Nacionalidade'
      FieldKind = fkCalculated
      FieldName = 'Nacgrupo'
      Visible = False
      Size = 25
      Calculated = True
    end
    object quEmpresaEmp_Ramo1: TStringField
      DisplayLabel = 'Ramo(1):'
      FieldName = 'Emp_Ramo1'
      Visible = False
      Size = 100
    end
    object quEmpresaEmp_Ramo2: TStringField
      DisplayLabel = 'Ramo(2):'
      FieldName = 'Emp_Ramo2'
      Visible = False
      Size = 100
    end
    object quEmpresaEmp_Ramo3: TStringField
      DisplayLabel = 'Ramo(3)'
      FieldName = 'Emp_Ramo3'
      Visible = False
      Size = 100
    end
    object quEmpresaEmp_RamoInic1: TDateTimeField
      DisplayLabel = 'Inicio(1):'
      FieldName = 'Emp_RamoInic1'
      Visible = False
    end
    object quEmpresaEmp_RamoInic2: TDateTimeField
      DisplayLabel = 'Inicio(2):'
      FieldName = 'Emp_RamoInic2'
      Visible = False
    end
    object quEmpresaEmp_RamoInic3: TDateTimeField
      DisplayLabel = 'Inicio(3)'
      FieldName = 'Emp_RamoInic3'
      Visible = False
    end
    object quEmpresaEmp_Email: TStringField
      FieldName = 'Emp_Email'
      Visible = False
      Size = 60
    end
    object quEmpresaTempo1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo1'
      Visible = False
      Calculated = True
    end
    object quEmpresaTempo2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo2'
      Visible = False
      Calculated = True
    end
    object quEmpresaTempo3: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo3'
      Visible = False
      Calculated = True
    end
    object quEmpresaEmp_Estrutura: TMemoField
      FieldName = 'Emp_Estrutura'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEmpresaEmp_ExpecCetefe: TStringField
      FieldName = 'Emp_ExpecCetefe'
      Visible = False
      Size = 250
    end
    object quEmpresaSiteGrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'SiteGrupo'
      Visible = False
      Calculated = True
    end
    object quEmpresaEmp_PeriodoAvaliacao: TStringField
      FieldName = 'Emp_PeriodoAvaliacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaFiliaisGrupo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FiliaisGrupo'
      Visible = False
      Calculated = True
    end
    object quEmpresaFilialInfoGrupo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FilialInfoGrupo'
      Calculated = True
    end
    object quEmpresaEstagiarioInfoGrupo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'EstagiarioInfoGrupo'
      Calculated = True
    end
    object quEmpresaFuncInfoGrupo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FuncInfoGrupo'
      Calculated = True
    end
    object quEmpresaEmp_AuxTransp: TStringField
      FieldName = 'Emp_AuxTransp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpresaEmp_AuxTranspValor: TFloatField
      FieldName = 'Emp_AuxTranspValor'
      Visible = False
      currency = True
    end
    object quEmpresaEmp_AuxTransPTexto: TStringField
      FieldName = 'Emp_AuxTransPTexto'
      Visible = False
      Size = 50
    end
    object quEmpresaemp_dtpgto: TIntegerField
      FieldName = 'emp_dtpgto'
      Visible = False
    end
    object quEmpresaemp_descpgto: TMemoField
      DisplayLabel = 'Desc. Pgto'
      FieldName = 'emp_descpgto'
      BlobType = ftMemo
      Size = 1
    end
  end
  object usEmpresa: TUpdateSQL
    ModifySQL.Strings = (
      'update Empresa'
      'set'
      '  Emp_dtinc = :Emp_dtinc,'
      '  Emp_dtretorno = :Emp_dtretorno,'
      '  Emp_indprospect = :Emp_indprospect,'
      '  Emp_nome = :Emp_nome,'
      '  Emp_nomefantasia = :Emp_nomefantasia,'
      '  Emp_endereco = :Emp_endereco,'
      '  Emp_bairro = :Emp_bairro,'
      '  Emp_cidade = :Emp_cidade,'
      '  Emp_estado = :Emp_estado,'
      '  Emp_cep = :Emp_cep,'
      '  Emp_caixapostal = :Emp_caixapostal,'
      '  Emp_telefone = :Emp_telefone,'
      '  Emp_fax = :Emp_fax,'
      '  Emp_cnpj = :Emp_cnpj,'
      '  Emp_inscest = :Emp_inscest,'
      '  Emp_ramo = :Emp_ramo,'
      '  Emp_porte = :Emp_porte,'
      '  Emp_iniconv = :Emp_iniconv,'
      '  Emp_fimconv = :Emp_fimconv,'
      '  Emp_respcont = :Emp_respcont,'
      '  Emp_respcomp = :Emp_respcomp,'
      '  Emp_respent = :Emp_respent,'
      '  Emp_respfin = :Emp_respfin,'
      '  emp_tipo = :emp_tipo,'
      '  emp_formapgto = :emp_formapgto,'
      '  emp_observacao = :emp_observacao,'
      '  emp_bolsa = :emp_bolsa,'
      '  emp_tipotaxa = :emp_tipotaxa,'
      '  emp_valortaxa = :emp_valortaxa,'
      '  emp_site = :emp_site,'
      '  emp_filiais = :emp_filiais,'
      '  emp_atuacao = :emp_atuacao,'
      '  emp_segmento = :emp_segmento,'
      '  emp_func = :emp_func,'
      '  emp_estag = :emp_estag,'
      '  emp_fornec = :emp_fornec,'
      '  emp_missao = :emp_missao,'
      '  emp_visao = :emp_visao,'
      '  emp_valores = :emp_valores,'
      '  emp_obsperfil = :emp_obsperfil,'
      '  emp_espera = :emp_espera,'
      '  emp_perspec = :emp_perspec,'
      '  emp_treina = :emp_treina,'
      '  emp_dtpgto = :emp_dtpgto,'
      '  emp_descpgto = :emp_descpgto,'
      '  emp_contratacao = :emp_contratacao,'
      '  emp_incontratacao = :emp_incontratacao,'
      '  emp_atendcetefe = :emp_atendcetefe,'
      '  emp_inatendcetefe = :emp_inatendcetefe,'
      '  emp_prevcontrat = :emp_prevcontrat,'
      '  emp_respcontato = :emp_respcontato,'
      '  emp_contato = :emp_contato,'
      '  emp_datacontato = :emp_datacontato,'
      '  emp_setorcontato = :emp_setorcontato,'
      '  emp_rapidez = :emp_rapidez,'
      '  emp_inrapidez = :emp_inrapidez,'
      '  emp_qualidade = :emp_qualidade,'
      '  emp_inqualidade = :emp_inqualidade,'
      '  emp_atendimento = :emp_atendimento,'
      '  emp_inatendimento = :emp_inatendimento,'
      '  emp_pagamento = :emp_pagamento,'
      '  emp_inpagamento = :emp_inpagamento,'
      '  emp_duvidas = :emp_duvidas,'
      '  emp_induvidas = :emp_induvidas,'
      '  emp_ciee = :emp_ciee,'
      '  emp_iel = :emp_iel,'
      '  emp_interage = :emp_interage,'
      '  emp_educare = :emp_educare,'
      '  emp_outrasint = :emp_outrasint,'
      '  emp_sugestoes = :emp_sugestoes,'
      '  emp_enderecoenc = :emp_enderecoenc,'
      '  emp_bairroenc = :emp_bairroenc,'
      '  emp_cidadeenc = :emp_cidadeenc,'
      '  emp_estadoenc = :emp_estadoenc,'
      '  emp_telefoneenc = :emp_telefoneenc,'
      '  emp_numend = :emp_numend,'
      '  emp_cjto = :emp_cjto,'
      '  emp_numendenc = :emp_numendenc,'
      '  emp_cjtoendenc = :emp_cjtoendenc,'
      '  emp_enderecocor = :emp_enderecocor,'
      '  emp_bairrocor = :emp_bairrocor,'
      '  emp_cidadecor = :emp_cidadecor,'
      '  emp_estadocor = :emp_estadocor,'
      '  emp_telefonecor = :emp_telefonecor,'
      '  emp_numendcor = :emp_numendcor,'
      '  emp_cjtoendcor = :emp_cjtoendcor,'
      '  emp_cepenc = :emp_cepenc,'
      '  emp_cepcor = :emp_cepcor,'
      '  emp_dtenvio = :emp_dtenvio,'
      '  emp_dtpromcad = :emp_dtpromcad,'
      '  emp_dtpromvaga = :emp_dtpromvaga,'
      '  emp_funccont = :emp_funccont,'
      '  emp_dtContatoCom = :emp_dtContatoCom,'
      '  Emp_dtInicio = :Emp_dtInicio,'
      '  Emp_periodopgto = :Emp_periodopgto,'
      '  Emp_periodopgtoobs = :Emp_periodopgtoobs,'
      '  Emp_TipoPessoa = :Emp_TipoPessoa,'
      '  Emp_Nacionalidade = :Emp_Nacionalidade,'
      '  Emp_EstadoCivil = :Emp_EstadoCivil,'
      '  Emp_Profissao = :Emp_Profissao,'
      '  Emp_Rg = :Emp_Rg,'
      '  Emp_ConselhoClasse = :Emp_ConselhoClasse,'
      '  Grup_cod = :Grup_cod,'
      '  Emp_FoneRes = :Emp_FoneRes,'
      '  Emp_FoneCel = :Emp_FoneCel,'
      '  Func_Cod = :Func_Cod,'
      '  Emp_Ramo1 = :Emp_Ramo1,'
      '  Emp_Ramo2 = :Emp_Ramo2,'
      '  Emp_Ramo3 = :Emp_Ramo3,'
      '  Emp_RamoInic1 = :Emp_RamoInic1,'
      '  Emp_RamoInic2 = :Emp_RamoInic2,'
      '  Emp_RamoInic3 = :Emp_RamoInic3,'
      '  Emp_Email = :Emp_Email,'
      '  Emp_Estrutura = :Emp_Estrutura,'
      '  Emp_ExpecCetefe = :Emp_ExpecCetefe,'
      '  Emp_PeriodoAvaliacao = :Emp_PeriodoAvaliacao,'
      '  Emp_AuxTransp = :Emp_AuxTransp,'
      '  Emp_AuxTranspValor = :Emp_AuxTranspValor,'
      '  Emp_AuxTransPTexto = :Emp_AuxTransPTexto'
      'where'
      '  Emp_cod = :OLD_Emp_cod')
    InsertSQL.Strings = (
      'insert into Empresa'
      
        '  (Emp_dtinc, Emp_dtretorno, Emp_indprospect, Emp_nome, Emp_nome' +
        'fantasia, '
      
        '   Emp_endereco, Emp_bairro, Emp_cidade, Emp_estado, Emp_cep, Em' +
        'p_caixapostal, '
      
        '   Emp_telefone, Emp_fax, Emp_cnpj, Emp_inscest, Emp_ramo, Emp_p' +
        'orte, Emp_iniconv, '
      
        '   Emp_fimconv, Emp_respcont, Emp_respcomp, Emp_respent, Emp_res' +
        'pfin, emp_tipo, '
      
        '   emp_formapgto, emp_observacao, emp_bolsa, emp_tipotaxa, emp_v' +
        'alortaxa, '
      
        '   emp_site, emp_filiais, emp_atuacao, emp_segmento, emp_func, e' +
        'mp_estag, '
      
        '   emp_fornec, emp_missao, emp_visao, emp_valores, emp_obsperfil' +
        ', emp_espera, '
      
        '   emp_perspec, emp_treina, emp_dtpgto, emp_descpgto, emp_contra' +
        'tacao, '
      
        '   emp_incontratacao, emp_atendcetefe, emp_inatendcetefe, emp_pr' +
        'evcontrat, '
      
        '   emp_respcontato, emp_contato, emp_datacontato, emp_setorconta' +
        'to, emp_rapidez, '
      
        '   emp_inrapidez, emp_qualidade, emp_inqualidade, emp_atendiment' +
        'o, emp_inatendimento, '
      
        '   emp_pagamento, emp_inpagamento, emp_duvidas, emp_induvidas, e' +
        'mp_ciee, '
      
        '   emp_iel, emp_interage, emp_educare, emp_outrasint, emp_sugest' +
        'oes, emp_enderecoenc, '
      
        '   emp_bairroenc, emp_cidadeenc, emp_estadoenc, emp_telefoneenc,' +
        ' emp_numend, '
      
        '   emp_cjto, emp_numendenc, emp_cjtoendenc, emp_enderecocor, emp' +
        '_bairrocor, '
      
        '   emp_cidadecor, emp_estadocor, emp_telefonecor, emp_numendcor,' +
        ' emp_cjtoendcor, '
      
        '   emp_cepenc, emp_cepcor, emp_dtenvio, emp_dtpromcad, emp_dtpro' +
        'mvaga, '
      
        '   emp_funccont, emp_dtContatoCom, Emp_dtInicio, Emp_periodopgto' +
        ', Emp_periodopgtoobs, '
      
        '   Emp_TipoPessoa, Emp_Nacionalidade, Emp_EstadoCivil, Emp_Profi' +
        'ssao, Emp_Rg, '
      
        '   Emp_ConselhoClasse, Grup_cod, Emp_FoneRes, Emp_FoneCel, Func_' +
        'Cod, Emp_Ramo1, '
      
        '   Emp_Ramo2, Emp_Ramo3, Emp_RamoInic1, Emp_RamoInic2, Emp_RamoI' +
        'nic3, Emp_Email, '
      
        '   Emp_Estrutura, Emp_ExpecCetefe, Emp_PeriodoAvaliacao, Emp_Aux' +
        'Transp, '
      '   Emp_AuxTranspValor, Emp_AuxTransPTexto)'
      'values'
      
        '  (:Emp_dtinc, :Emp_dtretorno, :Emp_indprospect, :Emp_nome, :Emp' +
        '_nomefantasia, '
      
        '   :Emp_endereco, :Emp_bairro, :Emp_cidade, :Emp_estado, :Emp_ce' +
        'p, :Emp_caixapostal, '
      
        '   :Emp_telefone, :Emp_fax, :Emp_cnpj, :Emp_inscest, :Emp_ramo, ' +
        ':Emp_porte, '
      
        '   :Emp_iniconv, :Emp_fimconv, :Emp_respcont, :Emp_respcomp, :Em' +
        'p_respent, '
      
        '   :Emp_respfin, :emp_tipo, :emp_formapgto, :emp_observacao, :em' +
        'p_bolsa, '
      
        '   :emp_tipotaxa, :emp_valortaxa, :emp_site, :emp_filiais, :emp_' +
        'atuacao, '
      
        '   :emp_segmento, :emp_func, :emp_estag, :emp_fornec, :emp_missa' +
        'o, :emp_visao, '
      
        '   :emp_valores, :emp_obsperfil, :emp_espera, :emp_perspec, :emp' +
        '_treina, '
      
        '   :emp_dtpgto, :emp_descpgto, :emp_contratacao, :emp_incontrata' +
        'cao, :emp_atendcetefe, '
      
        '   :emp_inatendcetefe, :emp_prevcontrat, :emp_respcontato, :emp_' +
        'contato, '
      
        '   :emp_datacontato, :emp_setorcontato, :emp_rapidez, :emp_inrap' +
        'idez, :emp_qualidade, '
      
        '   :emp_inqualidade, :emp_atendimento, :emp_inatendimento, :emp_' +
        'pagamento, '
      
        '   :emp_inpagamento, :emp_duvidas, :emp_induvidas, :emp_ciee, :e' +
        'mp_iel, '
      
        '   :emp_interage, :emp_educare, :emp_outrasint, :emp_sugestoes, ' +
        ':emp_enderecoenc, '
      
        '   :emp_bairroenc, :emp_cidadeenc, :emp_estadoenc, :emp_telefone' +
        'enc, :emp_numend, '
      
        '   :emp_cjto, :emp_numendenc, :emp_cjtoendenc, :emp_enderecocor,' +
        ' :emp_bairrocor, '
      
        '   :emp_cidadecor, :emp_estadocor, :emp_telefonecor, :emp_numend' +
        'cor, :emp_cjtoendcor, '
      
        '   :emp_cepenc, :emp_cepcor, :emp_dtenvio, :emp_dtpromcad, :emp_' +
        'dtpromvaga, '
      
        '   :emp_funccont, :emp_dtContatoCom, :Emp_dtInicio, :Emp_periodo' +
        'pgto, :Emp_periodopgtoobs, '
      
        '   :Emp_TipoPessoa, :Emp_Nacionalidade, :Emp_EstadoCivil, :Emp_P' +
        'rofissao, '
      
        '   :Emp_Rg, :Emp_ConselhoClasse, :Grup_cod, :Emp_FoneRes, :Emp_F' +
        'oneCel, '
      
        '   :Func_Cod, :Emp_Ramo1, :Emp_Ramo2, :Emp_Ramo3, :Emp_RamoInic1' +
        ', :Emp_RamoInic2, '
      
        '   :Emp_RamoInic3, :Emp_Email, :Emp_Estrutura, :Emp_ExpecCetefe,' +
        ' :Emp_PeriodoAvaliacao, '
      '   :Emp_AuxTransp, :Emp_AuxTranspValor, :Emp_AuxTransPTexto)')
    DeleteSQL.Strings = (
      'delete from Empresa'
      'where'
      '  Emp_cod = :OLD_Emp_cod')
    Left = 192
    Top = 45
  end
  object dsEstudante: TDataSource
    DataSet = quEstudante
    Left = 480
    Top = 472
  end
  object quEstudante: TQuery
    CachedUpdates = True
    AfterInsert = quEstudanteAfterInsert
    BeforePost = quEstudanteBeforePost
    OnCalcFields = quEstudanteCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select e.*, i.inst_nome, C.cur_nome'
      'from estudante e, Instituicao I, Curso C'
      'where e.est_cod = :est_cod'
      'and e.inst_cod *= i.inst_cod'
      'and e.cur_cod *= c.cur_cod'
      ''
      'Order by e.Est_cod')
    UpdateObject = usEstudante
    Left = 544
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quEstudanteDescSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Visible = False
      Size = 15
      Calculated = True
    end
    object quEstudanteEst_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.estudante.Est_cod'
    end
    object quEstudanteEst_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 39
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.estudante.Est_nome'
      Size = 50
    end
    object quEstudanteEst_cpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'Est_cpf'
      Origin = 'TALENTPOOL.estudante.Est_cpf'
      EditMask = '999.999.999-99;0; '
      Size = 11
    end
    object quEstudanteEst_rg: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 14
      FieldName = 'Est_rg'
      Origin = 'TALENTPOOL.estudante.Est_rg'
    end
    object quEstudanteEst_sexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 5
      FieldName = 'Est_sexo'
      Origin = 'TALENTPOOL.estudante.Est_sexo'
      Size = 1
    end
    object quEstudanteEst_endereco: TStringField
      FieldName = 'Est_endereco'
      Origin = 'TALENTPOOL.estudante.Est_endereco'
      Visible = False
      Size = 100
    end
    object quEstudanteEst_bairro: TStringField
      FieldName = 'Est_bairro'
      Origin = 'TALENTPOOL.estudante.Est_bairro'
      Visible = False
      Size = 50
    end
    object quEstudanteEst_cidade: TStringField
      FieldName = 'Est_cidade'
      Origin = 'TALENTPOOL.estudante.Est_cidade'
      Visible = False
      Size = 50
    end
    object quEstudanteEst_cep: TStringField
      FieldName = 'Est_cep'
      Origin = 'TALENTPOOL.estudante.Est_cep'
      Visible = False
      EditMask = '99999-999;0; '
      Size = 8
    end
    object quEstudanteEst_estadocivil: TStringField
      FieldName = 'Est_estadocivil'
      Origin = 'TALENTPOOL.estudante.Est_estadocivil'
      Visible = False
    end
    object quEstudanteEst_religiao: TStringField
      FieldName = 'Est_religiao'
      Origin = 'TALENTPOOL.estudante.Est_religiao'
      Visible = False
    end
    object quEstudanteEst_estado: TStringField
      FieldName = 'Est_estado'
      Origin = 'TALENTPOOL.estudante.Est_estado'
      Visible = False
      Size = 2
    end
    object quEstudanteEst_fone2: TStringField
      FieldName = 'Est_fone2'
      Origin = 'TALENTPOOL.estudante.Est_fone2'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEstudanteEst_recado: TStringField
      FieldName = 'Est_recado'
      Origin = 'TALENTPOOL.estudante.Est_recado'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 30
    end
    object quEstudanteEst_ctpsnum: TStringField
      FieldName = 'Est_ctpsnum'
      Origin = 'TALENTPOOL.estudante.Est_ctpsnum'
      Visible = False
    end
    object quEstudanteEst_ctpsserie: TStringField
      FieldName = 'Est_ctpsserie'
      Origin = 'TALENTPOOL.estudante.Est_ctpsserie'
      Visible = False
      Size = 10
    end
    object quEstudanteEst_fone1: TStringField
      FieldName = 'Est_fone1'
      Origin = 'TALENTPOOL.estudante.Est_fone1'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEstudanteEst_fumante: TStringField
      FieldName = 'Est_fumante'
      Origin = 'TALENTPOOL.estudante.Est_fumante'
      Visible = False
      Size = 1
    end
    object quEstudanteEst_email: TStringField
      FieldName = 'Est_email'
      Origin = 'TALENTPOOL.estudante.Est_email'
      Visible = False
      Size = 50
    end
    object quEstudanteEst_dtinc: TDateTimeField
      FieldName = 'Est_dtinc'
      Origin = 'TALENTPOOL.Estudante.Est_dtinc'
      Visible = False
    end
    object quEstudanteEst_dtnasc: TDateTimeField
      FieldName = 'Est_dtnasc'
      Origin = 'TALENTPOOL.Estudante.Est_dtnasc'
      Visible = False
    end
    object quEstudanteest_situacao: TStringField
      FieldName = 'est_situacao'
      Origin = 'TALENTPOOL.Estudante.est_situacao'
      Visible = False
      Size = 1
    end
    object quEstudanteinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.Estudante.inst_cod'
      Visible = False
    end
    object quEstudantecur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.Estudante.cur_cod'
      Visible = False
    end
    object quEstudantepcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Origin = 'TALENTPOOL.Estudante.pcu_peratual'
      Visible = False
      Size = 1
    end
    object quEstudantepcu_turno: TStringField
      FieldName = 'pcu_turno'
      Origin = 'TALENTPOOL.Estudante.pcu_turno'
      Visible = False
      Size = 1
    end
    object quEstudanteEst_nomerecado: TStringField
      FieldName = 'Est_nomerecado'
      Origin = 'TALENTPOOL.Estudante.Est_nomerecado'
      Visible = False
      Size = 30
    end
    object quEstudanteest_pgtolib: TStringField
      FieldName = 'est_pgtolib'
      Origin = 'TALENTPOOL.Estudante.est_pgtolib'
      Visible = False
      Size = 2
    end
    object quEstudantepcu_vestib: TStringField
      FieldName = 'pcu_vestib'
      Visible = False
      Size = 1
    end
    object quEstudanteest_banco: TStringField
      FieldName = 'est_banco'
      Origin = 'TALENTPOOL.Estudante.est_banco'
      Visible = False
      Size = 30
    end
    object quEstudanteest_agencia: TStringField
      FieldName = 'est_agencia'
      Origin = 'TALENTPOOL.Estudante.est_agencia'
      Visible = False
      Size = 15
    end
    object quEstudanteest_conta: TStringField
      FieldName = 'est_conta'
      Origin = 'TALENTPOOL.Estudante.est_conta'
      Visible = False
      Size = 15
    end
    object quEstudanteest_apresentacao: TStringField
      FieldName = 'est_apresentacao'
      Origin = 'TALENTPOOL.estudante.est_apresentacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_faccomunicacao: TStringField
      FieldName = 'est_faccomunicacao'
      Origin = 'TALENTPOOL.estudante.est_faccomunicacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_vocabulario: TStringField
      FieldName = 'est_vocabulario'
      Origin = 'TALENTPOOL.estudante.est_vocabulario'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_factrabalho: TStringField
      FieldName = 'est_factrabalho'
      Origin = 'TALENTPOOL.estudante.est_factrabalho'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_rotinas: TStringField
      FieldName = 'est_rotinas'
      Origin = 'TALENTPOOL.estudante.est_rotinas'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_filhos: TSmallintField
      FieldName = 'est_filhos'
      Origin = 'TALENTPOOL.estudante.Est_cod'
      Visible = False
    end
    object quEstudanteest_numend: TStringField
      FieldName = 'est_numend'
      Origin = 'TALENTPOOL.estudante.est_numend'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEstudanteest_apto: TStringField
      FieldName = 'est_apto'
      Origin = 'TALENTPOOL.estudante.est_apto'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEstudanteest_bloco: TStringField
      FieldName = 'est_bloco'
      Origin = 'TALENTPOOL.estudante.est_bloco'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quEstudanteest_dtatu: TDateTimeField
      FieldName = 'est_dtatu'
      Origin = 'TALENTPOOL.estudante.est_dtatu'
      Visible = False
    end
    object quEstudanteinst_nome: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.estudante.inst_nome'
      Visible = False
      Size = 150
    end
    object quEstudantecur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.estudante.cur_nome'
      Size = 150
    end
    object quEstudanteest_nacionalidade: TStringField
      FieldName = 'est_nacionalidade'
      Origin = 'TALENTPOOL.estudante.est_nacionalidade'
      Visible = False
      Size = 50
    end
    object quEstudanteest_localnasc: TStringField
      FieldName = 'est_localnasc'
      Origin = 'TALENTPOOL.estudante.est_localnasc'
      Visible = False
      Size = 50
    end
    object quEstudanteest_tipoconta: TStringField
      FieldName = 'est_tipoconta'
      Origin = 'TALENTPOOL.estudante.est_tipoconta'
      Visible = False
      Size = 30
    end
    object quEstudanteest_cnh: TStringField
      FieldName = 'est_cnh'
      Origin = 'TALENTPOOL.estudante.est_cnh'
      Visible = False
      Size = 15
    end
    object quEstudantepcu_anoatual: TSmallintField
      FieldName = 'pcu_anoatual'
      Origin = 'TALENTPOOL.Estudante.pcu_anoatual'
    end
    object quEstudantePeriodo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Periodo'
      Size = 10
      Calculated = True
    end
    object quEstudanteest_perfilpessoal: TMemoField
      FieldName = 'est_perfilpessoal'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_porqueestagio: TStringField
      FieldName = 'est_porqueestagio'
      Visible = False
      Size = 250
    end
    object quEstudanteest_areasexp: TStringField
      FieldName = 'est_areasexp'
      Visible = False
      Size = 250
    end
    object quEstudanteest_sitfamiliar: TMemoField
      FieldName = 'est_sitfamiliar'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_impedimento: TMemoField
      FieldName = 'est_impedimento'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_habilidades: TMemoField
      FieldName = 'est_habilidades'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_caracteristicas: TMemoField
      FieldName = 'est_caracteristicas'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_porquestagioest: TMemoField
      FieldName = 'est_porquestagioest'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEstudanteest_cursoano: TIntegerField
      FieldName = 'est_cursoano'
    end
    object quEstudanteest_cursoSem: TIntegerField
      FieldName = 'est_cursoSem'
    end
    object quEstudanteest_Ativo: TStringField
      FieldName = 'est_Ativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_impedidoSN: TStringField
      FieldName = 'est_impedidoSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_cnhSN: TStringField
      FieldName = 'est_cnhSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteest_tipocnh: TStringField
      FieldName = 'est_tipocnh'
    end
    object quEstudanteest_cursoSituacao: TStringField
      FieldName = 'est_cursoSituacao'
      Visible = False
      Size = 25
    end
    object quEstudanteEst_Formado: TStringField
      FieldName = 'Est_Formado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteEst_trancado: TStringField
      FieldName = 'Est_trancado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEstudanteEst_recrutadora: TIntegerField
      FieldName = 'Est_recrutadora'
      Visible = False
    end
    object quEstudanteDat_perfil: TDateTimeField
      FieldName = 'Dat_perfil'
      Visible = False
    end
    object quEstudanteStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 40
      Calculated = True
    end
    object quEstudanteEst_desempenho: TStringField
      FieldName = 'Est_desempenho'
      Size = 12
    end
    object quEstudanteEst_codbanco: TIntegerField
      FieldName = 'Est_codbanco'
    end
  end
  object usEstudante: TUpdateSQL
    ModifySQL.Strings = (
      'update estudante'
      'set'
      '  Est_dtinc = :Est_dtinc,'
      '  Est_nome = :Est_nome,'
      '  Est_dtnasc = :Est_dtnasc,'
      '  Est_rg = :Est_rg,'
      '  Est_cpf = :Est_cpf,'
      '  Est_sexo = :Est_sexo,'
      '  Est_endereco = :Est_endereco,'
      '  Est_bairro = :Est_bairro,'
      '  Est_cidade = :Est_cidade,'
      '  Est_estado = :Est_estado,'
      '  Est_cep = :Est_cep,'
      '  Est_ctpsnum = :Est_ctpsnum,'
      '  Est_ctpsserie = :Est_ctpsserie,'
      '  Est_email = :Est_email,'
      '  Est_fone1 = :Est_fone1,'
      '  Est_fone2 = :Est_fone2,'
      '  Est_recado = :Est_recado,'
      '  Est_nomerecado = :Est_nomerecado,'
      '  Est_estadocivil = :Est_estadocivil,'
      '  Est_fumante = :Est_fumante,'
      '  Est_religiao = :Est_religiao,'
      '  est_situacao = :est_situacao,'
      '  inst_cod = :inst_cod,'
      '  cur_cod = :cur_cod,'
      '  pcu_vestib = :pcu_vestib,'
      '  pcu_anoatual = :pcu_anoatual,'
      '  pcu_peratual = :pcu_peratual,'
      '  pcu_turno = :pcu_turno,'
      '  est_pgtolib = :est_pgtolib,'
      '  est_banco = :est_banco,'
      '  est_tipoconta = :est_tipoconta,'
      '  est_agencia = :est_agencia,'
      '  est_conta = :est_conta,'
      '  est_perfilpessoal = :est_perfilpessoal,'
      '  est_porqueestagio = :est_porqueestagio,'
      '  est_areasexp = :est_areasexp,'
      '  est_apresentacao = :est_apresentacao,'
      '  est_faccomunicacao = :est_faccomunicacao,'
      '  est_vocabulario = :est_vocabulario,'
      '  est_factrabalho = :est_factrabalho,'
      '  est_rotinas = :est_rotinas,'
      '  est_filhos = :est_filhos,'
      '  est_numend = :est_numend,'
      '  est_apto = :est_apto,'
      '  est_bloco = :est_bloco,'
      '  est_dtatu = :est_dtatu,'
      '  est_sitfamiliar = :est_sitfamiliar,'
      '  est_impedimento = :est_impedimento,'
      '  est_cnh = :est_cnh,'
      '  est_tipocnh = :est_tipocnh,'
      '  est_nacionalidade = :est_nacionalidade,'
      '  est_localnasc = :est_localnasc,'
      '  est_habilidades = :est_habilidades,'
      '  est_caracteristicas = :est_caracteristicas,'
      '  est_porquestagioest = :est_porquestagioest,'
      '  est_cursoAno = :est_cursoAno,'
      '  est_cursosem = :est_cursosem,'
      '  est_Ativo = :est_Ativo,'
      '  est_cnhSN = :est_cnhSN,'
      '  est_impedidoSN = :est_impedidoSN,'
      '  est_cursoSituacao = :est_cursoSituacao,'
      '  est_trancado = :est_trancado,'
      '  est_formado = :est_formado,'
      '  Est_recrutadora = :Est_recrutadora,'
      '  Dat_perfil = :Dat_perfil,'
      '  Est_desempenho = :Est_desempenho,'
      '  Est_codbanco = :Est_codbanco'
      'where'
      '  est_cod = :OLD_est_cod')
    InsertSQL.Strings = (
      'insert into estudante'
      
        '  (Est_dtinc, Est_nome, Est_dtnasc, Est_rg, Est_cpf, Est_sexo, E' +
        'st_endereco, '
      
        '   Est_bairro, Est_cidade, Est_estado, Est_cep, Est_ctpsnum, Est' +
        '_ctpsserie, '
      
        '   Est_email, Est_fone1, Est_fone2, Est_recado, Est_nomerecado, ' +
        'Est_estadocivil, '
      
        '   Est_fumante, Est_religiao, est_situacao, inst_cod, cur_cod, p' +
        'cu_vestib, '
      
        '   pcu_anoatual, pcu_peratual, pcu_turno, est_pgtolib, est_banco' +
        ', est_tipoconta, '
      
        '   est_agencia, est_conta, est_perfilpessoal, est_porqueestagio,' +
        ' est_areasexp, '
      
        '   est_apresentacao, est_faccomunicacao, est_vocabulario, est_fa' +
        'ctrabalho, '
      
        '   est_rotinas, est_filhos, est_numend, est_apto, est_bloco, est' +
        '_dtatu, '
      
        '   est_sitfamiliar, est_impedimento, est_cnh, est_tipocnh, est_n' +
        'acionalidade, '
      
        '   est_localnasc, est_habilidades, est_caracteristicas, est_porq' +
        'uestagioest, '
      
        '   est_cursoAno, est_cursosem, est_Ativo, est_cnhSN, est_impedid' +
        'oSN, est_cursoSituacao, '
      
        '   est_trancado, est_formado, Est_recrutadora, Dat_perfil, Est_d' +
        'esempenho, '
      '   Est_codbanco)'
      'values'
      
        '  (:Est_dtinc, :Est_nome, :Est_dtnasc, :Est_rg, :Est_cpf, :Est_s' +
        'exo, :Est_endereco, '
      
        '   :Est_bairro, :Est_cidade, :Est_estado, :Est_cep, :Est_ctpsnum' +
        ', :Est_ctpsserie, '
      
        '   :Est_email, :Est_fone1, :Est_fone2, :Est_recado, :Est_nomerec' +
        'ado, :Est_estadocivil, '
      
        '   :Est_fumante, :Est_religiao, :est_situacao, :inst_cod, :cur_c' +
        'od, :pcu_vestib, '
      
        '   :pcu_anoatual, :pcu_peratual, :pcu_turno, :est_pgtolib, :est_' +
        'banco, '
      
        '   :est_tipoconta, :est_agencia, :est_conta, :est_perfilpessoal,' +
        ' :est_porqueestagio, '
      
        '   :est_areasexp, :est_apresentacao, :est_faccomunicacao, :est_v' +
        'ocabulario, '
      
        '   :est_factrabalho, :est_rotinas, :est_filhos, :est_numend, :es' +
        't_apto, '
      
        '   :est_bloco, :est_dtatu, :est_sitfamiliar, :est_impedimento, :' +
        'est_cnh, '
      
        '   :est_tipocnh, :est_nacionalidade, :est_localnasc, :est_habili' +
        'dades, '
      
        '   :est_caracteristicas, :est_porquestagioest, :est_cursoAno, :e' +
        'st_cursosem, '
      
        '   :est_Ativo, :est_cnhSN, :est_impedidoSN, :est_cursoSituacao, ' +
        ':est_trancado, '
      
        '   :est_formado, :Est_recrutadora, :Dat_perfil, :Est_desempenho,' +
        ' :Est_codbanco)')
    DeleteSQL.Strings = (
      'delete from estudante'
      'where'
      '  est_cod = :OLD_est_cod')
    Left = 616
    Top = 472
  end
  object dsSoftware: TDataSource
    DataSet = quSoftware
    Left = 64
    Top = 236
  end
  object quSoftware: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from software'
      'order by stw_cod')
    UpdateObject = usSoftware
    Left = 128
    Top = 236
    object quSoftwareStw_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'Stw_cod'
      Origin = 'TALENTPOOL.software.Stw_cod'
    end
    object quSoftwareStw_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 49
      FieldName = 'Stw_nome'
      Origin = 'TALENTPOOL.software.Stw_nome'
      Size = 50
    end
  end
  object usSoftware: TUpdateSQL
    ModifySQL.Strings = (
      'update software'
      'set'
      '  Stw_nome = :Stw_nome'
      'where'
      '  Stw_cod = :OLD_Stw_cod')
    InsertSQL.Strings = (
      'insert into software'
      '  (Stw_nome)'
      'values'
      '  (:Stw_nome)')
    DeleteSQL.Strings = (
      'delete from software'
      'where'
      '  Stw_cod = :OLD_Stw_cod')
    Left = 192
    Top = 236
  end
  object dsIdioma: TDataSource
    DataSet = quIdioma
    Left = 64
    Top = 281
  end
  object quIdioma: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from idioma'
      'order by idi_cod')
    UpdateObject = usIdioma
    Left = 128
    Top = 281
    object quIdiomaIdi_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'Idi_cod'
      Origin = 'TALENTPOOL.idioma.Idi_cod'
    end
    object quIdiomaIdi_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 49
      FieldName = 'Idi_nome'
      Origin = 'TALENTPOOL.idioma.Idi_nome'
      Size = 50
    end
  end
  object usIdioma: TUpdateSQL
    ModifySQL.Strings = (
      'update idioma'
      'set'
      '  Idi_nome = :Idi_nome'
      'where'
      '  Idi_cod = :OLD_Idi_cod')
    InsertSQL.Strings = (
      'insert into idioma'
      '  (Idi_nome)'
      'values'
      '  (:Idi_nome)')
    DeleteSQL.Strings = (
      'delete from idioma'
      'where'
      '  Idi_cod = :OLD_Idi_cod')
    Left = 192
    Top = 281
  end
  object dsInstFuncionario: TDataSource
    DataSet = quInstFuncionario
    Left = 480
    Top = 377
  end
  object usInstFuncionario: TUpdateSQL
    ModifySQL.Strings = (
      'update InstFuncionario'
      'set'
      '  Inst_cod = :Inst_cod,'
      '  Func_cod = :Func_cod,'
      '  Ifu_nome = :Ifu_nome,'
      '  Ifu_fone = :Ifu_fone,'
      '  Ifu_fonecel = :Ifu_fonecel,'
      '  Ifu_email = :Ifu_email,'
      '  Ifu_setor = :Ifu_setor,'
      '  Ifu_cargo = :Ifu_cargo,'
      '  Ifu_observacao = :Ifu_observacao,'
      '  ifu_dia = :ifu_dia,'
      '  ifu_mes = :ifu_mes,'
      '  Ifu_cpf = :Ifu_cpf,'
      '  Ifu_rg = :Ifu_rg,'
      '  ifu_nacionalidade = :ifu_nacionalidade,'
      '  ifu_estcivil = :ifu_estcivil,'
      '  ifu_sexo = :ifu_sexo,'
      '  ifu_Inativo = :ifu_Inativo,'
      '  ifu_registro = :ifu_registro,'
      '  ifu_formacao = :ifu_formacao,'
      '  ifu_formacao2 = :ifu_formacao2,'
      '  ifu_registro2 = :ifu_registro2,'
      '  ifu_profissao = :ifu_profissao,'
      '  ifu_recebeEmail = :ifu_recebeEmail,'
      '  ifu_DataExperiencia = :ifu_DataExperiencia,'
      '  ifu_area = :ifu_area,'
      '  Form_cod = :Form_cod'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Func_cod = :OLD_Func_cod')
    InsertSQL.Strings = (
      'insert into InstFuncionario'
      
        '  (Inst_cod, Func_cod, Ifu_nome, Ifu_fone, Ifu_fonecel, Ifu_emai' +
        'l, Ifu_setor, '
      
        '   Ifu_cargo, Ifu_observacao, ifu_dia, ifu_mes, Ifu_cpf, Ifu_rg,' +
        ' ifu_nacionalidade, '
      
        '   ifu_estcivil, ifu_sexo, ifu_Inativo, ifu_registro, ifu_formac' +
        'ao, ifu_formacao2, '
      
        '   ifu_registro2, ifu_profissao, ifu_recebeEmail, ifu_DataExperi' +
        'encia, '
      '   ifu_area, Form_cod)'
      'values'
      
        '  (:Inst_cod, :Func_cod, :Ifu_nome, :Ifu_fone, :Ifu_fonecel, :If' +
        'u_email, '
      
        '   :Ifu_setor, :Ifu_cargo, :Ifu_observacao, :ifu_dia, :ifu_mes, ' +
        ':Ifu_cpf, '
      
        '   :Ifu_rg, :ifu_nacionalidade, :ifu_estcivil, :ifu_sexo, :ifu_I' +
        'nativo, '
      
        '   :ifu_registro, :ifu_formacao, :ifu_formacao2, :ifu_registro2,' +
        ' :ifu_profissao, '
      '   :ifu_recebeEmail, :ifu_DataExperiencia, :ifu_area, :Form_cod)')
    DeleteSQL.Strings = (
      'delete from InstFuncionario'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Func_cod = :OLD_Func_cod')
    Left = 616
    Top = 377
  end
  object dsEmpFuncionario: TDataSource
    DataSet = quEmpFuncionario
    Left = 272
    Top = 45
  end
  object quEmpFuncionario: TQuery
    CachedUpdates = True
    AfterInsert = quEmpFuncionarioAfterInsert
    BeforePost = quEmpFuncionarioBeforePost
    BeforeDelete = quEmpFuncionarioBeforeDelete
    OnCalcFields = quEmpFuncionarioCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from EmpFuncionario'
      'where emp_cod = :emp_cod'
      'ORDER BY efu_nome')
    UpdateObject = usEmpFuncionario
    Left = 336
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    object quEmpFuncionarioEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.EmpFuncionario.Emp_cod'
      Visible = False
    end
    object quEmpFuncionarioFunc_cod: TIntegerField
      DisplayLabel = 'Func.'
      DisplayWidth = 4
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.EmpFuncionario.Func_cod'
    end
    object quEmpFuncionarioEfu_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'Efu_nome'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_nome'
      Size = 50
    end
    object quEmpFuncionarioEfu_fone: TStringField
      FieldName = 'Efu_fone'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEmpFuncionarioEfu_fonecel: TStringField
      FieldName = 'Efu_fonecel'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_fonecel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEmpFuncionarioEfu_email: TStringField
      FieldName = 'Efu_email'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_email'
      Visible = False
      Size = 80
    end
    object quEmpFuncionarioEfu_setor: TStringField
      FieldName = 'Efu_setor'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_setor'
      Visible = False
      Size = 100
    end
    object quEmpFuncionarioEfu_cargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 60
      FieldName = 'efu_Cargo'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_cargo'
      Size = 100
    end
    object quEmpFuncionarioEfu_observacao: TStringField
      FieldName = 'Efu_observacao'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_observacao'
      Visible = False
      Size = 250
    end
    object quEmpFuncionarioefu_dia: TIntegerField
      FieldName = 'efu_dia'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_dia'
      Visible = False
    end
    object quEmpFuncionarioefu_mes: TIntegerField
      FieldName = 'efu_mes'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_mes'
      Visible = False
    end
    object quEmpFuncionarioefu_cpf: TStringField
      FieldName = 'efu_cpf'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_cpf'
      Visible = False
      EditMask = '999.999.999-99;0; '
      Size = 11
    end
    object quEmpFuncionarioefu_rg: TStringField
      FieldName = 'efu_rg'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_rg'
      Visible = False
    end
    object quEmpFuncionarioefu_nacionalidade: TStringField
      FieldName = 'efu_nacionalidade'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_nacionalidade'
      Visible = False
      Size = 50
    end
    object quEmpFuncionarioefu_estcivil: TStringField
      FieldName = 'efu_estcivil'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_estcivil'
      Visible = False
      Size = 50
    end
    object quEmpFuncionarioefu_profissao: TStringField
      FieldName = 'efu_profissao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_profissao'
      Visible = False
      Size = 50
    end
    object quEmpFuncionarioefu_inativo: TStringField
      DisplayLabel = 'Inativo'
      FieldName = 'efu_inativo'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_inativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEmpFuncionarioEfu_formacao: TStringField
      FieldName = 'Efu_formacao'
      Origin = 'TALENTPOOL.EmpFuncionario.Emp_cod'
      Size = 60
    end
    object quEmpFuncionarioefu_area: TStringField
      FieldName = 'efu_area'
      Origin = 'TALENTPOOL.EmpFuncionario.Emp_cod'
      Size = 60
    end
    object quEmpFuncionarioefu_DataExperiencia: TDateTimeField
      FieldName = 'efu_DataExperiencia'
      Origin = 'TALENTPOOL.EmpFuncionario.Emp_cod'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!90/90/0000;1;_'
    end
    object quEmpFuncionarioTempExperiencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'TempExperiencia'
      Size = 30
      Calculated = True
    end
    object quEmpFuncionarioefu_documentacao: TStringField
      FieldName = 'efu_documentacao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_documentacao'
      FixedChar = True
      Size = 1
    end
    object quEmpFuncionarioefu_recebeemail: TStringField
      FieldName = 'efu_recebeemail'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_recebeemail'
      FixedChar = True
      Size = 1
    end
    object quEmpFuncionarioefu_DataInclusao: TDateTimeField
      FieldName = 'efu_DataInclusao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_DataInclusao'
    end
    object quEmpFuncionarioefu_DataAlteracao: TDateTimeField
      FieldName = 'efu_DataAlteracao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_DataAlteracao'
    end
    object quEmpFuncionarioefu_DataInativacao: TDateTimeField
      FieldName = 'efu_DataInativacao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_DataInativacao'
    end
    object quEmpFuncionarioefu_login: TStringField
      FieldName = 'efu_login'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_login'
      Size = 15
    end
    object quEmpFuncionarioefu_senha: TStringField
      FieldName = 'efu_senha'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_senha'
      Size = 12
    end
    object quEmpFuncionarioefu_trocasenha: TStringField
      FieldName = 'efu_trocasenha'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_trocasenha'
      FixedChar = True
      Size = 1
    end
    object quEmpFuncionariotces: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tces'
      Calculated = True
    end
    object quEmpFuncionarioefu_outraformacao: TStringField
      FieldName = 'efu_outraformacao'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_outraformacao'
      Visible = False
      Size = 100
    end
    object quEmpFuncionarioefu_registro: TStringField
      FieldName = 'efu_registro'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_registro'
      Visible = False
      Size = 30
    end
    object quEmpFuncionarioefu_registro2: TStringField
      FieldName = 'efu_registro2'
      Origin = 'TALENTPOOL.EmpFuncionario.efu_registro2'
      Visible = False
      Size = 30
    end
    object quEmpFuncionarioForm_cod: TIntegerField
      FieldName = 'Form_cod'
      Origin = 'TALENTPOOL.EmpFuncionario.Form_cod'
      Visible = False
    end
    object quEmpFuncionarioFormaTratamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'FormaTratamento'
      Size = 60
      Calculated = True
    end
  end
  object usEmpFuncionario: TUpdateSQL
    ModifySQL.Strings = (
      'update EmpFuncionario'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Func_cod = :Func_cod,'
      '  Efu_nome = :Efu_nome,'
      '  Efu_fone = :Efu_fone,'
      '  Efu_fonecel = :Efu_fonecel,'
      '  Efu_email = :Efu_email,'
      '  Efu_setor = :Efu_setor,'
      '  Efu_cargo = :Efu_cargo,'
      '  Efu_observacao = :Efu_observacao,'
      '  efu_dia = :efu_dia,'
      '  efu_mes = :efu_mes,'
      '  efu_cpf = :efu_cpf,'
      '  efu_rg = :efu_rg,'
      '  efu_nacionalidade = :efu_nacionalidade,'
      '  efu_estcivil = :efu_estcivil,'
      '  efu_profissao = :efu_profissao,'
      '  efu_inativo = :efu_inativo,'
      '  efu_formacao = :efu_formacao,'
      '  efu_documentacao = :efu_documentacao,'
      '  efu_area = :efu_area,'
      '  efu_DataExperiencia = :efu_DataExperiencia,'
      '  efu_recebeemail = :efu_recebeemail,'
      '  efu_DataInclusao = :efu_DataInclusao,'
      '  efu_DataAlteracao = :efu_DataAlteracao,'
      '  efu_DataInativacao = :efu_DataInativacao,'
      '  efu_login = :efu_login,'
      '  efu_senha = :efu_senha,'
      '  efu_trocasenha = :efu_trocasenha,'
      '  efu_outraformacao = :efu_outraformacao,'
      '  efu_registro = :efu_registro,'
      '  efu_registro2 = :efu_registro2,'
      '  Form_cod = :Form_cod'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod')
    InsertSQL.Strings = (
      'insert into EmpFuncionario'
      
        '  (Emp_cod, Func_cod, Efu_nome, Efu_fone, Efu_fonecel, Efu_email' +
        ', Efu_setor, '
      
        '   Efu_cargo, Efu_observacao, efu_dia, efu_mes, efu_cpf, efu_rg,' +
        ' efu_nacionalidade, '
      
        '   efu_estcivil, efu_profissao, efu_inativo, efu_formacao, efu_d' +
        'ocumentacao, '
      
        '   efu_area, efu_DataExperiencia, efu_recebeemail, efu_DataInclu' +
        'sao, efu_DataAlteracao, '
      
        '   efu_DataInativacao, efu_login, efu_senha, efu_trocasenha, efu' +
        '_outraformacao, '
      '   efu_registro, efu_registro2, Form_cod)'
      'values'
      
        '  (:Emp_cod, :Func_cod, :Efu_nome, :Efu_fone, :Efu_fonecel, :Efu' +
        '_email, '
      
        '   :Efu_setor, :Efu_cargo, :Efu_observacao, :efu_dia, :efu_mes, ' +
        ':efu_cpf, '
      
        '   :efu_rg, :efu_nacionalidade, :efu_estcivil, :efu_profissao, :' +
        'efu_inativo, '
      
        '   :efu_formacao, :efu_documentacao, :efu_area, :efu_DataExperie' +
        'ncia, :efu_recebeemail, '
      
        '   :efu_DataInclusao, :efu_DataAlteracao, :efu_DataInativacao, :' +
        'efu_login, '
      
        '   :efu_senha, :efu_trocasenha, :efu_outraformacao, :efu_registr' +
        'o, :efu_registro2, '
      '   :Form_cod)')
    DeleteSQL.Strings = (
      'delete from EmpFuncionario'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod')
    Left = 402
    Top = 40
  end
  object dsInstCurso: TDataSource
    DataSet = quInstCurso
    Left = 272
    Top = 92
  end
  object quInstCurso: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  I.*, C.cur_nome, IC.ico_email, IC.ico_fone, ID.Idr_nome curi_n' +
        'omediretor,'
      '  IC.ico_nome curi_nomecoord'
      'from'
      '  InstCurso I, Curso C, InstCoordenador IC, InstDiretor ID'
      'where'
      '  I.inst_cod     = :inst_cod and'
      '  I.cur_cod      = C.cur_cod and'
      '  I.inst_cod     *= IC.inst_cod and'
      '  I.Curi_coord   *= IC.coord_cod and'
      '  I.inst_cod     *= ID.inst_cod and'
      '  I.Curi_diretor *= ID.Dire_cod'
      'order by '
      '  C.cur_nome'
      ' '
      ' ')
    UpdateObject = usInstCurso
    Left = 336
    Top = 87
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quInstCursoInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.InstCurso.Inst_cod'
      Visible = False
    end
    object quInstCursoCur_cod: TIntegerField
      DisplayLabel = 'Curso'
      DisplayWidth = 6
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.InstCurso.Cur_cod'
    end
    object quInstCursoCuri_duracao: TIntegerField
      FieldName = 'Curi_duracao'
      Origin = 'TALENTPOOL.InstCurso.Curi_duracao'
      Visible = False
    end
    object quInstCursoCuri_periodic: TStringField
      FieldName = 'Curi_periodic'
      Origin = 'TALENTPOOL.InstCurso.Curi_periodic'
      Visible = False
    end
    object quInstCursoCuri_duracaomax: TIntegerField
      FieldName = 'Curi_duracaomax'
      Origin = 'TALENTPOOL.InstCurso.Curi_duracaomax'
      Visible = False
    end
    object quInstCursoCuri_registro: TStringField
      FieldName = 'Curi_registro'
      Origin = 'TALENTPOOL.InstCurso.Curi_registro'
      Visible = False
      Size = 1
    end
    object quInstCursocur_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Curso.Cur_nome'
      Size = 50
    end
    object quInstCursocuri_coord: TIntegerField
      FieldName = 'curi_coord'
      Origin = 'TALENTPOOL.InstCurso.curi_coord'
      Visible = False
    end
    object quInstCursocuri_nomecoord: TStringField
      FieldName = 'curi_nomecoord'
      Origin = 'TALENTPOOL.InstCurso.curi_nomecoord'
      Visible = False
      Size = 50
    end
    object quInstCursocuri_obs: TStringField
      FieldName = 'curi_obs'
      Origin = 'TALENTPOOL.InstCurso.curi_obs'
      Visible = False
      Size = 250
    end
    object quInstCursoico_email: TStringField
      FieldName = 'ico_email'
      Visible = False
      Size = 80
    end
    object quInstCursoico_fone: TStringField
      FieldName = 'ico_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0;'
      Size = 15
    end
    object quInstCursocuri_diretor: TIntegerField
      FieldName = 'curi_diretor'
      Visible = False
    end
    object quInstCursocuri_nomediretor: TStringField
      FieldName = 'curi_nomediretor'
      Visible = False
      Size = 50
    end
    object quInstCursocuri_turno: TIntegerField
      FieldName = 'curi_turno'
    end
    object quInstCursocuri_semestre: TIntegerField
      FieldName = 'curi_semestre'
      Visible = False
    end
    object quInstCursocuri_ano: TFloatField
      FieldName = 'curi_ano'
      Visible = False
      DisplayFormat = '#.0'
      EditFormat = '0.0'
    end
  end
  object usInstCurso: TUpdateSQL
    ModifySQL.Strings = (
      'update InstCurso'
      'set'
      '  Inst_cod = :Inst_cod,'
      '  Cur_cod = :Cur_cod,'
      '  Curi_duracao = :Curi_duracao,'
      '  Curi_periodic = :Curi_periodic,'
      '  Curi_duracaomax = :Curi_duracaomax,'
      '  Curi_registro = :Curi_registro,'
      '  curi_coord = :curi_coord,'
      '  curi_diretor = :curi_diretor,'
      '  curi_obs = :curi_obs,'
      '  curi_turno = :curi_turno,'
      '  curi_ano = :curi_ano,'
      '  curi_semestre = :curi_semestre'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    InsertSQL.Strings = (
      'insert into InstCurso'
      
        '  (Inst_cod, Cur_cod, Curi_duracao, Curi_periodic, Curi_duracaom' +
        'ax, Curi_registro, '
      
        '   curi_coord, curi_diretor, curi_obs, curi_turno, curi_ano, cur' +
        'i_semestre)'
      'values'
      
        '  (:Inst_cod, :Cur_cod, :Curi_duracao, :Curi_periodic, :Curi_dur' +
        'acaomax, '
      
        '   :Curi_registro, :curi_coord, :curi_diretor, :curi_obs, :curi_' +
        'turno, '
      '   :curi_ano, :curi_semestre)')
    DeleteSQL.Strings = (
      'delete from InstCurso'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    Left = 402
    Top = 87
  end
  object dsPerIdioma: TDataSource
    DataSet = quPerIdioma
    Left = 272
    Top = 139
  end
  object quPerIdioma: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  p.*, i.idi_nome'
      'from '
      '  PerIdioma p, Idioma i'
      'where '
      '  p.idi_cod = i.idi_cod and '
      '  p.est_cod = :est_cod')
    UpdateObject = usPerIdioma
    Left = 336
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quPerIdiomaEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.PerIdioma.Est_cod'
      Visible = False
    end
    object quPerIdiomaIdi_cod: TIntegerField
      DisplayLabel = 'Idioma'
      DisplayWidth = 6
      FieldName = 'Idi_cod'
      Origin = 'TALENTPOOL.PerIdioma.Idi_cod'
    end
    object quPerIdiomaidi_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 23
      FieldName = 'idi_nome'
      Origin = 'TALENTPOOL.Idioma.Idi_nome'
      Size = 50
    end
    object quPerIdiomapid_le: TStringField
      DisplayLabel = 'B'#225'sico'
      DisplayWidth = 8
      FieldName = 'pid_le'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quPerIdiomapid_fala: TStringField
      DisplayLabel = 'Intermedi'#225'rio'
      DisplayWidth = 8
      FieldName = 'pid_fala'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quPerIdiomapid_escreve: TStringField
      DisplayLabel = 'Avan'#231'ado'
      DisplayWidth = 8
      FieldName = 'pid_escreve'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quPerIdiomapid_fluente: TStringField
      DisplayLabel = 'Fluente'
      FieldName = 'pid_fluente'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quPerIdiomaIdi_Nivel: TStringField
      FieldName = 'Idi_Nivel'
      FixedChar = True
      Size = 1
    end
  end
  object usPerIdioma: TUpdateSQL
    ModifySQL.Strings = (
      'update PerIdioma'
      'set'
      '  Est_cod = :Est_cod,'
      '  Idi_cod = :Idi_cod,'
      '  pid_fala = :pid_fala,'
      '  pid_le = :pid_le,'
      '  pid_escreve = :pid_escreve,'
      '  pid_fluente = :pid_fluente,'
      '  Idi_Nivel = :Idi_Nivel'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Idi_cod = :OLD_Idi_cod')
    InsertSQL.Strings = (
      'insert into PerIdioma'
      
        '  (Est_cod, Idi_cod, pid_fala, pid_le, pid_escreve, pid_fluente,' +
        ' Idi_Nivel)'
      'values'
      
        '  (:Est_cod, :Idi_cod, :pid_fala, :pid_le, :pid_escreve, :pid_fl' +
        'uente, '
      '   :Idi_Nivel)')
    DeleteSQL.Strings = (
      'delete from PerIdioma'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Idi_cod = :OLD_Idi_cod')
    Left = 402
    Top = 134
  end
  object dsPerSoftware: TDataSource
    DataSet = quPerSoftware
    Left = 272
    Top = 237
  end
  object quPerSoftware: TQuery
    CachedUpdates = True
    OnCalcFields = quPerSoftwareCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      '  p.*, s.stw_nome'
      'from '
      '  PerSoftware p, Software s'
      'where'
      '  p.stw_cod = s.stw_cod and '
      '  p.est_cod = :est_cod')
    UpdateObject = usPerSoftware
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quPerSoftwareEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.PerSoftware.Est_cod'
      Visible = False
    end
    object quPerSoftwareStw_cod: TIntegerField
      DisplayLabel = 'Software'
      DisplayWidth = 7
      FieldName = 'Stw_cod'
      Origin = 'TALENTPOOL.PerSoftware.Stw_cod'
    end
    object quPerSoftwarestw_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'stw_nome'
      Origin = 'TALENTPOOL.Software.Stw_nome'
      Size = 50
    end
    object quPerSoftwarePsw_nivel: TStringField
      FieldName = 'Psw_nivel'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quPerSoftwareNivel: TStringField
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'Nivel'
      Size = 10
      Calculated = True
    end
  end
  object usPerSoftware: TUpdateSQL
    ModifySQL.Strings = (
      'update PerSoftware'
      'set'
      '  Est_cod = :Est_cod,'
      '  Stw_cod = :Stw_cod,'
      '  Psw_nivel = :Psw_nivel'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Stw_cod = :OLD_Stw_cod')
    InsertSQL.Strings = (
      'insert into PerSoftware'
      '  (Est_cod, Stw_cod, Psw_nivel)'
      'values'
      '  (:Est_cod, :Stw_cod, :Psw_nivel)')
    DeleteSQL.Strings = (
      'delete from PerSoftware'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Stw_cod = :OLD_Stw_cod')
    Left = 402
    Top = 232
  end
  object dsExperiencia: TDataSource
    DataSet = quExperiencia
    Left = 272
    Top = 189
  end
  object quExperiencia: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  * '
      'from'
      '  Experiencia'
      'where'
      '  est_cod = :est_cod'
      'order by exp_inicio')
    UpdateObject = usExperiencia
    Left = 336
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quExperienciaEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.Experiencia.Est_cod'
      Visible = False
    end
    object quExperienciaExp_cod: TIntegerField
      FieldName = 'Exp_cod'
      Origin = 'TALENTPOOL.Experiencia.Exp_cod'
      Visible = False
    end
    object quExperienciaExp_empresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 32
      FieldName = 'Exp_empresa'
      Origin = 'TALENTPOOL.Experiencia.Exp_empresa'
      Size = 50
    end
    object quExperienciaExp_inicio: TStringField
      DisplayLabel = 'Admiss'#227'o'
      DisplayWidth = 10
      FieldName = 'Exp_inicio'
      Origin = 'TALENTPOOL.Experiencia.Exp_inicio'
      Size = 30
    end
    object quExperienciaExp_fim: TStringField
      DisplayLabel = 'Demiss'#227'o'
      DisplayWidth = 10
      FieldName = 'Exp_fim'
      Origin = 'TALENTPOOL.Experiencia.Exp_fim'
      Size = 30
    end
    object quExperienciaexp_telefone: TStringField
      FieldName = 'exp_telefone'
      Origin = 'TALENTPOOL.Experiencia.exp_telefone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      FixedChar = True
      Size = 10
    end
    object quExperienciaexp_funcest: TStringField
      DisplayLabel = 'Tipo Exp.'
      DisplayWidth = 15
      FieldName = 'exp_funcest'
      Origin = 'TALENTPOOL.Experiencia.exp_funcest'
    end
    object quExperienciaexp_motivo: TStringField
      FieldName = 'exp_motivo'
      Origin = 'TALENTPOOL.Experiencia.exp_motivo'
      Visible = False
      Size = 50
    end
    object quExperienciaexp_salinicial: TFloatField
      FieldName = 'exp_salinicial'
      Origin = 'TALENTPOOL.Experiencia.exp_salinicial'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
    object quExperienciaexp_salfinal: TFloatField
      FieldName = 'exp_salfinal'
      Origin = 'TALENTPOOL.Experiencia.exp_salfinal'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
    object quExperienciaExp_atividades: TStringField
      FieldName = 'Exp_atividades'
      Origin = 'TALENTPOOL.Experiencia.Exp_atividades'
      Visible = False
      Size = 250
    end
    object quExperienciaexp_contato: TStringField
      FieldName = 'exp_contato'
      Origin = 'TALENTPOOL.Experiencia.exp_contato'
      Visible = False
      Size = 50
    end
    object quExperienciaexp_nroemp: TIntegerField
      FieldName = 'exp_nroemp'
      Origin = 'TALENTPOOL.Experiencia.exp_nroemp'
      Visible = False
    end
  end
  object usExperiencia: TUpdateSQL
    ModifySQL.Strings = (
      'update Experiencia'
      'set'
      '  Est_cod = :Est_cod,'
      '  Exp_cod = :Exp_cod,'
      '  Exp_inicio = :Exp_inicio,'
      '  Exp_fim = :Exp_fim,'
      '  Exp_empresa = :Exp_empresa,'
      '  Exp_atividades = :Exp_atividades,'
      '  exp_telefone = :exp_telefone,'
      '  exp_contato = :exp_contato,'
      '  exp_funcest = :exp_funcest,'
      '  exp_motivo = :exp_motivo,'
      '  exp_salinicial = :exp_salinicial,'
      '  exp_salfinal = :exp_salfinal,'
      '  exp_nroemp = :exp_nroemp'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Exp_cod = :OLD_Exp_cod')
    InsertSQL.Strings = (
      'insert into Experiencia'
      
        '  (Est_cod, Exp_cod, Exp_inicio, Exp_fim, Exp_empresa, Exp_ativi' +
        'dades, '
      
        '   exp_telefone, exp_contato, exp_funcest, exp_motivo, exp_salin' +
        'icial, '
      '   exp_salfinal, exp_nroemp)'
      'values'
      
        '  (:Est_cod, :Exp_cod, :Exp_inicio, :Exp_fim, :Exp_empresa, :Exp' +
        '_atividades, '
      
        '   :exp_telefone, :exp_contato, :exp_funcest, :exp_motivo, :exp_' +
        'salinicial, '
      '   :exp_salfinal, :exp_nroemp)')
    DeleteSQL.Strings = (
      'delete from Experiencia'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Exp_cod = :OLD_Exp_cod')
    Left = 402
    Top = 184
  end
  object dsPerPChave: TDataSource
    DataSet = quPerPChave
    Left = 64
    Top = 327
  end
  object quPerPChave: TQuery
    CachedUpdates = True
    OnCalcFields = quPerPChaveCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      '  *'
      'from'
      '  PalavraChave'
      'where'
      '  est_cod = :est_cod')
    UpdateObject = usPerPChave
    Left = 128
    Top = 327
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quPerPChaveEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.PalavraChave.Est_cod'
      Visible = False
    end
    object quPerPChavePal_cod: TIntegerField
      FieldName = 'Pal_cod'
      Origin = 'TALENTPOOL.PalavraChave.Pal_cod'
      Visible = False
    end
    object quPerPChavePal_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
      FieldName = 'Pal_nome'
      Origin = 'TALENTPOOL.PalavraChave.Pal_nome'
      Size = 30
    end
    object quPerPChavePal_experiencia: TIntegerField
      DisplayLabel = 'Experi'#234'ncia'
      FieldName = 'Pal_experiencia'
      Origin = 'TALENTPOOL.PalavraChave.Pal_experiencia'
      Visible = False
    end
    object quPerPChavePal_perexp: TStringField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'Pal_perexp'
      Origin = 'TALENTPOOL.PalavraChave.Pal_perexp'
      Visible = False
      Size = 1
    end
    object quPerPChavePerExp: TStringField
      DisplayLabel = 'Experi'#234'ncia'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'PerExp'
      Size = 10
      Calculated = True
    end
  end
  object usPerPChave: TUpdateSQL
    ModifySQL.Strings = (
      'update PalavraChave'
      'set'
      '  Est_cod = :Est_cod,'
      '  Pal_cod = :Pal_cod,'
      '  Pal_nome = :Pal_nome,'
      '  Pal_experiencia = :Pal_experiencia,'
      '  Pal_perexp = :Pal_perexp'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Pal_cod = :OLD_Pal_cod')
    InsertSQL.Strings = (
      'insert into PalavraChave'
      '  (Est_cod, Pal_cod, Pal_nome, Pal_experiencia, Pal_perexp)'
      'values'
      '  (:Est_cod, :Pal_cod, :Pal_nome, :Pal_experiencia, :Pal_perexp)')
    DeleteSQL.Strings = (
      'delete from PalavraChave'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Pal_cod = :OLD_Pal_cod')
    Left = 192
    Top = 327
  end
  object dsPerCursos: TDataSource
    DataSet = quPerCursos
    Left = 272
    Top = 285
  end
  object quPerCursos: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      '  p.*, c.cur_nome'
      'from '
      '  PerCursos p, Curso c'
      'where'
      '  p.cur_cod = c.cur_cod and '
      '  est_cod = :est_cod')
    UpdateObject = usPerCursos
    Left = 336
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quPerCursosEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.PerCursos.Est_cod'
      Visible = False
    end
    object quPerCursosCur_cod: TIntegerField
      DisplayLabel = 'Curso'
      DisplayWidth = 6
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.PerCursos.Cur_cod'
    end
    object quPerCursoscur_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Curso.Cur_nome'
      Size = 50
    end
    object quPerCursosEcu_conclusao: TIntegerField
      DisplayLabel = 'Conclus'#227'o'
      FieldName = 'Ecu_conclusao'
      Origin = 'TALENTPOOL.PerCursos.Ecu_conclusao'
    end
  end
  object usPerCursos: TUpdateSQL
    ModifySQL.Strings = (
      'update PerCursos'
      'set'
      '  Est_cod = :Est_cod,'
      '  Cur_cod = :Cur_cod,'
      '  Ecu_conclusao = :Ecu_conclusao'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    InsertSQL.Strings = (
      'insert into PerCursos'
      '  (Est_cod, Cur_cod, Ecu_conclusao)'
      'values'
      '  (:Est_cod, :Cur_cod, :Ecu_conclusao)')
    DeleteSQL.Strings = (
      'delete from PerCursos'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    Left = 402
    Top = 280
  end
  object usPerOutCursos: TUpdateSQL
    ModifySQL.Strings = (
      'update PerOutrosCursos'
      'set'
      '  Est_cod = :Est_cod,'
      '  Cure_cod = :Cure_cod,'
      '  Cure_descricao = :Cure_descricao,'
      '  Cure_local = :Cure_local,'
      '  Cure_conclusao = :Cure_conclusao,'
      '  Cure_diploma = :Cure_diploma'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Cure_cod = :OLD_Cure_cod')
    InsertSQL.Strings = (
      'insert into PerOutrosCursos'
      
        '  (Est_cod, Cure_cod, Cure_descricao, Cure_local, Cure_conclusao' +
        ', Cure_diploma)'
      'values'
      
        '  (:Est_cod, :Cure_cod, :Cure_descricao, :Cure_local, :Cure_conc' +
        'lusao, '
      '   :Cure_diploma)')
    DeleteSQL.Strings = (
      'delete from PerOutrosCursos'
      'where'
      '  Est_cod = :OLD_Est_cod and'
      '  Cure_cod = :OLD_Cure_cod')
    Left = 402
    Top = 471
  end
  object quPerOutCursos: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      '  *'
      'from '
      '  PerOutrosCursos'
      'where'
      '  est_cod = :est_cod')
    UpdateObject = usPerOutCursos
    Left = 336
    Top = 471
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quPerOutCursosEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.PerOutrosCursos.Est_cod'
      Visible = False
    end
    object quPerOutCursosCure_cod: TIntegerField
      FieldName = 'Cure_cod'
      Origin = 'TALENTPOOL.PerOutrosCursos.Cure_cod'
      Visible = False
    end
    object quPerOutCursosCure_descricao: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 46
      FieldName = 'Cure_descricao'
      Origin = 'TALENTPOOL.PerOutrosCursos.Cure_descricao'
      Size = 50
    end
    object quPerOutCursosCure_local: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 20
      FieldName = 'Cure_local'
      Origin = 'TALENTPOOL.PerOutrosCursos.Cure_local'
      Visible = False
      Size = 30
    end
    object quPerOutCursosCure_conclusao: TIntegerField
      DisplayLabel = 'Conclus'#227'o'
      FieldName = 'Cure_conclusao'
      Origin = 'TALENTPOOL.PerOutrosCursos.Cure_conclusao'
    end
    object quPerOutCursosCure_diploma: TStringField
      FieldName = 'Cure_diploma'
      Origin = 'TALENTPOOL.PerOutrosCursos.Cure_diploma'
      Visible = False
      Size = 1
    end
  end
  object dsPerOutCursos: TDataSource
    DataSet = quPerOutCursos
    Left = 272
    Top = 476
  end
  object dsVaga: TDataSource
    DataSet = quVaga
    Left = 272
    Top = 430
  end
  object dsVagaCurso: TDataSource
    DataSet = quVagaCurso
    Left = 480
    Top = 65529
  end
  object quVagaCurso: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  v.*, c.cur_nome, I.inst_nome '
      'from'
      '  VagaCurso V, Curso C, Instituicao I'
      'where'
      '  v.vag_cod = :vag_cod and'
      '  v.cur_cod = c.cur_cod and'
      '  v.inst_cod *= i.inst_cod'
      'Order by '
      '  c.Cur_nome')
    UpdateObject = usVagaCurso
    Left = 547
    Top = 65529
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaCursoVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaCurso.Vag_cod'
      Visible = False
    end
    object quVagaCursoCur_cod: TIntegerField
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.VagaCurso.Cur_cod'
      Visible = False
    end
    object quVagaCursocur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 35
      FieldName = 'cur_nome'
      Size = 150
    end
    object quVagaCursoInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.VagaCurso.Inst_cod'
      Visible = False
    end
    object quVagaCursoinst_nome: TStringField
      FieldName = 'inst_nome'
      Visible = False
      Size = 50
    end
    object quVagaCursoVcu_periodoini: TFloatField
      DisplayLabel = 'Ano Inicial'
      FieldName = 'Vcu_periodoini'
      Origin = 'TALENTPOOL.VagaCurso.Vcu_periodoini'
    end
    object quVagaCursoVcu_periodofim: TFloatField
      DisplayLabel = 'Ano Final'
      FieldName = 'Vcu_periodofim'
      Origin = 'TALENTPOOL.VagaCurso.Vcu_periodofim'
    end
    object quVagaCursovcu_observacoes: TStringField
      FieldName = 'vcu_observacoes'
      Origin = 'TALENTPOOL.VagaCurso.vcu_observacoes'
      Visible = False
      Size = 250
    end
  end
  object usVagaCurso: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaCurso'
      'set'
      '  Vag_cod = :Vag_cod,'
      '  Cur_cod = :Cur_cod,'
      '  Inst_cod = :Inst_cod,'
      '  Vcu_periodoini = :Vcu_periodoini,'
      '  vcu_periodofim = :vcu_periodofim,'
      '  vcu_observacoes = :vcu_observacoes'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    InsertSQL.Strings = (
      'insert into VagaCurso'
      
        '  (Vag_cod, Cur_cod, Inst_cod, Vcu_periodoini, vcu_periodofim, v' +
        'cu_observacoes)'
      'values'
      
        '  (:Vag_cod, :Cur_cod, :Inst_cod, :Vcu_periodoini, :vcu_periodof' +
        'im, :vcu_observacoes)')
    DeleteSQL.Strings = (
      'delete from VagaCurso'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    Left = 616
    Top = 65529
  end
  object dsVagaIdioma: TDataSource
    DataSet = quVagaIdioma
    Left = 480
    Top = 88
  end
  object quVagaIdioma: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  V.*, I.idi_nome '
      'from'
      '  VagaIdioma V, Idioma I'
      'where'
      '  V.vag_cod = :vag_cod and'
      '  V.idi_cod = I.idi_cod')
    UpdateObject = usVagaIdioma
    Left = 547
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaIdiomaVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaIdioma.Vag_cod'
      Visible = False
    end
    object quVagaIdiomaIdi_cod: TIntegerField
      FieldName = 'Idi_cod'
      Origin = 'TALENTPOOL.VagaIdioma.Idi_cod'
      Visible = False
    end
    object quVagaIdiomaidi_nome: TStringField
      DisplayLabel = 'Idioma'
      DisplayWidth = 30
      FieldName = 'idi_nome'
      Size = 50
    end
    object quVagaIdiomavid_le: TStringField
      DisplayLabel = 'B'#225'sico'
      DisplayWidth = 8
      FieldName = 'vid_le'
      Origin = 'TALENTPOOL.VagaIdioma.vid_le'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomavid_fala: TStringField
      DisplayLabel = 'Intermedi'#225'rio'
      DisplayWidth = 8
      FieldName = 'vid_fala'
      Origin = 'TALENTPOOL.VagaIdioma.vid_fala'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomavid_escreve: TStringField
      DisplayLabel = 'Avan'#231'ado'
      DisplayWidth = 8
      FieldName = 'vid_escreve'
      Origin = 'TALENTPOOL.VagaIdioma.vid_escreve'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomavid_fluente: TStringField
      DisplayLabel = 'Fluente'
      FieldName = 'vid_fluente'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomaVid_Nivel: TStringField
      FieldName = 'Vid_Nivel'
      FixedChar = True
      Size = 1
    end
  end
  object usVagaIdioma: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaIdioma'
      'set'
      '  Vag_cod = :Vag_cod,'
      '  Idi_cod = :Idi_cod,'
      '  vid_fala = :vid_fala,'
      '  vid_le = :vid_le,'
      '  vid_escreve = :vid_escreve,'
      '  vid_fluente = :vid_fluente,'
      '  Vid_Nivel = :Vid_Nivel'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Idi_cod = :OLD_Idi_cod')
    InsertSQL.Strings = (
      'insert into VagaIdioma'
      
        '  (Vag_cod, Idi_cod, vid_fala, vid_le, vid_escreve, vid_fluente,' +
        ' Vid_Nivel)'
      'values'
      
        '  (:Vag_cod, :Idi_cod, :vid_fala, :vid_le, :vid_escreve, :vid_fl' +
        'uente, '
      '   :Vid_Nivel)')
    DeleteSQL.Strings = (
      'delete from VagaIdioma'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Idi_cod = :OLD_Idi_cod')
    Left = 616
    Top = 88
  end
  object dsVagaSoftware: TDataSource
    DataSet = quVagaSoftware
    Left = 480
    Top = 136
  end
  object quVagaSoftware: TQuery
    CachedUpdates = True
    OnCalcFields = quVagaSoftwareCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  V.*, S.stw_nome '
      'from'
      '  VagaSoftware V, Software S'
      'where'
      '  V.vag_cod = :vag_cod and '
      '  V.stw_cod = S.stw_cod')
    UpdateObject = usVagaSoftware
    Left = 547
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaSoftwareVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaSoftware.Vag_cod'
      Visible = False
    end
    object quVagaSoftwareStw_cod: TIntegerField
      FieldName = 'Stw_cod'
      Origin = 'TALENTPOOL.VagaSoftware.Stw_cod'
      Visible = False
    end
    object quVagaSoftwarestw_nome: TStringField
      DisplayLabel = 'Software'
      DisplayWidth = 44
      FieldName = 'stw_nome'
      Size = 50
    end
    object quVagaSoftwarevsw_nivel: TStringField
      FieldName = 'vsw_nivel'
      Origin = 'TALENTPOOL.VagaSoftware.vsw_nivel'
      Visible = False
      Size = 1
    end
    object StringField3: TStringField
      DisplayLabel = 'N'#237'vel'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Nivel'
      Calculated = True
    end
  end
  object usVagaSoftware: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaSoftware'
      'set'
      '  Vag_cod = :Vag_cod,'
      '  Stw_cod = :Stw_cod,'
      '  vsw_nivel = :vsw_nivel'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Stw_cod = :OLD_Stw_cod')
    InsertSQL.Strings = (
      'insert into VagaSoftware'
      '  (Vag_cod, Stw_cod, vsw_nivel)'
      'values'
      '  (:Vag_cod, :Stw_cod, :vsw_nivel)')
    DeleteSQL.Strings = (
      'delete from VagaSoftware'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Stw_cod = :OLD_Stw_cod')
    Left = 616
    Top = 136
  end
  object dsVagaAtividade: TDataSource
    DataSet = quVagaAtividade
    Left = 480
    Top = 40
  end
  object quVagaAtividade: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  * '
      'from'
      '  VagaAtividade'
      'where'
      '  vag_cod = :vag_cod')
    UpdateObject = usVagaAtividade
    Left = 547
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaAtividadeVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaAtividade.Vag_cod'
      Visible = False
    end
    object quVagaAtividadeAti_cod: TIntegerField
      DisplayLabel = 'Atividade'
      DisplayWidth = 8
      FieldName = 'Ati_cod'
      Origin = 'TALENTPOOL.VagaAtividade.Ati_cod'
    end
    object quVagaAtividadeAti_nome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 48
      FieldName = 'Ati_nome'
      Origin = 'TALENTPOOL.VagaAtividade.Ati_nome'
      Size = 200
    end
  end
  object usVagaAtividade: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaAtividade'
      'set'
      '  Vag_cod = :Vag_cod,'
      '  Ati_cod = :Ati_cod,'
      '  Ati_nome = :Ati_nome'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Ati_cod = :OLD_Ati_cod')
    InsertSQL.Strings = (
      'insert into VagaAtividade'
      '  (Vag_cod, Ati_cod, Ati_nome)'
      'values'
      '  (:Vag_cod, :Ati_cod, :Ati_nome)')
    DeleteSQL.Strings = (
      'delete from VagaAtividade'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Ati_cod = :OLD_Ati_cod')
    Left = 616
    Top = 40
  end
  object dsTce: TDataSource
    AutoEdit = False
    DataSet = quTce
    Left = 480
    Top = 232
  end
  object quTce: TQuery
    CachedUpdates = True
    OnCalcFields = quTceCalcFields
    OnNewRecord = quTceNewRecord
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  T.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada' +
        ', m.emp_nome,V.vag_selecao,'
      '  e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,'
      
        'coalesce((select min(tal_vigencia) from tcealteracao where tce_c' +
        'od = t.tce_cod  and tal_vigencia >= '#39'25/09/2008'#39'),0) DTAlteracao' +
        ','
      
        'coalesce((select min(tpr_dataini) from tceaditivo where tce_cod ' +
        '= t.tce_cod  and tpr_dataini >= '#39'25/09/2008'#39' ),0)   DTAditivo,'
      
        'coalesce((select max(tpr_datafim) from tceaditivo where tce_cod ' +
        '= t.tce_cod  ),0)   DTFinal'
      ''
      'from'
      '  Tce T, Vaga V, Estudante E, Empresa M'
      'where'
      '  t.vag_cod *= v.vag_cod and'
      '  t.est_cod = E.est_Cod and'
      '  t.emp_cod = M.emp_cod'
      ''
      'order by'
      '  T.tce_cod')
    UpdateObject = usTce
    Left = 547
    Top = 232
    object quTceTce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.Tce.Tce_cod'
    end
    object quTceEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.Tce.Est_cod'
      Visible = False
    end
    object quTceest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 28
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.Estudante.Est_nome'
      Size = 50
    end
    object quTceemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.Empresa.Emp_nome'
      Size = 150
    end
    object quTceDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Calculated = True
    end
    object quTceTce_estenc: TStringField
      FieldName = 'Tce_estenc'
      Origin = 'TALENTPOOL.Tce.Tce_estenc'
      Visible = False
      Size = 1
    end
    object quTceEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.Tce.Emp_cod'
      Visible = False
    end
    object quTceTce_tipocont: TStringField
      FieldName = 'Tce_tipocont'
      Origin = 'TALENTPOOL.Tce.Tce_tipocont'
      Visible = False
      Size = 1
    end
    object quTceVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.Tce.Vag_cod'
      Visible = False
    end
    object quTceTce_seguro: TStringField
      FieldName = 'Tce_seguro'
      Origin = 'TALENTPOOL.Tce.Tce_seguro'
      Visible = False
      Size = 1
    end
    object quTceTce_situacao: TStringField
      FieldName = 'Tce_situacao'
      Origin = 'TALENTPOOL.Tce.Tce_situacao'
      Visible = False
      Size = 1
    end
    object quTceTce_bolsa: TCurrencyField
      FieldName = 'Tce_bolsa'
      Origin = 'TALENTPOOL.Tce.Tce_bolsa'
      Visible = False
    end
    object quTceTce_tipobolsa: TStringField
      FieldName = 'Tce_tipobolsa'
      Origin = 'TALENTPOOL.Tce.Tce_tipobolsa'
      Visible = False
      Size = 1
    end
    object quTceDescBolsa: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescBolsa'
      Visible = False
      Size = 10
      Calculated = True
    end
    object quTceTce_horarioini1: TDateTimeField
      FieldName = 'Tce_horarioini1'
      Visible = False
    end
    object quTceTce_horariofim1: TDateTimeField
      FieldName = 'Tce_horariofim1'
      Visible = False
    end
    object quTceTce_horarioini2: TDateTimeField
      FieldName = 'Tce_horarioini2'
      Visible = False
    end
    object quTceTce_horariofim2: TDateTimeField
      FieldName = 'Tce_horariofim2'
      Visible = False
    end
    object quTceTce_dataini: TDateTimeField
      FieldName = 'Tce_dataini'
      Visible = False
    end
    object quTceTce_datafim: TDateTimeField
      FieldName = 'Tce_datafim'
      Visible = False
    end
    object quTceTce_datares: TDateTimeField
      FieldName = 'Tce_datares'
      Visible = False
    end
    object quTceTce_data: TDateTimeField
      FieldName = 'Tce_data'
      Visible = False
    end
    object quTcevag_qtde: TSmallintField
      FieldName = 'vag_qtde'
      Visible = False
    end
    object quTcevag_qtdepreenc: TSmallintField
      FieldName = 'vag_qtdepreenc'
      Visible = False
    end
    object quTcetce_dataret: TDateTimeField
      FieldName = 'tce_dataret'
      Origin = 'TALENTPOOL.Tce.tce_dataret'
      Visible = False
    end
    object quTcetce_datadec: TDateTimeField
      FieldName = 'tce_datadec'
      Origin = 'TALENTPOOL.Tce.tce_datadec'
      Visible = False
    end
    object quTcetce_tothoras: TFloatField
      FieldName = 'tce_tothoras'
      Origin = 'TALENTPOOL.Tce.tce_tothoras'
      Visible = False
      DisplayFormat = '0.00'
    end
    object quTcetce_horsabini1: TDateTimeField
      FieldName = 'tce_horsabini1'
      Origin = 'TALENTPOOL.Tce.tce_horsabini1'
      Visible = False
    end
    object quTcetce_horsabfim1: TDateTimeField
      FieldName = 'tce_horsabfim1'
      Origin = 'TALENTPOOL.Tce.tce_horsabfim1'
      Visible = False
    end
    object quTcetce_horsabini2: TDateTimeField
      FieldName = 'tce_horsabini2'
      Origin = 'TALENTPOOL.Tce.tce_horsabini2'
      Visible = False
    end
    object quTcetce_horsabfim2: TDateTimeField
      FieldName = 'tce_horsabfim2'
      Origin = 'TALENTPOOL.Tce.tce_horsabfim2'
      Visible = False
    end
    object quTcetce_avaliacao: TDateTimeField
      FieldName = 'tce_avaliacao'
      Origin = 'TALENTPOOL.Tce.tce_avaliacao'
      Visible = False
    end
    object quTcevag_cancelada: TStringField
      FieldName = 'vag_cancelada'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_segunda: TStringField
      FieldName = 'tce_segunda'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_terca: TStringField
      FieldName = 'tce_terca'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_quarta: TStringField
      FieldName = 'tce_quarta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_quinta: TStringField
      FieldName = 'tce_quinta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_sexta: TStringField
      FieldName = 'tce_sexta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_sabado: TStringField
      FieldName = 'tce_sabado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_domingo: TStringField
      FieldName = 'tce_domingo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceest_fone1: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'est_fone1'
      Visible = False
      Size = 15
    end
    object quTceest_fone2: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'est_fone2'
      Visible = False
      Size = 15
    end
    object quTceest_recado: TStringField
      DisplayLabel = 'Recado'
      FieldName = 'est_recado'
      Visible = False
      Size = 15
    end
    object quTceest_nomerecado: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'est_nomerecado'
      Visible = False
      Size = 30
    end
    object quTcetce_EstObrigato: TStringField
      FieldName = 'tce_EstObrigato'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_horsegini1: TDateTimeField
      FieldName = 'tce_horsegini1'
      Visible = False
    end
    object quTcetce_horsegfim1: TDateTimeField
      FieldName = 'tce_horsegfim1'
      Visible = False
    end
    object quTcetce_horsegini2: TDateTimeField
      FieldName = 'tce_horsegini2'
      Visible = False
    end
    object quTcetce_horsegfim2: TDateTimeField
      FieldName = 'tce_horsegfim2'
      Visible = False
    end
    object quTcetce_horterini1: TDateTimeField
      FieldName = 'tce_horterini1'
      Visible = False
    end
    object quTcetce_horterfim1: TDateTimeField
      FieldName = 'tce_horterfim1'
      Visible = False
    end
    object quTcetce_horterini2: TDateTimeField
      FieldName = 'tce_horterini2'
      Visible = False
    end
    object quTcetce_horterfim2: TDateTimeField
      FieldName = 'tce_horterfim2'
      Visible = False
    end
    object quTcetce_horquaini1: TDateTimeField
      FieldName = 'tce_horquaini1'
      Visible = False
    end
    object quTcetce_horquafim1: TDateTimeField
      FieldName = 'tce_horquafim1'
      Visible = False
    end
    object quTcetce_horquaini2: TDateTimeField
      FieldName = 'tce_horquaini2'
      Visible = False
    end
    object quTcetce_horquafim2: TDateTimeField
      FieldName = 'tce_horquafim2'
      Visible = False
    end
    object quTcetce_horquiini1: TDateTimeField
      FieldName = 'tce_horquiini1'
      Visible = False
    end
    object quTcetce_horquifim1: TDateTimeField
      FieldName = 'tce_horquifim1'
      Visible = False
    end
    object quTcetce_horquiini2: TDateTimeField
      FieldName = 'tce_horquiini2'
      Visible = False
    end
    object quTcetce_horquifim2: TDateTimeField
      FieldName = 'tce_horquifim2'
      Visible = False
    end
    object quTcetce_horsexini1: TDateTimeField
      FieldName = 'tce_horsexini1'
      Visible = False
    end
    object quTcetce_horsexfim1: TDateTimeField
      FieldName = 'tce_horsexfim1'
      Visible = False
    end
    object quTcetce_horsexini2: TDateTimeField
      FieldName = 'tce_horsexini2'
      Visible = False
    end
    object quTcetce_horsexfim2: TDateTimeField
      FieldName = 'tce_horsexfim2'
      Visible = False
    end
    object quTcetce_hordomini1: TDateTimeField
      FieldName = 'tce_hordomini1'
      Visible = False
    end
    object quTcetce_hordomfim1: TDateTimeField
      FieldName = 'tce_hordomfim1'
      Visible = False
    end
    object quTcetce_hordomini2: TDateTimeField
      FieldName = 'tce_hordomini2'
      Visible = False
    end
    object quTcetce_hordomfim2: TDateTimeField
      FieldName = 'tce_hordomfim2'
      Visible = False
    end
    object quTceNivel: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nivel'
      Visible = False
      Size = 15
      Calculated = True
    end
    object quTceTce_AuxTransp: TStringField
      FieldName = 'Tce_AuxTransp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceTce_AuxTranspValor: TFloatField
      FieldName = 'Tce_AuxTranspValor'
      Visible = False
      currency = True
    end
    object quTceFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Visible = False
    end
    object quTcetce_InterSeg: TDateTimeField
      FieldName = 'tce_InterSeg'
      Visible = False
    end
    object quTceTce_Intervalo: TDateTimeField
      FieldName = 'Tce_Intervalo'
      Visible = False
      EditMask = '!90:00;1;_'
    end
    object quTcetce_InterTer: TDateTimeField
      FieldName = 'tce_InterTer'
      Visible = False
    end
    object quTcetce_InterQua: TDateTimeField
      FieldName = 'tce_InterQua'
      Visible = False
    end
    object quTcetce_InterQui: TDateTimeField
      FieldName = 'tce_InterQui'
      Visible = False
    end
    object quTcetce_InterDom: TDateTimeField
      FieldName = 'tce_InterDom'
      Visible = False
    end
    object quTcetce_InterSab: TDateTimeField
      FieldName = 'tce_InterSab'
      Visible = False
    end
    object quTceFormacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formacao'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceArea: TStringField
      FieldKind = fkCalculated
      FieldName = 'Area'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Size = 30
      Calculated = True
    end
    object qutceProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Profissao'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceRestricoes: TStringField
      FieldKind = fkCalculated
      FieldName = 'Restricoes'
      Visible = False
      Size = 300
      Calculated = True
    end
    object quTcetce_InterSex: TDateTimeField
      FieldName = 'tce_InterSex'
      Visible = False
    end
    object quTceTCE_AuxAlim: TStringField
      FieldName = 'TCE_AuxAlim'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceTCE_AuxAlimAntecipa: TStringField
      FieldName = 'TCE_AuxAlimAntecipa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceTCE_AuxAlimTipo: TStringField
      FieldName = 'TCE_AuxAlimTipo'
      Visible = False
      Size = 50
    end
    object quTceTCE_AuxAlimtexto: TStringField
      FieldName = 'TCE_AuxAlimtexto'
      Visible = False
      Size = 50
    end
    object quTceTCE_AuxAlimValor: TFloatField
      FieldName = 'TCE_AuxAlimValor'
      Visible = False
    end
    object quTceTce_AuxTranspTexto: TMemoField
      FieldName = 'Tce_AuxTranspTexto'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quTceTCE_Escala: TStringField
      FieldName = 'TCE_Escala'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceTCE_Matricula: TStringField
      FieldName = 'TCE_Matricula'
      Visible = False
      Size = 15
    end
    object quTceemp_cod2: TIntegerField
      FieldName = 'emp_cod2'
      Visible = False
    end
    object quTcevagaAuxTransp: TStringField
      FieldKind = fkCalculated
      FieldName = 'vagaAuxTransp'
      Visible = False
      Size = 1
      Calculated = True
    end
    object quTceVagaAuxTranspValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VagaAuxTranspValor'
      Visible = False
      Calculated = True
    end
    object quTceVagaAuxTranspTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'VagaAuxTranspTexto'
      Visible = False
      Size = 500
      Calculated = True
    end
    object quTceoutraformacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'outraformacao'
      Visible = False
      Size = 100
      Calculated = True
    end
    object quTceRegistro: TStringField
      FieldKind = fkCalculated
      FieldName = 'Registro'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceRegistro2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Registro2'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceTce_FuncEscolha: TIntegerField
      FieldName = 'Tce_FuncEscolha'
      Visible = False
    end
    object quTceLei: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lei'
      Calculated = True
    end
    object quTceDataLei: TDateField
      DisplayLabel = 'Entrada na Nova Lei'
      FieldKind = fkCalculated
      FieldName = 'DataLei'
      Calculated = True
    end
    object quTceTCE_Observacao: TStringField
      FieldName = 'TCE_Observacao'
      Visible = False
      Size = 250
    end
    object quTceTce_formacao1: TStringField
      FieldName = 'Tce_formacao1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_formacao2: TStringField
      FieldName = 'tce_formacao2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_Registro1: TStringField
      FieldName = 'tce_Registro1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_registro2: TStringField
      FieldName = 'tce_registro2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_area: TStringField
      FieldName = 'tce_area'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_tempo: TStringField
      FieldName = 'tce_tempo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTcetce_Orientador: TIntegerField
      FieldName = 'tce_Orientador'
      Visible = False
    end
    object quTceProfessorOrientador: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProfessorOrientador'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceOrientadorCargo: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'OrientadorCargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Visible = False
    end
    object quTceCur_cod: TIntegerField
      FieldName = 'Cur_cod'
      Visible = False
    end
    object quTceTce_RelEstudante: TDateTimeField
      DisplayLabel = 'Rel. Estudante'
      FieldName = 'Tce_RelEstudante'
    end
    object quTceTce_RelSupervisor: TDateTimeField
      DisplayLabel = 'Rel. Supervisor'
      FieldName = 'Tce_RelSupervisor'
    end
    object quTceDTAlteracao: TDateTimeField
      DisplayLabel = 'Alteracao'
      FieldName = 'DTAlteracao'
    end
    object quTceDTAditivo: TDateTimeField
      DisplayLabel = 'Aditivo'
      FieldName = 'DTAditivo'
    end
    object quTcevag_selecao: TStringField
      FieldName = 'vag_selecao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceUltimodia: TDateField
      FieldKind = fkCalculated
      FieldName = 'Ultimodia'
      Calculated = True
    end
    object quTceDTFinal: TDateTimeField
      FieldName = 'DTFinal'
      Visible = False
    end
    object quTceINTERVALOREL: TIntegerField
      FieldName = 'INTERVALOREL'
      Visible = False
    end
  end
  object usTce: TUpdateSQL
    ModifySQL.Strings = (
      'update Tce'
      'set'
      '  Tce_cod = :Tce_cod,'
      '  Tce_data = :Tce_data,'
      '  Est_cod = :Est_cod,'
      '  Tce_estenc = :Tce_estenc,'
      '  Emp_cod = :Emp_cod,'
      '  Tce_tipocont = :Tce_tipocont,'
      '  Vag_cod = :Vag_cod,'
      '  Tce_horarioini1 = :Tce_horarioini1,'
      '  Tce_horariofim1 = :Tce_horariofim1,'
      '  Tce_horarioini2 = :Tce_horarioini2,'
      '  Tce_horariofim2 = :Tce_horariofim2,'
      '  tce_horsabini1 = :tce_horsabini1,'
      '  tce_horsabfim1 = :tce_horsabfim1,'
      '  tce_horsabini2 = :tce_horsabini2,'
      '  tce_horsabfim2 = :tce_horsabfim2,'
      '  Tce_seguro = :Tce_seguro,'
      '  Tce_dataini = :Tce_dataini,'
      '  Tce_datafim = :Tce_datafim,'
      '  Tce_datares = :Tce_datares,'
      '  Tce_bolsa = :Tce_bolsa,'
      '  Tce_tipobolsa = :Tce_tipobolsa,'
      '  Tce_situacao = :Tce_situacao,'
      '  tce_dataret = :tce_dataret,'
      '  tce_datadec = :tce_datadec,'
      '  tce_tothoras = :tce_tothoras,'
      '  tce_avaliacao = :tce_avaliacao,'
      '  tce_segunda = :tce_segunda,'
      '  tce_terca = :tce_terca,'
      '  tce_quarta = :tce_quarta,'
      '  tce_quinta = :tce_quinta,'
      '  tce_sexta = :tce_sexta,'
      '  tce_sabado = :tce_sabado,'
      '  tce_domingo = :tce_domingo,'
      '  tce_EstObrigato = :tce_EstObrigato,'
      '  tce_horsegini1 = :tce_horsegini1,'
      '  tce_horsegfim1 = :tce_horsegfim1,'
      '  tce_horsegini2 = :tce_horsegini2,'
      '  tce_horsegfim2 = :tce_horsegfim2,'
      '  tce_horterini1 = :tce_horterini1,'
      '  tce_horterfim1 = :tce_horterfim1,'
      '  tce_horterini2 = :tce_horterini2,'
      '  tce_horterfim2 = :tce_horterfim2,'
      '  tce_horquaini1 = :tce_horquaini1,'
      '  tce_horquafim1 = :tce_horquafim1,'
      '  tce_horquaini2 = :tce_horquaini2,'
      '  tce_horquafim2 = :tce_horquafim2,'
      '  tce_horquiini1 = :tce_horquiini1,'
      '  tce_horquifim1 = :tce_horquifim1,'
      '  tce_horquiini2 = :tce_horquiini2,'
      '  tce_horquifim2 = :tce_horquifim2,'
      '  tce_horsexini1 = :tce_horsexini1,'
      '  tce_horsexfim1 = :tce_horsexfim1,'
      '  tce_horsexini2 = :tce_horsexini2,'
      '  tce_horsexfim2 = :tce_horsexfim2,'
      '  tce_hordomini1 = :tce_hordomini1,'
      '  tce_hordomfim1 = :tce_hordomfim1,'
      '  tce_hordomini2 = :tce_hordomini2,'
      '  tce_hordomfim2 = :tce_hordomfim2,'
      '  Tce_AuxTransp = :Tce_AuxTransp,'
      '  Tce_AuxTranspValor = :Tce_AuxTranspValor,'
      '  Tce_AuxTranspTexto = :Tce_AuxTranspTexto,'
      '  tce_InterSeg = :tce_InterSeg,'
      '  Func_cod = :Func_cod,'
      '  Tce_Intervalo = :Tce_Intervalo,'
      '  tce_InterTer = :tce_InterTer,'
      '  tce_InterQua = :tce_InterQua,'
      '  tce_InterQui = :tce_InterQui,'
      '  tce_InterDom = :tce_InterDom,'
      '  tce_InterSab = :tce_InterSab,'
      '  tce_InterSex = :tce_InterSex,'
      '  TCE_AuxAlim = :TCE_AuxAlim,'
      '  TCE_AuxAlimAntecipa = :TCE_AuxAlimAntecipa,'
      '  TCE_AuxAlimTipo = :TCE_AuxAlimTipo,'
      '  TCE_AuxAlimtexto = :TCE_AuxAlimtexto,'
      '  TCE_AuxAlimValor = :TCE_AuxAlimValor,'
      '  tce_escala=:tce_escala,'
      '  tce_matricula=:tce_matricula,'
      'Tce_FuncEscolha=:Tce_FuncEscolha,'
      '  emp_cod2=:emp_cod2,'
      '  tce_observacao=:tce_observacao,'
      ' tce_formacao1=:tce_formacao1,'
      ' tce_formacao2=:tce_formacao2,'
      ' tce_area=:tce_area,'
      ' tce_tempo=:tce_tempo,'
      ' tce_registro1=:tce_registro1,'
      ' tce_registro2=:tce_registro2,'
      'tce_orientador=:tce_orientador,'
      'Inst_cod=:inst_cod,'
      'cur_cod=:cur_cod,'
      'Tce_RelEstudante=:Tce_relEstudante,'
      'Tce_RelSupervisor=:Tce_relSupervisor,'
      'INTERVALOREL = :INTERVALOREL '
      'where'
      '  Tce_cod = :OLD_Tce_cod')
    InsertSQL.Strings = (
      'insert into Tce'
      
        '  (Tce_cod, Tce_data, Est_cod, Tce_estenc, Emp_cod, Tce_tipocont' +
        ', Vag_cod, '
      
        '   Tce_horarioini1, Tce_horariofim1, Tce_horarioini2, Tce_horari' +
        'ofim2, '
      
        '   tce_horsabini1, tce_horsabfim1, tce_horsabini2, tce_horsabfim' +
        '2, Tce_seguro, '
      
        '   Tce_dataini, Tce_datafim, Tce_datares, Tce_bolsa, Tce_tipobol' +
        'sa, Tce_situacao, '
      
        '   tce_dataret, tce_datadec, tce_tothoras, tce_avaliacao, tce_se' +
        'gunda, '
      
        '   tce_terca, tce_quarta, tce_quinta, tce_sexta, tce_sabado, tce' +
        '_domingo, '
      
        '   tce_EstObrigato, tce_horsegini1, tce_horsegfim1, tce_horsegin' +
        'i2, tce_horsegfim2, '
      
        '   tce_horterini1, tce_horterfim1, tce_horterini2, tce_horterfim' +
        '2, tce_horquaini1, '
      
        '   tce_horquafim1, tce_horquaini2, tce_horquafim2, tce_horquiini' +
        '1, tce_horquifim1, '
      
        '   tce_horquiini2, tce_horquifim2, tce_horsexini1, tce_horsexfim' +
        '1, tce_horsexini2, '
      
        '   tce_horsexfim2, tce_hordomini1, tce_hordomfim1, tce_hordomini' +
        '2, tce_hordomfim2, '
      
        '   Tce_AuxTransp, Tce_AuxTranspValor, Tce_AuxTranspTexto, tce_In' +
        'terSeg, '
      
        '   Func_cod, Tce_Intervalo, tce_InterTer, tce_InterQua, tce_Inte' +
        'rQui, tce_InterDom, '
      
        '   tce_InterSab, tce_InterSex, TCE_AuxAlim, TCE_AuxAlimAntecipa,' +
        'TCE_AuxAlimTipo,'
      
        '   TCE_AuxAlimtexto,TCE_AuxAlimValor,tce_matricula,tce_escala,em' +
        'p_cod2,Tce_FuncEscolha,tce_observacao,'
      
        '   tce_formacao1,tce_formacao2,tce_area,tce_tempo,tce_registro1,' +
        'tce_registro2,'
      
        '   tce_orientador,inst_cod,cur_cod,Tce_relEstudante,Tce_RelSuper' +
        'visor,INTERVALOREL)'
      'values'
      
        '  (:Tce_cod, :Tce_data, :Est_cod, :Tce_estenc, :Emp_cod, :Tce_ti' +
        'pocont,'
      
        '   :Vag_cod, :Tce_horarioini1, :Tce_horariofim1, :Tce_horarioini' +
        '2, :Tce_horariofim2,'
      
        '   :tce_horsabini1, :tce_horsabfim1, :tce_horsabini2, :tce_horsa' +
        'bfim2,'
      
        '   :Tce_seguro, :Tce_dataini, :Tce_datafim, :Tce_datares, :Tce_b' +
        'olsa, :Tce_tipobolsa,'
      
        '   :Tce_situacao, :tce_dataret, :tce_datadec, :tce_tothoras, :tc' +
        'e_avaliacao,'
      
        '   :tce_segunda, :tce_terca, :tce_quarta, :tce_quinta, :tce_sext' +
        'a, :tce_sabado,'
      
        '   :tce_domingo, :tce_EstObrigato, :tce_horsegini1, :tce_horsegf' +
        'im1, :tce_horsegini2,'
      
        '   :tce_horsegfim2, :tce_horterini1, :tce_horterfim1, :tce_horte' +
        'rini2,'
      
        '   :tce_horterfim2, :tce_horquaini1, :tce_horquafim1, :tce_horqu' +
        'aini2,'
      
        '   :tce_horquafim2, :tce_horquiini1, :tce_horquifim1, :tce_horqu' +
        'iini2,'
      
        '   :tce_horquifim2, :tce_horsexini1, :tce_horsexfim1, :tce_horse' +
        'xini2,'
      
        '   :tce_horsexfim2, :tce_hordomini1, :tce_hordomfim1, :tce_hordo' +
        'mini2,'
      
        '   :tce_hordomfim2, :Tce_AuxTransp, :Tce_AuxTranspValor, :Tce_Au' +
        'xTranspTexto,'
      
        '   :tce_InterSeg, :Func_cod, :Tce_Intervalo, :tce_InterTer, :tce' +
        '_InterQua,'
      
        '   :tce_InterQui, :tce_InterDom, :tce_InterSab, :tce_InterSex, :' +
        'TCE_AuxAlim,'
      
        '   :TCE_AuxAlimAntecipa, :TCE_AuxAlimTipo, :TCE_AuxAlimtexto, :T' +
        'CE_AuxAlimValor,'
      
        '   :tce_matricula,:tce_escala,:emp_cod2,:Tce_FuncEscolha,:tce_ob' +
        'servacao,:tce_formacao1,'
      
        '   :tce_formacao2,:tce_area,:tce_tempo,:tce_registro1,:tce_regis' +
        'tro2,'
      
        '   :tce_orientador,:inst_cod,:cur_cod,:Tce_relEstudante,:Tce_Rel' +
        'Supervisor,:INTERVALOREL)'
      '')
    DeleteSQL.Strings = (
      'delete from Tce'
      'where'
      '  Tce_cod = :OLD_Tce_cod')
    Left = 616
    Top = 232
  end
  object quTceAlteracao: TQuery
    CachedUpdates = True
    AfterInsert = quTceAlteracaoAfterInsert
    OnCalcFields = quTceAlteracaoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  TceAlteracao'
      'where '
      '  tce_cod = :tce_cod'
      'order by'
      '  tal_cod')
    UpdateObject = usTceAlteracao
    Left = 547
    Top = 327
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
    object quTceAlteracaoTce_cod: TIntegerField
      DisplayLabel = 'Tce'
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TceAlteracao.Tce_cod'
    end
    object quTceAlteracaotal_cod: TIntegerField
      DisplayLabel = 'Altera'#231#227'o'
      DisplayWidth = 11
      FieldName = 'tal_cod'
      Origin = 'TALENTPOOL.TceAlteracao.tal_cod'
    end
    object quTceAlteracaoTal_vigencia: TDateTimeField
      DisplayLabel = 'Vig'#234'ncia'
      DisplayWidth = 13
      FieldName = 'Tal_vigencia'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_vigencia'
    end
    object quTceAlteracaoTal_horarioini1: TDateTimeField
      FieldName = 'Tal_horarioini1'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_horarioini1'
      Visible = False
    end
    object quTceAlteracaoTal_horarioini2: TDateTimeField
      FieldName = 'Tal_horarioini2'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_horarioini2'
      Visible = False
    end
    object quTceAlteracaoTal_horariofim1: TDateTimeField
      FieldName = 'Tal_horariofim1'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_horariofim1'
      Visible = False
    end
    object quTceAlteracaoTal_horariofim2: TDateTimeField
      FieldName = 'Tal_horariofim2'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_horariofim2'
      Visible = False
    end
    object quTceAlteracaoTal_novabolsa: TCurrencyField
      DisplayLabel = 'Bolsa'
      DisplayWidth = 13
      FieldName = 'Tal_novabolsa'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_novabolsa'
      Visible = False
      DisplayFormat = '#,###,##0.00'
      EditFormat = '0.00'
    end
    object quTceAlteracaoTal_tipobolsa: TStringField
      FieldName = 'Tal_tipobolsa'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_tipobolsa'
      Visible = False
      Size = 1
    end
    object quTceAlteracaoDescbolsa: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Descbolsa'
      Size = 10
      Calculated = True
    end
    object quTceAlteracaotal_tothoras: TFloatField
      DisplayLabel = 'Total Horas'
      FieldName = 'tal_tothoras'
      Origin = 'TALENTPOOL.TceAlteracao.tal_tothoras'
      DisplayFormat = '0.00'
    end
    object quTceAlteracaotal_retorno: TDateTimeField
      FieldName = 'tal_retorno'
      Origin = 'TALENTPOOL.TceAlteracao.tal_retorno'
      Visible = False
    end
    object quTceAlteracaotal_dataemi: TDateTimeField
      FieldName = 'tal_dataemi'
      Origin = 'TALENTPOOL.TceAlteracao.tal_dataemi'
      Visible = False
    end
    object quTceAlteracaotal_horsabini1: TDateTimeField
      FieldName = 'tal_horsabini1'
      Origin = 'TALENTPOOL.TceAlteracao.tal_horsabini1'
      Visible = False
    end
    object quTceAlteracaotal_horsabfim1: TDateTimeField
      FieldName = 'tal_horsabfim1'
      Origin = 'TALENTPOOL.TceAlteracao.tal_horsabfim1'
      Visible = False
    end
    object quTceAlteracaotal_horsabini2: TDateTimeField
      FieldName = 'tal_horsabini2'
      Origin = 'TALENTPOOL.TceAlteracao.tal_horsabini2'
      Visible = False
    end
    object quTceAlteracaotal_horsabfim2: TDateTimeField
      FieldName = 'tal_horsabfim2'
      Origin = 'TALENTPOOL.TceAlteracao.tal_horsabfim2'
      Visible = False
    end
    object quTceAlteracaotal_segunda: TStringField
      FieldName = 'tal_segunda'
      Origin = 'TALENTPOOL.TceAlteracao.tal_segunda'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_terca: TStringField
      FieldName = 'tal_terca'
      Origin = 'TALENTPOOL.TceAlteracao.tal_terca'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_quarta: TStringField
      FieldName = 'tal_quarta'
      Origin = 'TALENTPOOL.TceAlteracao.tal_quarta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_quinta: TStringField
      FieldName = 'tal_quinta'
      Origin = 'TALENTPOOL.TceAlteracao.tal_quinta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_sexta: TStringField
      FieldName = 'tal_sexta'
      Origin = 'TALENTPOOL.TceAlteracao.tal_sexta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_sabado: TStringField
      FieldName = 'tal_sabado'
      Origin = 'TALENTPOOL.TceAlteracao.tal_sabado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_domingo: TStringField
      FieldName = 'Tal_domingo'
      Origin = 'TALENTPOOL.TceAlteracao.tce_domingo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_horsegini1: TDateTimeField
      FieldName = 'Tal_horsegini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsegini1'
      Visible = False
    end
    object quTceAlteracaoTal_horsegfim1: TDateTimeField
      FieldName = 'Tal_horsegfim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsegfim1'
      Visible = False
    end
    object quTceAlteracaoTal_horsegini2: TDateTimeField
      FieldName = 'Tal_horsegini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsegini2'
      Visible = False
    end
    object quTceAlteracaoTal_horsegfim2: TDateTimeField
      FieldName = 'Tal_horsegfim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsegfim2'
      Visible = False
    end
    object quTceAlteracaoTal_horterini1: TDateTimeField
      FieldName = 'Tal_horterini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horterini1'
      Visible = False
    end
    object quTceAlteracaoTal_horterfim1: TDateTimeField
      FieldName = 'Tal_horterfim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horterfim1'
      Visible = False
    end
    object quTceAlteracaoTal_horterini2: TDateTimeField
      FieldName = 'Tal_horterini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horterini2'
      Visible = False
    end
    object quTceAlteracaoTal_horterfim2: TDateTimeField
      FieldName = 'Tal_horterfim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horterfim2'
      Visible = False
    end
    object quTceAlteracaoTal_horquaini1: TDateTimeField
      FieldName = 'Tal_horquaini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquaini1'
      Visible = False
    end
    object quTceAlteracaoTal_horquafim1: TDateTimeField
      FieldName = 'Tal_horquafim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquafim1'
      Visible = False
    end
    object quTceAlteracaoTal_horquaini2: TDateTimeField
      FieldName = 'Tal_horquaini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquaini2'
      Visible = False
    end
    object quTceAlteracaoTal_horquafim2: TDateTimeField
      FieldName = 'Tal_horquafim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquafim2'
      Visible = False
    end
    object quTceAlteracaoTal_horquiini1: TDateTimeField
      FieldName = 'Tal_horquiini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquiini1'
      Visible = False
    end
    object quTceAlteracaoTal_horquifim1: TDateTimeField
      FieldName = 'Tal_horquifim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquifim1'
      Visible = False
    end
    object quTceAlteracaoTal_horquiini2: TDateTimeField
      FieldName = 'Tal_horquiini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquiini2'
      Visible = False
    end
    object quTceAlteracaoTal_horquifim2: TDateTimeField
      FieldName = 'Tal_horquifim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horquifim2'
      Visible = False
    end
    object quTceAlteracaoTal_horsexini1: TDateTimeField
      FieldName = 'Tal_horsexini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsexini1'
      Visible = False
    end
    object quTceAlteracaoTal_horsexfim1: TDateTimeField
      FieldName = 'Tal_horsexfim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsexfim1'
      Visible = False
    end
    object quTceAlteracaoTal_horsexini2: TDateTimeField
      FieldName = 'Tal_horsexini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsexini2'
      Visible = False
    end
    object quTceAlteracaoTal_horsexfim2: TDateTimeField
      FieldName = 'Tal_horsexfim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_horsexfim2'
      Visible = False
    end
    object quTceAlteracaoTal_hordomini1: TDateTimeField
      FieldName = 'Tal_hordomini1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_hordomini1'
      Visible = False
    end
    object quTceAlteracaoTal_hordomfim1: TDateTimeField
      FieldName = 'Tal_hordomfim1'
      Origin = 'TALENTPOOL.TceAlteracao.tce_hordomfim1'
      Visible = False
    end
    object quTceAlteracaoTal_hordomini2: TDateTimeField
      FieldName = 'Tal_hordomini2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_hordomini2'
      Visible = False
    end
    object quTceAlteracaoTal_hordomfim2: TDateTimeField
      FieldName = 'Tal_hordomfim2'
      Origin = 'TALENTPOOL.TceAlteracao.tce_hordomfim2'
      Visible = False
    end
    object quTceAlteracaoTal_AuxTransp: TStringField
      FieldName = 'Tal_AuxTransp'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxTransp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_AuxTranspValor: TFloatField
      FieldName = 'Tal_AuxTranspValor'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxTranspValor'
      Visible = False
      currency = True
    end
    object quTceAlteracaoFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.TceAlteracao.Func_cod'
      Visible = False
    end
    object quTceAlteracaoTal_Intervalo: TDateTimeField
      FieldName = 'Tal_Intervalo'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Intervalo'
      Visible = False
    end
    object quTceAlteracaotal_Interseg: TDateTimeField
      FieldName = 'tal_Interseg'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Interseg'
      Visible = False
    end
    object quTceAlteracaotal_Interter: TDateTimeField
      FieldName = 'tal_Interter'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Interter'
      Visible = False
    end
    object quTceAlteracaotal_Interqua: TDateTimeField
      FieldName = 'tal_Interqua'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Interqua'
      Visible = False
    end
    object quTceAlteracaotal_Interqui: TDateTimeField
      FieldName = 'tal_Interqui'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Interqui'
      Visible = False
    end
    object quTceAlteracaotal_Intersex: TDateTimeField
      FieldName = 'tal_Intersex'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Intersex'
      Visible = False
    end
    object quTceAlteracaotal_Interdom: TDateTimeField
      FieldName = 'tal_Interdom'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Interdom'
      Visible = False
    end
    object quTceAlteracaoFormacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formacao'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceAlteracaoArea: TStringField
      FieldKind = fkCalculated
      FieldName = 'Area'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceAlteracaoCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAlteracaoTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAlteracaoProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Profissao'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quTceAlteracaoRestricoes: TStringField
      FieldKind = fkCalculated
      FieldName = 'Restricoes'
      Visible = False
      Size = 300
      Calculated = True
    end
    object quTceAlteracaotal_InterSab: TDateTimeField
      FieldName = 'tal_InterSab'
      Origin = 'TALENTPOOL.TceAlteracao.tal_InterSab'
      Visible = False
    end
    object quTceAlteracaoTal_AuxAlim: TStringField
      FieldName = 'Tal_AuxAlim'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxAlim'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_AuxAlimAntecipa: TStringField
      FieldName = 'Tal_AuxAlimAntecipa'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxAlimAntecipa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_AuxAlimTipo: TStringField
      FieldName = 'Tal_AuxAlimTipo'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxAlimTipo'
      Visible = False
      Size = 50
    end
    object quTceAlteracaoTal_AuxAlimtexto: TStringField
      FieldName = 'Tal_AuxAlimtexto'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxAlimtexto'
      Visible = False
      Size = 50
    end
    object quTceAlteracaoTal_AuxAlimValor: TFloatField
      FieldName = 'Tal_AuxAlimValor'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxAlimValor'
      Visible = False
    end
    object quTceAlteracaoTal_Escala: TStringField
      FieldName = 'Tal_Escala'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Escala'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoemp_cod2: TIntegerField
      FieldName = 'emp_cod2'
      Origin = 'TALENTPOOL.TceAlteracao.emp_cod2'
      Visible = False
    end
    object quTceAlteracaoTal_AuxTranspTexto: TMemoField
      FieldName = 'Tal_AuxTranspTexto'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_AuxTranspTexto'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quTceAlteracaoTal_funcEscolha: TIntegerField
      FieldName = 'Tal_funcEscolha'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_funcEscolha'
      Visible = False
    end
    object quTceAlteracaooutraformacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'outraformacao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAlteracaoregistro: TStringField
      FieldKind = fkCalculated
      FieldName = 'registro'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAlteracaoregistro2: TStringField
      FieldKind = fkCalculated
      FieldName = 'registro2'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAlteracaoTal_Jornada: TStringField
      FieldName = 'Tal_Jornada'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Jornada'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_Atividades: TStringField
      FieldName = 'Tal_Atividades'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Atividades'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_Bolsa: TStringField
      FieldName = 'Tal_Bolsa'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Bolsa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaoTal_Prazo: TStringField
      FieldName = 'Tal_Prazo'
      Origin = 'TALENTPOOL.TceAlteracao.Tal_Prazo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_observacao: TStringField
      FieldName = 'tal_observacao'
      Origin = 'TALENTPOOL.TceAlteracao.tal_observacao'
      Visible = False
      Size = 250
    end
    object quTceAlteracaotal_formacao1: TStringField
      FieldName = 'tal_formacao1'
      Origin = 'TALENTPOOL.TceAlteracao.tal_formacao1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_formacao2: TStringField
      FieldName = 'tal_formacao2'
      Origin = 'TALENTPOOL.TceAlteracao.tal_formacao2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_registro1: TStringField
      FieldName = 'tal_registro1'
      Origin = 'TALENTPOOL.TceAlteracao.tal_registro1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_registro2: TStringField
      FieldName = 'tal_registro2'
      Origin = 'TALENTPOOL.TceAlteracao.tal_registro2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_area: TStringField
      FieldName = 'tal_area'
      Origin = 'TALENTPOOL.TceAlteracao.tal_area'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_tempo: TStringField
      FieldName = 'tal_tempo'
      Origin = 'TALENTPOOL.TceAlteracao.tal_tempo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAlteracaotal_Orientador: TIntegerField
      FieldName = 'tal_Orientador'
      Origin = 'TALENTPOOL.TceAlteracao.tal_Orientador'
      Visible = False
    end
    object quTceAlteracaoInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.TceAlteracao.Inst_cod'
      Visible = False
    end
    object quTceAlteracaoCur_cod: TIntegerField
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.TceAlteracao.Cur_cod'
      Visible = False
    end
    object quTceAlteracaoProfessorOrientador: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProfessorOrientador'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAlteracaoOrientadorCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'OrientadorCargo'
      Visible = False
      Size = 60
      Calculated = True
    end
  end
  object dsTceAlteracao: TDataSource
    DataSet = quTceAlteracao
    Left = 480
    Top = 327
  end
  object usTceAlteracao: TUpdateSQL
    ModifySQL.Strings = (
      'update TceAlteracao'
      'set'
      '  Tce_cod = :Tce_cod,'
      '  tal_cod = :tal_cod,'
      '  tal_dataemi = :tal_dataemi,'
      '  Tal_vigencia = :Tal_vigencia,'
      '  Tal_novabolsa = :Tal_novabolsa,'
      '  Tal_tipobolsa = :Tal_tipobolsa,'
      '  Tal_horarioini1 = :Tal_horarioini1,'
      '  Tal_horarioini2 = :Tal_horarioini2,'
      '  Tal_horariofim1 = :Tal_horariofim1,'
      '  Tal_horariofim2 = :Tal_horariofim2,'
      '  tal_horsabini1 = :tal_horsabini1,'
      '  tal_horsabfim1 = :tal_horsabfim1,'
      '  tal_horsabini2 = :tal_horsabini2,'
      '  tal_horsabfim2 = :tal_horsabfim2,'
      '  tal_tothoras = :tal_tothoras,'
      '  tal_retorno = :tal_retorno,'
      '  tal_segunda = :tal_segunda,'
      '  tal_terca = :tal_terca,'
      '  tal_quarta = :tal_quarta,'
      '  tal_quinta = :tal_quinta,'
      '  tal_sexta = :tal_sexta,'
      '  tal_sabado = :tal_sabado,'
      '  Tal_domingo = :Tal_domingo,'
      '  Tal_horsegini1 = :Tal_horsegini1,'
      '  Tal_horsegfim1 = :Tal_horsegfim1,'
      '  Tal_horsegini2 = :Tal_horsegini2,'
      '  Tal_horsegfim2 = :Tal_horsegfim2,'
      '  Tal_horterini1 = :Tal_horterini1,'
      '  Tal_horterfim1 = :Tal_horterfim1,'
      '  Tal_horterini2 = :Tal_horterini2,'
      '  Tal_horterfim2 = :Tal_horterfim2,'
      '  Tal_horquaini1 = :Tal_horquaini1,'
      '  Tal_horquafim1 = :Tal_horquafim1,'
      '  Tal_horquaini2 = :Tal_horquaini2,'
      '  Tal_horquafim2 = :Tal_horquafim2,'
      '  Tal_horquiini1 = :Tal_horquiini1,'
      '  Tal_horquifim1 = :Tal_horquifim1,'
      '  Tal_horquiini2 = :Tal_horquiini2,'
      '  Tal_horquifim2 = :Tal_horquifim2,'
      '  Tal_horsexini1 = :Tal_horsexini1,'
      '  Tal_horsexfim1 = :Tal_horsexfim1,'
      '  Tal_horsexini2 = :Tal_horsexini2,'
      '  Tal_horsexfim2 = :Tal_horsexfim2,'
      '  Tal_hordomini1 = :Tal_hordomini1,'
      '  Tal_hordomfim1 = :Tal_hordomfim1,'
      '  Tal_hordomini2 = :Tal_hordomini2,'
      '  Tal_hordomfim2 = :Tal_hordomfim2,'
      '  Tal_AuxTransp = :Tal_AuxTransp,'
      '  Tal_AuxTranspTexto = :Tal_AuxTranspTexto,'
      '  Tal_AuxTranspValor = :Tal_AuxTranspValor,'
      '  Tal_AuxAlim = :Tal_AuxAlim,'
      '  Tal_AuxAlimAntecipa = :Tal_AuxAlimAntecipa,'
      '  Tal_AuxAlimTipo = :Tal_AuxAlimTipo,'
      '  Tal_AuxAlimtexto = :Tal_AuxAlimtexto,'
      '  Tal_AuxAlimValor = :Tal_AuxAlimValor,'
      '  Func_cod = :Func_cod,'
      '  Tal_Intervalo = :Tal_Intervalo,'
      '  tal_InterSab = :tal_InterSab,'
      '  tal_Interseg = :tal_Interseg,'
      '  tal_Interter = :tal_Interter,'
      '  tal_Interqua = :tal_Interqua,'
      '  tal_Interqui = :tal_Interqui,'
      '  tal_Intersex = :tal_Intersex,'
      '  tal_Interdom = :tal_Interdom,'
      '  Tal_Escala = :Tal_Escala,'
      '  emp_cod2 = :emp_cod2,'
      '  tal_funcEscolha = :tal_funcEscolha,'
      '  tal_Jornada = :tal_Jornada,'
      '  tal_Atividades = :tal_Atividades,'
      '  tal_Bolsa = :tal_Bolsa,'
      '  tal_Prazo = :tal_Prazo,'
      '  tal_observacao = :tal_observacao,'
      '  tal_formacao1 = :tal_formacao1,'
      '  tal_formacao2 = :tal_formacao2,'
      '  tal_registro1 = :tal_registro1,'
      '  tal_registro2 = :tal_registro2,'
      '  tal_area = :tal_area,'
      '  tal_tempo = :tal_tempo,'
      '  tal_Orientador = :tal_Orientador,'
      '  Inst_cod = :Inst_cod,'
      '  Cur_cod = :Cur_cod'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  tal_cod = :OLD_tal_cod')
    InsertSQL.Strings = (
      'insert into TceAlteracao'
      
        '  (Tce_cod, tal_cod, tal_dataemi, Tal_vigencia, Tal_novabolsa, T' +
        'al_tipobolsa, '
      
        '   Tal_horarioini1, Tal_horarioini2, Tal_horariofim1, Tal_horari' +
        'ofim2, '
      
        '   tal_horsabini1, tal_horsabfim1, tal_horsabini2, tal_horsabfim' +
        '2, tal_tothoras, '
      
        '   tal_retorno, tal_segunda, tal_terca, tal_quarta, tal_quinta, ' +
        'tal_sexta, '
      
        '   tal_sabado, Tal_domingo, Tal_horsegini1, Tal_horsegfim1, Tal_' +
        'horsegini2, '
      
        '   Tal_horsegfim2, Tal_horterini1, Tal_horterfim1, Tal_horterini' +
        '2, Tal_horterfim2, '
      
        '   Tal_horquaini1, Tal_horquafim1, Tal_horquaini2, Tal_horquafim' +
        '2, Tal_horquiini1, '
      
        '   Tal_horquifim1, Tal_horquiini2, Tal_horquifim2, Tal_horsexini' +
        '1, Tal_horsexfim1, '
      
        '   Tal_horsexini2, Tal_horsexfim2, Tal_hordomini1, Tal_hordomfim' +
        '1, Tal_hordomini2, '
      
        '   Tal_hordomfim2, Tal_AuxTransp, Tal_AuxTranspTexto, Tal_AuxTra' +
        'nspValor, '
      
        '   Tal_AuxAlim, Tal_AuxAlimAntecipa, Tal_AuxAlimTipo, Tal_AuxAli' +
        'mtexto, '
      
        '   Tal_AuxAlimValor, Func_cod, Tal_Intervalo, tal_InterSab, tal_' +
        'Interseg, '
      
        '   tal_Interter, tal_Interqua, tal_Interqui, tal_Intersex, tal_I' +
        'nterdom, '
      
        '   Tal_Escala, emp_cod2, tal_funcEscolha, tal_Jornada, tal_Ativi' +
        'dades, '
      
        '   tal_Bolsa, tal_Prazo, tal_observacao, tal_formacao1, tal_form' +
        'acao2, '
      
        '   tal_registro1, tal_registro2, tal_area, tal_tempo, tal_Orient' +
        'ador, Inst_cod, '
      '   Cur_cod)'
      'values'
      
        '  (:Tce_cod, :tal_cod, :tal_dataemi, :Tal_vigencia, :Tal_novabol' +
        'sa, :Tal_tipobolsa, '
      
        '   :Tal_horarioini1, :Tal_horarioini2, :Tal_horariofim1, :Tal_ho' +
        'rariofim2, '
      
        '   :tal_horsabini1, :tal_horsabfim1, :tal_horsabini2, :tal_horsa' +
        'bfim2, '
      
        '   :tal_tothoras, :tal_retorno, :tal_segunda, :tal_terca, :tal_q' +
        'uarta, '
      
        '   :tal_quinta, :tal_sexta, :tal_sabado, :Tal_domingo, :Tal_hors' +
        'egini1, '
      
        '   :Tal_horsegfim1, :Tal_horsegini2, :Tal_horsegfim2, :Tal_horte' +
        'rini1, '
      
        '   :Tal_horterfim1, :Tal_horterini2, :Tal_horterfim2, :Tal_horqu' +
        'aini1, '
      
        '   :Tal_horquafim1, :Tal_horquaini2, :Tal_horquafim2, :Tal_horqu' +
        'iini1, '
      
        '   :Tal_horquifim1, :Tal_horquiini2, :Tal_horquifim2, :Tal_horse' +
        'xini1, '
      
        '   :Tal_horsexfim1, :Tal_horsexini2, :Tal_horsexfim2, :Tal_hordo' +
        'mini1, '
      
        '   :Tal_hordomfim1, :Tal_hordomini2, :Tal_hordomfim2, :Tal_AuxTr' +
        'ansp, :Tal_AuxTranspTexto, '
      
        '   :Tal_AuxTranspValor, :Tal_AuxAlim, :Tal_AuxAlimAntecipa, :Tal' +
        '_AuxAlimTipo, '
      
        '   :Tal_AuxAlimtexto, :Tal_AuxAlimValor, :Func_cod, :Tal_Interva' +
        'lo, :tal_InterSab, '
      
        '   :tal_Interseg, :tal_Interter, :tal_Interqua, :tal_Interqui, :' +
        'tal_Intersex, '
      
        '   :tal_Interdom, :Tal_Escala, :emp_cod2, :tal_funcEscolha, :tal' +
        '_Jornada, '
      
        '   :tal_Atividades, :tal_Bolsa, :tal_Prazo, :tal_observacao, :ta' +
        'l_formacao1, '
      
        '   :tal_formacao2, :tal_registro1, :tal_registro2, :tal_area, :t' +
        'al_tempo, '
      '   :tal_Orientador, :Inst_cod, :Cur_cod)')
    DeleteSQL.Strings = (
      'delete from TceAlteracao'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  tal_cod = :OLD_tal_cod')
    Left = 616
    Top = 327
  end
  object dsTceAditivo: TDataSource
    DataSet = quTceAditivo
    Left = 480
    Top = 280
  end
  object quTceAditivo: TQuery
    CachedUpdates = True
    OnCalcFields = quTceAditivoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  TceAditivo'
      'where '
      '  tce_cod = :tce_cod'
      'order by'
      '  prg_cod')
    UpdateObject = usTceAditivo
    Left = 547
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
    object quTceAditivoTce_cod: TIntegerField
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TceAditivo.Tce_cod'
      Visible = False
    end
    object quTceAditivoPrg_cod: TIntegerField
      DisplayLabel = 'TA'
      DisplayWidth = 15
      FieldName = 'Prg_cod'
      Origin = 'TALENTPOOL.TceAditivo.Prg_cod'
    end
    object quTceAditivoTpr_dataini: TDateTimeField
      DisplayLabel = 'Data in'#237'cio'
      DisplayWidth = 20
      FieldName = 'Tpr_dataini'
      Origin = 'TALENTPOOL.TceAditivo.Tpr_dataini'
    end
    object quTceAditivoTpr_datafim: TDateTimeField
      DisplayLabel = 'Data t'#233'rmino'
      DisplayWidth = 20
      FieldName = 'Tpr_datafim'
      Origin = 'TALENTPOOL.TceAditivo.Tpr_datafim'
    end
    object quTceAditivotpr_retorno: TDateTimeField
      DisplayLabel = 'Retorno'
      FieldName = 'tpr_retorno'
      Origin = 'TALENTPOOL.TceAditivo.tpr_retorno'
    end
    object quTceAditivotpr_dataemi: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'tpr_dataemi'
      Origin = 'TALENTPOOL.TceAditivo.tpr_dataemi'
    end
    object quTceAditivoFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.TceAditivo.Func_cod'
      Visible = False
    end
    object quTceAditivoFormacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formacao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoArea: TStringField
      FieldKind = fkCalculated
      FieldName = 'Area'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAditivoProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Profissao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoformacao2: TStringField
      FieldKind = fkCalculated
      FieldName = 'formacao2'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoTpr_funcEscolha: TIntegerField
      FieldName = 'Tpr_funcEscolha'
      Origin = 'TALENTPOOL.TceAditivo.Tpr_funcEscolha'
      Visible = False
    end
    object quTceAditivoemp_cod2: TIntegerField
      FieldName = 'emp_cod2'
      Origin = 'TALENTPOOL.TceAditivo.emp_cod2'
      Visible = False
    end
    object quTceAditivotpr_observacao: TStringField
      FieldName = 'tpr_observacao'
      Origin = 'TALENTPOOL.TceAditivo.tpr_observacao'
      Visible = False
      Size = 250
    end
    object quTceAditivotpr_formacao1: TStringField
      FieldName = 'tpr_formacao1'
      Origin = 'TALENTPOOL.TceAditivo.tpr_formacao1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivotpr_formacao2: TStringField
      FieldName = 'tpr_formacao2'
      Origin = 'TALENTPOOL.TceAditivo.tpr_formacao2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivotpr_registro1: TStringField
      FieldName = 'tpr_registro1'
      Origin = 'TALENTPOOL.TceAditivo.tpr_registro1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivotpr_registro2: TStringField
      FieldName = 'tpr_registro2'
      Origin = 'TALENTPOOL.TceAditivo.tpr_registro2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivotpr_area: TStringField
      FieldName = 'tpr_area'
      Origin = 'TALENTPOOL.TceAditivo.tpr_area'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivotpr_tempo: TStringField
      FieldName = 'tpr_tempo'
      Origin = 'TALENTPOOL.TceAditivo.tpr_tempo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTceAditivoRegistro: TStringField
      FieldKind = fkCalculated
      FieldName = 'Registro'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAditivoRegistro2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Registro2'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quTceAditivoinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.TceAditivo.inst_cod'
      Visible = False
    end
    object quTceAditivotpr_orientador: TIntegerField
      FieldName = 'tpr_orientador'
      Origin = 'TALENTPOOL.TceAditivo.tpr_orientador'
      Visible = False
    end
    object quTceAditivocur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.TceAditivo.cur_cod'
      Visible = False
    end
    object quTceAditivoProfessorOrientador: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProfessorOrientador'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quTceAditivoOrientadorCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'OrientadorCargo'
      Visible = False
      Size = 60
      Calculated = True
    end
  end
  object usTceAditivo: TUpdateSQL
    ModifySQL.Strings = (
      'update TceAditivo'
      'set'
      '  Tce_cod = :Tce_cod,'
      '  Prg_cod = :Prg_cod,'
      '  tpr_dataemi = :tpr_dataemi,'
      '  Tpr_dataini = :Tpr_dataini,'
      '  Tpr_datafim = :Tpr_datafim,'
      '  tpr_retorno = :tpr_retorno,'
      '  Func_cod = :Func_cod,'
      '  emp_cod2 = :emp_cod2,'
      '  Tpr_funcEscolha = :Tpr_funcEscolha,'
      '  Tpr_observacao = :Tpr_observacao,'
      '  tpr_formacao1 = :tpr_formacao1,'
      '  tpr_formacao2 = :tpr_formacao2,'
      '  tpr_registro1 = :tpr_registro1,'
      '  tpr_registro2 = :tpr_registro2,'
      '  tpr_area = :tpr_area,'
      '  tpr_tempo = :tpr_tempo,'
      '  inst_cod = :inst_cod,'
      '  tpr_orientador = :tpr_orientador,'
      '  cur_cod = :cur_cod'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  Prg_cod = :OLD_Prg_cod')
    InsertSQL.Strings = (
      'insert into TceAditivo'
      
        '  (Tce_cod, Prg_cod, tpr_dataemi, Tpr_dataini, Tpr_datafim, tpr_' +
        'retorno, '
      
        '   Func_cod, emp_cod2, Tpr_funcEscolha, Tpr_observacao, tpr_form' +
        'acao1, '
      
        '   tpr_formacao2, tpr_registro1, tpr_registro2, tpr_area, tpr_te' +
        'mpo, inst_cod, '
      '   tpr_orientador, cur_cod)'
      'values'
      
        '  (:Tce_cod, :Prg_cod, :tpr_dataemi, :Tpr_dataini, :Tpr_datafim,' +
        ' :tpr_retorno, '
      
        '   :Func_cod, :emp_cod2, :Tpr_funcEscolha, :Tpr_observacao, :tpr' +
        '_formacao1, '
      
        '   :tpr_formacao2, :tpr_registro1, :tpr_registro2, :tpr_area, :t' +
        'pr_tempo, '
      '   :inst_cod, :tpr_orientador, :cur_cod)')
    DeleteSQL.Strings = (
      'delete from TceAditivo'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  Prg_cod = :OLD_Prg_cod')
    Left = 616
    Top = 280
  end
  object quEstEmp: TQuery
    OnCalcFields = quEstEmpCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '        e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.i' +
        'nst_nome, e.est_bairro,'
      
        '        e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.e' +
        'fu_nome emp_nomerespcomp,'
      '        e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, '
      
        '        t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao,' +
        ' t.tce_datares,'
      
        '       Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,N' +
        'ull) as tpr_datafim, e.est_pgtolib, i.inst_nivel,'
      
        '       (select top 1 tal_dataemi from tcealteracao where tce_cod' +
        ' = t.tce_cod order by tal_cod desc ) DTAlteracao'
      '     from'
      
        '       tce t, estudante e, Empresa m, Instituicao i, Curso C, Em' +
        'pfuncionario EF'
      '     where'
      '       e.inst_cod = i.inst_cod and'
      '       e.cur_cod  = c.cur_cod and'
      '       t.est_cod = e.est_cod and'
      '       t.emp_cod = m.emp_cod and   '
      '       t.tce_situacao = '#39'0'#39' and '
      '       161 = ef.emp_cod and'
      '       4 = ef.func_cod and '
      '       t.emp_cod = 161')
    Left = 547
    Top = 625
    object quEstEmptce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object quEstEmpest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quEstEmpest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 31
      FieldName = 'est_nome'
      Size = 50
    end
    object quEstEmpemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 35
      FieldName = 'emp_nome'
      Visible = False
      Size = 100
    end
    object quEstEmptce_dataini: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 11
      FieldName = 'tce_dataini'
    end
    object quEstEmptce_datafim: TDateTimeField
      DisplayLabel = 'Fim'
      DisplayWidth = 11
      FieldName = 'tce_datafim'
    end
    object quEstEmptce_situacao: TStringField
      FieldName = 'tce_situacao'
      Visible = False
      Size = 1
    end
    object quEstEmptpr_dataini: TDateTimeField
      DisplayLabel = 'In'#237'cio Pror.'
      DisplayWidth = 11
      FieldName = 'tpr_dataini'
    end
    object quEstEmptpr_datafim: TDateTimeField
      DisplayLabel = 'Fim Pror.'
      DisplayWidth = 11
      FieldName = 'tpr_datafim'
    end
    object quEstEmpCPFFormatado: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CPFFormatado'
      Visible = False
      Calculated = True
    end
    object quEstEmpest_cidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'est_cidade'
      Visible = False
      Size = 255
    end
    object quEstEmpDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Size = 50
      Calculated = True
    end
    object quEstEmpemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Visible = False
      Size = 10
    end
    object quEstEmpemp_nomerespcomp: TStringField
      FieldName = 'emp_nomerespcomp'
      Visible = False
      Size = 50
    end
    object quEstEmptce_datares: TDateTimeField
      FieldName = 'tce_datares'
      Visible = False
    end
    object quEstEmpest_pgtolib: TStringField
      DisplayWidth = 2
      FieldName = 'est_pgtolib'
      Visible = False
      Size = 2
    end
    object quEstEmpDescLiberacao: TStringField
      DisplayLabel = 'Documentos'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'DescLiberacao'
      Size = 35
      Calculated = True
    end
    object quEstEmpest_endereco: TStringField
      FieldName = 'est_endereco'
      Visible = False
      Size = 255
    end
    object quEstEmpest_dtnasc: TDateTimeField
      FieldName = 'est_dtnasc'
      Visible = False
    end
    object quEstEmpinst_nome: TStringField
      DisplayLabel = 'Instituicao'
      FieldName = 'inst_nome'
      Size = 255
    end
    object quEstEmpest_bairro: TStringField
      FieldName = 'est_bairro'
      Visible = False
      Size = 255
    end
    object quEstEmpest_fone1: TStringField
      FieldName = 'est_fone1'
      Visible = False
      Size = 255
    end
    object quEstEmpinst_nivel: TStringField
      FieldName = 'inst_nivel'
      Visible = False
      Size = 255
    end
    object quEstEmpIdade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Visible = False
      Size = 15
      Calculated = True
    end
    object quEstEmpemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Visible = False
    end
    object quEstEmpest_cpf: TStringField
      FieldName = 'est_cpf'
      Visible = False
      Size = 255
    end
    object quEstEmpcur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Size = 255
    end
    object quEstEmpSituacao: TIntegerField
      FieldName = 'Situacao'
      Visible = False
    end
    object quEstEmpLei: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lei'
      Size = 25
      Calculated = True
    end
    object quEstEmpGrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grupo'
      Calculated = True
    end
    object quEstEmpTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Size = 30
      Calculated = True
    end
    object quEstEmpDtAlteracao: TDateField
      DisplayLabel = 'Dt. Altera'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'DtAlteracao'
      Calculated = True
    end
  end
  object quEmp: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select emp_cod, emp_nome from empresa')
    Left = 1033
    Top = 275
    object quEmpemp_cod: TIntegerField
      FieldName = 'emp_cod'
    end
    object quEmpemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 100
    end
  end
  object quEst: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select E.*, I.inst_nome, C.cur_nome'
      'from Estudante E, Instituicao I, Curso C'
      'where e.est_cod = :est_cod'
      'and E.Inst_cod = I.inst_cod'
      'and E.cur_Cod = C.cur_Cod')
    Left = 616
    Top = 624
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quEstEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.Estudante.Est_cod'
    end
    object quEstEst_dtinc: TDateTimeField
      FieldName = 'Est_dtinc'
      Origin = 'TALENTPOOL.Estudante.Est_dtinc'
    end
    object quEstEst_nome: TStringField
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.Estudante.Est_nome'
      Size = 50
    end
    object quEstEst_dtnasc: TDateTimeField
      FieldName = 'Est_dtnasc'
      Origin = 'TALENTPOOL.Estudante.Est_dtnasc'
    end
    object quEstEst_rg: TStringField
      FieldName = 'Est_rg'
      Origin = 'TALENTPOOL.Estudante.Est_rg'
    end
    object quEstEst_cpf: TStringField
      FieldName = 'Est_cpf'
      Origin = 'TALENTPOOL.Estudante.Est_cpf'
      Size = 11
    end
    object quEstEst_sexo: TStringField
      FieldName = 'Est_sexo'
      Origin = 'TALENTPOOL.Estudante.Est_sexo'
      Size = 1
    end
    object quEstEst_endereco: TStringField
      FieldName = 'Est_endereco'
      Origin = 'TALENTPOOL.Estudante.Est_endereco'
      Size = 50
    end
    object quEstEst_bairro: TStringField
      FieldName = 'Est_bairro'
      Origin = 'TALENTPOOL.Estudante.Est_bairro'
      Size = 30
    end
    object quEstEst_cidade: TStringField
      FieldName = 'Est_cidade'
      Origin = 'TALENTPOOL.Estudante.Est_cidade'
      Size = 30
    end
    object quEstEst_estado: TStringField
      FieldName = 'Est_estado'
      Origin = 'TALENTPOOL.Estudante.Est_estado'
      Size = 2
    end
    object quEstEst_cep: TStringField
      FieldName = 'Est_cep'
      Origin = 'TALENTPOOL.Estudante.Est_cep'
      Size = 8
    end
    object quEstEst_ctpsnum: TStringField
      FieldName = 'Est_ctpsnum'
      Origin = 'TALENTPOOL.Estudante.Est_ctpsnum'
    end
    object quEstEst_ctpsserie: TStringField
      FieldName = 'Est_ctpsserie'
      Origin = 'TALENTPOOL.Estudante.Est_ctpsserie'
      Size = 10
    end
    object quEstEst_email: TStringField
      FieldName = 'Est_email'
      Origin = 'TALENTPOOL.Estudante.Est_email'
      Size = 50
    end
    object quEstEst_fone1: TStringField
      FieldName = 'Est_fone1'
      Origin = 'TALENTPOOL.Estudante.Est_fone1'
      Size = 15
    end
    object quEstEst_fone2: TStringField
      FieldName = 'Est_fone2'
      Origin = 'TALENTPOOL.Estudante.Est_fone2'
      Size = 15
    end
    object quEstEst_recado: TStringField
      FieldName = 'Est_recado'
      Origin = 'TALENTPOOL.Estudante.Est_recado'
      Size = 15
    end
    object quEstEst_nomerecado: TStringField
      FieldName = 'Est_nomerecado'
      Origin = 'TALENTPOOL.Estudante.Est_nomerecado'
      Size = 30
    end
    object quEstEst_estadocivil: TStringField
      FieldName = 'Est_estadocivil'
      Origin = 'TALENTPOOL.Estudante.Est_estadocivil'
    end
    object quEstEst_fumante: TStringField
      FieldName = 'Est_fumante'
      Origin = 'TALENTPOOL.Estudante.Est_fumante'
      Size = 1
    end
    object quEstEst_religiao: TStringField
      FieldName = 'Est_religiao'
      Origin = 'TALENTPOOL.Estudante.Est_religiao'
    end
    object quEstest_situacao: TStringField
      FieldName = 'est_situacao'
      Origin = 'TALENTPOOL.Estudante.est_situacao'
      Size = 1
    end
    object quEstinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.Estudante.inst_cod'
    end
    object quEstinst_nome: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.Estudante.inst_nome'
      Size = 100
    end
    object quEstcur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.Estudante.cur_cod'
    end
    object quEstcur_nome: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Estudante.cur_nome'
      Size = 80
    end
    object quEstpcu_anoatual: TSmallintField
      FieldName = 'pcu_anoatual'
      Origin = 'TALENTPOOL.Estudante.pcu_anoatual'
    end
    object quEstpcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Origin = 'TALENTPOOL.Estudante.pcu_peratual'
      Size = 1
    end
    object quEstpcu_turno: TStringField
      FieldName = 'pcu_turno'
      Origin = 'TALENTPOOL.Estudante.pcu_turno'
      Size = 1
    end
    object quEstest_pgtolib: TStringField
      FieldName = 'est_pgtolib'
      Origin = 'TALENTPOOL.Estudante.est_pgtolib'
      Size = 1
    end
    object quEstpcu_vestib: TStringField
      FieldName = 'pcu_vestib'
      Origin = 'TALENTPOOL.Estudante.pcu_vestib'
      Size = 1
    end
  end
  object dsEstEmp: TDataSource
    DataSet = quEstEmp
    Left = 480
    Top = 623
  end
  object quTceAdit: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  max(tpr_dataini) as MaiorIni, '
      '  max(tpr_datafim) as MaiorFim'
      'from'
      '  TceAditivo'
      'where '
      '  tce_cod = :tce_cod')
    Left = 1035
    Top = 510
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
    object quTceAditMaiorIni: TDateTimeField
      FieldName = 'MaiorIni'
    end
    object quTceAditMaiorFim: TDateTimeField
      FieldName = 'MaiorFim'
    end
  end
  object quVerEsc: TQuery
    OnCalcFields = quVerEscCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  e.est_nome, i.inst_nome, e.pcu_peratual, e.pcu_anoatual, c.cur' +
        '_nome,'
      '  m.emp_nome, i.inst_cidade, '
      
        '  (select count(*) from Tce t, Estudante e1 where t.est_cod = e1' +
        '.est_cod and '
      
        '   e1.inst_cod = i.inst_cod and t.tce_situacao <> '#39'7'#39') as TotEst' +
        'agiarios'
      'from'
      '  Tce t, instituicao i, estudante e, curso c, empresa m'
      'where'
      '  t.est_cod = e.est_cod and'
      '  e.inst_cod = i.inst_cod and'
      '  e.cur_cod = c.cur_cod and'
      '  t.emp_cod = m.emp_cod and'
      '  i.inst_cod = :inst_cod and'
      '  t.tce_situacao <> '#39'7'#39
      'order by'
      '  e.est_nome'
      ' '
      ' '
      ' ')
    Left = 1220
    Top = 263
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quVerEscest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 28
      FieldName = 'est_nome'
      Size = 50
    end
    object quVerEsccur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 30
      FieldName = 'cur_nome'
      Size = 80
    end
    object quVerEscinst_nome: TStringField
      DisplayWidth = 96
      FieldName = 'inst_nome'
      Visible = False
      Size = 100
    end
    object quVerEscSemestre: TStringField
      DisplayLabel = 'Ano / Per'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Semestre'
      Size = 12
      Calculated = True
    end
    object quVerEscpcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Visible = False
      Size = 1
    end
    object quVerEscpcu_anoatual: TIntegerField
      FieldName = 'pcu_anoatual'
      Visible = False
    end
    object quVerEscemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 33
      FieldName = 'emp_nome'
      Size = 100
    end
    object quVerEscTotEstagiarios: TIntegerField
      FieldName = 'TotEstagiarios'
      Visible = False
    end
    object quVerEscinst_cidade: TStringField
      FieldName = 'inst_cidade'
      Visible = False
      Size = 50
    end
  end
  object dsVerEsc: TDataSource
    DataSet = quVerEsc
    Left = 1216
    Top = 311
  end
  object quSeguroInc: TQuery
    OnCalcFields = quSeguroIncCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  e.est_cod, e.est_nome, e.est_cpf, m.emp_nome, t.tce_cod, '
      '  t.tce_dataini, t.tce_datafim, t.tce_situacao, e.est_dtnasc, '
      '  e.est_conta,e.est_agencia,e.est_banco,e.est_rg,'
      '  (select count(*) from Tce where tce_situacao = '#39'0'#39' and'
      '   tce_dataini between :data1 and :data2) as TotEstagiarios'
      'from '
      '  tce t, estudante e, Empresa m'
      'where'
      '  t.est_cod = e.est_cod and '
      '  t.emp_cod = m.emp_cod and '
      '  (t.tce_dataini between :data1 and :data2) and '
      '  t.tce_situacao = '#39'0'#39
      'order by'
      '  e.est_nome'
      ' ')
    Left = 899
    Top = 647
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quSeguroInctce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object quSeguroIncest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quSeguroIncest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 35
      FieldName = 'est_nome'
      Size = 50
    end
    object quSeguroIncest_rg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'est_rg'
      Visible = False
    end
    object quSeguroIncCpfFormatado: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'CpfFormatado'
      Calculated = True
    end
    object quSeguroIncemp_nome: TStringField
      FieldName = 'emp_nome'
      Visible = False
      Size = 150
    end
    object quSeguroIncest_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'est_banco'
      Visible = False
      Size = 30
    end
    object quSeguroIncest_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'est_agencia'
      Visible = False
      Size = 15
    end
    object quSeguroIncest_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'est_conta'
      Visible = False
      Size = 15
    end
    object quSeguroInctce_dataini: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 10
      FieldName = 'tce_dataini'
    end
    object quSeguroInctce_datafim: TDateTimeField
      DisplayLabel = 'Fim'
      DisplayWidth = 10
      FieldName = 'tce_datafim'
    end
    object quSeguroInctce_situacao: TStringField
      FieldName = 'tce_situacao'
      Visible = False
      Size = 1
    end
    object quSeguroIncest_dtnasc: TDateTimeField
      DisplayLabel = 'Data Nasc.'
      DisplayWidth = 10
      FieldName = 'est_dtnasc'
    end
    object quSeguroIncTotEstagiarios: TIntegerField
      FieldName = 'TotEstagiarios'
      Visible = False
    end
    object quSeguroIncest_cpf: TStringField
      FieldName = 'est_cpf'
      Visible = False
      Size = 11
    end
  end
  object dsSeguroInc: TDataSource
    DataSet = quSeguroInc
    Left = 969
    Top = 639
  end
  object quSeguroExc: TQuery
    OnCalcFields = quSeguroExcCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, m.em' +
        'p_nome,e.est_conta,e.est_agencia,e.est_banco,'
      
        '  t.tce_dataini, t.tce_datares tce_datafim, t.tce_situacao, e.es' +
        't_dtnasc,e.est_rg,'
      '  (select count(*) from Tce where'
      '   tce_datares between :data1 and :data2) as TotEstagiarios'
      'from'
      '  tce t, Estudante e, Empresa m'
      'where'
      '  t.est_cod = e.est_cod and'
      '  t.tce_datares between :data1 and :data2 and'
      ' m.emp_cod = t.emp_cod'
      'order by'
      '  e.est_nome')
    Left = 131
    Top = 654
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object IntegerField2: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 32
      FieldName = 'est_nome'
      Size = 50
    end
    object quSeguroExcest_rg: TStringField
      DisplayLabel = 'Rg'
      FieldName = 'est_rg'
      Visible = False
    end
    object quSeguroExcCPFFormatado: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'CPFFormatado'
      Calculated = True
    end
    object quSeguroExcemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 32
      FieldName = 'emp_nome'
      Size = 150
    end
    object quSeguroExcest_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'est_banco'
      Visible = False
      Size = 30
    end
    object quSeguroExcest_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'est_agencia'
      Visible = False
      Size = 15
    end
    object quSeguroExcest_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'est_conta'
      Visible = False
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 10
      FieldName = 'tce_dataini'
    end
    object quSeguroExctce_datares: TDateTimeField
      DisplayLabel = 'Fim'
      DisplayWidth = 10
      FieldName = 'tce_datafim'
    end
    object quSeguroExctce_situacao: TStringField
      FieldName = 'tce_situacao'
      Visible = False
      Size = 255
    end
    object quSeguroExcest_dtnasc: TDateTimeField
      DisplayLabel = 'Data Nasc.'
      DisplayWidth = 10
      FieldName = 'est_dtnasc'
    end
    object quSeguroExcTotEstagiarios: TIntegerField
      FieldName = 'TotEstagiarios'
      Visible = False
    end
    object quSeguroExcest_cpf: TStringField
      FieldName = 'est_cpf'
      Visible = False
      Size = 11
    end
    object quSeguroExcest_email: TStringField
      FieldName = 'est_email'
      Visible = False
      Size = 50
    end
  end
  object dsSeguroExc: TDataSource
    DataSet = quSeguroExc
    Left = 65
    Top = 654
  end
  object dsFatura: TDataSource
    DataSet = quFatura
    Left = 272
    Top = 380
  end
  object quFatura: TQuery
    CachedUpdates = True
    OnCalcFields = quFaturaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select F.*, e.emp_nome'
      'from Fatura F, Empresa E'
      'where F.emp_Cod = E.emp_cod'
      'order by f.fat_numero desc')
    UpdateObject = usfatura
    Left = 336
    Top = 375
    object quFaturafat_numero: TIntegerField
      DisplayLabel = 'Fatura'
      DisplayWidth = 8
      FieldName = 'fat_numero'
      Origin = 'TALENTPOOL.Fatura.fat_numero'
    end
    object quFaturafat_ano: TSmallintField
      DisplayLabel = 'Ano'
      DisplayWidth = 4
      FieldName = 'fat_ano'
      Origin = 'TALENTPOOL.Fatura.fat_ano'
    end
    object quFaturafat_mes: TSmallintField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 3
      FieldName = 'fat_mes'
      Origin = 'TALENTPOOL.Fatura.fat_mes'
    end
    object quFaturaemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Origin = 'TALENTPOOL.Fatura.emp_cod'
      Visible = False
    end
    object quFaturaemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 37
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.Fatura.emp_nome'
      Size = 100
    end
    object quFaturafat_totgeral: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'fat_totgeral'
      DisplayFormat = 'R$ ###,###,##0.00'
      currency = True
      Calculated = True
    end
    object quFaturafat_totbolsa: TFloatField
      FieldName = 'fat_totbolsa'
      Origin = 'TALENTPOOL.Fatura.fat_totbolsa'
      Visible = False
      currency = True
    end
    object quFaturafat_totcont: TFloatField
      FieldName = 'fat_totcont'
      Origin = 'TALENTPOOL.Fatura.fat_totcont'
      Visible = False
      currency = True
    end
    object quFaturafat_totliberado: TFloatField
      FieldName = 'fat_totliberado'
      Origin = 'TALENTPOOL.Fatura.fat_totliberado'
      Visible = False
      currency = True
    end
    object quFaturafat_formapgto: TStringField
      FieldName = 'fat_formapgto'
      Origin = 'TALENTPOOL.Fatura.fat_formapgto'
      Visible = False
      Size = 1
    end
    object quFaturafat_datalib: TDateTimeField
      FieldName = 'fat_datalib'
      Origin = 'TALENTPOOL.Fatura.fat_datalib'
      Visible = False
    end
    object quFaturafat_numest: TSmallintField
      FieldName = 'fat_numest'
      Origin = 'TALENTPOOL.Fatura.fat_numest'
      Visible = False
    end
    object quFaturafat_datareceb1: TDateTimeField
      FieldName = 'fat_datareceb1'
      Origin = 'TALENTPOOL.Fatura.fat_datareceb1'
      Visible = False
    end
    object quFaturafat_datareceb2: TDateTimeField
      FieldName = 'fat_datareceb2'
      Origin = 'TALENTPOOL.Fatura.fat_datareceb2'
      Visible = False
    end
    object quFaturafat_totgeralLib: TFloatField
      FieldKind = fkCalculated
      FieldName = 'fat_totgeralLib'
      Visible = False
      Calculated = True
    end
    object quFaturaId_documento: TIntegerField
      DisplayLabel = 'Doc. B.'
      DisplayWidth = 6
      FieldName = 'Id_documento'
    end
    object quFaturaid_documentoContribuicao: TIntegerField
      DisplayLabel = 'Doc. C.'
      DisplayWidth = 6
      FieldName = 'id_documentoContribuicao'
    end
    object quFaturaRescisao: TStringField
      FieldName = 'Rescisao'
      FixedChar = True
      Size = 1
    end
    object quFaturatot_RecInd: TFloatField
      FieldName = 'tot_RecInd'
      Visible = False
      currency = True
    end
    object quFaturaTot_RecIndCont: TFloatField
      FieldName = 'Tot_RecIndCont'
      Visible = False
      currency = True
    end
    object quFaturaTot_Recesso: TFloatField
      FieldName = 'Tot_Recesso'
      Visible = False
      currency = True
    end
    object quFaturaTot_RecessoCont: TFloatField
      FieldName = 'Tot_RecessoCont'
      Visible = False
      currency = True
    end
    object quFaturaTotalContribuicao: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalContribuicao'
      Calculated = True
    end
    object quFaturaTotalBolsa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalBolsa'
      Calculated = True
    end
  end
  object usfatura: TUpdateSQL
    ModifySQL.Strings = (
      'update Fatura'
      'set'
      '  fat_numero = :fat_numero,'
      '  fat_ano = :fat_ano,'
      '  fat_mes = :fat_mes,'
      '  emp_cod = :emp_cod,'
      '  fat_numest = :fat_numest,'
      '  fat_totbolsa = :fat_totbolsa,'
      '  fat_totcont = :fat_totcont,'
      '  fat_totliberado = :fat_totliberado,'
      '  fat_formapgto = :fat_formapgto,'
      '  fat_datareceb1 = :fat_datareceb1,'
      '  fat_datareceb2 = :fat_datareceb2,'
      '  fat_datalib = :fat_datalib,'
      '  id_documento = :id_documento,'
      '  id_documentoContribuicao = :id_documentoContribuicao,'
      '  Rescisao = :Rescisao,'
      '  tot_RecInd = :tot_RecInd,'
      '  Tot_RecIndCont = :Tot_RecIndCont,'
      '  Tot_Recesso = :Tot_Recesso,'
      '  Tot_RecessoCont = :Tot_RecessoCont'
      'where'
      '  fat_numero = :OLD_fat_numero')
    InsertSQL.Strings = (
      'insert into Fatura'
      
        '  (fat_numero, fat_ano, fat_mes, emp_cod, fat_numest, fat_totbol' +
        'sa, fat_totcont, '
      
        '   fat_totliberado, fat_formapgto, fat_datareceb1, fat_datareceb' +
        '2, fat_datalib, '
      
        '   id_documento, id_documentoContribuicao, Rescisao, tot_RecInd,' +
        ' Tot_RecIndCont, '
      '   Tot_Recesso, Tot_RecessoCont)'
      'values'
      
        '  (:fat_numero, :fat_ano, :fat_mes, :emp_cod, :fat_numest, :fat_' +
        'totbolsa, '
      
        '   :fat_totcont, :fat_totliberado, :fat_formapgto, :fat_datarece' +
        'b1, :fat_datareceb2, '
      
        '   :fat_datalib, :id_documento, :id_documentoContribuicao, :Resc' +
        'isao, :tot_RecInd, '
      '   :Tot_RecIndCont, :Tot_Recesso, :Tot_RecessoCont)')
    DeleteSQL.Strings = (
      'delete from Fatura'
      'where'
      '  fat_numero = :OLD_fat_numero')
    Left = 402
    Top = 375
  end
  object quFolhaPgto: TQuery
    CachedUpdates = True
    AfterOpen = quFolhaPgtoAfterOpen
    AfterClose = quFolhaPgtoAfterClose
    BeforeInsert = quFolhaPgtoBeforeInsert
    OnCalcFields = quFolhaPgtoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  F.*, E.est_cpf, E.est_nome, E.est_endereco, E.est_cidade, E.es' +
        't_estado, '
      
        '  E.est_agencia, E.est_conta, E.est_Cep, t.tce_situacao,B.Banco,' +
        'E.EST_CODBANCO, b.desconto_folha as desconto_banco'
      'from'
      '  FolhaPgto F, Estudante E, Tce T,TB_BANCOS B'
      'where'
      ' E.EST_CODBANCO*=B.ID_BANCOS AND'
      '  E.Est_cod = F.Est_cod and'
      '  F.fat_numero = :fat_numero and'
      '  F.tce_cod = t.tce_cod'
      'order by'
      '  E.est_nome'
      ' ')
    UpdateObject = usFolhaPgto
    Left = 336
    Top = 327
    ParamData = <
      item
        DataType = ftInteger
        Name = 'fat_numero'
        ParamType = ptUnknown
      end>
    object quFolhaPgtofat_numero: TIntegerField
      FieldName = 'fat_numero'
      Origin = 'TALENTPOOL.FolhaPgto.fat_numero'
      Visible = False
    end
    object quFolhaPgtoest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 32
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.FolhaPgto.est_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object quFolhaPgtotce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object quFolhaPgtofbo_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'fbo_valor'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,##0.00'
      EditFormat = '0.00'
      currency = True
    end
    object quFolhaPgtoValorCerto: TFloatField
      DisplayLabel = 'Valor Ita'#250
      FieldKind = fkCalculated
      FieldName = 'ValorCerto'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,##0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object quFolhaPgtoDescSituacao: TStringField
      DisplayLabel = 'Documentos'
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      ProviderFlags = [pfInUpdate]
      Size = 30
      Calculated = True
    end
    object quFolhaPgtofbo_situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'fbo_situacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_situacao'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 2
    end
    object quFolhaPgtofbo_descontos: TFloatField
      FieldName = 'fbo_descontos'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_descontos'
      ProviderFlags = [pfInUpdate]
      Visible = False
      currency = True
    end
    object quFolhaPgtofbo_liberacao: TStringField
      FieldName = 'fbo_liberacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_liberacao'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
    end
    object quFolhaPgtoDescLiberacao: TStringField
      DisplayLabel = 'Lib. '
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DescLiberacao'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object quFolhaPgtoest_cpf: TStringField
      FieldName = 'est_cpf'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 11
    end
    object quFolhaPgtoest_endereco: TStringField
      FieldName = 'est_endereco'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 100
    end
    object quFolhaPgtoest_cidade: TStringField
      FieldName = 'est_cidade'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 50
    end
    object quFolhaPgtoest_estado: TStringField
      FieldName = 'est_estado'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 2
    end
    object quFolhaPgtoest_agencia: TStringField
      FieldName = 'est_agencia'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object quFolhaPgtoest_conta: TStringField
      FieldName = 'est_conta'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object quFolhaPgtoest_Cep: TStringField
      FieldName = 'est_Cep'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 8
    end
    object quFolhaPgtotce_situacao: TStringField
      FieldName = 'tce_situacao'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quFolhaPgtoest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quFolhaPgtoLot_numero: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'Lot_numero'
      ProviderFlags = [pfInUpdate]
    end
    object quFolhaPgtocod_retorno: TStringField
      FieldName = 'cod_retorno'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object quFolhaPgtoRetorno: TStringField
      FieldKind = fkCalculated
      FieldName = 'Retorno'
      ProviderFlags = [pfInUpdate]
      Size = 60
      Calculated = True
    end
    object quFolhaPgtoid_parcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'id_parcela'
      ProviderFlags = [pfInUpdate]
    end
    object quFolhaPgtoControle: TIntegerField
      FieldName = 'Controle'
      Visible = False
    end
    object quFolhaPgtoBanco: TStringField
      FieldName = 'Banco'
      Size = 60
    end
    object quFolhaPgtoEST_CODBANCO: TIntegerField
      FieldName = 'EST_CODBANCO'
      Visible = False
    end
    object quFolhaPgtodesconto_banco: TFloatField
      FieldName = 'desconto_banco'
      ProviderFlags = []
    end
  end
  object dsFolhaPgto: TDataSource
    DataSet = quFolhaPgto
    Left = 272
    Top = 332
  end
  object usFolhaPgto: TUpdateSQL
    ModifySQL.Strings = (
      'update FolhaPgto'
      'set'
      '  fat_numero = :fat_numero,'
      '  est_cod = :est_cod,'
      '  tce_cod = :tce_cod,'
      '  fbo_valor = :fbo_valor,'
      '  fbo_descontos = :fbo_descontos,'
      '  fbo_situacao = :fbo_situacao,'
      '  fbo_liberacao = :fbo_liberacao,'
      '  lot_numero = :lot_numero,'
      '  cod_retorno = :cod_retorno,'
      '  id_parcela = :id_parcela,'
      '  Controle = :Controle'
      'where'
      '  fat_numero = :OLD_fat_numero and'
      '  est_cod = :OLD_est_cod and'
      '  tce_cod = :OLD_tce_cod and'
      '  Controle = :OLD_Controle')
    InsertSQL.Strings = (
      'insert into FolhaPgto'
      
        '  (fat_numero, est_cod, tce_cod, fbo_valor, fbo_descontos, fbo_s' +
        'ituacao, '
      '   fbo_liberacao, lot_numero, cod_retorno, id_parcela, Controle)'
      'values'
      
        '  (:fat_numero, :est_cod, :tce_cod, :fbo_valor, :fbo_descontos, ' +
        ':fbo_situacao, '
      
        '   :fbo_liberacao, :lot_numero, :cod_retorno, :id_parcela, :Cont' +
        'role)')
    DeleteSQL.Strings = (
      'delete from FolhaPgto'
      'where'
      '  fat_numero = :OLD_fat_numero and'
      '  est_cod = :OLD_est_cod and'
      '  tce_cod = :OLD_tce_cod and'
      '  Controle = :OLD_Controle')
    Left = 402
    Top = 327
  end
  object quSFolhaPgto: TQuery
    OnCalcFields = quSFolhaPgtoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  p.*, f.fat_mes, f.emp_nome, f.fat_ano, e.emp_nomerespcomp, e.e' +
        'mp_telefone, '
      
        '  (select count(*) from FolhaPgto where fat_numero = f.fat_numer' +
        'o) '
      '  as TotEstagiarios, '
      '  (select sum(fbo_valor-fbo_descontos) from FolhaPgto where '
      '  fat_numero = f.fat_numero) as TotBolsa, '
      '  f.fat_totcont, f.fat_totliberado, f.fat_totbolsa'
      'from'
      '  folhaPgto p, Fatura f, Empresa e'
      'where'
      '  f.emp_cod = e.emp_cod and'
      '  f.fat_numero = p.fat_numero and'
      '  f.fat_numero = -1'
      'order by'
      '  p.est_nome  '
      '  ')
    Left = 764
    Top = 623
    object quSFolhaPgtofat_numero: TIntegerField
      DisplayLabel = 'Fatura'
      DisplayWidth = 8
      FieldName = 'fat_numero'
      Origin = 'TALENTPOOL.FolhaPgto.fat_numero'
    end
    object quSFolhaPgtoest_cod: TSmallintField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.FolhaPgto.est_cod'
      Visible = False
    end
    object quSFolhaPgtotce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 5
      FieldName = 'tce_cod'
      Origin = 'TALENTPOOL.FolhaPgto.tce_cod'
    end
    object quSFolhaPgtoest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 39
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.FolhaPgto.est_nome'
      Size = 50
    end
    object quSFolhaPgtofbo_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'fbo_valor'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      Visible = False
    end
    object quSFolhaPgtofbo_descontos: TFloatField
      FieldName = 'fbo_descontos'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_descontos'
      Visible = False
    end
    object quSFolhaPgtofbo_situacao: TStringField
      FieldName = 'fbo_situacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_situacao'
      Visible = False
      Size = 1
    end
    object quSFolhaPgtoDescSituacao: TStringField
      DisplayLabel = 'Documentos'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Size = 30
      Calculated = True
    end
    object quSFolhaPgtofat_mes: TSmallintField
      FieldName = 'fat_mes'
      Origin = 'TALENTPOOL.Fatura.fat_mes'
      Visible = False
    end
    object quSFolhaPgtoemp_nome: TStringField
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.Fatura.emp_nome'
      Visible = False
      Size = 100
    end
    object quSFolhaPgtofat_ano: TSmallintField
      FieldName = 'fat_ano'
      Origin = 'TALENTPOOL.Fatura.fat_ano'
      Visible = False
    end
    object quSFolhaPgtofbo_liberacao: TStringField
      FieldName = 'fbo_liberacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_liberacao'
      Visible = False
      Size = 1
    end
    object quSFolhaPgtoDescLiberacao: TStringField
      DisplayLabel = 'Liber.'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DescLiberacao'
      Size = 10
      Calculated = True
    end
    object quSFolhaPgtoTotEstagiarios: TIntegerField
      FieldName = 'TotEstagiarios'
      Visible = False
    end
    object quSFolhaPgtoTotBolsa: TFloatField
      FieldName = 'TotBolsa'
      Visible = False
      currency = True
    end
    object quSFolhaPgtoemp_nomerespcomp: TStringField
      FieldName = 'emp_nomerespcomp'
      Visible = False
      Size = 50
    end
    object quSFolhaPgtoemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Visible = False
      Size = 10
    end
    object quSFolhaPgtoDataTCE: TStringField
      FieldKind = fkCalculated
      FieldName = 'DataTCE'
      Visible = False
      Calculated = True
    end
    object quSFolhaPgtoValor: TFloatField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Valor'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quSFolhaPgtofat_totcont: TFloatField
      FieldName = 'fat_totcont'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
    object quSFolhaPgtofat_totliberado: TFloatField
      FieldName = 'fat_totliberado'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
    object quSFolhaPgtofat_totbolsa: TFloatField
      FieldName = 'fat_totbolsa'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
    object quSFolhaPgtoNaoLiberado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NaoLiberado'
      Visible = False
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quSFolhaPgtoValorBB: TFloatField
      DisplayLabel = 'Valor BB'
      FieldKind = fkCalculated
      FieldName = 'ValorBB'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
  end
  object dsSFolhaPgto: TDataSource
    DataSet = quSFolhaPgto
    Left = 698
    Top = 623
  end
  object dsSPgto: TDataSource
    DataSet = quSPgto
    Left = 969
    Top = 509
  end
  object quSPgto: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select (SELECT EMP_NOME FROM EMPRESA WHERE EMP_COD=fatura.emp_co' +
        'd) Empresa,'
      '  * from'
      '  Fatura'
      'where'
      '  fat_numero = -1')
    Left = 899
    Top = 503
    object quSPgtoEmpresa: TStringField
      DisplayWidth = 70
      FieldName = 'Empresa'
      Size = 150
    end
    object quSPgtofat_numero: TIntegerField
      DisplayLabel = 'Fatura'
      DisplayWidth = 14
      FieldName = 'fat_numero'
      Origin = 'TALENTPOOL.Fatura.fat_numero'
    end
    object quSPgtoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Origin = 'TALENTPOOL.Fatura.emp_cod'
      Visible = False
    end
    object quSPgtofat_ano: TSmallintField
      DisplayLabel = 'Ano'
      DisplayWidth = 7
      FieldName = 'fat_ano'
      Origin = 'TALENTPOOL.Fatura.fat_ano'
    end
    object quSPgtofat_mes: TSmallintField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 5
      FieldName = 'fat_mes'
      Origin = 'TALENTPOOL.Fatura.fat_mes'
      DisplayFormat = '00'
    end
    object quSPgtofat_numest: TSmallintField
      DisplayLabel = 'Estagi'#225'rios'
      DisplayWidth = 9
      FieldName = 'fat_numest'
      Origin = 'TALENTPOOL.Fatura.fat_numest'
    end
    object quSPgtofat_totbolsa: TFloatField
      DisplayLabel = 'Total Bolsa'
      DisplayWidth = 13
      FieldName = 'fat_totbolsa'
      Origin = 'TALENTPOOL.Fatura.fat_totbolsa'
      currency = True
    end
    object quSPgtofat_totcont: TFloatField
      DisplayLabel = 'Total Cont.'
      DisplayWidth = 13
      FieldName = 'fat_totcont'
      Origin = 'TALENTPOOL.Fatura.fat_totcont'
      currency = True
    end
    object quSPgtofat_formapgto: TStringField
      FieldName = 'fat_formapgto'
      Origin = 'TALENTPOOL.Fatura.fat_formapgto'
      Visible = False
      Size = 1
    end
    object quSPgtofat_datareceb1: TDateTimeField
      DisplayLabel = 'Cr'#233'dito'
      DisplayWidth = 12
      FieldName = 'fat_datareceb1'
      Origin = 'TALENTPOOL.Fatura.fat_datareceb1'
    end
    object quSPgtofat_datareceb2: TDateTimeField
      DisplayLabel = 'Folha Pgto.'
      DisplayWidth = 12
      FieldName = 'fat_datareceb2'
      Origin = 'TALENTPOOL.Fatura.fat_datareceb2'
    end
    object quSPgtofat_datalib: TDateTimeField
      DisplayLabel = 'Data Liber.'
      DisplayWidth = 12
      FieldName = 'fat_datalib'
      Origin = 'TALENTPOOL.Fatura.fat_datalib'
    end
    object quSPgtofat_totliberado: TFloatField
      FieldName = 'fat_totliberado'
      Origin = 'TALENTPOOL.Fatura.fat_totliberado'
      Visible = False
    end
  end
  object tbEtiqueta: TTable
    BeforeOpen = tbEtiquetaBeforeOpen
    AfterOpen = tbEtiquetaAfterOpen
    AfterClose = tbEtiquetaAfterClose
    DatabaseName = 'C:\Sistema\Arquivos'
    TableName = 'Etiqueta'
    Left = 1145
    Top = 365
    object tbEtiquetaNomeEsc: TStringField
      FieldName = 'NomeEsc'
      Size = 100
    end
    object tbEtiquetaNomeResp: TStringField
      FieldName = 'NomeResp'
      Size = 100
    end
    object tbEtiquetaEnd1: TStringField
      FieldName = 'End1'
      Size = 100
    end
    object tbEtiquetaEnd2: TStringField
      FieldName = 'End2'
      Size = 100
    end
    object tbEtiquetaEnd3: TStringField
      FieldName = 'End3'
      Size = 100
    end
  end
  object quTriagem: TQuery
    OnCalcFields = quTriagemCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Select e.est_nome, e.pcu_turno, e.pcu_anoatual, e.est_fone1, e.e' +
        'st_fone2, e.est_recado, e.est_cod,e.est_situacao,e.cur_cod'
      'from Estudante e'
      'where e.est_cod = -1')
    Left = 1089
    Top = 85
    object quTriagemest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 52
      FieldName = 'est_nome'
      Size = 50
    end
    object quTriagempcu_turno: TStringField
      FieldName = 'pcu_turno'
      Visible = False
      Size = 1
    end
    object quTriagempcu_anoatual: TSmallintField
      DisplayLabel = 'Ano'
      DisplayWidth = 5
      FieldName = 'pcu_anoatual'
    end
    object quTriagemTurno: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Turno'
      Size = 10
      Calculated = True
    end
    object quTriagemest_fone1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'est_fone1'
      Visible = False
      Size = 15
    end
    object quTriagemest_fone2: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'est_fone2'
      Visible = False
      Size = 15
    end
    object quTriagemest_recado: TStringField
      FieldName = 'est_recado'
      Visible = False
      Size = 15
    end
    object quTriagemest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quTriagemTelefone: TStringField
      FieldKind = fkCalculated
      FieldName = 'Telefone'
      Size = 30
      Calculated = True
    end
    object quTriagemTelCompleto: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 22
      FieldKind = fkCalculated
      FieldName = 'TelCompleto'
      Size = 40
      Calculated = True
    end
    object quTriagemCurso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Curso'
      Size = 60
      Calculated = True
    end
    object quTriagemSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Calculated = True
    end
    object quTriagemest_situacao: TStringField
      FieldName = 'est_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quTriagemcur_cod: TIntegerField
      FieldName = 'cur_cod'
      Visible = False
    end
  end
  object dsRCaixa: TDataSource
    DataSet = quRCaixa
    Left = 1193
    Top = 65533
  end
  object quRCaixa: TQuery
    OnCalcFields = quRCaixaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select c.cai_ano, c.cai_mes, c.cai_inicial, e.cen_data, e.cen_mo' +
        'tivo, '
      'e.cen_valor, '#39'E'#39' as Tipo'
      'from Caixa c, Entrada e'
      'where c.cai_ano = e.cai_ano '
      'and c.cai_mes = e.cai_mes'
      'and c.cai_ano = :cai_ano '
      'and c.cai_mes = :cai_mes'
      ''
      'union '
      ''
      
        'select c.cai_ano, c.cai_mes, c.cai_inicial, l.csa_data, l.csa_mo' +
        'tivo, '
      'l.csa_valor, '#39'S'#39' as Tipo'
      'from Caixa c, Lancamento l'
      'where c.cai_ano = l.cai_ano '
      'and c.cai_mes = l.cai_mes'
      'and c.cai_ano = :cai_ano '
      'and c.cai_mes = :cai_mes'
      ''
      'order by'
      'e.cen_data'
      '')
    Left = 1161
    Top = 65532
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cai_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_mes'
        ParamType = ptUnknown
      end>
    object quRCaixacai_ano: TIntegerField
      FieldName = 'cai_ano'
      Visible = False
    end
    object quRCaixacai_mes: TIntegerField
      FieldName = 'cai_mes'
      Visible = False
    end
    object quRCaixacai_inicial: TFloatField
      FieldName = 'cai_inicial'
      Visible = False
      currency = True
    end
    object quRCaixacen_data: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'cen_data'
    end
    object quRCaixacen_motivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 41
      FieldName = 'cen_motivo'
      Size = 255
    end
    object quRCaixacen_valor: TFloatField
      FieldName = 'cen_valor'
      Visible = False
    end
    object quRCaixaSomaEntradas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SomaEntradas'
      Visible = False
      currency = True
      Calculated = True
    end
    object quRCaixaValEntrada: TFloatField
      DisplayLabel = 'Entrada'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'ValEntrada'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quRCaixaValSaida: TFloatField
      DisplayLabel = 'Sa'#237'da'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'ValSaida'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quRCaixaSomaSaidas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SomaSaidas'
      Visible = False
      currency = True
      Calculated = True
    end
    object quRCaixaTotalGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalGeral'
      Visible = False
      currency = True
      Calculated = True
    end
    object quRCaixaTipo: TStringField
      FieldName = 'Tipo'
      Visible = False
      Size = 255
    end
    object quRCaixaMesExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'MesExtenso'
      Visible = False
      Calculated = True
    end
  end
  object dsFornecedor: TDataSource
    DataSet = quFornecedor
    Left = 698
    Top = 584
  end
  object quFornecedor: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select * from Fornecedor')
    UpdateObject = usFornecedor
    Left = 764
    Top = 584
    object quFornecedorforn_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'forn_cod'
      Origin = 'TALENTPOOL.Fornecedor.forn_cod'
    end
    object quFornecedorforn_dtinc: TDateTimeField
      FieldName = 'forn_dtinc'
      Origin = 'TALENTPOOL.Fornecedor.forn_dtinc'
      Visible = False
    end
    object quFornecedorforn_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 74
      FieldName = 'forn_nome'
      Origin = 'TALENTPOOL.Fornecedor.forn_nome'
      Size = 100
    end
    object quFornecedorforn_cnpj: TStringField
      FieldName = 'forn_cnpj'
      Origin = 'TALENTPOOL.Fornecedor.forn_cnpj'
      Visible = False
      Size = 14
    end
    object quFornecedorforn_inscest: TStringField
      FieldName = 'forn_inscest'
      Origin = 'TALENTPOOL.Fornecedor.forn_inscest'
      Visible = False
    end
    object quFornecedorforn_endereco: TStringField
      FieldName = 'forn_endereco'
      Origin = 'TALENTPOOL.Fornecedor.forn_endereco'
      Visible = False
      Size = 70
    end
    object quFornecedorforn_bairro: TStringField
      FieldName = 'forn_bairro'
      Origin = 'TALENTPOOL.Fornecedor.forn_bairro'
      Visible = False
      Size = 30
    end
    object quFornecedorforn_cidade: TStringField
      FieldName = 'forn_cidade'
      Origin = 'TALENTPOOL.Fornecedor.forn_cidade'
      Visible = False
      Size = 30
    end
    object quFornecedorforn_estado: TStringField
      FieldName = 'forn_estado'
      Origin = 'TALENTPOOL.Fornecedor.forn_estado'
      Visible = False
      Size = 2
    end
    object quFornecedorforn_telefone: TStringField
      FieldName = 'forn_telefone'
      Origin = 'TALENTPOOL.Fornecedor.forn_telefone'
      Visible = False
      Size = 12
    end
    object quFornecedorforn_fax: TStringField
      FieldName = 'forn_fax'
      Origin = 'TALENTPOOL.Fornecedor.forn_fax'
      Visible = False
      Size = 12
    end
    object quFornecedorforn_cep: TStringField
      FieldName = 'forn_cep'
      Origin = 'TALENTPOOL.Fornecedor.forn_cep'
      Visible = False
      Size = 8
    end
    object quFornecedorforn_caixapostal: TStringField
      FieldName = 'forn_caixapostal'
      Origin = 'TALENTPOOL.Fornecedor.forn_caixapostal'
      Visible = False
      Size = 10
    end
  end
  object usFornecedor: TUpdateSQL
    ModifySQL.Strings = (
      'update Fornecedor'
      'set'
      '  forn_dtinc = :forn_dtinc,'
      '  forn_nome = :forn_nome,'
      '  forn_cnpj = :forn_cnpj,'
      '  forn_inscest = :forn_inscest,'
      '  forn_endereco = :forn_endereco,'
      '  forn_bairro = :forn_bairro,'
      '  forn_cidade = :forn_cidade,'
      '  forn_estado = :forn_estado,'
      '  forn_telefone = :forn_telefone,'
      '  forn_fax = :forn_fax,'
      '  forn_cep = :forn_cep,'
      '  forn_caixapostal = :forn_caixapostal'
      'where'
      '  forn_cod = :OLD_forn_cod')
    InsertSQL.Strings = (
      'insert into Fornecedor'
      
        '  (forn_dtinc, forn_nome, forn_cnpj, forn_inscest, forn_endereco' +
        ', forn_bairro, '
      
        '   forn_cidade, forn_estado, forn_telefone, forn_fax, forn_cep, ' +
        'forn_caixapostal)'
      'values'
      
        '  (:forn_dtinc, :forn_nome, :forn_cnpj, :forn_inscest, :forn_end' +
        'ereco, '
      
        '   :forn_bairro, :forn_cidade, :forn_estado, :forn_telefone, :fo' +
        'rn_fax, '
      '   :forn_cep, :forn_caixapostal)')
    DeleteSQL.Strings = (
      'delete from Fornecedor'
      'where'
      '  forn_cod = :OLD_forn_cod')
    Left = 825
    Top = 584
  end
  object quEstResc: TQuery
    OnCalcFields = quEstRescCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        '   select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome fr' +
        'om grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,'
      
        '    t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Conver' +
        't(DateTime,Null) as Tpr_datafim,'
      
        '    e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_' +
        'peratual, '
      '    e.pcu_anoatual, '#39'1'#39' as tipo,'
      
        '    (select efu_email from EmpFuncionario where emp_cod = m.emp_' +
        'cod and func_cod = m.emp_respent) email'
      
        '    from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso ' +
        'C'
      '    where t.est_cod = e.est_cod and'
      '    t.emp_cod = m.emp_cod and'
      '    e.cur_cod = c.cur_cod and'
      '    t.tce_situacao = '#39'0'#39' and'
      '    t.tce_cod not in (select tce_cod from tceaditivo )  and   '
      '    m.emp_cod *= f.emp_cod and   '
      
        '   (select top 1 func_cod from empresponsavel where fun_cod = 1 ' +
        'and inativo = '#39'N'#39' and emp_cod = t.emp_cod ) *= f.func_cod '
      'and  t.tce_datafim between :data1 and :data2'
      '    union'
      
        '    select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome f' +
        'rom grupo where  grup_cod = m.grup_cod) Grupo, t.tce_dataini, t.' +
        'tce_datafim,'
      
        '    a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_n' +
        'omerespent, c.cur_nome, '
      '    e.pcu_peratual, e.pcu_anoatual, '#39'2'#39' as tipo,'
      
        '    (select efu_email from EmpFuncionario where emp_cod = m.emp_' +
        'cod and func_cod = m.emp_respent) email'
      
        '    from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncion' +
        'ario F, Curso c'
      '    where t.est_cod = e.est_cod and'
      '    e.cur_cod = c.cur_cod and'
      '    t.tce_cod = a.tce_cod and'
      '    t.emp_cod = m.emp_cod and'
      '    m.emp_cod *= f.emp_cod and'
      
        '    (select top 1 func_cod from empresponsavel where fun_cod = 1' +
        ' and inativo = '#39'N'#39' and emp_cod = t.emp_cod ) *= f.func_cod and'
      '    T.tce_situacao <> '#39'7'#39' and'
      '    a.prg_cod in'
      
        '    (select max(prg_cod) from TceAditivo where tce_cod = t.tce_c' +
        'od)'
      '  and  t.tce_datafim between :data1 and :data2'
      ''
      '    order by'
      '    m.emp_nome,t.tce_datafim, e.est_nome'
      ''
      ' '
      ' ')
    Left = 1171
    Top = 159
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quEstResctce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 5
      FieldName = 'tce_cod'
    end
    object quEstRescest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 29
      FieldName = 'est_nome'
      Size = 255
    end
    object quEstRescemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 28
      FieldName = 'emp_nome'
      Size = 255
    end
    object quEstRescGrupo: TStringField
      FieldName = 'Grupo'
      Size = 70
    end
    object quEstResctce_dataini: TDateTimeField
      DisplayWidth = 11
      FieldName = 'tce_dataini'
      Visible = False
    end
    object quEstResctce_datafim: TDateTimeField
      DisplayWidth = 11
      FieldName = 'tce_datafim'
      Visible = False
    end
    object quEstRescIncio: TStringField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'In'#237'cio'
      Size = 15
      Calculated = True
    end
    object quEstRescFim: TStringField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Fim'
      Size = 15
      Calculated = True
    end
    object quEstRescest_dtnasc: TDateTimeField
      FieldName = 'est_dtnasc'
      Visible = False
    end
    object quEstRescemp_nomerespent: TStringField
      FieldName = 'emp_nomerespent'
      Visible = False
      Size = 255
    end
    object quEstRescMesesEstagiando: TFloatField
      DisplayLabel = 'Meses'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'MesesEstagiando'
      DisplayFormat = '00'
      Calculated = True
    end
    object quEstResctipo: TStringField
      FieldName = 'tipo'
      Visible = False
      Size = 255
    end
    object quEstRescpcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Visible = False
      Size = 255
    end
    object quEstRescpcu_anoatual: TSmallintField
      FieldName = 'pcu_anoatual'
      Visible = False
    end
    object quEstRescSemestre: TStringField
      DisplayLabel = 'Ano/Per'#237'odo'
      FieldKind = fkCalculated
      FieldName = 'Semestre'
      Size = 10
      Calculated = True
    end
    object quEstResccur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Size = 255
    end
    object quEstResctpr_dataini: TDateTimeField
      FieldName = 'tpr_dataini'
      Visible = False
    end
    object quEstRescTpr_datafim: TDateTimeField
      FieldName = 'Tpr_datafim'
      Visible = False
    end
    object quEstRescemail: TStringField
      FieldName = 'email'
      Visible = False
      Size = 80
    end
    object quEstRescLei: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lei'
      Size = 15
      Calculated = True
    end
  end
  object quRDespesa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  d.dsp_cod, d.dsp_nome, '
      ''
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano1'
      '   and cai_mes = :mes1'
      '   and dsp_cod = d.dsp_cod) as Valor1, '
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano2'
      '   and cai_mes = :mes2'
      '   and dsp_cod = d.dsp_cod) as Valor2, '
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano3'
      '   and cai_mes = :mes3'
      '   and dsp_cod = d.dsp_cod) as Valor3, '
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano4'
      '   and cai_mes = :mes4'
      '   and dsp_cod = d.dsp_cod) as Valor4, '
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano5'
      '   and cai_mes = :mes5'
      '   and dsp_cod = d.dsp_cod) as Valor5, '
      '  (select sum(csa_valor) from Lancamento'
      '   where cai_ano = :ano6'
      '   and cai_mes = :mes6'
      '   and dsp_cod = d.dsp_cod) as Valor6'
      ''
      'from'
      '  Despesa d'
      'order by'
      '  d.dsp_nome')
    Left = 899
    Top = 361
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ano1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes6'
        ParamType = ptUnknown
      end>
    object quRDespesadsp_cod: TIntegerField
      FieldName = 'dsp_cod'
      Visible = False
    end
    object quRDespesadsp_nome: TStringField
      DisplayLabel = 'Despesa'
      DisplayWidth = 28
      FieldName = 'dsp_nome'
      Size = 50
    end
    object quRDespesaValor1: TFloatField
      FieldName = 'Valor1'
      DisplayFormat = '#,###,##0.00'
    end
    object quRDespesaValor2: TFloatField
      FieldName = 'Valor2'
      DisplayFormat = '#,###,##0.00'
    end
    object quRDespesaValor3: TFloatField
      FieldName = 'Valor3'
      DisplayFormat = '#,###,##0.00'
    end
    object quRDespesaValor4: TFloatField
      FieldName = 'Valor4'
      DisplayFormat = '#,###,##0.00'
    end
    object quRDespesaValor5: TFloatField
      FieldName = 'Valor5'
      DisplayFormat = '#,###,##0.00'
    end
    object quRDespesaValor6: TFloatField
      FieldName = 'Valor6'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object quRReceita: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select distinct'
      '  f.emp_nome,'
      ''
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano1'
      '   and f1.fat_mes = :mes1'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec1,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano1'
      '   and f1.fat_mes = :mes1'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est1,'
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano2'
      '   and f1.fat_mes = :mes2'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec2,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano2'
      '   and f1.fat_mes = :mes2'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est2,'
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano3'
      '   and f1.fat_mes = :mes3'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec3,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano3'
      '   and f1.fat_mes = :mes3'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est3,'
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano4'
      '   and f1.fat_mes = :mes4'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec4,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano4'
      '   and f1.fat_mes = :mes4'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est4,'
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano5'
      '   and f1.fat_mes = :mes5'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec5,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano5'
      '   and f1.fat_mes = :mes5'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est5,'
      '  (select sum(f1.fat_totcont) from Fatura F1'
      '   where f1.fat_ano = :ano6'
      '   and f1.fat_mes = :mes6'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Rec6,'
      '  (select sum(f1.fat_numest) from Fatura F1'
      '   where f1.fat_ano = :ano6'
      '   and f1.fat_mes = :mes6'
      '   and f1.emp_cod = f.emp_cod'
      '   and f1.fat_datareceb1 > 0) as Est6'
      ''
      'from'
      '  Fatura F'
      'where'
      '  f.fat_ano * 12 + f.fat_mes >= (:ano1 * 12 + :mes1) and'
      '  f.fat_ano * 12 + f.fat_mes <= (:ano6 * 12 + :mes6) and'
      '  f.fat_datareceb1 > 0'
      ''
      'order by'
      '  f.emp_nome')
    Left = 899
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ano1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes3'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes4'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes6'
        ParamType = ptUnknown
      end>
    object quRReceitaemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 24
      FieldName = 'emp_nome'
      Size = 100
    end
    object quRReceitaEst1: TIntegerField
      DisplayLabel = 'E1'
      DisplayWidth = 3
      FieldName = 'Est1'
    end
    object quRReceitaRec1: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec1'
      DisplayFormat = '#,###,##0.00'
    end
    object quRReceitaEst2: TIntegerField
      DisplayLabel = 'E2'
      DisplayWidth = 3
      FieldName = 'Est2'
    end
    object quRReceitaRec2: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec2'
      DisplayFormat = '#,###,##0.00'
    end
    object quRReceitaEst3: TIntegerField
      DisplayLabel = 'E3'
      DisplayWidth = 3
      FieldName = 'Est3'
    end
    object quRReceitaRec3: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec3'
      DisplayFormat = '#,###,##0.00'
    end
    object quRReceitaEst4: TIntegerField
      DisplayLabel = 'E4'
      DisplayWidth = 3
      FieldName = 'Est4'
    end
    object quRReceitaRec4: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec4'
      DisplayFormat = '#,###,##0.00'
    end
    object quRReceitaEst5: TIntegerField
      DisplayLabel = 'E5'
      DisplayWidth = 3
      FieldName = 'Est5'
    end
    object quRReceitaRec5: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec5'
      DisplayFormat = '#,###,##0.00'
    end
    object quRReceitaEst6: TIntegerField
      DisplayLabel = 'E6'
      DisplayWidth = 3
      FieldName = 'Est6'
    end
    object quRReceitaRec6: TFloatField
      DisplayWidth = 9
      FieldName = 'Rec6'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object quREntrada: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *, '
      '  (select sum(e1.cen_valor) from Entrada e1'
      '   where e1.cen_data between :data1 and :data2) as TotEntradas'
      'from '
      '  Entrada '
      'where '
      '  cen_data between :data1 and :data2')
    Left = 899
    Top = 553
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quREntradacai_ano: TIntegerField
      FieldName = 'cai_ano'
      Origin = 'TALENTPOOL.Entrada.cai_ano'
      Visible = False
    end
    object quREntradacai_mes: TIntegerField
      FieldName = 'cai_mes'
      Origin = 'TALENTPOOL.Entrada.cai_mes'
      Visible = False
    end
    object quREntradacen_cod: TIntegerField
      FieldName = 'cen_cod'
      Origin = 'TALENTPOOL.Entrada.cen_cod'
      Visible = False
    end
    object quREntradacen_data: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'cen_data'
      Origin = 'TALENTPOOL.Entrada.cen_data'
    end
    object quREntradacen_motivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 52
      FieldName = 'cen_motivo'
      Origin = 'TALENTPOOL.Entrada.cen_motivo'
      Size = 200
    end
    object quREntradacen_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'cen_valor'
      Origin = 'TALENTPOOL.Entrada.cen_valor'
      DisplayFormat = '#,###,##0.00'
    end
    object quREntradaTotEntradas: TFloatField
      FieldName = 'TotEntradas'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
  end
  object quRSaida: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *, '
      '  (select sum(L1.csa_valor) from Lancamento L1'
      '   where L1.csa_data between :data1 and :data2) as TotSaidas'
      'from '
      '  Lancamento '
      'where'
      '  csa_data between :data1 and :data2')
    Left = 1160
    Top = 53
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quRSaidacai_ano: TIntegerField
      FieldName = 'cai_ano'
      Origin = 'TALENTPOOL.Lancamento.cai_ano'
      Visible = False
    end
    object quRSaidacai_mes: TIntegerField
      FieldName = 'cai_mes'
      Origin = 'TALENTPOOL.Lancamento.cai_mes'
      Visible = False
    end
    object quRSaidacsa_cod: TIntegerField
      FieldName = 'csa_cod'
      Origin = 'TALENTPOOL.Lancamento.csa_cod'
      Visible = False
    end
    object quRSaidacsa_tipodesp: TStringField
      FieldName = 'csa_tipodesp'
      Origin = 'TALENTPOOL.Lancamento.csa_tipodesp'
      Visible = False
      Size = 1
    end
    object quRSaidadsp_cod: TIntegerField
      FieldName = 'dsp_cod'
      Origin = 'TALENTPOOL.Lancamento.dsp_cod'
      Visible = False
    end
    object quRSaidacsa_data: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'csa_data'
      Origin = 'TALENTPOOL.Lancamento.csa_data'
    end
    object quRSaidacsa_motivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 52
      FieldName = 'csa_motivo'
      Origin = 'TALENTPOOL.Lancamento.csa_motivo'
      Size = 200
    end
    object quRSaidacsa_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'csa_valor'
      Origin = 'TALENTPOOL.Lancamento.csa_valor'
      DisplayFormat = '#,###,##0.00'
    end
    object quRSaidaTotSaidas: TFloatField
      FieldName = 'TotSaidas'
      Visible = False
      DisplayFormat = '#,###,##0.00'
    end
  end
  object quEstEmp1: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select distinct '
      '  t.emp_cod, t.emp_nome, '
      '  (select count(tce_cod) from Tce where emp_cod = t.emp_cod and'
      '  tce_situacao <> '#39'7'#39') '
      '  as Estagiarios, '
      '  (select count(tce_cod) from Tce where tce_situacao <> '#39'7'#39') '
      '  as TotEstagiarios'
      ''
      'from '
      '  tce t'
      'where'
      '  t.tce_situacao <> '#39'7'#39' '
      'order by'
      '  t.emp_nome')
    Left = 1171
    Top = 205
    object quEstEmp1emp_cod: TIntegerField
      DisplayLabel = 'Empresa'
      DisplayWidth = 7
      FieldName = 'emp_cod'
    end
    object quEstEmp1emp_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 61
      FieldName = 'emp_nome'
      Size = 150
    end
    object quEstEmp1Estagiarios: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      DisplayWidth = 9
      FieldName = 'Estagiarios'
    end
    object quEstEmp1TotEstagiarios: TIntegerField
      FieldName = 'TotEstagiarios'
      Visible = False
    end
  end
  object quAnivEstudante: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  estudante.est_nome, estudante.est_email, empresa.emp_nome, ins' +
        'tituicao.inst_nome'
      'from'
      '  Estudante'
      ''
      'left join Tce on tce.est_cod = estudante.est_cod'
      'left join Empresa on tce.emp_cod = empresa.emp_cod'
      
        'left join instituicao on estudante.inst_cod = instituicao.inst_c' +
        'od'
      ''
      ''
      'where'
      '  datepart(dd, estudante.est_dtnasc) = :dia and'
      '  datepart(mm, estudante.est_dtnasc) = :mes'
      'order by '
      '  estudante.est_nome')
    Left = 1097
    Top = 316
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptUnknown
      end>
    object quAnivEstudanteest_nome: TStringField
      DisplayLabel = 'Estudante'
      FieldName = 'est_nome'
      Size = 50
    end
    object quAnivEstudanteemp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_nome'
      Size = 150
    end
    object quAnivEstudanteinst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      FieldName = 'inst_nome'
      Size = 150
    end
    object quAnivEstudanteest_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'est_email'
      Size = 50
    end
  end
  object quEtiqueta: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select *,'
      
        '(select ifu_nome from InstFuncionario where inst_cod = Instituic' +
        'ao.inst_cod and '
      'Func_cod = Instituicao.inst_respconv) inst_nomerespconv,'
      
        '(select ifu_nome from InstFuncionario where inst_cod = Instituic' +
        'ao.inst_cod and '
      'Func_cod = Instituicao.inst_respcomp) inst_nomerespcomp'
      ''
      ' from Instituicao where inst_cod = :inst_cod')
    Left = 402
    Top = 673
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quEtiquetaInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.Instituicao.Inst_cod'
    end
    object quEtiquetaInst_dtinc: TDateTimeField
      FieldName = 'Inst_dtinc'
      Origin = 'TALENTPOOL.Instituicao.Inst_dtinc'
    end
    object quEtiquetainst_dtretorno: TDateTimeField
      FieldName = 'inst_dtretorno'
      Origin = 'TALENTPOOL.Instituicao.inst_dtretorno'
    end
    object quEtiquetaInst_nome: TStringField
      FieldName = 'Inst_nome'
      Origin = 'TALENTPOOL.Instituicao.Inst_nome'
      Size = 150
    end
    object quEtiquetaInst_endereco: TStringField
      FieldName = 'Inst_endereco'
      Origin = 'TALENTPOOL.Instituicao.Inst_endereco'
      Size = 100
    end
    object quEtiquetaInst_bairro: TStringField
      FieldName = 'Inst_bairro'
      Origin = 'TALENTPOOL.Instituicao.Inst_bairro'
      Size = 50
    end
    object quEtiquetaInst_cidade: TStringField
      FieldName = 'Inst_cidade'
      Origin = 'TALENTPOOL.Instituicao.Inst_cidade'
      Size = 50
    end
    object quEtiquetaInst_estado: TStringField
      FieldName = 'Inst_estado'
      Origin = 'TALENTPOOL.Instituicao.Inst_estado'
      FixedChar = True
      Size = 2
    end
    object quEtiquetaInst_cep: TStringField
      FieldName = 'Inst_cep'
      Origin = 'TALENTPOOL.Instituicao.Inst_cep'
      Size = 8
    end
    object quEtiquetaInst_caixapostal: TStringField
      FieldName = 'Inst_caixapostal'
      Origin = 'TALENTPOOL.Instituicao.Inst_caixapostal'
      Size = 5
    end
    object quEtiquetaInst_telefone: TStringField
      FieldName = 'Inst_telefone'
      Origin = 'TALENTPOOL.Instituicao.Inst_telefone'
      Size = 10
    end
    object quEtiquetaInst_fax: TStringField
      FieldName = 'Inst_fax'
      Origin = 'TALENTPOOL.Instituicao.Inst_fax'
      Size = 10
    end
    object quEtiquetaInst_site: TStringField
      FieldName = 'Inst_site'
      Origin = 'TALENTPOOL.Instituicao.Inst_site'
      Size = 100
    end
    object quEtiquetaInst_cnpj: TStringField
      FieldName = 'Inst_cnpj'
      Origin = 'TALENTPOOL.Instituicao.Inst_cnpj'
      Size = 14
    end
    object quEtiquetaInst_inscest: TStringField
      FieldName = 'Inst_inscest'
      Origin = 'TALENTPOOL.Instituicao.Inst_inscest'
    end
    object quEtiquetaInst_tipo: TStringField
      FieldName = 'Inst_tipo'
      Origin = 'TALENTPOOL.Instituicao.Inst_tipo'
      Size = 12
    end
    object quEtiquetaInst_nivel: TStringField
      FieldName = 'Inst_nivel'
      Origin = 'TALENTPOOL.Instituicao.Inst_nivel'
    end
    object quEtiquetaInst_iniconv: TDateTimeField
      FieldName = 'Inst_iniconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_iniconv'
    end
    object quEtiquetaInst_fimconv: TDateTimeField
      FieldName = 'Inst_fimconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_fimconv'
    end
    object quEtiquetaInst_respconv: TIntegerField
      FieldName = 'Inst_respconv'
      Origin = 'TALENTPOOL.Instituicao.Inst_respconv'
    end
    object quEtiquetaInst_respcomp: TIntegerField
      FieldName = 'Inst_respcomp'
      Origin = 'TALENTPOOL.Instituicao.Inst_respcomp'
    end
    object quEtiquetainst_numend: TStringField
      FieldName = 'inst_numend'
      Origin = 'TALENTPOOL.Instituicao.inst_numend'
      FixedChar = True
      Size = 10
    end
    object quEtiquetainst_sala: TStringField
      FieldName = 'inst_sala'
      Origin = 'TALENTPOOL.Instituicao.inst_sala'
      FixedChar = True
      Size = 10
    end
    object quEtiquetainst_nomerespconv: TStringField
      FieldName = 'inst_nomerespconv'
      Size = 50
    end
    object quEtiquetainst_nomerespcomp: TStringField
      FieldName = 'inst_nomerespcomp'
      Size = 50
    end
  end
  object quSEntradas: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Select sum(cen_valor) as Entradas from Entrada where cai_ano = :' +
        'cai_ano and cai_mes = :cai_mes')
    Left = 1091
    Top = 276
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cai_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_mes'
        ParamType = ptUnknown
      end>
    object quSEntradasEntradas: TFloatField
      FieldName = 'Entradas'
      Origin = 'TALENTPOOL.Entrada.cen_valor'
    end
  end
  object quSSaidas: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Select sum(csa_valor) as Saidas from Lancamento where cai_ano = ' +
        ':cai_ano and cai_mes = :cai_mes')
    Left = 1035
    Top = 365
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cai_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_mes'
        ParamType = ptUnknown
      end>
    object quSSaidasSaidas: TFloatField
      FieldName = 'Saidas'
      Origin = 'TALENTPOOL.Lancamento.csa_valor'
    end
  end
  object dsREntrada: TDataSource
    DataSet = quREntrada
    Left = 969
    Top = 560
  end
  object dsRSaida: TDataSource
    DataSet = quRSaida
    Left = 1193
    Top = 53
  end
  object dsEstEmp1: TDataSource
    DataSet = quEstEmp1
    Left = 1209
    Top = 205
  end
  object dsEstResc: TDataSource
    DataSet = quEstResc
    Left = 1209
    Top = 158
  end
  object quRSomaCaixa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  c.cai_ano, c.cai_mes, '
      '  (select sum(cen_valor) from Entrada '
      
        '   where cai_ano = c.cai_ano and cai_mes = c.cai_mes) as SomaEnt' +
        'radas, '
      '  (select sum(csa_valor) from Lancamento'
      
        '   where cai_ano = c.cai_ano and cai_mes = c.cai_mes) as SomaSai' +
        'das'
      'from '
      '  Caixa C'
      'where'
      '  c.cai_ano = :cai_ano and'
      '  c.cai_mes = :cai_mes'
      ''
      '  ')
    Left = 1027
    Top = 85
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cai_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cai_mes'
        ParamType = ptUnknown
      end>
    object quRSomaCaixacai_ano: TIntegerField
      FieldName = 'cai_ano'
    end
    object quRSomaCaixaSomaEntradas: TFloatField
      FieldName = 'SomaEntradas'
    end
    object quRSomaCaixaSomaSaidas: TFloatField
      FieldName = 'SomaSaidas'
    end
    object quRSomaCaixacai_mes: TIntegerField
      FieldName = 'cai_mes'
    end
  end
  object dsRDespesa: TDataSource
    DataSet = quRDespesa
    Left = 969
    Top = 366
  end
  object dsRReceita: TDataSource
    DataSet = quRReceita
    Left = 969
    Top = 277
  end
  object quTaxa: TQuery
    OnCalcFields = quTaxaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome' +
        ' emp_nomerespcomp,'
      ' m.Emp_periodopgtoobs,b.cod_banco banco,'
      
        '  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.t' +
        'ce_datafim,'
      
        '  0 tce_situacao, t.tce_datares, t.tce_bolsa, t.tce_tipobolsa, t' +
        '.tce_tothoras'
      'from'
      '  tce t, estudante e, Empresa m,EmpFuncionario EF,tb_bancos b'
      'where'
      '  t.est_cod = e.est_cod and'
      '  t.emp_cod = m.emp_cod and'
      '  e.est_codbanco *= b.id_bancos and'
      '  t.emp_cod = :emp_cod and'
      '  t.tce_situacao = '#39'0'#39' and'
      ' m.emp_respcomp *= ef.func_cod and'
      '  t.tce_dataini < :data2 and'
      '  t.tce_datafim > :data1'
      ''
      'union'
      ''
      'select'
      
        '  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome' +
        ' emp_nomerespcomp,'
      '   m.Emp_periodopgtoobs,b.cod_banco banco,'
      
        '  m.emp_tipotaxa, m.emp_valortaxa,  a.tce_cod, a.tpr_dataini, a.' +
        'tpr_datafim,'
      
        '  a.prg_cod tce_situacao, t.tce_datares, t.tce_bolsa, t.tce_tipo' +
        'bolsa, t.tce_tothoras'
      'from'
      
        '  tceAditivo a, estudante e, Empresa m, Tce t,EmpFuncionario EF,' +
        'tb_bancos b'
      ''
      'where'
      '  t.tce_cod = a.tce_cod and'
      '  t.est_cod = e.est_cod and'
      '  e.est_codbanco *= b.id_bancos and'
      '  t.emp_cod = m.emp_cod and'
      '  m.emp_respcomp *= ef.func_cod and'
      '  t.emp_cod = :emp_cod and'
      '  t.tce_situacao <> '#39'7'#39' and'
      '  t.tce_situacao <> '#39'0'#39' and'
      '  Convert(Integer, t.tce_situacao) = a.prg_cod and'
      '  a.tpr_dataini < :data2 and'
      '  a.tpr_datafim > :data1'
      ''
      'union'
      ''
      'select'
      
        '  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome' +
        ' emp_nomerespcomp,'
      '  m.Emp_periodopgtoobs,b.cod_banco Banco,'
      
        '  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.t' +
        'ce_datafim,'
      
        '  0 tce_situacao, t.tce_datares, t.tce_bolsa, t.tce_tipobolsa, t' +
        '.tce_tothoras'
      'from'
      '  tce t, estudante e, Empresa m, EmpFuncionario EF,tb_bancos b'
      ''
      'where'
      '  t.est_cod = e.est_cod and'
      '  t.emp_cod = m.emp_cod and'
      '  e.est_codbanco *= b.id_bancos and'
      '  t.tce_situacao = '#39'7'#39' and'
      '  m.emp_respcomp *= ef.func_cod and'
      '  t.emp_cod = :emp_cod and'
      '  t.tce_dataini < :data2 and'
      '  t.tce_datares > :data1'
      ''
      'order by'
      '  e.est_nome')
    Left = 899
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end>
    object quTaxatce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object quTaxaest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quTaxaest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 44
      FieldName = 'est_nome'
      Size = 50
    end
    object quTaxaemp_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 35
      FieldName = 'emp_nome'
      Visible = False
      Size = 100
    end
    object quTaxatce_dataini: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 10
      FieldName = 'tce_dataini'
    end
    object quTaxaSituacao: TStringField
      DisplayLabel = 'Documentos'
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 40
      Calculated = True
    end
    object quTaxaDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Size = 50
      Calculated = True
    end
    object quTaxaemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Visible = False
      Size = 10
    end
    object quTaxatce_datares: TDateTimeField
      FieldName = 'tce_datares'
      Visible = False
    end
    object quTaxaBolsaTotal: TFloatField
      Tag = 5
      DisplayLabel = 'Bolsa Total'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'BolsaTotal'
      DisplayFormat = 'R$ #,###,##0.00'
      Calculated = True
    end
    object quTaxatce_bolsa: TFloatField
      DisplayLabel = 'Bolsa'
      DisplayWidth = 13
      FieldName = 'tce_bolsa'
      Visible = False
      DisplayFormat = 'R$ #,###,##0.00'
    end
    object quTaxaTaxa: TFloatField
      Tag = 5
      DisplayLabel = 'Contribui'#231#227'o'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Taxa'
      DisplayFormat = 'R$ #,###,##0.00'
      currency = True
      Calculated = True
    end
    object quTaxatce_tipobolsa: TStringField
      FieldName = 'tce_tipobolsa'
      Visible = False
      Size = 255
    end
    object quTaxatce_tothoras: TFloatField
      FieldName = 'tce_tothoras'
      Visible = False
    end
    object quTaxaemp_tipotaxa: TStringField
      FieldName = 'emp_tipotaxa'
      Visible = False
      Size = 255
    end
    object quTaxaemp_valortaxa: TFloatField
      FieldName = 'emp_valortaxa'
      Visible = False
    end
    object quTaxatce_datafim: TDateTimeField
      FieldName = 'tce_datafim'
      Visible = False
    end
    object quTaxaValBolsa: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValBolsa'
      Visible = False
      currency = True
      Calculated = True
    end
    object quTaxatce_situacao: TIntegerField
      FieldName = 'tce_situacao'
      Visible = False
    end
    object quTaxaSoma: TStringField
      FieldKind = fkCalculated
      FieldName = 'Soma'
      Visible = False
      Calculated = True
    end
    object quTaxaRepasse: TStringField
      DisplayLabel = 'Valor do Repasse'
      FieldKind = fkCalculated
      FieldName = 'Repasse'
      Visible = False
      Calculated = True
    end
    object quTaxabanco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      FixedChar = True
      Size = 4
    end
    object quTaxaemp_nomerespcomp: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'emp_nomerespcomp'
      Size = 50
    end
    object quTaxaEmp_periodopgtoobs: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'Emp_periodopgtoobs'
      Size = 100
    end
  end
  object dsTaxa: TDataSource
    DataSet = quTaxa
    Left = 969
    Top = 413
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 1109
    Top = 149
  end
  object quTotal: TQuery
    OnCalcFields = quTotalCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Select count(F.fbo_valor - F.fbo_descontos) as Est, sum(F.fbo_va' +
        'lor) as Total, '
      
        'sum(F.fbo_valor - F.fbo_descontos - COALESCE(B.DESCONTO_FOLHA,0)' +
        ' ) as TotalBB'
      'FROM FolhaPgto F, Estudante E, TB_BANCOS B'
      'where'
      '  E.EST_CODBANCO*=B.ID_BANCOS AND'
      '  E.Est_cod = F.Est_cod and'
      '  F.fat_numero = :fat_numero and'
      'fbo_liberacao = '#39'1'#39
      '')
    Left = 1127
    Top = 84
    ParamData = <
      item
        DataType = ftInteger
        Name = 'fat_numero'
        ParamType = ptUnknown
      end>
    object quTotalEst: TIntegerField
      FieldName = 'Est'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      DisplayFormat = '#,##0'
    end
    object quTotalTotal: TFloatField
      FieldName = 'Total'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object quTotalEstagiarios: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Estagiarios'
      Visible = False
      Calculated = True
    end
    object quTotalTotalBB: TFloatField
      FieldName = 'TotalBB'
      DisplayFormat = '#,###,##0.00'
    end
    object quTotalTotalDesconto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalDesconto'
      Calculated = True
    end
  end
  object quVerEsc1: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  i.inst_cod, i.inst_nome, count(e.est_cod) AS Estagiarios, '#39'1'#39' ' +
        'as Etiqueta'
      'from '
      '  Instituicao i, Estudante e'
      'where'
      '  e.inst_cod = i.inst_cod and '
      '  e.est_situacao = '#39'S'#39
      'group by'
      '  i.inst_cod, i.inst_nome'
      'order by'
      '  i.inst_nome'
      '')
    UpdateObject = usVerEsc1
    Left = 1033
    Top = 229
    object IntegerField3: TIntegerField
      DisplayLabel = 'Institui'#231#227'o'
      DisplayWidth = 9
      FieldName = 'inst_cod'
    end
    object StringField2: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 59
      FieldName = 'inst_nome'
      Size = 150
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      DisplayWidth = 9
      FieldName = 'Estagiarios'
    end
    object quVerEsc1Etiqueta: TStringField
      FieldName = 'Etiqueta'
      Visible = False
      Size = 255
    end
  end
  object dsVerEsc1: TDataSource
    DataSet = quVerEsc1
    Left = 825
    Top = 674
  end
  object dsContaCorr: TDataSource
    DataSet = quContaCorr
    Left = 1089
    Top = 65521
  end
  object quContaCorr: TQuery
    OnCalcFields = quContaCorrCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  m.emp_nome, t.tce_cod, e.est_nome, e.est_endereco, e.est_bairr' +
        'o, e.est_cidade, e.est_estado,'
      
        '  e.est_cep, e.est_rg, e.est_cpf, e.est_banco,B.Apelido, e.est_a' +
        'gencia, e.est_conta, e.est_dtnasc'
      'from'
      '  Tce t, Estudante e, Empresa M,TB_BANCOS B'
      'where'
      '  E.EST_CODBANCO*=B.ID_BANCOS AND'
      '  t.est_cod = e.est_cod and'
      '  t.tce_situacao <> '#39'7'#39' and'
      '  t.emp_Cod = m.emp_cod and'
      '  t.emp_cod = :emp_cod'
      'order by'
      '  e.est_nome')
    Left = 1089
    Top = 181
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    object quContaCorrtce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 6
      FieldName = 'tce_cod'
    end
    object quContaCorrest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 43
      FieldName = 'est_nome'
      Size = 50
    end
    object quContaCorrest_endereco: TStringField
      FieldName = 'est_endereco'
      Visible = False
      Size = 100
    end
    object quContaCorrest_bairro: TStringField
      FieldName = 'est_bairro'
      Visible = False
      Size = 50
    end
    object quContaCorrest_cidade: TStringField
      FieldName = 'est_cidade'
      Visible = False
      Size = 50
    end
    object quContaCorrest_estado: TStringField
      FieldName = 'est_estado'
      Visible = False
      Size = 2
    end
    object quContaCorrest_cep: TStringField
      FieldName = 'est_cep'
      Visible = False
      Size = 8
    end
    object quContaCorrest_rg: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 15
      FieldName = 'est_rg'
    end
    object quContaCorrcpf_formatado: TStringField
      DisplayLabel = 'Cpf'
      FieldKind = fkCalculated
      FieldName = 'cpf_formatado'
      Visible = False
      Size = 15
      Calculated = True
    end
    object quContaCorrest_cpf: TStringField
      DisplayLabel = 'Cpf'
      FieldName = 'est_cpf'
      Visible = False
      Size = 11
    end
    object quContaCorrest_banco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 14
      FieldName = 'est_banco'
      Size = 30
    end
    object quContaCorrApelido: TStringField
      DisplayLabel = 'Banco**'
      FieldName = 'Apelido'
    end
    object quContaCorrest_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'est_agencia'
      Size = 15
    end
    object quContaCorrest_conta: TStringField
      DisplayLabel = 'C/C'
      DisplayWidth = 11
      FieldName = 'est_conta'
      Size = 15
    end
    object quContaCorrEndCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'EndCompleto'
      Visible = False
      Size = 150
      Calculated = True
    end
    object quContaCorremp_nome: TStringField
      FieldName = 'emp_nome'
      Visible = False
      Size = 150
    end
    object quContaCorrest_dtnasc: TDateTimeField
      FieldName = 'est_dtnasc'
      Visible = False
    end
  end
  object dsTaxaF: TDataSource
    DataSet = quTaxaF
    Left = 1032
    Top = 101
  end
  object quTaxaF: TQuery
    OnCalcFields = quTaxaFCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, b.cod_banco' +
        ' Banco,'
      ' ef.efu_nome emp_nomerespcomp,'
      '  m.Emp_periodopgtoobs,'
      
        '  m.emp_tipotaxa, m.emp_valortaxa, p.tce_cod, p.fbo_valor, p.fbo' +
        '_liberacao'
      'from'
      
        '  FolhaPgto p, estudante e, Empresa m, Fatura f,EmpFuncionario E' +
        'F,tb_bancos B '
      'where'
      '  f.fat_numero = p.fat_numero and'
      '  '
      ' m.emp_respcomp *= ef.func_cod and'
      '  f.emp_cod = m.emp_cod and'
      '  e.est_codbanco *=b.id_bancos and'
      '  f.fat_numero = :fat_numero and'
      '  e.est_cod = p.est_cod'
      'order by'
      '  e.est_nome')
    Left = 1235
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'fat_numero'
        ParamType = ptUnknown
      end>
    object quTaxaFtce_cod: TSmallintField
      DisplayLabel = 'TCE'
      DisplayWidth = 5
      FieldName = 'tce_cod'
    end
    object quTaxaFest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 72
      FieldName = 'est_nome'
      Size = 50
    end
    object quTaxaFemp_nome: TStringField
      FieldName = 'emp_nome'
      Visible = False
      Size = 150
    end
    object quTaxaFBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 4
    end
    object quTaxaFfbo_valor: TFloatField
      DisplayLabel = 'Valor Folha'
      DisplayWidth = 13
      FieldName = 'fbo_valor'
      currency = True
    end
    object quTaxaFTaxa: TFloatField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Taxa'
      currency = True
      Calculated = True
    end
    object quTaxaFest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quTaxaFfbo_liberacao: TStringField
      FieldName = 'fbo_liberacao'
      Visible = False
      Size = 1
    end
    object quTaxaFemp_nomerespcomp: TStringField
      FieldName = 'emp_nomerespcomp'
      Visible = False
      Size = 50
    end
    object quTaxaFemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Visible = False
      Size = 10
    end
    object quTaxaFemp_tipotaxa: TStringField
      FieldName = 'emp_tipotaxa'
      Visible = False
      Size = 1
    end
    object quTaxaFemp_valortaxa: TFloatField
      FieldName = 'emp_valortaxa'
      Visible = False
    end
    object quTaxaFEmp_periodopgtoobs: TStringField
      DisplayLabel = 'Observacao'
      FieldName = 'Emp_periodopgtoobs'
      Size = 100
    end
  end
  object dsFormandos: TDataSource
    Left = 969
    Top = 229
  end
  object quFormandos: TQuery
    OnCalcFields = quFormandosCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  t.emp_cod, F.emp_nome, e.est_nome, I.inst_nome, '
      '  C.cur_nome, e.pcu_anoatual, e.pcu_peratual, e.pcu_vestib'
      'from'
      '  Estudante e, Tce t,Empresa F, Instituicao  I,curso C'
      'where'
      '  e.est_cod = t.est_cod and '
      '  t.tce_situacao <> '#39'7'#39' and '
      '  e.pcu_anoatual >= 4 and '
      '  e.pcu_peratual = '#39'0'#39' and '
      '  F.emp_cod = t.emp_cod and'
      '  I.inst_cod = e.inst_cod and'
      ' c.cur_cod = e.cur_cod '
      ''
      'union'
      ''
      'select '
      '  t.emp_cod, F.emp_nome, e.est_nome, I.inst_nome, '
      '  C.cur_nome, e.pcu_anoatual, e.pcu_peratual, e.pcu_vestib'
      'from'
      '  Estudante e, Tce t ,Empresa F, Instituicao  I,curso C'
      'where'
      '  e.est_cod = t.est_cod and '
      '  t.tce_situacao <> '#39'7'#39' and '
      '  e.pcu_anoatual >= 7 and '
      '  e.pcu_peratual = '#39'1'#39' and '
      '  F.emp_cod = t.emp_cod and'
      '  I.inst_cod = e.inst_cod and'
      ' c.cur_cod = e.cur_cod '
      ''
      'union'
      ''
      'select '
      '  t.emp_cod, F.emp_nome, e.est_nome, I.inst_nome, '
      '  C.cur_nome, e.pcu_anoatual, e.pcu_peratual, e.pcu_vestib'
      'from'
      '  Estudante e, Tce t, Empresa F, Instituicao  I,curso C'
      ''
      'where'
      '  e.est_cod = t.est_cod and '
      '  t.tce_situacao <> '#39'7'#39' and '
      '  e.pcu_anoatual = 3 and '
      '  e.cur_cod = c.cur_cod and'
      '  c.cur_nivel = '#39'Medio'#39' and '
      '  F.emp_cod = t.emp_cod and'
      '  I.inst_cod = e.inst_cod and'
      ' c.cur_cod = e.cur_cod '
      'order by'
      '  F.emp_nome, e.est_nome'
      '')
    Left = 899
    Top = 224
    object quFormandosemp_cod: TIntegerField
      DisplayLabel = 'Cod. Empresa'
      FieldName = 'emp_cod'
    end
    object quFormandosemp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_nome'
      Size = 255
    end
    object quFormandosest_nome: TStringField
      DisplayLabel = 'Estudante'
      FieldName = 'est_nome'
      Size = 255
    end
    object quFormandosinst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o de Ensino'
      FieldName = 'inst_nome'
      Size = 255
    end
    object quFormandoscur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Size = 255
    end
    object quFormandospcu_anoatual: TSmallintField
      FieldName = 'pcu_anoatual'
      Visible = False
    end
    object quFormandospcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Visible = False
      Size = 255
    end
    object quFormandosAnoPeriodo: TStringField
      DisplayLabel = 'Ano/Per'#237'odo'
      FieldKind = fkCalculated
      FieldName = 'AnoPeriodo'
      Size = 15
      Calculated = True
    end
    object quFormandospcu_vestib: TStringField
      FieldName = 'pcu_vestib'
      Visible = False
      Size = 255
    end
    object quFormandosVestibular: TStringField
      FieldKind = fkCalculated
      FieldName = 'Vestibular'
      Size = 15
      Calculated = True
    end
  end
  object dsEstagiarios: TDataSource
    DataSet = quEstagiarios
    Left = 969
    Top = 85
  end
  object quEstagiarios: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  est_nome, est_dtnasc, est_cpf'
      'from'
      '  Estudante'
      'where'
      '  est_situacao = '#39'S'#39
      'order by'
      '  est_nome')
    Left = 899
    Top = 79
    object quEstagiariosest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object quEstagiariosest_dtnasc: TDateTimeField
      FieldName = 'est_dtnasc'
    end
    object quEstagiariosest_cpf: TStringField
      FieldName = 'est_cpf'
      Size = 11
    end
  end
  object dsREmpresa: TDataSource
    DataSet = quREmpresa
    Left = 969
    Top = 317
  end
  object quREmpresa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'exec BUSCA_TOTAIS_EMPRESAS'
      ':Tipo, :data1, :data2, :rescindidos'
      ''
      '')
    Left = 899
    Top = 314
    ParamData = <
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'rescindidos'
        ParamType = ptUnknown
      end>
    object quREmpresaemp_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'emp_cod'
    end
    object quREmpresaemp_nome: TStringField
      DisplayLabel = 'Nome Empresa'
      DisplayWidth = 48
      FieldName = 'emp_nome'
      Size = 150
    end
    object quREmpresaEstagiarios: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      DisplayWidth = 9
      FieldName = 'Estagiarios'
    end
    object quREmpresabolsa: TFloatField
      DisplayLabel = 'Bolsa'
      DisplayWidth = 11
      FieldName = 'bolsa'
      DisplayFormat = '#,###,##0.00'
    end
    object quREmpresataxa: TFloatField
      DisplayLabel = 'Contribui'#231#227'o'
      DisplayWidth = 8
      FieldName = 'taxa'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object quEtiquetaEmp: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      ''
      'select'
      
        '  e.*, ef1.efu_nome emp_nomerespcont, ef2.efu_nome emp_nomerespc' +
        'omp,'
      '  ef1.efu_nome emp_nomerespent, ef4.efu_nome emp_nomerespfin,'
      '  f.func_nome '
      'from'
      '  Empresa e, EmpFuncionario ef1, EmpFuncionario ef2,'
      '  EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F'
      'where'
      '  e.emp_cod       *= ef1.emp_cod  and'
      '  e.emp_respcont  *= ef1.func_cod and'
      '  e.emp_cod       *= ef2.emp_cod  and'
      '  e.emp_respcomp  *= ef2.func_cod and'
      '  e.emp_cod       *= ef3.emp_cod  and'
      '  e.emp_respent   *= ef3.func_cod and'
      '  e.emp_cod       *= ef4.emp_cod  and'
      '  e.emp_respfin   *= ef4.func_cod and'
      '  e.emp_funccont  *= f.func_cod and'
      ' e.emp_cod = :emp_cod')
    Left = 1027
    Top = 133
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    object quEtiquetaEmpEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.Empresa.Emp_cod'
    end
    object quEtiquetaEmpEmp_dtinc: TDateTimeField
      FieldName = 'Emp_dtinc'
      Origin = 'TALENTPOOL.Empresa.Emp_dtinc'
    end
    object quEtiquetaEmpEmp_nome: TStringField
      FieldName = 'Emp_nome'
      Origin = 'TALENTPOOL.Empresa.Emp_nome'
      Size = 150
    end
    object quEtiquetaEmpEmp_endereco: TStringField
      FieldName = 'Emp_endereco'
      Origin = 'TALENTPOOL.Empresa.Emp_endereco'
      Size = 100
    end
    object quEtiquetaEmpEmp_bairro: TStringField
      FieldName = 'Emp_bairro'
      Origin = 'TALENTPOOL.Empresa.Emp_bairro'
      Size = 50
    end
    object quEtiquetaEmpEmp_cidade: TStringField
      FieldName = 'Emp_cidade'
      Origin = 'TALENTPOOL.Empresa.Emp_cidade'
      Size = 50
    end
    object quEtiquetaEmpEmp_estado: TStringField
      FieldName = 'Emp_estado'
      Origin = 'TALENTPOOL.Empresa.Emp_estado'
      Size = 2
    end
    object quEtiquetaEmpEmp_cep: TStringField
      FieldName = 'Emp_cep'
      Origin = 'TALENTPOOL.Empresa.Emp_cep'
      Size = 8
    end
    object quEtiquetaEmpEmp_caixapostal: TStringField
      FieldName = 'Emp_caixapostal'
      Origin = 'TALENTPOOL.Empresa.Emp_caixapostal'
      Size = 5
    end
    object quEtiquetaEmpEmp_telefone: TStringField
      FieldName = 'Emp_telefone'
      Origin = 'TALENTPOOL.Empresa.Emp_telefone'
      Size = 10
    end
    object quEtiquetaEmpEmp_fax: TStringField
      FieldName = 'Emp_fax'
      Origin = 'TALENTPOOL.Empresa.Emp_fax'
      Size = 10
    end
    object quEtiquetaEmpEmp_cnpj: TStringField
      FieldName = 'Emp_cnpj'
      Origin = 'TALENTPOOL.Empresa.Emp_cnpj'
      Size = 14
    end
    object quEtiquetaEmpEmp_inscest: TStringField
      FieldName = 'Emp_inscest'
      Origin = 'TALENTPOOL.Empresa.Emp_inscest'
    end
    object quEtiquetaEmpEmp_ramo: TStringField
      FieldName = 'Emp_ramo'
      Origin = 'TALENTPOOL.Empresa.Emp_ramo'
      Size = 12
    end
    object quEtiquetaEmpEmp_porte: TStringField
      FieldName = 'Emp_porte'
      Origin = 'TALENTPOOL.Empresa.Emp_porte'
      Size = 10
    end
    object quEtiquetaEmpEmp_iniconv: TDateTimeField
      FieldName = 'Emp_iniconv'
      Origin = 'TALENTPOOL.Empresa.Emp_iniconv'
    end
    object quEtiquetaEmpEmp_fimconv: TDateTimeField
      FieldName = 'Emp_fimconv'
      Origin = 'TALENTPOOL.Empresa.Emp_fimconv'
    end
    object quEtiquetaEmpEmp_respcont: TIntegerField
      FieldName = 'Emp_respcont'
      Origin = 'TALENTPOOL.Empresa.Emp_respcont'
    end
    object quEtiquetaEmpemp_nomerespcont: TStringField
      FieldName = 'emp_nomerespcont'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespcont'
      Size = 50
    end
    object quEtiquetaEmpEmp_respcomp: TIntegerField
      FieldName = 'Emp_respcomp'
      Origin = 'TALENTPOOL.Empresa.Emp_respcomp'
    end
    object quEtiquetaEmpemp_nomerespcomp: TStringField
      FieldName = 'emp_nomerespcomp'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespcomp'
      Size = 50
    end
    object quEtiquetaEmpEmp_respent: TIntegerField
      FieldName = 'Emp_respent'
      Origin = 'TALENTPOOL.Empresa.Emp_respent'
    end
    object quEtiquetaEmpemp_nomerespent: TStringField
      FieldName = 'emp_nomerespent'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespent'
      Size = 50
    end
    object quEtiquetaEmpEmp_respfin: TIntegerField
      FieldName = 'Emp_respfin'
      Origin = 'TALENTPOOL.Empresa.Emp_respfin'
    end
    object quEtiquetaEmpemp_nomerespfin: TStringField
      FieldName = 'emp_nomerespfin'
      Origin = 'TALENTPOOL.Empresa.emp_nomerespfin'
      Size = 50
    end
    object quEtiquetaEmpemp_tipo: TStringField
      FieldName = 'emp_tipo'
      Origin = 'TALENTPOOL.Empresa.emp_tipo'
      Size = 10
    end
    object quEtiquetaEmpemp_formapgto: TStringField
      FieldName = 'emp_formapgto'
      Origin = 'TALENTPOOL.Empresa.emp_formapgto'
      Size = 10
    end
    object quEtiquetaEmpemp_observacao: TStringField
      FieldName = 'emp_observacao'
      Origin = 'TALENTPOOL.Empresa.emp_observacao'
      Size = 250
    end
    object quEtiquetaEmpemp_bolsa: TStringField
      FieldName = 'emp_bolsa'
      Origin = 'TALENTPOOL.Empresa.emp_bolsa'
      Size = 30
    end
    object quEtiquetaEmpemp_tipotaxa: TStringField
      FieldName = 'emp_tipotaxa'
      Origin = 'TALENTPOOL.Empresa.emp_tipotaxa'
      Size = 1
    end
    object quEtiquetaEmpemp_valortaxa: TFloatField
      FieldName = 'emp_valortaxa'
      Origin = 'TALENTPOOL.Empresa.emp_valortaxa'
    end
    object quEtiquetaEmpEmp_dtretorno: TDateTimeField
      FieldName = 'Emp_dtretorno'
      Origin = 'TALENTPOOL.Empresa.Emp_dtretorno'
    end
    object quEtiquetaEmpemp_site: TStringField
      FieldName = 'emp_site'
      Origin = 'TALENTPOOL.Empresa.emp_site'
      Size = 100
    end
    object quEtiquetaEmpemp_filiais: TIntegerField
      FieldName = 'emp_filiais'
      Origin = 'TALENTPOOL.Empresa.emp_filiais'
    end
    object quEtiquetaEmpemp_atuacao: TIntegerField
      FieldName = 'emp_atuacao'
      Origin = 'TALENTPOOL.Empresa.emp_atuacao'
    end
    object quEtiquetaEmpemp_segmento: TStringField
      FieldName = 'emp_segmento'
      Origin = 'TALENTPOOL.Empresa.emp_segmento'
      Size = 50
    end
    object quEtiquetaEmpemp_func: TIntegerField
      FieldName = 'emp_func'
      Origin = 'TALENTPOOL.Empresa.emp_func'
    end
    object quEtiquetaEmpemp_estag: TIntegerField
      FieldName = 'emp_estag'
      Origin = 'TALENTPOOL.Empresa.emp_estag'
    end
    object quEtiquetaEmpemp_missao: TStringField
      FieldName = 'emp_missao'
      Origin = 'TALENTPOOL.Empresa.emp_missao'
      Size = 250
    end
    object quEtiquetaEmpemp_visao: TStringField
      FieldName = 'emp_visao'
      Origin = 'TALENTPOOL.Empresa.emp_visao'
      Size = 250
    end
    object quEtiquetaEmpemp_valores: TStringField
      FieldName = 'emp_valores'
      Origin = 'TALENTPOOL.Empresa.emp_valores'
      Size = 250
    end
    object quEtiquetaEmpemp_obsperfil: TStringField
      FieldName = 'emp_obsperfil'
      Origin = 'TALENTPOOL.Empresa.emp_obsperfil'
      Size = 250
    end
    object quEtiquetaEmpemp_espera: TStringField
      FieldName = 'emp_espera'
      Origin = 'TALENTPOOL.Empresa.emp_espera'
      Size = 250
    end
    object quEtiquetaEmpemp_perspec: TStringField
      FieldName = 'emp_perspec'
      Origin = 'TALENTPOOL.Empresa.emp_perspec'
      Size = 250
    end
    object quEtiquetaEmpemp_treina: TStringField
      FieldName = 'emp_treina'
      Origin = 'TALENTPOOL.Empresa.emp_treina'
      Size = 250
    end
    object quEtiquetaEmpemp_dtpgto: TIntegerField
      FieldName = 'emp_dtpgto'
      Origin = 'TALENTPOOL.Empresa.emp_dtpgto'
    end
    object quEtiquetaEmpemp_contratacao: TStringField
      FieldName = 'emp_contratacao'
      Origin = 'TALENTPOOL.Empresa.emp_contratacao'
      Size = 250
    end
    object quEtiquetaEmpemp_incontratacao: TStringField
      FieldName = 'emp_incontratacao'
      Origin = 'TALENTPOOL.Empresa.emp_incontratacao'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_atendcetefe: TStringField
      FieldName = 'emp_atendcetefe'
      Origin = 'TALENTPOOL.Empresa.emp_atendcetefe'
      Size = 250
    end
    object quEtiquetaEmpemp_inatendcetefe: TStringField
      FieldName = 'emp_inatendcetefe'
      Origin = 'TALENTPOOL.Empresa.emp_inatendcetefe'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_prevcontrat: TStringField
      FieldName = 'emp_prevcontrat'
      Origin = 'TALENTPOOL.Empresa.emp_prevcontrat'
      Size = 50
    end
    object quEtiquetaEmpemp_respcontato: TStringField
      FieldName = 'emp_respcontato'
      Origin = 'TALENTPOOL.Empresa.emp_respcontato'
      Size = 50
    end
    object quEtiquetaEmpemp_contato: TStringField
      FieldName = 'emp_contato'
      Origin = 'TALENTPOOL.Empresa.emp_contato'
      Size = 50
    end
    object quEtiquetaEmpemp_datacontato: TDateTimeField
      FieldName = 'emp_datacontato'
      Origin = 'TALENTPOOL.Empresa.emp_datacontato'
    end
    object quEtiquetaEmpemp_setorcontato: TStringField
      FieldName = 'emp_setorcontato'
      Origin = 'TALENTPOOL.Empresa.emp_setorcontato'
      Size = 50
    end
    object quEtiquetaEmpemp_rapidez: TStringField
      FieldName = 'emp_rapidez'
      Origin = 'TALENTPOOL.Empresa.emp_rapidez'
      Size = 250
    end
    object quEtiquetaEmpemp_inrapidez: TStringField
      FieldName = 'emp_inrapidez'
      Origin = 'TALENTPOOL.Empresa.emp_inrapidez'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_qualidade: TStringField
      FieldName = 'emp_qualidade'
      Origin = 'TALENTPOOL.Empresa.emp_qualidade'
      Size = 250
    end
    object quEtiquetaEmpemp_inqualidade: TStringField
      FieldName = 'emp_inqualidade'
      Origin = 'TALENTPOOL.Empresa.emp_inqualidade'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_atendimento: TStringField
      FieldName = 'emp_atendimento'
      Origin = 'TALENTPOOL.Empresa.emp_atendimento'
      Size = 250
    end
    object quEtiquetaEmpemp_inatendimento: TStringField
      FieldName = 'emp_inatendimento'
      Origin = 'TALENTPOOL.Empresa.emp_inatendimento'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_pagamento: TStringField
      FieldName = 'emp_pagamento'
      Origin = 'TALENTPOOL.Empresa.emp_pagamento'
      Size = 50
    end
    object quEtiquetaEmpemp_inpagamento: TStringField
      FieldName = 'emp_inpagamento'
      Origin = 'TALENTPOOL.Empresa.emp_inpagamento'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_duvidas: TStringField
      FieldName = 'emp_duvidas'
      Origin = 'TALENTPOOL.Empresa.emp_duvidas'
      Size = 250
    end
    object quEtiquetaEmpemp_induvidas: TStringField
      FieldName = 'emp_induvidas'
      Origin = 'TALENTPOOL.Empresa.emp_induvidas'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_ciee: TStringField
      FieldName = 'emp_ciee'
      Origin = 'TALENTPOOL.Empresa.emp_ciee'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_iel: TStringField
      FieldName = 'emp_iel'
      Origin = 'TALENTPOOL.Empresa.emp_iel'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_interage: TStringField
      FieldName = 'emp_interage'
      Origin = 'TALENTPOOL.Empresa.emp_interage'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_educare: TStringField
      FieldName = 'emp_educare'
      Origin = 'TALENTPOOL.Empresa.emp_educare'
      FixedChar = True
      Size = 1
    end
    object quEtiquetaEmpemp_outrasint: TStringField
      FieldName = 'emp_outrasint'
      Origin = 'TALENTPOOL.Empresa.emp_outrasint'
      Size = 50
    end
    object quEtiquetaEmpemp_sugestoes: TStringField
      FieldName = 'emp_sugestoes'
      Origin = 'TALENTPOOL.Empresa.emp_sugestoes'
      Size = 250
    end
    object quEtiquetaEmpemp_enderecoenc: TStringField
      FieldName = 'emp_enderecoenc'
      Origin = 'TALENTPOOL.Empresa.emp_enderecoenc'
      Size = 100
    end
    object quEtiquetaEmpemp_bairroenc: TStringField
      FieldName = 'emp_bairroenc'
      Origin = 'TALENTPOOL.Empresa.emp_bairroenc'
      Size = 50
    end
    object quEtiquetaEmpemp_cidadeenc: TStringField
      FieldName = 'emp_cidadeenc'
      Origin = 'TALENTPOOL.Empresa.emp_cidadeenc'
      Size = 50
    end
    object quEtiquetaEmpemp_estadoenc: TStringField
      FieldName = 'emp_estadoenc'
      Origin = 'TALENTPOOL.Empresa.emp_estadoenc'
      FixedChar = True
      Size = 2
    end
    object quEtiquetaEmpemp_telefoneenc: TStringField
      FieldName = 'emp_telefoneenc'
      Origin = 'TALENTPOOL.Empresa.emp_telefoneenc'
      Size = 10
    end
    object quEtiquetaEmpemp_numend: TStringField
      FieldName = 'emp_numend'
      Origin = 'TALENTPOOL.Empresa.emp_numend'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_cjto: TStringField
      FieldName = 'emp_cjto'
      Origin = 'TALENTPOOL.Empresa.emp_cjto'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_numendenc: TStringField
      FieldName = 'emp_numendenc'
      Origin = 'TALENTPOOL.Empresa.emp_numendenc'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_cjtoendenc: TStringField
      FieldName = 'emp_cjtoendenc'
      Origin = 'TALENTPOOL.Empresa.emp_cjtoendenc'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_enderecocor: TStringField
      FieldName = 'emp_enderecocor'
      Origin = 'TALENTPOOL.Empresa.emp_enderecocor'
      Size = 100
    end
    object quEtiquetaEmpemp_bairrocor: TStringField
      FieldName = 'emp_bairrocor'
      Origin = 'TALENTPOOL.Empresa.emp_bairrocor'
      Size = 50
    end
    object quEtiquetaEmpemp_cidadecor: TStringField
      FieldName = 'emp_cidadecor'
      Origin = 'TALENTPOOL.Empresa.emp_cidadecor'
      Size = 50
    end
    object quEtiquetaEmpemp_estadocor: TStringField
      FieldName = 'emp_estadocor'
      Origin = 'TALENTPOOL.Empresa.emp_estadocor'
      FixedChar = True
      Size = 2
    end
    object quEtiquetaEmpemp_telefonecor: TStringField
      FieldName = 'emp_telefonecor'
      Origin = 'TALENTPOOL.Empresa.emp_telefonecor'
      Size = 10
    end
    object quEtiquetaEmpemp_numendcor: TStringField
      FieldName = 'emp_numendcor'
      Origin = 'TALENTPOOL.Empresa.emp_numendcor'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_cjtoendcor: TStringField
      FieldName = 'emp_cjtoendcor'
      Origin = 'TALENTPOOL.Empresa.emp_cjtoendcor'
      FixedChar = True
      Size = 10
    end
    object quEtiquetaEmpemp_cepenc: TStringField
      FieldName = 'emp_cepenc'
      Origin = 'TALENTPOOL.Empresa.emp_cepenc'
      FixedChar = True
      Size = 8
    end
    object quEtiquetaEmpemp_cepcor: TStringField
      FieldName = 'emp_cepcor'
      Origin = 'TALENTPOOL.Empresa.emp_cepcor'
      FixedChar = True
      Size = 8
    end
    object quEtiquetaEmpemp_descpgto: TMemoField
      FieldName = 'emp_descpgto'
      BlobType = ftMemo
      Size = 1
    end
  end
  object quContUFPR: TQuery
    CachedUpdates = True
    AfterInsert = quContUFPRAfterInsert
    OnCalcFields = quContUFPRCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, 0 tce_situacao' +
        ','
      '  m.emp_tipotaxa, e.cur_nome,'
      
        '  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, t.tce_bolsa, '#39 +
        '1'#39' as Confirmacao, t.tce_dataini, t.tce_datafim'
      'from'
      '  Tce t, estudante e, instituicao i, empresa m'
      'where'
      '  e.inst_cod = i.inst_cod and'
      '  t.emp_cod = m.emp_cod and'
      '  t.est_cod = e.est_cod and'
      '  i.inst_cod = :inst_cod and'
      '  t.tce_situacao <> '#39'7'#39
      'order by'
      '  e.est_nome'
      '')
    UpdateObject = usContUFPR
    Left = 969
    Top = 65529
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quContUFPRtce_cod: TIntegerField
      FieldName = 'tce_cod'
    end
    object quContUFPRest_nome: TStringField
      DisplayWidth = 38
      FieldName = 'est_nome'
      Size = 50
    end
    object quContUFPRinst_nome: TStringField
      FieldName = 'inst_nome'
      Visible = False
      Size = 150
    end
    object quContUFPRemp_nome: TStringField
      DisplayWidth = 29
      FieldName = 'emp_nome'
      Size = 150
    end
    object quContUFPRemp_tipotaxa: TStringField
      FieldName = 'emp_tipotaxa'
      Visible = False
      Size = 1
    end
    object quContUFPRDescSituacao: TStringField
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Size = 30
      Calculated = True
    end
    object quContUFPRvalorCont: TFloatField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'valorCont'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quContUFPRValorUFPR: TFloatField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'ValorUFPR'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object quContUFPRemp_valortaxa: TFloatField
      FieldName = 'emp_valortaxa'
    end
    object quContUFPRtce_datares: TDateTimeField
      FieldName = 'tce_datares'
      Visible = False
    end
    object quContUFPRConfirmacao: TStringField
      FieldName = 'Confirmacao'
      Size = 255
    end
    object quContUFPRtce_bolsa: TFloatField
      FieldName = 'tce_bolsa'
      DisplayFormat = '#,###,##0.00'
    end
    object quContUFPRtce_dataini: TDateTimeField
      FieldName = 'tce_dataini'
    end
    object quContUFPRtce_datafim: TDateTimeField
      FieldName = 'tce_datafim'
      Visible = False
    end
    object quContUFPRtce_tothoras: TFloatField
      FieldName = 'tce_tothoras'
      Visible = False
      DisplayFormat = '0.0'
    end
    object quContUFPRcur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Visible = False
      Size = 80
    end
    object quContUFPRtce_situacao: TIntegerField
      FieldName = 'tce_situacao'
      Visible = False
    end
  end
  object dsContUFPR: TDataSource
    DataSet = quContUFPR
    Left = 899
    Top = 65524
  end
  object usContUFPR: TUpdateSQL
    ModifySQL.Strings = (
      'update Tce'
      'set'
      '  Confirmacao = :Confirmacao, '
      '  tce_bolsa = :tce_bolsa'
      'where'
      '  Tce_cod = :OLD_Tce_cod')
    Left = 1027
    Top = 65528
  end
  object usVerEsc1: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '  Estudante'
      'Set'
      '  Etiqueta = 1'
      'where'
      '  inst_cod = :OLD_Inst_cod')
    Left = 1200
    Top = 364
  end
  object quInstFuncionario: TQuery
    CachedUpdates = True
    BeforeDelete = quInstFuncionarioBeforeDelete
    OnCalcFields = quInstFuncionarioCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  Instfuncionario'
      'where '
      '  inst_cod = :inst_cod'
      'order by'
      '  ifu_nome')
    UpdateObject = usInstFuncionario
    Left = 539
    Top = 380
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quInstFuncionarioInst_cod: TIntegerField
      DisplayWidth = 12
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
    end
    object quInstFuncionarioFunc_cod: TIntegerField
      DisplayLabel = 'Func.'
      DisplayWidth = 7
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.Instfuncionario.Func_cod'
    end
    object quInstFuncionarioIfu_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 84
      FieldName = 'Ifu_nome'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_nome'
      Size = 50
    end
    object quInstFuncionarioIfu_fone: TStringField
      FieldName = 'Ifu_fone'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstFuncionarioIfu_fonecel: TStringField
      FieldName = 'Ifu_fonecel'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_fonecel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstFuncionarioIfu_email: TStringField
      FieldName = 'Ifu_email'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_email'
      Visible = False
      Size = 80
    end
    object quInstFuncionarioIfu_setor: TStringField
      DisplayLabel = 'Setor'
      DisplayWidth = 15
      FieldName = 'Ifu_setor'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_setor'
      Visible = False
      Size = 100
    end
    object quInstFuncionarioIfu_cargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'Ifu_cargo'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_cargo'
      Visible = False
      Size = 100
    end
    object quInstFuncionarioIfu_observacao: TStringField
      FieldName = 'Ifu_observacao'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_observacao'
      Visible = False
      Size = 250
    end
    object quInstFuncionarioifu_dia: TIntegerField
      FieldName = 'ifu_dia'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_dia'
      Visible = False
    end
    object quInstFuncionarioifu_mes: TIntegerField
      FieldName = 'ifu_mes'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_mes'
      Visible = False
    end
    object quInstFuncionarioIfu_cpf: TStringField
      FieldName = 'Ifu_cpf'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_cpf'
      Visible = False
      Size = 11
    end
    object quInstFuncionarioIfu_rg: TStringField
      FieldName = 'Ifu_rg'
      Origin = 'TALENTPOOL.Instfuncionario.Ifu_rg'
      Visible = False
    end
    object quInstFuncionarioifu_nacionalidade: TStringField
      FieldName = 'ifu_nacionalidade'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_nacionalidade'
      Visible = False
      Size = 50
    end
    object quInstFuncionarioifu_estcivil: TStringField
      FieldName = 'ifu_estcivil'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_estcivil'
      Visible = False
      Size = 50
    end
    object quInstFuncionarioifu_sexo: TStringField
      FieldName = 'ifu_sexo'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_sexo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quInstFuncionarioifu_Inativo: TStringField
      FieldName = 'ifu_Inativo'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_Inativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quInstFuncionarioifu_registro: TStringField
      FieldName = 'ifu_registro'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_registro'
      Visible = False
      Size = 25
    end
    object quInstFuncionarioifu_formacao: TStringField
      FieldName = 'ifu_formacao'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
      Size = 50
    end
    object quInstFuncionarioifu_formacao2: TStringField
      FieldName = 'ifu_formacao2'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
      Size = 100
    end
    object quInstFuncionarioifu_registro2: TStringField
      FieldName = 'ifu_registro2'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_registro2'
      Visible = False
      Size = 25
    end
    object quInstFuncionarioifu_profissao: TStringField
      FieldName = 'ifu_profissao'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_profissao'
      Visible = False
      Size = 50
    end
    object quInstFuncionarioifu_recebeEmail: TStringField
      FieldName = 'ifu_recebeEmail'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_recebeEmail'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quInstFuncionarioifu_DataExperiencia: TDateTimeField
      FieldName = 'ifu_DataExperiencia'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_DataExperiencia'
      Visible = False
    end
    object quInstFuncionarioifu_area: TStringField
      FieldName = 'ifu_area'
      Origin = 'TALENTPOOL.Instfuncionario.ifu_area'
      Visible = False
      Size = 60
    end
    object quInstFuncionarioForm_cod: TIntegerField
      FieldName = 'Form_cod'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
    end
    object quInstFuncionarioFormatratamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formatratamento'
      Size = 60
      Calculated = True
    end
  end
  object dsAgenda: TDataSource
    DataSet = quAgenda
    Left = 698
    Top = 88
  end
  object quAgenda: TQuery
    CachedUpdates = True
    AfterInsert = quAgendaAfterInsert
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select      convert(varchar, A.age_data, 8) Hora'
      '          , A.*'
      '          , m1.emp_nome  empresa1'
      '          , e1.est_nome  age_estnome1'
      '          , V1.vag_setor setor1'
      '          , m2.emp_nome  empresa2'
      '          , e2.est_nome  age_estnome2'
      '          , V2.vag_setor setor2'
      '          , m3.emp_nome  empresa3'
      '          , e3.est_nome  age_estnome3'
      '          , V3.vag_setor setor3'
      ''
      'from      Agenda  A'
      ''
      'left join Vaga    V1'
      'on        A.age_vagcod1 = V1.vag_cod'
      'left join Empresa   M1'
      'on        v1.emp_cod = m1.emp_cod'
      'left join Estudante E1'
      'on        A.age_estcod1 = e1.est_cod'
      ''
      'left join Vaga    V2'
      'on        A.age_vagcod2 = V2.vag_cod'
      'left join Empresa    m2'
      'on        v2.emp_cod = m2.emp_cod'
      'left join Estudante E2'
      'on        A.age_estcod2 = e2.est_cod'
      ''
      'left join Vaga    V3'
      'on        A.age_vagcod3 = V3.vag_cod'
      'left join Empresa m3'
      'on        V3.emp_cod = m3.emp_cod'
      'left join Estudante E3'
      'on        A.age_estcod3 = e3.est_cod'
      ''
      ''
      'where     A.age_data between :data1 and :data2'
      ' '
      'order by age_data')
    UpdateObject = usAgenda
    Left = 764
    Top = 88
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quAgendaHora: TStringField
      DisplayWidth = 10
      FieldName = 'Hora'
      Size = 30
    end
    object quAgendaage_data: TDateTimeField
      FieldName = 'age_data'
      Origin = 'TALENTPOOL.Agenda.age_data'
      Visible = False
    end
    object quAgendaage_estcod1: TIntegerField
      FieldName = 'age_estcod1'
      Origin = 'TALENTPOOL.Agenda.age_estcod1'
      Visible = False
    end
    object quAgendaAge_nome1: TStringField
      DisplayLabel = 'Estudante 1'
      FieldName = 'Age_nome1'
      Size = 50
    end
    object quAgendaage_estnome1: TStringField
      DisplayLabel = 'Estudante 1'
      DisplayWidth = 22
      FieldName = 'age_estnome1'
      Origin = 'TALENTPOOL.Agenda.age_estnome1'
      Visible = False
      Size = 50
    end
    object quAgendaage_estcod2: TIntegerField
      FieldName = 'age_estcod2'
      Origin = 'TALENTPOOL.Agenda.age_estcod2'
      Visible = False
    end
    object quAgendaAge_nome2: TStringField
      DisplayLabel = 'Estudante 2'
      FieldName = 'Age_nome2'
      Size = 50
    end
    object quAgendaage_estnome2: TStringField
      DisplayLabel = 'Estudante 2'
      DisplayWidth = 22
      FieldName = 'age_estnome2'
      Origin = 'TALENTPOOL.Agenda.age_estnome2'
      Visible = False
      Size = 50
    end
    object quAgendaage_estcod3: TIntegerField
      FieldName = 'age_estcod3'
      Origin = 'TALENTPOOL.Agenda.age_estcod3'
      Visible = False
    end
    object quAgendaAge_nome3: TStringField
      DisplayLabel = 'Estudante 3'
      FieldName = 'Age_nome3'
      Size = 50
    end
    object quAgendaage_estnome3: TStringField
      DisplayLabel = 'Estudante 3'
      DisplayWidth = 22
      FieldName = 'age_estnome3'
      Origin = 'TALENTPOOL.Agenda.age_estnome3'
      Visible = False
      Size = 50
    end
    object quAgendaage_faltou1: TStringField
      FieldName = 'age_faltou1'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendaage_faltou2: TStringField
      FieldName = 'age_faltou2'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendaage_faltou3: TStringField
      FieldName = 'age_faltou3'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendaage_vagcod1: TIntegerField
      FieldName = 'age_vagcod1'
      Visible = False
    end
    object quAgendaage_vagcod2: TIntegerField
      FieldName = 'age_vagcod2'
      Visible = False
    end
    object quAgendaage_vagcod3: TIntegerField
      FieldName = 'age_vagcod3'
      Visible = False
    end
    object quAgendaempresa1: TStringField
      FieldName = 'empresa1'
      Visible = False
      Size = 150
    end
    object quAgendaempresa2: TStringField
      FieldName = 'empresa2'
      Visible = False
      Size = 150
    end
    object quAgendaempresa3: TStringField
      FieldName = 'empresa3'
      Visible = False
      Size = 150
    end
    object quAgendaage_ficha1: TStringField
      FieldName = 'age_ficha1'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendaage_ficha2: TStringField
      FieldName = 'age_ficha2'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendaage_ficha3: TStringField
      FieldName = 'age_ficha3'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object quAgendasetor1: TStringField
      FieldName = 'setor1'
      Visible = False
      Size = 40
    end
    object quAgendasetor2: TStringField
      FieldName = 'setor2'
      Visible = False
      Size = 40
    end
    object quAgendasetor3: TStringField
      FieldName = 'setor3'
      Visible = False
      Size = 40
    end
    object quAgendaage_porque1: TStringField
      FieldName = 'age_porque1'
      Visible = False
      Size = 100
    end
    object quAgendaage_porque2: TStringField
      FieldName = 'age_porque2'
      Visible = False
      Size = 100
    end
    object quAgendaage_porque3: TStringField
      FieldName = 'age_porque3'
      Visible = False
      Size = 100
    end
    object quAgendaage_CRC1: TStringField
      FieldName = 'age_CRC1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaage_crc2: TStringField
      FieldName = 'age_crc2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaage_crc3: TStringField
      FieldName = 'age_crc3'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaage_dtEnvio1: TDateTimeField
      FieldName = 'age_dtEnvio1'
      Visible = False
    end
    object quAgendaage_dtEnvio2: TDateTimeField
      FieldName = 'age_dtEnvio2'
      Visible = False
    end
    object quAgendaage_dtEnvio3: TDateTimeField
      FieldName = 'age_dtEnvio3'
      Visible = False
    end
    object quAgendaAge_Teste1: TStringField
      FieldName = 'Age_Teste1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_Redacao1: TStringField
      FieldName = 'Age_Redacao1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_Teste2: TStringField
      FieldName = 'Age_Teste2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_Redacao2: TStringField
      FieldName = 'Age_Redacao2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_Teste3: TStringField
      FieldName = 'Age_Teste3'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_Redacao3: TStringField
      FieldName = 'Age_Redacao3'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_info1: TStringField
      FieldName = 'Age_info1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_info2: TStringField
      FieldName = 'Age_info2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_info3: TStringField
      FieldName = 'Age_info3'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_LEstrangeira1: TStringField
      FieldName = 'Age_LEstrangeira1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_LEstrangeira2: TStringField
      FieldName = 'Age_LEstrangeira2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quAgendaAge_LEstrangeira3: TStringField
      FieldName = 'Age_LEstrangeira3'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object usAgenda: TUpdateSQL
    ModifySQL.Strings = (
      'update Agenda'
      'set'
      '  age_data = :age_data,'
      '  age_estcod1 = :age_estcod1,'
      '  age_faltou1 = :age_faltou1,'
      '  age_ficha1 = :age_ficha1,'
      '  age_estcod2 = :age_estcod2,'
      '  age_faltou2 = :age_faltou2,'
      '  age_ficha2 = :age_ficha2,'
      '  age_estcod3 = :age_estcod3,'
      '  age_faltou3 = :age_faltou3,'
      '  age_ficha3 = :age_ficha3,'
      '  age_vagcod1 = :age_vagcod1,'
      '  age_vagcod2 = :age_vagcod2,'
      '  age_vagcod3 = :age_vagcod3,'
      '  age_porque1 = :age_porque1,'
      '  age_porque2 = :age_porque2,'
      '  age_porque3 = :age_porque3,'
      '  age_crc1 = :age_crc1,'
      '  age_crc2 = :age_crc2,'
      '  age_crc3 = :age_crc3,'
      '  age_dtEnvio1 = :age_dtEnvio1,'
      '  age_dtEnvio2 = :age_dtEnvio2,'
      '  age_dtEnvio3 = :age_dtEnvio3,'
      '  Age_Teste1 = :Age_Teste1,'
      '  Age_Redacao1 = :Age_Redacao1,'
      '  Age_Teste2 = :Age_Teste2,'
      '  Age_Redacao2 = :Age_Redacao2,'
      '  Age_Teste3 = :Age_Teste3,'
      '  Age_Redacao3 = :Age_Redacao3,'
      '  Age_Info1 = :Age_Info1,'
      '  Age_Info2 = :Age_Info2,'
      '  Age_Info3 = :Age_Info3,'
      '  Age_LEstrangeira1 = :Age_LEstrangeira1,'
      '  Age_LEstrangeira2 = :Age_LEstrangeira2,'
      '  Age_LEstrangeira3 = :Age_LEstrangeira3,'
      '  Age_nome1 = :Age_nome1,'
      '  Age_nome2 = :Age_nome2,'
      '  Age_nome3 = :Age_nome3'
      'where'
      '  age_data = :OLD_age_data')
    InsertSQL.Strings = (
      'insert into Agenda'
      
        '  (age_data, age_estcod1, age_faltou1, age_ficha1, age_estcod2, ' +
        'age_faltou2, '
      
        '   age_ficha2, age_estcod3, age_faltou3, age_ficha3, age_vagcod1' +
        ', age_vagcod2, '
      
        '   age_vagcod3, age_porque1, age_porque2, age_porque3, age_crc1,' +
        ' age_crc2, '
      
        '   age_crc3, age_dtEnvio1, age_dtEnvio2, age_dtEnvio3, Age_Teste' +
        '1, Age_Redacao1, '
      
        '   Age_Teste2, Age_Redacao2, Age_Teste3, Age_Redacao3, Age_Info1' +
        ', Age_Info2, '
      
        '   Age_Info3, Age_LEstrangeira1, Age_LEstrangeira2, Age_LEstrang' +
        'eira3, '
      '   Age_nome1, Age_nome2, Age_nome3)'
      'values'
      
        '  (:age_data, :age_estcod1, :age_faltou1, :age_ficha1, :age_estc' +
        'od2, :age_faltou2, '
      
        '   :age_ficha2, :age_estcod3, :age_faltou3, :age_ficha3, :age_va' +
        'gcod1, '
      
        '   :age_vagcod2, :age_vagcod3, :age_porque1, :age_porque2, :age_' +
        'porque3, '
      
        '   :age_crc1, :age_crc2, :age_crc3, :age_dtEnvio1, :age_dtEnvio2' +
        ', :age_dtEnvio3, '
      
        '   :Age_Teste1, :Age_Redacao1, :Age_Teste2, :Age_Redacao2, :Age_' +
        'Teste3, '
      
        '   :Age_Redacao3, :Age_Info1, :Age_Info2, :Age_Info3, :Age_LEstr' +
        'angeira1, '
      
        '   :Age_LEstrangeira2, :Age_LEstrangeira3, :Age_nome1, :Age_nome' +
        '2, :Age_nome3)')
    DeleteSQL.Strings = (
      'delete from Agenda'
      'where'
      '  age_data = :OLD_age_data')
    Left = 825
    Top = 89
  end
  object dsAgendaEst: TDataSource
    DataSet = quAgendaEst
    Left = 899
    Top = 31
  end
  object quAgendaEst: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select  max(age_data) age_data'
      'from    Agenda'
      'where   (age_estcod1 = :est_cod)'
      'or      (age_estcod2 = :est_cod)'
      'or      (age_estcod3 = :est_cod)')
    UpdateObject = usAgendaEst
    Left = 969
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quAgendaEstage_data: TDateTimeField
      FieldName = 'age_data'
      Origin = 'TALENTPOOL.Agenda.age_data'
    end
  end
  object usAgendaEst: TUpdateSQL
    Left = 1027
    Top = 36
  end
  object dsEntrevista: TDataSource
    DataSet = quEntrevista
    Left = 272
    Top = 622
  end
  object quEntrevista: TQuery
    CachedUpdates = True
    OnCalcFields = quEntrevistaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select  A.age_data, a.age_faltou1 Presenca, 1 est,'
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, E.est_cod, '#39'Sim'#39' as Encaminhado,' +
        ' m.emp_nome,'
      '        A.age_porque1 porque'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata'
      'and'#9#9'  e.vag_cod = v.vag_cod'
      'and '#9#9'A.age_estcod1 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'A.age_vagcod1 = v.vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca, 2 est,'
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, E.est_cod, '#39'Sim'#39' as Encaminhado,' +
        ' m.emp_nome,'
      '        A.age_porque2 porque'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata and A.age_estcod2 = E.est_cod'
      'and'#9#9'  e.vag_cod = v.vag_cod'
      'and     E.est_cod = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'A.age_vagcod2 = v.vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca, 3 est,'
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, E.est_cod, '#39'Sim'#39' as Encaminhado,' +
        ' m.emp_nome,'
      '        A.age_porque3 porque'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata and A.age_estcod3 = E.est_cod'
      'and'#9#9'  e.vag_cod = v.vag_cod'
      'and     E.est_cod = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'A.age_vagcod3 = v.vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou1 Presenca, 1 est,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, A.age_estcod1 est_cod, '#39'N'#227'o'#39' a' +
        's Encaminhado, m.emp_nome,'
      '        A.age_porque1 porque'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod1 = v.vag_cod'
      'and     A.age_estcod1 = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod1 and v.vag_cod = e.vag_cod)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca, 2 est,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, A.age_estcod2 est_cod, '#39'N'#227'o'#39' a' +
        's Encaminhado, m.emp_nome,'
      '        A.age_porque2 porque'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod2 = v.vag_cod'
      'and     A.age_estcod2 = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod2 and e.vag_cod = v.vag_cod)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca, 3 est,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, A.age_estcod3 est_cod, '#39'N'#227'o'#39' a' +
        's Encaminhado, m.emp_nome,'
      '        A.age_porque3 porque'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod3 = v.vag_cod'
      'and     A.age_estcod3 = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod3 and e.vag_cod = v.vag_cod)'
      ''
      'union'
      ''
      'select  E.eva_dataenc age_data, '#39'Sim'#39' Presenca, 0 est,'
      
        #9#9#9#9'E.eva_resultado, v.vag_cod, E.est_cod, '#39'Sim'#39' as Encaminhado,' +
        ' m.emp_nome,'
      '        '#39#39' porque'
      'from    Encaminhamento E, Vaga V, Empresa M'
      'where   E.vag_cod = v.vag_cod'
      'and     e.est_cod = :est_cod'
      'and     V.emp_cod = M.emp_cod'
      'and '#9#9'Not Exists (select A.* from Agenda A'
      
        'where   ((E.est_cod   = A.age_estcod1) or (E.est_cod   = A.age_e' +
        'stcod2) or (E.est_cod = A.age_estcod3))'
      
        'and'#9#9'  ((v.vag_cod   = a.age_vagcod1) or (v.vag_cod   = a.age_va' +
        'gcod2) or (v.vag_cod   = a.age_vagcod3)))'
      ''
      ''
      'order by A.age_data'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 336
    Top = 617
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quEntrevistaage_data: TDateTimeField
      DisplayLabel = 'Data Entrevista'
      DisplayWidth = 18
      FieldName = 'age_data'
    end
    object quEntrevistaEncaminhado: TStringField
      DisplayWidth = 10
      FieldName = 'Encaminhado'
      Size = 3
    end
    object quEntrevistaeva_resultado: TStringField
      DisplayWidth = 10
      FieldName = 'eva_resultado'
      Visible = False
      Size = 1
    end
    object quEntrevistaResultado: TStringField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      Size = 50
      Calculated = True
    end
    object quEntrevistavag_cod: TIntegerField
      DisplayLabel = 'Oportunidade'
      FieldName = 'vag_cod'
      Visible = False
    end
    object quEntrevistaPresenca: TStringField
      DisplayWidth = 10
      FieldName = 'Presenca'
      Size = 1
    end
    object quEntrevistaemp_nome: TStringField
      FieldName = 'emp_nome'
      Visible = False
      Size = 150
    end
    object quEntrevistaest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quEntrevistaporque: TStringField
      FieldName = 'porque'
      Visible = False
      Size = 100
    end
    object quEntrevistaest: TIntegerField
      FieldName = 'est'
      Visible = False
    end
  end
  object quAvalDesemp: TQuery
    CachedUpdates = True
    OnCalcFields = quAvalDesempCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  t.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est' +
        '_email,'
      '  t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_avaliacao,'
      '  m.emp_telefone, m.emp_nomerespent, f.efu_email'
      'from'
      '  tce t, Estudante e, Empresa m, EmpFuncionario f'
      'where'
      '  t.est_cod       = e.est_cod and'
      '  t.tce_dataini   = :dataPesquisa and'
      '  t.tce_avaliacao is null and'
      '  t.tce_situacao  = '#39'0'#39' and'
      '  t.emp_cod       = m.emp_cod  and'
      '  m.emp_cod         = f.emp_cod and'
      '  m.emp_respent     = f.func_cod'
      ''
      'union'
      ''
      'select'
      
        '  t.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est' +
        '_email,'
      '  t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_avaliacao,'
      '  m.emp_telefone, m.emp_nomerespent, f.efu_email'
      'from'
      '  tce t, Estudante e, Empresa m, EmpFuncionario f'
      'where'
      '  t.est_cod       = e.est_cod and'
      '  t.tce_avaliacao = :dataPesquisa and'
      '  t.tce_avaliacao is not null and'
      '  t.tce_situacao  = '#39'0'#39' and'
      '  t.emp_cod       = m.emp_cod and'
      '  m.emp_cod         = f.emp_cod and'
      '  m.emp_respent     = f.func_cod'
      ''
      'union'
      ''
      'select'
      
        '  tce.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.e' +
        'st_email,'
      
        '  tce.tce_dataini, t.tpr_datafim, tce.tce_situacao, tce.tce_aval' +
        'iacao,'
      '  m.emp_telefone, m.emp_nomerespent, f.efu_email'
      'from'
      '  tce, tceAditivo t, Estudante e, Empresa m, EmpFuncionario f'
      'where'
      '  tce.est_cod     = e.est_cod and'
      '  t.tce_cod       = tce.tce_cod and'
      '  tce.tce_dataini = :dataPesquisa and'
      '  tce.tce_avaliacao is null and'
      '  tce.tce_situacao = t.prg_cod and'
      '  tce.tce_situacao <> '#39'7'#39' and'
      '  tce.tce_situacao <> '#39'0'#39' and'
      '  tce.emp_cod       = m.emp_cod and'
      '  m.emp_cod         = f.emp_cod and'
      '  m.emp_respent     = f.func_cod'
      ''
      'union'
      ''
      'select'
      
        '  tce.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.e' +
        'st_email,'
      
        '  tce.tce_dataini, t.tpr_datafim, tce.tce_situacao, tce.tce_aval' +
        'iacao,'
      '  m.emp_telefone, m.emp_nomerespent, f.efu_email'
      'from'
      '  tce, tceAditivo t, Estudante e, Empresa m, EmpFuncionario f'
      'where'
      '  tce.est_cod       = e.est_cod and'
      '  t.tce_cod         = tce.tce_cod and'
      '  tce.tce_avaliacao = :dataPesquisa and'
      '  tce.tce_avaliacao is not null and'
      '  tce.tce_situacao  = t.prg_cod and'
      '  tce.tce_situacao <> '#39'7'#39' and'
      '  tce.tce_situacao <> '#39'0'#39' and'
      '  tce.emp_cod       = m.emp_cod and'
      '  m.emp_cod         = f.emp_cod and'
      '  m.emp_respent     = f.func_cod'
      ''
      ''
      ''
      ''
      '')
    Left = 336
    Top = 521
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dataPesquisa'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataPesquisa'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataPesquisa'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataPesquisa'
        ParamType = ptUnknown
      end>
    object quAvalDesempemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 29
      FieldName = 'emp_nome'
      Size = 150
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 7
      FieldName = 'tce_cod'
    end
    object IntegerField6: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object StringField4: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 29
      FieldName = 'est_nome'
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 12
      FieldName = 'tce_dataini'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Fim'
      DisplayWidth = 12
      FieldName = 'tce_datafim'
    end
    object StringField5: TStringField
      FieldName = 'tce_situacao'
      Visible = False
      Size = 255
    end
    object quAvalDesemptce_avaliacao: TDateTimeField
      DisplayLabel = #218'ltima Aval.'
      DisplayWidth = 12
      FieldName = 'tce_avaliacao'
    end
    object StringField6: TStringField
      FieldName = 'est_cpf'
      Visible = False
      Size = 11
    end
    object StringField7: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'CPFFormatado'
      Visible = False
      Calculated = True
    end
    object StringField8: TStringField
      FieldName = 'est_email'
      Visible = False
      Size = 50
    end
    object quAvalDesempemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Visible = False
      Size = 10
    end
    object quAvalDesempFoneFormatado: TStringField
      FieldKind = fkCalculated
      FieldName = 'FoneFormatado'
      Visible = False
      Calculated = True
    end
    object quAvalDesempemp_nomerespent: TStringField
      FieldName = 'emp_nomerespent'
      Visible = False
      Size = 50
    end
    object quAvalDesempefu_email: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 40
      FieldName = 'efu_email'
      Size = 80
    end
  end
  object dsAvalDesemp: TDataSource
    DataSet = quAvalDesemp
    Left = 272
    Top = 526
  end
  object usCoordenador: TUpdateSQL
    ModifySQL.Strings = (
      'update InstCoordenador'
      'set'
      '  inst_cod = :inst_cod,'
      '  coord_cod = :coord_cod,'
      '  ico_nome = :ico_nome,'
      '  ico_fone = :ico_fone,'
      '  ico_fonecel = :ico_fonecel,'
      '  ico_email = :ico_email,'
      '  ico_setor = :ico_setor,'
      '  ico_cargo = :ico_cargo,'
      '  ico_observacao = :ico_observacao,'
      '  ico_sexo = :ico_sexo'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  coord_cod = :OLD_coord_cod')
    InsertSQL.Strings = (
      'insert into InstCoordenador'
      
        '  (inst_cod, coord_cod, ico_nome, ico_fone, ico_fonecel, ico_ema' +
        'il, ico_setor, '
      '   ico_cargo, ico_observacao, ico_sexo)'
      'values'
      
        '  (:inst_cod, :coord_cod, :ico_nome, :ico_fone, :ico_fonecel, :i' +
        'co_email, '
      '   :ico_setor, :ico_cargo, :ico_observacao, :ico_sexo)')
    DeleteSQL.Strings = (
      'delete from InstCoordenador'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  coord_cod = :OLD_coord_cod')
    Left = 402
    Top = 65529
  end
  object quInstCoordenador: TQuery
    CachedUpdates = True
    OnCalcFields = quInstCoordenadorCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  InstCoordenador'
      'where '
      '  inst_cod = :inst_cod'
      'order by'
      '  ico_nome')
    UpdateObject = usCoordenador
    Left = 336
    Top = 65530
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object IntegerField7: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
    end
    object quInstCoordenadorcoord_cod: TIntegerField
      DisplayLabel = 'Coord.'
      DisplayWidth = 4
      FieldName = 'coord_cod'
      Origin = 'TALENTPOOL.InstCoordenador.coord_cod'
    end
    object quInstCoordenadorico_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'ico_nome'
      Origin = 'TALENTPOOL.InstCoordenador.ico_nome'
      Size = 50
    end
    object quInstCoordenadorico_fone: TStringField
      FieldName = 'ico_fone'
      Origin = 'TALENTPOOL.InstCoordenador.ico_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstCoordenadorico_fonecel: TStringField
      FieldName = 'ico_fonecel'
      Origin = 'TALENTPOOL.InstCoordenador.ico_fonecel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstCoordenadorico_email: TStringField
      FieldName = 'ico_email'
      Origin = 'TALENTPOOL.InstCoordenador.ico_email'
      Visible = False
      Size = 80
    end
    object quInstCoordenadorico_setor: TStringField
      DisplayLabel = 'Setor'
      DisplayWidth = 15
      FieldName = 'ico_setor'
      Origin = 'TALENTPOOL.InstCoordenador.ico_setor'
      Visible = False
      Size = 100
    end
    object quInstCoordenadorico_cargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'ico_cargo'
      Origin = 'TALENTPOOL.InstCoordenador.ico_cargo'
      Visible = False
      Size = 100
    end
    object quInstCoordenadorico_observacao: TStringField
      FieldName = 'ico_observacao'
      Origin = 'TALENTPOOL.InstCoordenador.ico_observacao'
      Visible = False
      Size = 250
    end
    object quInstCoordenadorico_sexo: TStringField
      FieldName = 'ico_sexo'
      Origin = 'TALENTPOOL.InstCoordenador.ico_sexo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quInstCoordenadorCursos: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cursos'
      Size = 60
      Calculated = True
    end
  end
  object dsInstCoordenador: TDataSource
    DataSet = quInstCoordenador
    Left = 272
    Top = 65534
  end
  object quAgendaVaga: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select A.age_vagcod1 vag_cod, m.emp_nome, e.est_nome, A.age_data'
      'from Agenda A, Vaga V, Empresa M, Estudante E'
      'where A.age_data between :data1 and :data2'
      'and A.age_vagcod1 = V.vag_cod'
      'and A.age_estcod1 = E.est_cod'
      'and v.emp_cod = m.emp_cod'
      ''
      'union'
      ''
      'select A.age_vagcod2, m.emp_nome, e.est_nome, A.age_data'
      'from Agenda A, Vaga V, Empresa M, Estudante E'
      'where A.age_data between :data1 and :data2'
      'and A.age_vagcod2 = V.vag_cod'
      'and A.age_estcod2 = E.est_cod'
      'and v.emp_cod = m.emp_cod'
      ''
      'union'
      ''
      'select A.age_vagcod3, m.emp_nome, e.est_nome, A.age_data'
      'from Agenda A, Vaga V, Empresa M, Estudante E'
      'where A.age_data between :data1 and :data2'
      'and A.age_vagcod3 = V.vag_cod'
      'and A.age_estcod3 = E.est_cod'
      'and v.emp_cod = m.emp_cod'
      ''
      ''
      'order by vag_cod, est_nome'
      ''
      '')
    Left = 1089
    Top = 229
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quAgendaVagavag_cod: TIntegerField
      FieldName = 'vag_cod'
    end
    object quAgendaVagaemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object quAgendaVagaest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object quAgendaVagaage_data: TDateTimeField
      FieldName = 'age_data'
    end
  end
  object quEntrevNaoRealiz: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select agenda.*, empresa.emp_nome, Estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou1 Presenca  from Agenda, Vaga, Estudante, Empresa'
      'where age_data between :data1 and :data2'
      'and age_faltou1 <> '#39'Sim'#39
      'and age_vagcod1 = vag_cod'
      'and age_estcod1 = est_cod'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      'union'
      ''
      
        'select agenda.*, empresa.emp_nome, Estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou2 Presenca from Agenda, Vaga, Estudante, Empresa'
      'where age_data between :data1 and :data2'
      'and age_faltou2 <> '#39'Sim'#39
      'and age_vagcod2 = vag_cod'
      'and age_estcod2 = est_cod'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      'union'
      ''
      
        'select agenda.*, empresa.emp_nome, Estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou3 Presenca from Agenda, Vaga, Estudante, Empresa'
      'where age_data between :data1 and :data2'
      'and age_faltou3 <> '#39'Sim'#39
      'and age_vagcod3 = vag_cod'
      'and age_estcod3 = est_cod'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      'union'
      ''
      
        'select agenda.*, empresa.emp_nome, estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou1 Presenca from Agenda, Vaga, Empresa, Estudante'
      'where age_data between :data1 and :data2'
      'and age_faltou1 <> '#39'Sim'#39
      'and age_vagcod1 = vag_cod'
      'and age_estcod1 = est_cod'
      'and age_estcod1 is null and est_nome is not null'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      'union'
      ''
      
        'select agenda.*, empresa.emp_nome, estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou2 Presenca from Agenda, Vaga, Empresa, Estudante'
      'where age_data between :data1 and :data2'
      'and age_faltou2 <> '#39'Sim'#39
      'and age_vagcod2 = vag_cod'
      'and age_estcod2 = est_cod'
      'and age_estcod2 is null and est_nome is not null'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      'union'
      ''
      
        'select agenda.*, empresa.emp_nome, estudante.est_nome,Estudante.' +
        'est_email,'
      'age_faltou3 Presenca from Agenda, Vaga, Empresa, Estudante'
      'where age_data between :data1 and :data2'
      'and age_faltou3 <> '#39'Sim'#39
      'and age_vagcod3 = vag_cod'
      'and age_estcod3 = est_cod'
      'and age_estcod3 is null and est_nome is not null'
      'and vaga.emp_cod = empresa.emp_cod'
      ''
      ''
      ''
      ''
      '')
    Left = 1089
    Top = 128
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quEntrevNaoRealizage_data: TDateTimeField
      FieldName = 'age_data'
    end
    object quEntrevNaoRealizage_estcod1: TIntegerField
      FieldName = 'age_estcod1'
    end
    object quEntrevNaoRealizage_faltou1: TStringField
      FieldName = 'age_faltou1'
      Size = 10
    end
    object quEntrevNaoRealizage_ficha1: TStringField
      FieldName = 'age_ficha1'
      Size = 10
    end
    object quEntrevNaoRealizage_estcod2: TIntegerField
      FieldName = 'age_estcod2'
    end
    object quEntrevNaoRealizage_faltou2: TStringField
      FieldName = 'age_faltou2'
      Size = 10
    end
    object quEntrevNaoRealizage_ficha2: TStringField
      FieldName = 'age_ficha2'
      Size = 10
    end
    object quEntrevNaoRealizage_estcod3: TIntegerField
      FieldName = 'age_estcod3'
    end
    object quEntrevNaoRealizage_faltou3: TStringField
      FieldName = 'age_faltou3'
      Size = 10
    end
    object quEntrevNaoRealizage_ficha3: TStringField
      FieldName = 'age_ficha3'
      Size = 10
    end
    object quEntrevNaoRealizage_vagcod1: TIntegerField
      FieldName = 'age_vagcod1'
    end
    object quEntrevNaoRealizage_vagcod2: TIntegerField
      FieldName = 'age_vagcod2'
    end
    object quEntrevNaoRealizage_vagcod3: TIntegerField
      FieldName = 'age_vagcod3'
    end
    object quEntrevNaoRealizemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object quEntrevNaoRealizest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object quEntrevNaoRealizPresenca: TStringField
      FieldName = 'Presenca'
      Size = 10
    end
    object quEntrevNaoRealizage_dtEnvio1: TDateTimeField
      FieldName = 'age_dtEnvio1'
    end
    object quEntrevNaoRealizage_dtEnvio2: TDateTimeField
      FieldName = 'age_dtEnvio2'
    end
    object quEntrevNaoRealizage_dtEnvio3: TDateTimeField
      FieldName = 'age_dtEnvio3'
    end
    object quEntrevNaoRealizest_email: TStringField
      FieldName = 'est_email'
      Size = 50
    end
  end
  object quBuscaTCE: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select t.*, i.inst_nome, c.cur_nome, e.est_email'
      'from TCE t, Estudante e, Instituicao I, Curso C'
      'where t.tce_data = :data'
      'and e.inst_cod = i.inst_cod and c.cur_cod = e.cur_cod'
      'and t.est_cod = e.est_cod'
      'order by e.est_nome')
    Left = 764
    Top = 675
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end>
    object quBuscaTCETce_cod: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 8
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TCE.Tce_cod'
    end
    object quBuscaTCEemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.TCE.emp_nome'
      Size = 150
    end
    object quBuscaTCEEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.TCE.Est_cod'
      Visible = False
    end
    object quBuscaTCEest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 41
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.TCE.est_nome'
      Size = 50
    end
    object quBuscaTCETce_estenc: TStringField
      FieldName = 'Tce_estenc'
      Origin = 'TALENTPOOL.TCE.Tce_estenc'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quBuscaTCEEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.TCE.Emp_cod'
      Visible = False
    end
    object quBuscaTCETce_tipocont: TStringField
      FieldName = 'Tce_tipocont'
      Origin = 'TALENTPOOL.TCE.Tce_tipocont'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quBuscaTCEVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.TCE.Vag_cod'
      Visible = False
    end
    object quBuscaTCETce_horarioini1: TDateTimeField
      FieldName = 'Tce_horarioini1'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini1'
      Visible = False
    end
    object quBuscaTCETce_horariofim1: TDateTimeField
      FieldName = 'Tce_horariofim1'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim1'
      Visible = False
    end
    object quBuscaTCETce_horarioini2: TDateTimeField
      FieldName = 'Tce_horarioini2'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini2'
      Visible = False
    end
    object quBuscaTCETce_horariofim2: TDateTimeField
      FieldName = 'Tce_horariofim2'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim2'
      Visible = False
    end
    object quBuscaTCEtce_horsabini1: TDateTimeField
      FieldName = 'tce_horsabini1'
      Origin = 'TALENTPOOL.TCE.tce_horsabini1'
      Visible = False
    end
    object quBuscaTCEtce_horsabfim1: TDateTimeField
      FieldName = 'tce_horsabfim1'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim1'
      Visible = False
    end
    object quBuscaTCEtce_horsabini2: TDateTimeField
      FieldName = 'tce_horsabini2'
      Origin = 'TALENTPOOL.TCE.tce_horsabini2'
      Visible = False
    end
    object quBuscaTCEtce_horsabfim2: TDateTimeField
      FieldName = 'tce_horsabfim2'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim2'
      Visible = False
    end
    object quBuscaTCETce_seguro: TStringField
      FieldName = 'Tce_seguro'
      Origin = 'TALENTPOOL.TCE.Tce_seguro'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quBuscaTCETce_data: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Tce_data'
      Origin = 'TALENTPOOL.TCE.Tce_data'
      Visible = False
    end
    object quBuscaTCETce_dataini: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 12
      FieldName = 'Tce_dataini'
      Origin = 'TALENTPOOL.TCE.Tce_dataini'
    end
    object quBuscaTCETce_datafim: TDateTimeField
      FieldName = 'Tce_datafim'
      Origin = 'TALENTPOOL.TCE.Tce_datafim'
      Visible = False
    end
    object quBuscaTCETce_datares: TDateTimeField
      DisplayLabel = 'Rescis'#227'o'
      DisplayWidth = 10
      FieldName = 'Tce_datares'
      Origin = 'TALENTPOOL.TCE.Tce_datares'
    end
    object quBuscaTCETce_bolsa: TFloatField
      FieldName = 'Tce_bolsa'
      Origin = 'TALENTPOOL.TCE.Tce_bolsa'
      Visible = False
    end
    object quBuscaTCETce_tipobolsa: TStringField
      FieldName = 'Tce_tipobolsa'
      Origin = 'TALENTPOOL.TCE.Tce_tipobolsa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quBuscaTCETce_situacao: TStringField
      FieldName = 'Tce_situacao'
      Origin = 'TALENTPOOL.TCE.Tce_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quBuscaTCEtce_dataret: TDateTimeField
      FieldName = 'tce_dataret'
      Origin = 'TALENTPOOL.TCE.tce_dataret'
      Visible = False
    end
    object quBuscaTCEtce_datadec: TDateTimeField
      FieldName = 'tce_datadec'
      Origin = 'TALENTPOOL.TCE.tce_datadec'
      Visible = False
    end
    object quBuscaTCEtce_tothoras: TFloatField
      FieldName = 'tce_tothoras'
      Origin = 'TALENTPOOL.TCE.tce_tothoras'
      Visible = False
    end
    object quBuscaTCEtce_avaliacao: TDateTimeField
      FieldName = 'tce_avaliacao'
      Origin = 'TALENTPOOL.TCE.tce_avaliacao'
      Visible = False
    end
    object quBuscaTCEinst_nome: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.Estudante.inst_nome'
      Visible = False
      Size = 150
    end
    object quBuscaTCEcur_nome: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Estudante.cur_nome'
      Visible = False
      Size = 150
    end
    object quBuscaTCEest_email: TStringField
      DisplayLabel = 'Email'
      FieldName = 'est_email'
      Size = 50
    end
  end
  object quConsEstudante: TQuery
    OnCalcFields = quConsEstudanteCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      ''
      ''
      
        'SELECT     E.est_cod, E.Est_nome, I.Inst_nome, C.cur_nome, E.pcu' +
        '_anoatual, E.est_situacao, E.pcu_peratual, E.Est_email, E.Est_fo' +
        'ne1, E.Est_fone2, '
      '                      E.pcu_turno'
      'FROM         Estudante E INNER JOIN'
      
        '                      Instituicao I ON E.inst_cod = I.Inst_cod I' +
        'NNER JOIN'
      '                      Curso C ON E.cur_cod = C.cur_cod')
    Left = 899
    Top = 179
    object quConsEstudanteest_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'est_cod'
    end
    object quConsEstudanteest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 30
      FieldName = 'est_nome'
      Size = 50
    end
    object quConsEstudanteinst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      DisplayWidth = 32
      FieldName = 'inst_nome'
      Size = 150
    end
    object quConsEstudantecur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 36
      FieldName = 'cur_nome'
      Size = 150
    end
    object quConsEstudantepcu_anoatual: TIntegerField
      FieldName = 'pcu_anoatual'
      Visible = False
    end
    object quConsEstudanteest_situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'est_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quConsEstudanteSemestre: TStringField
      DisplayLabel = 'Ano/Semestre'
      FieldKind = fkCalculated
      FieldName = 'Semestre'
      Size = 12
      Calculated = True
    end
    object quConsEstudanteSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 18
      Calculated = True
    end
    object quConsEstudantepcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quConsEstudanteEst_email: TStringField
      DisplayLabel = 'Email'
      FieldName = 'Est_email'
      Size = 50
    end
    object quConsEstudanteEst_fone1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'Est_fone1'
      Size = 15
    end
    object quConsEstudanteEst_fone2: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'Est_fone2'
      Size = 15
    end
    object quConsEstudantepcu_turno: TStringField
      FieldName = 'pcu_turno'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quConsEstudanteTurno: TStringField
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'Turno'
      Size = 13
      Calculated = True
    end
  end
  object dsConsEstudante: TDataSource
    DataSet = quConsEstudante
    Left = 969
    Top = 184
  end
  object quFuncionario: TQuery
    CachedUpdates = True
    OnNewRecord = quFuncionarioNewRecord
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from Funcionario'
      'ORDER BY func_nome')
    UpdateObject = usFuncionario
    Left = 764
    Top = 397
    object quFuncionariofunc_cod: TIntegerField
      DisplayLabel = 'Func.'
      DisplayWidth = 5
      FieldName = 'func_cod'
      Origin = 'TALENTPOOL.Funcionario.func_cod'
    end
    object quFuncionariofunc_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 46
      FieldName = 'func_nome'
      Origin = 'TALENTPOOL.Funcionario.func_nome'
      Size = 50
    end
    object quFuncionariofunc_fone: TStringField
      FieldName = 'func_fone'
      Origin = 'TALENTPOOL.Funcionario.func_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quFuncionariofunc_fonecel: TStringField
      FieldName = 'func_fonecel'
      Origin = 'TALENTPOOL.Funcionario.func_fonecel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quFuncionariofunc_email: TStringField
      FieldName = 'func_email'
      Origin = 'TALENTPOOL.Funcionario.func_email'
      Visible = False
      Size = 80
    end
    object quFuncionariofunc_setor: TStringField
      FieldName = 'func_setor'
      Origin = 'TALENTPOOL.Funcionario.func_setor'
      Visible = False
      Size = 50
    end
    object quFuncionariofunc_tipo: TStringField
      FieldName = 'func_tipo'
      Origin = 'TALENTPOOL.Funcionario.func_tipo'
      Visible = False
    end
    object quFuncionariofunc_dia: TIntegerField
      FieldName = 'func_dia'
      Origin = 'TALENTPOOL.Funcionario.func_dia'
      Visible = False
    end
    object quFuncionariofunc_mes: TIntegerField
      FieldName = 'func_mes'
      Origin = 'TALENTPOOL.Funcionario.func_mes'
      Visible = False
    end
    object quFuncionariofunc_ativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'func_ativo'
      Origin = 'TALENTPOOL.Funcionario.func_ativo'
      FixedChar = True
      Size = 1
    end
    object quFuncionariofunc_funcao: TStringField
      FieldName = 'func_funcao'
      Origin = 'TALENTPOOL.Funcionario.func_funcao'
      Visible = False
      Size = 50
    end
    object quFuncionariofunc_rg: TStringField
      FieldName = 'func_rg'
      Origin = 'TALENTPOOL.Funcionario.func_rg'
      Visible = False
      Size = 15
    end
    object quFuncionariofunc_cpf: TStringField
      FieldName = 'func_cpf'
      Origin = 'TALENTPOOL.Funcionario.func_cpf'
      Visible = False
      Size = 16
    end
    object quFuncionariofunc_ct: TStringField
      FieldName = 'func_ct'
      Origin = 'TALENTPOOL.Funcionario.func_ct'
      Visible = False
      Size = 18
    end
    object quFuncionariofunc_inicio: TDateTimeField
      FieldName = 'func_inicio'
      Origin = 'TALENTPOOL.Funcionario.func_inicio'
      Visible = False
    end
    object quFuncionariofunc_login: TStringField
      FieldName = 'func_login'
      Origin = 'TALENTPOOL.Funcionario.func_login'
    end
    object quFuncionariofunc_psw: TStringField
      FieldName = 'func_psw'
      Origin = 'TALENTPOOL.Funcionario.func_psw'
      Size = 10
    end
    object quFuncionariofunc_mostrarinconsist: TStringField
      FieldName = 'func_mostrarinconsist'
      Origin = 'TALENTPOOL.Funcionario.func_mostrarinconsist'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsFuncionario: TDataSource
    DataSet = quFuncionario
    Left = 698
    Top = 397
  end
  object usFuncionario: TUpdateSQL
    ModifySQL.Strings = (
      'update Funcionario'
      'set'
      '  func_nome = :func_nome,'
      '  func_fone = :func_fone,'
      '  func_fonecel = :func_fonecel,'
      '  func_email = :func_email,'
      '  func_setor = :func_setor,'
      '  func_tipo = :func_tipo,'
      '  func_dia = :func_dia,'
      '  func_mes = :func_mes,'
      '  func_ativo = :func_ativo,'
      '  func_funcao = :func_funcao,'
      '  func_rg = :func_rg,'
      '  func_cpf = :func_cpf,'
      '  func_ct = :func_ct,'
      '  func_inicio = :func_inicio,'
      '  func_login = :func_login,'
      '  func_psw = :func_psw,'
      '  func_mostrarinconsist = :func_mostrarinconsist'
      'where'
      '  func_cod = :OLD_func_cod')
    InsertSQL.Strings = (
      'insert into Funcionario'
      
        '  (func_nome, func_fone, func_fonecel, func_email, func_setor, f' +
        'unc_tipo, '
      
        '   func_dia, func_mes, func_ativo, func_funcao, func_rg, func_cp' +
        'f, func_ct, '
      '   func_inicio, func_login, func_psw, func_mostrarinconsist)'
      'values'
      
        '  (:func_nome, :func_fone, :func_fonecel, :func_email, :func_set' +
        'or, :func_tipo, '
      
        '   :func_dia, :func_mes, :func_ativo, :func_funcao, :func_rg, :f' +
        'unc_cpf, '
      
        '   :func_ct, :func_inicio, :func_login, :func_psw, :func_mostrar' +
        'inconsist)')
    DeleteSQL.Strings = (
      'delete from Funcionario'
      'where'
      '  func_cod = :OLD_func_cod')
    Left = 825
    Top = 397
  end
  object dsEmpHistorico: TDataSource
    DataSet = quEmpHistorico
    Left = 64
    Top = 468
  end
  object quEmpHistorico: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select e.*, f.efu_nome func_nome,Funcionario.func_nome Func_Cete' +
        'fe'
      'from EmpHistorico E'
      
        'inner join   EmpFuncionario as F on  ( e.func_cod = f.func_cod a' +
        'nd e.emp_cod = f.emp_cod)'
      
        'LEFT OUTER JOIN   Funcionario  ON (e .funccetefe_cod = Funcionar' +
        'io.func_cod )'
      'where '
      'e.emp_cod = :emp_cod'
      'ORDER BY ehi_dthist')
    UpdateObject = usEmpHistorico
    Left = 128
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    object quEmpHistoricoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Visible = False
    end
    object quEmpHistoricohist_cod: TIntegerField
      FieldName = 'hist_cod'
      Visible = False
    end
    object quEmpHistoricoehi_dthist: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'ehi_dthist'
    end
    object quEmpHistoricofunc_cod: TIntegerField
      FieldName = 'func_cod'
      Visible = False
    end
    object quEmpHistoricoehi_descricao: TMemoField
      FieldName = 'ehi_descricao'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quEmpHistoricofunccetefe_cod: TIntegerField
      FieldName = 'funccetefe_cod'
      Visible = False
    end
    object quEmpHistoricofunc_nome: TStringField
      DisplayLabel = 'Funcionario'
      FieldName = 'func_nome'
      Size = 50
    end
    object quEmpHistoricoFunc_Cetefe: TStringField
      FieldName = 'Func_Cetefe'
      Size = 50
    end
  end
  object usEmpHistorico: TUpdateSQL
    ModifySQL.Strings = (
      'update EmpHistorico'
      'set'
      '  emp_cod = :emp_cod,'
      '  hist_cod = :hist_cod,'
      '  ehi_dthist = :ehi_dthist,'
      '  func_cod = :func_cod,'
      '  ehi_descricao = :ehi_descricao,'
      '  funccetefe_cod = :funccetefe_cod'
      'where'
      '  emp_cod = :OLD_emp_cod and'
      '  hist_cod = :OLD_hist_cod')
    InsertSQL.Strings = (
      'insert into EmpHistorico'
      
        '  (emp_cod, hist_cod, ehi_dthist, func_cod, ehi_descricao, funcc' +
        'etefe_cod)'
      'values'
      
        '  (:emp_cod, :hist_cod, :ehi_dthist, :func_cod, :ehi_descricao, ' +
        ':funccetefe_cod)')
    DeleteSQL.Strings = (
      'delete from EmpHistorico'
      'where'
      '  emp_cod = :OLD_emp_cod and'
      '  hist_cod = :OLD_hist_cod')
    Left = 192
    Top = 468
  end
  object quEMailEstudante: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      '/*select est_dtatu, est_nome, est_email'
      'from Estudante (nolock)'
      'where est_dtatu >= '#39'2006/01/01'#39
      'and est_email is not null'
      'and est_email <> '#39#39
      'order by est_nome */'
      ''
      
        'select est_dtatu, est_nome Estudante, est_email Email, Inst_nome' +
        ' Instituicao,emp_nome Empresa,'
      'case'
      ' when Est_situacao = '#39'X'#39' then '#39'Ex-Situa'#231#227'o'#39
      ' When Est_situacao = '#39'N'#39' then '#39'N'#227'o Estagiando'#39' '
      ' when Est_situacao = '#39'S'#39' then '#39'Estagiando'#39
      'end Situacao'
      'from Estudante '
      
        'inner join Instituicao on  Instituicao.inst_cod=Estudante.inst_c' +
        'od'
      
        'Left outer join Tce on  tce.est_cod=Estudante.est_cod and tce.tc' +
        'e_situacao <> '#39'7'#39
      'Left outer join Empresa  on Empresa.Emp_cod=Tce.emp_cod'
      'order by est_nome'
      '')
    Left = 197
    Top = 645
    object quEMailEstudanteEstudante: TStringField
      FieldName = 'Estudante'
      Size = 50
    end
    object quEMailEstudanteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quEMailEstudanteInstituicao: TStringField
      FieldName = 'Instituicao'
      Size = 150
    end
    object quEMailEstudanteEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 150
    end
    object quEMailEstudanteSituacao: TStringField
      FieldName = 'Situacao'
      Size = 14
    end
  end
  object quEMailInstituicao: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select  i.inst_nome, ifu.ifu_nome, ifu.ifu_email'
      'from '#9#9'instfuncionario ifu (nolock), instituicao i (nolock)'
      'where '#9'ifu.inst_cod = i.inst_cod'
      'and '#9#9'ifu.ifu_email <> '#39#39' and ifu.ifu_email is not null'
      'order by i.inst_nome, ifu.ifu_nome')
    Left = 402
    Top = 573
    object quEMailInstituicaoinst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      FieldName = 'inst_nome'
      Size = 150
    end
    object quEMailInstituicaoifu_nome: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'ifu_nome'
      Size = 50
    end
    object quEMailInstituicaoifu_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'ifu_email'
      Size = 80
    end
  end
  object quEMailEmpresa: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select  e.emp_nome, efu.efu_nome, efu.efu_email'
      'from '#9#9'Empfuncionario efu (nolock), Empresa e (nolock)'
      'where '#9'efu.emp_cod = e.emp_cod'
      'and '#9#9'efu.efu_email <> '#39#39' and efu.efu_email is not null'
      'order by e.emp_nome, efu.efu_nome')
    Left = 402
    Top = 621
    object quEMailEmpresaemp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_nome'
      Size = 150
    end
    object quEMailEmpresaefu_nome: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'efu_nome'
      Size = 50
    end
    object quEMailEmpresaefu_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'efu_email'
      Size = 80
    end
  end
  object quAnivEmpresa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  e.emp_nome, efu.efu_nome,'
      '  (select count(*) from Tce where emp_cod = e.emp_cod'
      '   and tce_situacao <> 7) TotalEst'
      'from'
      '  empresa e (nolock), empFuncionario efu (nolock)'
      'where'
      '  e.emp_cod = efu.emp_cod and'
      '  efu.efu_dia = :dia and'
      '  efu.efu_mes = :mes'
      'order by'
      '  e.emp_nome, efu.efu_nome')
    Left = 1035
    Top = 412
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptUnknown
      end>
    object quAnivEmpresaemp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_nome'
      Size = 150
    end
    object quAnivEmpresaefu_nome: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'efu_nome'
      Size = 50
    end
    object quAnivEmpresaTotalEst: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      FieldName = 'TotalEst'
    end
  end
  object quAnivInstituicao: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  i.inst_nome, ifu.ifu_nome,'
      '  (select count(*) from Tce t, Estudante E'
      '   where  t.est_cod  = e.est_cod'
      '   and    e.inst_cod = i.inst_cod'
      '   and    t.tce_situacao <> 7) TotalEst'
      'from'
      '  Instituicao i (nolock), instFuncionario ifu (nolock)'
      'where'
      '  i.inst_cod = ifu.inst_cod and'
      '  ifu.ifu_dia = :dia and'
      '  ifu.ifu_mes = :mes'
      'order by'
      '  i.inst_nome, ifu.ifu_nome')
    Left = 1099
    Top = 364
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptUnknown
      end>
    object quAnivInstituicaoinst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      FieldName = 'inst_nome'
      Size = 150
    end
    object quAnivInstituicaoifu_nome: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'ifu_nome'
      Size = 50
    end
    object quAnivInstituicaoTotalEst: TIntegerField
      DisplayLabel = 'Estagi'#225'rios'
      FieldName = 'TotalEst'
    end
  end
  object quBuscaEmpresa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select e.emp_cod, e.emp_nome, e.emp_dtinc'
      'from Empresa e '
      'where e.emp_dtinc = :data'
      'order by e.emp_nome')
    Left = 899
    Top = 129
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end>
    object quBuscaEmpresaemp_cod: TIntegerField
      DisplayLabel = 'Empresa'
      DisplayWidth = 7
      FieldName = 'emp_cod'
    end
    object quBuscaEmpresaemp_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 73
      FieldName = 'emp_nome'
      Size = 150
    end
    object quBuscaEmpresaemp_dtinc: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      DisplayWidth = 12
      FieldName = 'emp_dtinc'
    end
  end
  object dsBuscaEmpresa: TDataSource
    DataSet = quBuscaEmpresa
    Left = 969
    Top = 134
  end
  object dsBuscaTCE: TDataSource
    DataSet = quBuscaTCE
    Left = 698
    Top = 672
  end
  object quTransfCursoEst: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Update Estudante set cur_cod = :cur_cod, cur_nome = :cur_nome'
      'where cur_cod = :cur_codant')
    Left = 1027
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cur_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cur_nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cur_codant'
        ParamType = ptUnknown
      end>
    object IntegerField8: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 8
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TCE.Tce_cod'
    end
    object StringField9: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.TCE.emp_nome'
      Size = 150
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'Tce_data'
      Origin = 'TALENTPOOL.TCE.Tce_data'
      Visible = False
    end
    object IntegerField9: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.TCE.Est_cod'
      Visible = False
    end
    object StringField10: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 41
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.TCE.est_nome'
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'Tce_estenc'
      Origin = 'TALENTPOOL.TCE.Tce_estenc'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField10: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.TCE.Emp_cod'
      Visible = False
    end
    object StringField12: TStringField
      FieldName = 'Tce_tipocont'
      Origin = 'TALENTPOOL.TCE.Tce_tipocont'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField11: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.TCE.Vag_cod'
      Visible = False
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'Tce_horarioini1'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini1'
      Visible = False
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'Tce_horariofim1'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim1'
      Visible = False
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'Tce_horarioini2'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini2'
      Visible = False
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'Tce_horariofim2'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim2'
      Visible = False
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'tce_horsabini1'
      Origin = 'TALENTPOOL.TCE.tce_horsabini1'
      Visible = False
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'tce_horsabfim1'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim1'
      Visible = False
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'tce_horsabini2'
      Origin = 'TALENTPOOL.TCE.tce_horsabini2'
      Visible = False
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'tce_horsabfim2'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim2'
      Visible = False
    end
    object StringField13: TStringField
      FieldName = 'Tce_seguro'
      Origin = 'TALENTPOOL.TCE.Tce_seguro'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DateTimeField13: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 12
      FieldName = 'Tce_dataini'
      Origin = 'TALENTPOOL.TCE.Tce_dataini'
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'Tce_datafim'
      Origin = 'TALENTPOOL.TCE.Tce_datafim'
      Visible = False
    end
    object DateTimeField15: TDateTimeField
      DisplayLabel = 'Rescis'#227'o'
      DisplayWidth = 10
      FieldName = 'Tce_datares'
      Origin = 'TALENTPOOL.TCE.Tce_datares'
    end
    object FloatField1: TFloatField
      FieldName = 'Tce_bolsa'
      Origin = 'TALENTPOOL.TCE.Tce_bolsa'
      Visible = False
    end
    object StringField14: TStringField
      FieldName = 'Tce_tipobolsa'
      Origin = 'TALENTPOOL.TCE.Tce_tipobolsa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'Tce_situacao'
      Origin = 'TALENTPOOL.TCE.Tce_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DateTimeField16: TDateTimeField
      FieldName = 'tce_dataret'
      Origin = 'TALENTPOOL.TCE.tce_dataret'
      Visible = False
    end
    object DateTimeField17: TDateTimeField
      FieldName = 'tce_datadec'
      Origin = 'TALENTPOOL.TCE.tce_datadec'
      Visible = False
    end
    object FloatField2: TFloatField
      FieldName = 'tce_tothoras'
      Origin = 'TALENTPOOL.TCE.tce_tothoras'
      Visible = False
    end
    object DateTimeField18: TDateTimeField
      FieldName = 'tce_avaliacao'
      Origin = 'TALENTPOOL.TCE.tce_avaliacao'
      Visible = False
    end
    object StringField16: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.Estudante.inst_nome'
      Visible = False
      Size = 150
    end
    object StringField17: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Estudante.cur_nome'
      Visible = False
      Size = 150
    end
  end
  object quTransfCursoInst: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Update InstCurso set cur_cod = :cur_cod'
      'where cur_cod = :cur_codant')
    Left = 1089
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cur_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cur_codant'
        ParamType = ptUnknown
      end>
    object IntegerField12: TIntegerField
      DisplayLabel = 'TCE'
      DisplayWidth = 8
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TCE.Tce_cod'
    end
    object StringField18: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL.TCE.emp_nome'
      Size = 150
    end
    object DateTimeField19: TDateTimeField
      FieldName = 'Tce_data'
      Origin = 'TALENTPOOL.TCE.Tce_data'
      Visible = False
    end
    object IntegerField13: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.TCE.Est_cod'
      Visible = False
    end
    object StringField19: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 41
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.TCE.est_nome'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'Tce_estenc'
      Origin = 'TALENTPOOL.TCE.Tce_estenc'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField14: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.TCE.Emp_cod'
      Visible = False
    end
    object StringField21: TStringField
      FieldName = 'Tce_tipocont'
      Origin = 'TALENTPOOL.TCE.Tce_tipocont'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField15: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.TCE.Vag_cod'
      Visible = False
    end
    object DateTimeField20: TDateTimeField
      FieldName = 'Tce_horarioini1'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini1'
      Visible = False
    end
    object DateTimeField21: TDateTimeField
      FieldName = 'Tce_horariofim1'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim1'
      Visible = False
    end
    object DateTimeField22: TDateTimeField
      FieldName = 'Tce_horarioini2'
      Origin = 'TALENTPOOL.TCE.Tce_horarioini2'
      Visible = False
    end
    object DateTimeField23: TDateTimeField
      FieldName = 'Tce_horariofim2'
      Origin = 'TALENTPOOL.TCE.Tce_horariofim2'
      Visible = False
    end
    object DateTimeField24: TDateTimeField
      FieldName = 'tce_horsabini1'
      Origin = 'TALENTPOOL.TCE.tce_horsabini1'
      Visible = False
    end
    object DateTimeField25: TDateTimeField
      FieldName = 'tce_horsabfim1'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim1'
      Visible = False
    end
    object DateTimeField26: TDateTimeField
      FieldName = 'tce_horsabini2'
      Origin = 'TALENTPOOL.TCE.tce_horsabini2'
      Visible = False
    end
    object DateTimeField27: TDateTimeField
      FieldName = 'tce_horsabfim2'
      Origin = 'TALENTPOOL.TCE.tce_horsabfim2'
      Visible = False
    end
    object StringField22: TStringField
      FieldName = 'Tce_seguro'
      Origin = 'TALENTPOOL.TCE.Tce_seguro'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DateTimeField28: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      DisplayWidth = 12
      FieldName = 'Tce_dataini'
      Origin = 'TALENTPOOL.TCE.Tce_dataini'
    end
    object DateTimeField29: TDateTimeField
      FieldName = 'Tce_datafim'
      Origin = 'TALENTPOOL.TCE.Tce_datafim'
      Visible = False
    end
    object DateTimeField30: TDateTimeField
      DisplayLabel = 'Rescis'#227'o'
      DisplayWidth = 10
      FieldName = 'Tce_datares'
      Origin = 'TALENTPOOL.TCE.Tce_datares'
    end
    object FloatField3: TFloatField
      FieldName = 'Tce_bolsa'
      Origin = 'TALENTPOOL.TCE.Tce_bolsa'
      Visible = False
    end
    object StringField23: TStringField
      FieldName = 'Tce_tipobolsa'
      Origin = 'TALENTPOOL.TCE.Tce_tipobolsa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'Tce_situacao'
      Origin = 'TALENTPOOL.TCE.Tce_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DateTimeField31: TDateTimeField
      FieldName = 'tce_dataret'
      Origin = 'TALENTPOOL.TCE.tce_dataret'
      Visible = False
    end
    object DateTimeField32: TDateTimeField
      FieldName = 'tce_datadec'
      Origin = 'TALENTPOOL.TCE.tce_datadec'
      Visible = False
    end
    object FloatField4: TFloatField
      FieldName = 'tce_tothoras'
      Origin = 'TALENTPOOL.TCE.tce_tothoras'
      Visible = False
    end
    object DateTimeField33: TDateTimeField
      FieldName = 'tce_avaliacao'
      Origin = 'TALENTPOOL.TCE.tce_avaliacao'
      Visible = False
    end
    object StringField25: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.Estudante.inst_nome'
      Visible = False
      Size = 150
    end
    object StringField26: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Estudante.cur_nome'
      Visible = False
      Size = 150
    end
  end
  object quCandidatosEnc: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  v.vag_cod, v.emp_nome, E.est_nome'
      'from'
      '  Vaga V left join Encaminhamento E'
      'On  V.vag_cod = E.vag_cod'
      'where'
      '  V.vag_dataabertura between :data1 and :data2'
      'order by'
      '  V.vag_cod, E.est_nome'
      '')
    Left = 1169
    Top = 111
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quCandidatosEncvag_cod: TIntegerField
      DisplayLabel = 'Vaga'
      DisplayWidth = 8
      FieldName = 'vag_cod'
    end
    object quCandidatosEncemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 50
      FieldName = 'emp_nome'
      Size = 150
    end
    object quCandidatosEncest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 59
      FieldName = 'est_nome'
      Size = 50
    end
  end
  object dsCandidatosEnc: TDataSource
    DataSet = quCandidatosEnc
    Left = 1209
    Top = 109
  end
  object dsInstDiretor: TDataSource
    DataSet = quInstDiretor
    Left = 698
    Top = 441
  end
  object quInstDiretor: TQuery
    CachedUpdates = True
    OnCalcFields = quTceAlteracaoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  InstDiretor'
      'where '
      '  inst_cod = :inst_cod'
      'order by'
      '  idr_nome')
    UpdateObject = usInstDiretor
    Left = 764
    Top = 442
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quInstDiretorinst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.Instfuncionario.Inst_cod'
      Visible = False
    end
    object quInstDiretordire_cod: TIntegerField
      DisplayLabel = 'Diretor'
      DisplayWidth = 4
      FieldName = 'dire_cod'
      Origin = 'TALENTPOOL.InstCoordenador.coord_cod'
    end
    object quInstDiretoridr_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'idr_nome'
      Origin = 'TALENTPOOL.InstCoordenador.ico_nome'
      Size = 50
    end
    object quInstDiretorIdr_fone: TStringField
      FieldName = 'idr_fone'
      Origin = 'TALENTPOOL.InstCoordenador.ico_fone'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstDiretoridr_fonecel: TStringField
      FieldName = 'idr_fonecel'
      Origin = 'TALENTPOOL.InstCoordenador.ico_fonecel'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quInstDiretoridr_email: TStringField
      FieldName = 'idr_email'
      Origin = 'TALENTPOOL.InstCoordenador.ico_email'
      Visible = False
      Size = 80
    end
    object quInstDiretoridr_setor: TStringField
      DisplayLabel = 'Setor'
      DisplayWidth = 15
      FieldName = 'idr_setor'
      Origin = 'TALENTPOOL.InstCoordenador.ico_setor'
      Size = 100
    end
    object quInstDiretoridr_cargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'idr_Cargo'
      Origin = 'TALENTPOOL.InstCoordenador.ico_cargo'
      Visible = False
      Size = 100
    end
    object quInstDiretoridr_observacao: TStringField
      FieldName = 'idr_observacao'
      Origin = 'TALENTPOOL.InstCoordenador.ico_observacao'
      Visible = False
      Size = 250
    end
  end
  object usInstDiretor: TUpdateSQL
    ModifySQL.Strings = (
      'update InstDiretor'
      'set'
      '  Inst_cod = :Inst_cod,'
      '  dire_cod = :dire_cod,'
      '  idr_nome = :idr_nome,'
      '  idr_fone = :idr_fone,'
      '  idr_fonecel = :idr_fonecel,'
      '  idr_email = :idr_email,'
      '  idr_setor = :idr_setor,'
      '  idr_cargo = :idr_cargo,'
      '  idr_observacao = :idr_observacao'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  dire_cod = :OLD_dire_cod')
    InsertSQL.Strings = (
      'insert into InstDiretor'
      
        '  (Inst_cod, dire_cod, idr_nome, idr_fone, idr_fonecel, idr_emai' +
        'l, idr_setor, '
      '   idr_cargo, idr_observacao)'
      'values'
      
        '  (:Inst_cod, :dire_cod, :idr_nome, :idr_fone, :idr_fonecel, :id' +
        'r_email, '
      '   :idr_setor, :idr_cargo, :idr_observacao)')
    DeleteSQL.Strings = (
      'delete from InstDiretor'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  dire_cod = :OLD_dire_cod')
    Left = 825
    Top = 441
  end
  object dsInstHistorico: TDataSource
    DataSet = quInstHistorico
    Left = 64
    Top = 515
  end
  object quInstHistorico: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select e.*, f.ifu_nome func_nome,Funcionario.func_nome Func_Cete' +
        'fe'
      'from InstHistorico E'
      
        'inner join   InstFuncionario as F on  ( e.func_cod = f.func_cod ' +
        'and e.inst_cod = f.inst_cod)'
      
        'LEFT OUTER JOIN   Funcionario  ON (e .funccetefe_cod = Funcionar' +
        'io.func_cod )'
      'where '
      'e.Inst_cod = :inst_cod'
      'ORDER BY ehi_dthist'
      '')
    UpdateObject = usInsHistorico
    Left = 128
    Top = 515
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inst_cod'
        ParamType = ptUnknown
      end>
    object quInstHistoricoinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Visible = False
    end
    object quInstHistoricohist_cod: TIntegerField
      FieldName = 'hist_cod'
      Visible = False
    end
    object quInstHistoricoehi_dthist: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 20
      FieldName = 'ehi_dthist'
    end
    object quInstHistoricofunc_cod: TIntegerField
      FieldName = 'func_cod'
      Visible = False
    end
    object quInstHistoricoehi_descricao: TMemoField
      FieldName = 'ehi_descricao'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quInstHistoricofunccetefe_cod: TIntegerField
      FieldName = 'funccetefe_cod'
      Visible = False
    end
    object quInstHistoricofunc_nome: TStringField
      DisplayLabel = 'Funcionario'
      DisplayWidth = 60
      FieldName = 'func_nome'
      Size = 50
    end
    object quInstHistoricoFunc_Cetefe: TStringField
      FieldName = 'Func_Cetefe'
      Size = 50
    end
  end
  object usInsHistorico: TUpdateSQL
    ModifySQL.Strings = (
      'update InstHistorico'
      'set'
      '  inst_cod = :inst_cod,'
      '  hist_cod = :hist_cod,'
      '  ehi_dthist = :ehi_dthist,'
      '  func_cod = :func_cod,'
      '  ehi_descricao = :ehi_descricao,'
      '  funccetefe_cod = :funccetefe_cod'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  hist_cod = :OLD_hist_cod')
    InsertSQL.Strings = (
      'insert into InstHistorico'
      
        '  (inst_cod, hist_cod, ehi_dthist, func_cod, ehi_descricao, func' +
        'cetefe_cod)'
      'values'
      
        '  (:inst_cod, :hist_cod, :ehi_dthist, :func_cod, :ehi_descricao,' +
        ' :funccetefe_cod)')
    DeleteSQL.Strings = (
      'delete from InstHistorico'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  hist_cod = :OLD_hist_cod')
    Left = 192
    Top = 515
  end
  object DsqryRempresa: TDataSource
    DataSet = QryRempresa
    Left = 969
    Top = 600
  end
  object QryRempresa: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT       Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_' +
        'nome , EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_f' +
        'one Telefone,'
      
        '                      EmpFuncionario.Efu_email Email, EmpFuncion' +
        'ario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor,'
      '                      EmpFuncionario.Efu_cargo Cargo'
      'FROM         Empresa'
      '        INNER JOIN'
      
        '                EmpFuncionario ON Empresa.Emp_cod = EmpFuncionar' +
        'io.Emp_cod'
      'ORDER BY Empresa.Emp_nome, EmpFuncionario.Efu_nome')
    Left = 899
    Top = 602
    object QryRempresaEmp_cod: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'Emp_cod'
    end
    object QryRempresaTipo: TStringField
      DisplayWidth = 12
      FieldName = 'Tipo'
      Size = 10
    end
    object QryRempresaEmp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 65
      FieldName = 'Emp_nome'
      Size = 150
    end
    object QryRempresaFuncionario: TStringField
      DisplayWidth = 41
      FieldName = 'Funcionario'
      Size = 50
    end
    object QryRempresaTelefone: TStringField
      DisplayWidth = 18
      FieldName = 'Telefone'
      Size = 15
    end
    object QryRempresaCelular: TStringField
      DisplayWidth = 18
      FieldName = 'Celular'
      Size = 15
    end
    object QryRempresaEmail: TStringField
      DisplayWidth = 96
      FieldName = 'Email'
      Size = 80
    end
    object QryRempresaSetor: TStringField
      DisplayWidth = 120
      FieldName = 'Setor'
      Size = 100
    end
    object QryRempresaCargo: TStringField
      DisplayWidth = 120
      FieldName = 'Cargo'
      Size = 100
    end
  end
  object dsVagHistorico: TDataSource
    DataSet = quVagHistorico
    Left = 480
    Top = 517
  end
  object quVagHistorico: TQuery
    CachedUpdates = True
    OnCalcFields = quVagHistoricoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     E.*,  Funcionario.func_nome AS Func_Cetefe'
      'FROM         VagHistorico E                   '
      '             '
      
        '                  LEFT OUTER JOIN  Funcionario ON E.funccetefe_c' +
        'od = Funcionario.func_cod'
      'where '
      'e.vag_cod = :vag_cod'
      'ORDER BY vhi_dthist  ')
    UpdateObject = usVagHistorico
    Left = 542
    Top = 517
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagHistoricovag_cod: TIntegerField
      FieldName = 'vag_cod'
      Visible = False
    end
    object quVagHistoricohist_cod: TIntegerField
      FieldName = 'hist_cod'
      Visible = False
    end
    object quVagHistoricovhi_dthist: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'vhi_dthist'
    end
    object quVagHistoricofunc_cod: TIntegerField
      FieldName = 'func_cod'
      Visible = False
    end
    object quVagHistoricovhi_descricao: TMemoField
      FieldName = 'vhi_descricao'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quVagHistoricoFunc_nome: TStringField
      DisplayLabel = 'Funcionario'
      FieldKind = fkCalculated
      FieldName = 'Func_nome'
      Size = 50
      Calculated = True
    end
    object quVagHistoricofunccetefe_cod: TIntegerField
      FieldName = 'funccetefe_cod'
      Visible = False
    end
    object quVagHistoricoFunc_Cetefe: TStringField
      FieldName = 'Func_Cetefe'
      Visible = False
      Size = 50
    end
    object quVagHistoricoemp_cod: TIntegerField
      FieldName = 'emp_cod'
    end
    object quVagHistoricoemp_cod1: TIntegerField
      FieldName = 'emp_cod1'
      Visible = False
    end
  end
  object usVagHistorico: TUpdateSQL
    ModifySQL.Strings = (
      'update VagHistorico'
      'set'
      '  vag_cod = :vag_cod,'
      '  hist_cod = :hist_cod,'
      '  emp_cod = :emp_cod,'
      '  vhi_dthist = :vhi_dthist,'
      '  func_cod = :func_cod,'
      '  vhi_descricao = :vhi_descricao,'
      '  funccetefe_cod = :funccetefe_cod,'
      '  emp_cod1 = :emp_cod1'
      'where'
      '  vag_cod = :OLD_vag_cod and'
      '  hist_cod = :OLD_hist_cod')
    InsertSQL.Strings = (
      'insert into VagHistorico'
      
        '  (vag_cod, hist_cod, emp_cod, vhi_dthist, func_cod, vhi_descric' +
        'ao, funccetefe_cod, '
      '   emp_cod1)'
      'values'
      
        '  (:vag_cod, :hist_cod, :emp_cod, :vhi_dthist, :func_cod, :vhi_d' +
        'escricao, '
      '   :funccetefe_cod, :emp_cod1)')
    DeleteSQL.Strings = (
      'delete from VagHistorico'
      'where'
      '  vag_cod = :OLD_vag_cod and'
      '  hist_cod = :OLD_hist_cod')
    Left = 616
    Top = 517
  end
  object qrypesquisa: TQuery
    DatabaseName = 'TalentPool'
    Left = 336
    Top = 569
  end
  object quVaga: TQuery
    CachedUpdates = True
    AfterInsert = quVagaAfterInsert
    OnCalcFields = quVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  v.*, e.emp_nome,'
      
        '(select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag' +
        '_cod ) +'
      
        '(select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag' +
        '_cod ) +'
      
        '(select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag' +
        '_cod ) Agendados,'
      
        '(select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag' +
        '_cod and Age_faltou1 = '#39'N'#227'o'#39') +'
      
        '(select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag' +
        '_cod and Age_faltou2 = '#39'N'#227'o'#39') +'
      
        '(select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag' +
        '_cod and Age_faltou3 = '#39'N'#227'o'#39') Entrevistados,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod) Encaminhados,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'3'#39') Desistentes,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'2'#39') Aprovados,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'1'#39') Reprovados,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'6'#39') Stand_By,'
      
        '(select count(vag_cod) from TCE where vag_cod = v.vag_cod ) Tces' +
        ','
      'case '
      
        'when  cast(v.vag_cancelada as integer)  > 0 then  v.vag_qtde * c' +
        'ast(v.vag_cancelada as integer) '
      'else'
      'v.vag_qtdecancel '
      'end Canceladas,'
      
        '(select  f.efu_nome from  Empfuncionario f where e.emp_cod = f.e' +
        'mp_cod and e.emp_respcomp = f.func_cod) RespEmpresa'
      'from'
      '  Vaga V, Empresa E'
      'where'
      '  E.emp_cod = V.emp_cod'
      'order by   v.vag_cod')
    UpdateObject = usvaga
    Left = 336
    Top = 425
    object quVagaVag_cod: TIntegerField
      DisplayLabel = 'Cod Vaga'
      DisplayWidth = 9
      FieldName = 'Vag_cod'
    end
    object quVagaEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Visible = False
    end
    object quVagaemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 50
      FieldName = 'emp_nome'
      Size = 150
    end
    object quVagaAreaEstagio: TStringField
      FieldKind = fkCalculated
      FieldName = 'AreaEstagio'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quVagaRespEmpresa: TStringField
      DisplayLabel = 'Responsavel Emp.'
      FieldName = 'RespEmpresa'
      Visible = False
      Size = 50
    end
    object quVagavag_respselecao: TStringField
      DisplayLabel = 'Resp. Selec'#227'o'
      FieldName = 'vag_respselecao'
      Visible = False
      Size = 60
    end
    object quVagaVag_setor: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'Vag_setor'
      Visible = False
      Size = 60
    end
    object quVagavag_observacao: TMemoField
      DisplayLabel = 'Observacoes'
      FieldName = 'vag_observacao'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quVagaVag_dataabertura: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'Vag_dataabertura'
      Visible = False
    end
    object quVagaVag_DataSolicitacao: TDateTimeField
      DisplayLabel = 'Data Solicita'#231#227'o'
      FieldName = 'Vag_DataSolicitacao'
      Visible = False
    end
    object quVagaVag_qtde: TIntegerField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 5
      FieldName = 'Vag_qtde'
    end
    object quVagaVag_qtdepreenc: TIntegerField
      DisplayLabel = 'Preenc.'
      DisplayWidth = 7
      FieldName = 'Vag_qtdepreenc'
    end
    object quVagaAgendados: TIntegerField
      FieldName = 'Agendados'
      Visible = False
    end
    object quVagaTces: TIntegerField
      FieldName = 'Tces'
      Visible = False
    end
    object quVagaEntrevistados: TIntegerField
      FieldName = 'Entrevistados'
      Visible = False
    end
    object quVagaStand_By: TIntegerField
      FieldName = 'Stand_By'
      Visible = False
    end
    object quVagaReprovados: TIntegerField
      FieldName = 'Reprovados'
      Visible = False
    end
    object quVagaEncaminhados: TIntegerField
      FieldName = 'Encaminhados'
      Visible = False
    end
    object quVagaDesistentes: TIntegerField
      FieldName = 'Desistentes'
      Visible = False
    end
    object quVagaAprovados: TIntegerField
      FieldName = 'Aprovados'
      Visible = False
    end
    object quVagaCanceladas: TIntegerField
      DisplayLabel = 'Cancel.'
      DisplayWidth = 7
      FieldName = 'Canceladas'
    end
    object quVagavag_cancelada: TStringField
      FieldName = 'vag_cancelada'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaPendentes: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Pendentes'
      Visible = False
      Calculated = True
    end
    object quVagaVag_horarioini1: TDateTimeField
      FieldName = 'Vag_horarioini1'
      Visible = False
    end
    object quVagaVag_horariofim1: TDateTimeField
      FieldName = 'Vag_horariofim1'
      Visible = False
    end
    object quVagaVag_horarioini2: TDateTimeField
      FieldName = 'Vag_horarioini2'
      Visible = False
    end
    object quVagaVag_horariofim2: TDateTimeField
      FieldName = 'Vag_horariofim2'
      Visible = False
    end
    object quVagaVag_periodo: TStringField
      FieldName = 'Vag_periodo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_duracao: TIntegerField
      FieldName = 'Vag_duracao'
      Visible = False
    end
    object quVagaVag_periodic: TStringField
      FieldName = 'Vag_periodic'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_efetiva: TStringField
      FieldName = 'Vag_efetiva'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_prorroga: TStringField
      FieldName = 'Vag_prorroga'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_sexo: TStringField
      FieldName = 'Vag_sexo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_idademin: TIntegerField
      FieldName = 'Vag_idademin'
      Visible = False
    end
    object quVagaVag_idademax: TIntegerField
      FieldName = 'Vag_idademax'
      Visible = False
    end
    object quVagaVag_digitacao: TStringField
      FieldName = 'Vag_digitacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_valetransp: TStringField
      FieldName = 'Vag_valetransp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_refeicaoprop: TStringField
      FieldName = 'Vag_refeicaoprop'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_valeref: TStringField
      FieldName = 'vag_valeref'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_valorvaleref: TFloatField
      FieldName = 'Vag_valorvaleref'
      Visible = False
    end
    object quVagavag_valealim: TStringField
      FieldName = 'vag_valealim'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_valorvalealim: TFloatField
      FieldName = 'Vag_valorvalealim'
      Visible = False
    end
    object quVagaVag_valorbolsa: TFloatField
      FieldName = 'Vag_valorbolsa'
      Visible = False
      currency = True
    end
    object quVagaVag_tipobolsa: TStringField
      FieldName = 'Vag_tipobolsa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_divulgasite: TStringField
      FieldName = 'vag_divulgasite'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_divulgaemail: TStringField
      FieldName = 'vag_divulgaemail'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_transpemp: TStringField
      FieldName = 'vag_transpemp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_assistmedica: TStringField
      FieldName = 'vag_assistmedica'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagavag_qtdecancel: TIntegerField
      DisplayLabel = 'Cancel.'
      DisplayWidth = 7
      FieldName = 'vag_qtdecancel'
      Visible = False
    end
    object quVagavag_Supervisor: TStringField
      FieldName = 'vag_Supervisor'
      Visible = False
      Size = 50
    end
    object quVagavag_FormSupervisor: TStringField
      FieldName = 'vag_FormSupervisor'
      Visible = False
      Size = 50
    end
    object quVagavag_ExpSupervisor: TStringField
      FieldName = 'vag_ExpSupervisor'
      Visible = False
      Size = 50
    end
    object quVagavag_CargSupervisor: TStringField
      FieldName = 'vag_CargSupervisor'
      Visible = False
      Size = 50
    end
    object quVagaVag_AreaSupervisor: TStringField
      FieldName = 'Vag_AreaSupervisor'
      Visible = False
      Size = 50
    end
    object quVagaVag_domingo: TStringField
      FieldName = 'Vag_domingo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_horsegini1: TDateTimeField
      FieldName = 'Vag_horsegini1'
      Visible = False
    end
    object quVagaVag_horsegfim1: TDateTimeField
      FieldName = 'Vag_horsegfim1'
      Visible = False
    end
    object quVagaVag_horsegini2: TDateTimeField
      FieldName = 'Vag_horsegini2'
      Visible = False
    end
    object quVagaVag_horsegfim2: TDateTimeField
      FieldName = 'Vag_horsegfim2'
      Visible = False
    end
    object quVagaVag_horterini1: TDateTimeField
      FieldName = 'Vag_horterini1'
      Visible = False
    end
    object quVagaVag_horterfim1: TDateTimeField
      FieldName = 'Vag_horterfim1'
      Visible = False
    end
    object quVagaVag_horterini2: TDateTimeField
      FieldName = 'Vag_horterini2'
      Visible = False
    end
    object quVagaVag_horterfim2: TDateTimeField
      FieldName = 'Vag_horterfim2'
      Visible = False
    end
    object quVagaVag_horquaini1: TDateTimeField
      FieldName = 'Vag_horquaini1'
      Visible = False
    end
    object quVagaVag_horquafim1: TDateTimeField
      FieldName = 'Vag_horquafim1'
      Visible = False
    end
    object quVagaVag_horquaini2: TDateTimeField
      FieldName = 'Vag_horquaini2'
      Visible = False
    end
    object quVagaVag_horquafim2: TDateTimeField
      FieldName = 'Vag_horquafim2'
      Visible = False
    end
    object quVagaVag_horquiini1: TDateTimeField
      FieldName = 'Vag_horquiini1'
      Visible = False
    end
    object quVagaVag_horquifim1: TDateTimeField
      FieldName = 'Vag_horquifim1'
      Visible = False
    end
    object quVagaVag_horquiini2: TDateTimeField
      FieldName = 'Vag_horquiini2'
      Visible = False
    end
    object quVagaVag_horquifim2: TDateTimeField
      FieldName = 'Vag_horquifim2'
      Visible = False
    end
    object quVagaVag_horsexini1: TDateTimeField
      FieldName = 'Vag_horsexini1'
      Visible = False
    end
    object quVagaVag_horsexfim1: TDateTimeField
      FieldName = 'Vag_horsexfim1'
      Visible = False
    end
    object quVagaVag_horsexini2: TDateTimeField
      FieldName = 'Vag_horsexini2'
      Visible = False
    end
    object quVagaVag_horsexfim2: TDateTimeField
      FieldName = 'Vag_horsexfim2'
      Visible = False
    end
    object quVagaVag_hordomini1: TDateTimeField
      FieldName = 'Vag_hordomini1'
      Visible = False
    end
    object quVagaVag_hordomfim1: TDateTimeField
      FieldName = 'Vag_hordomfim1'
      Visible = False
    end
    object quVagaVag_hordomini2: TDateTimeField
      FieldName = 'Vag_hordomini2'
      Visible = False
    end
    object quVagaVag_hordomfim2: TDateTimeField
      FieldName = 'Vag_hordomfim2'
      Visible = False
    end
    object quVagavag_Interseg: TDateTimeField
      FieldName = 'vag_Interseg'
      Visible = False
    end
    object quVagavag_Interter: TDateTimeField
      FieldName = 'vag_Interter'
      Visible = False
    end
    object quVagavag_Interqua: TDateTimeField
      FieldName = 'vag_Interqua'
      Visible = False
    end
    object quVagavag_Interqui: TDateTimeField
      FieldName = 'vag_Interqui'
      Visible = False
    end
    object quVagavag_Intersex: TDateTimeField
      FieldName = 'vag_Intersex'
      Visible = False
    end
    object quVagavag_Interdom: TDateTimeField
      FieldName = 'vag_Interdom'
      Visible = False
    end
    object quVagaVag_Intervalo: TDateTimeField
      FieldName = 'Vag_Intervalo'
      Visible = False
    end
    object quVagaVag_segunda: TStringField
      FieldName = 'Vag_segunda'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_terca: TStringField
      FieldName = 'Vag_terca'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_quarta: TStringField
      FieldName = 'Vag_quarta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_quinta: TStringField
      FieldName = 'Vag_quinta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_sexta: TStringField
      FieldName = 'Vag_sexta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_sabado: TStringField
      FieldName = 'Vag_sabado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_horsabini1: TDateTimeField
      FieldName = 'Vag_horsabini1'
      Visible = False
    end
    object quVagaVag_horsabfim1: TDateTimeField
      FieldName = 'Vag_horsabfim1'
      Visible = False
    end
    object quVagaVag_horsabini2: TDateTimeField
      FieldName = 'Vag_horsabini2'
      Visible = False
    end
    object quVagaVag_horsabfim2: TDateTimeField
      FieldName = 'Vag_horsabfim2'
      Visible = False
    end
    object quVagavag_Intersab: TDateTimeField
      FieldName = 'vag_Intersab'
      Visible = False
    end
    object quVagaVag_AuxTransp: TStringField
      FieldName = 'Vag_AuxTransp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_AuxTranspValor: TFloatField
      FieldName = 'Vag_AuxTranspValor'
      Visible = False
      currency = True
    end
    object quVagaVag_AuxAlim: TStringField
      FieldName = 'Vag_AuxAlim'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_AuxAlimAntecipa: TStringField
      FieldName = 'Vag_AuxAlimAntecipa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_AuxAlimTipo: TStringField
      FieldName = 'Vag_AuxAlimTipo'
      Visible = False
      Size = 50
    end
    object quVagaVag_AuxAlimtexto: TStringField
      FieldName = 'Vag_AuxAlimtexto'
      Visible = False
      Size = 50
    end
    object quVagaVag_AuxAlimValor: TFloatField
      FieldName = 'Vag_AuxAlimValor'
      Visible = False
      currency = True
    end
    object quVagaVag_AuxTransptexto: TMemoField
      FieldName = 'Vag_AuxTransptexto'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quVagaVag_Escala: TStringField
      FieldName = 'Vag_Escala'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_Tipo: TStringField
      FieldName = 'Vag_Tipo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaArea_cod: TIntegerField
      FieldName = 'Area_cod'
      Visible = False
    end
    object quVagaSel_cod: TIntegerField
      FieldName = 'Sel_cod'
      Visible = False
    end
    object quVagaSelecionador: TStringField
      FieldKind = fkCalculated
      FieldName = 'Selecionador'
      Size = 60
      Calculated = True
    end
    object quVagaVag_Selecao: TStringField
      FieldName = 'Vag_Selecao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_Fechada: TStringField
      FieldName = 'Vag_Fechada'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_Resp: TStringField
      FieldName = 'Vag_Resp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_DataEnc: TDateTimeField
      DisplayLabel = 'Data para Encaminhamento'
      FieldName = 'Vag_DataEnc'
      Visible = False
    end
    object quVagaVag_Permanente: TStringField
      DisplayLabel = 'Permanente'
      FieldName = 'Vag_Permanente'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaVag_acao: TStringField
      DisplayLabel = 'A'#231#227'o'
      FieldName = 'Vag_acao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quVagaAcao: TStringField
      DisplayLabel = 'A'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Acao'
      Visible = False
      Size = 30
      Calculated = True
    end
    object quVagaVag_ReqInterno: TMemoField
      FieldName = 'Vag_ReqInterno'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quVagaVag_ReqDivulgacao: TMemoField
      FieldName = 'Vag_ReqDivulgacao'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quVagaVag_DataProcesso: TStringField
      FieldName = 'Vag_DataProcesso'
      Visible = False
      Size = 100
    end
    object quVagaVag_HoraProcesso: TStringField
      FieldName = 'Vag_HoraProcesso'
      Visible = False
      Size = 100
    end
    object quVagaVag_bolsabeneficio: TStringField
      FieldName = 'Vag_bolsabeneficio'
      Visible = False
      Size = 100
    end
  end
  object Qrypesq: TQuery
    DatabaseName = 'TalentPool'
    Left = 825
    Top = 623
  end
  object qryTCES: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     Tce.Tce_cod,'
      'case'
      'when  Encaminhamento.Eva_resultado  = 0 then '#39'Em Espera'#39
      'when  Encaminhamento.Eva_resultado  =    1 then '#39'Reprovado'#39
      'when  Encaminhamento.Eva_resultado  =   2 then  '#39'Aprovado'#39
      'when  Encaminhamento.Eva_resultado  =   3 then '#39'Desistiu'#39
      
        'when  Encaminhamento.Eva_resultado  =   4 then '#39'Selecionado pela' +
        ' Empresa'#39
      
        'when  Encaminhamento.Eva_resultado  =   5 then  '#39'N'#227'o entrevistad' +
        'o pelo Cliente'#39
      'when  Encaminhamento.Eva_resultado  =   6 then  '#39'STANDBY'#39
      ''
      'end  Resultado'
      ', Estudante.Est_nome , Estudante.est_cod , Vaga.Vag_cod,  '
      
        ' Vaga.Vag_setor ,  tce.tce_data,Vaga.Vag_dataabertura  , Vaga.Va' +
        'g_qtde,'
      ' Vaga.Vag_qtdepreenc,'
      'Case'
      ' when Tce.Tce_situacao = 0 then '#39'Normal'#39
      'when Tce.Tce_situacao =  1 then '#39'1'#170' Prorroga'#231#227'o'#39
      'when Tce.Tce_situacao =   2 then '#39'2'#170' Prorroga'#231#227'o'#39
      'when Tce.Tce_situacao =    3 then '#39'3'#170' Prorroga'#231#227'o'#39
      'when Tce.Tce_situacao =    4 then '#39'4'#170' Prorroga'#231#227'o'#39
      'when Tce.Tce_situacao =    5 then  '#39'5'#170' Prorroga'#231#227'o'#39
      'when Tce.Tce_situacao =    6 then '#39'6'#170' Prorroga'#231#227'o'#39
      
        'when Tce.Tce_situacao =   7 then  '#39'Resc. '#39'  +  cast(Tce.Tce_Data' +
        'Res as char(18)) '
      'end  SituacaoTce,'
      ' Empresa.Emp_nome'
      ' '
      'FROM         Tce INNER JOIN'
      
        '                      Vaga ON Tce.Vag_cod = Vaga.Vag_cod INNER J' +
        'OIN'
      
        '                      Encaminhamento ON Vaga.Vag_cod = Encaminha' +
        'mento.Vag_cod INNER JOIN'
      
        '                      Estudante ON Tce.Est_cod = Estudante.est_c' +
        'od AND Encaminhamento.Est_cod = Estudante.est_cod'
      
        'INNER JOIN   Empresa ON Tce.Emp_cod = Empresa.Emp_cod AND Vaga.E' +
        'mp_cod = Empresa.Emp_cod'
      'where  Vaga.Vag_dataabertura  between  :inicio and :final'
      ''
      'ORDER BY Vaga.Vag_cod DESC')
    Left = 1176
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'final'
        ParamType = ptUnknown
      end>
    object qryTCESVag_cod: TIntegerField
      DisplayLabel = 'Cod. Oportunidade'
      FieldName = 'Vag_cod'
    end
    object qryTCESVag_dataabertura: TDateTimeField
      DisplayLabel = 'Dta Abertura'
      FieldName = 'Vag_dataabertura'
    end
    object qryTCEStce_data: TDateTimeField
      DisplayLabel = 'Data Tce'
      FieldName = 'tce_data'
    end
    object qryTCESVag_qtde: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'Vag_qtde'
    end
    object qryTCESVag_qtdepreenc: TIntegerField
      DisplayLabel = 'Preenc.'
      FieldName = 'Vag_qtdepreenc'
    end
    object qryTCESTce_cod: TIntegerField
      DisplayLabel = 'TCE'
      FieldName = 'Tce_cod'
    end
    object qryTCESEmp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'Emp_nome'
      Size = 150
    end
    object qryTCESVag_setor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'Vag_setor'
      Size = 60
    end
    object qryTCESSituacaoTce: TStringField
      DisplayLabel = 'Situacao doTce'
      FieldName = 'SituacaoTce'
      Size = 16
    end
    object qryTCESEst_nome: TStringField
      DisplayLabel = 'Estudante'
      FieldName = 'Est_nome'
      Size = 50
    end
    object qryTCESResultado: TStringField
      FieldName = 'Resultado'
      Size = 29
    end
  end
  object QRYOPTEMPRESA: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     '
      ' Vaga.Emp_cod,'
      ' Vaga.Vag_cod,'
      ' Empresa.Emp_nome,'
      ' Estudante.Est_nome,'
      ' Curso.cur_nome,'
      ' Estudante.Est_fone1,'
      ' Estudante.Est_fone2, '
      ' Estudante.pcu_anoatual,'
      'case'
      ' when  Estudante.pcu_peratual = 0 then '#39'Ano'#39
      ' when  Estudante.pcu_peratual = 1 then '#39'Semestre'#39
      'end Periodo,'
      'case'
      '  when Estudante.pcu_turno = 0 then '#39'Manh'#227#39
      '  when Estudante.pcu_turno = 1 then '#39'Tarde'#39
      '  when Estudante.pcu_turno = 2 then '#39'Noite'#39
      '  when Estudante.pcu_turno = 3 then '#39'Manh'#227' / Tarde'#39
      '  when Estudante.pcu_turno = 4 then '#39'Manh'#227' / Noite'#39
      '  when Estudante.pcu_turno = 5 then '#39'Tarde / Noite'#39
      ' end Turno,'
      ''
      ' case'
      '   when  Encaminhamento.Eva_resultado  = 0 then '#39'Em Espera'#39
      '   when  Encaminhamento.Eva_resultado  =    1 then '#39'Reprovado'#39
      '   when  Encaminhamento.Eva_resultado  =   2 then  '#39'Aprovado'#39
      '   when  Encaminhamento.Eva_resultado  =   3 then '#39'Desistiu'#39
      
        '   when  Encaminhamento.Eva_resultado  =   4 then '#39'Selecionado p' +
        'ela Empresa'#39
      
        '   when  Encaminhamento.Eva_resultado  =   5 then  '#39'N'#227'o entrevis' +
        'tado pelo Cliente'#39
      '   when  Encaminhamento.Eva_resultado  =   6 then  '#39'STANDBY'#39
      'end Resultado,'
      ' Vaga.Vag_setor,'
      ' Vaga.Vag_dataabertura,'
      ' Encaminhamento.Eva_dataenc,'
      ' Vaga.Vag_qtde,'
      ' Vaga.Vag_qtdepreenc '
      'FROM         Vaga INNER JOIN'
      
        '                      Empresa ON Vaga.Emp_cod = Empresa.Emp_cod ' +
        'INNER JOIN'
      
        '                      Encaminhamento ON Vaga.Vag_cod = Encaminha' +
        'mento.Vag_cod INNER JOIN'
      
        '                      Estudante ON Encaminhamento.Est_cod = Estu' +
        'dante.est_cod INNER JOIN'
      '                      Curso ON Estudante.cur_cod = Curso.cur_cod')
    Left = 1036
    Top = 562
    object QRYOPTEMPRESAEmp_cod: TIntegerField
      DisplayLabel = 'Cod Empresa'
      DisplayWidth = 7
      FieldName = 'Emp_cod'
    end
    object QRYOPTEMPRESAEmp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 180
      FieldName = 'Emp_nome'
      Size = 150
    end
    object QRYOPTEMPRESAVag_cod: TIntegerField
      DisplayLabel = 'Vaga'
      DisplayWidth = 12
      FieldName = 'Vag_cod'
    end
    object QRYOPTEMPRESAVag_qtde: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 12
      FieldName = 'Vag_qtde'
    end
    object QRYOPTEMPRESAVag_qtdepreenc: TIntegerField
      DisplayLabel = 'Qtde Preenc.'
      DisplayWidth = 13
      FieldName = 'Vag_qtdepreenc'
    end
    object QRYOPTEMPRESAVag_setor: TStringField
      DisplayLabel = 'Setor'
      DisplayWidth = 72
      FieldName = 'Vag_setor'
      Size = 60
    end
    object QRYOPTEMPRESAVag_dataabertura: TDateTimeField
      DisplayLabel = 'Abertura'
      DisplayWidth = 22
      FieldName = 'Vag_dataabertura'
    end
    object QRYOPTEMPRESAEva_dataenc: TDateTimeField
      DisplayLabel = 'Encaminhamentoc'
      DisplayWidth = 22
      FieldName = 'Eva_dataenc'
    end
    object QRYOPTEMPRESAEst_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 60
      FieldName = 'Est_nome'
      Size = 50
    end
    object QRYOPTEMPRESAcur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 180
      FieldName = 'cur_nome'
      Size = 150
    end
    object QRYOPTEMPRESApcu_anoatual: TIntegerField
      DisplayLabel = 'Ano/Semestre'
      DisplayWidth = 14
      FieldName = 'pcu_anoatual'
    end
    object QRYOPTEMPRESAPeriodo: TStringField
      DisplayWidth = 10
      FieldName = 'Periodo'
      Size = 8
    end
    object QRYOPTEMPRESATurno: TStringField
      DisplayWidth = 16
      FieldName = 'Turno'
      Size = 13
    end
    object QRYOPTEMPRESAEst_fone1: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 18
      FieldName = 'Est_fone1'
      Size = 15
    end
    object QRYOPTEMPRESAEst_fone2: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 18
      FieldName = 'Est_fone2'
      Size = 15
    end
    object QRYOPTEMPRESAResultado: TStringField
      DisplayWidth = 35
      FieldName = 'Resultado'
      Size = 29
    end
  end
  object dsOptEmpresa: TDataSource
    DataSet = QRYOPTEMPRESA
    Left = 1036
    Top = 613
  end
  object qryPromocao: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     Estudante.Est_nome , Estudante.est_cod , Curso.cur_no' +
        'me, Curso.cur_nivel, Tce.Tce_data, Tce.Tce_cod, Tce.Tce_situacao' +
        ', '
      
        '                      Estudante.cur_cod, Estudante.est_situacao,' +
        ' Estudante.est_cursoano, Estudante.est_cursoSem,pcu_anoatual, '
      '                  case '
      '                    when pcu_peratual = 0  then '#39'Ano'#39' '
      '                    when pcu_peratual = 0  then '#39'Semestre'#39' '
      '                  end Tipo'
      ''
      ''
      '           '
      '                   '
      'FROM         Estudante,tce,curso  '
      '                      '
      
        'WHERE     (Tce.Tce_situacao < 7)  and Estudante.est_cod = Tce.Es' +
        't_cod and '
      'Estudante.cur_cod = Curso.cur_cod'
      'ORDER BY Curso.cur_nivel, Estudante.Est_nome')
    Left = 336
    Top = 669
    object qryPromocaoest_cod: TIntegerField
      DisplayLabel = 'C'#243'd.'
      DisplayWidth = 12
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.Estudante.est_cod'
    end
    object qryPromocaoEst_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 49
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.Estudante.Est_nome'
      Size = 50
    end
    object qryPromocaocur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 180
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.curso.cur_nome'
      Size = 150
    end
    object qryPromocaocur_nivel: TStringField
      DisplayLabel = 'Nivel'
      DisplayWidth = 24
      FieldName = 'cur_nivel'
      Origin = 'TALENTPOOL.curso.cur_nivel'
    end
    object qryPromocaoTce_data: TDateTimeField
      DisplayLabel = 'Data TCE'
      DisplayWidth = 22
      FieldName = 'Tce_data'
      Origin = 'TALENTPOOL.tce.Tce_data'
    end
    object qryPromocaoTce_cod: TIntegerField
      DisplayLabel = 'Tce'
      DisplayWidth = 12
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.tce.Tce_cod'
    end
    object qryPromocaoTce_situacao: TStringField
      FieldName = 'Tce_situacao'
      Origin = 'TALENTPOOL.tce.Tce_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryPromocaocur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.Estudante.cur_cod'
      Visible = False
    end
    object qryPromocaoest_situacao: TStringField
      DisplayLabel = 'Sit. Estudante'
      DisplayWidth = 13
      FieldName = 'est_situacao'
      Origin = 'TALENTPOOL.Estudante.est_situacao'
      FixedChar = True
      Size = 1
    end
    object qryPromocaoest_cursoano: TIntegerField
      DisplayLabel = 'Ano'
      DisplayWidth = 12
      FieldName = 'est_cursoano'
      Origin = 'TALENTPOOL.Estudante.est_cursoano'
    end
    object qryPromocaoest_cursoSem: TIntegerField
      DisplayLabel = 'Semestre'
      DisplayWidth = 12
      FieldName = 'est_cursoSem'
      Origin = 'TALENTPOOL.Estudante.est_cursoSem'
    end
    object qryPromocaopcu_anoatual: TIntegerField
      DisplayLabel = 'Periodo'
      DisplayWidth = 12
      FieldName = 'pcu_anoatual'
      Origin = 'TALENTPOOL.Estudante.pcu_anoatual'
    end
    object qryPromocaoTipo: TStringField
      DisplayWidth = 10
      FieldName = 'Tipo'
      Size = 8
    end
  end
  object dtspromocao: TDataSource
    DataSet = qryPromocao
    Left = 270
    Top = 674
  end
  object dtspesquisa: TDataSource
    DataSet = qrypesquisa
    Left = 272
    Top = 574
  end
  object dsAtuEstudante: TDataSource
    DataSet = quAtuEstudante
    Left = 64
    Top = 560
  end
  object quAtuEstudante: TQuery
    CachedUpdates = True
    OnCalcFields = quEstudanteCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select *'
      'from estudante '
      'where est_cod = :est_cod')
    UpdateObject = usAtuEstudante
    Left = 128
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quAtuEstudanteest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.estudante.est_cod'
    end
    object quAtuEstudanteest_situacao: TStringField
      FieldName = 'est_situacao'
      Origin = 'TALENTPOOL.estudante.est_situacao'
      FixedChar = True
      Size = 1
    end
    object quAtuEstudanteinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.estudante.inst_cod'
    end
    object quAtuEstudantecur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.estudante.cur_cod'
    end
    object quAtuEstudantepcu_anoatual: TIntegerField
      FieldName = 'pcu_anoatual'
      Origin = 'TALENTPOOL.estudante.pcu_anoatual'
    end
    object quAtuEstudantepcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Origin = 'TALENTPOOL.estudante.pcu_peratual'
      FixedChar = True
      Size = 1
    end
    object quAtuEstudantepcu_turno: TStringField
      FieldName = 'pcu_turno'
      Origin = 'TALENTPOOL.estudante.pcu_turno'
      FixedChar = True
      Size = 1
    end
    object quAtuEstudanteest_cursoAno: TIntegerField
      FieldName = 'est_cursoAno'
      Origin = 'TALENTPOOL.estudante.est_cursoAno'
    end
    object quAtuEstudanteest_cursoSem: TIntegerField
      FieldName = 'est_cursoSem'
      Origin = 'TALENTPOOL.estudante.est_cursoSem'
    end
  end
  object usAtuEstudante: TUpdateSQL
    ModifySQL.Strings = (
      'update estudante'
      'set'
      '  pcu_anoatual = :pcu_anoatual,'
      '  est_cursoano = :est_cursoano,'
      '  est_cursoSem = :est_cursoSem'
      'where'
      '  est_cod = :OLD_est_cod')
    Left = 192
    Top = 560
  end
  object dsHistorico: TDataSource
    DataSet = quHistorico
    Left = 64
    Top = 607
  end
  object quHistorico: TQuery
    CachedUpdates = True
    OnCalcFields = quEstudanteCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from historico where est_cod=:est_cod')
    UpdateObject = questHistorico
    Left = 128
    Top = 607
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
    object quHistoricoest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.historico.est_cod'
    end
    object quHistoricocur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.historico.cur_cod'
    end
    object quHistoricopcu_cursoAno: TIntegerField
      FieldName = 'pcu_cursoAno'
      Origin = 'TALENTPOOL.historico.pcu_cursoAno'
    end
    object quHistoricopcu_cursoSem: TIntegerField
      FieldName = 'pcu_cursoSem'
      Origin = 'TALENTPOOL.historico.pcu_cursoSem'
    end
    object quHistoricopcu_ano: TIntegerField
      FieldName = 'pcu_ano'
      Origin = 'TALENTPOOL.historico.pcu_ano'
    end
    object quHistoricoinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.historico.inst_cod'
    end
  end
  object questHistorico: TUpdateSQL
    InsertSQL.Strings = (
      'insert into historico'
      
        '  (est_cod, cur_cod, pcu_cursoAno, pcu_cursoSem, pcu_ano, inst_c' +
        'od)'
      'values'
      
        '  (:est_cod, :cur_cod, :pcu_cursoAno, :pcu_cursoSem, :pcu_ano, :' +
        'inst_cod)')
    DeleteSQL.Strings = (
      'delete from historico'
      'where'
      '  est_cod = :OLD_est_cod and'
      '  cur_cod = :OLD_cur_cod and'
      '  pcu_cursoAno = :OLD_pcu_cursoAno and'
      '  pcu_cursoSem = :OLD_pcu_cursoSem and'
      '  pcu_ano = :OLD_pcu_ano and'
      '  inst_cod = :OLD_inst_cod')
    Left = 192
    Top = 607
  end
  object qryREstagiarios: TQuery
    OnCalcFields = qryREstagiariosCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT      Empresa.Emp_nome AS Empresa, Estudante.Est_nome AS E' +
        'studante,'
      
        '            Empresa.Emp_endereco AS EmpEndereco, Empresa.Emp_bai' +
        'rro AS EmpBairro, Empresa.Emp_cidade AS EmpCidade, Empresa.Emp_e' +
        'stado AS EmpEstado, '
      
        '                      Empresa.Emp_cep AS EmpCep, Empresa.Emp_cnp' +
        'j AS Cnpj,        '
      
        '                      Estudante.Est_endereco AS EstEndereco, Est' +
        'udante.Est_cpf AS Cpg, Estudante.Est_rg AS Rg, Estudante.Est_dtn' +
        'asc Nascimento, Estudante.Est_email,'
      
        '                      Estudante.Est_fone1,Estudante.Est_fone2,Es' +
        'tudante.Est_recado,'
      '                      cast(CASE '
      
        '                       WHEN Tce.tce_tipobolsa = '#39'0'#39' THEN isnull(' +
        'Tce.tce_bolsa * tCE.tce_tothoras, 0) '
      '                       ELSE isnull(Tce.tce_bolsa, 0) '
      '                       END as money)bolsa,'
      
        'Estudante.Est_cidade AS EstCidade ,Estudante.Est_Bairro AS EstBa' +
        'irro,Estudante.Est_cep AS EstCep'
      ''
      'FROM         Tce INNER JOIN'
      
        '                      Empresa ON Tce.Emp_cod = Empresa.Emp_cod I' +
        'NNER JOIN'
      
        '                      Estudante ON Tce.Est_cod = Estudante.est_c' +
        'od'
      'WHERE     (Tce.Tce_situacao <> 7)'
      'ORDER BY Empresa.Emp_nome,Estudante.Est_nome')
    Left = 899
    Top = 458
    object qryREstagiariosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 150
    end
    object qryREstagiariosEstudante: TStringField
      FieldName = 'Estudante'
      Size = 50
    end
    object qryREstagiariosEmpEndereco: TStringField
      DisplayLabel = 'End. Empresa'
      FieldName = 'EmpEndereco'
      Size = 100
    end
    object qryREstagiariosEmpBairro: TStringField
      DisplayLabel = 'Emp. Bairro'
      FieldName = 'EmpBairro'
      Size = 50
    end
    object qryREstagiariosEmpCidade: TStringField
      DisplayLabel = 'Emp. Cidade'
      FieldName = 'EmpCidade'
      Size = 50
    end
    object qryREstagiariosEmpEstado: TStringField
      DisplayLabel = 'Emp. Estado'
      FieldName = 'EmpEstado'
      FixedChar = True
      Size = 2
    end
    object qryREstagiariosEmpCep: TStringField
      DisplayLabel = 'Emp. Cep'
      FieldName = 'EmpCep'
      Size = 8
    end
    object qryREstagiariosCnpj: TStringField
      FieldName = 'Cnpj'
      Visible = False
      Size = 14
    end
    object qryREstagiariosCnpjEmpresa: TStringField
      DisplayLabel = 'Cnpj Empresa'
      FieldKind = fkCalculated
      FieldName = 'CnpjEmpresa'
      Calculated = True
    end
    object qryREstagiariosEstEndereco: TStringField
      DisplayLabel = 'Est. Endereco'
      FieldName = 'EstEndereco'
      Size = 100
    end
    object qryREstagiariosEstBairro: TStringField
      DisplayLabel = 'Est. Bairro'
      FieldName = 'EstBairro'
      Size = 50
    end
    object qryREstagiariosEstCidade: TStringField
      DisplayLabel = 'Est. Cidade'
      FieldName = 'EstCidade'
      Size = 50
    end
    object qryREstagiariosEstCep: TStringField
      DisplayLabel = 'Est. Cep'
      FieldName = 'EstCep'
      Size = 8
    end
    object qryREstagiariosEst_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'Est_email'
      Size = 50
    end
    object qryREstagiariosEst_fone1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'Est_fone1'
      Size = 15
    end
    object qryREstagiariosEst_fone2: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'Est_fone2'
      Size = 15
    end
    object qryREstagiariosEst_recado: TStringField
      DisplayLabel = 'Recado'
      FieldName = 'Est_recado'
      Size = 15
    end
    object qryREstagiariosCpg: TStringField
      DisplayLabel = 'CpfE'
      FieldName = 'Cpg'
      Visible = False
      Size = 11
    end
    object qryREstagiarioscpfEstudante: TStringField
      DisplayLabel = 'Cpf'
      FieldKind = fkCalculated
      FieldName = 'cpfEstudante'
      Calculated = True
    end
    object qryREstagiariosRg: TStringField
      FieldName = 'Rg'
    end
    object qryREstagiariosNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qryREstagiariosbolsa: TFloatField
      DisplayLabel = 'Bolsa Aux.'
      FieldName = 'bolsa'
      currency = True
    end
  end
  object DsQryREstariagios: TDataSource
    DataSet = qryREstagiarios
    Left = 969
    Top = 463
  end
  object quVagaAux: TQuery
    CachedUpdates = True
    OnCalcFields = quEmpresaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        'v.Vag_cod,v.Vag_setor,v.vag_dataabertura,v.vag_qtde,v.vag_qtdepr' +
        'eenc,v.vag_cancelada,v.Emp_cod,v.vag_respselecao,v.vag_qtdecance' +
        'l ,'
      ''
      ' e.emp_nome,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod) Encaminhados,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'3'#39') Desistentes,'
      
        '(select count(vag_cod) from encaminhamento where vag_cod = v.vag' +
        '_cod and eva_resultado ='#39'2'#39') Aprovados,'
      'case '
      
        'when  cast(v.vag_cancelada as integer)  > 0 then  v.vag_qtde * c' +
        'ast(v.vag_cancelada as integer) '
      'else'
      'v.vag_qtdecancel '
      'end Canceladas,'
      
        '(select  f.efu_nome from  Empfuncionario f where e.emp_cod = f.e' +
        'mp_cod and e.emp_respcomp = f.func_cod) RespEmpresa'
      'from'
      '  Vaga V, Empresa E'
      'where'
      '  E.emp_cod = V.emp_cod'
      'order by'
      '  v.vag_cod')
    Left = 402
    Top = 521
    object IntegerField16: TIntegerField
      DisplayLabel = 'Cod Vaga'
      DisplayWidth = 9
      FieldName = 'Vag_cod'
    end
    object IntegerField17: TIntegerField
      FieldName = 'Emp_cod'
      Visible = False
    end
    object StringField27: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 50
      FieldName = 'emp_nome'
      Size = 150
    end
    object StringField28: TStringField
      DisplayLabel = 'Responsavel Emp.'
      FieldName = 'RespEmpresa'
      Visible = False
      Size = 50
    end
    object StringField29: TStringField
      DisplayLabel = 'Resp. Selec'#227'o'
      FieldName = 'vag_respselecao'
      Visible = False
      Size = 60
    end
    object StringField30: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'Vag_setor'
      Visible = False
      Size = 60
    end
    object DateTimeField34: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'Vag_dataabertura'
      Visible = False
    end
    object IntegerField18: TIntegerField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 5
      FieldName = 'Vag_qtde'
    end
    object IntegerField19: TIntegerField
      DisplayLabel = 'Preenc.'
      DisplayWidth = 7
      FieldName = 'Vag_qtdepreenc'
    end
    object IntegerField20: TIntegerField
      FieldName = 'Encaminhados'
      Visible = False
    end
    object IntegerField21: TIntegerField
      FieldName = 'Desistentes'
      Visible = False
    end
    object IntegerField22: TIntegerField
      FieldName = 'Aprovados'
      Visible = False
    end
    object StringField31: TStringField
      FieldName = 'vag_cancelada'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField26: TIntegerField
      DisplayWidth = 7
      FieldName = 'Canceladas'
    end
    object IntegerField27: TIntegerField
      DisplayWidth = 7
      FieldName = 'vag_qtdecancel'
      Visible = False
    end
  end
  object quLotePgto: TQuery
    CachedUpdates = True
    OnCalcFields = quFolhaPgtoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  L.*, E.emp_nome, F.fat_ano,F.Fat_mes'
      'from'
      ' Lote L,  Fatura F, Empresa E '
      'where'
      '  E.emp_cod = F.emp_cod and'
      '  F.fat_numero = :fat_numero and'
      '  L.fat_numero = F.fat_numero'
      'order by'
      '  L.Lot_numero'
      ' ')
    UpdateObject = usLotePgto
    Left = 764
    Top = 540
    ParamData = <
      item
        DataType = ftInteger
        Name = 'fat_numero'
        ParamType = ptUnknown
      end>
    object quLotePgtoLot_numero: TIntegerField
      DisplayLabel = 'Id Lote'
      FieldName = 'Lot_numero'
    end
    object quLotePgtoFat_numero: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Fat_numero'
    end
    object quLotePgtoLot_data: TDateTimeField
      DisplayLabel = 'Data de Gera'#231#227'o'
      FieldName = 'Lot_data'
    end
    object quLotePgtoEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Visible = False
    end
    object quLotePgtoLot_sequencia: TIntegerField
      DisplayLabel = 'Numero do Envio'
      FieldName = 'Lot_sequencia'
    end
    object quLotePgtoemp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_nome'
      Size = 150
    end
    object quLotePgtofat_ano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'fat_ano'
    end
    object quLotePgtoFat_mes: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'Fat_mes'
    end
    object quLotePgtolot_datacred: TDateTimeField
      DisplayLabel = 'Data Cred.'
      FieldName = 'lot_datacred'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DsLotePgto: TDataSource
    DataSet = quLotePgto
    Left = 698
    Top = 540
  end
  object usLotePgto: TUpdateSQL
    ModifySQL.Strings = (
      'update Lote'
      'set'
      '  Lot_numero = :Lot_numero,'
      '  Fat_numero = :Fat_numero,'
      '  Lot_data = :Lot_data,'
      '  Emp_cod = :Emp_cod,'
      '  Lot_sequencia = :Lot_sequencia,'
      '  lot_datacred = :lot_datacred'
      'where'
      '  Lot_numero = :OLD_Lot_numero and'
      '  Fat_numero = :OLD_Fat_numero')
    InsertSQL.Strings = (
      'insert into Lote'
      
        '  (Lot_numero, Fat_numero, Lot_data, Emp_cod, Lot_sequencia, lot' +
        '_datacred)'
      'values'
      
        '  (:Lot_numero, :Fat_numero, :Lot_data, :Emp_cod, :Lot_sequencia' +
        ', :lot_datacred)')
    DeleteSQL.Strings = (
      'delete from Lote'
      'where'
      '  Lot_numero = :OLD_Lot_numero and'
      '  Fat_numero = :OLD_Fat_numero')
    Left = 825
    Top = 540
  end
  object qryitau: TQuery
    OnCalcFields = qryitauCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '        est_nome, est_cpf, est_dtnasc,est_conta,est_agencia,est_' +
        'banco,est_rg,'
      
        '       case  when (select  tce_cod   from  Tce  X where  x.tce_c' +
        'od in '
      
        '       (select tce_cod from Tce   where tce_situacao = '#39'0'#39' and t' +
        'ce_dataini < '#39'01/01/2008'#39' and '
      
        '       tce_datafim > '#39'01/01/2007'#39'  and est_cod =estudante.est_co' +
        'd ) ) is not null then '
      '       (select  tce_cod   from  Tce  X where  x.tce_cod in '
      
        '       (select tce_cod from Tce   where tce_situacao = 0 and tce' +
        '_dataini < '#39'01/01/2008'#39' and '
      
        '       tce_datafim > '#39'01/01/2007'#39' and est_cod =estudante.est_cod' +
        ' ) ) '
      
        '       else (select  tce_cod   from  Tce  X where   x.tce_cod in' +
        ' '
      '       (select  t.tce_cod from TceAditivo TA, Tce t '
      
        '       where ta.tce_cod = t.tce_cod and  t.tce_situacao <> '#39'0'#39' a' +
        'nd    t.tce_situacao <> '#39'7'#39' and '
      
        '       ta.tpr_dataini < '#39'01/01/2007'#39' and ta.tpr_datafim > '#39'01/01' +
        '/2008'#39' and x.tce_cod= t.tce_cod AND T.est_cod =estudante.est_cod' +
        '  )) '
      '       end as tce '
      '      from'
      '        estudante'
      '      where  est_banco = '#39'Banco Ita'#250#39' and'
      '        est_cod in'
      '      (select'
      '        est_cod'
      '       from '
      '        Tce'
      '      where'
      '        tce_cod in'
      '        (select tce_cod from Tce'
      '         where tce_situacao = '#39'0'#39' and'
      '         tce_dataini < '#39'01/01/2008'#39' and'
      '         tce_datafim > '#39'01/01/2007'#39') or'
      '        tce_cod in'
      '        (select t.tce_cod from TceAditivo TA, Tce t'
      '         where ta.tce_cod = t.tce_cod and'
      '         t.tce_situacao <> '#39'0'#39' and'
      '         t.tce_situacao <> '#39'7'#39' and'
      '         ta.tpr_dataini < '#39'01/01/2008'#39' and'
      '         ta.tpr_datafim > '#39'01/01/2007'#39'))'
      '      order by'
      '        est_nome')
    Left = 1137
    Top = 406
    object qryitauest_nome: TStringField
      DisplayLabel = 'Estudante'
      FieldName = 'est_nome'
      Size = 50
    end
    object qryitauest_cpf: TStringField
      DisplayLabel = 'Cpf'
      FieldName = 'est_cpf'
      Size = 11
    end
    object qryitauest_rg: TStringField
      DisplayLabel = 'Rg'
      FieldName = 'est_rg'
    end
    object qryitauest_dtnasc: TDateTimeField
      DisplayLabel = 'Nasc.'
      FieldName = 'est_dtnasc'
    end
    object qryitauest_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'est_banco'
      Size = 30
    end
    object qryitauest_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'est_agencia'
      Size = 15
    end
    object qryitauest_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'est_conta'
      Size = 15
    end
    object qryitautce: TIntegerField
      DisplayLabel = 'Tce'
      FieldName = 'tce'
    end
    object qryitauEmpresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'Empresa'
      Size = 60
      Calculated = True
    end
  end
  object Query1: TQuery
    DatabaseName = 'TalentPool'
    Left = 1089
    Top = 410
  end
  object dsRequisito: TDataSource
    DataSet = quRequisito
    Left = 64
    Top = 374
  end
  object quRequisito: TQuery
    CachedUpdates = True
    BeforePost = quRequisitoBeforePost
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_requisito order by requisito')
    UpdateObject = usRequisito
    Left = 128
    Top = 374
    object quRequisitoid_requisito: TIntegerField
      FieldName = 'id_requisito'
      Origin = 'TALENTPOOL.tb_requisito.id_requisito'
    end
    object quRequisitorequisito: TStringField
      FieldName = 'requisito'
      Origin = 'TALENTPOOL.tb_requisito.requisito'
      Size = 50
    end
  end
  object usRequisito: TUpdateSQL
    ModifySQL.Strings = (
      'update tb_requisito'
      'set'
      '  id_requisito = :id_requisito,'
      '  requisito = :requisito'
      'where'
      '  id_requisito = :OLD_id_requisito')
    InsertSQL.Strings = (
      'insert into tb_requisito'
      '  (id_requisito, requisito)'
      'values'
      '  (:id_requisito, :requisito)')
    DeleteSQL.Strings = (
      'delete from tb_requisito'
      'where'
      '  id_requisito = :OLD_id_requisito')
    Left = 192
    Top = 374
  end
  object qryID: TQuery
    DatabaseName = 'TalentPool'
    Left = 1168
    Top = 264
  end
  object dsvagaRequisto: TDataSource
    DataSet = quVagaRequisito
    Left = 698
    Top = 182
  end
  object quVagaRequisito: TQuery
    CachedUpdates = True
    AfterInsert = quVagaRequisitoAfterInsert
    BeforePost = quRequisitoBeforePost
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_vagarequisito  where cod_vaga=:vaga '
      'order by cod_vaga')
    UpdateObject = Upvagarequisito
    Left = 764
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vaga'
        ParamType = ptInput
      end>
    object quVagaRequisitoCOD_VAGA: TIntegerField
      FieldName = 'COD_VAGA'
      Origin = 'TALENTPOOL.tb_vagarequisito.COD_VAGA'
      Visible = False
    end
    object quVagaRequisitoID_REQUISITO: TIntegerField
      FieldName = 'ID_REQUISITO'
      Origin = 'TALENTPOOL.tb_vagarequisito.ID_REQUISITO'
      Visible = False
    end
    object quVagaRequisitoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TALENTPOOL.tb_vagarequisito.TIPO'
      FixedChar = True
      Size = 1
    end
    object quVagaRequisitoRequisito: TStringField
      FieldKind = fkLookup
      FieldName = 'Requisito'
      LookupDataSet = Requisitos
      LookupKeyFields = 'id_requisito'
      LookupResultField = 'requisito'
      KeyFields = 'ID_REQUISITO'
      Size = 60
      Lookup = True
    end
  end
  object Upvagarequisito: TUpdateSQL
    ModifySQL.Strings = (
      'update tb_vagarequisito'
      'set'
      '  COD_VAGA = :COD_VAGA,'
      '  ID_REQUISITO = :ID_REQUISITO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_VAGA = :OLD_COD_VAGA and'
      '  ID_REQUISITO = :OLD_ID_REQUISITO')
    InsertSQL.Strings = (
      'insert into tb_vagarequisito'
      '  (COD_VAGA, ID_REQUISITO, TIPO)'
      'values'
      '  (:COD_VAGA, :ID_REQUISITO, :TIPO)')
    DeleteSQL.Strings = (
      'delete from tb_vagarequisito'
      'where'
      '  COD_VAGA = :OLD_COD_VAGA and'
      '  ID_REQUISITO = :OLD_ID_REQUISITO')
    Left = 825
    Top = 182
  end
  object Requisitos: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_requisito nolock order by requisito')
    Left = 1035
    Top = 460
    object Requisitosid_requisito: TIntegerField
      FieldName = 'id_requisito'
      Origin = 'TALENTPOOL.tb_requisito.id_requisito'
    end
    object Requisitosrequisito: TStringField
      FieldName = 'requisito'
      Origin = 'TALENTPOOL.tb_requisito.requisito'
      Size = 50
    end
  end
  object dsEstudanteRequisito: TDataSource
    DataSet = quEstudanteRequisito
    Left = 698
    Top = 134
  end
  object quEstudanteRequisito: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_estudanterequisito  where est_cod=:estudante'
      'order by est_cod')
    UpdateObject = UpEstudanteRequisto
    Left = 764
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'estudante'
        ParamType = ptInput
      end>
    object quEstudanteRequisitoest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.tb_estudanterequisito.est_cod'
      Visible = False
    end
    object quEstudanteRequisitoid_requisito: TIntegerField
      FieldName = 'id_requisito'
      Origin = 'TALENTPOOL.tb_estudanterequisito.id_requisito'
      Visible = False
    end
    object quEstudanteRequisitoRequisito: TStringField
      FieldKind = fkLookup
      FieldName = 'Requisito'
      LookupDataSet = Requisitos
      LookupKeyFields = 'id_requisito'
      LookupResultField = 'requisito'
      KeyFields = 'id_requisito'
      Size = 60
      Lookup = True
    end
  end
  object UpEstudanteRequisto: TUpdateSQL
    ModifySQL.Strings = (
      'update tb_estudanterequisito'
      'set'
      '  est_cod = :est_cod,'
      '  id_requisito = :id_requisito'
      'where'
      '  est_cod = :OLD_est_cod and'
      '  id_requisito = :OLD_id_requisito')
    InsertSQL.Strings = (
      'insert into tb_estudanterequisito'
      '  (est_cod, id_requisito)'
      'values'
      '  (:est_cod, :id_requisito)')
    DeleteSQL.Strings = (
      'delete from tb_estudanterequisito'
      'where'
      '  est_cod = :OLD_est_cod and'
      '  id_requisito = :OLD_id_requisito')
    Left = 825
    Top = 134
  end
  object usvaga: TUpdateSQL
    ModifySQL.Strings = (
      'update Vaga'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Vag_setor = :Vag_setor,'
      '  Vag_dataabertura = :Vag_dataabertura,'
      '  Vag_qtde = :Vag_qtde,'
      '  Vag_qtdepreenc = :Vag_qtdepreenc,'
      '  Vag_horarioini1 = :Vag_horarioini1,'
      '  Vag_horariofim1 = :Vag_horariofim1,'
      '  Vag_horarioini2 = :Vag_horarioini2,'
      '  Vag_horariofim2 = :Vag_horariofim2,'
      '  Vag_periodo = :Vag_periodo,'
      '  Vag_duracao = :Vag_duracao,'
      '  Vag_periodic = :Vag_periodic,'
      '  Vag_efetiva = :Vag_efetiva,'
      '  Vag_prorroga = :Vag_prorroga,'
      '  Vag_sexo = :Vag_sexo,'
      '  Vag_idademin = :Vag_idademin,'
      '  Vag_idademax = :Vag_idademax,'
      '  Vag_digitacao = :Vag_digitacao,'
      '  Vag_valetransp = :Vag_valetransp,'
      '  Vag_refeicaoprop = :Vag_refeicaoprop,'
      '  vag_valeref = :vag_valeref,'
      '  Vag_valorvaleref = :Vag_valorvaleref,'
      '  vag_valealim = :vag_valealim,'
      '  Vag_valorvalealim = :Vag_valorvalealim,'
      '  Vag_valorbolsa = :Vag_valorbolsa,'
      '  Vag_tipobolsa = :Vag_tipobolsa,'
      '  vag_respselecao = :vag_respselecao,'
      '  vag_divulgasite = :vag_divulgasite,'
      '  vag_divulgaemail = :vag_divulgaemail,'
      '  vag_observacao = :vag_observacao,'
      '  vag_transpemp = :vag_transpemp,'
      '  vag_assistmedica = :vag_assistmedica,'
      '  vag_cancelada = :vag_cancelada,'
      '  vag_qtdecancel = :vag_qtdecancel,'
      '  vag_Supervisor = :vag_Supervisor,'
      '  vag_FormSupervisor = :vag_FormSupervisor,'
      '  vag_ExpSupervisor = :vag_ExpSupervisor,'
      '  vag_CargSupervisor = :vag_CargSupervisor,'
      '  Vag_AreaSupervisor = :Vag_AreaSupervisor,'
      '  Vag_domingo = :Vag_domingo,'
      '  Vag_horsegini1 = :Vag_horsegini1,'
      '  Vag_horsegfim1 = :Vag_horsegfim1,'
      '  Vag_horsegini2 = :Vag_horsegini2,'
      '  Vag_horsegfim2 = :Vag_horsegfim2,'
      '  Vag_horterini1 = :Vag_horterini1,'
      '  Vag_horterfim1 = :Vag_horterfim1,'
      '  Vag_horterini2 = :Vag_horterini2,'
      '  Vag_horterfim2 = :Vag_horterfim2,'
      '  Vag_horquaini1 = :Vag_horquaini1,'
      '  Vag_horquafim1 = :Vag_horquafim1,'
      '  Vag_horquaini2 = :Vag_horquaini2,'
      '  Vag_horquafim2 = :Vag_horquafim2,'
      '  Vag_horquiini1 = :Vag_horquiini1,'
      '  Vag_horquifim1 = :Vag_horquifim1,'
      '  Vag_horquiini2 = :Vag_horquiini2,'
      '  Vag_horquifim2 = :Vag_horquifim2,'
      '  Vag_horsexini1 = :Vag_horsexini1,'
      '  Vag_horsexfim1 = :Vag_horsexfim1,'
      '  Vag_horsexini2 = :Vag_horsexini2,'
      '  Vag_horsexfim2 = :Vag_horsexfim2,'
      '  Vag_hordomini1 = :Vag_hordomini1,'
      '  Vag_hordomfim1 = :Vag_hordomfim1,'
      '  Vag_hordomini2 = :Vag_hordomini2,'
      '  Vag_hordomfim2 = :Vag_hordomfim2,'
      '  vag_Interseg = :vag_Interseg,'
      '  vag_Interter = :vag_Interter,'
      '  vag_Interqua = :vag_Interqua,'
      '  vag_Interqui = :vag_Interqui,'
      '  vag_Intersex = :vag_Intersex,'
      '  vag_Interdom = :vag_Interdom,'
      '  Vag_Intervalo = :Vag_Intervalo,'
      '  Vag_segunda = :Vag_segunda,'
      '  Vag_terca = :Vag_terca,'
      '  Vag_quarta = :Vag_quarta,'
      '  Vag_quinta = :Vag_quinta,'
      '  Vag_sexta = :Vag_sexta,'
      '  Vag_sabado = :Vag_sabado,'
      '  Vag_AuxTransp =:Vag_AuxTransp ,'
      '  Vag_AuxTransptexto=:Vag_AuxTransptexto,'
      '  Vag_AuxTranspValor=:Vag_AuxTranspValor,'
      '  Vag_DataSolicitacao=:Vag_DataSolicitacao,'
      '  Vag_AuxAlim =:Vag_AuxAlim ,'
      '  Vag_AuxAlimTexto=:Vag_AuxAlimTexto,'
      '  Vag_AuxAlimtipo=:Vag_AuxAlimtipo,'
      '  Vag_AuxAlimValor=:Vag_AuxAlimValor,'
      '  Vag_Tipo=:Vag_Tipo,'
      '  Vag_Escala=:Vag_Escala,'
      '   Vag_Selecao=:Vag_Selecao,'
      '   Vag_Fechada=:Vag_Fechada,'
      '   Vag_AuxAlimAntecipa=:Vag_AuxAlimAntecipa,'
      '   Sel_cod=:sel_cod,'
      '   Vag_DataEnc=:Vag_DataEnc,'
      '   Vag_resp=:Vag_resp,'
      '   Area_cod=:area_cod,'
      '  vag_acao=:vag_acao,'
      ' vag_permanente=:vag_permanente,'
      'vag_reqinterno=:vag_reqinterno,'
      'vag_reqdivulgacao=:vag_reqdivulgacao,'
      'vag_dataprocesso=:vag_dataprocesso,'
      'vag_horaprocesso=:vag_horaprocesso,'
      'vag_bolsabeneficio=:vag_bolsabeneficio'
      'where'
      '  Vag_cod = :OLD_Vag_cod')
    InsertSQL.Strings = (
      ''
      'insert into Vaga'
      
        '  (Emp_cod, Vag_setor, Vag_dataabertura, Vag_qtde, Vag_qtdepreen' +
        'c, '
      'Vag_horarioini1, '
      
        '   Vag_horariofim1, Vag_horarioini2, Vag_horariofim2, Vag_period' +
        'o, Vag_duracao, '
      
        '   Vag_periodic, Vag_efetiva, Vag_prorroga, Vag_sexo, Vag_idadem' +
        'in, Vag_idademax, '
      
        '   Vag_digitacao, Vag_valetransp, Vag_refeicaoprop, vag_valeref,' +
        ' Vag_valorvaleref, '
      
        '   vag_valealim, Vag_valorvalealim, Vag_valorbolsa, Vag_tipobols' +
        'a, vag_respselecao, '
      
        '   vag_divulgasite, vag_divulgaemail, vag_observacao, vag_transp' +
        'emp, '
      'vag_assistmedica, '
      
        '   vag_cancelada,vag_qtdecancel, vag_Supervisor, vag_FormSupervi' +
        'sor, '
      
        '  vag_ExpSupervisor, vag_CargSupervisor,vag_AreaSupervisor,Vag_d' +
        'omingo,Vag_horterini1, Vag_horterfim1, Vag_horterini2, Vag_horte' +
        'rfim2, Vag_horquaini1, '
      
        '   Vag_horquafim1, Vag_horquaini2, Vag_horquafim2, Vag_horquiini' +
        '1, Vag_horquifim1, '
      
        '   Vag_horquiini2, Vag_horquifim2, Vag_horsexini1, Vag_horsexfim' +
        '1, Vag_horsexini2, '
      
        '   Vag_horsexfim2, Vag_hordomini1, Vag_hordomfim1, Vag_hordomini' +
        '2, Vag_hordomfim2,'
      
        '   vag_Interseg, vag_Interter, vag_Interqua, vag_Interqui, vag_I' +
        'ntersex,'
      'vag_Interdom,vag_Intervalo,vag_segunda,'
      ' vag_terca,vag_quarta,vag_quinta'
      
        '   , vag_sexta,vag_sabado,Vag_AuxTransp ,Vag_AuxTransptexto,Vag_' +
        'AuxTranspValor,Vag_DataSolicitacao,'
      
        ' Vag_AuxAlim,Vag_AuxAlimTexto,Vag_AuxAlimtipo,Vag_AuxAlimValor,V' +
        'ag_AuxAlimAntecipa,'
      
        'Vag_Tipo,Vag_Escala,sel_cod,Area_cod, Vag_Selecao,Vag_Fechada,Va' +
        'g_resp,Vag_DataEnc,vag_acao,vag_permanente,'
      
        'vag_reqinterno,vag_reqdivulgacao,vag_dataprocesso,vag_horaproces' +
        'so,vag_bolsabeneficio)'
      'values'
      
        '  (:Emp_cod, :Vag_setor, :Vag_dataabertura, :Vag_qtde, :Vag_qtde' +
        'preenc, '
      
        '   :Vag_horarioini1, :Vag_horariofim1, :Vag_horarioini2, :Vag_ho' +
        'rariofim2, '
      
        '   :Vag_periodo, :Vag_duracao, :Vag_periodic, :Vag_efetiva, :Vag' +
        '_prorroga, '
      
        '   :Vag_sexo, :Vag_idademin, :Vag_idademax, :Vag_digitacao, :Vag' +
        '_valetransp, '
      
        '   :Vag_refeicaoprop, :vag_valeref, :Vag_valorvaleref, :vag_vale' +
        'alim, '
      ':Vag_valorvalealim, '
      
        '   :Vag_valorbolsa, :Vag_tipobolsa, :vag_respselecao, :vag_divul' +
        'gasite, '
      
        '   :vag_divulgaemail, :vag_observacao, :vag_transpemp, :vag_assi' +
        'stmedica, '
      
        '   :vag_cancelada,:vag_qtdecancel, :vag_Supervisor, :vag_FormSup' +
        'ervisor, '
      
        '  :vag_ExpSupervisor, :vag_CargSupervisor,:vag_AreaSupervisor,:V' +
        'ag_domingo,:Vag_horterini1, :Vag_horterfim1, :Vag_horterini2, :V' +
        'ag_horterfim2, :Vag_horquaini1, '
      
        '   :Vag_horquafim1, :Vag_horquaini2, :Vag_horquafim2, :Vag_horqu' +
        'iini1, :Vag_horquifim1, '
      
        '   :Vag_horquiini2, :Vag_horquifim2, :Vag_horsexini1, :Vag_horse' +
        'xfim1, :Vag_horsexini2, '
      
        '   :Vag_horsexfim2, :Vag_hordomini1, :Vag_hordomfim1, :Vag_hordo' +
        'mini2, :Vag_hordomfim2,'
      
        '  :vag_Interseg, :vag_Interter, :vag_Interqua, :vag_Interqui, :v' +
        'ag_Intersex,'
      '  :vag_Interdom,:vag_Intervalo,:vag_segunda,'
      ' :vag_terca,:vag_quarta,:vag_quinta,'
      
        ' :vag_sexta,:vag_sabado,:Vag_AuxTransp ,:Vag_AuxTransptexto,:Vag' +
        '_AuxTranspValor,:Vag_DataSolicitacao,'
      
        ':Vag_AuxAlim ,:Vag_AuxAlimTexto,:Vag_AuxAlimtipo,:Vag_AuxAlimVal' +
        'or,:Vag_AuxAlimAntecipa,'
      
        ':Vag_Tipo,:Vag_Escala,:sel_cod,:Area_cod,:Vag_Selecao,:Vag_Fecha' +
        'da,:Vag_resp,:Vag_DataEnc,:vag_acao,:vag_permanente,'
      
        ':vag_reqinterno,:vag_reqdivulgacao,:vag_dataprocesso,:vag_horapr' +
        'ocesso,:vag_bolsabeneficio)'
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'delete from Vaga'
      'where'
      '  Vag_cod = :OLD_Vag_cod')
    Left = 394
    Top = 425
  end
  object dsgrupo: TDataSource
    DataSet = qugrupo
    Left = 64
    Top = 93
  end
  object qugrupo: TQuery
    CachedUpdates = True
    OnCalcFields = qugrupoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from grupo')
    UpdateObject = usgrupo
    Left = 128
    Top = 93
    object qugrupoGrup_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Grup_cod'
      Origin = 'TALENTPOOL.grupo.Grup_cod'
    end
    object qugrupoGrup_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Grup_Nome'
      Origin = 'TALENTPOOL.grupo.Grup_Nome'
      Size = 70
    end
    object qugrupoGrup_Site: TStringField
      FieldName = 'Grup_Site'
      Origin = 'TALENTPOOL.grupo.Grup_Site'
      Visible = False
      Size = 60
    end
    object qugrupoGrup_pais: TStringField
      FieldName = 'Grup_pais'
      Origin = 'TALENTPOOL.grupo.Grup_pais'
      Size = 50
    end
    object qugrupoGrup_Nacionalidade: TStringField
      FieldName = 'Grup_Nacionalidade'
      Origin = 'TALENTPOOL.grupo.Grup_Nacionalidade'
      FixedChar = True
      Size = 1
    end
    object qugrupoGrup_filiais: TIntegerField
      DisplayLabel = 'N'#186' de Filiais'
      FieldName = 'Grup_filiais'
      Origin = 'TALENTPOOL.grupo.Grup_filiais'
    end
    object qugrupoGrup_Funcionarios: TIntegerField
      DisplayLabel = 'N'#186' Funcion'#225'rios'
      FieldName = 'Grup_Funcionarios'
      Origin = 'TALENTPOOL.grupo.Grup_Funcionarios'
    end
    object qugrupoGrup_Estagiarios: TIntegerField
      DisplayLabel = 'N'#186' Est'#225'giarios'
      FieldName = 'Grup_Estagiarios'
      Origin = 'TALENTPOOL.grupo.Grup_Estagiarios'
    end
    object qugrupoCalcFunc: TIntegerField
      DisplayLabel = 'N'#186' de Funcion'#225'rios'
      FieldKind = fkCalculated
      FieldName = 'CalcFunc'
      Calculated = True
    end
    object qugrupoCalcEstag: TIntegerField
      DisplayLabel = 'N'#186' de Estagi'#225'rios'
      FieldKind = fkCalculated
      FieldName = 'CalcEstag'
      Calculated = True
    end
    object qugrupoCalcfiliais: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Calcfiliais'
      Calculated = True
    end
  end
  object usgrupo: TUpdateSQL
    ModifySQL.Strings = (
      'update grupo'
      'set'
      '  Grup_Nome = :Grup_Nome,'
      '  Grup_Site = :Grup_Site,'
      '  Grup_Nacionalidade = :Grup_Nacionalidade,'
      '  Grup_Pais = :Grup_Pais,'
      '  Grup_Filiais = :Grup_Filiais,'
      '  Grup_Funcionarios = :Grup_Funcionarios,'
      '  Grup_Estagiarios = :Grup_Estagiarios'
      'where'
      '  Grup_Cod = :OLD_Grup_Cod')
    InsertSQL.Strings = (
      'insert into grupo'
      
        '  (Grup_Nome, Grup_Site, Grup_Nacionalidade, Grup_Pais, Grup_Fil' +
        'iais, Grup_Funcionarios, '
      '   Grup_Estagiarios)'
      'values'
      
        '  (:Grup_Nome, :Grup_Site, :Grup_Nacionalidade, :Grup_Pais, :Gru' +
        'p_Filiais, '
      '   :Grup_Funcionarios, :Grup_Estagiarios)')
    DeleteSQL.Strings = (
      'delete from grupo'
      'where'
      '  Grup_Cod = :OLD_Grup_Cod')
    Left = 192
    Top = 93
  end
  object dsResponsavel: TDataSource
    DataSet = quResponsavel
    Left = 64
    Top = 141
  end
  object quResponsavel: TQuery
    CachedUpdates = True
    OnCalcFields = quResponsavelCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     EmpResponsavel.*, EmpFuncionario.Efu_nome AS Nome'
      'FROM         EmpResponsavel INNER JOIN'
      
        '                    EmpFuncionario ON EmpResponsavel.Emp_cod = E' +
        'mpFuncionario.Emp_cod AND EmpResponsavel.Func_cod = EmpFuncionar' +
        'io.Func_cod'
      
        'and  EmpResponsavel.emp_cod =:empresa order by  EmpFuncionario.E' +
        'fu_nome'
      ', EmpResponsavel.Inicio desc')
    UpdateObject = usResponsavel
    Left = 128
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    object quResponsavelEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.EmpResponsavel.Emp_cod'
      Required = True
      Visible = False
    end
    object quResponsavelFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.EmpResponsavel.Func_cod'
      Required = True
      Visible = False
    end
    object quResponsavelNome: TStringField
      DisplayWidth = 79
      FieldName = 'Nome'
      Origin = 'TALENTPOOL.EmpFuncionario.Efu_nome'
      Visible = False
      Size = 50
    end
    object quResponsavelCod_Empresponsavel: TIntegerField
      FieldName = 'Cod_Empresponsavel'
      Origin = 'TALENTPOOL.EmpResponsavel.Cod_Empresponsavel'
      Visible = False
    end
    object quResponsavelfun_cod: TIntegerField
      FieldName = 'fun_cod'
      Origin = 'TALENTPOOL.EmpResponsavel.fun_cod'
      Visible = False
    end
    object quResponsavelInativo: TStringField
      DisplayWidth = 7
      FieldName = 'Inativo'
      Origin = 'TALENTPOOL.EmpResponsavel.Inativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quResponsavelFuncao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Funcao'
      Size = 60
      Calculated = True
    end
  end
  object usResponsavel: TUpdateSQL
    ModifySQL.Strings = (
      'update EmpResponsavel'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Func_cod = :Func_cod,'
      '  fun_cod = :fun_cod,'
      '  Inativo = :Inativo'
      'where'
      '  Cod_EmpResponsavel = :OLD_Cod_EmpResponsavel')
    InsertSQL.Strings = (
      'insert into EmpResponsavel'
      '  (Emp_cod, Func_cod, fun_cod, Inativo)'
      'values'
      '  (:Emp_cod, :Func_cod, :fun_cod, :Inativo)')
    DeleteSQL.Strings = (
      'delete from EmpResponsavel'
      'where'
      '  Cod_EmpResponsavel = :OLD_Cod_EmpResponsavel')
    Left = 192
    Top = 141
  end
  object estados: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_estados')
    Left = 1033
    Top = 317
  end
  object dsRestricao: TDataSource
    DataSet = QuRestricao
    Left = 64
    Top = 421
  end
  object QuRestricao: TQuery
    CachedUpdates = True
    OnCalcFields = quEmpresaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     EmpFuncRest.*, Instituicao.Inst_nome AS Nome '
      ' FROM     EmpFuncRest INNER JOIN '
      '  Instituicao ON Instituicao.Inst_cod = EmpFuncRest.Inst_cod ')
    UpdateObject = usRestricao
    Left = 128
    Top = 421
    object QuRestricaoNome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      DisplayWidth = 80
      FieldName = 'Nome'
      Origin = 'TALENTPOOL.Instituicao.Inst_nome'
      Size = 150
    end
    object QuRestricaoEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.EmpFuncRest.Emp_cod'
      Visible = False
    end
    object QuRestricaoFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.EmpFuncRest.Func_cod'
      Visible = False
    end
    object QuRestricaoInst_Cod: TIntegerField
      FieldName = 'Inst_Cod'
      Origin = 'TALENTPOOL.EmpFuncRest.Inst_Cod'
      Visible = False
    end
  end
  object usRestricao: TUpdateSQL
    ModifySQL.Strings = (
      'update EmpFuncRest'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Func_cod = :Func_cod,'
      '  Inst_Cod = :Inst_Cod'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Inst_Cod = :OLD_Inst_Cod')
    InsertSQL.Strings = (
      'insert into EmpFuncRest'
      '  (Emp_cod, Func_cod, Inst_Cod)'
      'values'
      '  (:Emp_cod, :Func_cod, :Inst_Cod)')
    DeleteSQL.Strings = (
      'delete from EmpFuncRest'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Inst_Cod = :OLD_Inst_Cod')
    Left = 192
    Top = 421
  end
  object dsSupervisorVaga: TDataSource
    DataSet = quSupervisorVaga
    Left = 480
    Top = 428
  end
  object quSupervisorVaga: TQuery
    CachedUpdates = True
    OnCalcFields = quSupervisorVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     *'
      'FROM         VagaSupervisor '
      'where  Vag_cod =:Vaga  ')
    UpdateObject = usSupervisorVaga
    Left = 544
    Top = 428
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Vaga'
        ParamType = ptInput
      end>
    object quSupervisorVagaNome: TStringField
      DisplayWidth = 67
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 67
      Calculated = True
    end
    object quSupervisorVagaEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.VagaSupervisor.Emp_cod'
      Visible = False
    end
    object quSupervisorVagaVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaSupervisor.Vag_cod'
    end
    object quSupervisorVagaFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.VagaSupervisor.Func_cod'
    end
    object quSupervisorVagaFormacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formacao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quSupervisorVagaArea: TStringField
      FieldKind = fkCalculated
      FieldName = 'Area'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quSupervisorVagaCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quSupervisorVagaTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quSupervisorVagaProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Profissao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quSupervisorVagaRestricoes: TStringField
      FieldKind = fkCalculated
      FieldName = 'Restricoes'
      Visible = False
      Size = 300
      Calculated = True
    end
  end
  object usSupervisorVaga: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaSupervisor'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Func_cod = :Func_cod,'
      '  Vag_cod = :Vag_cod'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Vag_cod = :OLD_Vag_cod')
    InsertSQL.Strings = (
      'insert into VagaSupervisor'
      '  (Emp_cod, Func_cod, Vag_cod)'
      'values'
      '  (:Emp_cod, :Func_cod, :Vag_cod)')
    DeleteSQL.Strings = (
      'delete from VagaSupervisor'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Vag_cod = :OLD_Vag_cod')
    Left = 616
    Top = 427
  end
  object dsEntrevistadorVaga: TDataSource
    DataSet = quEntrevistadorVaga
    Left = 480
    Top = 676
  end
  object quEntrevistadorVaga: TQuery
    CachedUpdates = True
    OnCalcFields = quEntrevistadorVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     *'
      'FROM         Vagaentrevistador '
      'where  Vag_cod =:Vaga  ')
    UpdateObject = usEntrevistadorVaga
    Left = 544
    Top = 676
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Vaga'
        ParamType = ptInput
      end>
    object quEntrevistadorVagaNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 60
      Calculated = True
    end
    object quEntrevistadorVagaEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.Vagaentrevistador.Emp_cod'
      Visible = False
    end
    object quEntrevistadorVagaFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.Vagaentrevistador.Func_cod'
      Visible = False
    end
    object quEntrevistadorVagaVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.Vagaentrevistador.Vag_cod'
      Visible = False
    end
    object quEntrevistadorVagaCargo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cargo'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quEntrevistadorVagaArea: TStringField
      FieldKind = fkCalculated
      FieldName = 'Area'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quEntrevistadorVagaTempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tempo'
      Visible = False
      Size = 40
      Calculated = True
    end
    object quEntrevistadorVagaFormacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Formacao'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quEntrevistadorVagaProfissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Profissao'
      Visible = False
      Size = 60
      Calculated = True
    end
  end
  object usEntrevistadorVaga: TUpdateSQL
    ModifySQL.Strings = (
      'update Vagaentrevistador'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  Func_cod = :Func_cod,'
      '  Vag_cod = :Vag_cod'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Vag_cod = :OLD_Vag_cod')
    InsertSQL.Strings = (
      'insert into Vagaentrevistador'
      '  (Emp_cod, Func_cod, Vag_cod)'
      'values'
      '  (:Emp_cod, :Func_cod, :Vag_cod)')
    DeleteSQL.Strings = (
      'delete from Vagaentrevistador'
      'where'
      '  Emp_cod = :OLD_Emp_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Vag_cod = :OLD_Vag_cod')
    Left = 616
    Top = 675
  end
  object dsVagaBeneficio: TDataSource
    DataSet = quVagaBeneficio
    Left = 904
    Top = 684
  end
  object quVagaBeneficio: TQuery
    CachedUpdates = True
    AfterInsert = quVagaBeneficioAfterInsert
    OnCalcFields = quEntrevistadorVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     *'
      'FROM         VagaBeneficio  '
      'where  Vag_cod =:Vaga  ')
    UpdateObject = usvagaBeneficio
    Left = 968
    Top = 684
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Vaga'
        ParamType = ptInput
      end>
    object quVagaBeneficioVBN_nome: TStringField
      DisplayLabel = 'Benef'#237'cio'
      DisplayWidth = 111
      FieldName = 'VBN_nome'
      Origin = 'TALENTPOOL.VagaBeneficio.VBN_nome'
      Size = 60
    end
    object quVagaBeneficioVbn_Cod: TIntegerField
      FieldName = 'Vbn_Cod'
      Origin = 'TALENTPOOL.VagaBeneficio.Vbn_Cod'
      Visible = False
    end
    object quVagaBeneficioEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.VagaBeneficio.Emp_cod'
      Visible = False
    end
    object quVagaBeneficioVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaBeneficio.Vag_cod'
      Visible = False
    end
  end
  object usvagaBeneficio: TUpdateSQL
    ModifySQL.Strings = (
      'update VagaBeneficio'
      'set'
      '  Emp_cod = :Emp_cod,'
      '  VBN_nome = :VBN_nome,'
      '  Vag_cod = :Vag_cod'
      'where'
      '  Vbn_Cod = :OLD_Vbn_Cod')
    InsertSQL.Strings = (
      'insert into VagaBeneficio'
      '  (Emp_cod, VBN_nome, Vag_cod)'
      'values'
      '  (:Emp_cod, :VBN_nome, :Vag_cod)')
    DeleteSQL.Strings = (
      'delete from VagaBeneficio'
      'where'
      '  Vbn_Cod = :OLD_Vbn_Cod')
    Left = 1040
    Top = 683
  end
  object dsQuestionario: TDataSource
    DataSet = quQuestionario
    Left = 696
    Top = 42
  end
  object quQuestionario: TQuery
    CachedUpdates = True
    OnCalcFields = qugrupoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from questionario nolock')
    UpdateObject = usquestionario
    Left = 760
    Top = 42
    object quQuestionarioquest_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'quest_cod'
      Origin = 'TALENTPOOL.questionario.quest_cod'
    end
    object quQuestionarioQuest_Descricao: TStringField
      DisplayLabel = 'Titulo'
      FieldName = 'Quest_Descricao'
      Origin = 'TALENTPOOL.questionario.Quest_Descricao'
      Size = 150
    end
  end
  object usquestionario: TUpdateSQL
    ModifySQL.Strings = (
      'update questionario'
      'set'
      '  Quest_Descricao = :Quest_Descricao'
      'where'
      '  quest_cod = :OLD_quest_cod')
    InsertSQL.Strings = (
      'insert into questionario'
      '  (Quest_Descricao)'
      'values'
      '  (:Quest_Descricao)')
    DeleteSQL.Strings = (
      'delete from questionario'
      'where'
      '  quest_cod = :OLD_quest_cod')
    Left = 824
    Top = 42
  end
  object dsPerguntas: TDataSource
    AutoEdit = False
    DataSet = quPerguntas
    Left = 696
    Top = 2
  end
  object quPerguntas: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select * from perguntas nolock where quest_cod=:questionario ord' +
        'er by '
      'perg_ord')
    UpdateObject = usperguntas
    Left = 760
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'questionario'
        ParamType = ptInput
      end>
    object quPerguntasPerg_ord: TIntegerField
      DisplayLabel = 'Ord.'
      FieldName = 'Perg_ord'
      Origin = 'TALENTPOOL.perguntas.Perg_ord'
    end
    object quPerguntasTipoResposta2: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TipoResposta'
      Origin = 'TALENTPOOL.perguntas.TipoResposta'
      FixedChar = True
      Size = 1
    end
    object quPerguntasTextoPergunta: TStringField
      DisplayLabel = 'Pergunta'
      DisplayWidth = 85
      FieldKind = fkCalculated
      FieldName = 'TextoPergunta'
      Size = 100
      Calculated = True
    end
    object quPerguntasQuest_cod: TIntegerField
      FieldName = 'Quest_cod'
      Origin = 'TALENTPOOL.perguntas.Quest_cod'
      Visible = False
    end
    object quPerguntasPerg_cod: TIntegerField
      FieldName = 'Perg_cod'
      Origin = 'TALENTPOOL.perguntas.Perg_cod'
      Visible = False
    end
    object quPerguntasOpcaoA: TMemoField
      FieldName = 'OpcaoA'
      Origin = 'TALENTPOOL.perguntas.Numerada'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasOpcaoB: TMemoField
      FieldName = 'OpcaoB'
      Origin = 'TALENTPOOL.perguntas.Logica'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasOpcaoC: TMemoField
      FieldName = 'OpcaoC'
      Origin = 'TALENTPOOL.perguntas.Descritiva'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasOpcaoD: TMemoField
      FieldName = 'OpcaoD'
      Origin = 'TALENTPOOL.perguntas.MultiplaEscolha'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasOpcaoE: TMemoField
      FieldName = 'OpcaoE'
      Origin = 'TALENTPOOL.perguntas.OpcaoA'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasOpcaoF: TMemoField
      FieldName = 'OpcaoF'
      Origin = 'TALENTPOOL.perguntas.OpcaoB'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'TALENTPOOL.perguntas.OpcaoC'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object quPerguntasPergunta: TMemoField
      FieldName = 'Pergunta'
      Origin = 'TALENTPOOL.perguntas.Pergunta'
      BlobType = ftMemo
      Size = 1
    end
  end
  object usperguntas: TUpdateSQL
    ModifySQL.Strings = (
      'update perguntas'
      'set'
      '  Quest_cod = :Quest_cod,'
      '  Perg_ord = :Perg_ord,'
      '  TipoResposta = :TipoResposta,'
      '  Pergunta = :Pergunta,'
      '  OpcaoA = :OpcaoA,'
      '  OpcaoB = :OpcaoB,'
      '  OpcaoC = :OpcaoC,'
      '  OpcaoD = :OpcaoD,'
      '  OpcaoE = :OpcaoE,'
      '  OpcaoF = :OpcaoF,'
      '  Observacao = :Observacao'
      'where'
      '  Quest_cod = :OLD_Quest_cod and'
      '  Perg_cod = :OLD_Perg_cod and'
      '  Perg_ord = :OLD_Perg_ord')
    InsertSQL.Strings = (
      'insert into perguntas'
      
        '  (Quest_cod, Perg_ord, TipoResposta, Pergunta, OpcaoA, OpcaoB, ' +
        'OpcaoC, '
      '   OpcaoD, OpcaoE, OpcaoF, Observacao)'
      'values'
      
        '  (:Quest_cod, :Perg_ord, :TipoResposta, :Pergunta, :OpcaoA, :Op' +
        'caoB, :OpcaoC, '
      '   :OpcaoD, :OpcaoE, :OpcaoF, :Observacao)')
    DeleteSQL.Strings = (
      'delete from perguntas'
      'where'
      '  Quest_cod = :OLD_Quest_cod and'
      '  Perg_cod = :OLD_Perg_cod and'
      '  Perg_ord = :OLD_Perg_ord')
    Left = 824
    Top = 2
  end
  object dsinstCoordenador2: TDataSource
    DataSet = quinstCoordenador2
    Left = 696
    Top = 497
  end
  object quinstCoordenador2: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT    InstCoordenador2 .*, Curso.cur_nome Curso'
      'FROM         InstCoordenador2 '
      
        'INNER JOIN   InstCurso ON InstCoordenador2.inst_cod = InstCurso.' +
        'Inst_cod '
      'INNER JOIN   Curso ON InstCurso.Cur_cod = Curso.cur_cod')
    UpdateObject = usinstCoordenador2
    Left = 760
    Top = 497
    object quinstCoordenador2inst_cod: TIntegerField
      FieldName = 'inst_cod'
      Visible = False
    end
    object quinstCoordenador2Func_cod: TIntegerField
      FieldName = 'Func_cod'
      Visible = False
    end
    object quinstCoordenador2Cur_cod: TIntegerField
      DisplayLabel = 'C'#243'd Curso'
      DisplayWidth = 12
      FieldName = 'Cur_cod'
    end
    object quinstCoordenador2Ativo: TStringField
      FieldName = 'Ativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quinstCoordenador2Curso: TStringField
      DisplayWidth = 75
      FieldName = 'Curso'
      Size = 150
    end
  end
  object usinstCoordenador2: TUpdateSQL
    ModifySQL.Strings = (
      'update InstCoordenador2'
      'set'
      '  inst_cod = :inst_cod,'
      '  Func_cod = :Func_cod,'
      '  Cur_cod = :Cur_cod,'
      '  Ativo = :Ativo'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    InsertSQL.Strings = (
      'insert into InstCoordenador2'
      '  (inst_cod, Func_cod, Cur_cod, Ativo)'
      'values'
      '  (:inst_cod, :Func_cod, :Cur_cod, :Ativo)')
    DeleteSQL.Strings = (
      'delete from InstCoordenador2'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    Left = 826
    Top = 497
  end
  object dsContatos: TDataSource
    DataSet = quContatos
    Left = 696
    Top = 232
  end
  object quContatos: TQuery
    CachedUpdates = True
    AfterInsert = quContatosAfterInsert
    BeforePost = quContatosBeforePost
    BeforeDelete = quContatosBeforeDelete
    OnCalcFields = quContatosCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select top 10  * from estContato '
      'WHERE EST_COD=:ESTUDANTE order by  Dat_contato desc')
    UpdateObject = usContatos
    Left = 760
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ESTUDANTE'
        ParamType = ptInput
      end>
    object quContatosDat_Contato: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 16
      FieldName = 'Dat_Contato'
      Origin = 'TALENTPOOL.estContato.Dat_Contato'
    end
    object quContatosVag_cod: TIntegerField
      DisplayLabel = 'Vaga'
      DisplayWidth = 6
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.estContato.Vag_cod'
      Visible = False
    end
    object quContatosEmpresa: TStringField
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'Empresa'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quContatosNumeroLigacoes: TIntegerField
      DisplayLabel = 'N. Lig.'
      DisplayWidth = 10
      FieldName = 'NumeroLigacoes'
      Origin = 'TALENTPOOL.estContato.est_cod'
    end
    object quContatosVaga: TStringField
      DisplayWidth = 96
      FieldKind = fkCalculated
      FieldName = 'Vaga'
      Visible = False
      Size = 80
      Calculated = True
    end
    object quContatosAtendente: TStringField
      DisplayWidth = 72
      FieldKind = fkCalculated
      FieldName = 'Atendente'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quContatosMelhorDia: TStringField
      DisplayWidth = 120
      FieldName = 'MelhorDia'
      Origin = 'TALENTPOOL.estContato.RecadoCom'
      Visible = False
      Size = 100
    end
    object quContatosCont_cod: TIntegerField
      FieldName = 'Cont_cod'
      Origin = 'TALENTPOOL.estContato.est_cod'
      Visible = False
    end
    object quContatosFunc_alterou: TIntegerField
      FieldName = 'Func_alterou'
      Origin = 'TALENTPOOL.estContato.est_cod'
      Visible = False
    end
    object quContatosDat_alterou: TDateTimeField
      FieldName = 'Dat_alterou'
      Origin = 'TALENTPOOL.estContato.est_cod'
      Visible = False
    end
    object quContatosAtendenteAlterou: TStringField
      FieldKind = fkCalculated
      FieldName = 'AtendenteAlterou'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quContatosEstudante: TStringField
      FieldKind = fkCalculated
      FieldName = 'Estudante'
      Visible = False
      Size = 60
      Calculated = True
    end
    object quContatosest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object quContatosEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Visible = False
    end
    object quContatosfunc_cod: TIntegerField
      FieldName = 'func_cod'
      Visible = False
    end
    object quContatosRecadoCom: TStringField
      FieldName = 'RecadoCom'
      Visible = False
      Size = 100
    end
    object quContatosValoMinimo: TFloatField
      FieldName = 'ValoMinimo'
      Visible = False
      currency = True
    end
    object quContatosMotivoInativo: TStringField
      FieldName = 'MotivoInativo'
      Visible = False
      Size = 100
    end
    object quContatosPrevisaoRetorno: TStringField
      FieldName = 'PrevisaoRetorno'
      Visible = False
      Size = 100
    end
    object quContatosTextoOutros: TStringField
      FieldName = 'TextoOutros'
      Visible = False
      Size = 100
    end
    object quContatosObservacoes: TStringField
      FieldName = 'Observacoes'
      Visible = False
      Size = 200
    end
    object quContatosStatus: TIntegerField
      DisplayWidth = 12
      FieldName = 'Status'
      Visible = False
    end
    object quContatosSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 70
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 40
      Calculated = True
    end
  end
  object usContatos: TUpdateSQL
    ModifySQL.Strings = (
      'update estContato'
      'set'
      '  est_cod = :est_cod,'
      '  Vag_cod = :Vag_cod,'
      '  Emp_cod = :Emp_cod,'
      '  func_cod = :func_cod,'
      '  Dat_Contato = :Dat_Contato,'
      '  MelhorDia = :MelhorDia,'
      '  RecadoCom = :RecadoCom,'
      '  ValoMinimo = :ValoMinimo,'
      '  MotivoInativo = :MotivoInativo,'
      '  PrevisaoRetorno = :PrevisaoRetorno,'
      '  TextoOutros = :TextoOutros,'
      '  Observacoes = :Observacoes,'
      '  NumeroLigacoes = :NumeroLigacoes,'
      '  Func_alterou = :Func_alterou,'
      '  Dat_alterou = :Dat_alterou,'
      '  Status = :Status'
      'where'
      '  Cont_cod = :OLD_Cont_cod')
    InsertSQL.Strings = (
      'insert into estContato'
      
        '  (est_cod, Vag_cod, Emp_cod, func_cod, Dat_Contato, MelhorDia, ' +
        'RecadoCom, '
      
        '   ValoMinimo, MotivoInativo, PrevisaoRetorno, TextoOutros, Obse' +
        'rvacoes, '
      '   NumeroLigacoes, Func_alterou, Dat_alterou, Status)'
      'values'
      
        '  (:est_cod, :Vag_cod, :Emp_cod, :func_cod, :Dat_Contato, :Melho' +
        'rDia, :RecadoCom, '
      
        '   :ValoMinimo, :MotivoInativo, :PrevisaoRetorno, :TextoOutros, ' +
        ':Observacoes, '
      '   :NumeroLigacoes, :Func_alterou, :Dat_alterou, :Status)')
    DeleteSQL.Strings = (
      'delete from estContato'
      'where'
      '  Cont_cod = :OLD_Cont_cod')
    Left = 824
    Top = 232
  end
  object dsfuncgrupo: TDataSource
    DataSet = qufuncGrupo
    Left = 696
    Top = 354
  end
  object qufuncGrupo: TQuery
    CachedUpdates = True
    OnCalcFields = qufuncGrupoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from empfuncgrupo nolock')
    UpdateObject = upfuncgrupo
    Left = 760
    Top = 354
    object qufuncGrupoEmp_Cod: TIntegerField
      FieldName = 'Emp_Cod'
      Origin = 'TALENTPOOL.empfuncgrupo.Emp_Cod'
      Visible = False
    end
    object qufuncGrupoFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.empfuncgrupo.Func_cod'
      Visible = False
    end
    object qufuncGrupoEmp_Cod2: TIntegerField
      DisplayLabel = 'Cod. Empresa'
      FieldName = 'Emp_Cod2'
      Origin = 'TALENTPOOL.empfuncgrupo.Emp_Cod2'
    end
    object qufuncGrupoFilial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Size = 60
      Calculated = True
    end
  end
  object upfuncgrupo: TUpdateSQL
    ModifySQL.Strings = (
      'update empfuncgrupo'
      'set'
      '  Emp_Cod = :Emp_Cod,'
      '  Func_cod = :Func_cod,'
      '  Emp_Cod2 = :Emp_Cod2'
      'where'
      '  Emp_Cod = :OLD_Emp_Cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Emp_Cod2 = :OLD_Emp_Cod2')
    InsertSQL.Strings = (
      'insert into empfuncgrupo'
      '  (Emp_Cod, Func_cod, Emp_Cod2)'
      'values'
      '  (:Emp_Cod, :Func_cod, :Emp_Cod2)')
    DeleteSQL.Strings = (
      'delete from empfuncgrupo'
      'where'
      '  Emp_Cod = :OLD_Emp_Cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Emp_Cod2 = :OLD_Emp_Cod2')
    Left = 824
    Top = 354
  end
  object usInstFuncao: TUpdateSQL
    ModifySQL.Strings = (
      'update InstFuncao'
      'set'
      '  Fun_Nome = :Fun_Nome,'
      '  Fun_Descricao = :Fun_Descricao,'
      '  Fun_unica = :Fun_unica'
      'where'
      '  Fun_Cod = :OLD_Fun_Cod')
    InsertSQL.Strings = (
      'insert into InstFuncao'
      '  (Fun_Nome, Fun_Descricao, Fun_unica)'
      'values'
      '  (:Fun_Nome, :Fun_Descricao, :Fun_unica)')
    DeleteSQL.Strings = (
      'delete from InstFuncao'
      'where'
      '  Fun_Cod = :OLD_Fun_Cod')
    Left = 1224
    Top = 710
  end
  object quInstFuncao: TQuery
    CachedUpdates = True
    BeforePost = quRequisitoBeforePost
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from InstFuncao order by Fun_nome')
    UpdateObject = usInstFuncao
    Left = 1168
    Top = 710
    object quInstFuncaoFun_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Fun_Cod'
      Origin = 'TALENTPOOL.InstFuncao.Fun_Cod'
    end
    object quInstFuncaoFun_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Fun_Nome'
      Origin = 'TALENTPOOL.InstFuncao.Fun_Nome'
      Size = 60
    end
    object quInstFuncaoFun_Descricao: TStringField
      FieldName = 'Fun_Descricao'
      Origin = 'TALENTPOOL.InstFuncao.Fun_Descricao'
      Visible = False
      Size = 200
    end
    object quInstFuncaoFun_unica: TStringField
      FieldName = 'Fun_unica'
      Origin = 'TALENTPOOL.InstFuncao.Fun_Cod'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsInstFuncao: TDataSource
    DataSet = quInstFuncao
    Left = 1112
    Top = 710
  end
  object dsEmpfuncao: TDataSource
    DataSet = quEmpFuncao
    Left = 1112
    Top = 667
  end
  object quEmpFuncao: TQuery
    CachedUpdates = True
    BeforePost = quRequisitoBeforePost
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from EmpFuncao order by Fun_nome')
    UpdateObject = UsEmpFuncao
    Left = 1168
    Top = 667
    object quEmpFuncaoFun_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Fun_Cod'
      Origin = 'TALENTPOOL.EmpFuncao.Fun_Cod'
    end
    object quEmpFuncaoFun_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Fun_Nome'
      Origin = 'TALENTPOOL.EmpFuncao.Fun_Nome'
      Size = 60
    end
    object quEmpFuncaoFun_Descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Fun_Descricao'
      Origin = 'TALENTPOOL.EmpFuncao.Fun_Descricao'
      Visible = False
      Size = 200
    end
    object quEmpFuncaoFun_unica: TStringField
      DisplayLabel = 'Fun'#231#227'o '#218'nica'
      FieldName = 'Fun_unica'
      Origin = 'TALENTPOOL.EmpFuncao.Fun_Cod'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UsEmpFuncao: TUpdateSQL
    ModifySQL.Strings = (
      'update EmpFuncao'
      'set'
      '  Fun_Nome = :Fun_Nome,'
      '  Fun_Descricao = :Fun_Descricao,'
      '  Fun_unica = :Fun_unica'
      'where'
      '  Fun_Cod = :OLD_Fun_Cod')
    InsertSQL.Strings = (
      'insert into EmpFuncao'
      '  (Fun_Nome, Fun_Descricao, Fun_unica)'
      'values'
      '  (:Fun_Nome, :Fun_Descricao, :Fun_unica)')
    DeleteSQL.Strings = (
      'delete from EmpFuncao'
      'where'
      '  Fun_Cod = :OLD_Fun_Cod')
    Left = 1224
    Top = 667
  end
  object usResponsavelInstituicao: TUpdateSQL
    ModifySQL.Strings = (
      'update InstResponsavel'
      'set'
      '  Inst_cod = :Inst_cod,'
      '  Func_cod = :Func_cod,'
      '  fun_cod = :fun_cod,'
      '  inativo = :inativo'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  fun_cod = :OLD_fun_cod')
    InsertSQL.Strings = (
      'insert into InstResponsavel'
      '  (Inst_cod, Func_cod, fun_cod, inativo)'
      'values'
      '  (:Inst_cod, :Func_cod, :fun_cod, :inativo)')
    DeleteSQL.Strings = (
      'delete from InstResponsavel'
      'where'
      '  Inst_cod = :OLD_Inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  fun_cod = :OLD_fun_cod')
    Left = 1232
    Top = 626
  end
  object quResponsavelInstituicao: TQuery
    CachedUpdates = True
    OnCalcFields = quResponsavelInstituicaoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT     InstResponsavel .*, InstFuncionario.Ifu_nome AS Nome'
      'FROM         InstResponsavel '
      'INNER JOIN'
      
        '                    InstFuncionario ON InstResponsavel.Inst_cod ' +
        '= InstFuncionario.Inst_cod AND '
      
        '                  InstResponsavel.Func_cod = InstFuncionario.Fun' +
        'c_cod'
      
        'and  InstResponsavel.Inst_cod =:Instituicao order by  InstFuncio' +
        'nario.Ifu_nome')
    UpdateObject = usResponsavelInstituicao
    Left = 1176
    Top = 626
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Instituicao'
        ParamType = ptInput
      end>
    object quResponsavelInstituicaoInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.InstResponsavel.Inst_cod'
      Visible = False
    end
    object quResponsavelInstituicaoFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.InstResponsavel.Func_cod'
      Visible = False
    end
    object quResponsavelInstituicaofun_cod: TIntegerField
      FieldName = 'fun_cod'
      Origin = 'TALENTPOOL.InstResponsavel.fun_cod'
      Visible = False
    end
    object quResponsavelInstituicaoinativo: TStringField
      FieldName = 'inativo'
      Origin = 'TALENTPOOL.InstResponsavel.inativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quResponsavelInstituicaoNome: TStringField
      FieldName = 'Nome'
      Origin = 'TALENTPOOL.InstFuncionario.Ifu_nome'
      Visible = False
      Size = 50
    end
    object quResponsavelInstituicaonfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'nfuncao'
      Size = 60
      Calculated = True
    end
  end
  object dsResponsavelInstituicao: TDataSource
    AutoEdit = False
    DataSet = quResponsavelInstituicao
    Left = 1112
    Top = 626
  end
  object usEncaminhamento: TUpdateSQL
    ModifySQL.Strings = (
      'update Encaminhamento'
      'set'
      '  Vag_cod = :Vag_cod,'
      '  Est_cod = :Est_cod,'
      '  Eva_dataenc = :Eva_dataenc,'
      '  Eva_datares = :Eva_datares,'
      '  Eva_resultado = :Eva_resultado,'
      '  Eva_observacao = :Eva_observacao,'
      '  Eva_agedata = :Eva_agedata,'
      '  func_cod = :func_cod,'
      '  Eva_dataret = :Eva_dataret,'
      '  enderecoenc = :enderecoenc,'
      '  bairroenc = :bairroenc,'
      '  cidadeenc = :cidadeenc,'
      '  estadoenc = :estadoenc,'
      '  telefoneenc = :telefoneenc,'
      '  numendenc = :numendenc,'
      '  cjtoendenc = :cjtoendenc'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Est_cod = :OLD_Est_cod')
    InsertSQL.Strings = (
      'insert into Encaminhamento'
      
        '  (Vag_cod, Est_cod, Eva_dataenc, Eva_datares, Eva_resultado, Ev' +
        'a_observacao, '
      
        '   Eva_agedata, func_cod, Eva_dataret, enderecoenc, bairroenc, c' +
        'idadeenc, '
      '   estadoenc, telefoneenc, numendenc, cjtoendenc)'
      'values'
      
        '  (:Vag_cod, :Est_cod, :Eva_dataenc, :Eva_datares, :Eva_resultad' +
        'o, :Eva_observacao, '
      
        '   :Eva_agedata, :func_cod, :Eva_dataret, :enderecoenc, :bairroe' +
        'nc, :cidadeenc, '
      '   :estadoenc, :telefoneenc, :numendenc, :cjtoendenc)')
    DeleteSQL.Strings = (
      'delete from Encaminhamento'
      'where'
      '  Vag_cod = :OLD_Vag_cod and'
      '  Est_cod = :OLD_Est_cod')
    Left = 616
    Top = 189
  end
  object quEncaminhamento: TQuery
    CachedUpdates = True
    OnCalcFields = quEncaminhamentoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      
        '  E.*, I.inst_cod, I.inst_nome, C.cur_cod, C.cur_nome, T.est_ema' +
        'il,'
      
        '  T.est_fone1, T.est_fone2, T.est_nome, T.pcu_turno, T.pcu_anoat' +
        'ual, T.pcu_peratual,'
      '  F.func_nome'
      'from'
      
        '  Encaminhamento E, Estudante T, Instituicao I, Curso C, Funcion' +
        'ario F'
      'where'
      '  E.est_cod   = T.est_cod  and'
      '  E.vag_cod   = :vag_cod   and'
      '  T.inst_cod  = I.inst_Cod and'
      '  T.cur_Cod   = C.cur_cod  and'
      '  E.func_cod *= F.func_cod'
      ' order by'
      '  t.est_nome')
    UpdateObject = usEncaminhamento
    Left = 547
    Top = 189
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quEncaminhamentoVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.Encaminhamento.Vag_cod'
      Visible = False
    end
    object quEncaminhamentoEst_cod: TIntegerField
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.Encaminhamento.Est_cod'
      Visible = False
    end
    object quEncaminhamentoest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 49
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL.Encaminhamento.est_nome'
      Size = 50
    end
    object quEncaminhamentoinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.Encaminhamento.inst_cod'
      Visible = False
    end
    object quEncaminhamentoinst_nome: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.Encaminhamento.inst_nome'
      Visible = False
      Size = 150
    end
    object quEncaminhamentocur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.Encaminhamento.cur_cod'
      Visible = False
    end
    object quEncaminhamentocur_nome: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Encaminhamento.cur_nome'
      Visible = False
      Size = 150
    end
    object quEncaminhamentopcu_anoatual: TIntegerField
      FieldName = 'pcu_anoatual'
      Origin = 'TALENTPOOL.Encaminhamento.pcu_anoatual'
      Visible = False
    end
    object quEncaminhamentopcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      Origin = 'TALENTPOOL.Encaminhamento.pcu_peratual'
      Visible = False
      Size = 1
    end
    object quEncaminhamentoEva_dataenc: TDateTimeField
      DisplayLabel = 'Encaminhamento'
      DisplayWidth = 14
      FieldName = 'Eva_dataenc'
      Origin = 'TALENTPOOL.Encaminhamento.Eva_dataenc'
    end
    object quEncaminhamentoEva_datares: TDateTimeField
      FieldName = 'Eva_datares'
      Origin = 'TALENTPOOL.Encaminhamento.Eva_datares'
      Visible = False
    end
    object quEncaminhamentoEva_resultado: TStringField
      FieldName = 'Eva_resultado'
      Origin = 'TALENTPOOL.Encaminhamento.Eva_resultado'
      Visible = False
      Size = 1
    end
    object quEncaminhamentoResultado: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      Calculated = True
    end
    object quEncaminhamentoEva_observacao: TStringField
      FieldName = 'Eva_observacao'
      Origin = 'TALENTPOOL.Encaminhamento.Eva_observacao'
      Visible = False
      Size = 250
    end
    object quEncaminhamentoDescPeriodo: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescPeriodo'
      Visible = False
      Size = 10
      Calculated = True
    end
    object quEncaminhamentoeva_agedata: TDateTimeField
      FieldName = 'eva_agedata'
      Origin = 'TALENTPOOL.Encaminhamento.eva_agedata'
      Visible = False
    end
    object quEncaminhamentoest_email: TStringField
      FieldName = 'est_email'
      Visible = False
      Size = 50
    end
    object quEncaminhamentofunc_cod: TIntegerField
      FieldName = 'func_cod'
      Visible = False
    end
    object quEncaminhamentoest_fone1: TStringField
      FieldName = 'est_fone1'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEncaminhamentoest_fone2: TStringField
      FieldName = 'est_fone2'
      Visible = False
      EditMask = '(99) 9999-9999;0; '
      Size = 15
    end
    object quEncaminhamentopcu_turno: TStringField
      FieldName = 'pcu_turno'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object quEncaminhamentoComplemento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Complemento'
      Visible = False
      Size = 50
      Calculated = True
    end
    object quEncaminhamentofunc_nome: TStringField
      FieldName = 'func_nome'
      Size = 50
    end
    object quEncaminhamentoEva_dataret: TDateTimeField
      FieldName = 'Eva_dataret'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quEncaminhamentoenderecoenc: TStringField
      FieldName = 'enderecoenc'
      Size = 50
    end
    object quEncaminhamentobairroenc: TStringField
      FieldName = 'bairroenc'
      Size = 50
    end
    object quEncaminhamentocidadeenc: TStringField
      FieldName = 'cidadeenc'
      Size = 50
    end
    object quEncaminhamentoestadoenc: TStringField
      FieldName = 'estadoenc'
      FixedChar = True
      Size = 2
    end
    object quEncaminhamentotelefoneenc: TStringField
      FieldName = 'telefoneenc'
      Size = 10
    end
    object quEncaminhamentonumendenc: TStringField
      DisplayWidth = 8
      FieldName = 'numendenc'
      Size = 8
    end
    object quEncaminhamentocjtoendenc: TStringField
      FieldName = 'cjtoendenc'
      Size = 10
    end
  end
  object dsEncaminhamento: TDataSource
    DataSet = quEncaminhamento
    Left = 480
    Top = 189
  end
  object dsEstContVaga: TDataSource
    AutoEdit = False
    DataSet = quEstContVaga
    Left = 698
    Top = 291
  end
  object quEstContVaga: TQuery
    CachedUpdates = True
    OnCalcFields = quEstContVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from EstContVaga  where Cont_cod=:Contato ')
    UpdateObject = upEstContVaga
    Left = 764
    Top = 291
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contato'
        ParamType = ptInput
      end>
    object quEstContVagaEstContVaga_cod: TIntegerField
      DisplayLabel = 'C'#243'd'
      DisplayWidth = 5
      FieldName = 'EstContVaga_cod'
      Origin = 'TALENTPOOL.EstContVaga.EstContVaga_cod'
    end
    object quEstContVagaCont_cod: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'Cont_cod'
      Origin = 'TALENTPOOL.EstContVaga.Cont_cod'
      Visible = False
    end
    object quEstContVagaVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.EstContVaga.Vag_cod'
      Visible = False
    end
    object quEstContVagaEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.EstContVaga.Emp_cod'
      Visible = False
    end
    object quEstContVagaEmpresa: TStringField
      DisplayWidth = 35
      FieldKind = fkCalculated
      FieldName = 'Empresa'
      Size = 60
      Calculated = True
    end
    object quEstContVagaVaga: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Vaga'
      Size = 60
      Calculated = True
    end
  end
  object upEstContVaga: TUpdateSQL
    ModifySQL.Strings = (
      'update EstContVaga'
      'set'
      '  Cont_cod = :Cont_cod,'
      '  Vag_cod = :Vag_cod,'
      '  Emp_cod = :Emp_cod'
      'where'
      '  EstContVaga_cod = :OLD_EstContVaga_cod')
    InsertSQL.Strings = (
      'insert into EstContVaga'
      '  (Cont_cod, Vag_cod, Emp_cod)'
      'values'
      '  (:Cont_cod, :Vag_cod, :Emp_cod)')
    DeleteSQL.Strings = (
      'delete from EstContVaga'
      'where'
      '  EstContVaga_cod = :OLD_EstContVaga_cod')
    Left = 825
    Top = 291
  end
  object dsTalAtividade: TDataSource
    DataSet = quTalAtividade
    Left = 483
    Top = 569
  end
  object quTalAtividade: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  * '
      'from'
      '  TalAtividade'
      'where'
      '  Tce_cod = :Tce_cod and'
      '   Tal_cod=:Tal_cod')
    UpdateObject = usTalAtividade
    Left = 550
    Top = 569
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Tce_cod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Tal_cod'
        ParamType = ptInput
      end>
    object quTalAtividadetce_cod: TIntegerField
      FieldName = 'tce_cod'
      Origin = 'TALENTPOOL.TalAtividade.tce_cod'
      Visible = False
    end
    object quTalAtividadetal_cod: TIntegerField
      FieldName = 'tal_cod'
      Origin = 'TALENTPOOL.TalAtividade.tal_cod'
      Visible = False
    end
    object quTalAtividadeati_talcod: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 12
      FieldName = 'ati_talcod'
      Origin = 'TALENTPOOL.TalAtividade.ati_talcod'
    end
    object quTalAtividadeAti_talnome: TStringField
      DisplayLabel = 'Atividade'
      FieldName = 'Ati_talnome'
      Origin = 'TALENTPOOL.TalAtividade.Ati_talnome'
      Size = 200
    end
  end
  object usTalAtividade: TUpdateSQL
    ModifySQL.Strings = (
      'update TalAtividade'
      'set'
      '  tce_cod = :tce_cod,'
      '  tal_cod = :tal_cod,'
      '  ati_talcod = :ati_talcod,'
      '  Ati_talnome = :Ati_talnome'
      'where'
      '  tce_cod = :OLD_tce_cod and'
      '  tal_cod = :OLD_tal_cod and'
      '  ati_talcod = :OLD_ati_talcod')
    InsertSQL.Strings = (
      'insert into TalAtividade'
      '  (tce_cod, tal_cod, ati_talcod, Ati_talnome)'
      'values'
      '  (:tce_cod, :tal_cod, :ati_talcod, :Ati_talnome)')
    DeleteSQL.Strings = (
      'delete from TalAtividade'
      'where'
      '  tce_cod = :OLD_tce_cod and'
      '  tal_cod = :OLD_tal_cod and'
      '  ati_talcod = :OLD_ati_talcod')
    Left = 619
    Top = 577
  end
  object dsInstOrientador: TDataSource
    DataSet = quInstOrientador
    Left = 8
    Top = 54
  end
  object quInstOrientador: TQuery
    CachedUpdates = True
    OnCalcFields = quInstCoordenadorCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT    InstOrientador .*, Curso.cur_nome Curso '
      'FROM         InstOrientador'
      'INNER JOIN   Curso ON InstOrientador.Cur_cod = Curso.cur_cod'
      
        'where  InstOrientador.Inst_cod =:Instituicao  and  InstOrientado' +
        'r.func_cod =:codigo order by  Curso.Cur_nome ')
    UpdateObject = usInstOrientador
    Left = 8
    Top = 98
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Instituicao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    object quInstOrientadorinst_cod: TIntegerField
      FieldName = 'inst_cod'
      Origin = 'TALENTPOOL.InstOrientador.inst_cod'
      Visible = False
    end
    object quInstOrientadorFunc_cod: TIntegerField
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.InstOrientador.Func_cod'
      Visible = False
    end
    object quInstOrientadorCur_cod: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.InstOrientador.Cur_cod'
    end
    object quInstOrientadorCurso: TStringField
      FieldName = 'Curso'
      Origin = 'TALENTPOOL.Curso.cur_nome'
      Size = 150
    end
    object quInstOrientadorAtivo: TStringField
      FieldName = 'Ativo'
      Origin = 'TALENTPOOL.Curso.cur_nome'
      FixedChar = True
      Size = 1
    end
  end
  object usInstOrientador: TUpdateSQL
    ModifySQL.Strings = (
      'update InstOrientador'
      'set'
      '  inst_cod = :inst_cod,'
      '  Func_cod = :Func_cod,'
      '  Cur_cod = :Cur_cod'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    InsertSQL.Strings = (
      'insert into InstOrientador'
      '  (inst_cod, Func_cod, Cur_cod)'
      'values'
      '  (:inst_cod, :Func_cod, :Cur_cod)')
    DeleteSQL.Strings = (
      'delete from InstOrientador'
      'where'
      '  inst_cod = :OLD_inst_cod and'
      '  Func_cod = :OLD_Func_cod and'
      '  Cur_cod = :OLD_Cur_cod')
    Left = 10
    Top = 153
  end
  object dsSelecao: TDataSource
    DataSet = quSelecao
    Left = 8
    Top = 205
  end
  object quSelecao: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from Selecao'
      'order by Sel_cod')
    UpdateObject = usSelecao
    Left = 8
    Top = 253
    object quSelecaoSel_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Sel_cod'
      Origin = 'TALENTPOOL.Selecao.Sel_cod'
    end
    object quSelecaoSel_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Sel_Nome'
      Origin = 'TALENTPOOL.Selecao.Sel_Nome'
      Size = 80
    end
  end
  object usSelecao: TUpdateSQL
    ModifySQL.Strings = (
      'update Selecao'
      'set'
      '  Sel_Nome = :Sel_Nome'
      'where'
      '  Sel_cod = :OLD_Sel_cod')
    InsertSQL.Strings = (
      'insert into Selecao'
      '  (Sel_Nome)'
      'values'
      '  (:Sel_Nome)')
    DeleteSQL.Strings = (
      'delete from Selecao'
      'where'
      '  Sel_cod = :OLD_Sel_cod')
    Left = 8
    Top = 301
  end
  object dsAreaEstagio: TDataSource
    DataSet = quAreaEstagio
    Left = 8
    Top = 357
  end
  object quAreaEstagio: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from AreaEstagio'
      'order by Area_cod')
    UpdateObject = usAreaEstagio
    Left = 8
    Top = 405
    object quAreaEstagioAREA_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'AREA_COD'
      Origin = 'TALENTPOOL.AreaEstagio.AREA_COD'
    end
    object quAreaEstagioAREA_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'AREA_NOME'
      Origin = 'TALENTPOOL.AreaEstagio.AREA_NOME'
      Size = 80
    end
  end
  object usAreaEstagio: TUpdateSQL
    ModifySQL.Strings = (
      'update AreaEstagio'
      'set'
      '  AREA_NOME = :AREA_NOME'
      'where'
      '  AREA_COD = :OLD_AREA_COD')
    InsertSQL.Strings = (
      'insert into AreaEstagio'
      '  (AREA_NOME)'
      'values'
      '  (:AREA_NOME)')
    DeleteSQL.Strings = (
      'delete from AreaEstagio'
      'where'
      '  AREA_COD = :OLD_AREA_COD')
    Left = 8
    Top = 453
  end
  object dsFormaTratamento: TDataSource
    DataSet = quFormaTratamento
    Left = 8
    Top = 493
  end
  object quFormaTratamento: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from FormaTratamento'
      'order by Form_cod')
    UpdateObject = usFormaTratamento
    Left = 8
    Top = 541
    object quFormaTratamentoForm_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Form_Cod'
      Origin = 'TALENTPOOL.FormaTratamento.Form_Cod'
    end
    object quFormaTratamentoForm_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Form_nome'
      Origin = 'TALENTPOOL.FormaTratamento.Form_nome'
      Size = 80
    end
  end
  object usFormaTratamento: TUpdateSQL
    ModifySQL.Strings = (
      'update FormaTratamento'
      'set'
      '  Form_nome = :Form_nome'
      'where'
      '  Form_Cod = :OLD_Form_Cod')
    InsertSQL.Strings = (
      'insert into FormaTratamento'
      '  (Form_nome)'
      'values'
      '  (:Form_nome)')
    DeleteSQL.Strings = (
      'delete from FormaTratamento'
      'where'
      '  Form_Cod = :OLD_Form_Cod')
    Left = 8
    Top = 589
  end
  object qutceRelatorio: TQuery
    CachedUpdates = True
    OnCalcFields = qutceRelatorioCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  TceRelatorio'
      'where '
      '  tce_cod = :tce_cod'
      'order by'
      '  ordem')
    UpdateObject = UsTceRelatorio
    Left = 1163
    Top = 460
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
    object qutceRelatorioTce_cod: TIntegerField
      DisplayLabel = 'Tce'
      FieldName = 'Tce_cod'
      Origin = 'TALENTPOOL.TceRelatorio.Tce_cod'
    end
    object qutceRelatorioOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'TALENTPOOL.TceRelatorio.Ordem'
    end
    object qutceRelatorioPrev_data: TDateTimeField
      DisplayLabel = 'Previsao'
      FieldName = 'Prev_data'
      Origin = 'TALENTPOOL.TceRelatorio.Prev_data'
    end
    object qutceRelatorioEst_Data: TDateTimeField
      DisplayLabel = 'Estudante (Data)'
      FieldName = 'Est_Data'
      Origin = 'TALENTPOOL.TceRelatorio.Est_Data'
    end
    object qutceRelatorioSup_Data: TDateTimeField
      DisplayLabel = 'Supervisor (Data)'
      FieldName = 'Sup_Data'
      Origin = 'TALENTPOOL.TceRelatorio.Sup_Data'
    end
    object qutceRelatorioUser_Aluno: TIntegerField
      FieldName = 'User_Aluno'
      Origin = 'TALENTPOOL.TceRelatorio.User_Aluno'
    end
    object qutceRelatorioUser_Supervisor: TIntegerField
      FieldName = 'User_Supervisor'
      Origin = 'TALENTPOOL.TceRelatorio.User_Supervisor'
    end
    object qutceRelatorioUserAluno: TStringField
      FieldKind = fkCalculated
      FieldName = 'UserAluno'
      Size = 50
      Calculated = True
    end
    object qutceRelatorioUserSupervisor: TStringField
      FieldKind = fkCalculated
      FieldName = 'UserSupervisor'
      Size = 50
      Calculated = True
    end
    object qutceRelatorioEst_pendente: TStringField
      FieldName = 'Est_pendente'
      Origin = 'TALENTPOOL.TceRelatorio.Est_pendente'
      FixedChar = True
      Size = 1
    end
    object qutceRelatorioSup_pendente: TStringField
      FieldName = 'Sup_pendente'
      Origin = 'TALENTPOOL.TceRelatorio.Sup_pendente'
      FixedChar = True
      Size = 1
    end
  end
  object DsTceRelatorio: TDataSource
    DataSet = qutceRelatorio
    Left = 1096
    Top = 460
  end
  object UsTceRelatorio: TUpdateSQL
    ModifySQL.Strings = (
      'update TceRelatorio'
      'set'
      '  Tce_cod = :Tce_cod,'
      '  Ordem = :Ordem,'
      '  Est_Data = :Est_Data,'
      '  Sup_Data = :Sup_Data,'
      '  Prev_data = :Prev_data,'
      '  User_Aluno = :User_Aluno,'
      '  User_Supervisor = :User_Supervisor,'
      '  Est_pendente = :Est_pendente,'
      '  Sup_pendente = :Sup_pendente'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  Ordem = :OLD_Ordem')
    InsertSQL.Strings = (
      'insert into TceRelatorio'
      
        '  (Tce_cod, Ordem, Est_Data, Sup_Data, Prev_data, User_Aluno, Us' +
        'er_Supervisor, '
      '   Est_pendente, Sup_pendente)'
      'values'
      
        '  (:Tce_cod, :Ordem, :Est_Data, :Sup_Data, :Prev_data, :User_Alu' +
        'no, :User_Supervisor, '
      '   :Est_pendente, :Sup_pendente)')
    DeleteSQL.Strings = (
      'delete from TceRelatorio'
      'where'
      '  Tce_cod = :OLD_Tce_cod and'
      '  Ordem = :OLD_Ordem')
    Left = 1232
    Top = 460
  end
  object dsPendencias: TDataSource
    DataSet = quPendencias
    Left = 1096
    Top = 505
  end
  object quPendencias: TQuery
    CachedUpdates = True
    BeforeDelete = quPendenciasBeforeDelete
    OnCalcFields = qutceRelatorioCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from    Pendencias'
      'order by pend_cod')
    UpdateObject = usPendencias
    Left = 1163
    Top = 505
    object quPendenciasPend_cod: TIntegerField
      FieldName = 'Pend_cod'
      Origin = 'TALENTPOOL.Pendencias.Pend_cod'
    end
    object quPendenciasPend_descricao: TStringField
      FieldName = 'Pend_descricao'
      Origin = 'TALENTPOOL.Pendencias.Pend_descricao'
      Size = 50
    end
  end
  object usPendencias: TUpdateSQL
    ModifySQL.Strings = (
      'update Pendencias'
      'set'
      '  Pend_descricao = :Pend_descricao'
      'where'
      '  Pend_cod = :OLD_Pend_cod')
    InsertSQL.Strings = (
      'insert into Pendencias'
      '  (Pend_descricao)'
      'values'
      '  (:Pend_descricao)')
    DeleteSQL.Strings = (
      'delete from Pendencias'
      'where'
      '  Pend_cod = :OLD_Pend_cod')
    Left = 1232
    Top = 505
  end
  object dsTceRelPend1: TDataSource
    AutoEdit = False
    DataSet = qutceRelPend1
    Left = 1096
    Top = 550
  end
  object qutceRelPend1: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from    TceRelPendencias'
      'where tipo = 1 and'
      'tce=:tce and'
      'ordem =:ordem'
      'order by pend_cod')
    UpdateObject = usRelPend1
    Left = 1163
    Top = 550
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ordem'
        ParamType = ptInput
      end>
    object qutceRelPend1Tipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'TALENTPOOL.TceRelPendencias.Tipo'
      Visible = False
    end
    object qutceRelPend1tce: TIntegerField
      FieldName = 'tce'
      Origin = 'TALENTPOOL.TceRelPendencias.tce'
      Visible = False
    end
    object qutceRelPend1ordem: TIntegerField
      FieldName = 'ordem'
      Origin = 'TALENTPOOL.TceRelPendencias.ordem'
      Visible = False
    end
    object qutceRelPend1Pend_cod: TIntegerField
      FieldName = 'Pend_cod'
      Origin = 'TALENTPOOL.TceRelPendencias.Pend_cod'
      Visible = False
    end
    object qutceRelPend1Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = QryPend
      LookupKeyFields = 'Pend_cod'
      LookupResultField = 'Pend_descricao'
      KeyFields = 'Pend_cod'
      Size = 60
      Lookup = True
    end
  end
  object usRelPend1: TUpdateSQL
    ModifySQL.Strings = (
      'update TceRelPendencias'
      'set'
      '  Tipo = :Tipo,'
      '  tce = :tce,'
      '  ordem = :ordem,'
      '  Pend_cod = :Pend_cod'
      'where'
      '  Tipo = :OLD_Tipo and'
      '  tce = :OLD_tce and'
      '  ordem = :OLD_ordem and'
      '  Pend_cod = :OLD_Pend_cod')
    InsertSQL.Strings = (
      'insert into TceRelPendencias'
      '  (Tipo, tce, ordem, Pend_cod)'
      'values'
      '  (:Tipo, :tce, :ordem, :Pend_cod)')
    DeleteSQL.Strings = (
      'delete from TceRelPendencias'
      'where'
      '  Tipo = :OLD_Tipo and'
      '  tce = :OLD_tce and'
      '  ordem = :OLD_ordem and'
      '  Pend_cod = :OLD_Pend_cod')
    Left = 1232
    Top = 550
  end
  object dstceRelPend2: TDataSource
    AutoEdit = False
    DataSet = qutceRelPend2
    Left = 1096
    Top = 591
  end
  object qutceRelPend2: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      '  *'
      'from    TceRelPendencias'
      'where tipo = 2 and'
      'tce=:tce and'
      'ordem =:ordem'
      'order by pend_cod')
    UpdateObject = usRelPend2
    Left = 1163
    Top = 591
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ordem'
        ParamType = ptInput
      end>
    object qutceRelPend2Descricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = QryPend
      LookupKeyFields = 'Pend_cod'
      LookupResultField = 'Pend_descricao'
      KeyFields = 'Pend_cod'
      Size = 60
      Lookup = True
    end
    object qutceRelPend2Tipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'TALENTPOOL.TceRelPendencias.Tipo'
      Visible = False
    end
    object qutceRelPend2tce: TIntegerField
      FieldName = 'tce'
      Origin = 'TALENTPOOL.TceRelPendencias.tce'
      Visible = False
    end
    object qutceRelPend2ordem: TIntegerField
      FieldName = 'ordem'
      Origin = 'TALENTPOOL.TceRelPendencias.ordem'
      Visible = False
    end
    object qutceRelPend2Pend_cod: TIntegerField
      FieldName = 'Pend_cod'
      Origin = 'TALENTPOOL.TceRelPendencias.Pend_cod'
      Visible = False
    end
  end
  object usRelPend2: TUpdateSQL
    ModifySQL.Strings = (
      'update TceRelPendencias'
      'set'
      '  Tipo = :Tipo,'
      '  tce = :tce,'
      '  ordem = :ordem,'
      '  Pend_cod = :Pend_cod'
      'where'
      '  Tipo = :OLD_Tipo and'
      '  tce = :OLD_tce and'
      '  ordem = :OLD_ordem and'
      '  Pend_cod = :OLD_Pend_cod')
    InsertSQL.Strings = (
      'insert into TceRelPendencias'
      '  (Tipo, tce, ordem, Pend_cod)'
      'values'
      '  (:Tipo, :tce, :ordem, :Pend_cod)')
    DeleteSQL.Strings = (
      'delete from TceRelPendencias'
      'where'
      '  Tipo = :OLD_Tipo and'
      '  tce = :OLD_tce and'
      '  ordem = :OLD_ordem and'
      '  Pend_cod = :OLD_Pend_cod')
    Left = 1232
    Top = 591
  end
  object QryPend: TQuery
    OnCalcFields = qryitauCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from Pendencias order by  pend_descricao')
    Left = 1193
    Top = 414
    object QryPendPend_cod: TIntegerField
      FieldName = 'Pend_cod'
      Origin = 'TALENTPOOL.Pendencias.Pend_cod'
    end
    object QryPendPend_descricao: TStringField
      FieldName = 'Pend_descricao'
      Origin = 'TALENTPOOL.Pendencias.Pend_descricao'
      Size = 50
    end
  end
  object dsBanco: TDataSource
    DataSet = quBanco
    Left = 56
    Top = 554
  end
  object quBanco: TQuery
    CachedUpdates = True
    BeforePost = quBancoBeforePost
    BeforeDelete = quBancoBeforeDelete
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select *  from tb_bancos'
      'order by banco')
    UpdateObject = usBanco
    Left = 112
    Top = 552
    object quBancoID_BANCOS: TIntegerField
      FieldName = 'ID_BANCOS'
      Origin = 'TALENTPOOL.tb_bancos.ID_BANCOS'
    end
    object quBancoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'TALENTPOOL.tb_bancos.COD_BANCO'
      FixedChar = True
      Size = 4
    end
    object quBancoBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'TALENTPOOL.tb_bancos.BANCO'
      Size = 60
    end
    object quBancoAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'TALENTPOOL.tb_bancos.APELIDO'
    end
    object quBancoDESCONTO_FOLHA: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO_FOLHA'
      Origin = 'TALENTPOOL.tb_bancos.DESCONTO_FOLHA'
    end
  end
  object usBanco: TUpdateSQL
    ModifySQL.Strings = (
      'update tb_bancos'
      'set'
      '  ID_BANCOS = :ID_BANCOS,'
      '  COD_BANCO = :COD_BANCO,'
      '  BANCO = :BANCO,'
      '  APELIDO = :APELIDO'
      'where'
      '  ID_BANCOS = :OLD_ID_BANCOS')
    InsertSQL.Strings = (
      'insert into tb_bancos'
      '  (ID_BANCOS, COD_BANCO, BANCO, APELIDO)'
      'values'
      '  (:ID_BANCOS, :COD_BANCO, :BANCO, :APELIDO)')
    DeleteSQL.Strings = (
      'delete from tb_bancos'
      'where'
      '  ID_BANCOS = :OLD_ID_BANCOS')
    Left = 168
    Top = 560
  end
  object quInconsistenciaTCE: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'EXECUTE SP_INCONSISTENCIA_TCE;')
    Left = 64
    Top = 720
    object quInconsistenciaTCETipo: TStringField
      FieldName = 'Tipo'
      Size = 11
    end
    object quInconsistenciaTCEest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object quInconsistenciaTCEDescSituacaoAtual: TStringField
      FieldName = 'DescSituacaoAtual'
      Size = 15
    end
    object quInconsistenciaTCEDescSituacaoDestino: TStringField
      FieldName = 'DescSituacaoDestino'
      Size = 15
    end
    object quInconsistenciaTCESituacaoAtual: TStringField
      FieldName = 'SituacaoAtual'
      FixedChar = True
      Size = 1
    end
    object quInconsistenciaTCESituacaoDestino: TIntegerField
      FieldName = 'SituacaoDestino'
    end
    object quInconsistenciaTCEtce_datares: TDateTimeField
      FieldName = 'tce_datares'
    end
    object quInconsistenciaTCEtce_cod: TIntegerField
      FieldName = 'tce_cod'
    end
    object quInconsistenciaTCEemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
  end
  object quDataAtual: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select CONVERT(DATETIME, FLOOR(CONVERT(FLOAT(24), GETDATE()))) a' +
        's DATA_ATUAL')
    Left = 203
    Top = 726
    object quDataAtualDATA_ATUAL: TDateTimeField
      FieldName = 'DATA_ATUAL'
    end
  end
  object quCorrigeSituacaoTCE: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'UPDATE TCE SET TCE_SITUACAO = :P_TCE_SITUACAO'
      'WHERE tce_cod = :P_TCE_COD')
    Left = 299
    Top = 726
    ParamData = <
      item
        DataType = ftString
        Name = 'P_TCE_SITUACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'P_TCE_COD'
        ParamType = ptUnknown
      end>
  end
  object quInconsistenciaEstudante: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'EXECUTE SP_INCONSISTENCIA_ESTUDANTE;')
    Left = 64
    Top = 760
    object quInconsistenciaEstudanteest_cod: TIntegerField
      FieldName = 'est_cod'
    end
    object quInconsistenciaEstudantetce_cod: TIntegerField
      FieldName = 'tce_cod'
    end
    object quInconsistenciaEstudanteest_pgtolib_atual: TStringField
      FieldName = 'est_pgtolib_atual'
      Size = 2
    end
    object quInconsistenciaEstudanteest_pgtolib_novo: TStringField
      FieldName = 'est_pgtolib_novo'
      Size = 2
    end
    object quInconsistenciaEstudanteest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object quInconsistenciaEstudanteDescSituacaoAtual: TStringField
      FieldName = 'DescSituacaoAtual'
      Size = 40
    end
    object quInconsistenciaEstudanteDescSituacaoDestino: TStringField
      FieldName = 'DescSituacaoDestino'
      Size = 40
    end
    object quInconsistenciaEstudanteemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object quInconsistenciaEstudantetce_datares: TDateTimeField
      FieldName = 'tce_datares'
    end
  end
  object quCorrigeSituacaoEstudante1: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Update Estudante set est_pgtolib = :P_EST_PGTOLIB where est_cod ' +
        '= :P_EST_COD')
    Left = 203
    Top = 774
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_EST_PGTOLIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_EST_COD'
        ParamType = ptUnknown
      end>
  end
  object quCorrigeSituacaoEstudante2: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Update FolhaPgto set fbo_situacao = :P_EST_PGTOLIB'
      'where est_cod = :P_EST_COD')
    Left = 291
    Top = 774
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_EST_PGTOLIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_EST_COD'
        ParamType = ptUnknown
      end>
  end
end
