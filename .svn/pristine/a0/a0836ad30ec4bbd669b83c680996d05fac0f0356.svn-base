inherited FOREMP2: TFOREMP2
  Left = 347
  Top = 44
  Caption = 'Satisfa'#231#227'o do Cliente'
  ClientHeight = 392
  ClientWidth = 490
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 490
    Height = 373
    inherited btOk: TSpeedButton
      Left = 406
      Top = 339
    end
    inherited Panel2: TPanel
      Width = 473
      Height = 327
      object nbSatistacao: TNotebook
        Left = 2
        Top = 2
        Width = 469
        Height = 323
        Align = alClient
        TabOrder = 0
        object TPage
          Left = 0
          Top = 0
          Caption = 'Ativas'
          object Label4: TLabel
            Left = 13
            Top = 16
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Respons'#225'vel'
          end
          object Label5: TLabel
            Left = 243
            Top = 15
            Width = 37
            Height = 13
            Caption = 'Contato'
          end
          object Label6: TLabel
            Left = 26
            Top = 40
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Falou Com'
          end
          object Label7: TLabel
            Left = 254
            Top = 40
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = 'Setor'
          end
          object DBEdit3: TDBEdit
            Left = 82
            Top = 13
            Width = 154
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_respcontato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 0
            OnKeyPress = DBMemo4KeyPress
          end
          object edDataContatoAtiva: TMaskEdit
            Left = 284
            Top = 11
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
          end
          object DBEdit4: TDBEdit
            Left = 82
            Top = 37
            Width = 154
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_contato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 2
            OnKeyPress = DBMemo4KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 284
            Top = 37
            Width = 151
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_setorcontato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 3
            OnKeyPress = DBMemo4KeyPress
          end
          object PageControl1: TPageControl
            Left = 5
            Top = 60
            Width = 460
            Height = 253
            ActivePage = TabSheet1
            TabOrder = 4
            object TabSheet1: TTabSheet
              Caption = 'Encaminhamento'
              object Shape1: TShape
                Left = 140
                Top = 50
                Width = 57
                Height = 21
                Brush.Color = clSilver
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 6
                Top = 3
                Width = 441
                Height = 71
                Caption = 
                  'Rapidez no encaminhamento de candidatos a oportunidades de est'#225'g' +
                  'io'
                Columns = 3
                DataField = 'emp_inrapidez'
                DataSource = DmDTA.dsEmpresa
                Items.Strings = (
                  'P'#233'ssimo'
                  'Regular'
                  'Bom'
                  #211'timo'
                  'Excelente'
                  ''
                  ''
                  '')
                TabOrder = 0
                TabStop = True
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBMemo4: TDBMemo
                Left = 251
                Top = 19
                Width = 185
                Height = 47
                DataField = 'emp_rapidez'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 1
                OnKeyPress = DBMemo4KeyPress
              end
              object DBRadioGroup4: TDBRadioGroup
                Left = 6
                Top = 75
                Width = 441
                Height = 71
                Caption = 
                  'Qualidade do estudante encaminhado em rela'#231#227'o ao perfil solicita' +
                  'do pela empresa'
                Columns = 3
                DataField = 'emp_inqualidade'
                DataSource = DmDTA.dsEmpresa
                Items.Strings = (
                  'P'#233'ssimo'
                  'Regular'
                  'Bom'
                  #211'timo'
                  'Excelente'
                  ''
                  ''
                  '')
                TabOrder = 2
                TabStop = True
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBMemo5: TDBMemo
                Left = 254
                Top = 91
                Width = 185
                Height = 47
                DataField = 'emp_qualidade'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 3
                OnKeyPress = DBMemo4KeyPress
              end
              object DBRadioGroup5: TDBRadioGroup
                Left = 6
                Top = 147
                Width = 441
                Height = 71
                Caption = 'Atendimento na contrata'#231#227'o de estagi'#225'rios'
                Columns = 3
                DataField = 'emp_inatendimento'
                DataSource = DmDTA.dsEmpresa
                Items.Strings = (
                  'P'#233'ssimo'
                  'Regular'
                  'Bom'
                  #211'timo'
                  'Excelente'
                  ''
                  ''
                  '')
                TabOrder = 4
                TabStop = True
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBMemo6: TDBMemo
                Left = 257
                Top = 163
                Width = 185
                Height = 47
                DataField = 'emp_atendimento'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 5
                OnKeyPress = DBMemo4KeyPress
              end
              object Panel3: TPanel
                Left = 147
                Top = 52
                Width = 33
                Height = 16
                BevelOuter = bvNone
                TabOrder = 6
              end
              object Panel4: TPanel
                Left = 147
                Top = 125
                Width = 33
                Height = 16
                BevelOuter = bvNone
                TabOrder = 7
              end
              object Panel5: TPanel
                Left = 147
                Top = 197
                Width = 33
                Height = 16
                BevelOuter = bvNone
                TabOrder = 8
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Pagamento e Atendimento'
              ImageIndex = 1
              object DBRadioGroup6: TDBRadioGroup
                Left = 6
                Top = 3
                Width = 441
                Height = 71
                Caption = 'Atendimento no pagamento de estagi'#225'rios'
                Columns = 3
                DataField = 'emp_inpagamento'
                DataSource = DmDTA.dsEmpresa
                Items.Strings = (
                  'P'#233'ssimo'
                  'Regular'
                  'Bom'
                  #211'timo'
                  'Excelente'
                  ''
                  ''
                  '')
                TabOrder = 0
                TabStop = True
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBMemo7: TDBMemo
                Left = 251
                Top = 19
                Width = 185
                Height = 47
                DataField = 'emp_pagamento'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 1
                OnKeyPress = DBMemo4KeyPress
              end
              object DBRadioGroup7: TDBRadioGroup
                Left = 6
                Top = 75
                Width = 441
                Height = 71
                Caption = 
                  'Atendimento do CETEFE referente ao esclarecimento de d'#250'vidas e o' +
                  'utras informa'#231#245'es'
                Columns = 3
                DataField = 'emp_induvidas'
                DataSource = DmDTA.dsEmpresa
                Items.Strings = (
                  'P'#233'ssimo'
                  'Regular'
                  'Bom'
                  #211'timo'
                  'Excelente'
                  ''
                  ''
                  '')
                TabOrder = 2
                TabStop = True
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBMemo8: TDBMemo
                Left = 254
                Top = 91
                Width = 185
                Height = 47
                DataField = 'emp_duvidas'
                DataSource = DmDTA.dsEmpresa
                TabOrder = 3
                OnKeyPress = DBMemo4KeyPress
              end
              object Panel6: TPanel
                Left = 148
                Top = 123
                Width = 33
                Height = 16
                BevelOuter = bvNone
                TabOrder = 4
              end
              object Panel7: TPanel
                Left = 147
                Top = 53
                Width = 33
                Height = 16
                BevelOuter = bvNone
                TabOrder = 5
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Outras Empresas'
              ImageIndex = 2
              object GroupBox1: TGroupBox
                Left = 6
                Top = 4
                Width = 441
                Height = 70
                Caption = 
                  'Utiliza outras empresas de intermedia'#231#227'o para contrata'#231#227'o de est' +
                  'agi'#225'rios? Quais ?'
                TabOrder = 0
                object Label10: TLabel
                  Left = 11
                  Top = 42
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
                  Left = 111
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
                  Left = 225
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
                  Left = 356
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
                  Top = 40
                  Width = 377
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'emp_outrasint'
                  DataSource = DmDTA.dsEmpresa
                  TabOrder = 4
                  OnKeyPress = DBMemo4KeyPress
                end
              end
              object GroupBox2: TGroupBox
                Left = 6
                Top = 75
                Width = 441
                Height = 144
                Caption = 'Sugest'#245'es / Coment'#225'rios'
                TabOrder = 1
                object DBMemo9: TDBMemo
                  Left = 12
                  Top = 19
                  Width = 415
                  Height = 115
                  DataField = 'emp_sugestoes'
                  DataSource = DmDTA.dsEmpresa
                  TabOrder = 0
                  OnKeyPress = DBMemo4KeyPress
                end
              end
            end
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Inativas'
          object Label1: TLabel
            Left = 13
            Top = 16
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Respons'#225'vel'
          end
          object Label9: TLabel
            Left = 244
            Top = 16
            Width = 37
            Height = 13
            Caption = 'Contato'
          end
          object Label2: TLabel
            Left = 26
            Top = 40
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Falou Com'
          end
          object Label3: TLabel
            Left = 16
            Top = 232
            Width = 228
            Height = 13
            Caption = 'Tem previs'#227'o para contrata'#231#227'o de estagi'#225'rios ? '
          end
          object Label8: TLabel
            Left = 256
            Top = 40
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = 'Setor'
          end
          object DBEdit1: TDBEdit
            Left = 82
            Top = 13
            Width = 154
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_respcontato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 0
          end
          object edDataContatoInativa: TMaskEdit
            Left = 289
            Top = 12
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
          end
          object DBEdit2: TDBEdit
            Left = 82
            Top = 37
            Width = 151
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_contato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 2
          end
          object DBMemo3: TDBMemo
            Left = 260
            Top = 232
            Width = 187
            Height = 73
            DataField = 'emp_prevcontrat'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 7
            OnKeyPress = DBMemo4KeyPress
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 15
            Top = 70
            Width = 441
            Height = 71
            Caption = 'Como est'#225' a contrata'#231#227'o de estagi'#225'rios ? '
            Columns = 3
            DataField = 'emp_incontratacao'
            DataSource = DmDTA.dsEmpresa
            Items.Strings = (
              'P'#233'ssimo'
              'Regular'
              'Bom'
              #211'timo'
              'Excelente'
              ''
              ''
              '')
            TabOrder = 3
            TabStop = True
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object DBMemo10: TDBMemo
            Left = 260
            Top = 86
            Width = 185
            Height = 47
            DataField = 'emp_contratacao'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 4
            OnKeyPress = DBMemo4KeyPress
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 15
            Top = 147
            Width = 441
            Height = 71
            Caption = 'Como voc'#234' percebeu o atendimento do CETEFE ?'
            Columns = 3
            DataField = 'emp_inatendcetefe'
            DataSource = DmDTA.dsEmpresa
            Items.Strings = (
              'P'#233'ssimo'
              'Regular'
              'Bom'
              #211'timo'
              'Excelente'
              ''
              ''
              '')
            TabOrder = 5
            TabStop = True
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object DBMemo1: TDBMemo
            Left = 260
            Top = 163
            Width = 185
            Height = 47
            DataField = 'emp_atendcetefe'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 6
            OnKeyPress = DBMemo4KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 289
            Top = 37
            Width = 151
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_setorcontato'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 8
          end
          object Panel8: TPanel
            Left = 156
            Top = 119
            Width = 33
            Height = 16
            BevelOuter = bvNone
            TabOrder = 9
          end
          object Panel9: TPanel
            Left = 156
            Top = 197
            Width = 33
            Height = 16
            BevelOuter = bvNone
            TabOrder = 10
          end
        end
      end
    end
    inherited btEnter: TBitBtn
      Top = 402
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 373
    Width = 490
  end
end
