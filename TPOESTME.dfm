object FORESTME: TFORESTME
  Left = 253
  Top = 262
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estat'#237'sticas - Est'#225'gios Per'#237'odo'
  ClientHeight = 228
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btFechar: TSpeedButton
    Left = 252
    Top = 201
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
  object Bevel1: TBevel
    Left = 3
    Top = 3
    Width = 321
    Height = 195
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 11
    Width = 297
    Height = 50
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object Label1: TLabel
      Left = 145
      Top = 22
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object meDataIni: TMaskEdit
      Left = 60
      Top = 18
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object meDataFim: TMaskEdit
      Left = 164
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
  object GroupBox2: TGroupBox
    Left = 16
    Top = 64
    Width = 297
    Height = 121
    Caption = 'Resultado'
    TabOrder = 1
    object Label2: TLabel
      Left = 56
      Top = 32
      Width = 101
      Height = 13
      Caption = 'Estagi'#225'rios Inclu'#237'dos:'
    end
    object Label5: TLabel
      Left = 56
      Top = 53
      Width = 104
      Height = 13
      Caption = 'Estagi'#225'rios Exclu'#237'dos:'
    end
    object Label6: TLabel
      Left = 56
      Top = 74
      Width = 119
      Height = 13
      Caption = 'Dura'#231#227'o M'#233'dia Est'#225'gios:'
    end
    object lblEstagiariosIncluidos: TLabel
      Left = 184
      Top = 32
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEstagiariosExcluidos: TLabel
      Left = 184
      Top = 53
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDuracaoMedia: TLabel
      Left = 195
      Top = 74
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 221
      Top = 74
      Width = 30
      Height = 13
      Caption = 'meses'
    end
  end
end
