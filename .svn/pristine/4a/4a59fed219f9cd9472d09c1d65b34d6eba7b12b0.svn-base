object FORENC: TFORENC
  Left = 317
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Encaminhamento de Vagas'
  ClientHeight = 523
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 504
    Width = 632
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 504
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Bevel2: TBevel
      Left = 10
      Top = 10
      Width = 612
      Height = 311
    end
    object Panel3: TPanel
      Left = 4
      Top = 4
      Width = 624
      Height = 496
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel3: TBevel
        Left = 7
        Top = 9
        Width = 609
        Height = 448
        Shape = bsFrame
      end
      object btImprimirCarta: TSpeedButton
        Left = 9
        Top = 464
        Width = 90
        Height = 25
        Hint = 'Imprimir Carta de Encaminhamento - Tecla F6'
        Caption = 'Imprimir Carta'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = btImprimirCartaClick
      end
      object btFechar: TSpeedButton
        Left = 588
        Top = 461
        Width = 28
        Height = 26
        Hint = 'Fechar - F4'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btFecharClick
      end
      object btRetornoReprovados: TSpeedButton
        Left = 107
        Top = 464
        Width = 166
        Height = 25
        Hint = 'Envio de E-Mail aos Reprovados - Tecla F8'
        Caption = 'E-Mail Retorno Reprovados'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = btRetornoReprovadosClick
      end
      object btEncaminhamento: TSpeedButton
        Left = 281
        Top = 464
        Width = 186
        Height = 25
        Hint = 'Envio de E-Mail dos Encaminhados '#224' Empresa - Tecla F8'
        Caption = 'E-Mail Candidatos Encaminhados'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = btEncaminhamentoClick
      end
      object GroupBox1: TGroupBox
        Left = 15
        Top = 13
        Width = 593
        Height = 123
        Caption = 'Identifica'#231#227'o da Oportunidade'
        TabOrder = 0
        object Label2: TLabel
          Left = 30
          Top = 24
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero:'
        end
        object Label3: TLabel
          Left = 409
          Top = 24
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.:'
        end
        object Label4: TLabel
          Left = 493
          Top = 24
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Preenc.:'
        end
        object Label5: TLabel
          Left = 26
          Top = 48
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa:'
        end
        object Label6: TLabel
          Left = 176
          Top = 24
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Abertura:'
        end
        object Label1: TLabel
          Left = 7
          Top = 72
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #193'rea Est'#225'gio:'
        end
        object Label22: TLabel
          Left = 27
          Top = 97
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sele'#231#227'o:'
        end
        object DBEdit1: TDBEdit
          Left = 74
          Top = 21
          Width = 45
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'Vag_cod'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 444
          Top = 21
          Width = 41
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'Vag_qtde'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 539
          Top = 21
          Width = 41
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'Vag_qtdepreenc'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 122
          Top = 45
          Width = 458
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'Emp_nome'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 74
          Top = 45
          Width = 45
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'Emp_cod'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 74
          Top = 70
          Width = 506
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = cl3DLight
          DataField = 'AreaEstagio'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 225
          Top = 21
          Width = 91
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'vag_dataabertura'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit17: TDBEdit
          Left = 74
          Top = 94
          Width = 506
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = cl3DLight
          DataField = 'Selecionador'
          DataSource = DmDTA.dsVaga
          ReadOnly = True
          TabOrder = 7
        end
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 136
        Width = 594
        Height = 314
        Caption = 'Encaminhamentos Realizados'
        TabOrder = 1
        object Bevel1: TBevel
          Left = 541
          Top = 20
          Width = 42
          Height = 288
        end
        object btExcluir: TSpeedButton
          Left = 549
          Top = 69
          Width = 25
          Height = 30
          Hint = 'Excluir - Delete'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btExcluirClick
        end
        object btNovo: TSpeedButton
          Left = 549
          Top = 34
          Width = 25
          Height = 30
          Hint = 'Novo - Insert'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btNovoClick
        end
        object btCancelar: TSpeedButton
          Left = 549
          Top = 138
          Width = 25
          Height = 31
          Hint = 'Cancelar - F5'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btCancelarClick
        end
        object btSalvar: TSpeedButton
          Left = 549
          Top = 103
          Width = 25
          Height = 31
          Hint = 'Salvar - F3'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btSalvarClick
        end
        object Notebook1: TNotebook
          Left = 12
          Top = 15
          Width = 525
          Height = 295
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object DBGrid2: TDBGrid
              Left = 4
              Top = 5
              Width = 515
              Height = 284
              DataSource = DmDTA.dsEncaminhamento
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Def1'
            object Bevel4: TBevel
              Left = 6
              Top = 6
              Width = 516
              Height = 286
            end
            object Label7: TLabel
              Left = 36
              Top = 39
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Estudante:'
            end
            object Label8: TLabel
              Left = 36
              Top = 64
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Institui'#231#227'o:'
            end
            object Label9: TLabel
              Left = 57
              Top = 89
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'Curso:'
            end
            object Label10: TLabel
              Left = 22
              Top = 113
              Width = 65
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ano/Per'#237'odo:'
            end
            object Label11: TLabel
              Left = 265
              Top = 113
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Resultado:'
            end
            object Label12: TLabel
              Left = 36
              Top = 16
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data enc.:'
            end
            object Label13: TLabel
              Left = 350
              Top = 15
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Entrevista:'
            end
            object Label14: TLabel
              Left = 25
              Top = 223
              Width = 63
              Height = 13
              Alignment = taRightJustify
              Caption = 'Observa'#231#245'es'
            end
            object Label16: TLabel
              Left = 20
              Top = 252
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Caption = 'Encaminhado:'
            end
            object Label15: TLabel
              Left = 181
              Top = 16
              Width = 87
              Height = 13
              Caption = 'Retorno Negativo:'
              FocusControl = DBEdit18
            end
            object DBEdit7: TDBEdit
              Left = 91
              Top = 36
              Width = 45
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              Color = clInfoBk
              DataField = 'Est_cod'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object edDataEnc: TMaskEdit
              Left = 91
              Top = 12
              Width = 86
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 1
              Text = '  /  /    '
              OnChange = edDataEncChange
            end
            object cboResultado: TComboBox
              Left = 319
              Top = 110
              Width = 187
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 3
              OnChange = edDataEncChange
              Items.Strings = (
                'Em Espera'
                'Reprovado'
                'Aprovado'
                'Desistiu'
                'Selecionado pela Empresa'
                'N'#227'o Entrevistado pelo Cliente'
                'STANDBY')
            end
            object DBEdit8: TDBEdit
              Left = 139
              Top = 36
              Width = 367
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'est_nome'
              DataSource = DmDTA.dsEncaminhamento
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit9: TDBEdit
              Left = 139
              Top = 61
              Width = 367
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'inst_nome'
              DataSource = DmDTA.dsEncaminhamento
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit10: TDBEdit
              Left = 91
              Top = 61
              Width = 45
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              TabStop = False
              Color = cl3DLight
              DataField = 'inst_cod'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 6
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object DBEdit12: TDBEdit
              Left = 91
              Top = 86
              Width = 45
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              TabStop = False
              Color = cl3DLight
              DataField = 'cur_cod'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 7
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object DBEdit13: TDBEdit
              Left = 139
              Top = 86
              Width = 367
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cur_nome'
              DataSource = DmDTA.dsEncaminhamento
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit14: TDBEdit
              Left = 91
              Top = 110
              Width = 45
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              TabStop = False
              Color = cl3DLight
              DataField = 'pcu_anoatual'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 9
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object DBEdit15: TDBEdit
              Left = 139
              Top = 110
              Width = 96
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              TabStop = False
              Color = cl3DLight
              DataField = 'DescPeriodo'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 10
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object DBEdit16: TDBEdit
              Left = 405
              Top = 12
              Width = 100
              Height = 21
              Hint = 'Pressione F2 ou duplo click para abrir o estudante'
              TabStop = False
              Color = cl3DLight
              DataField = 'eva_agedata'
              DataSource = DmDTA.dsEncaminhamento
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 11
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit7Exit
              OnKeyDown = DBEdit7KeyDown
            end
            object DBMemo1: TDBMemo
              Left = 91
              Top = 239
              Width = 414
              Height = 49
              DataField = 'Eva_observacao'
              DataSource = DmDTA.dsEncaminhamento
              TabOrder = 12
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit18: TDBEdit
              Left = 272
              Top = 11
              Width = 75
              Height = 21
              DataField = 'Eva_dataret'
              DataSource = DmDTA.dsEncaminhamento
              TabOrder = 2
              OnKeyDown = DBEdit18KeyDown
            end
            object GroupBox3: TGroupBox
              Left = 19
              Top = 128
              Width = 493
              Height = 111
              Caption = 'Entrevista'
              TabOrder = 13
              object Label17: TLabel
                Left = 3
                Top = 15
                Width = 65
                Height = 13
                Alignment = taRightJustify
                Caption = 'Entrevistador:'
              end
              object Label18: TLabel
                Left = 20
                Top = 39
                Width = 49
                Height = 13
                Caption = 'Endere'#231'o:'
                FocusControl = DBEdit19
              end
              object Label19: TLabel
                Left = 2
                Top = 63
                Width = 64
                Height = 13
                Caption = 'Complemento'
                FocusControl = DBEdit21
              end
              object Label20: TLabel
                Left = 208
                Top = 64
                Width = 30
                Height = 13
                Caption = 'Bairro:'
                FocusControl = DBEdit22
              end
              object Label21: TLabel
                Left = 32
                Top = 88
                Width = 36
                Height = 13
                Caption = 'Cidade:'
                FocusControl = DBEdit23
              end
              object Label23: TLabel
                Left = 272
                Top = 88
                Width = 14
                Height = 13
                Caption = 'Uf:'
                FocusControl = DBEdit24
              end
              object Label24: TLabel
                Left = 328
                Top = 88
                Width = 27
                Height = 13
                Caption = 'Fone:'
                FocusControl = DBEdit25
              end
              object cbSuper: TDBLookupComboBox
                Left = 72
                Top = 12
                Width = 417
                Height = 21
                DataField = 'func_cod'
                DataSource = DmDTA.dsEncaminhamento
                DropDownWidth = 495
                KeyField = 'Func_cod'
                ListField = 'Nome;Func_cod'
                ListSource = dsEntrevistador
                TabOrder = 0
              end
              object DBEdit19: TDBEdit
                Left = 72
                Top = 37
                Width = 362
                Height = 21
                CharCase = ecUpperCase
                DataField = 'enderecoenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 1
              end
              object DBEdit20: TDBEdit
                Left = 441
                Top = 36
                Width = 46
                Height = 21
                CharCase = ecUpperCase
                DataField = 'numendenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 2
              end
              object DBEdit21: TDBEdit
                Left = 72
                Top = 60
                Width = 123
                Height = 21
                CharCase = ecUpperCase
                DataField = 'cjtoendenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 3
              end
              object DBEdit22: TDBEdit
                Left = 240
                Top = 62
                Width = 249
                Height = 21
                CharCase = ecUpperCase
                DataField = 'bairroenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 4
              end
              object DBEdit23: TDBEdit
                Left = 72
                Top = 84
                Width = 186
                Height = 21
                CharCase = ecUpperCase
                DataField = 'cidadeenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 5
              end
              object DBEdit24: TDBEdit
                Left = 288
                Top = 84
                Width = 30
                Height = 21
                CharCase = ecUpperCase
                DataField = 'estadoenc'
                DataSource = DmDTA.dsEncaminhamento
                TabOrder = 6
              end
              object DBEdit25: TDBEdit
                Left = 360
                Top = 85
                Width = 127
                Height = 21
                DataField = 'telefoneenc'
                TabOrder = 8
                Visible = False
              end
              object cxDBMaskEdit1: TcxDBMaskEdit
                Left = 360
                Top = 86
                DataBinding.DataField = 'telefoneenc'
                DataBinding.DataSource = DmDTA.dsEncaminhamento
                Properties.EditMask = '!\(99\) 0000-0000;1;_'
                Properties.MaxLength = 0
                Style.BorderStyle = ebs3D
                TabOrder = 7
                Width = 121
              end
            end
          end
        end
      end
      object btEnter: TBitBtn
        Left = 88
        Top = 504
        Width = 75
        Height = 25
        Caption = 'Enter'
        Default = True
        TabOrder = 2
        TabStop = False
        OnClick = btEnterClick
      end
    end
  end
  object quPrincipal1: TQuery
    CachedUpdates = True
    BeforeInsert = quPrincipal1BeforeInsert
    BeforeEdit = quPrincipal1BeforeEdit
    BeforeRefresh = quPrincipal1BeforeEdit
    DatabaseName = 'TalentPool'
    UpdateObject = usPrincipal1
    Left = 233
    Top = 310
  end
  object usPrincipal1: TUpdateSQL
    Left = 265
    Top = 310
  end
  object quEncaminh: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select  e.*, i.inst_nome, c.cur_nome, m.emp_enderecoenc, m.emp_b' +
        'airroenc, m.emp_numendenc, m.emp_cjtoendenc, m.emp_nome, '
      
        '      m.emp_cidadeenc, m.emp_telefoneenc, F.efu_nome emp_nomeres' +
        'pent, m.emp_site, n.*,'
      
        '      v.vag_setor, v.vag_dataabertura, v.vag_qtde, v.vag_respsel' +
        'ecao, v.vag_observacao, f.efu_email'
      '    from'
      
        '      estudante e, instituicao i, curso c, empresa m, encaminham' +
        'ento n, Vaga v, EmpFuncionario F'
      '    where'
      '      v.emp_cod = m.emp_cod and'
      '      n.vag_cod = v.vag_cod and'
      '      n.est_cod = e.est_cod and'
      '      e.inst_cod = i.inst_cod and'
      '      n.est_cod = :est_cod and'
      '      e.cur_cod = c.cur_cod and'
      '      n.vag_cod = :vag_cod and'
      '      m.emp_cod *= F.emp_cod and'
      '      m.emp_respent *= F.func_cod')
    Left = 448
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vag_cod'
        ParamType = ptUnknown
      end>
  end
  object qryEntrevistador: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT     EmpFuncionario.Efu_nome Nome, EmpFuncionario.Emp_cod,' +
        ' VagaEntrevistador.Vag_cod,EmpFuncionario.Func_cod '
      'FROM         EmpFuncionario '
      
        ' INNER JOIN      VagaEntrevistador ON EmpFuncionario.Emp_cod = V' +
        'agaEntrevistador.Emp_cod '
      
        '                           AND EmpFuncionario.Func_cod = vagaEnt' +
        'revistador.Func_cod '
      ' where  VagaEntrevistador.Vag_cod=:vaga              '
      'Order by EmpFuncionario.Efu_nome')
    Left = 496
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vaga'
        ParamType = ptInput
      end>
    object qryEntrevistadorNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qryEntrevistadorFunc_cod: TIntegerField
      FieldName = 'Func_cod'
    end
  end
  object dsEntrevistador: TDataSource
    DataSet = qryEntrevistador
    Left = 465
    Top = 392
  end
end
