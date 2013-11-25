object FORSEST: TFORSEST
  Left = 68
  Top = 60
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Estudantes'
  ClientHeight = 417
  ClientWidth = 701
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
    Width = 700
    Height = 384
  end
  object btFechar: TSpeedButton
    Left = 627
    Top = 391
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
    Left = 550
    Top = 391
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
    Left = 5
    Top = 394
    Width = 99
    Height = 13
    Caption = 'Total de Estagi'#225'rios: '
  end
  object btLimpar: TSpeedButton
    Left = 473
    Top = 391
    Width = 77
    Height = 25
    Hint = 'Limpar Campos'
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
    Top = 158
    Width = 677
    Height = 217
    DataSource = DmDTA.dsConsEstudante
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 485
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
    Width = 676
    Height = 143
    Caption = 'Crit'#233'rios de Consulta'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 18
      Width = 48
      Height = 13
      Caption = 'Institui'#231#227'o'
    end
    object Label2: TLabel
      Left = 13
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Curso'
    end
    object Label4: TLabel
      Left = 91
      Top = 94
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object Label3: TLabel
      Left = 125
      Top = 94
      Width = 28
      Height = 13
      Caption = 'Turno'
    end
    object Label5: TLabel
      Left = 13
      Top = 94
      Width = 46
      Height = 13
      Caption = 'Vestibular'
    end
    object Label9: TLabel
      Left = 210
      Top = 95
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label6: TLabel
      Left = 310
      Top = 95
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object btPesquisar: TSpeedButton
      Left = 587
      Top = 106
      Width = 76
      Height = 25
      Hint = 'Pesquisar'
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
    object Label7: TLabel
      Left = 495
      Top = 113
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label8: TLabel
      Left = 417
      Top = 95
      Width = 40
      Height = 13
      Caption = 'Inclus'#227'o'
    end
    object edInstCod: TEdit
      Left = 13
      Top = 32
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
      Left = 66
      Top = 32
      Width = 596
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 7
    end
    object edCurCod: TEdit
      Left = 13
      Top = 70
      Width = 48
      Height = 21
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnDblClick = edCurCodDblClick
      OnExit = edCurCodExit
      OnKeyDown = edCurCodKeyDown
    end
    object edCurNome: TEdit
      Left = 66
      Top = 70
      Width = 596
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 8
    end
    object cboTurno: TComboBox
      Left = 126
      Top = 109
      Width = 78
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Manh'#227
        'Tarde'
        'Noite'
        'Manh'#227' / Tarde'
        'Manh'#227' / Noite'
        'Tarde / Noite')
    end
    object cbPerCurInicio: TComboBox
      Left = 13
      Top = 109
      Width = 71
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Ver'#227'o'
        'Inverno')
    end
    object edAno: TEdit
      Left = 89
      Top = 109
      Width = 31
      Height = 21
      TabOrder = 3
    end
    object cbsexo: TComboBox
      Left = 210
      Top = 109
      Width = 94
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Masculino'
        'Feminino')
    end
    object cbSituacao: TComboBox
      Left = 310
      Top = 109
      Width = 101
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'N'#227'o Estagiando'
        'Estagiando'
        'Ex-Estagi'#225'rio')
    end
    object meDataIni: TMaskEdit
      Left = 417
      Top = 109
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 9
      Text = '  /  /    '
    end
    object meDataFim: TMaskEdit
      Left = 507
      Top = 109
      Width = 73
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 10
      Text = '  /  /    '
    end
  end
  object edTotalEstagiarios: TEdit
    Left = 105
    Top = 391
    Width = 65
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 3
  end
end
