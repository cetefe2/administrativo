inherited FORVREQ: TFORVREQ
  Left = 52
  Top = 176
  Caption = 'Requisitos da Vaga'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            object Label1: TLabel [0]
              Left = 8
              Top = 10
              Width = 25
              Height = 13
              Caption = 'Vaga'
            end
            inherited DBGrid1: TDBGrid
              DataSource = DmDTA.dsvagaRequisto
            end
            object edVagCod: TEdit
              Left = 40
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
            object Label2: TLabel
              Left = 24
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Vaga'
              FocusControl = DBEdit1
            end
            object Label5: TLabel
              Left = 24
              Top = 64
              Width = 44
              Height = 13
              Caption = 'Requisito'
              FocusControl = DBLookupComboBox1
            end
            object SpeedButton1: TSpeedButton
              Left = 346
              Top = 80
              Width = 19
              Height = 20
              Flat = True
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
                FB91969A797778B2B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D8893428BB2
                8391A3615858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF828F9A4C9CC4A6E7FB53ADE15C
                6E81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF87949F5AA9D0A4E7FB5ABEF11C78B4939DA5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBDBCBC9494984198C5A6E8FB5EC0F22C89C765727DFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBBFBDBD7E7979898081837D7D948681C7B4
                AD93BAD69CE2F95DC0F243A3E0E3E6EB7F6B66B1B1B0FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE4E4E47B71709A8878CEC0A2D5CBB0C8BBAAC1ACA6D1C4C4D6CCCE
                80B4D741A6E5D8E4EEFAF6F6F1E5E2534541D0D0D0FFFFFFFFFFFFFFFFFFEBEB
                EB7A6D6CE0C9A3FDF1BCFEFBC8FFFFD7FFFFE3F9F8E9C5B5B3B5A2A3E7DEDDE7
                E6E9F7F1F0F6F0F0FAF6F6DAC9C45F5654ECECECFFFFFFFFFFFFB4AFAFD5BA9A
                FCE8B0FDECB6FFFCCAFFFFDAFFFFE8FFFFF4FCFBF7BCABA9F3E9E7ECDDD8EAD9
                D3E8D5CFE4CCC6F3EAE7BFA9A3544E4CFFFFFFFFFFFF81726CF7DAA5FBDEA5FD
                ECB6FFFCCAFFFFD8FFFFE5FFFFF0FFFFF3E3DBD0EAE4E4FBF8F8FAF7F7FBF7F7
                E7D3CDEEE0DFFAF4F3A28982929090FFFFFFAC9687FADCA2FBE4ACFCEAB4FEF7
                C4FFFFD9FFFFDDFFFFE4FFFFE5F6F4DBD3C6C6F9F5F5F8F3F3F2E9E7E6D1CDF2
                E8E8F2E9E9F6EFED917C76ABAAAAB29D8DFADA9FFCE9B1FEF7CFFEF6D0FFFACA
                FFFFD7FFFFD7FFFFD9F8F6D3D4C7C8F8F2F2F7F1F1E3CCC6F1E8E7F1E7E7EFE3
                E3F5EDEDEBDDD967565291847CF8D399FDF0BAFFFFDBFFFEEBFDF1BEFFFACBFE
                FBC8FFFDCBEEE8C4E8DEDFF6F0F0EAD7D2EFE3E1F3EAEAF3EBEBF7F1F0EEE2DF
                C5ABA3B1A39FBFBDBDEBCBA6FBE2A9FEF7C4FFFACDFCEDB7FCE9B2FDEBB5FDF2
                BDDDD0C2F4EDEDF1E5E3EAD7D4F9F4F4F5EDECECDDD8DEC3BB877570E9E7E7FF
                FFFFEAEAEAA19894F4CFA1FADEA3FBE6AEFBE4ACFAE2A9FBE6AEE9D8BDEBE1E1
                F4ECECE9D5D0F2E7E4E7D1CCE5CFCBECDEDDF9F3F2AB928C969393FFFFFFF8F8
                F8B1A099F3EDEBF1DAC3F4D1A4F5D2A0F3D6B1E6D7CCEDE4E4F3EAEAE8D3CDDE
                C1BAECDEDBF2E9E9F2E8E8F4ECECF8F0EED7C3BDA28F8AFFFFFFE4E4E4B1A39F
                A39692CDBEBAE9DAD6F4ECEAF6F1F1F6EFEFF3EAEAF0E3E0EAD7D2F6EFEFF6F0
                F0F9F4F4F3E5E2B6A19CA3908BD3CDCBECECECFFFFFFFFFFFFFFFFFFEEEEEEF5
                F3F2B8AFACCCBEBA9D8F8BBFABA6E6D0CAE7D1CBFAF6F6F9F4F3E1D0CCA48F89
                AFA19DF2F0F0FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFBFBFAB6A099F1E3E0C6B3AEA48E88BDB7B5E4E4E4FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEAE9E8B8ABA8E4E0DFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object DBEdit1: TDBEdit
              Left = 24
              Top = 32
              Width = 65
              Height = 21
              TabStop = False
              Color = 16053492
              DataField = 'COD_VAGA'
              DataSource = DmDTA.dsvagaRequisto
              ReadOnly = True
              TabOrder = 0
            end
            object rdTipo: TDBRadioGroup
              Left = 18
              Top = 119
              Width = 351
              Height = 45
              Caption = '| Tipo |'
              Columns = 2
              DataField = 'TIPO'
              DataSource = DmDTA.dsvagaRequisto
              Items.Strings = (
                'Desej'#225'vel'
                'Obrigat'#243'rio')
              TabOrder = 2
              Values.Strings = (
                'D'
                'O')
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 24
              Top = 80
              Width = 321
              Height = 21
              DataField = 'Requisito'
              DataSource = DmDTA.dsvagaRequisto
              TabOrder = 1
            end
          end
        end
      end
    end
  end
end
