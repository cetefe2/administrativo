object FORSTCE: TFORSTCE
  Left = 236
  Top = 187
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Situa'#231#227'o dos TCE'#39's'
  ClientHeight = 220
  ClientWidth = 373
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
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 201
    Width = 373
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 201
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Bevel1: TBevel
      Left = 16
      Top = 16
      Width = 341
      Height = 140
    end
    object Gauge1: TGauge
      Left = 45
      Top = 57
      Width = 281
      Height = 57
      Progress = 0
    end
    object SpeedButton1: TSpeedButton
      Left = 180
      Top = 163
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 269
      Top = 163
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
      OnClick = SpeedButton2Click
    end
    object lblTituloEst: TLabel
      Left = 21
      Top = 140
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estudante: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblEstudante: TLabel
      Left = 77
      Top = 140
      Width = 30
      Height = 13
      Caption = '00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblTCE: TLabel
      Left = 322
      Top = 139
      Width = 30
      Height = 13
      Caption = '00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblTituloTCE: TLabel
      Left = 296
      Top = 139
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'TCE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
  end
  object quTce: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select  * from Tce '
      'where tce_situacao <> '#39'7'#39
      ''
      'union'
      ''
      'Select  * from Tce '
      'where tce_situacao = '#39'7'#39
      'and tce_datares >= :data1'
      ''
      'order by tce_cod')
    UpdateObject = usTce
    Left = 288
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end>
  end
  object usTce: TUpdateSQL
    ModifySQL.Strings = (
      'update Tce'
      'set'
      '  Tce_situacao = :Tce_situacao'
      'where'
      '  Tce_cod = :OLD_Tce_cod')
    InsertSQL.Strings = (
      'insert into Tce'
      '  (Tce_cod, Tce_situacao)'
      'values'
      '  (:Tce_cod, :Tce_situacao)')
    DeleteSQL.Strings = (
      'delete from Tce'
      'where'
      '  Tce_cod = :OLD_Tce_cod')
    Left = 328
    Top = 272
  end
  object quTA: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      '  *'
      'from '
      '  TceAditivo '
      'where '
      '  tce_cod = :tce_cod and '
      '  prg_cod in '
      '(select max(prg_cod) from TceAditivo'
      ' where tce_cod = :tce_cod)')
    Left = 392
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
    object quTATce_cod: TIntegerField
      FieldName = 'Tce_cod'
    end
    object quTAPrg_cod: TIntegerField
      FieldName = 'Prg_cod'
    end
    object quTATpr_dataini: TDateTimeField
      FieldName = 'Tpr_dataini'
    end
    object quTATpr_datafim: TDateTimeField
      FieldName = 'Tpr_datafim'
    end
    object quTAtpr_retorno: TDateTimeField
      FieldName = 'tpr_retorno'
    end
  end
  object quSituacaoEst: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Update Estudante set est_situacao = :est_situacao')
    Left = 360
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'est_situacao'
        ParamType = ptUnknown
      end>
  end
end
