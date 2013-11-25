inherited FORCEN: TFORCEN
  Left = 298
  Top = 193
  Caption = 'Entradas no Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label8: TLabel [0]
              Left = 9
              Top = 9
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label9: TLabel [1]
              Left = 67
              Top = 9
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            object edAno: TEdit
              Left = 8
              Top = 23
              Width = 48
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              MaxLength = 4
              ReadOnly = True
              TabOrder = 1
            end
            object edMes: TEdit
              Left = 67
              Top = 23
              Width = 37
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              MaxLength = 2
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 24
              Top = 24
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label2: TLabel
              Left = 88
              Top = 24
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            object Label3: TLabel
              Left = 152
              Top = 24
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label4: TLabel
              Left = 248
              Top = 24
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label5: TLabel
              Left = 24
              Top = 72
              Width = 32
              Height = 13
              Caption = 'Motivo'
            end
            object DBEdit1: TDBEdit
              Left = 23
              Top = 38
              Width = 50
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cai_ano'
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 87
              Top = 38
              Width = 50
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cai_mes'
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 247
              Top = 38
              Width = 122
              Height = 21
              DataField = 'cen_valor'
              TabOrder = 3
              OnKeyPress = DBEdit4KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 24
              Top = 87
              Width = 345
              Height = 82
              DataField = 'cen_motivo'
              MaxLength = 60
              TabOrder = 4
              OnKeyPress = DBMemo1KeyPress
            end
            object edDtCen: TMaskEdit
              Left = 153
              Top = 38
              Width = 82
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 2
              Text = '  /  /    '
              OnExit = edDtCenExit
              OnKeyPress = edDtCenKeyPress
            end
          end
        end
      end
    end
  end
  inherited usPrincipal1: TUpdateSQL
    Left = 193
    Top = 134
  end
end
