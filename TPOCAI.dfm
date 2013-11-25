inherited FORCAI: TFORCAI
  Left = 206
  Top = 178
  Caption = 'Resumo de Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label8: TLabel [1]
              Left = 106
              Top = 9
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label9: TLabel [2]
              Left = 164
              Top = 9
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            inherited cbTipoPesquisa: TComboBox
              Items.Strings = (
                'Ano/M'#234's')
            end
            inherited edParametro: TEdit
              Left = 105
              Width = 48
              MaxLength = 4
              OnExit = edParametroExit
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsCaixa
              TabOrder = 3
            end
            object edMes: TEdit
              Left = 164
              Top = 23
              Width = 37
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 2
              TabOrder = 2
              OnExit = edMesExit
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label2: TLabel
              Left = 32
              Top = 35
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object Label3: TLabel
              Left = 81
              Top = 35
              Width = 20
              Height = 13
              Caption = 'M'#234's'
            end
            object Label4: TLabel
              Left = 156
              Top = 35
              Width = 57
              Height = 13
              Caption = 'Saldo Inicial'
            end
            object SpeedButton1: TSpeedButton
              Left = 252
              Top = 168
              Width = 68
              Height = 22
              Caption = '&Entradas'
              Flat = True
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 320
              Top = 168
              Width = 68
              Height = 22
              Caption = '&Sa'#237'das'
              Flat = True
              OnClick = SpeedButton2Click
            end
            object Label5: TLabel
              Left = 32
              Top = 78
              Width = 69
              Height = 13
              Caption = 'Total Entradas'
            end
            object Label6: TLabel
              Left = 155
              Top = 78
              Width = 61
              Height = 13
              Caption = 'Total Sa'#237'das'
            end
            object Label7: TLabel
              Left = 279
              Top = 78
              Width = 52
              Height = 13
              Caption = 'Saldo Final'
            end
            object DBEdit1: TDBEdit
              Left = 31
              Top = 49
              Width = 42
              Height = 21
              DataField = 'cai_ano'
              DataSource = DmDTA.dsCaixa
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 80
              Top = 49
              Width = 42
              Height = 21
              DataField = 'cai_mes'
              DataSource = DmDTA.dsCaixa
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 155
              Top = 49
              Width = 91
              Height = 21
              DataField = 'cai_inicial'
              DataSource = DmDTA.dsCaixa
              TabOrder = 2
              OnKeyPress = DBEdit3KeyPress
            end
            object DBCheckBox1: TDBCheckBox
              Left = 280
              Top = 136
              Width = 89
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Caixa fechado'
              DataField = 'cai_fechamento'
              DataSource = DmDTA.dsCaixa
              TabOrder = 3
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit4: TDBEdit
              Left = 31
              Top = 92
              Width = 91
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Cai_entradas'
              DataSource = DmDTA.dsCaixa
              ReadOnly = True
              TabOrder = 4
              OnKeyPress = DBEdit3KeyPress
            end
            object DBEdit5: TDBEdit
              Left = 154
              Top = 92
              Width = 91
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'cai_saidas'
              DataSource = DmDTA.dsCaixa
              ReadOnly = True
              TabOrder = 5
              OnKeyPress = DBEdit3KeyPress
            end
            object DBEdit6: TDBEdit
              Left = 278
              Top = 92
              Width = 91
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Saldo'
              DataSource = DmDTA.dsCaixa
              ReadOnly = True
              TabOrder = 6
              OnKeyPress = DBEdit3KeyPress
            end
          end
        end
      end
    end
  end
  inherited usPrincipal: TUpdateSQL
    ModifySQL.Strings = (
      'update Caixa'
      'set'
      '  cai_ano = :cai_ano,'
      '  cai_mes = :cai_mes,'
      '  cai_inicial = :cai_inicial,'
      '  cai_final = :cai_final,'
      '  cai_fechamento = :cai_fechamento'
      'where'
      '  cai_ano = :OLD_cai_ano and'
      '  cai_mes = :OLD_cai_mes')
    InsertSQL.Strings = (
      'insert into Caixa'
      '  (cai_ano, cai_mes, cai_inicial, cai_final, cai_fechamento)'
      'values'
      
        '  (:cai_ano, :cai_mes, :cai_inicial, :cai_final, :cai_fechamento' +
        ')')
    DeleteSQL.Strings = (
      'delete from Caixa'
      'where'
      '  cai_ano = :OLD_cai_ano and'
      '  cai_mes = :OLD_cai_mes')
  end
end
