inherited FORTAD: TFORTAD
  Left = 535
  Top = 223
  Caption = 'Termos Aditivos ao TCE'
  ClientHeight = 419
  ClientWidth = 705
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 191
    Top = 77
    Width = 27
    Height = 13
    Caption = 'In'#237'cio'
  end
  inherited sbPrincipal: TStatusBar
    Top = 400
    Width = 705
  end
  inherited Panel1: TPanel
    Width = 705
    Height = 400
    inherited lblInclusao: TLabel
      Left = 272
      Top = 424
    end
    inherited btEnter: TBitBtn
      Top = 416
    end
    inherited Panel4: TPanel
      Left = 643
      Top = 2
      Height = 391
      inherited btFechar: TSpeedButton
        Top = 318
      end
    end
    inherited Panel5: TPanel
      Width = 625
      Height = 384
      inherited pgPrincipal: TPageControl
        Width = 620
        Height = 377
        OnChange = pgPrincipalChange
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 612
            Height = 346
            object Label1: TLabel [0]
              Left = 8
              Top = 10
              Width = 21
              Height = 13
              Caption = 'TCE'
            end
            object btImprimir: TSpeedButton [1]
              Left = 7
              Top = 315
              Width = 90
              Height = 25
              Hint = 'Imprimir TA - Tecla F6'
              Caption = 'Imprimir'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = btImprimirClick
            end
            inherited DBGrid1: TDBGrid
              Left = 7
              Top = 33
              Width = 594
              Height = 280
              DataSource = DmDTA.dsTceAditivo
            end
            object edTceCod: TEdit
              Left = 36
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
            Width = 612
            Height = 346
            inherited Bevel3: TBevel
              Width = 593
              Height = 329
            end
            object Label2: TLabel
              Left = 22
              Top = 11
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'TCE'
            end
            object Label5: TLabel
              Left = 15
              Top = 294
              Width = 27
              Height = 13
              Caption = 'In'#237'cio'
            end
            object Label6: TLabel
              Left = 107
              Top = 294
              Width = 16
              Height = 13
              Caption = 'Fim'
            end
            object Label3: TLabel
              Left = 87
              Top = 11
              Width = 32
              Height = 13
              Alignment = taRightJustify
              Caption = 'Aditivo'
            end
            object Label4: TLabel
              Left = 203
              Top = 294
              Width = 38
              Height = 13
              Caption = 'Retorno'
            end
            object Label8: TLabel
              Left = 151
              Top = 10
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object SpeedButton10: TSpeedButton
              Left = 310
              Top = 305
              Width = 131
              Height = 25
              Hint = 'Observac'#245'es'
              Caption = 'Observa'#231#245'es'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton10Click
            end
            object Label41: TLabel
              Left = 20
              Top = 50
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Orientador'
            end
            object Label42: TLabel
              Left = 85
              Top = 51
              Width = 96
              Height = 13
              Caption = 'Professor Orientador'
              FocusControl = DBEdit25
            end
            object Label43: TLabel
              Left = 397
              Top = 51
              Width = 114
              Height = 13
              Caption = 'Forma'#231#227'o do Orientador'
              FocusControl = DBEdit26
            end
            object DBEdit8: TDBEdit
              Left = 22
              Top = 25
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Tce_cod'
              DataSource = DmDTA.dsTceAditivo
              ReadOnly = True
              TabOrder = 0
            end
            object meTceIni: TMaskEdit
              Left = 14
              Top = 308
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 5
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
            object meTceFim: TMaskEdit
              Left = 106
              Top = 308
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 6
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
            object DBEdit1: TDBEdit
              Left = 86
              Top = 25
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Prg_cod'
              DataSource = DmDTA.dsTceAditivo
              ReadOnly = True
              TabOrder = 1
            end
            object meTceRet: TMaskEdit
              Left = 202
              Top = 308
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 7
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyDown = meTceRetKeyDown
              OnKeyPress = meTceIniKeyPress
            end
            object meTceEmi: TMaskEdit
              Left = 151
              Top = 25
              Width = 85
              Height = 21
              TabStop = False
              Color = cl3DLight
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              ReadOnly = True
              TabOrder = 2
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
            object GroupBox1: TGroupBox
              Left = 13
              Top = 86
              Width = 580
              Height = 203
              Caption = 'Supervisor do Est'#225'gio'
              TabOrder = 4
              object Label33: TLabel
                Left = 338
                Top = 39
                Width = 43
                Height = 13
                Caption = 'Profissao'
                FocusControl = DBEdit17
              end
              object Label32: TLabel
                Left = 11
                Top = 40
                Width = 28
                Height = 13
                Caption = 'Cargo'
                FocusControl = DBEdit16
              end
              object Label35: TLabel
                Left = 27
                Top = 154
                Width = 22
                Height = 13
                Caption = 'Area'
                FocusControl = DBEdit19
              end
              object Label34: TLabel
                Left = 359
                Top = 155
                Width = 146
                Height = 13
                Caption = 'Tempo de Experi'#234'ncia na Area'
                FocusControl = DBEdit18
              end
              object Label30: TLabel
                Left = 27
                Top = 76
                Width = 47
                Height = 13
                Caption = 'Forma'#231#227'o'
              end
              object Label9: TLabel
                Left = 27
                Top = 116
                Width = 76
                Height = 13
                Caption = 'Outra Forma'#231#227'o'
                FocusControl = DBEdit2
              end
              object Label10: TLabel
                Left = 359
                Top = 75
                Width = 39
                Height = 13
                Caption = 'Registro'
                FocusControl = DBEdit3
              end
              object Label11: TLabel
                Left = 359
                Top = 114
                Width = 39
                Height = 13
                Caption = 'Registro'
                FocusControl = DBEdit4
              end
              object cbSuper: TDBLookupComboBox
                Left = 11
                Top = 16
                Width = 558
                Height = 21
                DataField = 'Func_cod'
                DataSource = DmDTA.dsTceAditivo
                DropDownWidth = 495
                KeyField = 'Func_cod'
                ListField = 'Nome;Func_cod'
                ListSource = dssupervisor
                TabOrder = 0
                OnExit = cbSuperExit
              end
              object DBEdit15: TDBEdit
                Left = 27
                Top = 91
                Width = 294
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Formacao'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 7
              end
              object DBEdit16: TDBEdit
                Left = 11
                Top = 52
                Width = 310
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Cargo'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 8
              end
              object DBEdit17: TDBEdit
                Left = 338
                Top = 51
                Width = 230
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Profissao'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 9
              end
              object DBEdit19: TDBEdit
                Left = 27
                Top = 169
                Width = 294
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Area'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 10
              end
              object DBEdit18: TDBEdit
                Left = 359
                Top = 168
                Width = 209
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Tempo'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 11
              end
              object DBEdit2: TDBEdit
                Left = 27
                Top = 130
                Width = 294
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'formacao2'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 12
              end
              object ckf1: TDBCheckBox
                Left = 10
                Top = 93
                Width = 16
                Height = 17
                DataField = 'tpr_formacao1'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit3: TDBEdit
                Left = 359
                Top = 91
                Width = 209
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Registro'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 13
              end
              object DBEdit4: TDBEdit
                Left = 359
                Top = 130
                Width = 209
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Registro2'
                DataSource = DmDTA.dsTceAditivo
                ReadOnly = True
                TabOrder = 14
              end
              object ckr1: TDBCheckBox
                Left = 341
                Top = 93
                Width = 16
                Height = 17
                DataField = 'tpr_registro1'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckr2: TDBCheckBox
                Left = 341
                Top = 133
                Width = 16
                Height = 17
                DataField = 'tpr_registro2'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckf2: TDBCheckBox
                Left = 10
                Top = 133
                Width = 16
                Height = 17
                DataField = 'tpr_formacao2'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cktempo: TDBCheckBox
                Left = 341
                Top = 173
                Width = 16
                Height = 17
                DataField = 'tpr_tempo'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckarea: TDBCheckBox
                Left = 10
                Top = 172
                Width = 16
                Height = 17
                DataField = 'tpr_area'
                DataSource = DmDTA.dsTceAditivo
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object DBEdit24: TDBEdit
              Left = 20
              Top = 64
              Width = 58
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir a empresa'
              TabStop = False
              Color = clInfoBk
              DataField = 'tpr_orientador'
              DataSource = DmDTA.dsTceAditivo
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnDblClick = DBEdit24DblClick
              OnExit = DBEdit24Exit
            end
            object DBEdit25: TDBEdit
              Left = 85
              Top = 64
              Width = 301
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'ProfessorOrientador'
              DataSource = DmDTA.dsTceAditivo
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit26: TDBEdit
              Left = 397
              Top = 64
              Width = 200
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'OrientadorCargo'
              DataSource = DmDTA.dsTceAditivo
              ReadOnly = True
              TabOrder = 9
            end
          end
        end
      end
    end
    object rdEscolha: TDBRadioGroup
      Left = 698
      Top = 194
      Width = 491
      Height = 36
      BiDiMode = bdLeftToRight
      Caption = 'Imprimir no TCE'
      Columns = 3
      DataField = 'Tpr_funcEscolha'
      DataSource = DmDTA.dsTceAditivo
      Items.Strings = (
        'Forma'#231#227'o '
        'Outra Forma'#231#227'o '
        'Experi'#234'ncia')
      ParentBiDiMode = False
      TabOrder = 3
      Values.Strings = (
        '1'
        '2'
        '3')
      Visible = False
    end
  end
  inherited usPrincipal1: TUpdateSQL
    Left = 505
    Top = 310
  end
  inherited quPrincipal1: TQuery
    Left = 546
    Top = 302
  end
  object qcontrato: TQuery
    DatabaseName = 'TalentPool'
    Left = 360
    Top = 387
  end
  object dssupervisor: TDataSource
    DataSet = qrySupervisor
    Left = 169
    Top = 304
  end
  object qrySupervisor: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     EmpFuncionario.Efu_nome Nome, EmpFuncionario.Emp_cod,' +
        ' VagaSupervisor.Vag_cod,EmpFuncionario.Func_cod '
      'FROM         EmpFuncionario '
      
        ' INNER JOIN      VagaSupervisor ON EmpFuncionario.Emp_cod = Vaga' +
        'Supervisor.Emp_cod AND EmpFuncionario.Func_cod = vagasupervisor.' +
        'Func_cod '
      ' where  VagaSupervisor.Vag_cod=:vaga              '
      'Order by EmpFuncionario.Efu_nome')
    Left = 200
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vaga'
        ParamType = ptInput
      end>
    object qrySupervisorNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qrySupervisorFunc_cod: TIntegerField
      FieldName = 'Func_cod'
    end
    object qrySupervisorEmp_cod: TIntegerField
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.EmpFuncionario.Emp_cod'
    end
  end
  object qrypesquisa: TQuery
    DatabaseName = 'TalentPool'
    Left = 352
    Top = 32
  end
end
