inherited FORDSP: TFORDSP
  Left = 194
  Top = 208
  Caption = 'Cadastro de Despesas'
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
              DataSource = DmDTA.dsDespesa
              TabOrder = 1
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label2: TLabel
              Left = 26
              Top = 36
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'Despesa'
            end
            object Label3: TLabel
              Left = 27
              Top = 90
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome'
            end
            object Label4: TLabel
              Left = 110
              Top = 37
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Dia Lanc.'
            end
            object DBEdit1: TDBEdit
              Left = 27
              Top = 51
              Width = 52
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'dsp_cod'
              DataSource = DmDTA.dsDespesa
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 27
              Top = 105
              Width = 342
              Height = 21
              CharCase = ecUpperCase
              DataField = 'dsp_nome'
              DataSource = DmDTA.dsDespesa
              TabOrder = 2
              OnKeyPress = DBEdit2KeyPress
            end
            object DBEdit3: TDBEdit
              Left = 109
              Top = 51
              Width = 57
              Height = 21
              CharCase = ecUpperCase
              DataField = 'dsp_dialanc'
              DataSource = DmDTA.dsDespesa
              MaxLength = 2
              TabOrder = 1
            end
          end
        end
      end
    end
  end
end
