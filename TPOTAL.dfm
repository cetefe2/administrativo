inherited FORTAL: TFORTAL
  Left = 89
  Top = 89
  Caption = 'Altera'#231#245'es do TCE'
  ClientHeight = 652
  ClientWidth = 702
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 633
    Width = 702
  end
  inherited Panel1: TPanel
    Width = 702
    Height = 633
    inherited lblInclusao: TLabel
      Left = 320
      Top = 648
    end
    inherited btEnter: TBitBtn
      Left = 88
      Top = 641
    end
    inherited Panel4: TPanel
      Left = 644
      Height = 615
      inherited btFechar: TSpeedButton
        Top = 577
      end
    end
    inherited Panel5: TPanel
      Width = 626
      Height = 615
      inherited pgPrincipal: TPageControl
        Width = 620
        Height = 609
        OnChange = pgPrincipalChange
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 612
            Height = 578
            object Label1: TLabel [0]
              Left = 8
              Top = 10
              Width = 21
              Height = 13
              Caption = 'TCE'
            end
            object btImprimir: TSpeedButton [1]
              Left = 7
              Top = 547
              Width = 90
              Height = 25
              Hint = 'Imprimir Altera'#231#227'o - Tecla F6'
              Caption = 'Imprimir'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = btImprimirClick
            end
            inherited DBGrid1: TDBGrid
              Left = 6
              Top = 30
              Width = 595
              Height = 515
              DataSource = DmDTA.dsTceAlteracao
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
            Height = 578
            inherited Bevel3: TBevel
              Top = 9
              Width = 598
              Height = 539
            end
            object Label2: TLabel
              Left = 23
              Top = 14
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'TCE'
            end
            object Label3: TLabel
              Left = 20
              Top = 479
              Width = 26
              Height = 13
              Caption = 'Bolsa'
            end
            object Label6: TLabel
              Left = 194
              Top = 14
              Width = 41
              Height = 13
              Caption = 'Vig'#234'ncia'
            end
            object Label17: TLabel
              Left = 20
              Top = 439
              Width = 46
              Height = 13
              Caption = 'Entrada 1'
            end
            object Label11: TLabel
              Left = 85
              Top = 439
              Width = 38
              Height = 13
              Caption = 'Sa'#237'da 1'
            end
            object Label18: TLabel
              Left = 151
              Top = 439
              Width = 46
              Height = 13
              Caption = 'Entrada 2'
            end
            object Label19: TLabel
              Left = 215
              Top = 439
              Width = 38
              Height = 13
              Caption = 'Sa'#237'da 2'
            end
            object Label21: TLabel
              Left = 347
              Top = 439
              Width = 34
              Height = 13
              Caption = 'Mensal'
            end
            object Label23: TLabel
              Left = 237
              Top = 479
              Width = 38
              Height = 13
              Caption = 'Retorno'
            end
            object Label8: TLabel
              Left = 95
              Top = 13
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object btSabado: TSpeedButton
              Left = 11
              Top = 549
              Width = 128
              Height = 25
              Hint = 'Hor'#225'rios Diferenciados - Tecla F6'
              Caption = 'Hor'#225'rios Diferenciados'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = btSabadoClick
            end
            object Label4: TLabel
              Left = 281
              Top = 439
              Width = 41
              Height = 13
              Caption = 'Intervalo'
            end
            object Label27: TLabel
              Left = 404
              Top = 439
              Width = 41
              Height = 13
              Caption = 'Semanal'
            end
            object SpeedButton7: TSpeedButton
              Left = 456
              Top = 453
              Width = 23
              Height = 22
              Hint = 'Recalcula Hor'#225'rio'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFD228D2A86FA89D9D9D8F8F8F8C8C8C8A8A8AA36AA3D42AD4FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC639C6B1B1B1BABABABFBFBFB7
                B7B7C2C2C2B8B8B89C9C9C949394C436C4FF00FFFF00FFFF00FFFF00FFFF00FF
                BC4BBCBFBFBFC4C4C4DADADAFEFEFED4D4D4F9F9F9FEFEFEEEEEEEB2B2B29090
                90B745B7FF00FFFF00FFFF00FFFF00FFA8A8A8CACACADEDEDEFEFEFEF5F5F5ED
                EDEDE7E7E7ECECECFBFBFBF2F2F29E9E9E828182FF00FFFF00FFFF00FFA752A7
                D5D5D5C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEBEBEBE5E5E5F9F9F9D7D7
                D78D8D8DA650A6FF00FFFF00FFB45FB4DBDBDBDEDEDEFFFFFFFFFFFFFFFFFFF8
                F8F8E9E9E9FCFCFCE5E5E5EFEFEFDDDDDD929292A650A6FF00FFFF00FFBE69BE
                DBDBDBCACACAE2E2E2FFFFFFFFFFFFADADAD9A9A9AE6E6E6F2F2F2CBCBCBBABA
                BA949494A650A6FF00FFFF00FFB560B5DDDDDDE7E7E7FFFFFFFFFFFFFFFFFFEA
                EAEAACACAC9A9A9AF5F5F5EAEAEADCDCDC919191A650A6FF00FFFF00FFC435C4
                D0D0D0D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFA0A0A0EFEFEFC6C6
                C68C8C8CC435C4FF00FFFF00FFFF00FFAAAAAACFCFCFEAEAEAFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFDDDDDDE5E5E5989898858485FF00FFFF00FFFF00FFFF00FF
                E720E7C4A7C4CBCBCBDFDFDFF9F9F9D4D4D4FDFDFDFAFAFAD4D4D4A2A2A29C80
                9CE31CE3FF00FFFF00FFFF00FFFF00FFFF00FFE821E8B4B4B4CCCBCCCACACAC1
                C1C1C8C8C8BEBEBEA5A5A5949394E41DE4FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFCF42CFA5A5A5A7A7A7A0A0A0969696A650A6E21AE2FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C8C8CB9
                B9B98D8D8D7B7A7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFA651A69F9F9FA1A1A1868686818181A751A7FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA651A69F9F9FA0
                A0A0868686818181A751A7FF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton7Click
            end
            object SpeedButton1: TSpeedButton
              Left = 144
              Top = 549
              Width = 131
              Height = 25
              Caption = '&Atividades'
              Flat = True
              OnClick = SpeedButton1Click
            end
            object SpeedButton10: TSpeedButton
              Left = 286
              Top = 549
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
            object DBEdit1: TDBEdit
              Left = 19
              Top = 493
              Width = 94
              Height = 21
              DataField = 'Tal_novabolsa'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 12
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit8: TDBEdit
              Left = 21
              Top = 28
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Tce_cod'
              DataSource = DmDTA.dsTceAlteracao
              ReadOnly = True
              TabOrder = 0
            end
            object meTceVig: TMaskEdit
              Left = 193
              Top = 28
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 2
              Text = '  /  /    '
              OnExit = meTceAltExit
              OnKeyPress = meTceVigKeyPress
            end
            object meEnt1: TMaskEdit
              Left = 20
              Top = 454
              Width = 50
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 7
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meSai1: TMaskEdit
              Left = 85
              Top = 454
              Width = 50
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 8
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meEnt2: TMaskEdit
              Left = 150
              Top = 454
              Width = 50
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 9
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meSai2: TMaskEdit
              Left = 215
              Top = 454
              Width = 50
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 10
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object cbTipoBolsa: TComboBox
              Left = 126
              Top = 493
              Width = 99
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 13
              OnClick = cbTipoBolsaClick
              Items.Strings = (
                'Hora'
                'Mensal')
            end
            object DBEdit2: TDBEdit
              Left = 347
              Top = 454
              Width = 48
              Height = 21
              TabStop = False
              DataField = 'tal_tothoras'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 24
              OnExit = DBEdit2Exit
            end
            object meTalDtRet: TMaskEdit
              Left = 237
              Top = 493
              Width = 73
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 14
              Text = '  /  /    '
              OnKeyDown = meTalDtRetKeyDown
            end
            object meTceEmi: TMaskEdit
              Left = 95
              Top = 28
              Width = 85
              Height = 21
              TabStop = False
              Color = cl3DLight
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              ReadOnly = True
              TabOrder = 1
              Text = '  /  /    '
            end
            object DBCheckBox2: TDBCheckBox
              Left = 102
              Top = 521
              Width = 59
              Height = 17
              Caption = '2'#170' feira'
              DataField = 'tal_segunda'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 17
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox3: TDBCheckBox
              Left = 186
              Top = 521
              Width = 59
              Height = 17
              Caption = '3'#170' feira'
              DataField = 'tal_terca'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 18
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox4: TDBCheckBox
              Left = 270
              Top = 521
              Width = 59
              Height = 17
              Caption = '4'#170' feira'
              DataField = 'tal_quarta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 19
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox5: TDBCheckBox
              Left = 353
              Top = 521
              Width = 59
              Height = 17
              Caption = '5'#170' feira'
              DataField = 'tal_quinta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 20
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox6: TDBCheckBox
              Left = 437
              Top = 521
              Width = 59
              Height = 17
              Caption = '6'#170' feira'
              DataField = 'tal_sexta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 21
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox7: TDBCheckBox
              Left = 521
              Top = 521
              Width = 59
              Height = 17
              Caption = 'S'#225'bado'
              DataField = 'tal_sabado'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 22
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox7Click
            end
            object DBCheckBox8: TDBCheckBox
              Left = 19
              Top = 521
              Width = 59
              Height = 17
              Caption = 'domingo'
              DataField = 'Tal_domingo'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 16
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object meIntervalo: TMaskEdit
              Left = 281
              Top = 454
              Width = 50
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 11
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object rdauxilio: TDBRadioGroup
              Left = 16
              Top = 342
              Width = 585
              Height = 37
              Caption = 'Tipo de Aux'#237'lio Transporte'
              Columns = 4
              DataField = 'Tal_AuxTransp'
              DataSource = DmDTA.dsTceAlteracao
              Items.Strings = (
                'Recarga Urbs'
                'Aux'#237'lio Pecuni'#225'rio Valor:'
                'Oferecido pela Empresa'
                'Outro Benef'#237'cio:')
              TabOrder = 6
              Values.Strings = (
                'R'
                'P'
                'T'
                'O')
              OnChange = rdauxilioChange
            end
            object nb: TNotebook
              Left = 17
              Top = 380
              Width = 584
              Height = 52
              TabOrder = 23
              object TPage
                Left = 0
                Top = 0
                Caption = 'Default'
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'valor'
                object Label7: TLabel
                  Left = 8
                  Top = 10
                  Width = 80
                  Height = 13
                  Caption = 'Valor do Aux'#237'lio: '
                end
                object DBEdit13: TDBEdit
                  Left = 92
                  Top = 8
                  Width = 89
                  Height = 21
                  DataField = 'Tal_AuxTranspValor'
                  DataSource = DmDTA.dsTceAlteracao
                  Enabled = False
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'outro'
                object Label9: TLabel
                  Left = 5
                  Top = 2
                  Width = 99
                  Height = 13
                  Caption = 'Texto Outro Benf'#237'cio'
                end
                object dbedit14: TDBMemo
                  Left = 8
                  Top = 16
                  Width = 421
                  Height = 33
                  DataField = 'Tal_AuxTranspTexto'
                  DataSource = DmDTA.dsTceAlteracao
                  TabOrder = 0
                end
              end
            end
            object edsemana: TEdit
              Left = 406
              Top = 454
              Width = 40
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 26
            end
            object GroupBox1: TGroupBox
              Left = 16
              Top = 93
              Width = 582
              Height = 208
              Caption = 'Supervisor do Est'#225'gio'
              TabOrder = 4
              object Label33: TLabel
                Left = 342
                Top = 44
                Width = 43
                Height = 13
                Caption = 'Profissao'
                FocusControl = DBEdit17
              end
              object Label32: TLabel
                Left = 6
                Top = 44
                Width = 28
                Height = 13
                Caption = 'Cargo'
                FocusControl = DBEdit16
              end
              object Label35: TLabel
                Left = 26
                Top = 159
                Width = 22
                Height = 13
                Caption = 'Area'
                FocusControl = DBEdit19
              end
              object Label34: TLabel
                Left = 373
                Top = 159
                Width = 146
                Height = 13
                Caption = 'Tempo de Experi'#234'ncia na Area'
                FocusControl = DBEdit18
              end
              object Label5: TLabel
                Left = 27
                Top = 81
                Width = 47
                Height = 13
                Caption = 'Forma'#231#227'o'
              end
              object Label28: TLabel
                Left = 26
                Top = 121
                Width = 76
                Height = 13
                Caption = 'Outra Forma'#231#227'o'
                FocusControl = DBEdit22
              end
              object Label10: TLabel
                Left = 373
                Top = 81
                Width = 39
                Height = 13
                Caption = 'Registro'
                FocusControl = DBEdit3
              end
              object Label12: TLabel
                Left = 373
                Top = 119
                Width = 39
                Height = 13
                Caption = 'Registro'
                FocusControl = DBEdit4
              end
              object DBEdit15: TDBEdit
                Left = 27
                Top = 95
                Width = 302
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Formacao'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 7
              end
              object DBEdit16: TDBEdit
                Left = 6
                Top = 58
                Width = 323
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Cargo'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 8
              end
              object DBEdit17: TDBEdit
                Left = 342
                Top = 58
                Width = 230
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Profissao'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 9
              end
              object DBEdit19: TDBEdit
                Left = 26
                Top = 172
                Width = 303
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Area'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 10
              end
              object DBEdit18: TDBEdit
                Left = 373
                Top = 172
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Tempo'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 11
              end
              object cbSuper: TDBLookupComboBox
                Left = 6
                Top = 17
                Width = 483
                Height = 21
                DataField = 'Func_cod'
                DataSource = DmDTA.dsTceAlteracao
                DropDownWidth = 495
                KeyField = 'Func_cod'
                ListField = 'Nome;Func_cod'
                ListSource = dssupervisor
                TabOrder = 0
                OnExit = cbSuperExit
              end
              object DBEdit22: TDBEdit
                Left = 26
                Top = 133
                Width = 303
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'outraformacao'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 12
              end
              object ckf1: TDBCheckBox
                Left = 10
                Top = 97
                Width = 16
                Height = 17
                DataField = 'tal_formacao1'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit3: TDBEdit
                Left = 373
                Top = 95
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'registro'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 13
              end
              object ckr1: TDBCheckBox
                Left = 354
                Top = 97
                Width = 16
                Height = 17
                DataField = 'tal_registro1'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckf2: TDBCheckBox
                Left = 9
                Top = 136
                Width = 16
                Height = 17
                DataField = 'tal_formacao2'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckr2: TDBCheckBox
                Left = 354
                Top = 134
                Width = 16
                Height = 17
                DataField = 'tal_registro2'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit4: TDBEdit
                Left = 373
                Top = 132
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'registro2'
                DataSource = DmDTA.dsTceAlteracao
                ReadOnly = True
                TabOrder = 14
              end
              object ckarea: TDBCheckBox
                Left = 9
                Top = 173
                Width = 16
                Height = 17
                DataField = 'tal_area'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cktempo: TDBCheckBox
                Left = 354
                Top = 173
                Width = 16
                Height = 17
                DataField = 'tal_tempo'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object ckEscala: TDBCheckBox
              Left = 338
              Top = 488
              Width = 83
              Height = 26
              Caption = 'Escala'
              DataField = 'Tal_Escala'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
            end
            object BitBtn1: TBitBtn
              Left = 582
              Top = 311
              Width = 15
              Height = 15
              Hint = 'Limpa Op'#231#245'es de Aux'#237'lio transporte'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 25
              OnClick = BitBtn1Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000130B0000130B00000000000000000000808080000000
                00000000000000002400004E00004C00004B00004900004800004600001E0000
                000000000000000000008080800000000000000000250D0DAC4848EF4C4CF34C
                4CF24C4CF24C4CF14848EC0D0D9800001E000000000000000000808080000000
                0000270A0AB13B3BF74242FF4242FF4242FF4242FF4242FF4242FF3B3BF50A0A
                9800001E0000000000008080800000280606B62727F72C2CFF3636FF2C2CFF2C
                2CFF2C2CFF2C2CFF3636FF2C2CFF2727F506069800001E0000008080AC0303BB
                1313F81515FF7E7EFFEAEAFF3B3BFF1515FF1515FF3B3BFFEAEAFF7E7EFF1515
                FF1313F503039800001E8080DC0202F20202FE1212FEF3F3FFFFFFFFE8E8FF2A
                2AFF2A2AFFE8E8FFFFFFFFF3F3FF1212FE0202FE0202EB0000468080DE0101F3
                0101FE0101FE3D3DFFF4F4FFFFFFFFE7E7FFE7E7FFFFFFFFF3F3FF3C3CFA0000
                F90000F90000EC0000488080DF0C0CF31717FF1717FF1717FF5050FFF5F5FFFF
                FFFFFFFFFFF3F3FF3C3CF60000F30000F30000F30000E70000498080E11E1EF3
                3B3BFF3B3BFF3B3BFF5858FFECECFFFFFFFFFFFFFFE7E7FE2828F40000F20000
                F20000F20000E700004B8080E22F2FF35E5EFF5E5EFF7676FFEFEFFFFFFFFFF9
                F9FFF9F9FFFFFFFFE7E7FE3131F60000F20000F20000E700004D8080E43E3EF2
                8181FF8787FFF2F2FFFFFFFFFAFAFFA1A1FFA1A1FFFAFAFFFFFFFFF2F2FF7676
                FD4D4DFA1A1AE600004E8080B20707D07B7BF9A2A2FFCECEFFFCFCFFBBBBFFA2
                A2FFA2A2FFBBBBFFFCFCFFCECEFFA2A2FF7B7BF50707AB000024808080000032
                0909D09393F9C2C2FFCACAFFC2C2FFC2C2FFC2C2FFC2C2FFC7C7FFC2C2FF9393
                F60909B00000260000008080800000000000320A0AD0AAAAF9E0E0FFE0E0FFE0
                E0FFE0E0FFE0E0FFE0E0FFAAAAF60A0AB5000027000000000000808080000000
                0000000000320C0CD17676F17A7AF37A7AF37A7AF27A7AF27676EF0C0CBA0000
                29000000000000000000C0C0C08080808080808080808080B28080E58080E380
                80E18080E08080DE8080DD8080AC808080808080808080808080}
            end
            object GroupBox2: TGroupBox
              Left = 16
              Top = 306
              Width = 585
              Height = 35
              Caption = 'Altera'#231#245'es'
              TabOrder = 5
              object ckAtividades: TDBCheckBox
                Left = 13
                Top = 14
                Width = 76
                Height = 17
                Caption = 'Atividades'
                DataField = 'Tal_Atividades'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = DBCheckBox2Click
              end
              object CKBOLSA: TDBCheckBox
                Left = 180
                Top = 14
                Width = 130
                Height = 17
                Caption = 'Bolsa e/ou Transporte'
                DataField = 'Tal_Bolsa'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = DBCheckBox2Click
              end
              object CKJORNADA: TDBCheckBox
                Left = 347
                Top = 14
                Width = 76
                Height = 17
                Caption = 'Jornada'
                DataField = 'Tal_Jornada'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = DBCheckBox2Click
              end
              object CKPRAZO: TDBCheckBox
                Left = 499
                Top = 14
                Width = 53
                Height = 17
                Caption = 'Prazo'
                DataField = 'tal_prazo'
                DataSource = DmDTA.dsTceAlteracao
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = DBCheckBox2Click
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
              DataField = 'tal_Orientador'
              DataSource = DmDTA.dsTceAlteracao
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
              DataSource = DmDTA.dsTceAlteracao
              ReadOnly = True
              TabOrder = 27
            end
            object DBEdit26: TDBEdit
              Left = 397
              Top = 64
              Width = 200
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'OrientadorCargo'
              DataSource = DmDTA.dsTceAlteracao
              ReadOnly = True
              TabOrder = 28
            end
          end
        end
      end
    end
    object rdEscolha: TDBRadioGroup
      Left = 729
      Top = 231
      Width = 425
      Height = 34
      BiDiMode = bdLeftToRight
      Caption = 'Imprimir no TCE'
      Columns = 3
      DataField = 'Tal_funcEscolha'
      DataSource = DmDTA.dsTceAlteracao
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
    Left = 489
    Top = 150
  end
  object qcontrato: TQuery [3]
    DatabaseName = 'TalentPool'
    Left = 512
    Top = 395
  end
  inherited quPrincipal1: TQuery
    Left = 474
    Top = 134
  end
  object qrypesquisa: TQuery
    DatabaseName = 'TalentPool'
    Left = 352
    Top = 32
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
    Left = 552
    Top = 312
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
  object dssupervisor: TDataSource
    DataSet = qrySupervisor
    Left = 521
    Top = 304
  end
end
