inherited FOREST3: TFOREST3
  Left = 130
  Top = 238
  Caption = 'Idiomas do Estudante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        ActivePage = tbRegistro
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 9
              Height = 178
              DataSource = DmDTA.dsPerIdioma
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label6: TLabel
              Left = 27
              Top = 49
              Width = 31
              Height = 13
              Caption = 'Idioma'
            end
            object DBEdit10: TDBEdit
              Left = 27
              Top = 64
              Width = 40
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o idioma'
              Color = clInfoBk
              DataField = 'Idi_cod'
              DataSource = DmDTA.dsPerIdioma
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
              DataField = 'idi_nome'
              DataSource = DmDTA.dsPerIdioma
              ReadOnly = True
              TabOrder = 2
            end
            object GroupBox1: TGroupBox
              Left = 179
              Top = 16
              Width = 344
              Height = 44
              Caption = 'N'#237'vel'
              TabOrder = 1
              Visible = False
              object DBCheckBox1: TDBCheckBox
                Left = 85
                Top = 17
                Width = 84
                Height = 17
                Caption = 'Intermedi'#225'rio'
                DataField = 'pid_fala'
                DataSource = DmDTA.dsPerIdioma
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox2: TDBCheckBox
                Left = 17
                Top = 17
                Width = 57
                Height = 17
                Caption = 'B'#225'sico'
                DataField = 'pid_le'
                DataSource = DmDTA.dsPerIdioma
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 184
                Top = 17
                Width = 72
                Height = 17
                Caption = 'Avan'#231'ado'
                DataField = 'pid_escreve'
                DataSource = DmDTA.dsPerIdioma
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 271
                Top = 19
                Width = 65
                Height = 17
                Caption = 'Fluente'
                DataField = 'pid_fluente'
                DataSource = DmDTA.dsPerIdioma
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 23
              Top = 105
              Width = 352
              Height = 49
              Caption = 'N'#237'vel'
              Columns = 4
              DataField = 'Idi_Nivel'
              DataSource = DmDTA.dsPerIdioma
              Items.Strings = (
                'B'#225'sico'
                'Intermediario'
                'Avan'#231'ado'
                'Fluente')
              TabOrder = 3
              Values.Strings = (
                'B'
                'I'
                'A'
                'F')
            end
          end
        end
      end
    end
  end
end
