object FOREML: TFOREML
  Left = 283
  Top = 161
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Envio de E-Mail'
  ClientHeight = 313
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 294
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object btCancelar: TSpeedButton
      Left = 422
      Top = 257
      Width = 79
      Height = 25
      Hint = 'Cancelar - Tecla F4'
      Caption = 'Cancelar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btCancelarClick
    end
    object btOk: TSpeedButton
      Left = 348
      Top = 257
      Width = 74
      Height = 25
      Hint = 'OK - F3'
      Caption = 'OK'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = btOkClick
    end
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 491
      Height = 242
      BevelOuter = bvNone
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 491
        Height = 242
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Destinat'#225'rios'
          object lblEMail: TLabel
            Left = 10
            Top = 6
            Width = 106
            Height = 13
            Caption = 'E-Mail do Destinat'#225'rio:'
          end
          object Label2: TLabel
            Left = 10
            Top = 46
            Width = 41
            Height = 13
            Caption = 'Assunto:'
          end
          object Label3: TLabel
            Left = 10
            Top = 85
            Width = 60
            Height = 13
            Caption = 'Corpo E-Mail'
          end
          object edPara: TEdit
            Left = 10
            Top = 21
            Width = 459
            Height = 21
            CharCase = ecLowerCase
            MaxLength = 50
            TabOrder = 0
          end
          object edAssunto: TEdit
            Left = 10
            Top = 61
            Width = 460
            Height = 21
            MaxLength = 50
            TabOrder = 1
          end
          object MeCorpo: TRichEdit
            Left = 10
            Top = 101
            Width = 459
            Height = 102
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Arquivos Anexos'
          ImageIndex = 2
          object Label8: TLabel
            Left = 290
            Top = 12
            Width = 91
            Height = 13
            Caption = 'Arquivos Anexados'
          end
          object Label9: TLabel
            Left = 10
            Top = 12
            Width = 86
            Height = 13
            Caption = 'Arquivos da Pasta'
          end
          object MeArquivos: TListBox
            Left = 288
            Top = 28
            Width = 183
            Height = 180
            ItemHeight = 13
            TabOrder = 0
            OnDblClick = MeArquivosDblClick
          end
          object FileListBox1: TFileListBox
            Left = 160
            Top = 28
            Width = 121
            Height = 180
            ItemHeight = 13
            TabOrder = 1
            OnDblClick = FileListBox1DblClick
          end
          object DirectoryListBox1: TDirectoryListBox
            Left = 9
            Top = 53
            Width = 142
            Height = 153
            ItemHeight = 16
            TabOrder = 2
            OnChange = DirectoryListBox1Change
          end
          object DriveComboBox1: TDriveComboBox
            Left = 9
            Top = 28
            Width = 145
            Height = 19
            TabOrder = 3
            OnChange = DriveComboBox1Change
          end
        end
      end
    end
    object btEnter: TBitBtn
      Left = 160
      Top = 462
      Width = 75
      Height = 25
      Caption = 'Enter'
      Default = True
      TabOrder = 1
      TabStop = False
    end
    object MePara: TMemo
      Left = 576
      Top = 24
      Width = 424
      Height = 51
      TabStop = False
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object MeComCopia: TMemo
      Left = 576
      Top = 120
      Width = 424
      Height = 51
      TabStop = False
      TabOrder = 3
    end
    object MeComCopiaOculta: TMemo
      Left = 576
      Top = 208
      Width = 424
      Height = 51
      TabStop = False
      TabOrder = 4
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 294
    Width = 514
    Height = 19
    Panels = <>
  end
end
