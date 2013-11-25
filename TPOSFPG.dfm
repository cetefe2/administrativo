object FORSFPG: TFORSFPG
  Left = 219
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Foha de Pagamento'
  ClientHeight = 329
  ClientWidth = 687
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
    Left = 456
    Top = 303
    Width = 77
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
    Left = 610
    Top = 303
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Pesquisa por: '
  end
  object Label5: TLabel
    Left = 16
    Top = 308
    Width = 99
    Height = 13
    Caption = 'Total de Estagi'#225'rios: '
  end
  object Label6: TLabel
    Left = 209
    Top = 309
    Width = 56
    Height = 13
    Caption = 'Total Bolsa:'
  end
  object btExportar: TSpeedButton
    Left = 533
    Top = 303
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
    OnClick = btExportarClick
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 48
    Width = 662
    Height = 241
    DataSource = DmDTA.dsSFolhaPgto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object cbTipoPesquisa: TComboBox
    Left = 8
    Top = 23
    Width = 84
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbTipoPesquisaChange
    Items.Strings = (
      'Fatura'
      'Empresa')
  end
  object Notebook1: TNotebook
    Left = 91
    Top = 17
    Width = 582
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page3'
      object Label3: TLabel
        Left = 7
        Top = 9
        Width = 40
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object edFatura: TEdit
        Left = 57
        Top = 6
        Width = 77
        Height = 21
        MaxLength = 8
        TabOrder = 0
        OnExit = edFaturaExit
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page1'
      object Label2: TLabel
        Left = 444
        Top = 10
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ano/M'#234's:'
      end
      object Label4: TLabel
        Left = 8
        Top = 9
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa:'
      end
      object edEmpCod: TEdit
        Left = 58
        Top = 6
        Width = 44
        Height = 21
        Color = clInfoBk
        TabOrder = 0
        OnDblClick = edEmpCodDblClick
        OnExit = edEmpCodExit
        OnKeyDown = edEmpCodKeyDown
      end
      object edEmpNome: TEdit
        Left = 108
        Top = 6
        Width = 326
        Height = 21
        TabStop = False
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 1
      end
      object edAno: TEdit
        Left = 498
        Top = 6
        Width = 45
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 4
        TabOrder = 2
      end
      object edMes: TEdit
        Left = 549
        Top = 6
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 3
        OnExit = edMesExit
      end
    end
  end
  object btEnter: TBitBtn
    Left = 136
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 3
    TabStop = False
    OnClick = btEnterClick
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 305
    Width = 65
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'TotEstagiarios'
    DataSource = DmDTA.dsSFolhaPgto
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 271
    Top = 305
    Width = 96
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'TotBolsa'
    DataSource = DmDTA.dsSFolhaPgto
    ReadOnly = True
    TabOrder = 5
  end
end
