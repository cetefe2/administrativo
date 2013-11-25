object FORSFPP: TFORSFPP
  Left = 240
  Top = 208
  Width = 668
  Height = 380
  BorderIcons = [biSystemMenu]
  Caption = 'Atualiza'#231#227'o das Folhas de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 327
    Width = 660
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 327
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Bevel1: TBevel
      Left = 16
      Top = 16
      Width = 625
      Height = 271
    end
    object btAtualizar: TSpeedButton
      Left = 463
      Top = 294
      Width = 89
      Height = 26
      Hint = 'Atualizar - Tecla F3'
      Caption = '&Atualizar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = btAtualizarClick
    end
    object btFechar: TSpeedButton
      Left = 552
      Top = 294
      Width = 89
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
      OnClick = btFecharClick
    end
    object Label1: TLabel
      Left = 31
      Top = 27
      Width = 176
      Height = 13
      Caption = 'Folhas de Pagamento n'#227'o Liberadas:'
    end
    object Label2: TLabel
      Left = 16
      Top = 301
      Width = 66
      Height = 13
      Caption = 'Total Retidos:'
    end
    object DBGrid1: TDBGrid
      Left = 31
      Top = 44
      Width = 594
      Height = 228
      DataSource = dsFolhaPgto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object edTotalRetidos: TEdit
      Left = 87
      Top = 297
      Width = 121
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
  end
  object dsFolhaPgto: TDataSource
    DataSet = quFolhaPgto
    Left = 288
    Top = 504
  end
  object quFolhaPgto: TQuery
    CachedUpdates = True
    OnCalcFields = quFolhaPgtoCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select'
      '  fat_ano, f.fat_mes, f.emp_cod,'
      '  m.emp_nome, p.fbo_valor-p.fbo_descontos as ValTotal,'
      '  p.fat_numero, p.est_cod, e.est_nome, p.fbo_liberacao,'
      '  p.fbo_situacao'
      'from'
      '  FolhaPgto p, Fatura f, Empresa M, Estudante E'
      'where'
      '  p.fat_numero     = f.fat_numero and'
      '  p.est_cod        = e.est_cod and'
      '  f.emp_cod        = m.emp_Cod and'
      '  p.fbo_liberacao  = '#39'0'#39' and'
      '  f.fat_datalib    is not null and'
      '  p.fbo_valor-p.fbo_descontos > 0'
      'order by'
      '  f.fat_ano*12+f.fat_mes desc, f.emp_nome, p.est_nome'
      ' ')
    UpdateObject = usFolhaPgto
    Left = 320
    Top = 504
    object quFolhaPgtofat_ano: TSmallintField
      DisplayLabel = 'Ano'
      DisplayWidth = 5
      FieldName = 'fat_ano'
    end
    object quFolhaPgtofat_mes: TSmallintField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 3
      FieldName = 'fat_mes'
      DisplayFormat = '00'
    end
    object quFolhaPgtoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Visible = False
    end
    object quFolhaPgtoemp_nome: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'emp_nome'
      Size = 100
    end
    object quFolhaPgtofat_numero: TIntegerField
      FieldName = 'fat_numero'
      Visible = False
    end
    object quFolhaPgtoest_nome: TStringField
      DisplayLabel = 'Estudante'
      DisplayWidth = 25
      FieldName = 'est_nome'
      Size = 50
    end
    object quFolhaPgtoValTotal: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 11
      FieldName = 'ValTotal'
      currency = True
    end
    object quFolhaPgtofbo_liberacao: TStringField
      DisplayLabel = 'Libera'#231#227'o'
      DisplayWidth = 8
      FieldName = 'fbo_liberacao'
      Visible = False
      Size = 1
    end
    object quFolhaPgtoDescSituacao: TStringField
      DisplayLabel = 'Documentos'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'DescSituacao'
      Size = 50
      Calculated = True
    end
    object quFolhaPgtoDescLiberacao: TStringField
      DisplayLabel = 'Lib.'
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DescLiberacao'
      Size = 3
      Calculated = True
    end
    object quFolhaPgtoest_cod: TSmallintField
      FieldName = 'est_cod'
      Visible = False
    end
    object quFolhaPgtofbo_situacao: TStringField
      FieldName = 'fbo_situacao'
      Visible = False
      Size = 1
    end
  end
  object usFolhaPgto: TUpdateSQL
    ModifySQL.Strings = (
      'update FolhaPgto'
      'set'
      '  fbo_liberacao = :fbo_liberacao'
      'where'
      '  fat_numero = :OLD_fat_numero and'
      '  est_cod = :OLD_est_cod')
    InsertSQL.Strings = (
      'insert into FolhaPgto'
      '  (fbo_liberacao)'
      'values'
      '  (:fbo_liberacao)')
    DeleteSQL.Strings = (
      'delete from FolhaPgto'
      'where'
      '  fat_numero = :OLD_fat_numero and'
      '  est_cod = :OLD_est_cod')
    Left = 352
    Top = 504
  end
end
