inherited FORFUNEMP: TFORFUNEMP
  Left = 412
  Top = 275
  Caption = 'Cadastro de Fun'#231#245'es [Clientes]'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 16
              Height = 169
              DataSource = DmDTA.dsEmpfuncao
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 16
              Top = 16
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 72
              Top = 16
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 16
              Top = 80
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object DBEdit1: TDBEdit
              Left = 16
              Top = 32
              Width = 49
              Height = 21
              TabStop = False
              Color = 16053492
              DataField = 'Fun_Cod'
              DataSource = DmDTA.dsEmpfuncao
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 72
              Top = 32
              Width = 297
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Fun_Nome'
              DataSource = DmDTA.dsEmpfuncao
              TabOrder = 1
            end
            object DBCheckBox1: TDBCheckBox
              Left = 16
              Top = 58
              Width = 97
              Height = 17
              Caption = 'Fun'#231#227'o '#218'nica'
              DataField = 'Fun_unica'
              DataSource = DmDTA.dsEmpfuncao
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBMemo1: TDBMemo
              Left = 16
              Top = 96
              Width = 361
              Height = 72
              DataField = 'Fun_Descricao'
              DataSource = DmDTA.dsEmpfuncao
              TabOrder = 3
            end
          end
        end
      end
    end
  end
end
