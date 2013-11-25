inherited FOREST9: TFOREST9
  Left = 325
  Top = 240
  Caption = 'Informações Sobre a Intenção do Estágio'
  ClientHeight = 283
  ClientWidth = 504
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 504
    Height = 264
    inherited btOk: TSpeedButton
      Left = 420
      Top = 227
    end
    inherited Panel2: TPanel
      Width = 487
      Height = 214
      object Label1: TLabel
        Left = 11
        Top = 13
        Width = 143
        Height = 13
        Caption = 'Habilidades e Conhecimentos:'
      end
      object Label2: TLabel
        Left = 168
        Top = 13
        Width = 119
        Height = 13
        Caption = 'Características Pessoais:'
      end
      object Label4: TLabel
        Left = 325
        Top = 14
        Width = 112
        Height = 13
        Caption = 'Por Que Fazer Estágio?'
      end
      object DBMemo2: TDBMemo
        Left = 11
        Top = 28
        Width = 148
        Height = 174
        DataField = 'est_habilidades'
        DataSource = DmDTA.dsEstudante
        TabOrder = 0
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo1: TDBMemo
        Left = 168
        Top = 28
        Width = 148
        Height = 174
        DataField = 'est_caracteristicas'
        DataSource = DmDTA.dsEstudante
        TabOrder = 1
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo4: TDBMemo
        Left = 325
        Top = 28
        Width = 148
        Height = 174
        DataField = 'est_porquestagioest'
        DataSource = DmDTA.dsEstudante
        TabOrder = 2
        OnKeyPress = DBMemo1KeyPress
      end
    end
    inherited btEnter: TBitBtn
      Left = 120
      Top = 530
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 264
    Width = 504
  end
  object quLaudoPrincipal: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  e.*, v.emp_nome, v.vag_setor, v.vag_dataabertura, v.vag_qtde,'
      #9' v.vag_cod, n.eva_dataenc, v.vag_respselecao'
      'from'
      '  estudante e, empresa m, Encaminhamento n, Vaga v'
      'where'
      '  e.est_cod     = :est_cod       and'
      '  e.est_cod '#9' '#9' = n.est_cod'#9#9#9'and'
      '  v.vag_cod '#9#9' = n.vag_cod'#9#9'  and'
      '  v.emp_cod '#9#9' = m.emp_cod '#9#9'  and'
      
        #9' n.eva_dataenc '#9' = (select max(eva_dataenc) from Encaminhamento' +
        ' where est_cod = :est_cod)'
      ''
      'union'
      ''
      'select'
      '  e.*, '#39#39', '#39#39', null, 0, 0, null, '#39#39
      'from'
      '  estudante e'
      'where'
      '  e.est_cod     = :est_cod'
      
        #9'and not exists (select * from Encaminhamento where est_cod = :e' +
        'st_cod)'
      ''
      'order by'
      '  v.vag_dataabertura desc'
      ' ')
    Left = 285
    Top = 435
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
      end>
    object quLaudoPrincipalIdade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
    object quLaudoPrincipalEst_cod: TIntegerField
      FieldName = 'Est_cod'
    end
    object quLaudoPrincipalEst_dtinc: TDateTimeField
      FieldName = 'Est_dtinc'
    end
    object quLaudoPrincipalEst_nome: TStringField
      FieldName = 'Est_nome'
      Size = 50
    end
    object quLaudoPrincipalEst_dtnasc: TDateTimeField
      FieldName = 'Est_dtnasc'
    end
    object quLaudoPrincipalEst_rg: TStringField
      FieldName = 'Est_rg'
    end
    object quLaudoPrincipalEst_cpf: TStringField
      FieldName = 'Est_cpf'
      Size = 11
    end
    object quLaudoPrincipalEst_sexo: TStringField
      FieldName = 'Est_sexo'
      FixedChar = True
      Size = 10
    end
    object quLaudoPrincipalEst_endereco: TStringField
      FieldName = 'Est_endereco'
      Size = 100
    end
    object quLaudoPrincipalEst_bairro: TStringField
      FieldName = 'Est_bairro'
      Size = 50
    end
    object quLaudoPrincipalEst_cidade: TStringField
      FieldName = 'Est_cidade'
      Size = 50
    end
    object quLaudoPrincipalEst_estado: TStringField
      FieldName = 'Est_estado'
      FixedChar = True
      Size = 2
    end
    object quLaudoPrincipalEst_cep: TStringField
      FieldName = 'Est_cep'
      Size = 8
    end
    object quLaudoPrincipalEst_ctpsnum: TStringField
      FieldName = 'Est_ctpsnum'
    end
    object quLaudoPrincipalEst_ctpsserie: TStringField
      FieldName = 'Est_ctpsserie'
      Size = 10
    end
    object quLaudoPrincipalEst_email: TStringField
      FieldName = 'Est_email'
      Size = 50
    end
    object quLaudoPrincipalEst_fone1: TStringField
      FieldName = 'Est_fone1'
      Size = 15
    end
    object quLaudoPrincipalEst_fone2: TStringField
      FieldName = 'Est_fone2'
      Size = 15
    end
    object quLaudoPrincipalEst_recado: TStringField
      FieldName = 'Est_recado'
      Size = 15
    end
    object quLaudoPrincipalEst_nomerecado: TStringField
      FieldName = 'Est_nomerecado'
      Size = 30
    end
    object quLaudoPrincipalEst_estadocivil: TStringField
      FieldName = 'Est_estadocivil'
    end
    object quLaudoPrincipalEst_fumante: TStringField
      FieldName = 'Est_fumante'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalEst_religiao: TStringField
      FieldName = 'Est_religiao'
    end
    object quLaudoPrincipalEst_observacao: TStringField
      FieldName = 'Est_observacao'
      Size = 250
    end
    object quLaudoPrincipalest_salinicial: TFloatField
      FieldName = 'est_salinicial'
    end
    object quLaudoPrincipalest_salfinal: TFloatField
      FieldName = 'est_salfinal'
    end
    object quLaudoPrincipalest_digitacao: TStringField
      FieldName = 'est_digitacao'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_locomocao: TStringField
      FieldName = 'est_locomocao'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_diasdisp: TStringField
      FieldName = 'est_diasdisp'
      FixedChar = True
      Size = 7
    end
    object quLaudoPrincipalest_periodo: TStringField
      FieldName = 'est_periodo'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_horarioini: TDateTimeField
      FieldName = 'est_horarioini'
    end
    object quLaudoPrincipalest_horariofim: TDateTimeField
      FieldName = 'est_horariofim'
    end
    object quLaudoPrincipalest_resumo: TStringField
      FieldName = 'est_resumo'
      Size = 250
    end
    object quLaudoPrincipalest_outras: TStringField
      FieldName = 'est_outras'
      Size = 250
    end
    object quLaudoPrincipalest_situacao: TStringField
      FieldName = 'est_situacao'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalinst_cod: TIntegerField
      FieldName = 'inst_cod'
    end
    object quLaudoPrincipalinst_nome: TStringField
      FieldName = 'inst_nome'
      Size = 100
    end
    object quLaudoPrincipalcur_cod: TIntegerField
      FieldName = 'cur_cod'
    end
    object quLaudoPrincipalcur_nome: TStringField
      FieldName = 'cur_nome'
      Size = 80
    end
    object quLaudoPrincipalpcu_vestib: TStringField
      FieldName = 'pcu_vestib'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalpcu_anoatual: TIntegerField
      FieldName = 'pcu_anoatual'
    end
    object quLaudoPrincipalpcu_peratual: TStringField
      FieldName = 'pcu_peratual'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalpcu_turno: TStringField
      FieldName = 'pcu_turno'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_pgtolib: TStringField
      FieldName = 'est_pgtolib'
      Size = 2
    end
    object quLaudoPrincipalest_banco: TStringField
      FieldName = 'est_banco'
      Size = 30
    end
    object quLaudoPrincipalest_agencia: TStringField
      FieldName = 'est_agencia'
      Size = 15
    end
    object quLaudoPrincipalest_conta: TStringField
      FieldName = 'est_conta'
      Size = 15
    end
    object quLaudoPrincipalest_perfilpessoal: TStringField
      FieldName = 'est_perfilpessoal'
      Size = 250
    end
    object quLaudoPrincipalest_porqueestagio: TStringField
      FieldName = 'est_porqueestagio'
      Size = 250
    end
    object quLaudoPrincipalest_areasexp: TStringField
      FieldName = 'est_areasexp'
      Size = 250
    end
    object quLaudoPrincipalest_apresentacao: TStringField
      FieldName = 'est_apresentacao'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_faccomunicacao: TStringField
      FieldName = 'est_faccomunicacao'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_vocabulario: TStringField
      FieldName = 'est_vocabulario'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_factrabalho: TStringField
      FieldName = 'est_factrabalho'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_rotinas: TStringField
      FieldName = 'est_rotinas'
      FixedChar = True
      Size = 1
    end
    object quLaudoPrincipalest_filhos: TSmallintField
      FieldName = 'est_filhos'
    end
    object quLaudoPrincipalest_numend: TStringField
      FieldName = 'est_numend'
      FixedChar = True
      Size = 10
    end
    object quLaudoPrincipalest_apto: TStringField
      FieldName = 'est_apto'
      FixedChar = True
      Size = 10
    end
    object quLaudoPrincipalest_bloco: TStringField
      FieldName = 'est_bloco'
      FixedChar = True
      Size = 10
    end
    object quLaudoPrincipalest_dtatu: TDateTimeField
      FieldName = 'est_dtatu'
    end
    object quLaudoPrincipalest_sitfamiliar: TStringField
      FieldName = 'est_sitfamiliar'
      Size = 250
    end
    object quLaudoPrincipalemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object quLaudoPrincipalvag_setor: TStringField
      FieldName = 'vag_setor'
      Size = 40
    end
    object quLaudoPrincipalvag_dataabertura: TDateTimeField
      FieldName = 'vag_dataabertura'
    end
    object quLaudoPrincipalvag_qtde: TIntegerField
      FieldName = 'vag_qtde'
    end
    object quLaudoPrincipalvag_cod: TIntegerField
      FieldName = 'vag_cod'
    end
    object quLaudoPrincipaleva_dataenc: TDateTimeField
      FieldName = 'eva_dataenc'
    end
    object quLaudoPrincipalvag_respselecao: TStringField
      FieldName = 'vag_respselecao'
      Size = 50
    end
  end
  object quEntrevistas: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select  A.age_data, a.age_faltou1 Presenca,'
      #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, v.emp_nome'
      'from    Agenda A, Encaminhamento E, Vaga v'
      'where   A.age_data = E.eva_agedata and A.age_estcod1 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod1 = v.vag_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca,'
      #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, v.emp_nome'
      'from    Agenda A, Encaminhamento E, Vaga v'
      'where   A.age_data = E.eva_agedata and A.age_estcod2 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod2 = v.vag_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca,'
      #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, v.emp_nome'
      'from    Agenda A, Encaminhamento E, Vaga v'
      'where   A.age_data = E.eva_agedata and A.age_estcod3 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod3 = v.vag_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou1 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'Não'#39' as Encaminhado, v.emp_no' +
        'me'
      'from    Agenda A, Vaga v'
      'where   A.age_vagcod1 = v.vag_cod'
      'and     A.age_estcod1 = :est_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod1'
      'and     E.eva_agedata  = A.age_data)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'Não'#39' as Encaminhado, v.emp_no' +
        'me'
      'from    Agenda A, Vaga v'
      'where   A.age_vagcod2 = v.vag_cod'
      'and     A.age_estcod2 = :est_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod2'
      'and     E.eva_agedata  = A.age_data)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'Não'#39' as Encaminhado, v.emp_no' +
        'me'
      'from    Agenda A, Vaga v'
      'where   A.age_vagcod3 = v.vag_cod'
      'and     A.age_estcod3 = :est_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod3'
      'and     E.eva_agedata  = A.age_data)'
      ''
      'order by A.age_data desc'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Left = 321
    Top = 434
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quEntrevistasage_data: TDateTimeField
      DisplayLabel = 'Data Entrevista'
      DisplayWidth = 18
      FieldName = 'age_data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quEntrevistasEncaminhado: TStringField
      DisplayWidth = 10
      FieldName = 'Encaminhado'
      Size = 3
    end
    object quEntrevistaseva_resultado: TStringField
      DisplayWidth = 10
      FieldName = 'eva_resultado'
      Visible = False
      Size = 1
    end
    object quEntrevistasResultado: TStringField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      Size = 50
      Calculated = True
    end
    object quEntrevistasvag_cod: TIntegerField
      DisplayLabel = 'Oportunidade'
      FieldName = 'vag_cod'
      Visible = False
    end
    object quEntrevistasPresenca: TStringField
      DisplayWidth = 10
      FieldName = 'Presenca'
      Size = 1
    end
    object quEntrevistasemp_nome: TStringField
      FieldName = 'emp_nome'
      Visible = False
      Size = 150
    end
  end
end
