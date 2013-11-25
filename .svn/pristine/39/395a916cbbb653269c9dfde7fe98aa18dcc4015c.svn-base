inherited FORGRUPO: TFORGRUPO
  Left = 397
  Top = 199
  Caption = 'Cadastro de Grupos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pgPrincipal: TPageControl
      inherited tbConsulta: TTabSheet
        inherited Panel2: TPanel
          inherited edParametro: TEdit
            OnExit = edParametroExit
          end
          inherited DBGrid1: TDBGrid
            DataSource = DmDTA.dsgrupo
          end
        end
      end
      inherited tbRegistro: TTabSheet
        inherited Panel3: TPanel
          object Label2: TLabel
            Left = 24
            Top = 32
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 24
            Top = 72
            Width = 31
            Height = 13
            Caption = 'Nome:'
            FocusControl = DBEdit2
          end
          object Label6: TLabel
            Left = 272
            Top = 108
            Width = 73
            Height = 13
            Caption = 'Pa'#237's de Origem'
            FocusControl = DBEdit4
          end
          object Label7: TLabel
            Left = 32
            Top = 217
            Width = 18
            Height = 13
            Caption = 'Site'
            FocusControl = DBEdit5
          end
          object Label5: TLabel
            Left = 24
            Top = 147
            Width = 55
            Height = 13
            Caption = 'N'#186' de Filiais'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 160
            Top = 145
            Width = 75
            Height = 13
            Caption = 'N'#186' Funcion'#225'rios'
            FocusControl = DBEdit7
          end
          object Label9: TLabel
            Left = 333
            Top = 144
            Width = 66
            Height = 13
            Caption = 'N'#186' Estagi'#225'rios'
            FocusControl = DBEdit8
          end
          object DBEdit1: TDBEdit
            Left = 61
            Top = 29
            Width = 57
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'Grup_cod'
            DataSource = DmDTA.dsgrupo
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit2: TDBEdit
            Left = 62
            Top = 64
            Width = 441
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Grup_Nome'
            DataSource = DmDTA.dsgrupo
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 352
            Top = 101
            Width = 151
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Grup_pais'
            DataSource = DmDTA.dsgrupo
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 61
            Top = 212
            Width = 441
            Height = 21
            CharCase = ecLowerCase
            DataField = 'Grup_Site'
            DataSource = DmDTA.dsgrupo
            TabOrder = 6
          end
          object Nacionalidade: TDBRadioGroup
            Left = 61
            Top = 94
            Width = 204
            Height = 33
            Caption = 'Nacionalidade'
            Columns = 2
            DataField = 'Grup_Nacionalidade'
            DataSource = DmDTA.dsgrupo
            Items.Strings = (
              'Nacional'
              'Multinacional')
            TabOrder = 1
            Values.Strings = (
              'N'
              'M')
          end
          object DBEdit6: TDBEdit
            Left = 83
            Top = 141
            Width = 58
            Height = 21
            DataField = 'Grup_filiais'
            DataSource = DmDTA.dsgrupo
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 240
            Top = 141
            Width = 75
            Height = 21
            DataField = 'Grup_Funcionarios'
            DataSource = DmDTA.dsgrupo
            TabOrder = 4
          end
          object DBEdit8: TDBEdit
            Left = 408
            Top = 139
            Width = 94
            Height = 21
            DataField = 'Grup_Estagiarios'
            DataSource = DmDTA.dsgrupo
            TabOrder = 5
          end
          object GroupBox1: TGroupBox
            Left = 24
            Top = 163
            Width = 481
            Height = 41
            Caption = 'Calculado'
            TabOrder = 8
            TabStop = True
            object Label4: TLabel
              Left = 136
              Top = 16
              Width = 90
              Height = 13
              Caption = 'N'#186' de Funcion'#225'rios'
              FocusControl = DBEdit3
            end
            object Label10: TLabel
              Left = 300
              Top = 16
              Width = 81
              Height = 13
              Caption = 'N'#186' de Estagi'#225'rios'
              FocusControl = DBEdit9
            end
            object Label11: TLabel
              Left = 8
              Top = 16
              Width = 55
              Height = 13
              Caption = 'N'#186' de Filiais'
              FocusControl = DBEdit10
            end
            object DBEdit3: TDBEdit
              Left = 232
              Top = 12
              Width = 49
              Height = 21
              Color = 14869218
              DataField = 'CalcFunc'
              DataSource = DmDTA.dsgrupo
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit9: TDBEdit
              Left = 386
              Top = 12
              Width = 88
              Height = 21
              Color = 14869218
              DataField = 'CalcEstag'
              DataSource = DmDTA.dsgrupo
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 67
              Top = 12
              Width = 59
              Height = 21
              Color = 14869218
              DataField = 'Calcfiliais'
              DataSource = DmDTA.dsgrupo
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
      end
    end
  end
end
