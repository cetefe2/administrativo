object FORSEL5: TFORSEL5
  Left = 441
  Top = 242
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o'
  ClientHeight = 155
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 136
    Width = 247
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 247
    Height = 136
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Bevel1: TBevel
      Left = 15
      Top = 7
      Width = 218
      Height = 87
    end
    object Label1: TLabel
      Left = 27
      Top = 18
      Width = 71
      Height = 11
      Caption = 'Informe a data:'
    end
    object btAtualizar: TSpeedButton
      Left = 92
      Top = 94
      Width = 71
      Height = 26
      Hint = 'Atualizar - Tecla F3'
      Caption = '&Executar'
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
      OnClick = btAtualizarClick
    end
    object btFechar: TSpeedButton
      Left = 163
      Top = 94
      Width = 71
      Height = 26
      Hint = 'Fechar - Tecla F4'
      Caption = '&Fechar'
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
      OnClick = btFecharClick
    end
    object meData: TMaskEdit
      Left = 28
      Top = 31
      Width = 65
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object ordem: TRadioGroup
      Left = 26
      Top = 57
      Width = 193
      Height = 33
      Caption = 'Ordem'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        '1'#186
        '2'#186' '
        '3'#186' '
        '4'#186' ')
      TabOrder = 1
    end
    object Tipo: TRadioGroup
      Left = 128
      Top = 13
      Width = 90
      Height = 48
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Data'
        'Ordem')
      TabOrder = 2
    end
  end
end
