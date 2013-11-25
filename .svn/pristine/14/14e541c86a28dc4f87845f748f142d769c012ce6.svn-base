inherited FORAGE1: TFORAGE1
  Left = 262
  Top = 181
  Caption = 'Agenda de Entrevistas'
  ClientHeight = 462
  ClientWidth = 632
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 632
    Height = 443
    inherited btOk: TSpeedButton
      Left = 446
      Top = 412
      Width = 88
      Caption = 'Salvar'
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
    end
    object btCancelar: TSpeedButton [1]
      Left = 534
      Top = 412
      Width = 88
      Height = 25
      Hint = 'Cancelar - F4'
      Caption = 'Cancelar'
      Flat = True
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
      OnClick = btCancelarClick
    end
    inherited Panel2: TPanel
      Width = 616
      Height = 400
      object Label1: TLabel
        Left = 13
        Top = 15
        Width = 26
        Height = 13
        Caption = 'Hora:'
      end
      object DBEdit1: TDBEdit
        Left = 54
        Top = 12
        Width = 92
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'Hora'
        DataSource = DmDTA.dsAgenda
        ReadOnly = True
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 38
        Width = 601
        Height = 116
        Caption = '1'#170' Entrevista'
        TabOrder = 1
        object Label2: TLabel
          Left = 18
          Top = 24
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estudante:'
        end
        object Label5: TLabel
          Left = 148
          Top = 72
          Width = 48
          Height = 13
          Caption = 'Presen'#231'a:'
        end
        object Label6: TLabel
          Left = 41
          Top = 47
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vaga:'
        end
        object Label3: TLabel
          Left = 12
          Top = 73
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nova Ficha:'
        end
        object Label16: TLabel
          Left = 375
          Top = 48
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #193'rea Est'#225'gio:'
        end
        object Label17: TLabel
          Left = 470
          Top = 95
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail'
        end
        object DBEdit2: TDBEdit
          Left = 72
          Top = 21
          Width = 43
          Height = 21
          Color = clInfoBk
          DataField = 'age_estcod1'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = DBEdit2DblClick
          OnExit = DBEdit2Exit
          OnKeyDown = DBEdit2KeyDown
        end
        object DBEdit3: TDBEdit
          Left = 120
          Top = 21
          Width = 471
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Age_nome1'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = DBEdit3KeyDown
          OnKeyPress = DBEdit3KeyPress
        end
        object DBComboBox1: TDBComboBox
          Left = 198
          Top = 69
          Width = 70
          Height = 21
          Style = csDropDownList
          DataField = 'age_faltou1'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Reagendou'
            'Desistiu')
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 72
          Top = 45
          Width = 44
          Height = 21
          Hint = 'Pressione F2 ou duplo click para abrir a vaga'
          Color = clInfoBk
          DataField = 'age_vagcod1'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnDblClick = DBEdit8DblClick
          OnExit = DBEdit8Exit
          OnKeyDown = DBEdit8KeyDown
        end
        object DBEdit9: TDBEdit
          Left = 120
          Top = 45
          Width = 250
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'empresa1'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 5
        end
        object DBComboBox4: TDBComboBox
          Left = 72
          Top = 70
          Width = 65
          Height = 21
          Style = csDropDownList
          DataField = 'age_ficha1'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 440
          Top = 45
          Width = 151
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'setor1'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 6
        end
        object DBCheckBox1: TDBCheckBox
          Left = 283
          Top = 72
          Width = 41
          Height = 17
          Caption = 'CRC'
          DataField = 'age_CRC1'
          DataSource = DmDTA.dsAgenda
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit17: TDBEdit
          Left = 501
          Top = 92
          Width = 90
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'age_dtEnvio1'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 10
        end
        object DBCheckBox4: TDBCheckBox
          Left = 361
          Top = 72
          Width = 58
          Height = 17
          Caption = 'Testes'
          DataField = 'Age_Teste1'
          DataSource = DmDTA.dsAgenda
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 425
          Top = 72
          Width = 80
          Height = 17
          Caption = 'Reda'#231#227'o'
          DataField = 'Age_Redacao1'
          DataSource = DmDTA.dsAgenda
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 71
          Top = 96
          Width = 98
          Height = 17
          Caption = 'Inform'#225'tica'
          DataField = 'Age_info1'
          DataSource = DmDTA.dsAgenda
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 283
          Top = 96
          Width = 104
          Height = 17
          Caption = 'Portugu'#234's'
          DataField = 'Age_LEstrangeira1'
          DataSource = DmDTA.dsAgenda
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 160
        Width = 601
        Height = 116
        Caption = '2'#170' Entrevista'
        TabOrder = 2
        object Label4: TLabel
          Left = 18
          Top = 24
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estudante:'
        end
        object Label7: TLabel
          Left = 146
          Top = 71
          Width = 48
          Height = 13
          Caption = 'Presen'#231'a:'
        end
        object Label8: TLabel
          Left = 41
          Top = 47
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vaga:'
        end
        object Label9: TLabel
          Left = 8
          Top = 72
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nova Ficha:'
        end
        object Label15: TLabel
          Left = 376
          Top = 48
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #193'rea Est'#225'gio:'
        end
        object Label18: TLabel
          Left = 470
          Top = 95
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail'
        end
        object DBEdit4: TDBEdit
          Left = 72
          Top = 21
          Width = 43
          Height = 21
          Color = clInfoBk
          DataField = 'age_estcod2'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = DBEdit4DblClick
          OnExit = DBEdit4Exit
          OnKeyDown = DBEdit4KeyDown
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 21
          Width = 471
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Age_nome2'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = DBEdit3KeyDown
          OnKeyPress = DBEdit3KeyPress
        end
        object DBComboBox2: TDBComboBox
          Left = 198
          Top = 68
          Width = 70
          Height = 21
          Style = csDropDownList
          DataField = 'age_faltou2'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Reagendou'
            'Desistiu')
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 72
          Top = 45
          Width = 44
          Height = 21
          Hint = 'Pressione F2 ou duplo click para abrir a vaga'
          Color = clInfoBk
          DataField = 'age_vagcod2'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnDblClick = DBEdit12DblClick
          OnExit = DBEdit12Exit
          OnKeyDown = DBEdit12KeyDown
        end
        object DBEdit13: TDBEdit
          Left = 120
          Top = 45
          Width = 250
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'empresa2'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 5
        end
        object DBComboBox5: TDBComboBox
          Left = 72
          Top = 69
          Width = 65
          Height = 21
          Style = csDropDownList
          DataField = 'age_ficha2'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 441
          Top = 45
          Width = 150
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'setor2'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 6
        end
        object DBCheckBox2: TDBCheckBox
          Left = 283
          Top = 71
          Width = 41
          Height = 17
          Caption = 'CRC'
          DataField = 'age_crc2'
          DataSource = DmDTA.dsAgenda
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit18: TDBEdit
          Left = 501
          Top = 92
          Width = 90
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'age_dtEnvio2'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 8
        end
        object DBCheckBox6: TDBCheckBox
          Left = 358
          Top = 72
          Width = 58
          Height = 17
          Caption = 'Testes'
          DataField = 'Age_Teste2'
          DataSource = DmDTA.dsAgenda
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 422
          Top = 72
          Width = 80
          Height = 17
          Caption = 'Reda'#231#227'o'
          DataField = 'Age_Redacao2'
          DataSource = DmDTA.dsAgenda
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 71
          Top = 96
          Width = 98
          Height = 17
          Caption = 'Inform'#225'tica'
          DataField = 'Age_info2'
          DataSource = DmDTA.dsAgenda
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 283
          Top = 96
          Width = 104
          Height = 17
          Caption = 'Portugu'#234's'
          DataField = 'Age_LEstrangeira2'
          DataSource = DmDTA.dsAgenda
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 277
        Width = 601
        Height = 116
        Caption = '3'#170' Entrevista'
        TabOrder = 3
        object Label10: TLabel
          Left = 18
          Top = 24
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estudante:'
        end
        object Label11: TLabel
          Left = 147
          Top = 72
          Width = 48
          Height = 13
          Caption = 'Presen'#231'a:'
        end
        object Label12: TLabel
          Left = 41
          Top = 47
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vaga:'
        end
        object Label13: TLabel
          Left = 7
          Top = 72
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nova Ficha:'
        end
        object Label14: TLabel
          Left = 375
          Top = 48
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #193'rea Est'#225'gio:'
        end
        object Label19: TLabel
          Left = 470
          Top = 95
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail'
        end
        object DBEdit6: TDBEdit
          Left = 72
          Top = 21
          Width = 43
          Height = 21
          Color = clInfoBk
          DataField = 'age_estcod3'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = DBEdit6DblClick
          OnExit = DBEdit6Exit
          OnKeyDown = DBEdit6KeyDown
        end
        object DBEdit7: TDBEdit
          Left = 120
          Top = 21
          Width = 471
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Age_nome3'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = DBEdit3KeyDown
          OnKeyPress = DBEdit3KeyPress
        end
        object DBComboBox3: TDBComboBox
          Left = 199
          Top = 69
          Width = 70
          Height = 21
          Style = csDropDownList
          DataField = 'age_faltou3'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Reagendou'
            'Desistiu')
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 72
          Top = 45
          Width = 44
          Height = 21
          Hint = 'Pressione F2 ou duplo click para abrir a vaga'
          Color = clInfoBk
          DataField = 'age_vagcod3'
          DataSource = DmDTA.dsAgenda
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnDblClick = DBEdit10DblClick
          OnExit = DBEdit10Exit
          OnKeyDown = DBEdit10KeyDown
        end
        object DBEdit11: TDBEdit
          Left = 120
          Top = 45
          Width = 250
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'empresa3'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 5
        end
        object DBComboBox6: TDBComboBox
          Left = 71
          Top = 69
          Width = 65
          Height = 21
          Style = csDropDownList
          DataField = 'age_ficha3'
          DataSource = DmDTA.dsAgenda
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 440
          Top = 45
          Width = 150
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'setor3'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 6
        end
        object DBCheckBox3: TDBCheckBox
          Left = 283
          Top = 72
          Width = 41
          Height = 17
          Caption = 'CRC'
          DataField = 'age_crc3'
          DataSource = DmDTA.dsAgenda
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit19: TDBEdit
          Left = 501
          Top = 92
          Width = 90
          Height = 21
          TabStop = False
          Color = cl3DLight
          DataField = 'age_dtEnvio3'
          DataSource = DmDTA.dsAgenda
          ReadOnly = True
          TabOrder = 8
        end
        object DBCheckBox8: TDBCheckBox
          Left = 353
          Top = 72
          Width = 58
          Height = 17
          Caption = 'Testes'
          DataField = 'Age_Teste3'
          DataSource = DmDTA.dsAgenda
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 433
          Top = 72
          Width = 80
          Height = 17
          Caption = 'Reda'#231#227'o'
          DataField = 'Age_Redacao3'
          DataSource = DmDTA.dsAgenda
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 71
          Top = 96
          Width = 98
          Height = 17
          Caption = 'Inform'#225'tica'
          DataField = 'Age_info3'
          DataSource = DmDTA.dsAgenda
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 283
          Top = 96
          Width = 104
          Height = 17
          Caption = 'Portugu'#234's'
          DataField = 'Age_LEstrangeira3'
          DataSource = DmDTA.dsAgenda
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    inherited btEnter: TBitBtn
      Top = 480
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 443
    Width = 632
  end
end
