inherited FOREST2: TFOREST2
  Left = 174
  Top = 162
  Caption = 'Perfil do Estudante'
  ClientHeight = 354
  ClientWidth = 676
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 676
    Height = 335
    inherited btOk: TSpeedButton
      Left = 579
      Top = 298
    end
    object btImprimirLaudo: TSpeedButton [1]
      Left = 9
      Top = 298
      Width = 90
      Height = 25
      Hint = 'Imprimir Laudo do Candidato - Tecla F7'
      Caption = 'Imprimir Laudo'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btImprimirLaudoClick
    end
    object Label5: TLabel [2]
      Left = 109
      Top = 294
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label7: TLabel [3]
      Left = 232
      Top = 293
      Width = 53
      Height = 13
      Caption = 'Recrutador'
    end
    object Label6: TLabel [4]
      Left = 440
      Top = 294
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object DBText1: TDBText [5]
      Left = 442
      Top = 310
      Width = 135
      Height = 17
      DataField = 'Status'
      DataSource = DmDTA.dsEstudante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited Panel2: TPanel
      Width = 657
      Height = 285
      object Label1: TLabel
        Left = 12
        Top = 13
        Width = 115
        Height = 13
        Caption = 'Por Que Fazer Est'#225'gio ?'
      end
      object Label2: TLabel
        Left = 237
        Top = 12
        Width = 175
        Height = 13
        Caption = 'Observa'#231#245'es Sobre o Perfil Pessoal: '
      end
      object Label3: TLabel
        Left = 238
        Top = 146
        Width = 163
        Height = 13
        Caption = #193'reas em que Possui Experi'#234'ncia: '
      end
      object Label4: TLabel
        Left = 12
        Top = 147
        Width = 86
        Height = 13
        Caption = 'Situa'#231#227'o Familiar: '
      end
      object Label8: TLabel
        Left = 464
        Top = 240
        Width = 63
        Height = 13
        Caption = 'Desempenho'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 461
        Top = 126
        Width = 186
        Height = 50
        Caption = 'Facilidade de Comunica'#231#227'o'
        Columns = 2
        DataField = 'est_faccomunicacao'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Muito Boa'
          'Boa'
          'Razo'#225'vel')
        TabOrder = 7
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 461
        Top = 177
        Width = 186
        Height = 62
        Caption = 'Vocabul'#225'rio'
        Columns = 2
        DataField = 'est_vocabulario'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Muito Bom'
          'Bom'
          'Razo'#225'vel')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 461
        Top = 9
        Width = 186
        Height = 41
        Caption = 'Apresenta'#231#227'o'
        Columns = 2
        DataField = 'est_apresentacao'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Tranq'#252'ilo (a)'
          'Inquieto (a)')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 461
        Top = 88
        Width = 186
        Height = 36
        Caption = 'Facilidade de Trabalho'
        Columns = 2
        DataField = 'est_factrabalho'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Em Equipe'
          'Sozinho')
        TabOrder = 6
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 461
        Top = 54
        Width = 186
        Height = 33
        Caption = 'Adapta'#231#227'o '#224's Rotinas do Dia-a-Dia'
        Columns = 2
        DataField = 'est_rotinas'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
      end
      object DBMemo2: TDBMemo
        Left = 12
        Top = 28
        Width = 215
        Height = 110
        DataField = 'est_porqueestagio'
        DataSource = DmDTA.dsEstudante
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo1: TDBMemo
        Left = 238
        Top = 27
        Width = 214
        Height = 110
        DataField = 'est_perfilpessoal'
        DataSource = DmDTA.dsEstudante
        MaxLength = 3000
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo4: TDBMemo
        Left = 12
        Top = 161
        Width = 215
        Height = 110
        DataField = 'est_sitfamiliar'
        DataSource = DmDTA.dsEstudante
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 2
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo3: TDBMemo
        Left = 238
        Top = 161
        Width = 214
        Height = 110
        DataField = 'est_areasexp'
        DataSource = DmDTA.dsEstudante
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 3
        OnKeyPress = DBMemo1KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 464
        Top = 256
        Width = 178
        Height = 21
        DataField = 'Est_desempenho'
        DataSource = DmDTA.dsEstudante
        ItemHeight = 13
        Items.Strings = (
          'EXCELENTE'
          'BOM'
          'REGULAR'
          'RUIM')
        TabOrder = 9
      end
    end
    inherited btEnter: TBitBtn
      Left = 120
      Top = 530
    end
    object DBDateEdit1: TDBDateEdit
      Left = 108
      Top = 307
      Width = 121
      Height = 21
      DataField = 'Dat_perfil'
      DataSource = DmDTA.dsEstudante
      NumGlyphs = 2
      TabOrder = 2
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 234
      Top = 306
      DataBinding.DataField = 'Est_recrutadora'
      DataBinding.DataSource = DmDTA.dsEstudante
      Properties.ClearKey = 46
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'func_cod'
      Properties.ListColumns = <
        item
          FieldName = 'func_nome'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dsfunc
      Style.BorderStyle = ebs3D
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.ButtonTransparency = ebtNone
      Style.PopupBorderStyle = epbsDefault
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsFlat
      StyleDisabled.Color = clBtnText
      StyleDisabled.ButtonStyle = btsUltraFlat
      StyleFocused.Color = 16119285
      StyleFocused.TextStyle = []
      TabOrder = 3
      Width = 201
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 335
    Width = 676
  end
  object quLaudoPrincipal: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  v.emp_nome, v.vag_setor, v.vag_dataabertura, v.vag_qtde,'
      #9' v.vag_cod, n.eva_dataenc, v.vag_respselecao'
      'from'
      '  empresa m, Encaminhamento n, Vaga v'
      'where'
      '  n.est_cod     = :est_cod       and'
      '  v.vag_cod '#9#9' = n.vag_cod'#9#9'  and'
      '  v.emp_cod '#9#9' = m.emp_cod '#9#9'  and'
      
        #9' n.eva_dataenc '#9' = (select max(eva_dataenc) from Encaminhamento' +
        ' where est_cod = :est_cod)'
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
      end>
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
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, m.emp_nome' +
        ','
      '        A.age_porque1 porque, v.vag_respselecao'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata'
      'and '#9#9'A.age_estcod1 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod1 = v.vag_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca,'
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, m.emp_nome' +
        ','
      '        A.age_porque2 porque, v.vag_respselecao'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata'
      'and     A.age_estcod2 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod2 = v.vag_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca,'
      
        #9#9#9#9'E.eva_resultado, E.vag_cod, '#39'Sim'#39' as Encaminhado, m.emp_nome' +
        ','
      '        A.age_porque3 porque, v.vag_respselecao'
      'from    Agenda A, Encaminhamento E, Vaga v, Empresa M'
      'where   A.age_data = E.eva_agedata'
      'and     A.age_estcod3 = E.est_cod'
      'and     E.est_cod = :est_cod'
      'and '#9#9'A.age_vagcod3 = v.vag_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     E.vag_cod = v.vag_cod'
      'and     v.vag_cod <> :vag_cod'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou1 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'N'#227'o'#39' as Encaminhado, m.emp_no' +
        'me,'
      '        A.age_porque1 porque, v.vag_respselecao'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod1 = v.vag_cod'
      'and     A.age_estcod1 = :est_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod1 and e.vag_cod = v.vag_cod)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou2 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'N'#227'o'#39' as Encaminhado, m.emp_no' +
        'me,'
      '        A.age_porque2 porque, v.vag_respselecao'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod2 = v.vag_cod'
      'and     A.age_estcod2 = :est_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod2 and e.vag_cod = v.vag_cod)'
      ''
      'union'
      ''
      'select  A.age_data, a.age_faltou3 Presenca,'
      
        #9#9#9#9#39'4'#39' eva_resultado, v.vag_cod, '#39'N'#227'o'#39' as Encaminhado, m.emp_no' +
        'me,'
      '        A.age_porque3 porque, v.vag_respselecao'
      'from    Agenda A, Vaga v, Empresa M'
      'where   A.age_vagcod3 = v.vag_cod'
      'and     A.age_estcod3 = :est_cod'
      'and     v.emp_cod = m.emp_cod'
      'and     v.vag_cod <> :vag_cod'
      'and '#9#9'Not Exists (select E.* from Encaminhamento E'
      'where   E.est_cod   = A.age_estcod3 and e.vag_cod = v.vag_cod)'
      ''
      'union'
      ''
      'select  e.eva_dataenc, '#39'Sim'#39' Presenca,'
      
        #9#9#9#9'e.eva_resultado, v.vag_cod, '#39'Sim'#39' as Encaminhado, m.emp_nome' +
        ','
      '        '#39#39' porque, v.vag_respselecao'
      'from    Encaminhamento E, Vaga V, Empresa M'
      'where   E.vag_cod = v.vag_cod'
      'and     e.est_cod = :est_cod'
      'and'#9#9'  v.vag_cod <> :vag_cod'
      'and     v.emp_cod = m.emp_cod'
      'and '#9#9'Not Exists (select A.* from Agenda A'
      
        'where   ((E.est_cod   = A.age_estcod1) or (E.est_cod   = A.age_e' +
        'stcod2) or (E.est_cod = A.age_estcod3))'
      
        'and'#9#9'  ((v.vag_cod   = a.age_vagcod1) or (v.vag_cod   = a.age_va' +
        'gcod2) or (v.vag_cod   = a.age_vagcod3)))'
      ''
      'order by A.age_data desc'
      '')
    Left = 321
    Top = 434
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
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
    object quEntrevistasporque: TStringField
      FieldName = 'porque'
      Size = 100
    end
    object quEntrevistasvag_respselecao: TStringField
      FieldName = 'vag_respselecao'
      Size = 50
    end
  end
  object dsfunc: TDataSource
    DataSet = qryfunc
    Left = 448
    Top = 376
  end
  object qryfunc: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select * from funcionario  nolock  where  func_ativo = '#39'S'#39' order' +
        ' by func_Nome')
    Left = 488
    Top = 376
    object qryfuncfunc_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'func_cod'
      Origin = 'TALENTPOOL.funcionario.func_cod'
    end
    object qryfuncfunc_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'func_nome'
      Origin = 'TALENTPOOL.funcionario.func_nome'
      Size = 50
    end
  end
end
