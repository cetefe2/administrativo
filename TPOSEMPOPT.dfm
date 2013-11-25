object FORSEMPOPT: TFORSEMPOPT
  Left = 423
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Oportunidades por Empresas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 1
    Width = 612
    Height = 314
  end
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
    Left = 17
    Top = 319
    Width = 69
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
    OnClick = btProcessarClick
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Pesquisa por: '
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 114
    Width = 595
    Height = 194
    DataSource = DmDTA.dsOptEmpresa
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
  object Notebook1: TNotebook
    Left = 83
    Top = 17
    Width = 523
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page1'
      object edPar: TEdit
        Left = 4
        Top = 6
        Width = 512
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnExit = edParExit
        OnKeyPress = edParKeyPress
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page2'
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 0
        Width = 545
        Height = 29
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          'Ind'#250'stria'
          'Com'#233'rcio'
          'Servi'#231'os')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page3'
      object RadioGroup2: TRadioGroup
        Left = 0
        Top = 0
        Width = 545
        Height = 29
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Pequeno'
          'M'#233'dio'
          'Grande'
          'Multinac.')
        TabOrder = 0
        OnClick = RadioGroup2Click
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page4'
      object mePesqCnpj: TMaskEdit
        Left = 6
        Top = 6
        Width = 122
        Height = 21
        EditMask = '99.999.999/9999-99;0; '
        MaxLength = 18
        TabOrder = 0
        OnExit = mePesqCnpjExit
      end
    end
  end
  object cbTipoPesquisa: TComboBox
    Left = 8
    Top = 23
    Width = 76
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbTipoPesquisaChange
    Items.Strings = (
      'C'#243'digo'
      'Nome'
      'Ramo'
      'Porte'
      'Endere'#231'o'
      'Bairro'
      'Cidade'
      'CNPJ'
      'Estado')
  end
  object Memo1: TMemo
    Left = 120
    Top = 500
    Width = 417
    Height = 97
    Lines.Strings = (
      'SELECT     '
      ' Vaga.Emp_cod,'
      ' Vaga.Vag_cod,'
      ' Empresa.Emp_nome,'
      ' Estudante.Est_nome,'
      ' Curso.cur_nome,'
      ' Estudante.Est_fone1,'
      ' Estudante.Est_fone2, '
      ' Estudante.pcu_anoatual,'
      'case'
      ' when  Estudante.pcu_peratual = 0 then '#39'Ano'#39
      ' when  Estudante.pcu_peratual = 1 then '#39'Semestre'#39
      'end Periodo,'
      'case'
      '  when Estudante.pcu_turno = 0 then '#39'Manh'#227#39
      '  when Estudante.pcu_turno = 1 then '#39'Tarde'#39
      '  when Estudante.pcu_turno = 2 then '#39'Noite'#39
      '  when Estudante.pcu_turno = 3 then '#39'Manh'#227' / Tarde'#39
      '  when Estudante.pcu_turno = 4 then '#39'Manh'#227' / Noite'#39
      '  when Estudante.pcu_turno = 5 then '#39'Tarde / Noite'#39
      ' end Turno,'
      ''
      ' case'
      '   when  Encaminhamento.Eva_resultado  = 0 then '#39'Em Espera'#39
      '   when  Encaminhamento.Eva_resultado  =    1 then '#39'Reprovado'#39
      '   when  Encaminhamento.Eva_resultado  =   2 then  '#39'Aprovado'#39
      '   when  Encaminhamento.Eva_resultado  =   3 then '#39'Desistiu'#39
      
        '   when  Encaminhamento.Eva_resultado  =   4 then '#39'Selecionado p' +
        'ela Empresa'#39
      
        '   when  Encaminhamento.Eva_resultado  =   5 then  '#39'N'#227'o entrevis' +
        'tado pelo Cliente'#39
      '   when  Encaminhamento.Eva_resultado  =   6 then  '#39'STANDBY'#39
      'end Resultado,'
      ' Vaga.Vag_setor,'
      ' Vaga.Vag_dataabertura,'
      ' Encaminhamento.Eva_dataenc,'
      ' Vaga.Vag_qtde,'
      ' Vaga.Vag_qtdepreenc '
      'FROM         Vaga INNER JOIN'
      
        '                      Empresa ON Vaga.Emp_cod = Empresa.Emp_cod ' +
        'INNER JOIN'
      
        '                      Encaminhamento ON Vaga.Vag_cod = Encaminha' +
        'mento.Vag_cod INNER JOIN'
      
        '                      Estudante ON Encaminhamento.Est_cod = Estu' +
        'dante.est_cod INNER JOIN'
      '                      Curso ON Estudante.cur_cod = Curso.cur_cod')
    ScrollBars = ssBoth
    TabOrder = 4
    Visible = False
  end
  object rgStatus: TRadioGroup
    Left = 7
    Top = 48
    Width = 599
    Height = 67
    Caption = '| Status do Encaminhamento |'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 7
    Items.Strings = (
      'Em Espera'
      'Reprovado'
      'Aprovado'
      'Desistiu'
      'Selecionado pela Empresa'
      'N'#227'o Entrevistado pelo Cliente'
      'STANDBY'
      'Todas')
    ParentFont = False
    TabOrder = 5
    OnClick = rgStatusClick
  end
end
