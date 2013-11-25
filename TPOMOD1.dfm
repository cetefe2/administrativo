object FORMOD1: TFORMOD1
  Left = 290
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 228
  ClientWidth = 452
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
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 209
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object btOk: TSpeedButton
      Left = 369
      Top = 176
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
      Left = 8
      Top = 8
      Width = 436
      Height = 165
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object btEnter: TBitBtn
      Left = 80
      Top = 344
      Width = 75
      Height = 25
      Caption = 'Enter'
      Default = True
      TabOrder = 1
      TabStop = False
      OnClick = btEnterClick
    end
  end
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 209
    Width = 452
    Height = 19
    Panels = <>
  end
end
