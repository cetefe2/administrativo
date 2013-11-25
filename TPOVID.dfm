inherited FORVID: TFORVID
  Left = 362
  Top = 220
  Caption = 'Idiomas da Vaga'
  ClientHeight = 272
  ClientWidth = 485
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 253
    Width = 485
  end
  inherited Panel1: TPanel
    Width = 485
    Height = 253
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
              DataSource = DmDTA.dsVagaIdioma
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
              Left = 24
              Top = 66
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Idioma'
            end
            object DBEdit1: TDBEdit
              Left = 23
              Top = 80
              Width = 53
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o idioma'
              Color = clInfoBk
              DataField = 'Idi_cod'
              DataSource = DmDTA.dsVagaIdioma
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
              DataField = 'idi_nome'
              DataSource = DmDTA.dsVagaIdioma
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
              DataSource = DmDTA.dsVagaIdioma
              ReadOnly = True
              TabOrder = 0
            end
            object GroupBox1: TGroupBox
              Left = 175
              Top = 17
              Width = 346
              Height = 44
              Caption = 'N'#237'vel'
              TabOrder = 2
              TabStop = True
              Visible = False
              object DBCheckBox1: TDBCheckBox
                Left = 93
                Top = 17
                Width = 76
                Height = 17
                Caption = 'Intemedi'#225'rio'
                DataField = 'vid_fala'
                DataSource = DmDTA.dsVagaIdioma
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
                DataField = 'vid_le'
                DataSource = DmDTA.dsVagaIdioma
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 184
                Top = 17
                Width = 73
                Height = 17
                Caption = 'Avan'#231'ado'
                DataField = 'vid_escreve'
                DataSource = DmDTA.dsVagaIdioma
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 268
                Top = 18
                Width = 65
                Height = 17
                Caption = 'Fluente'
                DataField = 'vid_fluente'
                DataSource = DmDTA.dsVagaIdioma
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 23
              Top = 105
              Width = 347
              Height = 39
              Caption = 'N'#237'vel'
              Columns = 4
              DataField = 'Vid_Nivel'
              DataSource = DmDTA.dsVagaIdioma
              Items.Strings = (
                'B'#225'sico'
                'Intermediario'
                'Avan'#231'ado'
                'Fluente')
              TabOrder = 4
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
