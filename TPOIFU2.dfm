inherited FORIFU2: TFORIFU2
  Left = 229
  Top = 194
  Caption = 'Diretores da Institui'#231#227'o'
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
              Top = 7
              Width = 48
              Height = 13
              Caption = 'Institui'#231#227'o'
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsInstDiretor
            end
            object edInstCod: TEdit
              Left = 8
              Top = 23
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 1
            end
            object edInstNome: TEdit
              Left = 66
              Top = 23
              Width = 320
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
              Left = 25
              Top = 20
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Institui'#231#227'o:'
            end
            object Label3: TLabel
              Left = 42
              Top = 44
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'Diretor:'
            end
            object Label4: TLabel
              Left = 29
              Top = 71
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'Telefone:'
            end
            object Label5: TLabel
              Left = 211
              Top = 71
              Width = 38
              Height = 13
              Alignment = taRightJustify
              Caption = 'Celular: '
            end
            object Label6: TLabel
              Left = 43
              Top = 96
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'E-mail:'
            end
            object Label7: TLabel
              Left = 222
              Top = 97
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Setor:'
            end
            object Label8: TLabel
              Left = 43
              Top = 121
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cargo:'
            end
            object Label9: TLabel
              Left = 13
              Top = 145
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'Observa'#231#227'o:'
            end
            object edInstNome1: TEdit
              Left = 118
              Top = 17
              Width = 259
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 78
              Top = 42
              Width = 37
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'dire_cod'
              DataSource = DmDTA.dsInstDiretor
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 119
              Top = 42
              Width = 258
              Height = 21
              CharCase = ecUpperCase
              DataField = 'idr_nome'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 2
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit3: TDBEdit
              Left = 78
              Top = 67
              Width = 123
              Height = 21
              DataField = 'idr_fone'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 3
            end
            object DBEdit4: TDBEdit
              Left = 253
              Top = 67
              Width = 124
              Height = 21
              DataField = 'idr_fonecel'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 4
            end
            object DBEdit5: TDBEdit
              Left = 78
              Top = 92
              Width = 138
              Height = 21
              CharCase = ecLowerCase
              DataField = 'idr_email'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 5
              OnKeyPress = DBEdit5KeyPress
            end
            object DBEdit6: TDBEdit
              Left = 254
              Top = 93
              Width = 123
              Height = 21
              CharCase = ecUpperCase
              DataField = 'idr_setor'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 6
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit7: TDBEdit
              Left = 78
              Top = 117
              Width = 299
              Height = 21
              CharCase = ecUpperCase
              DataField = 'idr_Cargo'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 7
              OnKeyPress = DBMemo1KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 78
              Top = 143
              Width = 299
              Height = 35
              DataField = 'idr_observacao'
              DataSource = DmDTA.dsInstDiretor
              TabOrder = 8
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit8: TDBEdit
              Left = 78
              Top = 17
              Width = 36
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Inst_cod'
              DataSource = DmDTA.dsInstDiretor
              ReadOnly = True
              TabOrder = 9
            end
          end
        end
      end
    end
  end
end
