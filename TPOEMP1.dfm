inherited FOREMP1: TFOREMP1
  Left = 673
  Top = 146
  Caption = 'Perfil da Empresa'
  ClientHeight = 402
  ClientWidth = 638
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 638
    Height = 383
    inherited btOk: TSpeedButton
      Left = 555
      Top = 349
    end
    inherited Panel2: TPanel
      Left = 664
      Top = 24
      Width = 484
      Height = 297
    end
    inherited btEnter: TBitBtn
      Top = 564
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 16
      Width = 625
      Height = 333
      ActivePage = TabSheet1
      Style = tsButtons
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'O Cliente'
        object pagina: TPageControl
          Left = -3
          Top = 3
          Width = 620
          Height = 305
          ActivePage = p2
          MultiLine = True
          TabHeight = 1
          TabOrder = 0
          TabPosition = tpLeft
          TabWidth = 1
          object p1: TTabSheet
            Caption = 'p1'
            object Label10: TLabel
              Left = 7
              Top = 19
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ramo:'
            end
            object Label21: TLabel
              Left = 184
              Top = 20
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo:'
            end
            object Label11: TLabel
              Left = 14
              Top = 90
              Width = 78
              Height = 13
              Caption = 'N'#186' Funcion'#225'rios:'
            end
            object Label16: TLabel
              Left = 227
              Top = 90
              Width = 84
              Height = 13
              Caption = 'N'#186' de Estagi'#225'rios:'
            end
            object Label24: TLabel
              Left = 431
              Top = 90
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Porte:'
            end
            object Label2: TLabel
              Left = 12
              Top = 54
              Width = 85
              Height = 13
              Caption = 'In'#237'cio  Atividades:'
              FocusControl = DBEdit1
            end
            object Label3: TLabel
              Left = 358
              Top = 54
              Width = 94
              Height = 13
              Caption = 'Tempo de Atua'#231#227'o:'
              FocusControl = DBEdit2
            end
            object Label8: TLabel
              Left = 539
              Top = 139
              Width = 76
              Height = 13
              Hint = 'tempo de atua'#231#227'o EM ANOS'
              Caption = 'Tempo Atua'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object Label9: TLabel
              Left = 504
              Top = 180
              Width = 40
              Height = 13
              Caption = 'N'#186' Filiais'
              Visible = False
            end
            object Label39: TLabel
              Left = 355
              Top = 19
              Width = 83
              Height = 13
              Caption = #193'rea de Atua'#231#227'o:'
              FocusControl = DBEdit28
            end
            object DBComboBox1: TDBComboBox
              Left = 45
              Top = 16
              Width = 132
              Height = 21
              Style = csDropDownList
              DataField = 'Emp_ramo'
              DataSource = DmDTA.dsEmpresa
              ItemHeight = 13
              Items.Strings = (
                'Ind'#250'stria'
                'Com'#233'rcio'
                'Servi'#231'os')
              TabOrder = 0
            end
            object DBComboBox3: TDBComboBox
              Left = 216
              Top = 17
              Width = 129
              Height = 21
              Style = csDropDownList
              DataField = 'emp_tipo'
              DataSource = DmDTA.dsEmpresa
              ItemHeight = 13
              Items.Strings = (
                'Privada'
                'P'#250'blica')
              TabOrder = 1
            end
            object DBEdit15: TDBEdit
              Left = 108
              Top = 86
              Width = 39
              Height = 21
              DataField = 'Emp_func'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 5
              OnExit = DBEdit15Exit
            end
            object DBEdit16: TDBEdit
              Left = 323
              Top = 86
              Width = 41
              Height = 21
              DataField = 'Emp_estag'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 6
            end
            object DBEdit17: TDBEdit
              Left = 462
              Top = 86
              Width = 145
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_porte'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 7
            end
            object GroupBox2: TGroupBox
              Left = 10
              Top = 114
              Width = 597
              Height = 90
              Caption = 'Informa'#231#245'es do Grupo'
              TabOrder = 11
              object Label17: TLabel
                Left = 336
                Top = 14
                Width = 75
                Height = 13
                Caption = 'N'#186' Funcion'#225'rios'
                FocusControl = DBEdit4
              end
              object Label18: TLabel
                Left = 224
                Top = 14
                Width = 81
                Height = 13
                Caption = 'N'#186' de Estagi'#225'rios'
                FocusControl = DBEdit5
              end
              object Label15: TLabel
                Left = 440
                Top = 14
                Width = 72
                Height = 13
                Caption = 'Filiais do Grupo'
                FocusControl = DBEdit3
              end
              object Label45: TLabel
                Left = 104
                Top = 35
                Width = 50
                Height = 13
                Caption = 'Informado:'
                FocusControl = DBEdit31
              end
              object Label46: TLabel
                Left = 103
                Top = 59
                Width = 50
                Height = 13
                Caption = 'Calculado:'
                FocusControl = DBEdit31
              end
              object DBEdit4: TDBEdit
                Left = 336
                Top = 30
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'FuncGrupo'
                DataSource = DmDTA.dsEmpresa
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 222
                Top = 54
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'EstGrupo'
                DataSource = DmDTA.dsEmpresa
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 440
                Top = 54
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'FiliaisGrupo'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 2
              end
              object DBEdit31: TDBEdit
                Left = 222
                Top = 30
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'EstagiarioInfoGrupo'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 3
              end
              object DBEdit32: TDBEdit
                Left = 336
                Top = 54
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'FuncInfoGrupo'
                DataSource = DmDTA.dsEmpresa
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit33: TDBEdit
                Left = 440
                Top = 30
                Width = 85
                Height = 21
                Color = cl3DLight
                DataField = 'FiliaisGrupo'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 5
              end
            end
            object DBEdit1: TDBEdit
              Left = 108
              Top = 50
              Width = 97
              Height = 21
              DataField = 'Emp_dtInicio'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 463
              Top = 50
              Width = 144
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Tempo'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 603
              Top = 146
              Width = 86
              Height = 21
              DataField = 'Emp_atuacao'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 8
              Visible = False
            end
            object DBEdit9: TDBEdit
              Left = 601
              Top = 195
              Width = 74
              Height = 21
              DataField = 'Emp_filiais'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 9
              Visible = False
            end
            object GroupBox1: TGroupBox
              Left = 10
              Top = 207
              Width = 600
              Height = 81
              Caption = 
                'Utiliza outras empresas de intermedia'#231#227'o para contrata'#231#227'o de est' +
                'agi'#225'rios? Quais ?'
              TabOrder = 10
              object Label1: TLabel
                Left = 11
                Top = 53
                Width = 34
                Height = 13
                Caption = 'Outras:'
              end
              object DBCheckBox1: TDBCheckBox
                Left = 12
                Top = 18
                Width = 61
                Height = 17
                Caption = 'CIE-E'
                DataField = 'emp_ciee'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox2: TDBCheckBox
                Left = 164
                Top = 18
                Width = 61
                Height = 17
                Caption = 'IEL'
                DataField = 'emp_iel'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 316
                Top = 18
                Width = 93
                Height = 17
                Caption = 'INTERAGE'
                DataField = 'emp_interage'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 2
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 468
                Top = 18
                Width = 77
                Height = 17
                Caption = 'EDUCARE'
                DataField = 'emp_educare'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBEdit6: TDBEdit
                Left = 48
                Top = 50
                Width = 489
                Height = 21
                CharCase = ecUpperCase
                DataField = 'emp_outrasint'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 4
              end
            end
            object DBEdit28: TDBEdit
              Left = 442
              Top = 16
              Width = 164
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Emp_Ramo1'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 2
            end
          end
          object p2: TTabSheet
            ImageIndex = 1
            object Label19: TLabel
              Left = 9
              Top = 19
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Caption = #193'rea'
            end
            object Label20: TLabel
              Left = 179
              Top = 19
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo'
            end
            object Label22: TLabel
              Left = 348
              Top = 18
              Width = 60
              Height = 13
              Caption = 'Funcion'#225'rios'
            end
            object Label23: TLabel
              Left = 486
              Top = 17
              Width = 51
              Height = 13
              Caption = 'Estagi'#225'rios'
            end
            object Label25: TLabel
              Left = 9
              Top = 48
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Porte'
            end
            object Label29: TLabel
              Left = 220
              Top = 48
              Width = 82
              Height = 13
              Caption = 'In'#237'cio  Atividades'
              FocusControl = DBEdit18
            end
            object Label30: TLabel
              Left = 434
              Top = 48
              Width = 91
              Height = 13
              Caption = 'Tempo de Atua'#231#227'o'
              FocusControl = DBEdit19
            end
            object Label31: TLabel
              Left = 532
              Top = 66
              Width = 76
              Height = 13
              Hint = 'tempo de atua'#231#227'o EM ANOS'
              Caption = 'Tempo Atua'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object Label26: TLabel
              Left = 8
              Top = 85
              Width = 37
              Height = 13
              Caption = #193'rea(1):'
              FocusControl = DBEdit12
            end
            object Label27: TLabel
              Left = 269
              Top = 85
              Width = 40
              Height = 13
              Caption = 'Inicio(1):'
              FocusControl = DBEdit13
            end
            object Label28: TLabel
              Left = 8
              Top = 116
              Width = 37
              Height = 13
              Caption = #193'rea(2):'
              FocusControl = DBEdit14
            end
            object Label32: TLabel
              Left = 271
              Top = 116
              Width = 40
              Height = 13
              Caption = 'Inicio(2):'
              FocusControl = DBEdit21
            end
            object Label34: TLabel
              Left = 8
              Top = 145
              Width = 37
              Height = 13
              Caption = #193'rea(3):'
              FocusControl = DBEdit23
            end
            object Label35: TLabel
              Left = 271
              Top = 145
              Width = 40
              Height = 13
              Caption = 'Inicio(3):'
              FocusControl = DBEdit24
            end
            object Label36: TLabel
              Left = 8
              Top = 164
              Width = 108
              Height = 13
              Caption = 'Descri'#231#227'o da Estrutura'
              FocusControl = DBMemo8
            end
            object Label41: TLabel
              Left = 396
              Top = 85
              Width = 121
              Height = 13
              Caption = 'Tempo de Experi'#234'ncia(1):'
              FocusControl = DBEdit13
            end
            object Label42: TLabel
              Left = 396
              Top = 116
              Width = 121
              Height = 13
              Caption = 'Tempo de Experi'#234'ncia(2):'
              FocusControl = DBEdit13
            end
            object Label43: TLabel
              Left = 396
              Top = 145
              Width = 121
              Height = 13
              Caption = 'Tempo de Experi'#234'ncia(3):'
              FocusControl = DBEdit13
            end
            object DBComboBox2: TDBComboBox
              Left = 42
              Top = 15
              Width = 131
              Height = 21
              Style = csDropDownList
              DataField = 'Emp_ramo'
              DataSource = DmDTA.dsEmpresa
              ItemHeight = 13
              Items.Strings = (
                'Ind'#250'stria'
                'Com'#233'rcio'
                'Servi'#231'os')
              TabOrder = 0
            end
            object DBComboBox4: TDBComboBox
              Left = 208
              Top = 15
              Width = 137
              Height = 21
              Style = csDropDownList
              DataField = 'emp_tipo'
              DataSource = DmDTA.dsEmpresa
              ItemHeight = 13
              Items.Strings = (
                'Privada'
                'P'#250'blica')
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 421
              Top = 14
              Width = 60
              Height = 21
              DataField = 'Emp_func'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 2
              OnExit = DBEdit15Exit
            end
            object DBEdit10: TDBEdit
              Left = 550
              Top = 13
              Width = 52
              Height = 21
              DataField = 'Emp_estag'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 41
              Top = 44
              Width = 166
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_porte'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit18: TDBEdit
              Left = 314
              Top = 44
              Width = 109
              Height = 21
              DataField = 'Emp_dtInicio'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 4
            end
            object DBEdit19: TDBEdit
              Left = 532
              Top = 44
              Width = 70
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Tempo'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 14
            end
            object DBEdit20: TDBEdit
              Left = 615
              Top = 47
              Width = 62
              Height = 21
              DataField = 'Emp_atuacao'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 5
              Visible = False
            end
            object GroupBox4: TGroupBox
              Left = 2
              Top = 226
              Width = 599
              Height = 70
              Caption = 
                'Utiliza outras empresas de intermedia'#231#227'o para contrata'#231#227'o de est' +
                'agi'#225'rios? Quais ?'
              TabOrder = 12
              object Label33: TLabel
                Left = 16
                Top = 42
                Width = 34
                Height = 13
                Caption = 'Outras:'
              end
              object DBCheckBox5: TDBCheckBox
                Left = 12
                Top = 18
                Width = 61
                Height = 17
                Caption = 'CIE-E'
                DataField = 'emp_ciee'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox6: TDBCheckBox
                Left = 169
                Top = 18
                Width = 61
                Height = 17
                Caption = 'IEL'
                DataField = 'emp_iel'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox7: TDBCheckBox
                Left = 326
                Top = 18
                Width = 93
                Height = 17
                Caption = 'INTERAGE'
                DataField = 'emp_interage'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 2
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox8: TDBCheckBox
                Left = 484
                Top = 18
                Width = 77
                Height = 17
                Caption = 'EDUCARE'
                DataField = 'emp_educare'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBEdit22: TDBEdit
                Left = 53
                Top = 40
                Width = 529
                Height = 21
                CharCase = ecUpperCase
                DataField = 'emp_outrasint'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 4
              end
            end
            object DBEdit12: TDBEdit
              Left = 59
              Top = 81
              Width = 206
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Emp_Ramo1'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 6
            end
            object DBEdit13: TDBEdit
              Left = 313
              Top = 81
              Width = 76
              Height = 21
              DataField = 'Emp_RamoInic1'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 7
            end
            object DBEdit14: TDBEdit
              Left = 60
              Top = 112
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Emp_Ramo2'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 8
            end
            object DBEdit21: TDBEdit
              Left = 313
              Top = 112
              Width = 76
              Height = 21
              DataField = 'Emp_RamoInic2'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 9
            end
            object DBEdit23: TDBEdit
              Left = 60
              Top = 141
              Width = 205
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Emp_Ramo3'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 10
            end
            object DBEdit24: TDBEdit
              Left = 313
              Top = 141
              Width = 76
              Height = 21
              DataField = 'Emp_RamoInic3'
              DataSource = DmDTA.dsEmpresa
              TabOrder = 11
            end
            object DBEdit25: TDBEdit
              Left = 531
              Top = 81
              Width = 61
              Height = 21
              Hint = 'Tempo de Experi'#234'ncia na '#193'rea'
              TabStop = False
              Color = cl3DLight
              DataField = 'Tempo1'
              DataSource = DmDTA.dsEmpresa
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 15
            end
            object DBEdit26: TDBEdit
              Left = 532
              Top = 112
              Width = 61
              Height = 21
              Hint = 'Tempo de Experi'#234'ncia na '#193'rea'
              TabStop = False
              Color = cl3DLight
              DataField = 'Tempo2'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 16
            end
            object DBEdit27: TDBEdit
              Left = 532
              Top = 141
              Width = 61
              Height = 21
              Hint = 'Tempo de Experi'#234'ncia na '#193'rea'
              TabStop = False
              Color = cl3DLight
              DataField = 'Tempo3'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 17
            end
            object DBMemo8: TDBMemo
              Left = 56
              Top = 179
              Width = 541
              Height = 44
              DataField = 'Emp_Estrutura'
              DataSource = DmDTA.dsEmpresa
              ScrollBars = ssVertical
              TabOrder = 18
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'O Programa de Est'#225'gio'
        ImageIndex = 1
        object Label12: TLabel
          Left = 14
          Top = 7
          Width = 188
          Height = 13
          Hint = 'tempo de atua'#231#227'o EM ANOS'
          Caption = 'O que a empresa espera do estagi'#225'rio? '
          ParentShowHint = False
          ShowHint = True
        end
        object Label13: TLabel
          Left = 12
          Top = 61
          Width = 384
          Height = 13
          Hint = 'tempo de atua'#231#227'o EM ANOS'
          Caption = 
            'Quais s'#227'o as perspectivas de crescimento profissional do estagi'#225 +
            'rio na empresa? '
          ParentShowHint = False
          ShowHint = True
          WordWrap = True
        end
        object Label14: TLabel
          Left = 13
          Top = 118
          Width = 401
          Height = 13
          Hint = 'tempo de atua'#231#227'o EM ANOS'
          Caption = 
            'A empresa disponibiliza treinamento para o estagi'#225'rio? Caso SIM,' +
            ' como '#233' realizado?  '
          ParentShowHint = False
          ShowHint = True
          WordWrap = True
        end
        object Label37: TLabel
          Left = 13
          Top = 184
          Width = 172
          Height = 13
          Hint = 'O que a Empresa espera do Cetefe'
          Caption = 'O que a Empresa espera do Cetefe?'
          ParentShowHint = False
          ShowHint = True
          WordWrap = True
        end
        object Label38: TLabel
          Left = 11
          Top = 256
          Width = 188
          Height = 13
          Hint = 'Periodicidade da Avalia'#231#227'o do estagi'#225'rio'
          Caption = 'Periodicidade do Relat'#243'rio do Est'#225'giario'
          ParentShowHint = False
          ShowHint = True
          WordWrap = True
        end
        object DBMemo5: TDBMemo
          Left = 12
          Top = 21
          Width = 573
          Height = 37
          DataField = 'Emp_espera'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 0
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo6: TDBMemo
          Left = 12
          Top = 74
          Width = 573
          Height = 37
          DataField = 'Emp_perspec'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 1
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo7: TDBMemo
          Left = 11
          Top = 134
          Width = 574
          Height = 48
          DataField = 'Emp_treina'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 2
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo9: TDBMemo
          Left = 11
          Top = 202
          Width = 574
          Height = 49
          DataField = 'Emp_ExpecCetefe'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 3
          OnKeyPress = DBMemo1KeyPress
        end
        object DBComboBox5: TDBComboBox
          Left = 12
          Top = 272
          Width = 229
          Height = 21
          Style = csDropDownList
          DataField = 'Emp_PeriodoAvaliacao'
          DataSource = DmDTA.dsEmpresa
          ItemHeight = 13
          Items.Strings = (
            'Mensal'
            'Bimestral'
            'Trimestral'
            'Quadrimestral'
            'Quinquemestral'
            'Semestral')
          TabOrder = 4
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Outras Informa'#231#245'es'
        ImageIndex = 2
        object Label4: TLabel
          Left = 9
          Top = 7
          Width = 33
          Height = 13
          Caption = 'Miss'#227'o'
        end
        object Label5: TLabel
          Left = 290
          Top = 7
          Width = 35
          Height = 13
          Caption = 'Valores'
        end
        object Label6: TLabel
          Left = 9
          Top = 129
          Width = 26
          Height = 13
          Caption = 'Vis'#227'o'
        end
        object Label7: TLabel
          Left = 289
          Top = 129
          Width = 84
          Height = 13
          Caption = 'Observa'#231#227'o Perfil'
        end
        object DBMemo1: TDBMemo
          Left = 9
          Top = 22
          Width = 250
          Height = 105
          DataField = 'emp_missao'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 0
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo2: TDBMemo
          Left = 290
          Top = 22
          Width = 250
          Height = 105
          DataField = 'emp_valores'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 1
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo3: TDBMemo
          Left = 289
          Top = 143
          Width = 250
          Height = 104
          DataField = 'emp_obsperfil'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 2
          OnKeyPress = DBMemo1KeyPress
        end
        object DBMemo4: TDBMemo
          Left = 9
          Top = 143
          Width = 250
          Height = 104
          DataField = 'emp_visao'
          DataSource = DmDTA.dsEmpresa
          ScrollBars = ssVertical
          TabOrder = 3
          OnKeyPress = DBMemo1KeyPress
        end
      end
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 383
    Width = 638
  end
end
