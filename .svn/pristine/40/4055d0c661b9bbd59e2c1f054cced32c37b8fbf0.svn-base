inherited FORCPG: TFORCPG
  Left = 155
  Top = 174
  Caption = 'Contas a Pagar'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pgPrincipal: TPageControl
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          inherited Label1: TLabel
            Top = 5000
          end
          object Label2: TLabel [1]
            Left = 12
            Top = 10
            Width = 26
            Height = 13
            Caption = 'Data:'
          end
          inherited cbTipoPesquisa: TComboBox
            Top = 5000
            TabStop = False
          end
          inherited edParametro: TEdit
            Top = 5000
            TabStop = False
            TabOrder = 2
          end
          inherited DBGrid1: TDBGrid
            Top = 33
            Height = 233
            DataSource = DmDTA.dsContasPagar
            TabOrder = 3
          end
          object meDataPesq: TMaskEdit
            Tag = 2
            Left = 42
            Top = 7
            Width = 73
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
            OnExit = meDataPesqExit
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          object Label4: TLabel
            Tag = 1
            Left = 30
            Top = 30
            Width = 54
            Height = 13
            Caption = 'Data Conta'
          end
          object Label3: TLabel
            Tag = 1
            Left = 122
            Top = 30
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
            FocusControl = DBEdit1
          end
          object Label5: TLabel
            Left = 390
            Top = 207
            Width = 103
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lan'#231'amento no Caixa'
          end
          object Label7: TLabel
            Tag = 1
            Left = 224
            Top = 30
            Width = 78
            Height = 13
            Caption = 'Tipo Fornecedor'
            FocusControl = cbTipoForn
          end
          object Label8: TLabel
            Tag = 1
            Left = 375
            Top = 30
            Width = 66
            Height = 13
            Caption = 'Tipo Despesa'
            FocusControl = cbTipoDesp
          end
          object btCaixa: TSpeedButton
            Left = 455
            Top = 245
            Width = 82
            Height = 22
            Hint = 'Lan'#231'amento no Caixa - Tecla F6'
            Caption = 'Caixa'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btCaixaClick
          end
          object DBEdit1: TDBEdit
            Tag = 2
            Left = 118
            Top = 45
            Width = 93
            Height = 21
            DataField = 'Cpg_valor'
            DataSource = DmDTA.dsContasPagar
            TabOrder = 1
            OnKeyPress = DBEdit1KeyPress
          end
          object DBCheckBox1: TDBCheckBox
            Tag = 2
            Left = 494
            Top = 205
            Width = 17
            Height = 17
            Alignment = taLeftJustify
            DataField = 'Cpg_lancamento'
            DataSource = DmDTA.dsContasPagar
            Enabled = False
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cbTipoForn: TComboBox
            Tag = 2
            Left = 224
            Top = 45
            Width = 138
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
            OnChange = cbTipoFornChange
            OnClick = cbTipoFornClick
            Items.Strings = (
              'Cadastrado'
              'N'#227'o Cadastrado')
          end
          object cbTipoDesp: TComboBox
            Tag = 2
            Left = 375
            Top = 45
            Width = 134
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 4
            OnChange = cbTipoDespChange
            OnClick = cbTipoFornClick
            Items.Strings = (
              'Cadastrada'
              'N'#227'o Cadastrada')
          end
          object Notebook1: TNotebook
            Tag = 2
            Left = 21
            Top = 76
            Width = 500
            Height = 49
            TabOrder = 5
            object TPage
              Left = 0
              Top = 0
              Caption = 'Default'
              object Label9: TLabel
                Left = 9
                Top = 6
                Width = 54
                Height = 13
                Caption = 'Fornecedor'
                FocusControl = DBLookupComboBox1
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Tag = 2
                Left = 9
                Top = 20
                Width = 73
                Height = 21
                DataField = 'Forn_cod'
                DataSource = DmDTA.dsContasPagar
                DropDownWidth = 300
                KeyField = 'forn_cod'
                ListField = 'forn_cod;forn_nome'
                ListSource = dsFornecedor
                TabOrder = 0
                OnClick = DBLookupComboBox1Click
              end
              object edFornNome: TEdit
                Left = 87
                Top = 20
                Width = 402
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
              Caption = 'Page1'
              object Label6: TLabel
                Left = 9
                Top = 7
                Width = 54
                Height = 13
                Caption = 'Fornecedor'
                FocusControl = DBEdit5
              end
              object DBEdit5: TDBEdit
                Tag = 2
                Left = 10
                Top = 21
                Width = 479
                Height = 21
                CharCase = ecUpperCase
                DataField = 'cpg_fornecedor'
                DataSource = DmDTA.dsContasPagar
                TabOrder = 0
              end
            end
          end
          object Notebook2: TNotebook
            Tag = 2
            Left = 21
            Top = 135
            Width = 500
            Height = 49
            TabOrder = 6
            object TPage
              Left = 0
              Top = 0
              Caption = 'Default'
              object Label10: TLabel
                Left = 9
                Top = 6
                Width = 42
                Height = 13
                Caption = 'Despesa'
                FocusControl = DBLookupComboBox2
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Tag = 2
                Left = 9
                Top = 20
                Width = 73
                Height = 21
                DataField = 'Dsp_cod'
                DataSource = DmDTA.dsContasPagar
                DropDownWidth = 300
                KeyField = 'dsp_cod'
                ListField = 'dsp_cod;dsp_nome'
                ListSource = dsDespesa
                TabOrder = 0
                OnClick = DBLookupComboBox2Click
              end
              object edDspNome: TEdit
                Left = 87
                Top = 20
                Width = 402
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
              Caption = 'Page1'
              object Label11: TLabel
                Left = 9
                Top = 7
                Width = 48
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit7
              end
              object DBEdit7: TDBEdit
                Tag = 2
                Left = 10
                Top = 21
                Width = 479
                Height = 21
                CharCase = ecUpperCase
                DataField = 'Cpg_descricao'
                DataSource = DmDTA.dsContasPagar
                TabOrder = 0
              end
            end
          end
          object edDtCpg: TMaskEdit
            Left = 30
            Top = 45
            Width = 73
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
            OnExit = edDtCpgExit
            OnKeyPress = edDtCpgKeyPress
          end
        end
      end
    end
  end
  object quFornecedor: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select forn_cod, forn_nome from Fornecedor'
      'order by forn_nome')
    Left = 336
    Top = 392
    object quFornecedorforn_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'forn_cod'
      Origin = 'TALENTPOOL.Fornecedor.forn_cod'
    end
    object quFornecedorforn_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 75
      FieldName = 'forn_nome'
      Origin = 'TALENTPOOL.Fornecedor.forn_nome'
      Size = 100
    end
  end
  object dsFornecedor: TDataSource
    DataSet = quFornecedor
    Left = 369
    Top = 393
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
  object quCaixa: TQuery
    DatabaseName = 'TalentPool'
    Left = 168
    Top = 392
  end
end
