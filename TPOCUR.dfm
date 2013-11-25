inherited FORCUR: TFORCUR
  Left = 389
  Top = 285
  Caption = 'Cadastro de Cursos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      object btImpressao: TSpeedButton
        Left = 8
        Top = 144
        Width = 32
        Height = 31
        Hint = 'Imprimir - F11'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btImpressaoClick
      end
    end
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
              DataSource = DmDTA.dsCurso
              TabOrder = 1
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label2: TLabel
              Left = 29
              Top = 24
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Curso'
            end
            object Label3: TLabel
              Left = 28
              Top = 54
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome'
            end
            object Label4: TLabel
              Left = 31
              Top = 86
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#237'vel'
            end
            object Label5: TLabel
              Left = 35
              Top = 118
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Caption = #193'rea'
            end
            object DBEdit1: TDBEdit
              Left = 64
              Top = 21
              Width = 39
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Cur_cod'
              DataSource = DmDTA.dsCurso
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 64
              Top = 51
              Width = 305
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Cur_nome'
              DataSource = DmDTA.dsCurso
              TabOrder = 1
              OnKeyPress = DBEdit2KeyPress
            end
            object DBComboBox1: TDBComboBox
              Left = 65
              Top = 83
              Width = 305
              Height = 21
              Style = csDropDownList
              DataField = 'Cur_nivel'
              DataSource = DmDTA.dsCurso
              ItemHeight = 13
              Items.Strings = (
                'M'#233'dio'
                'T'#233'cnico'
                'P'#243's-M'#233'dio'
                'Superior'
                'P'#243's-Gradua'#231#227'o')
              TabOrder = 2
            end
            object DBComboBox2: TDBComboBox
              Left = 65
              Top = 115
              Width = 305
              Height = 21
              Style = csDropDownList
              DataField = 'Cur_area'
              DataSource = DmDTA.dsCurso
              ItemHeight = 13
              Items.Strings = (
                'Humanas'
                'Exatas'
                'Biol'#243'gicas')
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited quPrincipal: TQuery
    Top = 206
  end
  inherited usPrincipal: TUpdateSQL
    Top = 206
  end
end
