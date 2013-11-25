inherited FOREST6: TFOREST6
  Left = 252
  Top = 266
  Caption = 'Palavras Chave do Estudante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 9
              Height = 178
              DataSource = DmDTA.dsPerPChave
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label10: TLabel
              Left = 27
              Top = 50
              Width = 36
              Height = 13
              Caption = 'Palavra'
            end
            object Label11: TLabel
              Left = 29
              Top = 98
              Width = 55
              Height = 13
              Caption = 'Experi'#234'ncia'
            end
            object DBEdit14: TDBEdit
              Left = 27
              Top = 65
              Width = 343
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Pal_nome'
              DataSource = DmDTA.dsPerPChave
              TabOrder = 0
              OnKeyPress = DBEdit14KeyPress
            end
            object DBEdit16: TDBEdit
              Left = 29
              Top = 113
              Width = 51
              Height = 21
              DataField = 'Pal_experiencia'
              DataSource = DmDTA.dsPerPChave
              TabOrder = 1
            end
            object cbPalPerExp: TComboBox
              Left = 86
              Top = 113
              Width = 69
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 2
              OnClick = cbPalPerExpClick
              Items.Strings = (
                'Dias'
                'Meses'
                'Anos')
            end
          end
        end
      end
    end
  end
end
