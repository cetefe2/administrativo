inherited FORFORM: TFORFORM
  Left = 377
  Top = 197
  Caption = 'Formas de Tratamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited cbTipoPesquisa: TComboBox
              ItemIndex = 1
              Text = 'Nome'
              Items.Strings = (
                'C'#243'digo'
                'Nome')
            end
            inherited edParametro: TEdit
              OnExit = edParametroExit
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsFormaTratamento
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label2: TLabel
              Left = 16
              Top = 16
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
            end
            object Label3: TLabel
              Left = 16
              Top = 64
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
            end
            object DBEdit1: TDBEdit
              Left = 16
              Top = 32
              Width = 57
              Height = 21
              Color = 16053492
              DataField = 'Form_Cod'
              DataSource = DmDTA.dsFormaTratamento
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 16
              Top = 80
              Width = 365
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Form_nome'
              DataSource = DmDTA.dsFormaTratamento
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited quPrincipal: TQuery
    Left = 257
    Top = 214
  end
  inherited usPrincipal: TUpdateSQL
    Left = 289
    Top = 214
  end
end
