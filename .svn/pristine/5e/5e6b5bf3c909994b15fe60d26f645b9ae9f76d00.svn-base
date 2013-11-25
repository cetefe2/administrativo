inherited FORRESC: TFORRESC
  Left = 228
  Top = 150
  Caption = 'Envio de E-Mail - Estagi'#225'rios a Rescindir'
  ClientHeight = 282
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 263
    inherited btOk: TSpeedButton
      Top = 230
    end
    object btCancelar: TSpeedButton [1]
      Left = 295
      Top = 230
      Width = 74
      Height = 25
      Hint = 'Cancelar - F4'
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
    inherited Panel2: TPanel
      Height = 217
      object Label2: TLabel
        Left = 11
        Top = 10
        Width = 92
        Height = 13
        Caption = 'Nome do Estagi'#225'rio'
      end
      object Label3: TLabel
        Left = 11
        Top = 90
        Width = 102
        Height = 13
        Caption = 'Nome do Destinat'#225'rio'
      end
      object Label1: TLabel
        Left = 11
        Top = 130
        Width = 103
        Height = 13
        Caption = 'E-Mail do Destinat'#225'rio'
      end
      object Label4: TLabel
        Left = 11
        Top = 170
        Width = 95
        Height = 13
        Caption = 'Gestor do Estagi'#225'rio'
      end
      object Label5: TLabel
        Left = 11
        Top = 50
        Width = 87
        Height = 13
        Caption = 'Nome da Empresa'
      end
      object DBEdit4: TDBEdit
        Left = 11
        Top = 25
        Width = 414
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'est_nome'
        DataSource = DmDTA.dsEstResc
        ReadOnly = True
        TabOrder = 0
      end
      object edEMailDestinatario: TEdit
        Left = 11
        Top = 145
        Width = 414
        Height = 21
        TabOrder = 2
        OnKeyPress = edEMailDestinatarioKeyPress
      end
      object edGestorEstagiario: TEdit
        Left = 11
        Top = 185
        Width = 414
        Height = 21
        TabOrder = 3
        OnKeyPress = edNomeDestinatarioKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 11
        Top = 65
        Width = 414
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'emp_nome'
        DataSource = DmDTA.dsEstResc
        ReadOnly = True
        TabOrder = 4
      end
      object edNomeDestinatario: TEdit
        Left = 11
        Top = 105
        Width = 414
        Height = 21
        TabOrder = 1
        OnKeyPress = edEMailDestinatarioKeyPress
      end
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 263
  end
end
