object FORPROMALUNO: TFORPROMALUNO
  Left = 423
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Promover Alunos'
  ClientHeight = 344
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btFechar: TSpeedButton
    Left = 544
    Top = 319
    Width = 67
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
    Left = 489
    Top = 21
    Width = 73
    Height = 22
    Hint = 'Exportar Dados - Tecla F6'
    Caption = 'Promover'
    Flat = True
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btEmailClick
  end
  object btProcessar: TSpeedButton
    Left = 46
    Top = 345
    Width = 76
    Height = 25
    Hint = 'Processar Dados'
    Caption = 'Processar'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
      C43337777777777777F33444881B188444333777F3737337773333308881FF70
      33333337F3373337F3333330888BF770333333373F33F337333333330881F703
      3333333373F73F7333333333308B703333333333373F77333333333333080333
      3333333333777FF333333333301F103333333333377777FF3333333301B1F103
      333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
      333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
      C43337777777777777F334444444444444333777777777777733}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Nivel'
  end
  object Label1: TLabel
    Left = 168
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Ano Letivo'
  end
  object Label3: TLabel
    Left = 256
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Semestre'
  end
  object SpeedButton1: TSpeedButton
    Left = 408
    Top = 21
    Width = 73
    Height = 22
    Caption = 'Pesquisar'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 51
    Width = 595
    Height = 256
    DataSource = DmDTA.dtspromocao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btEnter: TBitBtn
    Left = 240
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Enter'
    Default = True
    TabOrder = 1
    TabStop = False
    OnClick = btEnterClick
  end
  object Memo1: TMemo
    Left = 120
    Top = 500
    Width = 417
    Height = 213
    Lines.Strings = (
      
        'SELECT     Estudante.Est_nome , Estudante.est_cod , Curso.cur_no' +
        'me, Curso.cur_nivel, Tce.Tce_data, Tce.Tce_cod, Tce.Tce_situacao' +
        ', '
      
        '                      Estudante.cur_cod, Estudante.est_situacao,' +
        ' Estudante.est_cursoano, Estudante.est_cursoSem,pcu_anoatual, '
      '                  case '
      '                    when pcu_peratual = 0  then '#39'Ano'#39' '
      '                    when pcu_peratual = 1  then '#39'Semestre'#39' '
      '                  end Tipo                  '
      'FROM         Estudante,tce,curso  ')
    ScrollBars = ssBoth
    TabOrder = 2
    Visible = False
  end
  object cbxCurso: TComboBox
    Left = 7
    Top = 22
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'M'#233'dio'
      'P'#243's-M'#233'dio'
      'T'#233'cnico'
      'Superior'
      'P'#243's-Gradua'#231#227'o')
  end
  object Ano: TEdit
    Left = 165
    Top = 22
    Width = 76
    Height = 21
    TabOrder = 4
  end
  object CbxSemestre: TComboBox
    Left = 256
    Top = 22
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      ''
      '1'#186' semestre'
      '2'#186' semestre')
  end
end
