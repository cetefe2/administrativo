inherited FOREST: TFOREST
  Left = 307
  Top = 163
  Caption = 'Cadastro de Estudantes'
  ClientHeight = 402
  ClientWidth = 698
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 383
    Width = 698
  end
  inherited Panel1: TPanel
    Width = 698
    Height = 383
    inherited Bevel1: TBevel
      Left = 638
      Height = 361
    end
    inherited btNovo: TSpeedButton
      Left = 647
    end
    inherited btFechar: TSpeedButton
      Left = 647
      Top = 332
    end
    inherited btCancelar: TSpeedButton
      Left = 647
    end
    inherited btSalvar: TSpeedButton
      Left = 647
    end
    inherited btExcluir: TSpeedButton
      Left = 647
    end
    inherited Bevel2: TBevel
      Left = 12
      Width = 621
      Height = 361
    end
    inherited pgPrincipal: TPageControl
      Left = 15
      Width = 606
      Height = 356
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          Width = 598
          Height = 325
          inherited Label1: TLabel
            Left = 11
          end
          inherited cbTipoPesquisa: TComboBox
            Left = 11
            TabOrder = 2
            Items.Strings = (
              'C'#243'digo'
              'Nome'
              'R.G.'
              'CPF'
              'E-mail')
          end
          inherited edParametro: TEdit
            Left = 100
            Width = 493
            TabOrder = 0
            OnExit = edParametroExit
          end
          inherited DBGrid1: TDBGrid
            Left = 11
            Width = 582
            Height = 264
            DataSource = dsEstudante
            TabOrder = 1
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          Width = 598
          Height = 325
          inherited Bevel3: TBevel
            Width = 589
            Height = 256
          end
          inherited lblInclusao: TLabel
            Left = 4
            Top = 269
            Width = 46
            Height = 16
            Font.Height = -13
          end
          object Bevel4: TBevel
            Left = 156
            Top = 66
            Width = 21
            Height = 21
          end
          object Label2: TLabel
            Left = 25
            Top = 20
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label3: TLabel
            Left = 16
            Top = 240
            Width = 40
            Height = 13
            Caption = 'Inclus'#227'o'
          end
          object Label4: TLabel
            Left = 132
            Top = 20
            Width = 20
            Height = 13
            Caption = 'CPF'
          end
          object Label5: TLabel
            Left = 259
            Top = 20
            Width = 16
            Height = 13
            Caption = 'RG'
          end
          object Label6: TLabel
            Left = 30
            Top = 45
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object Label7: TLabel
            Left = 14
            Top = 71
            Width = 48
            Height = 13
            Caption = 'Dt. Nasc. '
          end
          object lblIdade: TLabel
            Left = 161
            Top = 71
            Width = 12
            Height = 13
            Caption = '00'
          end
          object Label9: TLabel
            Left = 478
            Top = 21
            Width = 24
            Height = 13
            Caption = 'Sexo'
          end
          object Label10: TLabel
            Left = 181
            Top = 69
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Est. Civil'
          end
          object Label11: TLabel
            Left = 353
            Top = 69
            Width = 38
            Height = 13
            Caption = 'Religi'#227'o'
          end
          object btPerfil: TSpeedButton
            Left = 193
            Top = 267
            Width = 74
            Height = 23
            Hint = 'Perfil do Estudante - Tecla F7'
            Caption = 'Perfil'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btPerfilClick
          end
          object Label8: TLabel
            Left = 30
            Top = 95
            Width = 28
            Height = 13
            Caption = 'CTPS'
          end
          object Label13: TLabel
            Left = 179
            Top = 95
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
          end
          object Label14: TLabel
            Left = 278
            Top = 95
            Width = 28
            Height = 13
            Caption = 'E-mail'
          end
          object Label15: TLabel
            Left = 12
            Top = 144
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o'
          end
          object Label16: TLabel
            Left = 31
            Top = 192
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro'
          end
          object Label17: TLabel
            Left = 287
            Top = 192
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade'
          end
          object Label18: TLabel
            Left = 104
            Top = 216
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Telefone'
          end
          object Label19: TLabel
            Left = 263
            Top = 215
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'Celular'
          end
          object Label20: TLabel
            Left = 469
            Top = 121
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP'
          end
          object Label21: TLabel
            Left = 311
            Top = 239
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Recado'
          end
          object btCurso: TSpeedButton
            Left = 134
            Top = 267
            Width = 58
            Height = 23
            Hint = 'Cursos do Estudante - Tecla F6'
            Caption = 'Curso'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btCursoClick
          end
          object btIdioma: TSpeedButton
            Left = 270
            Top = 267
            Width = 68
            Height = 23
            Hint = 'Idiomas do Estudante - Tecla F8'
            Caption = 'Idiomas'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btIdiomaClick
          end
          object btSoftware: TSpeedButton
            Left = 342
            Top = 267
            Width = 88
            Height = 23
            Hint = 'Conhecimentos em Inform'#225'tica do Estudante - Tecla F9'
            Caption = 'Inform'#225'tica'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btSoftwareClick
          end
          object btExperiencia: TSpeedButton
            Left = 432
            Top = 267
            Width = 90
            Height = 23
            Hint = 'Experi'#234'ncias do Estudante - Tecla F11'
            Caption = 'Experi'#234'ncias'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btExperienciaClick
          end
          object btPChave: TSpeedButton
            Left = 422
            Top = 396
            Width = 60
            Height = 23
            Hint = 'Palavras Chave do Estudante - Tecla F11'
            Caption = 'P. Chave'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btPChaveClick
          end
          object btCursos: TSpeedButton
            Left = 482
            Top = 396
            Width = 60
            Height = 23
            Hint = 'Cursos do Estudante - Tecla F12'
            Caption = 'Cursos'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btCursosClick
          end
          object Label22: TLabel
            Left = 25
            Top = 217
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estado'
          end
          object btEntrevistas: TSpeedButton
            Left = 375
            Top = 291
            Width = 71
            Height = 23
            Hint = 'Entrevistas do Estudante - Tecla F10'
            Caption = 'Entrevistas'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btEntrevistasClick
          end
          object Label23: TLabel
            Left = 409
            Top = 21
            Width = 27
            Height = 13
            Caption = 'Filhos'
          end
          object Label24: TLabel
            Left = 46
            Top = 168
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label25: TLabel
            Left = 111
            Top = 167
            Width = 108
            Height = 13
            Caption = 'Apto / Casa / Sobrado'
          end
          object Label26: TLabel
            Left = 292
            Top = 167
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bloco'
          end
          object Label12: TLabel
            Left = 450
            Top = 239
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Com'
          end
          object Label27: TLabel
            Left = 139
            Top = 241
            Width = 55
            Height = 13
            Caption = 'Atualiza'#231#227'o'
          end
          object btIntencao: TSpeedButton
            Left = 279
            Top = 291
            Width = 94
            Height = 23
            Hint = 'Inten'#231#227'o de Est'#225'gio do Estudante - Tecla F6'
            Caption = 'Inten'#231#227'o Est'#225'gio'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btIntencaoClick
          end
          object Label30: TLabel
            Left = 16
            Top = 118
            Width = 68
            Height = 13
            Caption = 'Nacionalidade'
          end
          object Label31: TLabel
            Left = 225
            Top = 118
            Width = 57
            Height = 13
            Caption = 'Local Nasc.'
          end
          object btImprimir: TSpeedButton
            Left = 448
            Top = 291
            Width = 70
            Height = 23
            Hint = 'Imprimir Dados do Candidato - Tecla F7'
            Caption = 'Impress'#227'o'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btImprimirClick
          end
          object btInformacoes: TSpeedButton
            Left = 158
            Top = 291
            Width = 119
            Height = 23
            Hint = 'Informa'#231#245'es Adicionais'
            Caption = 'Informa'#231#245'es Adicionais'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btInformacoesClick
          end
          object SpeedButton1: TSpeedButton
            Left = 56
            Top = 291
            Width = 101
            Height = 23
            Caption = 'Encaminhamentos'
            Flat = True
            OnClick = SpeedButton1Click
          end
          object btnRequistos: TSpeedButton
            Left = 56
            Top = 267
            Width = 78
            Height = 23
            Hint = 'Atributos do Estudante (Requistos)'
            Caption = 'Atributos/Req.'
            Flat = True
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnRequistosClick
          end
          object botao1: TSpeedButton
            Left = 518
            Top = 291
            Width = 78
            Height = 23
            Hint = 'Digite a Senha para liberar  Alteracoes no Curso do aluno'
            Caption = 'Senha '
            Flat = True
            OnClick = botao1Click
          end
          object btnContatos: TSpeedButton
            Left = 524
            Top = 267
            Width = 72
            Height = 23
            Caption = 'Contatos'
            Flat = True
            OnClick = btnContatosClick
          end
          object DBEdit1: TDBEdit
            Left = 62
            Top = 16
            Width = 59
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'Est_cod'
            DataSource = DmDTA.dsEstudante
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 280
            Top = 16
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_rg'
            DataSource = DmDTA.dsEstudante
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 62
            Top = 41
            Width = 523
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_nome'
            DataSource = DmDTA.dsEstudante
            TabOrder = 6
            OnKeyPress = DBEdit5KeyPress
          end
          object DBComboBox2: TDBComboBox
            Left = 228
            Top = 66
            Width = 117
            Height = 21
            Style = csDropDownList
            DataField = 'Est_estadocivil'
            DataSource = DmDTA.dsEstudante
            ItemHeight = 13
            Items.Strings = (
              'Solteiro'
              'Casado'
              'Vi'#250'vo'
              'Divorciado'
              'Outros')
            TabOrder = 10
          end
          object DBComboBox3: TDBComboBox
            Left = 398
            Top = 66
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'Est_religiao'
            DataSource = DmDTA.dsEstudante
            ItemHeight = 13
            Items.Strings = (
              'Cat'#243'lica'
              'Evang'#233'lica'
              'Esp'#237'rita'
              'Budista'
              'Mu'#231'ulmana'
              'Outra')
            TabOrder = 11
          end
          object edEstDtIncx: TMaskEdit
            Left = 63
            Top = 237
            Width = 70
            Height = 21
            TabStop = False
            Color = cl3DLight
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ReadOnly = True
            TabOrder = 1
            Text = '  /  /    '
            Visible = False
            OnExit = edEstDtIncxExit
            OnKeyDown = edEstDtIncxKeyDown
          end
          object edEstDtNascx: TMaskEdit
            Left = 462
            Top = 162
            Width = 82
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 9
            Text = '  /  /    '
            Visible = False
            OnExit = edEstDtNascxExit
            OnKeyDown = edEstDtIncxKeyDown
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 62
            Top = 90
            Width = 112
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_ctpsnum'
            DataSource = DmDTA.dsEstudante
            TabOrder = 12
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 211
            Top = 91
            Width = 63
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_ctpsserie'
            DataSource = DmDTA.dsEstudante
            TabOrder = 13
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 311
            Top = 91
            Width = 274
            Height = 21
            CharCase = ecLowerCase
            DataField = 'Est_email'
            DataSource = DmDTA.dsEstudante
            TabOrder = 14
            OnKeyPress = DBEdit7KeyPress
          end
          object DBEdit8: TDBEdit
            Left = 62
            Top = 140
            Width = 524
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_endereco'
            DataSource = DmDTA.dsEstudante
            TabOrder = 18
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit9: TDBEdit
            Left = 62
            Top = 189
            Width = 208
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_bairro'
            DataSource = DmDTA.dsEstudante
            TabOrder = 22
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 325
            Top = 188
            Width = 261
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_cidade'
            DataSource = DmDTA.dsEstudante
            TabOrder = 23
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 149
            Top = 212
            Width = 104
            Height = 21
            DataField = 'Est_fone1'
            DataSource = DmDTA.dsEstudante
            TabOrder = 25
          end
          object DBEdit12: TDBEdit
            Left = 300
            Top = 211
            Width = 111
            Height = 21
            DataField = 'Est_fone2'
            DataSource = DmDTA.dsEstudante
            TabOrder = 26
          end
          object DBEdit13: TDBEdit
            Left = 494
            Top = 117
            Width = 91
            Height = 21
            DataField = 'Est_cep'
            DataSource = DmDTA.dsEstudante
            TabOrder = 17
            OnExit = DBEdit13Exit
          end
          object DBEdit14: TDBEdit
            Left = 357
            Top = 236
            Width = 92
            Height = 21
            DataField = 'Est_recado'
            DataSource = DmDTA.dsEstudante
            TabOrder = 29
          end
          object DBEdit15: TDBEdit
            Left = 63
            Top = 213
            Width = 28
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_estado'
            DataSource = DmDTA.dsEstudante
            TabOrder = 24
            OnKeyPress = DBEdit5KeyPress
          end
          object meCpf: TMaskEdit
            Left = 158
            Top = 16
            Width = 93
            Height = 21
            EditMask = '999.999.999-99;0; '
            MaxLength = 14
            TabOrder = 2
            Text = '99999999999'
            OnExit = meCpfExit
            OnKeyDown = edEstDtIncxKeyDown
          end
          object DBEdit3: TDBEdit
            Left = 476
            Top = 236
            Width = 111
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Est_nomerecado'
            DataSource = DmDTA.dsEstudante
            TabOrder = 30
          end
          object DBEdit16: TDBEdit
            Left = 440
            Top = 17
            Width = 31
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_filhos'
            DataSource = DmDTA.dsEstudante
            TabOrder = 4
          end
          object DBEdit17: TDBEdit
            Left = 62
            Top = 164
            Width = 44
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_numend'
            DataSource = DmDTA.dsEstudante
            TabOrder = 19
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit18: TDBEdit
            Left = 227
            Top = 164
            Width = 56
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_apto'
            DataSource = DmDTA.dsEstudante
            TabOrder = 20
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 325
            Top = 163
            Width = 30
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_bloco'
            DataSource = DmDTA.dsEstudante
            TabOrder = 21
            OnKeyPress = DBEdit5KeyPress
          end
          object edEstDtAtux: TMaskEdit
            Left = 600
            Top = 221
            Width = 70
            Height = 21
            TabStop = False
            Color = cl3DLight
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ReadOnly = True
            TabOrder = 28
            Text = '  /  /    '
            Visible = False
            OnExit = edEstDtNascxExit
            OnKeyDown = edEstDtIncxKeyDown
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit21: TDBEdit
            Left = 91
            Top = 115
            Width = 123
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_nacionalidade'
            DataSource = DmDTA.dsEstudante
            TabOrder = 15
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit22: TDBEdit
            Left = 288
            Top = 115
            Width = 155
            Height = 21
            CharCase = ecUpperCase
            DataField = 'est_localnasc'
            DataSource = DmDTA.dsEstudante
            TabOrder = 16
            OnKeyPress = DBEdit5KeyPress
          end
          object edEstDtNasc: TDBEdit
            Left = 495
            Top = 162
            Width = 81
            Height = 21
            DataField = 'Est_dtnasc'
            DataSource = DmDTA.dsEstudante
            TabOrder = 8
            Visible = False
            OnExit = edEstDtNascExit
          end
          object edEstDtInc: TDBEdit
            Left = 63
            Top = 237
            Width = 69
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'Est_dtinc'
            DataSource = DmDTA.dsEstudante
            TabOrder = 31
            OnExit = edEstDtNascExit
          end
          object edEstDtAtu: TDBEdit
            Left = 616
            Top = 213
            Width = 69
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'est_dtatu'
            DataSource = DmDTA.dsEstudante
            TabOrder = 32
            Visible = False
            OnExit = edEstDtNascExit
          end
          object DBComboBox1: TDBComboBox
            Left = 512
            Top = 16
            Width = 73
            Height = 21
            DataField = 'Est_sexo'
            DataSource = DmDTA.dsEstudante
            ItemHeight = 13
            Items.Strings = (
              'F'
              'M')
            TabOrder = 5
          end
          object DBCheckBox1: TDBCheckBox
            Left = 408
            Top = 166
            Width = 50
            Height = 17
            Caption = 'Ativo'
            DataField = 'est_Ativo'
            DataSource = DmDTA.dsEstudante
            TabOrder = 34
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Panel4: TPanel
            Left = 192
            Top = 112
            Width = 217
            Height = 97
            TabOrder = 33
            Visible = False
            object Label28: TLabel
              Left = 48
              Top = 16
              Width = 73
              Height = 13
              Caption = 'Digite a Senha '
            end
            object BitBtn1: TBitBtn
              Left = 71
              Top = 64
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 0
              OnClick = BitBtn1Click
            end
            object senha: TMaskEdit
              Left = 48
              Top = 32
              Width = 121
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
              Text = 'senha'
              OnExit = senhaExit
            end
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 62
            Top = 66
            DataBinding.DataField = 'Est_dtnasc'
            DataBinding.DataSource = DmDTA.dsEstudante
            Style.BorderStyle = ebs3D
            TabOrder = 7
            OnExit = cxDBDateEdit1Exit
            Width = 92
          end
          object DBDateEdit1: TDBDateEdit
            Left = 198
            Top = 236
            Width = 110
            Height = 21
            DataField = 'est_dtatu'
            DataSource = DmDTA.dsEstudante
            NumGlyphs = 2
            TabOrder = 27
          end
        end
      end
    end
    inherited btEnter: TBitBtn
      Left = 88
      Top = 455
    end
  end
  inherited usPrincipal: TUpdateSQL
    Top = 458
  end
  inherited quPrincipal: TQuery
    Top = 458
  end
  object quEstudante: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select est_cod, est_nome, est_cpf, est_rg, est_sexo, est_dtnasc,' +
        ' est_pgtolib'
      'from Estudante Order by est_cod')
    UpdateObject = usEstudante
    Left = 384
    Top = 455
    object quEstudanteEst_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'Est_cod'
      Origin = 'TALENTPOOL.estudante.Est_cod'
    end
    object quEstudanteEst_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 48
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.estudante.Est_nome'
      Size = 50
    end
    object quEstudanteEst_cpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'Est_cpf'
      Origin = 'TALENTPOOL.estudante.Est_cpf'
      EditMask = '999.999.999-99;0; '
      Size = 11
    end
    object quEstudanteEst_rg: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 14
      FieldName = 'Est_rg'
      Origin = 'TALENTPOOL.estudante.Est_rg'
    end
    object quEstudanteEst_sexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 5
      FieldName = 'Est_sexo'
      Origin = 'TALENTPOOL.estudante.Est_sexo'
      Size = 1
    end
    object quEstudanteest_dtnasc: TDateTimeField
      FieldName = 'est_dtnasc'
      Visible = False
    end
    object quEstudanteest_pgtolib: TStringField
      FieldName = 'est_pgtolib'
      Visible = False
      Size = 2
    end
  end
  object dsEstudante: TDataSource
    DataSet = quEstudante
    Left = 344
    Top = 455
  end
  object usEstudante: TUpdateSQL
    ModifySQL.Strings = (
      'update estudante'
      'set'
      '  est_cod = :est_cod,'
      '  est_nome = :est_nome,'
      '  est_cpf = :est_cpf,'
      '  est_rg = :est_rg,'
      '  est_sexo = :est_sexo,'
      '  est_dtnasc = :est_dtnasc,'
      '  est_pgtolib = :est_pgtolib'
      'where'
      '  est_cod = :OLD_est_cod')
    InsertSQL.Strings = (
      'insert into estudante'
      
        '  (est_cod, est_nome, est_cpf, est_rg, est_sexo, est_dtnasc, est' +
        '_pgtolib)'
      'values'
      
        '  (:est_cod, :est_nome, :est_cpf, :est_rg, :est_sexo, :est_dtnas' +
        'c, :est_pgtolib)')
    DeleteSQL.Strings = (
      'delete from estudante'
      'where'
      '  est_cod = :OLD_est_cod')
    Left = 416
    Top = 455
  end
  object qrypesquisa: TQuery
    DatabaseName = 'TalentPool'
    Left = 96
    Top = 536
  end
end
