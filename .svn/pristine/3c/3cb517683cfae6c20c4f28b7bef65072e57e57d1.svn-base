inherited FOREHI: TFOREHI
  Left = 280
  Top = 229
  Caption = 'Hist'#243'rico de Contatos da Empresa'
  ClientHeight = 306
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 287
  end
  inherited Panel1: TPanel
    Height = 287
    inherited Panel4: TPanel
      Height = 266
      inherited btFechar: TSpeedButton
        Top = 225
      end
    end
    inherited Panel5: TPanel
      Height = 267
      inherited pgPrincipal: TPageControl
        Height = 258
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Height = 227
            object Label1: TLabel [0]
              Left = 8
              Top = 7
              Width = 41
              Height = 13
              Caption = 'Empresa'
            end
            inherited DBGrid1: TDBGrid
              Width = 379
              Height = 169
              DataSource = DmDTA.dsEmpHistorico
            end
            object DBEdit4: TDBEdit
              Left = 8
              Top = 23
              Width = 49
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_cod'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 62
              Top = 23
              Width = 326
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_nome'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Height = 227
            inherited Bevel3: TBevel
              Height = 211
            end
            object Label2: TLabel
              Left = 32
              Top = 20
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = 'Empresa:'
            end
            object Label3: TLabel
              Left = 18
              Top = 68
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = 'Funcion'#225'rio:'
            end
            object Label9: TLabel
              Left = 25
              Top = 113
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o:'
            end
            object Label5: TLabel
              Left = 50
              Top = 45
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data:'
            end
            object Label4: TLabel
              Left = 13
              Top = 91
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Func. Cetefe:'
            end
            object DBEdit1: TDBEdit
              Left = 78
              Top = 66
              Width = 37
              Height = 21
              Color = clInfoBk
              DataField = 'Func_cod'
              DataSource = DmDTA.dsEmpHistorico
              TabOrder = 0
              OnDblClick = DBEdit1DblClick
              OnExit = DBEdit1Exit
            end
            object DBEdit2: TDBEdit
              Left = 119
              Top = 66
              Width = 258
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'func_nome'
              DataSource = DmDTA.dsEmpHistorico
              ReadOnly = True
              TabOrder = 1
              OnKeyPress = DBEdit2KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 78
              Top = 114
              Width = 300
              Height = 100
              DataField = 'ehi_descricao'
              DataSource = DmDTA.dsEmpHistorico
              TabOrder = 4
              OnKeyPress = DBEdit2KeyPress
            end
            object edEmpCod: TDBEdit
              Left = 78
              Top = 17
              Width = 36
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_cod'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit3: TDBEdit
              Left = 118
              Top = 17
              Width = 259
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Emp_nome'
              DataSource = DmDTA.dsEmpresa
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit6: TDBEdit
              Left = 79
              Top = 89
              Width = 37
              Height = 21
              Color = clInfoBk
              DataField = 'funccetefe_cod'
              DataSource = DmDTA.dsEmpHistorico
              TabOrder = 2
              OnDblClick = DBEdit6DblClick
              OnExit = DBEdit6Exit
            end
            object DBEdit7: TDBEdit
              Left = 120
              Top = 89
              Width = 258
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'Func_Cetefe'
              DataSource = DmDTA.dsEmpHistorico
              ReadOnly = True
              TabOrder = 3
              OnKeyPress = DBEdit2KeyPress
            end
            object eddata: TDBDateEdit
              Left = 78
              Top = 40
              Width = 97
              Height = 21
              DataField = 'ehi_dthist'
              DataSource = DmDTA.dsEmpHistorico
              NumGlyphs = 2
              TabOrder = 7
            end
          end
        end
      end
    end
  end
end
