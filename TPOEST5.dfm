inherited FOREST5: TFOREST5
  Left = 192
  Top = 178
  Caption = 'Experi'#234'ncias do Estudante'
  ClientHeight = 391
  ClientWidth = 567
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 372
    Width = 567
  end
  inherited Panel1: TPanel
    Width = 567
    Height = 372
    inherited btEnter: TBitBtn
      Top = 404
    end
    inherited Panel4: TPanel
      Left = 507
      Height = 343
      inherited btFechar: TSpeedButton
        Top = 304
      end
    end
    inherited Panel5: TPanel
      Width = 490
      Height = 342
      inherited pgPrincipal: TPageControl
        Width = 482
        Height = 332
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 474
            Height = 301
            inherited DBGrid1: TDBGrid
              Top = 9
              Width = 456
              Height = 282
              DataSource = DmDTA.dsExperiencia
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Width = 474
            Height = 301
            inherited Bevel3: TBevel
              Width = 457
              Height = 284
            end
            object Label27: TLabel
              Left = 20
              Top = 19
              Width = 45
              Height = 13
              Caption = 'Admiss'#227'o'
            end
            object Label29: TLabel
              Left = 96
              Top = 19
              Width = 46
              Height = 13
              Caption = 'Demiss'#227'o'
            end
            object Label30: TLabel
              Left = 19
              Top = 57
              Width = 41
              Height = 13
              Caption = 'Empresa'
            end
            object Label32: TLabel
              Left = 19
              Top = 174
              Width = 104
              Height = 13
              Caption = 'Atividades Realizadas'
            end
            object Label1: TLabel
              Left = 121
              Top = 94
              Width = 37
              Height = 13
              Caption = 'Contato'
            end
            object Label2: TLabel
              Left = 20
              Top = 94
              Width = 42
              Height = 13
              Caption = 'Telefone'
            end
            object Label3: TLabel
              Left = 20
              Top = 133
              Width = 62
              Height = 13
              Caption = 'Sal'#225'rio Inicial'
            end
            object Label4: TLabel
              Left = 118
              Top = 133
              Width = 57
              Height = 13
              Caption = 'Sal'#225'rio Final'
            end
            object Label5: TLabel
              Left = 218
              Top = 133
              Width = 99
              Height = 13
              Caption = 'Motivo Desligamento'
            end
            object Label6: TLabel
              Left = 18
              Top = 267
              Width = 246
              Height = 13
              Caption = 'N'#250'mero de Empresas que J'#225' Estagiou ou Trabalhou'
            end
            object DBEdit28: TDBEdit
              Left = 19
              Top = 33
              Width = 72
              Height = 21
              DataField = 'Exp_inicio'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 95
              Top = 33
              Width = 72
              Height = 21
              DataField = 'Exp_fim'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 19
              Top = 71
              Width = 429
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Exp_empresa'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 3
              OnKeyPress = DBEdit31KeyPress
            end
            object DBMemo3: TDBMemo
              Left = 18
              Top = 189
              Width = 434
              Height = 69
              DataField = 'Exp_atividades'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 9
              OnKeyPress = DBEdit31KeyPress
            end
            object DBEdit1: TDBEdit
              Left = 119
              Top = 108
              Width = 329
              Height = 21
              DataField = 'exp_contato'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 5
              OnKeyPress = DBEdit31KeyPress
            end
            object DBEdit2: TDBEdit
              Left = 20
              Top = 108
              Width = 93
              Height = 21
              CharCase = ecUpperCase
              DataField = 'exp_telefone'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 4
              OnKeyPress = DBEdit31KeyPress
            end
            object DBEdit3: TDBEdit
              Left = 20
              Top = 147
              Width = 93
              Height = 21
              CharCase = ecUpperCase
              DataField = 'exp_salinicial'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 6
              OnKeyPress = DBEdit31KeyPress
            end
            object DBEdit4: TDBEdit
              Left = 118
              Top = 147
              Width = 93
              Height = 21
              CharCase = ecUpperCase
              DataField = 'exp_salfinal'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 7
              OnKeyPress = DBEdit31KeyPress
            end
            object DBEdit5: TDBEdit
              Left = 218
              Top = 147
              Width = 231
              Height = 21
              CharCase = ecUpperCase
              DataField = 'exp_motivo'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 8
              OnKeyPress = DBEdit31KeyPress
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 176
              Top = 18
              Width = 193
              Height = 37
              Columns = 2
              DataField = 'exp_funcest'
              DataSource = DmDTA.dsExperiencia
              Items.Strings = (
                'Funcion'#225'rio'
                'Estagi'#225'rio')
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 270
              Top = 264
              Width = 43
              Height = 21
              DataField = 'exp_nroemp'
              DataSource = DmDTA.dsExperiencia
              TabOrder = 10
            end
          end
        end
      end
    end
  end
end
