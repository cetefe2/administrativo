object FORSVER1: TFORSVER1
  Left = 282
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Verifica'#231#227'o Escolar - Resumo'
  ClientHeight = 367
  ClientWidth = 561
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
  object Bevel1: TBevel
    Left = 0
    Top = 1
    Width = 560
    Height = 331
  end
  object btImprimir: TSpeedButton
    Left = 333
    Top = 340
    Width = 77
    Height = 25
    Hint = 'Imprimir TCE - Tecla F6'
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
  object btFechar: TSpeedButton
    Left = 487
    Top = 340
    Width = 73
    Height = 25
    Hint = 'Fechar - Tecla F4'
    Caption = 'Fechar'
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
  object Label2: TLabel
    Left = 2
    Top = 345
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Institui'#231#245'es:'
  end
  object Label1: TLabel
    Left = 128
    Top = 345
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estagi'#225'rios: '
  end
  object btEmail: TSpeedButton
    Left = 410
    Top = 340
    Width = 77
    Height = 25
    Hint = 'Exportar Dados - Tecla F6'
    Caption = 'Exportar'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
      FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
      07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
      77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
      0733333773FF33F773333333707EE707333333333773F7733333333333700733
      3333333333377333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btEmailClick
  end
  object Label3: TLabel
    Left = 17
    Top = 20
    Width = 71
    Height = 13
    Caption = 'Estagi'#225'rios em:'
  end
  object btEtiquetas: TSpeedButton
    Left = 259
    Top = 341
    Width = 73
    Height = 25
    Hint = 'Imprimir - Tecla F5'
    Caption = 'Etiquetas'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
      FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
      FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
      9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
      0000777777777777777733333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btEtiquetasClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 46
    Width = 515
    Height = 273
    DataSource = DmDTA.dsVerEsc1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btEnter: TBitBtn
    Left = 312
    Top = 544
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 1
    TabStop = False
    OnClick = btEnterClick
  end
  object edEmpNum: TEdit
    Left = 63
    Top = 341
    Width = 49
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 2
  end
  object edEstagiarios: TEdit
    Left = 188
    Top = 341
    Width = 49
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 3
  end
  object edAno: TEdit
    Left = 94
    Top = 17
    Width = 65
    Height = 21
    MaxLength = 4
    TabOrder = 4
    OnExit = edAnoExit
    OnKeyPress = edAnoKeyPress
  end
  object edMes: TEdit
    Left = 164
    Top = 17
    Width = 37
    Height = 21
    MaxLength = 2
    TabOrder = 5
    OnExit = edMesExit
    OnKeyPress = edAnoKeyPress
  end
  object Button1: TButton
    Left = 507
    Top = 47
    Width = 36
    Height = 19
    Caption = 'Etq.'
    TabOrder = 6
    TabStop = False
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 497
    Top = 65
    Width = 38
    Height = 252
    Color = clWhite
    DataSource = DmDTA.dsVerEsc1
    PanelBorder = gbNone
    PanelHeight = 18
    PanelWidth = 21
    ParentColor = False
    TabOrder = 7
    RowCount = 14
    object DBCheckBox2: TDBCheckBox
      Left = 5
      Top = 1
      Width = 16
      Height = 17
      DataField = 'Etiqueta'
      DataSource = DmDTA.dsVerEsc1
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object cbTodas: TCheckBox
    Left = 468
    Top = 24
    Width = 57
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Todas'
    TabOrder = 8
    OnClick = cbTodasClick
  end
end
