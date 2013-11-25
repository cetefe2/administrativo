inherited FORBAN: TFORBAN
  Left = 488
  Top = 286
  Caption = 'Cadastro de Bancos'
  ClientHeight = 308
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 289
  end
  inherited Panel1: TPanel
    Height = 289
    inherited Panel5: TPanel
      Height = 271
      inherited pgPrincipal: TPageControl
        Height = 264
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Height = 233
            inherited cbTipoPesquisa: TComboBox
              Items.Strings = (
                'CODIGO'
                'NOME'
                'APELIDO')
            end
            inherited edParametro: TEdit
              OnExit = edParametroExit
              OnKeyPress = nil
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsBanco
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Height = 233
            inherited Bevel3: TBevel
              Height = 193
            end
            inherited lblInclusao: TLabel
              Top = 207
            end
            object Label3: TLabel
              Left = 28
              Top = 82
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome'
            end
            object Label2: TLabel
              Left = 47
              Top = 24
              Width = 9
              Height = 13
              Alignment = taRightJustify
              Caption = 'Id'
            end
            object Label4: TLabel
              Left = 22
              Top = 55
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = 'Codigo'
            end
            object Label5: TLabel
              Left = 21
              Top = 114
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Apelido'
            end
            object DBEdit1: TDBEdit
              Left = 62
              Top = 21
              Width = 39
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'ID_BANCOS'
              DataSource = DmDTA.dsBanco
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 64
              Top = 79
              Width = 305
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BANCO'
              DataSource = DmDTA.dsBanco
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 63
              Top = 52
              Width = 58
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COD_BANCO'
              DataSource = DmDTA.dsBanco
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 64
              Top = 111
              Width = 129
              Height = 21
              CharCase = ecUpperCase
              DataField = 'APELIDO'
              DataSource = DmDTA.dsBanco
              TabOrder = 2
            end
            object GroupBox1: TGroupBox
              Left = 20
              Top = 140
              Width = 213
              Height = 53
              Caption = ' Folha de Pagamento '
              TabOrder = 4
              object Label6: TLabel
                Left = 8
                Top = 24
                Width = 88
                Height = 13
                Caption = 'Valor do Desconto'
              end
              object DBEdit5: TDBEdit
                Left = 104
                Top = 20
                Width = 97
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DESCONTO_FOLHA'
                DataSource = DmDTA.dsBanco
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
end
