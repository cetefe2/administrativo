object FORSEMP: TFORSEMP
  Left = 154
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estagi�rios por Empresa - Detalhado'
  ClientHeight = 329
  ClientWidth = 763
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 1
    Width = 763
    Height = 300
  end
  object Label1: TLabel
    Left = 13
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object btImprimir: TSpeedButton
    Left = 536
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
    Left = 690
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
  object Label2: TLabel
    Left = 2
    Top = 309
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total de Ativos: '
  end
  object Label3: TLabel
    Left = 672
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Estagi�rios em'
  end
  object Label4: TLabel
    Left = 164
    Top = 309
    Width = 106
    Height = 13
    Caption = 'Total de Rescindidos: '
  end
  object btEmail: TSpeedButton
    Left = 613
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
    OnClick = btEmailClick
  end
  object Label5: TLabel
    Left = 535
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Tipo Vestibular'
  end
  object edEmpCod: TEdit
    Left = 13
    Top = 22
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
    Left = 62
    Top = 22
    Width = 467
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 13
    Top = 48
    Width = 740
    Height = 241
    DataSource = DmDta.dsEstEmp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 6
    TabStop = False
    OnClick = btEnterClick
  end
  object edAno: TEdit
    Left = 672
    Top = 22
    Width = 48
    Height = 21
    MaxLength = 4
    TabOrder = 2
    OnExit = edAnoExit
    OnKeyPress = edAnoKeyPress
  end
  object edMes: TEdit
    Left = 724
    Top = 22
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 3
    OnExit = edMesExit
    OnKeyPress = edAnoKeyPress
  end
  object edTotEst: TEdit
    Left = 82
    Top = 305
    Width = 59
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 5
  end
  object edTotResc: TEdit
    Left = 274
    Top = 305
    Width = 59
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 7
  end
  object cbVestibular: TComboBox
    Left = 535
    Top = 22
    Width = 132
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 8
    OnChange = cbVestibularChange
    Items.Strings = (
      'Ver�o'
      'Inverno'
      'Todos')
  end
end
