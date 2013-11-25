inherited FORCSA: TFORCSA
  Left = 338
  Top = 282
  Caption = 'Sa'#237'das do Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label8: TLabel [0]
              Left = 9
              Top = 9
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label9: TLabel [1]
              Left = 67
              Top = 9
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsLancamento
            end
            object edAno: TEdit
              Left = 8
              Top = 23
              Width = 48
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              MaxLength = 4
              ReadOnly = True
              TabOrder = 1
            end
            object edMes: TEdit
              Left = 67
              Top = 23
              Width = 37
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              MaxLength = 2
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 24
              Top = 24
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label2: TLabel
              Left = 68
              Top = 24
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            object Label3: TLabel
              Left = 100
              Top = 24
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label4: TLabel
              Left = 192
              Top = 24
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label5: TLabel
              Left = 23
              Top = 113
              Width = 32
              Height = 13
              Caption = 'Motivo'
            end
            object Label7: TLabel
              Left = 24
              Top = 68
              Width = 42
              Height = 13
              Caption = 'Despesa'
            end
            object DBEdit1: TDBEdit
              Left = 23
              Top = 38
              Width = 37
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cai_ano'
              DataSource = DmDTA.dsLancamento
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 67
              Top = 38
              Width = 25
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cai_mes'
              DataSource = DmDTA.dsLancamento
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 191
              Top = 38
              Width = 85
              Height = 21
              DataField = 'csa_valor'
              DataSource = DmDTA.dsLancamento
              TabOrder = 3
              OnKeyPress = DBEdit4KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 23
              Top = 128
              Width = 349
              Height = 45
              DataField = 'csa_motivo'
              DataSource = DmDTA.dsLancamento
              MaxLength = 60
              TabOrder = 4
              OnKeyPress = DBMemo1KeyPress
            end
            object edDspNome: TEdit
              Left = 74
              Top = 82
              Width = 297
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 5
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 24
              Top = 82
              Width = 46
              Height = 21
              DataField = 'dsp_cod'
              DataSource = DmDTA.dsLancamento
              DropDownWidth = 350
              KeyField = 'dsp_cod'
              ListField = 'dsp_cod;dsp_nome'
              ListSource = dsDespesa
              TabOrder = 6
              OnClick = DBLookupComboBox1Click
            end
            object edDtCsa: TMaskEdit
              Left = 100
              Top = 38
              Width = 82
              Height = 21
              EditMask = '99/99/9999;1; '
              MaxLength = 10
              TabOrder = 2
              Text = '  /  /    '
              OnExit = edDtCsaExit
              OnKeyPress = edDtCsaKeyPress
            end
          end
        end
      end
    end
  end
  object quDespesa: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select dsp_cod, dsp_nome from Despesa'
      'order by dsp_nome')
    Left = 472
    Top = 392
    object quDespesadsp_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'dsp_cod'
      Origin = 'TALENTPOOL.Despesa.dsp_cod'
    end
    object quDespesadsp_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'dsp_nome'
      Origin = 'TALENTPOOL.Despesa.dsp_nome'
      Size = 50
    end
  end
  object dsDespesa: TDataSource
    DataSet = quDespesa
    Left = 505
    Top = 393
  end
end
