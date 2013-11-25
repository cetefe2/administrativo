inherited FORPEND: TFORPEND
  Left = 307
  Top = 183
  Caption = 'Cadastro de Pendencias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 8
              Height = 177
              DataSource = DmDTA.dsPendencias
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 24
              Top = 24
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 24
              Top = 64
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
            end
            object DBEdit1: TDBEdit
              Left = 24
              Top = 40
              Width = 89
              Height = 21
              Color = 16053492
              DataField = 'Pend_cod'
              DataSource = DmDTA.dsPendencias
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 24
              Top = 80
              Width = 352
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Pend_descricao'
              DataSource = DmDTA.dsPendencias
              TabOrder = 1
            end
          end
        end
      end
    end
  end
end
