inherited FORETQ1: TFORETQ1
  Caption = 'Emiss'#227'o de Etiquetas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      object Label1: TLabel
        Left = 83
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Linha Inicial'
      end
      object Label2: TLabel
        Left = 183
        Top = 64
        Width = 63
        Height = 13
        Caption = 'Coluna Inicial'
      end
      object lblEtiquetas: TLabel
        Left = 283
        Top = 64
        Width = 44
        Height = 13
        Caption = 'Etiquetas'
      end
      object edLinha: TEdit
        Left = 83
        Top = 80
        Width = 70
        Height = 21
        TabOrder = 0
        Text = '1'
      end
      object edColuna: TEdit
        Left = 183
        Top = 80
        Width = 70
        Height = 21
        TabOrder = 1
        Text = '1'
      end
      object edEtiquetas: TEdit
        Left = 283
        Top = 80
        Width = 70
        Height = 21
        TabOrder = 2
        Text = '1'
      end
    end
  end
end
