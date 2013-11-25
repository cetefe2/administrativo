object FrmLibera: TFrmLibera
  Left = 474
  Top = 242
  Width = 315
  Height = 131
  Caption = 'Libera'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 165
    Top = 33
    Width = 12
    Height = 13
    Caption = '[  ]'
  end
  object Label4: TLabel
    Left = 62
    Top = 15
    Width = 34
    Height = 16
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 169
    Top = 32
    Width = 6
    Height = 16
    Alignment = taCenter
    Caption = '  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 110
    Top = 15
    Width = 36
    Height = 16
    Caption = '[Enter]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object senha: TEdit
    Left = 62
    Top = 31
    Width = 103
    Height = 19
    Ctl3D = False
    MaxLength = 12
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 0
    Text = 'senha'
    OnKeyPress = senhaKeyPress
  end
  object ok: TBitBtn
    Left = 62
    Top = 61
    Width = 75
    Height = 25
    Enabled = False
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 166
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
end
