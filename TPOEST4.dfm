inherited FOREST4: TFOREST4
  Left = 242
  Top = 235
  Caption = 'Conhecimentos em Inform'#225'tica do Estudante'
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
              DataSource = DmDTA.dsPerSoftware
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label6: TLabel
              Left = 27
              Top = 49
              Width = 42
              Height = 13
              Caption = 'Software'
            end
            object DBEdit10: TDBEdit
              Left = 27
              Top = 64
              Width = 40
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o idioma'
              Color = clInfoBk
              DataField = 'Stw_cod'
              DataSource = DmDTA.dsPerSoftware
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnDblClick = DBEdit10DblClick
              OnExit = DBEdit10Exit
              OnKeyDown = DBEdit10KeyDown
            end
            object DBEdit11: TDBEdit
              Left = 72
              Top = 64
              Width = 298
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'stw_nome'
              DataSource = DmDTA.dsPerSoftware
              ReadOnly = True
              TabOrder = 2
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 27
              Top = 98
              Width = 342
              Height = 47
              Caption = 'N'#237'vel'
              Columns = 3
              DataField = 'Psw_nivel'
              DataSource = DmDTA.dsPerSoftware
              Items.Strings = (
                'B'#225'sico'
                'Intermedi'#225'rio'
                'Avan'#231'ado')
              TabOrder = 1
              TabStop = True
              Values.Strings = (
                '0'
                '1'
                '2')
            end
          end
        end
      end
    end
  end
end
