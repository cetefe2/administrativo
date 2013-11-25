object ForMailing: TForMailing
  Left = 125
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mailing'
  ClientHeight = 373
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 778
    Height = 373
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Estudantes'
      object SpeedButton1: TSpeedButton
        Left = 255
        Top = 321
        Width = 97
        Height = 21
        Caption = 'Exportar'
        Flat = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton9: TSpeedButton
        Left = 546
        Top = 318
        Width = 105
        Height = 23
        Caption = 'Triagem'
        Flat = True
        OnClick = SpeedButton9Click
      end
      object Label5: TLabel
        Left = 416
        Top = 320
        Width = 25
        Height = 13
        Caption = 'Vaga'
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = -2
        Width = 217
        Height = 339
        Caption = 'Campos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object chkcurso00: TCheckBox
          Left = 14
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Curso'
          TabOrder = 0
        end
        object chkcurso02: TCheckBox
          Left = 14
          Top = 45
          Width = 179
          Height = 17
          Caption = 'Institui'#231#227'o de Ensino'
          TabOrder = 2
        end
        object chkcurso03: TCheckBox
          Left = 14
          Top = 79
          Width = 169
          Height = 17
          Caption = 'Vestibular (Inverno ou ver'#227'o)'
          TabOrder = 3
        end
        object chkcurso04: TCheckBox
          Left = 14
          Top = 96
          Width = 97
          Height = 17
          Caption = 'Situa'#231#227'o'
          TabOrder = 4
        end
        object chkcurso05: TCheckBox
          Left = 14
          Top = 114
          Width = 97
          Height = 17
          Caption = 'Sexo'
          TabOrder = 5
        end
        object chkcurso06: TCheckBox
          Left = 14
          Top = 131
          Width = 179
          Height = 17
          Caption = 'Data de Nascimento'
          TabOrder = 6
        end
        object chkcurso07: TCheckBox
          Left = 14
          Top = 148
          Width = 97
          Height = 17
          Caption = 'Estado C'#237'vil'
          TabOrder = 7
        end
        object chkcurso08: TCheckBox
          Left = 14
          Top = 165
          Width = 97
          Height = 17
          Caption = 'Filhos'
          TabOrder = 8
        end
        object chkcurso09: TCheckBox
          Left = 14
          Top = 182
          Width = 97
          Height = 17
          Caption = 'Bairro'
          TabOrder = 9
        end
        object chkcurso11: TCheckBox
          Left = 14
          Top = 217
          Width = 97
          Height = 17
          Caption = 'Atualiza'#231#227'o'
          TabOrder = 11
        end
        object chkcurso01: TCheckBox
          Left = 14
          Top = 28
          Width = 97
          Height = 17
          Caption = 'Turno'
          TabOrder = 1
        end
        object chkcurso10: TCheckBox
          Left = 14
          Top = 199
          Width = 97
          Height = 17
          Caption = 'E-mail'
          TabOrder = 10
        end
        object MEstudante: TMemo
          Left = 200
          Top = 160
          Width = 185
          Height = 89
          Lines.Strings = (
            
              'SELECT     Estudante.Est_nome Estudante , Estudante.Est_dtnasc N' +
              'ascimento ,  Estudante.Est_bairro Bairro, Estudante.Est_estadoci' +
              'vil Civil, Estudante.cur_cod CodCurso, Estudante.inst_cod InstCo' +
              'd, '
            
              '                      Instituicao.Inst_nome Instituicao, Curso.c' +
              'ur_nome Curso, Estudante.pcu_vestib, Estudante.est_Situacao, Est' +
              'udante.est_cursoSituacao , Estudante.est_filhos Filhos, Estudant' +
              'e.Est_sexo Sexo, '
            
              '                      Estudante.est_cod,est_ativo,est_email Emai' +
              'l,Estudante.Est_fone1 Telefone,Estudante.est_fone2 Celular,Estud' +
              'ante.Est_Recado Recado ,'
            'case'
            ' when pcu_vestib = 0 then '#39'Ver'#227'o'#39
            ' when pcu_vestib = 1 then '#39'Inverno'#39
            'end Vestibular,'
            'case'
            'when Estudante.pcu_turno =  0  then '#39'Manh'#227#39
            'when Estudante.pcu_turno =  1  then '#39'Tarde'#39
            'when Estudante.pcu_turno =  2  then '#39'Noite'#39
            'when Estudante.pcu_turno =  3  then '#39'Manh'#227' / Tarde'#39
            'when Estudante.pcu_turno =  4  then '#39'Manh'#227' / Noite'#39
            'when Estudante.pcu_turno =  5  then '#39'Tarde / Noite'#39
            'end Turno,'
            'Estudante.est_dtatu Atualizacao,'
            'Estudante.dat_perfil,'
            'Funcionario.func_nome Recrutador,'
            'case '
            
              'when datediff(day,dat_perfil,getdate()) > 91 then '#39'Desatualizado' +
              #39
            
              'when datediff(day,dat_perfil,getdate()) is null then '#39'Sem Perfil' +
              #39
            'when datediff(day,dat_perfil,getdate()) < 91 then '#39'Atualizado'#39
            'end StatusPerfil,'
            'Estudante.Est_desempenho,'
            'Estudante.Est_dtinc   Inclusao,'
            'Estudante.pcu_anoatual Ano'
            'FROM    Instituicao '
            
              'INNER JOIN  Estudante   ON Instituicao.Inst_cod = Estudante.inst' +
              '_cod '
            'INNER JOIN   Curso  ON Estudante.cur_cod = Curso.cur_cod'
            
              'LEFT OUTER JOIN FUNCIONARIO ON estudante.Est_recrutadora = funci' +
              'onario.func_cod'
            'where   1 = 1')
          ScrollBars = ssBoth
          TabOrder = 12
          Visible = False
        end
        object chkcurso12: TCheckBox
          Left = 14
          Top = 234
          Width = 97
          Height = 17
          Caption = 'Telefones'
          TabOrder = 13
        end
        object chkcurso13: TCheckBox
          Left = 14
          Top = 251
          Width = 97
          Height = 17
          Caption = 'Status Perfil'
          TabOrder = 14
        end
        object chkcurso14: TCheckBox
          Left = 14
          Top = 268
          Width = 97
          Height = 17
          Caption = 'Data Perfil'
          TabOrder = 15
        end
        object chkcurso15: TCheckBox
          Left = 14
          Top = 285
          Width = 97
          Height = 17
          Caption = 'Recrutador'
          TabOrder = 16
        end
        object chkcurso16: TCheckBox
          Left = 14
          Top = 302
          Width = 97
          Height = 17
          Caption = 'Desempenho'
          TabOrder = 17
        end
        object chkcurso17: TCheckBox
          Left = 14
          Top = 320
          Width = 106
          Height = 17
          Caption = 'Data de Inclus'#227'o'
          TabOrder = 18
        end
        object chkcurso18: TCheckBox
          Left = 14
          Top = 62
          Width = 97
          Height = 17
          Caption = 'Ano em Curso'
          TabOrder = 19
        end
      end
      object GroupBox2: TGroupBox
        Left = 259
        Top = 8
        Width = 478
        Height = 306
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object PageControl2: TPageControl
          Left = 8
          Top = 24
          Width = 457
          Height = 281
          ActivePage = TabSheet7
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'Gerais'
            ImageIndex = 2
            object RDEsTurno: TRadioGroup
              Left = 3
              Top = 1
              Width = 438
              Height = 98
              Caption = 'Turno'
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Todos'
                'Manh'#227
                'Tarde'
                'Noite'
                'Manh'#227' / Tarde'
                'Manh'#227' / Noite'
                'Tarde / Noite')
              TabOrder = 0
            end
            object RdEsSituacao: TRadioGroup
              Left = 3
              Top = 107
              Width = 438
              Height = 83
              Caption = 'Situa'#231#227'o'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'TODAS'
                'FORMADO'
                'POSSIVELMENTE FORMADO'
                'CURSANDO'
                'TRANCADO'
                'FALTAM DADOS')
              TabOrder = 1
            end
            object rdVestibular: TRadioGroup
              Left = 3
              Top = 196
              Width = 230
              Height = 39
              Caption = 'Vestibular'
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Qualquer'
                'Inverno'
                'Ver'#227'o')
              TabOrder = 2
            end
            object GroupBox24: TGroupBox
              Left = 235
              Top = 196
              Width = 206
              Height = 39
              Caption = 'Ano em Curso'
              TabOrder = 3
              object ck1: TCheckBox
                Left = 8
                Top = 16
                Width = 30
                Height = 17
                Caption = '1'
                TabOrder = 0
              end
              object ck2: TCheckBox
                Left = 41
                Top = 16
                Width = 30
                Height = 17
                Caption = '2'
                TabOrder = 1
              end
              object ck3: TCheckBox
                Left = 73
                Top = 16
                Width = 30
                Height = 17
                Caption = '3'
                TabOrder = 2
              end
              object ck4: TCheckBox
                Left = 106
                Top = 15
                Width = 30
                Height = 17
                Caption = '4'
                TabOrder = 3
              end
              object ck5: TCheckBox
                Left = 139
                Top = 15
                Width = 30
                Height = 17
                Caption = '5'
                TabOrder = 4
              end
              object ck6: TCheckBox
                Left = 170
                Top = 14
                Width = 30
                Height = 17
                Caption = '6'
                TabOrder = 5
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Do Estudante'
            ImageIndex = 3
            object Label1: TLabel
              Left = 387
              Top = 58
              Width = 39
              Height = 13
              Caption = 'Filhos  ='
            end
            object Label6: TLabel
              Left = 5
              Top = 40
              Width = 106
              Height = 13
              Caption = 'Situa'#231#227'o do Estagi'#225'rio'
            end
            object GroupBox4: TGroupBox
              Left = 8
              Top = 210
              Width = 433
              Height = 39
              Caption = 'Estado C'#237'vil'
              TabOrder = 0
              object ckCivil00: TCheckBox
                Left = 8
                Top = 16
                Width = 57
                Height = 17
                Caption = 'Solteiro'
                TabOrder = 0
              end
              object ckCivil01: TCheckBox
                Left = 69
                Top = 16
                Width = 65
                Height = 17
                Caption = 'Casado'
                TabOrder = 1
              end
              object ckcivil02: TCheckBox
                Left = 155
                Top = 16
                Width = 56
                Height = 17
                Caption = 'Vi'#250'vo'
                TabOrder = 2
              end
              object ckcivil03: TCheckBox
                Left = 235
                Top = 16
                Width = 78
                Height = 17
                Caption = 'Divorciado'
                TabOrder = 3
              end
              object ckcivil04: TCheckBox
                Left = 347
                Top = 16
                Width = 53
                Height = 17
                Caption = 'Outros'
                TabOrder = 4
              end
            end
            object GroupBox3: TGroupBox
              Left = 5
              Top = 77
              Width = 213
              Height = 39
              Caption = 'Data de Nascimento'
              TabOrder = 1
              object dtainiNascimento: TDateTimePicker
                Left = 25
                Top = 15
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 0
              end
              object dtaFimNascimento: TDateTimePicker
                Left = 120
                Top = 15
                Width = 84
                Height = 21
                Date = 40057.347228113420000000
                Time = 40057.347228113420000000
                TabOrder = 1
              end
              object ckNascimento: TCheckBox
                Left = 8
                Top = 18
                Width = 17
                Height = 17
                TabOrder = 2
              end
            end
            object rdsexo: TRadioGroup
              Left = 143
              Top = 42
              Width = 210
              Height = 34
              Caption = 'Sexo'
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Ambos'
                'Feminino'
                'Masculino')
              TabOrder = 2
            end
            object GroupBox5: TGroupBox
              Left = 221
              Top = 171
              Width = 220
              Height = 37
              Caption = 'Bairro'
              TabOrder = 3
              object EDBAIRRO: TEdit
                Left = 14
                Top = 15
                Width = 203
                Height = 19
                CharCase = ecUpperCase
                TabOrder = 0
              end
            end
            object GroupBox6: TGroupBox
              Left = 2
              Top = -1
              Width = 224
              Height = 37
              Caption = 'Nome'
              TabOrder = 4
              object EDNOME: TEdit
                Left = 6
                Top = 14
                Width = 214
                Height = 19
                TabOrder = 0
              end
            end
            object GroupBox7: TGroupBox
              Left = 229
              Top = -1
              Width = 215
              Height = 37
              Caption = 'Data de Atualiza'#231#227'o'
              TabOrder = 5
              object dtaIniAtualizacao: TDateTimePicker
                Left = 28
                Top = 14
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 0
              end
              object dtaFimAtualizacao: TDateTimePicker
                Left = 124
                Top = 14
                Width = 84
                Height = 21
                Date = 40057.347228113420000000
                Time = 40057.347228113420000000
                TabOrder = 1
              end
              object ckAtualizacao: TCheckBox
                Left = 8
                Top = 17
                Width = 20
                Height = 17
                TabOrder = 2
              end
            end
            object edfilhos: TEdit
              Left = 358
              Top = 55
              Width = 26
              Height = 19
              CharCase = ecUpperCase
              TabOrder = 6
            end
            object cbSit: TComboBox
              Left = 4
              Top = 54
              Width = 136
              Height = 21
              ItemHeight = 13
              TabOrder = 7
              Text = 'Todos'
              Items.Strings = (
                'Todos'
                'Estagiando'
                'N'#227'o Estagiando'
                'Ex-Estagi'#225'rio'
                'N'#227'o Estagiando/Ex-Estagi'#225'rio')
            end
            object rdSPErfil: TRadioGroup
              Left = 227
              Top = 119
              Width = 214
              Height = 50
              Caption = 'Status Perfil'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Todos'
                'Desatualizado'
                'Sem Perfil'
                'Atualizado')
              TabOrder = 8
            end
            object GroupBox21: TGroupBox
              Left = 4
              Top = 126
              Width = 213
              Height = 39
              Caption = 'Data Atualiza'#231#227'o Perfil'
              TabOrder = 9
              object dtainiperfil: TDateTimePicker
                Left = 27
                Top = 15
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 0
              end
              object ckdataperfil: TCheckBox
                Left = 8
                Top = 18
                Width = 17
                Height = 17
                TabOrder = 1
              end
              object dtafimperfil: TDateTimePicker
                Left = 121
                Top = 14
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 2
              end
            end
            object GroupBox22: TGroupBox
              Left = 4
              Top = 171
              Width = 216
              Height = 37
              Caption = 'Recrutador Perfil'
              TabOrder = 10
              object edrecrutador: TEdit
                Left = 6
                Top = 15
                Width = 203
                Height = 19
                CharCase = ecUpperCase
                TabOrder = 0
              end
            end
            object GroupBox23: TGroupBox
              Left = 227
              Top = 77
              Width = 213
              Height = 39
              Caption = 'Data Inclus'#227'o'
              TabOrder = 11
              object dtaIniInclusao: TDateTimePicker
                Left = 27
                Top = 15
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 0
              end
              object ckInclusao: TCheckBox
                Left = 8
                Top = 18
                Width = 17
                Height = 17
                TabOrder = 1
              end
              object dtaFimInclusao: TDateTimePicker
                Left = 121
                Top = 14
                Width = 89
                Height = 21
                Date = 40057.347087060190000000
                Time = 40057.347087060190000000
                TabOrder = 2
              end
            end
          end
        end
      end
      object edvaga: TEdit
        Left = 448
        Top = 318
        Width = 73
        Height = 21
        TabOrder = 2
        OnDblClick = edvagaDblClick
        OnExit = edvagaExit
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Coordenadores'
      ImageIndex = 1
      object SpeedButton2: TSpeedButton
        Left = 55
        Top = 308
        Width = 97
        Height = 24
        Caption = 'Exportar'
        Flat = True
        OnClick = SpeedButton2Click
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 8
        Width = 217
        Height = 293
        Caption = 'Campos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object chkcoor00: TCheckBox
          Left = 14
          Top = 21
          Width = 97
          Height = 17
          Caption = 'Curso'
          TabOrder = 0
        end
        object chkcoor02: TCheckBox
          Left = 14
          Top = 117
          Width = 179
          Height = 17
          Caption = 'Institui'#231#227'o de Ensino'
          TabOrder = 2
        end
        object chkcoor03: TCheckBox
          Left = 14
          Top = 166
          Width = 97
          Height = 17
          Caption = 'Telefone'
          TabOrder = 3
        end
        object chkcoor04: TCheckBox
          Left = 14
          Top = 214
          Width = 97
          Height = 17
          Caption = 'Sexo'
          TabOrder = 4
        end
        object chkcoor01: TCheckBox
          Left = 14
          Top = 69
          Width = 97
          Height = 17
          Caption = 'Turno'
          TabOrder = 1
        end
        object chkcoor05: TCheckBox
          Left = 14
          Top = 263
          Width = 97
          Height = 17
          Caption = 'E-mail'
          TabOrder = 5
        end
      end
      object GroupBox9: TGroupBox
        Left = 235
        Top = 8
        Width = 478
        Height = 314
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object rdCoorTurno: TRadioGroup
          Left = 11
          Top = 31
          Width = 438
          Height = 90
          Caption = 'Turno'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Manh'#227
            'Tarde'
            'Noite'
            'Manh'#227' / Tarde'
            'Manh'#227' / Noite'
            'Tarde / Noite')
          TabOrder = 0
        end
        object GroupBox15: TGroupBox
          Left = 11
          Top = 135
          Width = 438
          Height = 37
          Caption = 'Nome'
          TabOrder = 1
          object edcoordenador: TEdit
            Left = 14
            Top = 14
            Width = 411
            Height = 19
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
        object rdSexoCoordenador: TRadioGroup
          Left = 12
          Top = 183
          Width = 210
          Height = 34
          Caption = 'Sexo'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Ambos'
            'Feminino'
            'Masculino')
          TabOrder = 2
        end
      end
      object MCoordenador: TMemo
        Left = 736
        Top = 280
        Width = 617
        Height = 89
        Lines.Strings = (
          
            'SELECT     InstCoordenador.inst_cod, InstCoordenador.coord_cod, ' +
            'InstCoordenador.ico_nome Nome, Instituicao.Inst_nome Instituicao' +
            ', Curso.cur_nome Curso, InstCurso.Curi_duracao Duracao, '
          
            '                      InstCurso.Curi_duracaomax, InstCurso.Curi_' +
            'periodic , InstCoordenador.ico_email Email, InstCoordenador.ico_' +
            'fone Fone,InstCoordenador.ico_fonecel Celular ,'
          'case'
          'when InstCurso.Curi_turno =  0  then '#39'Manh'#227#39
          'when InstCurso.Curi_turno =  1  then '#39'Tarde'#39
          'when InstCurso.Curi_turno =  2  then '#39'Noite'#39
          'when InstCurso.Curi_turno =  3  then '#39'Manh'#227' / Tarde'#39
          'when InstCurso.Curi_turno =  4  then '#39'Manh'#227' / Noite'#39
          'when InstCurso.Curi_turno =  5  then '#39'Tarde / Noite'#39
          'end Turno,'
          'InstCoordenador.ico_Sexo Sexo'
          'FROM         InstCoordenador nolock'
          
            'INNER JOIN  Instituicao  ON InstCoordenador.inst_cod = Instituic' +
            'ao.Inst_cod '
          
            'INNER JOIN  InstCurso  ON Instituicao.Inst_cod = InstCurso.Inst_' +
            'cod AND InstCoordenador.coord_cod = InstCurso.curi_coord '
          'INNER JOIN  Curso ON InstCurso.Cur_cod = Curso.cur_cod'
          'where 1 = 1')
        ScrollBars = ssBoth
        TabOrder = 2
        Visible = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Institu'#231#245'es de Ensino'
      ImageIndex = 2
      object SpeedButton3: TSpeedButton
        Left = 55
        Top = 298
        Width = 97
        Height = 24
        Caption = 'Exportar'
        Flat = True
        OnClick = SpeedButton3Click
      end
      object GroupBox10: TGroupBox
        Left = 8
        Top = 8
        Width = 217
        Height = 282
        Caption = 'Campos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object ckInst00: TCheckBox
          Left = 14
          Top = 21
          Width = 97
          Height = 17
          Caption = 'Curso'
          TabOrder = 0
        end
        object ckInst02: TCheckBox
          Left = 14
          Top = 108
          Width = 179
          Height = 17
          Caption = 'Respons'#225'vel pelo Conv'#234'nio'
          TabOrder = 2
        end
        object ckInst03: TCheckBox
          Left = 14
          Top = 152
          Width = 171
          Height = 17
          Caption = 'Respons'#225'vel pelo TCE'
          TabOrder = 3
        end
        object ckInst04: TCheckBox
          Left = 14
          Top = 196
          Width = 97
          Height = 17
          Caption = 'Endere'#231'o'
          TabOrder = 4
        end
        object ckInst01: TCheckBox
          Left = 14
          Top = 64
          Width = 97
          Height = 17
          Caption = 'Nivel'
          TabOrder = 1
        end
        object ckInst05: TCheckBox
          Left = 14
          Top = 240
          Width = 171
          Height = 17
          Caption = 'Respons'#225'veis pela Divulga'#231#227'o'
          TabOrder = 5
        end
      end
      object GroupBox11: TGroupBox
        Left = 251
        Top = 7
        Width = 478
        Height = 314
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object GroupBox12: TGroupBox
          Left = 11
          Top = 74
          Width = 438
          Height = 40
          Caption = 'Respons'#225'vel TCE'
          TabOrder = 0
          object edcompromisso: TEdit
            Left = 14
            Top = 16
            Width = 411
            Height = 19
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
        object GroupBox13: TGroupBox
          Left = 11
          Top = 31
          Width = 438
          Height = 40
          Caption = 'Responsavel  Convenio'
          TabOrder = 1
          object edconvenio: TEdit
            Left = 14
            Top = 16
            Width = 411
            Height = 19
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
        object mensino: TMemo
          Left = 32
          Top = 160
          Width = 457
          Height = 129
          Lines.Strings = (
            
              'SELECT     I.Inst_nome AS Nome, I.Inst_endereco AS Endereco, I.I' +
              'nst_bairro AS Bairro, I.Inst_cidade AS Cidade,I.Inst_estado AS E' +
              'stado,'
            '            Curso.cur_nome Curso, Curso.cur_nivel Nivel, '
            
              '           iF1.Ifu_nome AS Convenio,IF2.Ifu_nome AS Compromisso,' +
              ' IF1.Ifu_email AS EmailConvenio, IF2.Ifu_email AS EmailCompromis' +
              'so,'
            
              '           IF3.IFU_NOME AS Divulga1,i.inst_respdivmail1 EmailDiv' +
              'ulga1,'
            
              '           IF4.IFU_NOME AS Divulga2,i.inst_respdivmail2 EmailDiv' +
              'ulga2,'
            
              '           IF5.IFU_NOME AS Divulga3,i.inst_respdivmail3 EmailDiv' +
              'ulga3'
            '                '
            
              'FROM       Instituicao I,InstFuncionario IF1, InstFuncionario IF' +
              '2,'
            
              '           InstFuncionario IF3,InstFuncionario IF4,InstFuncionar' +
              'io IF5,instCurso,Curso'
            '                      '
            'where '
            '  I.Inst_cod = InstCurso.Inst_cod  and'
            '  InstCurso.Cur_cod = Curso.cur_cod and'
            '  I.inst_cod      *= IF1.Inst_cod and'
            '  I.inst_respconv *= IF1.func_cod and'
            '  I.inst_cod      *= IF2.Inst_cod and'
            '  I.inst_respcomp *= IF2.func_cod and'
            '  I.inst_cod      *= IF3.Inst_cod and'
            '  I.inst_respDiv1 *= IF3.func_cod and'
            '  I.inst_cod      *= IF4.Inst_cod and'
            '  I.inst_respDiv2 *= IF4.func_cod and'
            '  I.inst_cod      *= IF5.Inst_cod and'
            '  I.inst_respDiv3 *= IF5.func_cod')
          ScrollBars = ssBoth
          TabOrder = 2
          Visible = False
        end
        object GroupBox19: TGroupBox
          Left = 12
          Top = 164
          Width = 438
          Height = 44
          Caption = 'Bairro'
          TabOrder = 3
          object EdBairro2: TEdit
            Left = 14
            Top = 16
            Width = 411
            Height = 19
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
        object GroupBox20: TGroupBox
          Left = 11
          Top = 119
          Width = 438
          Height = 40
          Caption = 'Respons'#225'vel Divulga'#231#227'o '
          TabOrder = 4
          object eddivulga: TEdit
            Left = 14
            Top = 16
            Width = 411
            Height = 19
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Empresas'
      ImageIndex = 3
      object SpeedButton4: TSpeedButton
        Left = 55
        Top = 298
        Width = 97
        Height = 24
        Caption = 'Exportar'
        Flat = True
        OnClick = SpeedButton4Click
      end
      object GroupBox14: TGroupBox
        Left = 8
        Top = 16
        Width = 217
        Height = 276
        Caption = 'Campos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object ckemp00: TCheckBox
          Left = 14
          Top = 21
          Width = 97
          Height = 17
          Caption = 'Endere'#231'o'
          TabOrder = 0
        end
        object ckemp02: TCheckBox
          Left = 14
          Top = 77
          Width = 179
          Height = 17
          Caption = 'Cidade'
          TabOrder = 2
        end
        object ckemp03: TCheckBox
          Left = 14
          Top = 106
          Width = 171
          Height = 17
          Caption = 'Estado'
          TabOrder = 3
        end
        object ckemp04: TCheckBox
          Left = 14
          Top = 134
          Width = 139
          Height = 17
          Caption = 'Nome do Contato'
          TabOrder = 4
        end
        object ckemp01: TCheckBox
          Left = 14
          Top = 49
          Width = 97
          Height = 17
          Caption = 'Telefone'
          TabOrder = 1
        end
        object ckemp07: TCheckBox
          Left = 14
          Top = 219
          Width = 155
          Height = 17
          Caption = 'Nome do Financeiro'
          TabOrder = 7
        end
        object ckemp08: TCheckBox
          Left = 14
          Top = 248
          Width = 75
          Height = 17
          Caption = 'Cnpj/Insc'
          TabOrder = 8
        end
        object ckemp05: TCheckBox
          Left = 14
          Top = 162
          Width = 187
          Height = 17
          Caption = 'Nome do  Respons'#225'vel TCE'
          TabOrder = 5
        end
        object ckemp06: TCheckBox
          Left = 14
          Top = 191
          Width = 139
          Height = 17
          Caption = 'Nome do Entrevistador'
          TabOrder = 6
        end
      end
      object GroupBox18: TGroupBox
        Left = 248
        Top = 16
        Width = 513
        Height = 313
        Caption = 'Filtro'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Pesquisa por: '
        end
        object Notebook2: TNotebook
          Left = 88
          Top = 25
          Width = 419
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Page1'
            object edpar2: TEdit
              Left = 4
              Top = 6
              Width = 398
              Height = 19
              CharCase = ecUpperCase
              TabOrder = 0
              OnExit = edpar2Exit
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Page2'
            object RadioGroup1: TRadioGroup
              Left = 0
              Top = 0
              Width = 412
              Height = 29
              Columns = 3
              ItemIndex = 2
              Items.Strings = (
                'Ind'#250'stria'
                'Com'#233'rcio'
                'Servi'#231'os')
              TabOrder = 0
              OnClick = RadioGroup1Click
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Page3'
            object RadioGroup4: TRadioGroup
              Left = 0
              Top = 0
              Width = 375
              Height = 29
              Columns = 4
              ItemIndex = 0
              Items.Strings = (
                'Pequeno'
                'M'#233'dio'
                'Grande'
                'Multinac.')
              TabOrder = 0
              OnClick = RadioGroup4Click
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Page4'
            object mePesqCnpj2: TMaskEdit
              Left = 6
              Top = 6
              Width = 122
              Height = 19
              EditMask = '99.999.999/9999-99;0; '
              MaxLength = 18
              TabOrder = 0
              OnExit = mePesqCnpj2Exit
            end
          end
        end
        object cbTipoPesquisa2: TComboBox
          Left = 8
          Top = 31
          Width = 76
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 1
          Text = 'Nome'
          OnChange = cbTipoPesquisa2Change
          Items.Strings = (
            'C'#243'digo'
            'Nome'
            'Ramo'
            'Porte'
            'Endere'#231'o'
            'Bairro'
            'Cidade'
            'CNPJ'
            'Estado')
        end
        object mempresa: TMemo
          Left = 160
          Top = 168
          Width = 337
          Height = 89
          Lines.Strings = (
            'select '
            
              'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco,' +
              ' '
            
              '       Emp_bairro Bairro, Emp_cidade Cidade, Emp_estado Estado,E' +
              'mp_cep Cep, '
            
              '       Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , e' +
              'f1.efu_nome Contato, '
            '        ef2.efu_nome Compromisso, '
            '      ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, '
            '      f.func_nome'
            ''
            ' from Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, '
            '      EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F '
            ''
            ' where e.emp_cod       *= ef1.emp_cod  and '
            '      e.emp_respcont  *= ef1.func_cod and '
            '      e.emp_cod       *= ef2.emp_cod  and '
            '      e.emp_respcomp  *= ef2.func_cod and '
            '      e.emp_cod       *= ef3.emp_cod  and '
            '      e.emp_respent   *= ef3.func_cod and '
            '      e.emp_cod       *= ef4.emp_cod  and '
            '      e.emp_respfin   *= ef4.func_cod and '
            '      e.emp_funccont  *= f.func_cod')
          ScrollBars = ssBoth
          TabOrder = 2
          Visible = False
        end
        object DBGrid3: TDBGrid
          Left = 8
          Top = 57
          Width = 499
          Height = 225
          DataSource = dtsEmpresa
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object chkEmpresa: TCheckBox
          Left = 8
          Top = 288
          Width = 201
          Height = 17
          Caption = 'Filtrar Por Empresa'
          TabOrder = 4
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Filtros Gerais'
      ImageIndex = 4
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 770
        Height = 342
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Curso'
          object GroupBox16: TGroupBox
            Left = 10
            Top = 3
            Width = 751
            Height = 311
            Caption = 'Curso'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 13
              Width = 67
              Height = 13
              Caption = 'Pesquisa por: '
            end
            object SpeedButton10: TSpeedButton
              Left = 396
              Top = 59
              Width = 20
              Height = 23
              Caption = '>'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton10Click
            end
            object SpeedButton11: TSpeedButton
              Left = 396
              Top = 88
              Width = 20
              Height = 23
              Caption = '>>'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton11Click
            end
            object SpeedButton12: TSpeedButton
              Left = 396
              Top = 145
              Width = 20
              Height = 23
              Caption = '<'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton12Click
            end
            object SpeedButton13: TSpeedButton
              Left = 396
              Top = 184
              Width = 20
              Height = 23
              Caption = '<<'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton13Click
            end
            object cbPesquisaCurso: TComboBox
              Left = 8
              Top = 28
              Width = 84
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 0
              Text = 'Nome'
              Items.Strings = (
                'C'#243'digo'
                'Nome')
            end
            object edParametro: TEdit
              Left = 97
              Top = 28
              Width = 264
              Height = 19
              CharCase = ecUpperCase
              TabOrder = 1
              OnExit = edParametroExit
              OnKeyPress = edParametroKeyPress
            end
            object DBGrid2: TDBGrid
              Left = 8
              Top = 53
              Width = 353
              Height = 227
              DataSource = dtsCurso
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
            object listacurso: TListBox
              Left = 431
              Top = 7
              Width = 317
              Height = 274
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 3
            end
            object controlecurso: TListBox
              Left = 476
              Top = 38
              Width = 121
              Height = 241
              ItemHeight = 13
              TabOrder = 4
              Visible = False
            end
            object chkExetoCurso: TCheckBox
              Left = 433
              Top = 282
              Width = 97
              Height = 17
              Caption = 'Exceto'
              TabOrder = 5
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Instituicao'
          ImageIndex = 1
          object GroupBox17: TGroupBox
            Left = 2
            Top = 3
            Width = 751
            Height = 305
            Caption = 'Institui'#231#227'o'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label2: TLabel
              Left = 4
              Top = 13
              Width = 67
              Height = 13
              Caption = 'Pesquisa por: '
            end
            object SpeedButton7: TSpeedButton
              Left = 396
              Top = 59
              Width = 20
              Height = 23
              Caption = '>'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton7Click
            end
            object SpeedButton6: TSpeedButton
              Left = 396
              Top = 145
              Width = 20
              Height = 23
              Caption = '<'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton6Click
            end
            object SpeedButton5: TSpeedButton
              Left = 396
              Top = 184
              Width = 20
              Height = 23
              Caption = '<<'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton5Click
            end
            object SpeedButton8: TSpeedButton
              Left = 396
              Top = 88
              Width = 20
              Height = 23
              Caption = '>>'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton8Click
            end
            object Notebook1: TNotebook
              Left = 99
              Top = 8
              Width = 278
              Height = 47
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object TPage
                Left = 0
                Top = 0
                Caption = 'Page1'
                object edPar: TEdit
                  Left = 4
                  Top = 22
                  Width = 269
                  Height = 19
                  CharCase = ecUpperCase
                  TabOrder = 0
                  OnExit = edParExit
                  OnKeyPress = edParKeyPress
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Page2'
                object RadioGroup2: TRadioGroup
                  Left = 0
                  Top = 12
                  Width = 276
                  Height = 30
                  Columns = 4
                  ItemIndex = 3
                  Items.Strings = (
                    'Municipal'
                    'Estadual'
                    'Federal'
                    'Particular')
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Page3'
                object RadioGroup3: TRadioGroup
                  Left = 0
                  Top = -3
                  Width = 288
                  Height = 50
                  Columns = 3
                  ItemIndex = 2
                  Items.Strings = (
                    'M'#233'dio'
                    'P'#243's-M'#233'dio'
                    'Superior'
                    'P'#243's-Gradua'#231#227'o')
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Page4'
                object mePesqCnpj: TMaskEdit
                  Left = 6
                  Top = 22
                  Width = 122
                  Height = 19
                  EditMask = '99.999.999/9999-99;0; '
                  MaxLength = 18
                  TabOrder = 0
                end
              end
            end
            object DBGrid1: TDBGrid
              Left = 2
              Top = 64
              Width = 377
              Height = 214
              DataSource = DTSInstituicao
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
            object cbTipoPesquisa: TComboBox
              Left = 4
              Top = 28
              Width = 76
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 2
              Text = 'Nome'
              OnChange = cbTipoPesquisaChange
              Items.Strings = (
                'C'#243'digo'
                'Nome'
                'Tipo'
                'N'#237'vel'
                'Endere'#231'o'
                'Bairro'
                'Cidade'
                'CNPJ'
                'Estado')
            end
            object listaPessoa: TListBox
              Left = 431
              Top = 7
              Width = 317
              Height = 274
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 3
            end
            object controlePessoa: TListBox
              Left = 476
              Top = 38
              Width = 121
              Height = 241
              ItemHeight = 13
              TabOrder = 4
              Visible = False
            end
            object ckExeto: TCheckBox
              Left = 433
              Top = 282
              Width = 97
              Height = 17
              Caption = 'Exceto'
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  object popCurso: TPopupMenu
    Left = 180
    Top = 72
    object Marcartodos1: TMenuItem
      Caption = 'Marcar todos'
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
    end
  end
  object qrypesquisa: TQuery
    OnCalcFields = qrypesquisaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     Estudante.Est_nome Estudante , Estudante.Est_dtnasc N' +
        'ascimento ,  Estudante.Est_bairro Bairro, Estudante.Est_estadoci' +
        'vil Civil, Estudante.cur_cod CodCurso, Estudante.inst_cod InstCo' +
        'd, '
      
        '                      Instituicao.Inst_nome Instituicao, Curso.c' +
        'ur_nome Curso, Estudante.pcu_vestib, Estudante.est_Situacao , Es' +
        'tudante.est_cursoSituacao , Estudante.est_filhos Filhos, Estudan' +
        'te.Est_sexo Sexo, '
      
        '                      Estudante.est_cod,est_ativo,est_email Emai' +
        'l,Estudante.Est_fone1 Telefone,Estudante.est_fone2 Celular,Estud' +
        'ante.Est_Recado Recado ,'
      'case'
      ' when pcu_vestib = 0 then '#39'Ver'#227'o'#39
      ' when pcu_vestib = 1 then '#39'Inverno'#39
      'end Vestibular,'
      'case'
      'when Estudante.pcu_turno =  0  then '#39'Manh'#227#39
      'when Estudante.pcu_turno =  1  then '#39'Tarde'#39
      'when Estudante.pcu_turno =  2  then '#39'Noite'#39
      'when Estudante.pcu_turno =  3  then '#39'Manh'#227' / Tarde'#39
      'when Estudante.pcu_turno =  4  then '#39'Manh'#227' / Noite'#39
      'when Estudante.pcu_turno =  5  then '#39'Tarde / Noite'#39
      'end Turno,'
      'Estudante.est_dtatu Atualizacao,'
      'Estudante.dat_perfil,'
      'Funcionario.func_nome Recrutador,'
      'case '
      
        'when datediff(day,dat_perfil,getdate()) > 91 then '#39'Desatualizado' +
        #39
      
        'when datediff(day,dat_perfil,getdate()) is null then '#39'Sem Perfil' +
        #39
      'when datediff(day,dat_perfil,getdate()) < 91 then '#39'Atualizado'#39
      'end StatusPerfil,'
      'Estudante.Est_desempenho,'
      'Estudante.Est_dtinc   Inclusao,'
      'Estudante.pcu_anoatual Ano'
      'FROM         Instituicao INNER JOIN'
      
        '                      Estudante ON Instituicao.Inst_cod = Estuda' +
        'nte.inst_cod INNER JOIN'
      '                      Curso ON Estudante.cur_cod = Curso.cur_cod'
      
        'LEFT OUTER JOIN FUNCIONARIO ON estudante.Est_recrutadora = funci' +
        'onario.func_cod'
      ''
      'where'
      
        'est_situacao = '#39'S'#39'  or pcu_anoatual = 2008 or est_cod in (select' +
        ' est_cod from tce where tce_data > '
      #39'06/01/2007'#39')')
    Left = 200
    Top = 130
    object qrypesquisaEstudante: TStringField
      FieldName = 'Estudante'
      Size = 50
    end
    object qrypesquisaNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Visible = False
    end
    object qrypesquisaFilhos: TSmallintField
      FieldName = 'Filhos'
      Visible = False
    end
    object qrypesquisaSexo: TStringField
      FieldName = 'Sexo'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qrypesquisaBairro: TStringField
      FieldName = 'Bairro'
      Visible = False
      Size = 50
    end
    object qrypesquisaCivil: TStringField
      FieldName = 'Civil'
      Visible = False
    end
    object qrypesquisaEmail: TStringField
      FieldName = 'Email'
      Visible = False
      Size = 50
    end
    object qrypesquisaTelefone: TStringField
      FieldName = 'Telefone'
      Visible = False
      OnGetText = qrypesquisaTelefoneGetText
      Size = 15
    end
    object qrypesquisaCelular: TStringField
      FieldName = 'Celular'
      Visible = False
      OnGetText = qrypesquisaCelularGetText
      Size = 15
    end
    object qrypesquisaRecado: TStringField
      FieldName = 'Recado'
      Visible = False
      OnGetText = qrypesquisaRecadoGetText
      Size = 15
    end
    object qrypesquisaInstituicao: TStringField
      FieldName = 'Instituicao'
      Visible = False
      Size = 150
    end
    object qrypesquisaTurno: TStringField
      FieldName = 'Turno'
      Visible = False
      Size = 13
    end
    object qrypesquisaCurso: TStringField
      FieldName = 'Curso'
      Visible = False
      Size = 150
    end
    object qrypesquisaVestibular: TStringField
      FieldName = 'Vestibular'
      Visible = False
      Size = 7
    end
    object qrypesquisaest_cursoSituacao: TStringField
      DisplayLabel = 'Situacao no Curso'
      FieldName = 'est_cursoSituacao'
      Visible = False
      Size = 15
    end
    object qrypesquisaStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Calculated = True
    end
    object qrypesquisaest_Situacao: TStringField
      DisplayLabel = 'Est_situacao'
      FieldName = 'est_Situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrypesquisaAtualizacao: TDateTimeField
      FieldName = 'Atualizacao'
    end
    object qrypesquisaCodCurso: TIntegerField
      FieldName = 'CodCurso'
      Visible = False
    end
    object qrypesquisaInstCod: TIntegerField
      FieldName = 'InstCod'
      Visible = False
    end
    object qrypesquisapcu_vestib: TStringField
      FieldName = 'pcu_vestib'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrypesquisaest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object qrypesquisaest_ativo: TStringField
      FieldName = 'est_ativo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrypesquisadat_perfil: TDateTimeField
      DisplayLabel = 'Data Perfil'
      FieldName = 'dat_perfil'
    end
    object qrypesquisaRecrutador: TStringField
      FieldName = 'Recrutador'
      Visible = False
      Size = 50
    end
    object qrypesquisaStatusPerfil: TStringField
      DisplayLabel = 'Status Perfil'
      FieldName = 'StatusPerfil'
      Visible = False
      Size = 13
    end
    object qrypesquisaEst_desempenho: TStringField
      DisplayLabel = 'Desempenho'
      FieldName = 'Est_desempenho'
      Visible = False
      Size = 12
    end
    object qrypesquisaInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object qrypesquisaAno: TIntegerField
      FieldName = 'Ano'
    end
  end
  object qryInstituicao: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from instituicao nolock ')
    Left = 193
    Top = 46
  end
  object DTSInstituicao: TDataSource
    DataSet = qryInstituicao
    Left = 563
    Top = 58
  end
  object qryCursos: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    Left = 201
    Top = 102
  end
  object dtsCurso: TDataSource
    DataSet = qryCursos
    Left = 467
    Top = 58
  end
  object qrypesquisa2: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     InstCoordenador.inst_cod, InstCoordenador.coord_cod, ' +
        'InstCoordenador.ico_nome Nome, Instituicao.Inst_nome Instituicao' +
        ', Curso.cur_nome Curso, InstCurso.Curi_duracao Duracao, '
      
        '                      InstCurso.Curi_duracaomax, InstCurso.Curi_' +
        'periodic , InstCoordenador.ico_email Email, InstCoordenador.ico_' +
        'fone Fone,InstCoordenador.ico_fonecel Celular ,'
      'case'
      'when InstCurso.Curi_turno =  0  then '#39'Manh'#227#39
      'when InstCurso.Curi_turno =  1  then '#39'Tarde'#39
      'when InstCurso.Curi_turno =  2  then '#39'Noite'#39
      'when InstCurso.Curi_turno =  3  then '#39'Manh'#227' / Tarde'#39
      'when InstCurso.Curi_turno =  4  then '#39'Manh'#227' / Noite'#39
      'when InstCurso.Curi_turno =  5  then '#39'Tarde / Noite'#39
      'end Turno,'
      'InstCoordenador.ico_Sexo Sexo'
      'FROM         InstCoordenador INNER JOIN'
      
        '                      Instituicao ON InstCoordenador.inst_cod = ' +
        'Instituicao.Inst_cod INNER JOIN'
      
        '                      InstCurso ON Instituicao.Inst_cod = InstCu' +
        'rso.Inst_cod AND InstCoordenador.coord_cod = InstCurso.curi_coor' +
        'd INNER JOIN'
      '                      Curso ON InstCurso.Cur_cod = Curso.cur_cod')
    Left = 128
    Top = 290
    object qrypesquisa2Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qrypesquisa2Sexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object qrypesquisa2Instituicao: TStringField
      FieldName = 'Instituicao'
      Visible = False
      Size = 150
    end
    object qrypesquisa2Curso: TStringField
      FieldName = 'Curso'
      Visible = False
      Size = 150
    end
    object qrypesquisa2Turno: TStringField
      FieldName = 'Turno'
      Size = 13
    end
    object qrypesquisa2Duracao: TIntegerField
      FieldName = 'Duracao'
      Visible = False
    end
    object qrypesquisa2Email: TStringField
      FieldName = 'Email'
      Visible = False
      Size = 80
    end
    object qrypesquisa2Fone: TStringField
      FieldName = 'Fone'
      Visible = False
      OnGetText = qrypesquisa2FoneGetText
      Size = 15
    end
    object qrypesquisa2Celular: TStringField
      FieldName = 'Celular'
      Visible = False
      OnGetText = qrypesquisa2CelularGetText
      Size = 15
    end
    object qrypesquisa2Curi_duracaomax: TIntegerField
      FieldName = 'Curi_duracaomax'
      Visible = False
    end
    object qrypesquisa2inst_cod: TIntegerField
      FieldName = 'inst_cod'
      Visible = False
    end
    object qrypesquisa2Curi_periodic: TStringField
      FieldName = 'Curi_periodic'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrypesquisa2coord_cod: TIntegerField
      FieldName = 'coord_cod'
      Visible = False
    end
  end
  object qrypesquisa3: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     I.Inst_nome AS Nome, I.Inst_endereco AS Endereco, I.I' +
        'nst_bairro AS Bairro, I.Inst_cidade AS Cidade,I.Inst_estado AS E' +
        'stado,'
      '            Curso.cur_nome Curso, Curso.cur_nivel Nivel, '
      
        '           iF1.Ifu_nome AS Convenio,IF2.Ifu_nome AS Compromisso,' +
        ' IF1.Ifu_email AS EmailConvenio, IF2.Ifu_email AS EmailCompromis' +
        'so,'
      
        '           IF3.IFU_NOME AS Divulga1,i.inst_respdivmail1 EmailDiv' +
        'ulga1,'
      
        '           IF4.IFU_NOME AS Divulga2,i.inst_respdivmail2 EmailDiv' +
        'ulga2,'
      
        '           IF5.IFU_NOME AS Divulga3,i.inst_respdivmail3 EmailDiv' +
        'ulga3'
      '                '
      
        'FROM       Instituicao  I,InstFuncionario  IF1, InstFuncionario ' +
        ' IF2,'
      
        '           InstFuncionario  IF3,InstFuncionario  IF4,InstFuncion' +
        'ario  IF5,instCurso  ,Curso '
      '                      '
      'where '
      '  I.Inst_cod = InstCurso.Inst_cod  and'
      '  InstCurso.Cur_cod = Curso.cur_cod and'
      '  I.inst_cod      *= IF1.Inst_cod and'
      '  I.inst_respconv *= IF1.func_cod and'
      '  I.inst_cod      *= IF2.Inst_cod and'
      '  I.inst_respcomp *= IF2.func_cod and'
      '  I.inst_cod      *= IF3.Inst_cod and'
      '  I.inst_respDiv1 *= IF3.func_cod and'
      '  I.inst_cod      *= IF4.Inst_cod and'
      '  I.inst_respDiv2 *= IF4.func_cod and'
      '  I.inst_cod      *= IF5.Inst_cod and'
      '  I.inst_respDiv3 *= IF5.func_cod')
    Left = 192
    Top = 290
    object qrypesquisa3Nome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object qrypesquisa3Curso: TStringField
      FieldName = 'Curso'
      Size = 150
    end
    object qrypesquisa3Nivel: TStringField
      FieldName = 'Nivel'
    end
    object qrypesquisa3Convenio: TStringField
      FieldName = 'Convenio'
      Visible = False
      Size = 50
    end
    object qrypesquisa3Compromisso: TStringField
      FieldName = 'Compromisso'
      Visible = False
      Size = 50
    end
    object qrypesquisa3EmailConvenio: TStringField
      FieldName = 'EmailConvenio'
      Visible = False
      Size = 80
    end
    object qrypesquisa3EmailCompromisso: TStringField
      FieldName = 'EmailCompromisso'
      Visible = False
      Size = 80
    end
    object qrypesquisa3Endereco: TStringField
      FieldName = 'Endereco'
      Visible = False
      Size = 100
    end
    object qrypesquisa3Bairro: TStringField
      FieldName = 'Bairro'
      Visible = False
      Size = 50
    end
    object qrypesquisa3Cidade: TStringField
      FieldName = 'Cidade'
      Visible = False
      Size = 50
    end
    object qrypesquisa3Estado: TStringField
      FieldName = 'Estado'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qrypesquisa3Divulga1: TStringField
      FieldName = 'Divulga1'
      Size = 50
    end
    object qrypesquisa3EmailDivulga1: TStringField
      FieldName = 'EmailDivulga1'
      Size = 60
    end
    object qrypesquisa3Divulga2: TStringField
      FieldName = 'Divulga2'
      Size = 50
    end
    object qrypesquisa3EmailDivulga2: TStringField
      FieldName = 'EmailDivulga2'
      Size = 60
    end
    object qrypesquisa3Divulga3: TStringField
      FieldName = 'Divulga3'
      Size = 50
    end
    object qrypesquisa3EmailDivulga3: TStringField
      FieldName = 'EmailDivulga3'
      Size = 60
    end
  end
  object qryempresa: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from instituicao nolock ')
    Left = 497
    Top = 62
  end
  object dtsEmpresa: TDataSource
    DataSet = qryempresa
    Left = 435
    Top = 58
  end
  object qrypesquisa4: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '
      
        'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco,' +
        ' emp_numend Numero,'
      
        '       Emp_bairro Bairro, Emp_cidade Cidade, Emp_estado Estado,E' +
        'mp_cep Cep, '
      
        '       Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , e' +
        'f1.efu_nome Contato, '
      '        ef2.efu_nome Compromisso, '
      '      ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, '
      '      f.func_nome'
      ''
      ' from Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, '
      '      EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F '
      ''
      ' where e.emp_cod       *= ef1.emp_cod  and '
      '      e.emp_respcont  *= ef1.func_cod and '
      '      e.emp_cod       *= ef2.emp_cod  and '
      '      e.emp_respcomp  *= ef2.func_cod and '
      '      e.emp_cod       *= ef3.emp_cod  and '
      '      e.emp_respent   *= ef3.func_cod and '
      '      e.emp_cod       *= ef4.emp_cod  and '
      '      e.emp_respfin   *= ef4.func_cod and '
      '      e.emp_funccont  *= f.func_cod')
    Left = 528
    Top = 58
    object qrypesquisa4Nome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object qrypesquisa4Fantasia: TStringField
      FieldName = 'Fantasia'
      Size = 150
    end
    object qrypesquisa4Endereco: TStringField
      FieldName = 'Endereco'
      Visible = False
      Size = 100
    end
    object qrypesquisa4Numero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 10
    end
    object qrypesquisa4Bairro: TStringField
      FieldName = 'Bairro'
      Visible = False
      Size = 50
    end
    object qrypesquisa4Cidade: TStringField
      FieldName = 'Cidade'
      Visible = False
      Size = 50
    end
    object qrypesquisa4Estado: TStringField
      FieldName = 'Estado'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qrypesquisa4Cep: TStringField
      FieldName = 'Cep'
      Visible = False
      Size = 8
    end
    object qrypesquisa4Fone: TStringField
      FieldName = 'Fone'
      Visible = False
      OnGetText = qrypesquisa4FoneGetText
      Size = 10
    end
    object qrypesquisa4CNPJ: TStringField
      FieldName = 'CNPJ'
      Visible = False
      OnGetText = qrypesquisa4CNPJGetText
      Size = 14
    end
    object qrypesquisa4Inscest: TStringField
      FieldName = 'Inscest'
      Visible = False
    end
    object qrypesquisa4Contato: TStringField
      FieldName = 'Contato'
      Visible = False
      Size = 50
    end
    object qrypesquisa4Compromisso: TStringField
      FieldName = 'Compromisso'
      Visible = False
      Size = 50
    end
    object qrypesquisa4Entrevistador: TStringField
      FieldName = 'Entrevistador'
      Visible = False
      Size = 50
    end
    object qrypesquisa4Financeiro: TStringField
      FieldName = 'Financeiro'
      Visible = False
      Size = 50
    end
    object qrypesquisa4func_nome: TStringField
      FieldName = 'func_nome'
      Visible = False
      Size = 50
    end
  end
end
