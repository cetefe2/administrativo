object FORSTAX: TFORSTAX
  Left = 242
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contribui'#231#227'o por Empresa'
  ClientHeight = 329
  ClientWidth = 761
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
    Width = 683
    Height = 300
  end
  object btImprimir: TSpeedButton
    Left = 479
    Top = 303
    Width = 65
    Height = 25
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
  object btFechar: TSpeedButton
    Left = 696
    Top = 303
    Width = 61
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
    Left = 106
    Top = 309
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Bolsa:'
  end
  object Label4: TLabel
    Left = 258
    Top = 309
    Width = 55
    Height = 13
    Caption = 'Total Cont.:'
  end
  object Label5: TLabel
    Left = 14
    Top = 7
    Width = 53
    Height = 13
    Caption = 'C'#225'lculo por'
  end
  object btEmail: TSpeedButton
    Left = 545
    Top = 303
    Width = 67
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
  object Label7: TLabel
    Left = 3
    Top = 309
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estagi'#225'rios:'
  end
  object SpeedButton1: TSpeedButton
    Left = 619
    Top = 303
    Width = 75
    Height = 25
    Hint = 'Exportar Dados - Tecla F6'
    Caption = 'Exportar 2'
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
    OnClick = SpeedButton1Click
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 1
    TabStop = False
    OnClick = btEnterClick
  end
  object edTotBolsa: TEdit
    Left = 163
    Top = 305
    Width = 91
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 0
  end
  object edTotTaxa: TEdit
    Left = 314
    Top = 305
    Width = 87
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 2
  end
  object cboCalculo: TComboBox
    Left = 13
    Top = 22
    Width = 88
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnClick = cboCalculoClick
    Items.Strings = (
      'Por Bolsa'
      'Por Fatura')
  end
  object Notebook1: TNotebook
    Left = 101
    Top = 2
    Width = 449
    Height = 45
    TabOrder = 4
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object Label1: TLabel
        Left = 9
        Top = 6
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label3: TLabel
        Left = 357
        Top = 6
        Width = 68
        Height = 13
        Caption = 'Estagi'#225'rios em'
      end
      object edEmpCod: TEdit
        Left = 8
        Top = 20
        Width = 44
        Height = 21
        Hint = 'Pressione F2 ou duplo click para abrir a empresa'
        Color = clInfoBk
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnDblClick = edEmpCodDblClick
        OnExit = edEmpCodExit
        OnKeyDown = edEmpCodKeyDown
      end
      object edEmpNome: TEdit
        Left = 56
        Top = 20
        Width = 289
        Height = 21
        TabStop = False
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 1
      end
      object edAno: TEdit
        Left = 356
        Top = 20
        Width = 48
        Height = 21
        MaxLength = 4
        TabOrder = 2
        OnExit = edAnoExit
        OnKeyPress = edAnoKeyPress
      end
      object edMes: TEdit
        Left = 415
        Top = 20
        Width = 28
        Height = 21
        MaxLength = 2
        TabOrder = 3
        OnExit = edMesExit
        OnKeyPress = edAnoKeyPress
      end
    end
    object TPage
      Left = 0
      Top = 0
      object Label6: TLabel
        Left = 11
        Top = 6
        Width = 45
        Height = 13
        Caption = 'Fatura N'#186
      end
      object edFatura: TEdit
        Left = 10
        Top = 20
        Width = 103
        Height = 21
        TabOrder = 0
        OnExit = edFaturaExit
        OnKeyPress = edAnoKeyPress
      end
    end
  end
  object Notebook2: TNotebook
    Left = 5
    Top = 48
    Width = 752
    Height = 250
    TabOrder = 5
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object DBGrid1: TDBGrid
        Left = 8
        Top = 4
        Width = 740
        Height = 241
        DataSource = DmDTA.dsTaxa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TPage
      Left = 0
      Top = 0
      object DBGrid2: TDBGrid
        Left = 9
        Top = 4
        Width = 660
        Height = 241
        DataSource = DmDTA.dsTaxaF
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object edEstagiarios: TEdit
    Left = 60
    Top = 306
    Width = 44
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 6
  end
  object campos: TListBox
    Left = 576
    Top = 380
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  object rd: TRadioGroup
    Left = 552
    Top = -4
    Width = 129
    Height = 55
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Normal'
      'Recesso Indenizado')
    TabOrder = 8
    OnClick = edEmpCodExit
  end
  object Panel1: TPanel
    Left = 683
    Top = 3
    Width = 76
    Height = 48
    BevelOuter = bvNone
    TabOrder = 9
    object btnFiltro: TBitBtn
      Left = -1
      Top = 21
      Width = 74
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = btnFiltroClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00BEC8CDFF204860FF303040FFBEC3C8FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEC8
        CDFF305060FF4088A0FF3090B0FF304050FFD3DFE3FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEC8CDFF3050
        60FF3088B0FF40B8E0FF90E0F0FF90D0E0FF6090A0FFFFFFFF00FFFFFF00FFFF
        FF00EBECEBFFB9B9B9FF919191FF696969FF5A625AFF868C86FF6F7B7BFF3080
        A0FF40B8E0FF90E0F0FF90E0F0FF6098B0FFCDDAE1FFFFFFFF00FFFFFF00DBDB
        DBFF9C9C91FFA09090FFC0B0A0FFE0C8B0FFE0C8B0FFC0A8A0FF908080FF868C
        86FF80C0D0FFA0D8F0FF6098B0FFCDDAE1FFFFFFFF00FFFFFF00EFEEEDFF9CA2
        9CFFB0B0B0FFFFE8E0FFFFE0D0FFF0E0D0FFF0D8C0FFF0D0C0FFF0D0B0FFB098
        90FF7B817BFF608890FFCDDAE1FFFFFFFF00FFFFFF00FFFFFF00C7C4C0FFB0A8
        A0FFFFF8F0FFFFF0E0FFFFE8E0FFFFE8E0FFFFE0D0FFF0D8D0FFF0D8C0FFF0D0
        C0FF908880FFA7AFAFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A79CFFD0D0
        D0FFFFF8FFFFFFF8F0FFFFF0F0FFFFF0E0FFFFE8E0FFF0E0D0FFF0E0D0FFF0D8
        C0FFC0B0A0FF878187FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00878787FFF0F0
        F0FFFFFFFFFFFFF8FFFFFFF8F0FFFFF0F0FFFFF0E0FFFFE8E0FFF0E0D0FFF0D8
        D0FFE0C8B0FF696969FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00978787FFF0F0
        F0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF8F0FFFFF0F0FFFFE8E0FFFFE8E0FFFFE0
        D0FFF0D0C0FF696969FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00B2ADA7FFE0D8
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFFFF8F0FFFFF0F0FFFFF0E0FFFFE0
        D0FFD0B8B0FF878D87FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00CECBC7FFB0B0
        B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFFFF8F0FFFFF0F0FFFFE8
        E0FFA09890FFB9BDB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F0EFFFB2AD
        A7FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF8F0FFC0B8
        B0FF9C9C9CFFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E1
        DFFFB2ADA7FFB0B0B0FFE0D8D0FFF0F0F0FFF0F8F0FFD0D8D0FFB0A8A0FFA7A2
        9CFFDFDDDBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F1F0EFFFCECBC7FFB2ADA7FF978F87FF878787FFA7A7A7FFC7C7C0FFEFEE
        EDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
  end
end
