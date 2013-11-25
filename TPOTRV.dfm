object FORTRV: TFORTRV
  Left = 175
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Triagem da Vaga'
  ClientHeight = 353
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 334
    Width = 632
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 334
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Bevel2: TBevel
      Left = 10
      Top = 10
      Width = 612
      Height = 311
    end
    object Panel3: TPanel
      Left = 4
      Top = 4
      Width = 624
      Height = 326
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel3: TBevel
        Left = 7
        Top = 9
        Width = 609
        Height = 281
        Shape = bsFrame
      end
      object Bevel1: TBevel
        Left = 18
        Top = 20
        Width = 584
        Height = 35
      end
      object btFechar: TSpeedButton
        Left = 540
        Top = 293
        Width = 76
        Height = 26
        Hint = 'Fechar - Tecla F4'
        Caption = '&Fechar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btFecharClick
      end
      object Label1: TLabel
        Left = 33
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Vaga:'
      end
      object btImprimir: TSpeedButton
        Left = 463
        Top = 293
        Width = 77
        Height = 26
        Hint = 'Imprimir - Tecla F5'
        Caption = 'Imprimir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btImprimirClick
      end
      object btEstudante: TSpeedButton
        Left = 376
        Top = 293
        Width = 87
        Height = 26
        Hint = 'Estudante - Tecla F6'
        Caption = '&Estudante'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btEstudanteClick
      end
      object btEnter: TBitBtn
        Left = 80
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Enter'
        Default = True
        TabOrder = 0
        TabStop = False
        OnClick = btEnterClick
      end
      object edVaga: TEdit
        Left = 66
        Top = 28
        Width = 65
        Height = 21
        TabStop = False
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = edVagaKeyPress
      end
      object DBGrid1: TDBGrid
        Left = 18
        Top = 61
        Width = 585
        Height = 220
        DataSource = dsEstudante
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
    end
  end
  object quPrincipal: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    UpdateObject = usPrincipal
    Left = 233
    Top = 390
  end
  object usPrincipal: TUpdateSQL
    Left = 265
    Top = 390
  end
  object qencaminha: TQuery
    DatabaseName = 'TalentPool'
    Left = 368
    Top = 392
  end
  object quVagaSoftware: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select * from VagaSoftware where vag_cod = :vag_cod')
    Left = 76
    Top = 298
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaSoftwareVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaSoftware.Vag_cod'
    end
    object quVagaSoftwareStw_cod: TIntegerField
      FieldName = 'Stw_cod'
      Origin = 'TALENTPOOL.VagaSoftware.Stw_cod'
    end
  end
  object quVagaIdioma: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select * from VagaIdioma where vag_cod = :vag_cod')
    Left = 44
    Top = 298
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaIdiomaVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALPOOL.VagaIdioma.Vag_cod'
    end
    object quVagaIdiomaIdi_cod: TIntegerField
      FieldName = 'Idi_cod'
      Origin = 'TALPOOL.VagaIdioma.Idi_cod'
    end
    object quVagaIdiomavid_fala: TStringField
      FieldName = 'vid_fala'
      Origin = 'TALENTPOOL.VagaIdioma.vid_fala'
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomavid_le: TStringField
      FieldName = 'vid_le'
      Origin = 'TALENTPOOL.VagaIdioma.vid_le'
      FixedChar = True
      Size = 1
    end
    object quVagaIdiomavid_escreve: TStringField
      FieldName = 'vid_escreve'
      Origin = 'TALENTPOOL.VagaIdioma.vid_escreve'
      FixedChar = True
      Size = 1
    end
  end
  object dsEstudante: TDataSource
    DataSet = DmDTA.quTriagem
    Left = 244
    Top = 300
  end
  object quVagaCurso: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'Select instituicao.inst_nome,curso.cur_nome, vagacurso.* from Va' +
        'gaCurso INNER JOIN'
      
        '                      Curso ON VagaCurso.Cur_cod = Curso.cur_cod' +
        ' LEFT OUTER JOIN'
      
        '                      Instituicao ON VagaCurso.Inst_cod = Instit' +
        'uicao.Inst_cod'
      'where vag_cod  =:vag_cod')
    Left = 132
    Top = 298
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quVagaCursoVag_cod: TIntegerField
      FieldName = 'Vag_cod'
      Origin = 'TALENTPOOL.VagaCurso.Vag_cod'
    end
    object quVagaCursoCur_cod: TIntegerField
      FieldName = 'Cur_cod'
      Origin = 'TALENTPOOL.VagaCurso.Cur_cod'
    end
    object quVagaCursocur_nome: TStringField
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.VagaCurso.cur_nome'
      Size = 100
    end
    object quVagaCursoInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Origin = 'TALENTPOOL.VagaCurso.Inst_cod'
    end
    object quVagaCursoinst_nome: TStringField
      FieldName = 'inst_nome'
      Origin = 'TALENTPOOL.VagaCurso.inst_nome'
      Size = 100
    end
    object quVagaCursoVcu_periodoini: TFloatField
      FieldName = 'Vcu_periodoini'
      Origin = 'TALENTPOOL.VagaCurso.Vcu_periodoini'
    end
    object quVagaCursoVcu_periodofim: TFloatField
      FieldName = 'Vcu_periodofim'
      Origin = 'TALENTPOOL.VagaCurso.Vcu_periodofim'
    end
  end
  object quVagaRequisito: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select * from tb_Vagarequisito where cod_vaga = :vag_cod')
    Left = 172
    Top = 298
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptInput
      end>
    object quVagaRequisitoCOD_VAGA: TIntegerField
      FieldName = 'COD_VAGA'
      Origin = 'TALENTPOOL.tb_Vagarequisito.COD_VAGA'
    end
    object quVagaRequisitoID_REQUISITO: TIntegerField
      FieldName = 'ID_REQUISITO'
      Origin = 'TALENTPOOL.tb_Vagarequisito.ID_REQUISITO'
    end
    object quVagaRequisitoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TALENTPOOL.tb_Vagarequisito.TIPO'
      FixedChar = True
      Size = 1
    end
  end
end
