inherited FORINS: TFORINS
  Left = 325
  Top = 194
  Caption = 'Cadastro de Institui'#231#245'es de Ensino'
  ClientHeight = 393
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 374
  end
  inherited Panel1: TPanel
    Height = 374
    inherited Bevel1: TBevel
      Height = 356
    end
    inherited btFechar: TSpeedButton
      Top = 295
    end
    inherited Bevel2: TBevel
      Height = 357
    end
    object btImpressao: TSpeedButton [7]
      Left = 581
      Top = 174
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
    object SpeedButton1: TSpeedButton [8]
      Left = 580
      Top = 214
      Width = 33
      Height = 30
      Hint = 'Rela'#231#227'o de Est'#225'giarios por Institui'#231#227'o'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
        07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
        77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
        0733333773FF33F773333333707EE707333333333773F7733333333333700733
        3333333333377333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton [9]
      Left = 580
      Top = 254
      Width = 33
      Height = 30
      Hint = 'Rela'#231#227'o de Institui'#231#245'es'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
        07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
        77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
        0733333773FF33F773333333707EE707333333333773F7733333333333700733
        3333333333377333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    inherited pgPrincipal: TPageControl
      Width = 547
      Height = 355
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          Width = 539
          Height = 324
          inherited cbTipoPesquisa: TComboBox
            Width = 76
            TabOrder = 2
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
          inherited edParametro: TEdit
            TabStop = False
            TabOrder = 3
          end
          inherited DBGrid1: TDBGrid
            Top = 51
            Height = 262
            DataSource = DmDTA.dsInstituicao
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect]
            PopupMenu = PopupMenu1
            TabOrder = 1
          end
          object Notebook1: TNotebook
            Left = 88
            Top = 17
            Width = 449
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
              object edPar: TEdit
                Left = 4
                Top = 6
                Width = 440
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
                OnExit = edParExit
                OnKeyPress = edParametroKeyPress
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page2'
              object RadioGroup1: TRadioGroup
                Left = 0
                Top = -3
                Width = 449
                Height = 31
                Columns = 4
                ItemIndex = 3
                Items.Strings = (
                  'Municipal'
                  'Estadual'
                  'Federal'
                  'Particular')
                TabOrder = 0
                OnClick = RadioGroup1Click
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page3'
              object RadioGroup2: TRadioGroup
                Left = 0
                Top = 0
                Width = 447
                Height = 30
                Columns = 4
                ItemIndex = 2
                Items.Strings = (
                  'M'#233'dio'
                  'P'#243's-M'#233'dio'
                  'Superior'
                  'P'#243's-Gradua'#231#227'o')
                TabOrder = 0
                OnClick = RadioGroup2Click
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page4'
              object mePesqCnpj: TMaskEdit
                Left = 6
                Top = 6
                Width = 122
                Height = 21
                EditMask = '99.999.999/9999-99;0; '
                MaxLength = 18
                TabOrder = 0
                OnExit = mePesqCnpjExit
                OnKeyDown = edInstDtIncKeyDown
                OnKeyPress = edInstDtIncKeyPress
              end
            end
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          Width = 539
          Height = 324
          inherited Bevel3: TBevel
            Height = 267
          end
          inherited lblInclusao: TLabel
            Top = 274
          end
          object btFuncionarios: TSpeedButton
            Left = 369
            Top = 277
            Width = 82
            Height = 22
            Hint = 'Funcion'#225'rios da Institui'#231#227'o - Tecla F6'
            Caption = 'Funcion'#225'rios'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btFuncionariosClick
          end
          object Label2: TLabel
            Left = 28
            Top = 28
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo'
          end
          object Label4: TLabel
            Left = 33
            Top = 56
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome'
          end
          object Label7: TLabel
            Left = 23
            Top = 110
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'C.N.P.J.'
          end
          object Label8: TLabel
            Left = 40
            Top = 139
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'I. E. '
          end
          object Label3: TLabel
            Left = 111
            Top = 27
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Inclus'#227'o'
          end
          object Label11: TLabel
            Left = 201
            Top = 110
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Caption = 'Site'
          end
          object Label5: TLabel
            Left = 199
            Top = 138
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo'
          end
          object Label6: TLabel
            Left = 360
            Top = 138
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#237'vel'
          end
          object Label12: TLabel
            Left = 15
            Top = 167
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o'
          end
          object Label14: TLabel
            Left = 35
            Top = 195
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro'
          end
          object Label15: TLabel
            Left = 269
            Top = 195
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade'
          end
          object Label17: TLabel
            Left = 162
            Top = 223
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone'
          end
          object Label18: TLabel
            Left = 295
            Top = 223
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax'
          end
          object Label13: TLabel
            Left = 42
            Top = 223
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP'
          end
          object btCursos: TSpeedButton
            Left = 452
            Top = 299
            Width = 83
            Height = 22
            Hint = 'Cursos da Institui'#231#227'o - Tecla F8'
            Caption = 'Cursos'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btCursosClick
          end
          object btResponsaveis: TSpeedButton
            Left = 78
            Top = 290
            Width = 82
            Height = 22
            Hint = 'Respons'#225'veis pela Inatitui'#231#227'o - Tecla F7'
            Caption = 'Respons'#225'veis'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = btResponsaveisClick
          end
          object btEtiquetas: TSpeedButton
            Left = 369
            Top = 299
            Width = 82
            Height = 22
            Hint = 'Etiquetas - Tecla F10'
            Caption = 'Etiquetas'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btEtiquetasClick
          end
          object btConvenio: TSpeedButton
            Left = 290
            Top = 299
            Width = 79
            Height = 22
            Hint = 'Conv'#234'nio - Tecla F9'
            Caption = 'Conv'#234'nio'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btConvenioClick
          end
          object btCoordenadores: TSpeedButton
            Left = 16
            Top = 300
            Width = 105
            Height = 22
            Hint = 'Coordenadores / Diretores da Institui'#231#227'o - Tecla F12'
            Caption = 'Coordenadores'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = btCoordenadoresClick
          end
          object Label20: TLabel
            Left = 398
            Top = 166
            Width = 12
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186
          end
          object Label19: TLabel
            Left = 230
            Top = 28
            Width = 122
            Height = 13
            Alignment = taRightJustify
            Caption = 'Retorno Termo Conv'#234'nio:'
          end
          object Label9: TLabel
            Left = 460
            Top = 166
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sala'
          end
          object btDiretores: TSpeedButton
            Left = 452
            Top = 277
            Width = 83
            Height = 22
            Hint = 'Coordenadores / Diretores da Institui'#231#227'o - Tecla F12'
            Caption = 'Diretores'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btDiretoresClick
          end
          object sbHistorico: TSpeedButton
            Left = 290
            Top = 277
            Width = 79
            Height = 22
            Hint = 'Hist'#243'rico de Contatos'
            Caption = 'Hist'#243'rico'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = sbHistoricoClick
          end
          object Label10: TLabel
            Left = 243
            Top = 250
            Width = 120
            Height = 13
            Caption = 'Prazo Declara'#231#227'o Matric.'
            FocusControl = DBEdit14
          end
          object Label16: TLabel
            Left = 14
            Top = 250
            Width = 54
            Height = 13
            Caption = 'Prazo TCE.'
            FocusControl = DBEdit15
          end
          object Label21: TLabel
            Left = 19
            Top = 81
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fantasia'
          end
          object SpeedButton4: TSpeedButton
            Left = 192
            Top = 299
            Width = 98
            Height = 22
            Hint = 'Observac'#245'es'
            Caption = 'Observacoes'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton4Click
          end
          object SpeedButton3: TSpeedButton
            Left = 192
            Top = 277
            Width = 98
            Height = 22
            Hint = 'Procedimentos para o TCE'
            Caption = 'Procedimentos TCE'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object DBEdit1: TDBEdit
            Left = 65
            Top = 24
            Width = 38
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'Inst_cod'
            DataSource = DmDTA.dsInstituicao
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 65
            Top = 52
            Width = 456
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_nome'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 3
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit5: TDBEdit
            Left = 65
            Top = 135
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_inscest'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 6
            OnKeyPress = edInstDtIncKeyPress
          end
          object edInstDtInc: TMaskEdit
            Left = 156
            Top = 24
            Width = 69
            Height = 21
            TabStop = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
            OnExit = edInstDtIncExit
            OnKeyDown = edInstDtIncKeyDown
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 224
            Top = 106
            Width = 298
            Height = 21
            CharCase = ecLowerCase
            DataField = 'Inst_site'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 5
            OnKeyPress = DBEdit2KeyPress
          end
          object DBComboBox1: TDBComboBox
            Left = 225
            Top = 134
            Width = 130
            Height = 21
            Style = csDropDownList
            DataField = 'Inst_tipo'
            DataSource = DmDTA.dsInstituicao
            ItemHeight = 13
            Items.Strings = (
              'Municipal'
              'Estadual'
              'Federal'
              'Particular')
            TabOrder = 7
            OnClick = DBComboBox1Click
          end
          object DBComboBox2: TDBComboBox
            Left = 393
            Top = 134
            Width = 130
            Height = 21
            Style = csDropDownList
            DataField = 'Inst_nivel'
            DataSource = DmDTA.dsInstituicao
            ItemHeight = 13
            Items.Strings = (
              'M'#233'dio'
              'P'#243's-M'#233'dio'
              'Superior'
              'P'#243's-Gradua'#231#227'o')
            TabOrder = 8
            OnClick = DBComboBox1Click
          end
          object DBEdit6: TDBEdit
            Left = 66
            Top = 163
            Width = 327
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_endereco'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 9
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit8: TDBEdit
            Left = 67
            Top = 191
            Width = 195
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_bairro'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 12
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit9: TDBEdit
            Left = 307
            Top = 191
            Width = 186
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_cidade'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 13
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit11: TDBEdit
            Left = 191
            Top = 219
            Width = 96
            Height = 21
            DataField = 'Inst_telefone'
            DataSource = DmDTA.dsInstituicao
            MaxLength = 14
            TabOrder = 16
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit12: TDBEdit
            Left = 317
            Top = 219
            Width = 99
            Height = 21
            DataField = 'Inst_fax'
            DataSource = DmDTA.dsInstituicao
            MaxLength = 14
            TabOrder = 17
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit7: TDBEdit
            Left = 68
            Top = 219
            Width = 88
            Height = 21
            DataField = 'Inst_cep'
            DataSource = DmDTA.dsInstituicao
            MaxLength = 10
            TabOrder = 15
            OnExit = DBEdit7Exit
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit10: TDBEdit
            Left = 497
            Top = 191
            Width = 26
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_estado'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 14
            OnKeyPress = edInstDtIncKeyPress
          end
          object meCnpj: TMaskEdit
            Left = 65
            Top = 106
            Width = 130
            Height = 21
            EditMask = '99.999.999/9999-99;0; '
            MaxLength = 18
            TabOrder = 4
            OnKeyDown = edInstDtIncKeyDown
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit4: TDBEdit
            Left = 414
            Top = 163
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'inst_numend'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 10
            OnKeyPress = edInstDtIncKeyPress
          end
          object edInstDtRetorno: TMaskEdit
            Left = 350
            Top = 24
            Width = 75
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 2
            Text = '  /  /    '
            OnExit = edInstDtIncExit
            OnKeyDown = edInstDtIncKeyDown
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit13: TDBEdit
            Left = 485
            Top = 163
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'inst_sala'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 11
            OnKeyPress = edInstDtIncKeyPress
          end
          object DBEdit14: TDBEdit
            Left = 376
            Top = 244
            Width = 146
            Height = 21
            CharCase = ecUpperCase
            DataField = 'inst_Prazo1'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 19
          end
          object DBEdit15: TDBEdit
            Left = 69
            Top = 244
            Width = 156
            Height = 21
            CharCase = ecUpperCase
            DataField = 'inst_Prazo2'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 18
          end
          object DBEdit16: TDBEdit
            Left = 63
            Top = 77
            Width = 456
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Inst_nomeFantasia'
            DataSource = DmDTA.dsInstituicao
            TabOrder = 20
            OnKeyPress = edInstDtIncKeyPress
          end
        end
      end
    end
    inherited btEnter: TBitBtn
      Top = 377
    end
    object campos: TListBox
      Left = 896
      Top = 476
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
  end
  object qryEstudante: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    Constrained = True
    SQL.Strings = (
      
        'SELECT     Tce.Tce_cod, Empresa.Emp_nome, Estudante.Est_nome, Es' +
        'tudante.est_cod, Estudante.Est_endereco, Estudante.Est_bairro, E' +
        'studante.Est_cidade, '
      
        '                      Estudante.Est_estado, Instituicao.Inst_cod' +
        ', Estudante.est_situacao, Instituicao.Inst_nome, Tce.Tce_estenc,' +
        ' Curso.cur_nome, Curso.cur_nivel'
      'FROM         Instituicao INNER JOIN'
      
        '                      Estudante ON Instituicao.Inst_cod = Estuda' +
        'nte.inst_cod INNER JOIN'
      
        '                      Tce ON Estudante.est_cod = Tce.Est_cod INN' +
        'ER JOIN'
      
        '                      Empresa ON Tce.Emp_cod = Empresa.Emp_cod I' +
        'NNER JOIN'
      '                      Curso ON Estudante.cur_cod = Curso.cur_cod'
      'WHERE     (Estudante.est_situacao = '#39'S'#39')'
      'ORDER BY Instituicao.Inst_nome, Estudante.Est_nome')
    Left = 498
    Top = 14
    object qryEstudanteInst_nome: TStringField
      DisplayLabel = 'Institui'#231#227'o'
      FieldName = 'Inst_nome'
      Size = 150
    end
    object qryEstudanteEst_nome: TStringField
      DisplayLabel = 'Estudante'
      FieldName = 'Est_nome'
      Size = 50
    end
    object qryEstudantecur_nome: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'cur_nome'
      Size = 150
    end
    object qryEstudantecur_nivel: TStringField
      DisplayLabel = 'Nivel'
      FieldName = 'cur_nivel'
    end
    object qryEstudanteTce_cod: TIntegerField
      DisplayLabel = 'Tce'
      FieldName = 'Tce_cod'
    end
    object qryEstudanteEmp_nome: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'Emp_nome'
      Size = 150
    end
    object qryEstudanteest_cod: TIntegerField
      FieldName = 'est_cod'
      Visible = False
    end
    object qryEstudanteEst_endereco: TStringField
      FieldName = 'Est_endereco'
      Visible = False
      Size = 100
    end
    object qryEstudanteEst_bairro: TStringField
      FieldName = 'Est_bairro'
      Visible = False
      Size = 50
    end
    object qryEstudanteEst_cidade: TStringField
      FieldName = 'Est_cidade'
      Visible = False
      Size = 50
    end
    object qryEstudanteEst_estado: TStringField
      FieldName = 'Est_estado'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qryEstudanteInst_cod: TIntegerField
      FieldName = 'Inst_cod'
      Visible = False
    end
    object qryEstudanteest_situacao: TStringField
      FieldName = 'est_situacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryEstudanteTce_estenc: TStringField
      FieldName = 'Tce_estenc'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 33
    Top = 142
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarTodos1Click
    end
  end
end
