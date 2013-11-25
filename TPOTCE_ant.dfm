inherited FORTCE: TFORTCE
  Left = 199
  Top = 225
  Caption = 'Termo de Compromisso de Est'#225'gio'
  ClientHeight = 355
  ClientWidth = 633
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label20: TLabel [0]
    Left = 215
    Top = 136
    Width = 46
    Height = 13
    Caption = 'Entrada 2'
  end
  inherited sbPrincipal: TStatusBar
    Top = 336
    Width = 633
  end
  inherited Panel1: TPanel
    Width = 633
    Height = 336
    object btImpressao: TSpeedButton [7]
      Left = 581
      Top = 174
      Width = 32
      Height = 31
      Hint = 'Imprimir - F10'
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
    inherited pgPrincipal: TPageControl
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          object lblAno: TLabel [1]
            Left = 402
            Top = 57
            Width = 53
            Height = 13
            Caption = 'Ano / M'#234's:'
            Visible = False
          end
          inherited cbTipoPesquisa: TComboBox
            DropDownCount = 9
            Items.Strings = (
              'TCE'
              'Empresa'
              'Estudante'
              'Institui'#231#227'o'
              'Curso'
              'Emiss'#227'o'
              'In'#237'cio'
              'T'#233'rmino'
              'Rescis'#227'o')
          end
          inherited edParametro: TEdit
            TabStop = False
            TabOrder = 4
          end
          inherited DBGrid1: TDBGrid
            Top = 84
            Height = 183
            DataSource = DmDTA.dsTce
            TabOrder = 3
          end
          object Notebook3: TNotebook
            Left = 91
            Top = 17
            Width = 449
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page2'
              object edEmpCod: TEdit
                Left = 5
                Top = 6
                Width = 44
                Height = 21
                Color = clInfoBk
                TabOrder = 0
                OnDblClick = edEmpCodDblClick
                OnExit = edEmpCodExit
                OnKeyDown = edEmpCodKeyDown
              end
              object edEmpNome: TEdit
                Left = 54
                Top = 6
                Width = 387
                Height = 21
                TabStop = False
                Color = cl3DLight
                ReadOnly = True
                TabOrder = 1
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page3'
              object edEstCod: TEdit
                Left = 5
                Top = 6
                Width = 44
                Height = 21
                Color = clInfoBk
                TabOrder = 0
                OnDblClick = edEstCodDblClick
                OnExit = edEstCodExit
                OnKeyDown = edEstCodKeyDown
              end
              object edEstNome: TEdit
                Left = 53
                Top = 6
                Width = 388
                Height = 21
                TabStop = False
                Color = cl3DLight
                ReadOnly = True
                TabOrder = 1
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page4'
              object edInstCod: TEdit
                Left = 5
                Top = 6
                Width = 44
                Height = 21
                Color = clInfoBk
                TabOrder = 0
                OnDblClick = edInstCodDblClick
                OnExit = edInstCodExit
                OnKeyDown = edInstCodKeyDown
              end
              object edInstNome: TEdit
                Left = 54
                Top = 6
                Width = 389
                Height = 21
                TabStop = False
                Color = cl3DLight
                ReadOnly = True
                TabOrder = 1
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page5'
              object Label25: TLabel
                Left = 86
                Top = 9
                Width = 15
                Height = 13
                Caption = 'at'#233
              end
              object meData1: TMaskEdit
                Left = 9
                Top = 6
                Width = 73
                Height = 21
                EditMask = '99/99/9999;1; '
                MaxLength = 10
                TabOrder = 0
                Text = '  /  /    '
                OnExit = meData1Exit
              end
              object meData2: TMaskEdit
                Left = 106
                Top = 6
                Width = 73
                Height = 21
                EditMask = '99/99/9999;1; '
                MaxLength = 10
                TabOrder = 1
                Text = '  /  /    '
                OnExit = meData2Exit
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Page6'
              object edCurCod: TEdit
                Left = 5
                Top = 6
                Width = 44
                Height = 21
                Color = clInfoBk
                TabOrder = 0
                OnDblClick = edCurCodDblClick
                OnExit = edCurCodExit
                OnKeyDown = edCurCodKeyDown
              end
              object edCurNome: TEdit
                Left = 54
                Top = 6
                Width = 389
                Height = 21
                TabStop = False
                Color = cl3DLight
                ReadOnly = True
                TabOrder = 1
              end
            end
          end
          object rgSituacao: TRadioGroup
            Left = 8
            Top = 47
            Width = 385
            Height = 33
            Columns = 4
            ItemIndex = 3
            Items.Strings = (
              'Normais'
              'Prorrogados'
              'Rescindidos'
              'Todos')
            TabOrder = 2
            OnClick = rgSituacaoClick
          end
          object edAno: TEdit
            Left = 459
            Top = 54
            Width = 48
            Height = 21
            MaxLength = 4
            TabOrder = 5
            Visible = False
          end
          object edMes: TEdit
            Left = 508
            Top = 54
            Width = 24
            Height = 21
            MaxLength = 2
            TabOrder = 6
            Visible = False
            OnExit = edMesExit
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          object Label2: TLabel
            Left = 23
            Top = 15
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'TCE n'#186
          end
          object Label3: TLabel
            Left = 160
            Top = 15
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vaga'
          end
          object Label6: TLabel
            Left = 297
            Top = 15
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estudante'
          end
          object Label12: TLabel
            Left = 24
            Top = 174
            Width = 27
            Height = 13
            Caption = 'In'#237'cio'
          end
          object Label13: TLabel
            Left = 80
            Top = 15
            Width = 39
            Height = 13
            Caption = 'Emiss'#227'o'
          end
          object Label14: TLabel
            Left = 109
            Top = 174
            Width = 38
            Height = 13
            Caption = 'T'#233'rmino'
          end
          object Label15: TLabel
            Left = 360
            Top = 174
            Width = 44
            Height = 13
            Caption = 'Rescis'#227'o'
          end
          object Label16: TLabel
            Left = 428
            Top = 15
            Width = 66
            Height = 13
            Caption = 'Situa'#231#227'o TCE'
          end
          object btImprimir: TSpeedButton
            Left = 196
            Top = 245
            Width = 66
            Height = 25
            Hint = 'Imprimir TCE - Tecla F6'
            Caption = 'Imprimir'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btImprimirClick
          end
          object Label4: TLabel
            Left = 24
            Top = 55
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empresa'
          end
          object Label17: TLabel
            Left = 25
            Top = 136
            Width = 46
            Height = 13
            Caption = 'Entrada 1'
          end
          object Label11: TLabel
            Left = 87
            Top = 136
            Width = 38
            Height = 13
            Caption = 'Sa'#237'da 1'
          end
          object Label18: TLabel
            Left = 151
            Top = 136
            Width = 46
            Height = 13
            Caption = 'Entrada 2'
          end
          object Label19: TLabel
            Left = 215
            Top = 136
            Width = 38
            Height = 13
            Caption = 'Sa'#237'da 2'
          end
          object Label21: TLabel
            Left = 279
            Top = 136
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object Label22: TLabel
            Left = 359
            Top = 136
            Width = 26
            Height = 13
            Caption = 'Bolsa'
          end
          object SpeedButton1: TSpeedButton
            Left = 352
            Top = 245
            Width = 81
            Height = 25
            Hint = 'Altera'#231#245'es no TCE - Tecla F7'
            Caption = 'Altera'#231#245'es'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 433
            Top = 245
            Width = 101
            Height = 25
            Hint = 'Termos Aditivos ao TCE - Tecla F8'
            Caption = 'Termos Aditivos'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object Label23: TLabel
            Left = 192
            Top = 174
            Width = 38
            Height = 13
            Caption = 'Retorno'
          end
          object Label24: TLabel
            Left = 276
            Top = 174
            Width = 55
            Height = 13
            Caption = 'Declara'#231#227'o'
          end
          object SpeedButton3: TSpeedButton
            Left = 262
            Top = 245
            Width = 90
            Height = 25
            Hint = 'Plano de Est'#225'gio - Tecla F9'
            Caption = 'Plano Est'#225'gio'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object btSabado: TSpeedButton
            Left = 106
            Top = 245
            Width = 90
            Height = 25
            Hint = 'Hor'#225'rio de S'#225'bado - Tecla F11'
            Caption = 'Hor'#225'rio S'#225'bado'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btSabadoClick
          end
          object Label26: TLabel
            Left = 445
            Top = 174
            Width = 69
            Height = 13
            Caption = 'Aval. Desemp.'
          end
          object DBEdit1: TDBEdit
            Left = 23
            Top = 29
            Width = 50
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'Tce_cod'
            DataSource = DmDTA.dsTce
            ReadOnly = True
            TabOrder = 0
          end
          object cbTipoSelecao: TComboBox
            Left = 159
            Top = 29
            Width = 132
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 2
            OnChange = cbTipoSelecaoChange
            OnClick = cbTipoSelecaoClick
            Items.Strings = (
              'Cadastrada'
              'N'#227'o cadastrada')
          end
          object Notebook1: TNotebook
            Left = 368
            Top = 53
            Width = 154
            Height = 40
            TabOrder = 4
            OnPageChanged = Notebook1PageChanged
            object TPage
              Left = 0
              Top = 0
              Caption = 'Def1'
              object Label5: TLabel
                Left = 4
                Top = 2
                Width = 25
                Height = 13
                Alignment = taRightJustify
                Caption = 'Vaga'
              end
              object Label9: TLabel
                Left = 65
                Top = 2
                Width = 23
                Height = 13
                Alignment = taRightJustify
                Caption = 'Qtde'
              end
              object Label10: TLabel
                Left = 110
                Top = 2
                Width = 37
                Height = 13
                Alignment = taRightJustify
                Caption = 'Preenc.'
              end
              object DBEdit3: TDBEdit
                Left = 3
                Top = 16
                Width = 58
                Height = 21
                Hint = 'Pressione F2 ou duplo click para abrir a vaga'
                Color = clInfoBk
                DataField = 'Vag_cod'
                DataSource = DmDTA.dsTce
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnDblClick = DBEdit3DblClick
                OnExit = DBEdit3Exit
                OnKeyDown = DBEdit3KeyDown
              end
              object DBEdit9: TDBEdit
                Left = 64
                Top = 16
                Width = 41
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'vag_qtde'
                DataSource = DmDTA.dsTce
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 110
                Top = 16
                Width = 42
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'vag_qtdepreenc'
                DataSource = DmDTA.dsTce
                ReadOnly = True
                TabOrder = 2
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Def2'
            end
          end
          object cbEstEnc: TComboBox
            Left = 297
            Top = 29
            Width = 126
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
            OnChange = cbEstEncChange
            OnClick = cbTipoSelecaoClick
            Items.Strings = (
              'Encaminhado'
              'N'#227'o encaminhado')
          end
          object Notebook2: TNotebook
            Left = 17
            Top = 94
            Width = 513
            Height = 41
            TabOrder = 5
            object TPage
              Left = 0
              Top = 0
              Caption = 'Default'
              object Label7: TLabel
                Left = 7
                Top = 3
                Width = 48
                Height = 13
                Alignment = taRightJustify
                Caption = 'Estudante'
              end
              object DBEdit6: TDBEdit
                Left = 70
                Top = 17
                Width = 435
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'est_nome'
                DataSource = DmDTA.dsTce
                ReadOnly = True
                TabOrder = 0
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 7
                Top = 17
                Width = 60
                Height = 21
                DataField = 'Est_cod'
                DataSource = DmDTA.dsTce
                DropDownWidth = 495
                KeyField = 'est_cod'
                ListField = 'est_cod;est_nome;resultado'
                ListSource = dsEncVaga
                TabOrder = 1
                OnClick = DBLookupComboBox1Click
                OnExit = DBLookupComboBox1Exit
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'Def1'
              object Label8: TLabel
                Left = 8
                Top = 2
                Width = 48
                Height = 13
                Alignment = taRightJustify
                Caption = 'Estudante'
              end
              object DBEdit5: TDBEdit
                Left = 8
                Top = 16
                Width = 58
                Height = 21
                Hint = 'Pressione F2 ou duplo click para abrir o estudante'
                Color = clInfoBk
                DataField = 'Est_cod'
                DataSource = DmDTA.dsTce
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnDblClick = DBEdit5DblClick
                OnExit = DBEdit5Exit
                OnKeyDown = DBEdit5KeyDown
              end
              object DBEdit7: TDBEdit
                Left = 70
                Top = 16
                Width = 435
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'est_nome'
                DataSource = DmDTA.dsTce
                ReadOnly = True
                TabOrder = 1
              end
            end
          end
          object meTceAbert: TMaskEdit
            Left = 80
            Top = 29
            Width = 73
            Height = 21
            TabStop = False
            Color = cl3DLight
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ReadOnly = True
            TabOrder = 1
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceAbertKeyDown
          end
          object meTceDtIni: TMaskEdit
            Left = 24
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 14
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceAbertKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object meTceDtFim: TMaskEdit
            Left = 108
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 15
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceAbertKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object meTceDtRes: TMaskEdit
            Left = 360
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 18
            Text = '  /  /    '
            OnExit = meTceDtResExit
            OnKeyDown = meTceAbertKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object DBEdit11: TDBEdit
            Left = 428
            Top = 29
            Width = 96
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'DescSituacao'
            DataSource = DmDTA.dsTce
            ReadOnly = True
            TabOrder = 19
          end
          object DBCheckBox1: TDBCheckBox
            Left = 464
            Top = 214
            Width = 56
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Seguro'
            DataField = 'Tce_seguro'
            DataSource = DmDTA.dsTce
            TabOrder = 26
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 69
            Width = 58
            Height = 21
            Hint = 'Pressione F2 ou duplo click para abrir a empresa'
            TabStop = False
            Color = clInfoBk
            DataField = 'Emp_cod'
            DataSource = DmDTA.dsTce
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnDblClick = DBEdit2DblClick
            OnExit = DBEdit2Exit
            OnKeyDown = DBEdit2KeyDown
          end
          object DBEdit4: TDBEdit
            Left = 86
            Top = 69
            Width = 278
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'emp_nome'
            DataSource = DmDTA.dsTce
            ReadOnly = True
            TabOrder = 27
          end
          object meEnt1: TMaskEdit
            Left = 25
            Top = 151
            Width = 48
            Height = 21
            EditMask = '99:99;1; '
            MaxLength = 5
            TabOrder = 7
            Text = '  :  '
            OnExit = meEnt1Exit
            OnKeyDown = meTceAbertKeyDown
          end
          object meSai1: TMaskEdit
            Left = 87
            Top = 151
            Width = 48
            Height = 21
            EditMask = '99:99;1; '
            MaxLength = 5
            TabOrder = 8
            Text = '  :  '
            OnExit = meEnt1Exit
            OnKeyDown = meTceAbertKeyDown
          end
          object meEnt2: TMaskEdit
            Left = 151
            Top = 151
            Width = 48
            Height = 21
            EditMask = '99:99;1; '
            MaxLength = 5
            TabOrder = 9
            Text = '  :  '
            OnExit = meEnt1Exit
            OnKeyDown = meTceAbertKeyDown
          end
          object meSai2: TMaskEdit
            Left = 215
            Top = 151
            Width = 48
            Height = 21
            EditMask = '99:99;1; '
            MaxLength = 5
            TabOrder = 10
            Text = '  :  '
            OnExit = meEnt1Exit
            OnKeyDown = meTceAbertKeyDown
          end
          object DBEdit8: TDBEdit
            Left = 359
            Top = 151
            Width = 74
            Height = 21
            DataField = 'Tce_bolsa'
            DataSource = DmDTA.dsTce
            TabOrder = 12
            OnKeyPress = DBEdit8KeyPress
          end
          object cbTipoBolsa: TComboBox
            Left = 440
            Top = 151
            Width = 82
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 13
            OnClick = cbTipoSelecaoClick
            Items.Strings = (
              'Hora'
              'Mensal')
          end
          object meTceDtRet: TMaskEdit
            Left = 192
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 16
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceDtRetKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object meTceDtDec: TMaskEdit
            Left = 276
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 17
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceDtRetKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object DBEdit12: TDBEdit
            Left = 279
            Top = 151
            Width = 69
            Height = 21
            DataField = 'tce_tothoras'
            DataSource = DmDTA.dsTce
            TabOrder = 11
            OnExit = DBEdit12Exit
          end
          object meTceDtAval: TMaskEdit
            Left = 444
            Top = 189
            Width = 77
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 28
            Text = '  /  /    '
            OnExit = meTceAbertExit
            OnKeyDown = meTceAbertKeyDown
            OnKeyPress = meTceDtRetKeyPress
          end
          object DBCheckBox2: TDBCheckBox
            Left = 24
            Top = 215
            Width = 59
            Height = 17
            Caption = '2'#170' feira'
            DataField = 'tce_segunda'
            DataSource = DmDTA.dsTce
            TabOrder = 20
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox3: TDBCheckBox
            Left = 94
            Top = 215
            Width = 59
            Height = 17
            Caption = '3'#170' feira'
            DataField = 'tce_terca'
            DataSource = DmDTA.dsTce
            TabOrder = 21
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox4: TDBCheckBox
            Left = 158
            Top = 215
            Width = 59
            Height = 17
            Caption = '4'#170' feira'
            DataField = 'tce_quarta'
            DataSource = DmDTA.dsTce
            TabOrder = 22
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox5: TDBCheckBox
            Left = 222
            Top = 215
            Width = 59
            Height = 17
            Caption = '5'#170' feira'
            DataField = 'tce_quinta'
            DataSource = DmDTA.dsTce
            TabOrder = 23
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox6: TDBCheckBox
            Left = 286
            Top = 215
            Width = 59
            Height = 17
            Caption = '6'#170' feira'
            DataField = 'tce_sexta'
            DataSource = DmDTA.dsTce
            TabOrder = 24
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox7: TDBCheckBox
            Left = 350
            Top = 215
            Width = 59
            Height = 17
            Caption = 'S'#225'bado'
            DataField = 'tce_sabado'
            DataSource = DmDTA.dsTce
            TabOrder = 25
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox7Click
          end
        end
      end
    end
  end
  inherited usPrincipal: TUpdateSQL
    Left = 289
    Top = 391
  end
  inherited quPrincipal: TQuery
    Left = 257
    Top = 391
  end
  object quEncVaga: TQuery
    OnCalcFields = quEncVagaCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select'
      '  e.*, t.est_nome'
      'from '
      '  Encaminhamento E, Estudante T'
      'where'
      '  e.est_cod = t.est_cod'
      '  e.vag_cod = :vag_cod and'
      '  e.eva_resultado <> 2'
      ''
      'order by'
      '  t.est_nome'
      ' ')
    Left = 192
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
    object quEncVagaest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL."Encaminhamento.DB".Est_cod'
    end
    object quEncVagaest_nome: TStringField
      FieldName = 'est_nome'
      Origin = 'TALENTPOOL."Estudante.DB".Est_nome'
      Size = 50
    end
    object quEncVagaeva_resultado: TStringField
      FieldName = 'eva_resultado'
      Origin = 'TALENTPOOL."Encaminhamento.DB".Eva_resultado'
      Visible = False
      Size = 1
    end
    object quEncVagaResultado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      Calculated = True
    end
  end
  object dsEncVaga: TDataSource
    DataSet = quEncVaga
    Left = 161
    Top = 392
  end
  object qcontrato: TQuery
    DatabaseName = 'TalentPool'
    Left = 368
    Top = 392
  end
  object quBuscaAlteracao: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select * from TceAlteracao where tce_cod = :tce_cod')
    Left = 433
    Top = 390
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tce_cod'
        ParamType = ptUnknown
      end>
  end
end
