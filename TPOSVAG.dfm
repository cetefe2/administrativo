object FORSVAG: TFORSVAG
  Left = 302
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Candidatos Encaminhados por Per'#237'odo'
  ClientHeight = 377
  ClientWidth = 778
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
    Left = 1
    Top = 1
    Width = 774
    Height = 344
  end
  object btImprimir: TSpeedButton
    Left = 549
    Top = 351
    Width = 77
    Height = 25
    Hint = 'Imprimir Relat'#243'rio - Tecla F5'
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
    Left = 703
    Top = 351
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
    Left = 11
    Top = 356
    Width = 99
    Height = 13
    Caption = 'Total de Estagi'#225'rios: '
  end
  object btEmail: TSpeedButton
    Left = 626
    Top = 351
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
  object DBGrid1: TDBGrid
    Left = 10
    Top = 64
    Width = 752
    Height = 274
    DataSource = DmDTA.dsCandidatosEnc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 6
    Width = 223
    Height = 50
    Caption = 'Per'#237'odo de Abertura das Vagas'
    TabOrder = 2
    object Label1: TLabel
      Left = 103
      Top = 21
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object meDataIni: TMaskEdit
      Left = 18
      Top = 17
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = meDataIniExit
    end
    object meDataFim: TMaskEdit
      Left = 122
      Top = 17
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
    Top = 425
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 4
    TabStop = False
    OnClick = btEnterClick
  end
  object GroupBox2: TGroupBox
    Left = 282
    Top = 470
    Width = 543
    Height = 50
    Caption = 'Institui'#231#227'o'
    TabOrder = 0
    Visible = False
    object edInstCod: TEdit
      Left = 12
      Top = 19
      Width = 48
      Height = 21
      Hint = 'Pressione F2 ou duplo click para abrir a institui'#231#227'o'
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
    end
    object edInstNome: TEdit
      Left = 65
      Top = 19
      Width = 465
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 282
    Top = 519
    Width = 543
    Height = 50
    Caption = 'Empresa'
    TabOrder = 1
    Visible = False
    object edEmpCod: TEdit
      Left = 12
      Top = 19
      Width = 48
      Height = 21
      Hint = 'Pressione F2 ou duplo click para abrir a empresa'
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
    end
    object edEmpNome: TEdit
      Left = 65
      Top = 19
      Width = 465
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
  end
  object rgTipoVaga: TRadioGroup
    Left = 238
    Top = 6
    Width = 524
    Height = 50
    Caption = 'Tipos de Vaga'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'N'#227'o Preenchidas'
      'Preenchidas'
      'Todas')
    TabOrder = 5
  end
  object edTotalEst: TEdit
    Left = 112
    Top = 352
    Width = 64
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 6
    Text = '0'
  end
end
