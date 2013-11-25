inherited FORVAT: TFORVAT
  Left = 270
  Top = 246
  Caption = 'Atividades da Vaga'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label1: TLabel [0]
              Left = 8
              Top = 10
              Width = 25
              Height = 13
              Caption = 'Vaga'
            end
            inherited DBGrid1: TDBGrid
              Top = 32
              Height = 154
              DataSource = DmDTA.dsVagaAtividade
            end
            object edVagCod: TEdit
              Left = 40
              Top = 7
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 1
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            inherited Bevel3: TBevel
              Height = 178
            end
            object Label2: TLabel
              Left = 24
              Top = 39
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vaga'
            end
            object Label3: TLabel
              Left = 104
              Top = 39
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = 'Atividade'
            end
            object Label4: TLabel
              Left = 24
              Top = 87
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object DBEdit8: TDBEdit
              Left = 23
              Top = 54
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Vag_cod'
              DataSource = DmDTA.dsVagaAtividade
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 103
              Top = 54
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Ati_cod'
              DataSource = DmDTA.dsVagaAtividade
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 23
              Top = 102
              Width = 346
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Ati_nome'
              DataSource = DmDTA.dsVagaAtividade
              TabOrder = 2
              OnKeyPress = DBEdit2KeyPress
            end
          end
        end
      end
    end
  end
end
