object FORSEXC1: TFORSEXC1
  Left = 231
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Avaliação de Desempenho dos Estagiários'
  ClientHeight = 329
  ClientWidth = 596
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
    Left = 1
    Top = 1
    Width = 592
    Height = 299
  end
  object btImprimir: TSpeedButton
    Left = 365
    Top = 303
    Width = 77
    Height = 25
    Hint = 'Imprimir Relatório - Tecla F5'
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
    Left = 519
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
  object btEmail: TSpeedButton
    Left = 442
    Top = 303
    Width = 77
    Height = 25
    Hint = 'Enviar e-mail'
    Caption = 'E-Mail'
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
  object DBGrid1: TDBGrid
    Left = 10
    Top = 115
    Width = 575
    Height = 172
    DataSource = DmDta.dsSeguroExc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 381
    Top = 6
    Width = 204
    Height = 50
    Caption = 'Período'
    TabOrder = 2
    object Label1: TLabel
      Left = 98
      Top = 22
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object meDataIni: TMaskEdit
      Left = 13
      Top = 18
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = meDataIniExit
    end
    object meDataFim: TMaskEdit
      Left = 117
      Top = 18
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = meDataFimExit
    end
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 3
    TabStop = False
    OnClick = btEnterClick
  end
  object GroupBox2: TGroupBox
    Left = 10
    Top = 6
    Width = 367
    Height = 50
    Caption = 'Instituição'
    TabOrder = 0
    object edInstCod: TEdit
      Left = 13
      Top = 18
      Width = 41
      Height = 21
      Color = clInfoBk
      TabOrder = 0
      OnDblClick = edInstCodDblClick
      OnExit = edInstCodExit
      OnKeyDown = edInstCodKeyDown
    end
    object edInstNome: TEdit
      Left = 59
      Top = 18
      Width = 295
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 10
    Top = 57
    Width = 577
    Height = 50
    Caption = 'Empresa'
    TabOrder = 1
    object edEmpCod: TEdit
      Left = 12
      Top = 20
      Width = 44
      Height = 21
      Color = clInfoBk
      TabOrder = 0
      OnDblClick = edEmpCodDblClick
      OnExit = edEmpCodExit
      OnKeyDown = edEmpCodKeyDown
    end
    object edEmpNome: TEdit
      Left = 61
      Top = 20
      Width = 500
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
  end
end
