inherited FORTALAT: TFORTALAT
  Left = 270
  Top = 246
  Caption = 'Atividades Termo de Alteracao'
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
              Width = 22
              Height = 13
              Caption = 'Tce '
            end
            object Label5: TLabel [1]
              Left = 112
              Top = 10
              Width = 45
              Height = 13
              Caption = 'Altera'#231#227'o'
            end
            inherited DBGrid1: TDBGrid
              Top = 32
              Height = 154
              DataSource = DmDTA.dsTalAtividade
            end
            object edTceCod: TEdit
              Left = 40
              Top = 6
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 1
            end
            object edAlteracaoCod: TEdit
              Left = 166
              Top = 6
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            inherited Bevel3: TBevel
              Height = 178
            end
            object Label2: TLabel
              Left = 27
              Top = 39
              Width = 19
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tce'
            end
            object Label3: TLabel
              Left = 152
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
            object Label6: TLabel
              Left = 87
              Top = 39
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'Altera'#231#227'o'
            end
            object DBEdit8: TDBEdit
              Left = 23
              Top = 54
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'tce_cod'
              DataSource = DmDTA.dsTalAtividade
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 151
              Top = 54
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'ati_talcod'
              DataSource = DmDTA.dsTalAtividade
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 23
              Top = 102
              Width = 346
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Ati_talnome'
              DataSource = DmDTA.dsTalAtividade
              TabOrder = 2
              OnKeyPress = DBEdit2KeyPress
            end
            object DBEdit3: TDBEdit
              Left = 87
              Top = 54
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'tal_cod'
              DataSource = DmDTA.dsTalAtividade
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
      end
    end
  end
end
