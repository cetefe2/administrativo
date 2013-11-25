inherited FORTAD: TFORTAD
  Left = 208
  Top = 200
  Caption = 'Termos Aditivos ao TCE'
  ClientWidth = 488
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
    Width = 488
  end
  inherited Panel1: TPanel
    Width = 488
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
              Width = 381
              Height = 126
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
            inherited Bevel3: TBevel
              Height = 178
            end
            object Label2: TLabel
              Left = 46
              Top = 35
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'TCE'
            end
            object Label5: TLabel
              Left = 47
              Top = 83
              Width = 27
              Height = 13
              Caption = 'In'#237'cio'
            end
            object Label6: TLabel
              Left = 139
              Top = 83
              Width = 16
              Height = 13
              Caption = 'Fim'
            end
            object Label3: TLabel
              Left = 111
              Top = 35
              Width = 32
              Height = 13
              Alignment = taRightJustify
              Caption = 'Aditivo'
            end
            object Label4: TLabel
              Left = 235
              Top = 83
              Width = 38
              Height = 13
              Caption = 'Retorno'
            end
            object Label8: TLabel
              Left = 175
              Top = 34
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object DBEdit8: TDBEdit
              Left = 46
              Top = 49
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
              Left = 46
              Top = 97
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 1
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
            object meTceFim: TMaskEdit
              Left = 138
              Top = 97
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 2
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
            object DBEdit1: TDBEdit
              Left = 110
              Top = 49
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Prg_cod'
              DataSource = DmDTA.dsTceAditivo
              ReadOnly = True
              TabOrder = 3
            end
            object meTceRet: TMaskEdit
              Left = 234
              Top = 97
              Width = 85
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 4
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyDown = meTceRetKeyDown
              OnKeyPress = meTceIniKeyPress
            end
            object meTceEmi: TMaskEdit
              Left = 175
              Top = 49
              Width = 85
              Height = 21
              TabStop = False
              Color = cl3DLight
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              ReadOnly = True
              TabOrder = 5
              Text = '  /  /    '
              OnExit = meTceIniExit
              OnKeyPress = meTceIniKeyPress
            end
          end
        end
      end
    end
  end
  object qcontrato: TQuery
    DatabaseName = 'TalentPool'
    Left = 360
    Top = 387
  end
end
