inherited FORFOR: TFORFOR
  Left = 278
  Top = 254
  Caption = 'Cadastro de Fornecedores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pgPrincipal: TPageControl
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          inherited cbTipoPesquisa: TComboBox
            Width = 76
            TabOrder = 1
            Items.Strings = (
              'C'#243'digo'
              'Nome'
              'Tipo'
              'N'#237'vel')
          end
          inherited edParametro: TEdit
            Left = 91
            Width = 442
            TabStop = False
            TabOrder = 2
            OnExit = edParametroExit
          end
          inherited DBGrid1: TDBGrid
            Top = 51
            Height = 215
            DataSource = DmDTA.dsFornecedor
            TabOrder = 0
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          inherited Bevel3: TBevel
            Width = 529
          end
          object Label2: TLabel
            Left = 28
            Top = 27
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo'
          end
          object Label4: TLabel
            Left = 33
            Top = 60
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome'
          end
          object Label7: TLabel
            Left = 22
            Top = 92
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'C.N.P.J.'
          end
          object Label8: TLabel
            Left = 290
            Top = 93
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'I. E. '
          end
          object Label3: TLabel
            Left = 395
            Top = 26
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Inclus'#227'o'
          end
          object Label12: TLabel
            Left = 15
            Top = 126
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o'
          end
          object Label14: TLabel
            Left = 35
            Top = 160
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro'
          end
          object Label15: TLabel
            Left = 269
            Top = 160
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade'
          end
          object Label17: TLabel
            Left = 270
            Top = 193
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone'
          end
          object Label18: TLabel
            Left = 403
            Top = 193
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax'
          end
          object Label13: TLabel
            Left = 41
            Top = 193
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP'
          end
          object Label16: TLabel
            Left = 137
            Top = 193
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP'
          end
          object Label19: TLabel
            Left = 168
            Top = 193
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'CP'
          end
          object DBEdit1: TDBEdit
            Left = 65
            Top = 23
            Width = 38
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'forn_cod'
            DataSource = DmDTA.dsFornecedor
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 65
            Top = 56
            Width = 456
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_nome'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 315
            Top = 89
            Width = 206
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_inscest'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 4
          end
          object edFornDtInc: TMaskEdit
            Left = 440
            Top = 23
            Width = 81
            Height = 21
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
            OnExit = edFornDtIncExit
            OnKeyPress = edFornDtIncKeyPress
          end
          object DBEdit6: TDBEdit
            Left = 66
            Top = 123
            Width = 456
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_endereco'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 67
            Top = 156
            Width = 195
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_bairro'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 6
          end
          object DBEdit9: TDBEdit
            Left = 307
            Top = 156
            Width = 186
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_cidade'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 7
          end
          object DBEdit11: TDBEdit
            Left = 299
            Top = 189
            Width = 96
            Height = 21
            DataField = 'forn_telefone'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 11
          end
          object DBEdit12: TDBEdit
            Left = 425
            Top = 189
            Width = 99
            Height = 21
            DataField = 'forn_fax'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 12
          end
          object DBEdit7: TDBEdit
            Left = 67
            Top = 189
            Width = 94
            Height = 21
            DataField = 'forn_cep'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 9
          end
          object DBEdit13: TDBEdit
            Left = 187
            Top = 189
            Width = 76
            Height = 21
            DataField = 'forn_caixapostal'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 10
          end
          object DBEdit10: TDBEdit
            Left = 497
            Top = 156
            Width = 26
            Height = 21
            CharCase = ecUpperCase
            DataField = 'forn_estado'
            DataSource = DmDTA.dsFornecedor
            TabOrder = 8
          end
          object meCnpj: TMaskEdit
            Left = 65
            Top = 89
            Width = 204
            Height = 21
            EditMask = '99.999.999/9999-99;0; '
            MaxLength = 18
            TabOrder = 3
            OnExit = meCnpjExit
            OnKeyPress = edFornDtIncKeyPress
          end
        end
      end
    end
  end
end
