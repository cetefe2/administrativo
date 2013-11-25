inherited FORVSW: TFORVSW
  Left = 270
  Top = 246
  Caption = 'Conhecimentos em Inform'#225'tica da Vaga'
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
              DataSource = DmDTA.dsVagaSoftware
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
              Left = 23
              Top = 24
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vaga'
            end
            object Label3: TLabel
              Left = 23
              Top = 66
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'Software'
            end
            object DBEdit1: TDBEdit
              Left = 23
              Top = 80
              Width = 53
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o software'
              Color = clInfoBk
              DataField = 'Stw_cod'
              DataSource = DmDTA.dsVagaSoftware
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnDblClick = DBEdit1DblClick
              OnExit = DBEdit1Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 80
              Top = 80
              Width = 288
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'stw_nome'
              DataSource = DmDTA.dsVagaSoftware
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit8: TDBEdit
              Left = 23
              Top = 38
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Vag_cod'
              DataSource = DmDTA.dsVagaSoftware
              ReadOnly = True
              TabOrder = 0
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 24
              Top = 108
              Width = 345
              Height = 47
              Caption = 'N'#237'vel'
              Columns = 3
              DataField = 'vsw_nivel'
              DataSource = DmDTA.dsVagaSoftware
              Items.Strings = (
                'B'#225'sico'
                'Intermedi'#225'rio'
                'Avan'#231'ado')
              TabOrder = 2
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
