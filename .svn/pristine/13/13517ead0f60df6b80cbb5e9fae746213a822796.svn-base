inherited FORTAL: TFORTAL
  Left = 247
  Top = 204
  Caption = 'Altera'#231#245'es do TCE'
  ClientHeight = 272
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 253
  end
  inherited Panel1: TPanel
    Height = 253
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label1: TLabel [0]
              Left = 8
              Top = 10
              Width = 21
              Height = 13
              Caption = 'TCE'
            end
            object btImprimir: TSpeedButton [1]
              Left = 7
              Top = 163
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
              Width = 381
              Height = 127
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
            inherited Bevel3: TBevel
              Height = 148
            end
            object Label2: TLabel
              Left = 27
              Top = 14
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'TCE'
            end
            object Label3: TLabel
              Left = 28
              Top = 93
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
              Left = 28
              Top = 53
              Width = 46
              Height = 13
              Caption = 'Entrada 1'
            end
            object Label11: TLabel
              Left = 90
              Top = 53
              Width = 38
              Height = 13
              Caption = 'Sa'#237'da 1'
            end
            object Label18: TLabel
              Left = 154
              Top = 53
              Width = 46
              Height = 13
              Caption = 'Entrada 2'
            end
            object Label19: TLabel
              Left = 218
              Top = 53
              Width = 38
              Height = 13
              Caption = 'Sa'#237'da 2'
            end
            object Label21: TLabel
              Left = 282
              Top = 53
              Width = 24
              Height = 13
              Caption = 'Total'
            end
            object Label23: TLabel
              Left = 197
              Top = 93
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
              Left = 9
              Top = 162
              Width = 90
              Height = 25
              Hint = 'Hor'#225'rio de S'#225'bado - Tecla F6'
              Caption = 'Hor'#225'rio S'#225'bado'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = btSabadoClick
            end
            object DBEdit1: TDBEdit
              Left = 27
              Top = 107
              Width = 74
              Height = 21
              DataField = 'Tal_novabolsa'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 7
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit8: TDBEdit
              Left = 27
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
              TabOrder = 1
              Text = '  /  /    '
              OnExit = meTceAltExit
              OnKeyPress = meTceVigKeyPress
            end
            object meEnt1: TMaskEdit
              Left = 28
              Top = 68
              Width = 48
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 2
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meSai1: TMaskEdit
              Left = 90
              Top = 68
              Width = 48
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 3
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meEnt2: TMaskEdit
              Left = 154
              Top = 68
              Width = 48
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 4
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object meSai2: TMaskEdit
              Left = 218
              Top = 68
              Width = 48
              Height = 21
              EditMask = '99:99;1; '
              MaxLength = 5
              TabOrder = 5
              Text = '  :  '
              OnExit = meEnt1Exit
              OnKeyDown = meEnt2KeyDown
            end
            object cbTipoBolsa: TComboBox
              Left = 110
              Top = 107
              Width = 82
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 8
              OnClick = cbTipoBolsaClick
              Items.Strings = (
                'Hora'
                'Mensal')
            end
            object DBEdit2: TDBEdit
              Left = 284
              Top = 68
              Width = 71
              Height = 21
              DataField = 'tal_tothoras'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 6
              OnExit = DBEdit2Exit
            end
            object meTalDtRet: TMaskEdit
              Left = 197
              Top = 107
              Width = 73
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 9
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
              TabOrder = 10
              Text = '  /  /    '
            end
            object DBCheckBox2: TDBCheckBox
              Left = 20
              Top = 134
              Width = 59
              Height = 17
              Caption = '2'#170' feira'
              DataField = 'tal_segunda'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 11
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox3: TDBCheckBox
              Left = 81
              Top = 134
              Width = 59
              Height = 17
              Caption = '3'#170' feira'
              DataField = 'tal_terca'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 12
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox4: TDBCheckBox
              Left = 141
              Top = 134
              Width = 59
              Height = 17
              Caption = '4'#170' feira'
              DataField = 'tal_quarta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 13
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox5: TDBCheckBox
              Left = 201
              Top = 134
              Width = 59
              Height = 17
              Caption = '5'#170' feira'
              DataField = 'tal_quinta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 14
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox6: TDBCheckBox
              Left = 260
              Top = 134
              Width = 59
              Height = 17
              Caption = '6'#170' feira'
              DataField = 'tal_sexta'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 15
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox2Click
            end
            object DBCheckBox7: TDBCheckBox
              Left = 320
              Top = 134
              Width = 59
              Height = 17
              Caption = 'S'#225'bado'
              DataField = 'tal_sabado'
              DataSource = DmDTA.dsTceAlteracao
              TabOrder = 16
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnClick = DBCheckBox7Click
            end
          end
        end
      end
    end
  end
  object qcontrato: TQuery [3]
    DatabaseName = 'TalentPool'
    Left = 360
    Top = 387
  end
end
