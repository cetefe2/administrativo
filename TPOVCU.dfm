inherited FORVCU: TFORVCU
  Left = 249
  Top = 385
  Caption = 'Cursos da Vaga'
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
              DataSource = DmDTA.dsVagaCurso
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
              Left = 18
              Top = 14
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vaga'
            end
            object Label3: TLabel
              Left = 18
              Top = 51
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Curso'
            end
            object Label4: TLabel
              Left = 84
              Top = 14
              Width = 96
              Height = 13
              Caption = 'Ano em Curso Inicial'
            end
            object Label5: TLabel
              Left = 18
              Top = 88
              Width = 48
              Height = 13
              Alignment = taRightJustify
              Caption = 'Institui'#231#227'o'
            end
            object Label6: TLabel
              Left = 199
              Top = 14
              Width = 91
              Height = 13
              Caption = 'Ano em Curso Final'
            end
            object Label7: TLabel
              Left = 19
              Top = 125
              Width = 63
              Height = 13
              Caption = 'Observa'#231#245'es'
            end
            object DBEdit1: TDBEdit
              Left = 18
              Top = 65
              Width = 53
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o curso'
              Color = clInfoBk
              DataField = 'Cur_cod'
              DataSource = DmDTA.dsVagaCurso
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnDblClick = DBEdit1DblClick
              OnExit = DBEdit1Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 75
              Top = 65
              Width = 303
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'cur_nome'
              DataSource = DmDTA.dsVagaCurso
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 83
              Top = 28
              Width = 97
              Height = 21
              DataField = 'Vcu_periodoini'
              DataSource = DmDTA.dsVagaCurso
              TabOrder = 1
              OnExit = DBEdit3Exit
            end
            object DBEdit8: TDBEdit
              Left = 18
              Top = 28
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Vag_cod'
              DataSource = DmDTA.dsVagaCurso
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 18
              Top = 102
              Width = 53
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir a institui'#231#227'o'
              Color = clInfoBk
              DataField = 'Inst_cod'
              DataSource = DmDTA.dsVagaCurso
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnDblClick = DBEdit5DblClick
              OnExit = DBEdit5Exit
              OnKeyDown = DBEdit5KeyDown
            end
            object DBEdit6: TDBEdit
              Left = 75
              Top = 102
              Width = 303
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'inst_nome'
              DataSource = DmDTA.dsVagaCurso
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit4: TDBEdit
              Left = 198
              Top = 28
              Width = 97
              Height = 21
              DataField = 'Vcu_periodofim'
              DataSource = DmDTA.dsVagaCurso
              TabOrder = 2
            end
            object DBMemo1: TDBMemo
              Left = 19
              Top = 139
              Width = 358
              Height = 37
              DataField = 'vcu_observacoes'
              DataSource = DmDTA.dsVagaCurso
              TabOrder = 7
              OnKeyPress = DBMemo1KeyPress
            end
          end
        end
      end
    end
  end
end
