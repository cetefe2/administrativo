inherited FOREST1: TFOREST1
  Left = 321
  Top = 198
  Caption = 'Curso do Estudante'
  ClientHeight = 277
  ClientWidth = 630
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 630
    Height = 258
    inherited btOk: TSpeedButton
      Left = 542
      Top = 230
    end
    inherited Panel2: TPanel
      Width = 609
      Height = 222
      object GroupBox1: TGroupBox
        Left = 9
        Top = 5
        Width = 387
        Height = 103
        Caption = 'Matriculado em'
        TabOrder = 0
        object Label2: TLabel
          Left = 11
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Institui'#231#227'o'
        end
        object Label3: TLabel
          Left = 11
          Top = 55
          Width = 27
          Height = 13
          Caption = 'Curso'
        end
        object Label14: TLabel
          Left = 208
          Top = 72
          Width = 66
          Height = 13
          Caption = 'COD_BANCO'
          FocusControl = DBEdit10
        end
        object DBEdit3: TDBEdit
          Left = 11
          Top = 31
          Width = 46
          Height = 21
          Hint = 'Pressione F2 ou duplo click para abrir a institui'#231#227'o'
          Color = clInfoBk
          DataField = 'Inst_cod'
          DataSource = DmDTA.dsEstudante
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = DBEdit3DblClick
          OnExit = DBEdit3Exit
          OnKeyDown = DBEdit3KeyDown
        end
        object DBEdit4: TDBEdit
          Left = 62
          Top = 31
          Width = 311
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'inst_nome'
          DataSource = DmDTA.dsEstudante
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 11
          Top = 70
          Width = 46
          Height = 21
          Hint = 'Pressione F2 ou duplo click para abrir o curso da institui'#231#227'o'
          Color = clInfoBk
          DataField = 'Cur_cod'
          DataSource = DmDTA.dsEstudante
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnDblClick = DBEdit5DblClick
          OnExit = DBEdit5Exit
          OnKeyDown = DBEdit5KeyDown
        end
        object DBEdit6: TDBEdit
          Left = 62
          Top = 70
          Width = 313
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'cur_nome'
          DataSource = DmDTA.dsEstudante
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 208
          Top = 160
          Width = 56
          Height = 21
          DataField = 'COD_BANCO'
          DataSource = dslBancos
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 109
        Width = 387
        Height = 108
        Caption = 'Dados do Curso'
        TabOrder = 1
        object Label4: TLabel
          Left = 85
          Top = 18
          Width = 89
          Height = 13
          Caption = 'Per'#237'odo/Ano Atual'
        end
        object Label5: TLabel
          Left = 10
          Top = 18
          Width = 46
          Height = 13
          Caption = 'Vestibular'
        end
        object Label1: TLabel
          Left = 185
          Top = 18
          Width = 28
          Height = 13
          Caption = 'Turno'
        end
        object Label9: TLabel
          Left = 291
          Top = 18
          Width = 63
          Height = 13
          Caption = 'Situa'#231#227'o Est.'
        end
        object Label11: TLabel
          Left = 11
          Top = 62
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object Label12: TLabel
          Left = 91
          Top = 62
          Width = 44
          Height = 13
          Caption = 'Semestre'
        end
        object Label13: TLabel
          Left = 195
          Top = 62
          Width = 42
          Height = 13
          Caption = 'Situacao'
        end
        object DBEdit7: TDBEdit
          Left = 85
          Top = 33
          Width = 29
          Height = 21
          DataField = 'Pcu_anoatual'
          DataSource = DmDTA.dsEstudante
          TabOrder = 1
        end
        object cbPerCurInicio: TComboBox
          Left = 10
          Top = 33
          Width = 71
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnClick = cbPerCurInicioClick
          Items.Strings = (
            'Ver'#227'o'
            'Inverno')
        end
        object cboPEriodic: TComboBox
          Left = 119
          Top = 33
          Width = 63
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          OnClick = cbPerCurInicioClick
          Items.Strings = (
            'Ano'
            'Semestre')
        end
        object cboTurno: TComboBox
          Left = 186
          Top = 33
          Width = 100
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
          OnClick = cbPerCurInicioClick
          Items.Strings = (
            'Manh'#227
            'Tarde'
            'Noite'
            'Manh'#227' / Tarde'
            'Manh'#227' / Noite'
            'Tarde / Noite')
        end
        object DBEdit32: TDBEdit
          Left = 291
          Top = 33
          Width = 86
          Height = 21
          Color = cl3DLight
          DataField = 'DescSituacao'
          DataSource = DmDTA.dsEstudante
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 37
          Top = 58
          Width = 43
          Height = 21
          DataField = 'est_cursoano'
          DataSource = DmDTA.dsEstudante
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 139
          Top = 57
          Width = 43
          Height = 21
          DataField = 'est_cursoSem'
          DataSource = DmDTA.dsEstudante
          TabOrder = 6
        end
        object situacao: TDBComboBox
          Left = 248
          Top = 57
          Width = 129
          Height = 21
          DataField = 'est_cursoSituacao'
          DataSource = DmDTA.dsEstudante
          ItemHeight = 13
          Items.Strings = (
            'FORMADO'
            'POSSIVELMENTE FORMADO'
            'CURSANDO'
            'TRANCADO'
            'FALTAM DADOS')
          TabOrder = 7
        end
        object ckFormado: TDBCheckBox
          Left = 13
          Top = 86
          Width = 124
          Height = 17
          Caption = 'Estudante Formado'
          DataField = 'Est_Formado'
          DataSource = DmDTA.dsEstudante
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = ckFormadoClick
        end
        object ckTrancado: TDBCheckBox
          Left = 168
          Top = 86
          Width = 121
          Height = 17
          Caption = 'Trancou o Curso'
          DataField = 'Est_trancado'
          DataSource = DmDTA.dsEstudante
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = ckTrancadoClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 401
        Top = 5
        Width = 200
        Height = 211
        Caption = 'Conta Corrente'
        TabOrder = 2
        object Label6: TLabel
          Left = 13
          Top = 113
          Width = 31
          Height = 13
          Caption = 'Banco'
          Visible = False
        end
        object Label7: TLabel
          Left = 12
          Top = 167
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object Label8: TLabel
          Left = 87
          Top = 167
          Width = 59
          Height = 13
          Caption = 'N'#250'mero C/C'
        end
        object Label10: TLabel
          Left = 13
          Top = 68
          Width = 52
          Height = 13
          Caption = 'Tipo Conta'
        end
        object Label15: TLabel
          Left = 15
          Top = 22
          Width = 74
          Height = 13
          Caption = 'Bancos (HSBC)'
        end
        object DBEdit2: TDBEdit
          Left = 12
          Top = 182
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'est_agencia'
          DataSource = DmDTA.dsEstudante
          TabOrder = 2
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 87
          Top = 182
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'est_conta'
          DataSource = DmDTA.dsEstudante
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object DBComboBox1: TDBComboBox
          Left = 13
          Top = 127
          Width = 178
          Height = 21
          Style = csDropDownList
          DataField = 'est_banco'
          DataSource = DmDTA.dsEstudante
          ItemHeight = 13
          Items.Strings = (
            'Banco do Brasil'
            'Bradesco'
            'Banco Ita'#250)
          TabOrder = 0
          Visible = False
        end
        object DBComboBox2: TDBComboBox
          Left = 12
          Top = 82
          Width = 179
          Height = 21
          Style = csDropDownList
          DataField = 'est_tipoconta'
          DataSource = DmDTA.dsEstudante
          ItemHeight = 13
          Items.Strings = (
            'Conta Poupan'#231'a'
            'Conta Corrente'
            'Conta Sal'#225'rio'
            'Conta Universit'#225'ria')
          TabOrder = 1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 13
          Top = 35
          Width = 174
          Height = 21
          DataField = 'Est_codbanco'
          DataSource = DmDTA.dsEstudante
          KeyField = 'ID_BANCOS'
          ListField = 'BANCO'
          ListSource = dslBancos
          TabOrder = 4
        end
      end
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 258
    Width = 630
  end
  object qrypesquisa: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    Left = 360
    Top = 71
  end
  object qryBancos: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from tb_bancos order by Banco ')
    Left = 320
    Top = 111
    object qryBancosID_BANCOS: TIntegerField
      FieldName = 'ID_BANCOS'
      Origin = 'TALENTPOOL.tb_bancos.ID_BANCOS'
    end
    object qryBancosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'TALENTPOOL.tb_bancos.COD_BANCO'
      FixedChar = True
      Size = 4
    end
    object qryBancosBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'TALENTPOOL.tb_bancos.BANCO'
      Size = 60
    end
  end
  object dslBancos: TDataSource
    DataSet = qryBancos
    Left = 304
    Top = 144
  end
end
