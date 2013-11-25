object FORSTEST: TFORSTEST
  Left = 339
  Top = 135
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Totais de Estagi'#225'rios'
  ClientHeight = 488
  ClientWidth = 606
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
    Width = 604
    Height = 448
  end
  object btFechar: TSpeedButton
    Left = 523
    Top = 455
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
  object btExportar: TSpeedButton
    Left = 446
    Top = 455
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
  object Label10: TLabel
    Left = 7
    Top = 458
    Width = 99
    Height = 13
    Caption = 'Total de Estagi'#225'rios: '
  end
  object btLimpar: TSpeedButton
    Left = 369
    Top = 455
    Width = 77
    Height = 25
    Hint = 'Limpar Campos - Tecla F5'
    Caption = 'Limpar'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btLimparClick
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 182
    Width = 577
    Height = 251
    DataSource = DmDTE.dsTotaisCadastro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 1
    TabStop = False
    OnClick = btEnterClick
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 6
    Width = 580
    Height = 171
    Caption = 'Crit'#233'rios de Consulta'
    TabOrder = 0
    object Label3: TLabel
      Left = 370
      Top = 52
      Width = 28
      Height = 13
      Caption = 'Turno'
    end
    object btPesquisar: TSpeedButton
      Left = 490
      Top = 135
      Width = 76
      Height = 25
      Hint = 'Pesquisar - Tecla F7'
      Caption = 'Pesquisar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btPesquisarClick
    end
    object Label1: TLabel
      Left = 35
      Top = 52
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#237'vel'
    end
    object Label11: TLabel
      Left = 39
      Top = 77
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = #193'rea'
    end
    object Label2: TLabel
      Left = 13
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Institui'#231#227'o'
    end
    object Label4: TLabel
      Left = 34
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Curso'
    end
    object Label8: TLabel
      Left = 359
      Top = 77
      Width = 40
      Height = 13
      Caption = 'Inclus'#227'o'
    end
    object Label7: TLabel
      Left = 481
      Top = 78
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label5: TLabel
      Left = 19
      Top = 140
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o'
    end
    object Label6: TLabel
      Left = 470
      Top = 104
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ano'
    end
    object rbgSituacao: TRadioGroup
      Left = 66
      Top = 124
      Width = 401
      Height = 38
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Estagiando'
        'N'#227'o Estagiando')
      TabOrder = 10
    end
    object cboNivel: TComboBox
      Left = 65
      Top = 48
      Width = 287
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'M'#233'dio'
        'T'#233'cnico'
        'P'#243's-M'#233'dio'
        'Superior'
        'P'#243's-Gradua'#231#227'o')
    end
    object cboArea: TComboBox
      Left = 65
      Top = 74
      Width = 287
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Humanas'
        'Exatas'
        'Biol'#243'gicas')
    end
    object cboTurno: TComboBox
      Left = 402
      Top = 48
      Width = 166
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Manh'#227
        'Tarde'
        'Noite'
        'Manh'#227' / Tarde'
        'Manh'#227' / Noite'
        'Tarde / Noite')
    end
    object edInstCod: TEdit
      Left = 65
      Top = 23
      Width = 48
      Height = 21
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = edInstCodDblClick
      OnExit = edInstCodExit
      OnKeyDown = edInstCodKeyDown
    end
    object edInstNome: TEdit
      Left = 118
      Top = 23
      Width = 449
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
    object edCurCod: TEdit
      Left = 65
      Top = 100
      Width = 46
      Height = 21
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnDblClick = edCurCodDblClick
      OnExit = edCurCodExit
      OnKeyDown = edCurCodKeyDown
    end
    object edCurNome: TEdit
      Left = 114
      Top = 100
      Width = 348
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 8
    end
    object meDataIni: TMaskEdit
      Left = 403
      Top = 74
      Width = 72
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object meDataFim: TMaskEdit
      Left = 494
      Top = 74
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object edAno: TEdit
      Left = 495
      Top = 100
      Width = 72
      Height = 21
      TabOrder = 9
    end
  end
  object edTotalEstagiarios: TEdit
    Left = 107
    Top = 455
    Width = 65
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 3
  end
end
