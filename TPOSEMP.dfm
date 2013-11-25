object FORSEMP: TFORSEMP
  Left = 247
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estagi'#225'rios por Empresa - Detalhado'
  ClientHeight = 383
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = btEnterClick
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
    Height = 350
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
    Top = 355
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
    Top = 355
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
    Top = 361
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total de Ativos: '
  end
  object Label3: TLabel
    Left = 12
    Top = 87
    Width = 68
    Height = 13
    Caption = 'Estagi'#225'rios em'
  end
  object Label4: TLabel
    Left = 164
    Top = 361
    Width = 106
    Height = 13
    Caption = 'Total de Rescindidos: '
  end
  object btExportar: TSpeedButton
    Left = 613
    Top = 355
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
  object Label5: TLabel
    Left = 101
    Top = 87
    Width = 70
    Height = 13
    Caption = 'Tipo Vestibular'
  end
  object Label6: TLabel
    Left = 13
    Top = 47
    Width = 27
    Height = 13
    Caption = 'Curso'
  end
  object Label7: TLabel
    Left = 216
    Top = 87
    Width = 26
    Height = 13
    Caption = 'N'#237'vel'
  end
  object Label8: TLabel
    Left = 346
    Top = 87
    Width = 22
    Height = 13
    Caption = #193'rea'
  end
  object Label9: TLabel
    Left = 517
    Top = 87
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object btLimpar: TSpeedButton
    Left = 459
    Top = 355
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
  object Label10: TLabel
    Left = 451
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Grupo'
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
    Width = 379
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 13
    Top = 132
    Width = 740
    Height = 211
    DataSource = DmDTA.dsEstEmp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btEnter: TBitBtn
    Left = 80
    Top = 443
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 14
    TabStop = False
    OnClick = btEnterClick
  end
  object edAno: TEdit
    Left = 12
    Top = 101
    Width = 48
    Height = 21
    MaxLength = 4
    TabOrder = 2
    OnEnter = edAnoEnter
    OnExit = edAnoExit
    OnKeyPress = edAnoKeyPress
  end
  object edMes: TEdit
    Left = 64
    Top = 101
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 3
    OnExit = edMesExit
    OnKeyPress = edAnoKeyPress
  end
  object edTotEst: TEdit
    Left = 82
    Top = 357
    Width = 59
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 9
  end
  object edTotResc: TEdit
    Left = 274
    Top = 357
    Width = 59
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 10
  end
  object cbVestibular: TComboBox
    Left = 101
    Top = 101
    Width = 108
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnChange = cbVestibularChange
    Items.Strings = (
      'Ver'#227'o'
      'Inverno'
      'Todos')
  end
  object edCurCod: TEdit
    Left = 13
    Top = 61
    Width = 44
    Height = 21
    Hint = 'Pressione F2 ou duplo click para abrir o curso'
    Color = clInfoBk
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnDblClick = edCurCodDblClick
    OnExit = edCurCodExit
    OnKeyDown = edCurCodKeyDown
  end
  object edCurNome: TEdit
    Left = 62
    Top = 61
    Width = 547
    Height = 21
    TabStop = False
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 12
  end
  object cbNivel: TComboBox
    Left = 215
    Top = 101
    Width = 125
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbVestibularChange
    Items.Strings = (
      'M'#233'dio'
      'T'#233'cnico'
      'P'#243's-M'#233'dio'
      'Superior'
      'P'#243's-Gradua'#231#227'o')
  end
  object cbArea: TComboBox
    Left = 345
    Top = 101
    Width = 152
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    OnChange = cbVestibularChange
    Items.Strings = (
      'Humanas'
      'Exatas'
      'Biol'#243'gicas')
  end
  object cbMenores: TCheckBox
    Left = 660
    Top = 101
    Width = 81
    Height = 17
    Caption = 'Menores 18'
    TabOrder = 8
    OnClick = cbVestibularChange
  end
  object cbPeriodo: TComboBox
    Left = 516
    Top = 101
    Width = 132
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 7
    OnChange = cbVestibularChange
    Items.Strings = (
      'Manh'#227
      'Tarde'
      'Noite'
      'Integral')
  end
  object chkLiberados: TCheckBox
    Left = 632
    Top = 64
    Width = 113
    Height = 17
    Caption = 'Suprimir Liberados'
    TabOrder = 15
    OnClick = edEmpCodExit
  end
  object EdGrupoCod: TEdit
    Left = 448
    Top = 22
    Width = 57
    Height = 21
    TabOrder = 16
    OnDblClick = EdGrupoCodDblClick
    OnExit = EdGrupoCodExit
  end
  object EdGrupoNome: TEdit
    Left = 512
    Top = 22
    Width = 233
    Height = 21
    Color = cl3DLight
    TabOrder = 17
  end
  object Button1: TButton
    Left = 368
    Top = 355
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 18
    Visible = False
    OnClick = Button1Click
  end
end
