inherited FORIDI: TFORIDI
  Left = 209
  Top = 188
  Caption = 'Tabela de Idiomas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited cbTipoPesquisa: TComboBox
              TabOrder = 2
              Items.Strings = (
                'C'#243'digo'
                'Nome')
            end
            inherited edParametro: TEdit
              TabOrder = 0
              OnExit = edParametroExit
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsIdioma
              TabOrder = 1
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label2: TLabel
              Left = 27
              Top = 48
              Width = 36
              Height = 13
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
            end
            object Label3: TLabel
              Left = 32
              Top = 80
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
            end
            object DBEdit1: TDBEdit
              Left = 69
              Top = 45
              Width = 51
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Idi_cod'
              DataSource = DmDTA.dsIdioma
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 69
              Top = 77
              Width = 300
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Idi_nome'
              DataSource = DmDTA.dsIdioma
              TabOrder = 1
              OnKeyPress = DBEdit2KeyPress
            end
          end
        end
      end
    end
  end
end
