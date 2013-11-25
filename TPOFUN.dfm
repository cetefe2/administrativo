inherited FORFUN: TFORFUN
  Left = 323
  Top = 133
  Caption = 'Cadastro de Funcion'#225'rios - CETEFE'
  ClientHeight = 396
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 377
  end
  inherited Panel1: TPanel
    Height = 377
    inherited btEnter: TBitBtn
      Left = 72
      Top = 428
    end
    inherited Panel4: TPanel
      Height = 335
      inherited btFechar: TSpeedButton
        Top = 249
      end
    end
    inherited Panel5: TPanel
      Height = 375
      inherited pgPrincipal: TPageControl
        Width = 400
        Height = 364
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 392
            Height = 333
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
              Width = 378
              Height = 272
              DataSource = DmDTA.dsFuncionario
              TabOrder = 1
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Width = 392
            Height = 333
            inherited Bevel3: TBevel
              Height = 297
            end
            inherited lblInclusao: TLabel
              Top = 305
            end
            object Label7: TLabel
              Left = 43
              Top = 98
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Setor:'
            end
            object Label6: TLabel
              Left = 40
              Top = 72
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'E-mail:'
            end
            object Label4: TLabel
              Left = 26
              Top = 47
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'Telefone:'
            end
            object Label3: TLabel
              Left = 13
              Top = 20
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = 'Funcion'#225'rio:'
            end
            object Label5: TLabel
              Left = 211
              Top = 47
              Width = 38
              Height = 13
              Alignment = taRightJustify
              Caption = 'Celular: '
            end
            object Label10: TLabel
              Left = 234
              Top = 71
              Width = 75
              Height = 13
              Caption = 'Dia/M'#234's Nasc.:'
            end
            object Label2: TLabel
              Left = 17
              Top = 129
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Func.:'
            end
            object Label8: TLabel
              Left = 32
              Top = 161
              Width = 39
              Height = 13
              Caption = 'Fun'#231#227'o:'
              FocusControl = DBEdit7
            end
            object Label9: TLabel
              Left = 46
              Top = 186
              Width = 25
              Height = 13
              Caption = 'R.G.:'
              FocusControl = DBEdit8
            end
            object Label11: TLabel
              Left = 208
              Top = 186
              Width = 23
              Height = 13
              Caption = 'CPF:'
              FocusControl = DBEdit11
            end
            object Label12: TLabel
              Left = 48
              Top = 214
              Width = 23
              Height = 13
              Caption = 'C.T.:'
              FocusControl = DBEdit12
            end
            object Label13: TLabel
              Left = 198
              Top = 213
              Width = 50
              Height = 13
              Caption = 'Dta. In'#237'cio'
            end
            object Label14: TLabel
              Left = 42
              Top = 244
              Width = 29
              Height = 13
              Caption = 'Login:'
              FocusControl = DBEdit13
            end
            object Label15: TLabel
              Left = 208
              Top = 243
              Width = 34
              Height = 13
              Caption = 'Senha:'
              FocusControl = DBEdit14
            end
            object DBEdit6: TDBEdit
              Left = 78
              Top = 94
              Width = 299
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_setor'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 6
              OnKeyPress = DBEdit2KeyPress
            end
            object DBEdit5: TDBEdit
              Left = 78
              Top = 68
              Width = 151
              Height = 21
              CharCase = ecLowerCase
              DataField = 'func_email'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 78
              Top = 43
              Width = 123
              Height = 21
              DataField = 'func_fone'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 1
            end
            object DBEdit1: TDBEdit
              Left = 78
              Top = 18
              Width = 37
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Func_cod'
              DataSource = DmDTA.dsFuncionario
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit2: TDBEdit
              Left = 119
              Top = 18
              Width = 258
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_nome'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 0
              OnKeyPress = DBEdit2KeyPress
            end
            object DBEdit4: TDBEdit
              Left = 253
              Top = 43
              Width = 124
              Height = 21
              DataField = 'func_fonecel'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 312
              Top = 67
              Width = 30
              Height = 21
              DataField = 'func_dia'
              DataSource = DmDTA.dsFuncionario
              MaxLength = 4
              TabOrder = 4
            end
            object DBEdit10: TDBEdit
              Left = 347
              Top = 67
              Width = 30
              Height = 21
              DataField = 'func_mes'
              DataSource = DmDTA.dsFuncionario
              MaxLength = 2
              TabOrder = 5
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 78
              Top = 116
              Width = 300
              Height = 34
              Columns = 3
              DataField = 'func_tipo'
              DataSource = DmDTA.dsFuncionario
              Items.Strings = (
                'Estagi'#225'rio'
                'Administrativo'
                'Comercial')
              TabOrder = 7
            end
            object DBCheckBox1: TDBCheckBox
              Left = 336
              Top = 244
              Width = 49
              Height = 17
              Caption = 'Ativo'
              DataField = 'func_ativo'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit7: TDBEdit
              Left = 78
              Top = 156
              Width = 298
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_funcao'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 10
            end
            object DBEdit8: TDBEdit
              Left = 78
              Top = 184
              Width = 120
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_rg'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 11
            end
            object DBEdit11: TDBEdit
              Left = 234
              Top = 184
              Width = 143
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_cpf'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 12
              OnExit = DBEdit11Exit
            end
            object DBEdit12: TDBEdit
              Left = 78
              Top = 210
              Width = 108
              Height = 21
              CharCase = ecUpperCase
              DataField = 'func_ct'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 13
            end
            object DBDateEdit1: TDBDateEdit
              Left = 256
              Top = 210
              Width = 121
              Height = 21
              DataField = 'func_inicio'
              DataSource = DmDTA.dsFuncionario
              NumGlyphs = 2
              TabOrder = 14
            end
            object DBEdit13: TDBEdit
              Left = 77
              Top = 240
              Width = 126
              Height = 21
              CharCase = ecLowerCase
              DataField = 'func_login'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 15
            end
            object DBEdit14: TDBEdit
              Left = 248
              Top = 240
              Width = 79
              Height = 21
              CharCase = ecLowerCase
              DataField = 'func_psw'
              DataSource = DmDTA.dsFuncionario
              PasswordChar = '*'
              TabOrder = 16
            end
            object DBCheckBox2: TDBCheckBox
              Left = 79
              Top = 268
              Width = 202
              Height = 17
              Caption = 'Mostrar Inconsist'#234'ncias ao logar-se'
              DataField = 'func_mostrarinconsist'
              DataSource = DmDTA.dsFuncionario
              TabOrder = 17
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
end
