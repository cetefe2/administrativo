object FORSPEMP: TFORSPEMP
  Left = 100
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pagamentos por Empresa'
  ClientHeight = 329
  ClientWidth = 688
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
  object Label1: TLabel
    Left = 13
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Empresa'
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
  object Label2: TLabel
    Left = 587
    Top = 26
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label3: TLabel
    Left = 508
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object Label4: TLabel
    Left = 18
    Top = 309
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Bolsa:'
  end
  object Label5: TLabel
    Left = 211
    Top = 309
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Cont.:'
  end
  object btEmail: TSpeedButton
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
    OnClick = btEmailClick
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
    Width = 441
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 13
    Top = 48
    Width = 660
    Height = 241
    DataSource = DmDTA.dsSPgto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edAno1: TEdit
    Left = 508
    Top = 22
    Width = 43
    Height = 21
    MaxLength = 4
    TabOrder = 2
    OnExit = edAno1Exit
    OnKeyPress = edAno1KeyPress
  end
  object edMes1: TEdit
    Left = 555
    Top = 22
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 3
    OnExit = edMes1Exit
    OnKeyPress = edAno1KeyPress
  end
  object edAno2: TEdit
    Left = 597
    Top = 22
    Width = 43
    Height = 21
    MaxLength = 4
    TabOrder = 4
    OnExit = edAno1Exit
    OnKeyPress = edAno1KeyPress
  end
  object edMes2: TEdit
    Left = 644
    Top = 22
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 5
    OnExit = edMes1Exit
    OnKeyPress = edAno1KeyPress
  end
  object btEnter: TBitBtn
    Left = 104
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 7
    TabStop = False
    OnClick = btEnterClick
  end
  object edTotBolsa: TEdit
    Left = 79
    Top = 306
    Width = 102
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 8
  end
  object edTotCont: TEdit
    Left = 273
    Top = 306
    Width = 102
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 9
  end
end
