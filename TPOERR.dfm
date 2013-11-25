object FORERR: TFORERR
  Left = 274
  Top = 100
  Width = 693
  Height = 672
  Caption = 'Inconsist'#234'ncias Detectadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 80
      Height = 13
      Caption = 'Data do Servidor'
    end
    object edtData: TEdit
      Left = 96
      Top = 6
      Width = 121
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 0
      Text = 'edtData'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 605
    Width = 685
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      685
      33)
    object SpeedButton1: TSpeedButton
      Left = 607
      Top = 5
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
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
      OnClick = SpeedButton1Click
    end
  end
  object pcTCE: TcxPageControl
    Left = 0
    Top = 33
    Width = 685
    Height = 264
    ActivePage = tbsTCE
    Align = alTop
    TabOrder = 2
    ClientRectBottom = 264
    ClientRectRight = 685
    ClientRectTop = 24
    object tbsTCE: TcxTabSheet
      Caption = '1. Situa'#231#245'es do TCE'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 685
        Height = 210
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1Marcado: TcxGridDBColumn
            Caption = 'Corrigir'
            DataBinding.FieldName = 'Marcado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 25
          end
          object cxGrid1DBTableView1Tipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            SortIndex = 0
            SortOrder = soDescending
          end
          object cxGrid1DBTableView1tce_cod: TcxGridDBColumn
            Caption = 'TCE'
            DataBinding.FieldName = 'tce_cod'
            Options.Editing = False
            Width = 60
          end
          object cxGrid1DBTableView1est_nome: TcxGridDBColumn
            Caption = 'Estudante'
            DataBinding.FieldName = 'est_nome'
            Options.Editing = False
            Width = 227
          end
          object cxGrid1DBTableView1DescSituacaoAtual: TcxGridDBColumn
            Caption = 'Situa'#231#227'o Atual'
            DataBinding.FieldName = 'DescSituacaoAtual'
            Options.Editing = False
            Width = 88
          end
          object cxGrid1DBTableView1DescSituacaoDestino: TcxGridDBColumn
            Caption = 'Situa'#231#227'o Correta'
            DataBinding.FieldName = 'DescSituacaoDestino'
            Options.Editing = False
            Styles.Content = cxStyle1
          end
          object cxGrid1DBTableView1tce_datares: TcxGridDBColumn
            Caption = 'Dt.Rescis'#227'o'
            DataBinding.FieldName = 'tce_datares'
            Options.Editing = False
            Width = 76
          end
          object cxGrid1DBTableView1emp_nome: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'emp_nome'
            Options.Editing = False
            Width = 300
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 210
        Width = 685
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          685
          30)
        object btnMarcarTCE: TSpeedButton
          Left = 3
          Top = 3
          Width = 84
          Height = 25
          Caption = 'Marcar Todos'
          Flat = True
          OnClick = btnMarcarTCEClick
        end
        object btnDesmarcarTCE: TSpeedButton
          Left = 91
          Top = 3
          Width = 92
          Height = 25
          Caption = 'Desmarcar Todos'
          Flat = True
          OnClick = btnDesmarcarTCEClick
        end
        object btnAplicarCorrecaoTCE: TSpeedButton
          Left = 488
          Top = 3
          Width = 191
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Aplicar Corre'#231#245'es nos TCE'#180's'
          Flat = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          OnClick = btnAplicarCorrecaoTCEClick
        end
        object lblTotalTCE: TLabel
          Left = 232
          Top = 8
          Width = 6
          Height = 13
          Caption = '..'
        end
      end
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 297
    Width = 685
    Height = 308
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 3
    ClientRectBottom = 308
    ClientRectRight = 685
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = '2. Situa'#231#245'es do Estudante'
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 685
        Height = 254
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsEstudante
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Corrigir'
            DataBinding.FieldName = 'Marcado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 39
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Estudante'
            DataBinding.FieldName = 'est_nome'
            Options.Editing = False
            Width = 227
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'TCE'
            DataBinding.FieldName = 'tce_cod'
            Options.Editing = False
            Width = 60
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Situa'#231#227'o Atual'
            DataBinding.FieldName = 'DescSituacaoAtual'
            Options.Editing = False
            Width = 98
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Situa'#231#227'o Correta'
            DataBinding.FieldName = 'DescSituacaoDestino'
            Options.Editing = False
            Styles.Content = cxStyle1
            Width = 112
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Dt.Rescis'#227'o'
            DataBinding.FieldName = 'tce_datares'
            Options.Editing = False
            Width = 76
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'emp_nome'
            Options.Editing = False
            Width = 300
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 254
        Width = 685
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          685
          30)
        object SpeedButton2: TSpeedButton
          Left = 3
          Top = 3
          Width = 84
          Height = 25
          Caption = 'Marcar Todos'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 91
          Top = 3
          Width = 92
          Height = 25
          Caption = 'Desmarcar Todos'
          Flat = True
          OnClick = SpeedButton3Click
        end
        object btnAplicarCorrecaoEstudante: TSpeedButton
          Left = 488
          Top = 3
          Width = 191
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Aplicar Corre'#231#245'es nos Estudantes'
          Enabled = False
          Flat = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          OnClick = btnAplicarCorrecaoEstudanteClick
        end
        object lblTotalEstudante: TLabel
          Left = 232
          Top = 8
          Width = 6
          Height = 13
          Caption = '..'
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pDados'
    AfterOpen = cdsDadosAfterOpen
    Left = 120
    Top = 24
    object cdsDadosTipo: TStringField
      FieldName = 'Tipo'
      Size = 11
    end
    object cdsDadosest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object cdsDadosDescSituacaoAtual: TStringField
      FieldName = 'DescSituacaoAtual'
      Size = 15
    end
    object cdsDadosDescSituacaoDestino: TStringField
      FieldName = 'DescSituacaoDestino'
      Size = 15
    end
    object cdsDadosSituacaoAtual: TStringField
      FieldName = 'SituacaoAtual'
      FixedChar = True
      Size = 1
    end
    object cdsDadosSituacaoDestino: TIntegerField
      FieldName = 'SituacaoDestino'
    end
    object cdsDadostce_datares: TDateTimeField
      FieldName = 'tce_datares'
    end
    object cdsDadostce_cod: TIntegerField
      FieldName = 'tce_cod'
    end
    object cdsDadosemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object cdsDadosMarcado: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Marcado'
      Size = 1
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 152
    Top = 24
  end
  object pDados: TDataSetProvider
    DataSet = DmDTA.quInconsistenciaTCE
    Left = 88
    Top = 24
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 312
    Top = 16
  end
  object pEstudante: TDataSetProvider
    DataSet = DmDTA.quInconsistenciaEstudante
    Left = 16
    Top = 384
  end
  object cdsEstudante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pEstudante'
    AfterOpen = cdsEstudanteAfterOpen
    Left = 48
    Top = 384
    object cdsEstudanteMarcado: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Marcado'
      Size = 1
    end
    object cdsEstudanteest_cod: TIntegerField
      FieldName = 'est_cod'
    end
    object cdsEstudantetce_cod: TIntegerField
      FieldName = 'tce_cod'
    end
    object cdsEstudanteest_pgtolib_atual: TStringField
      FieldName = 'est_pgtolib_atual'
      Size = 2
    end
    object cdsEstudanteest_pgtolib_novo: TStringField
      FieldName = 'est_pgtolib_novo'
      Size = 2
    end
    object cdsEstudanteest_nome: TStringField
      FieldName = 'est_nome'
      Size = 50
    end
    object cdsEstudanteDescSituacaoAtual: TStringField
      FieldName = 'DescSituacaoAtual'
      Size = 40
    end
    object cdsEstudanteDescSituacaoDestino: TStringField
      FieldName = 'DescSituacaoDestino'
      Size = 40
    end
    object cdsEstudanteemp_nome: TStringField
      FieldName = 'emp_nome'
      Size = 150
    end
    object cdsEstudantetce_datares: TDateTimeField
      FieldName = 'tce_datares'
    end
  end
  object dsEstudante: TDataSource
    DataSet = cdsEstudante
    Left = 80
    Top = 384
  end
end
