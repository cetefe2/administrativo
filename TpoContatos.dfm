inherited FORCONTATOS: TFORCONTATOS
  Left = 282
  Top = 149
  Caption = '.: Contatos :.'
  ClientHeight = 478
  ClientWidth = 642
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 459
    Width = 642
  end
  inherited Panel1: TPanel
    Width = 642
    Height = 459
    inherited lblInclusao: TLabel
      Left = 280
      Top = 567
    end
    object Label1: TLabel [1]
      Left = 133
      Top = 63
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    inherited btEnter: TBitBtn
      Left = 48
      Top = 566
    end
    inherited Panel4: TPanel
      Left = 587
      Top = 7
      Height = 444
      inherited btFechar: TSpeedButton
        Top = 405
      end
    end
    inherited Panel5: TPanel
      Width = 566
      Height = 442
      inherited pgPrincipal: TPageControl
        Width = 560
        Height = 436
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 552
            Height = 405
            inherited DBGrid1: TDBGrid
              Top = 40
              Width = 537
              Height = 357
              DataSource = DmDTA.dsContatos
            end
            object Edit1: TEdit
              Left = 8
              Top = 16
              Width = 65
              Height = 21
              Color = 14869218
              ReadOnly = True
              TabOrder = 1
              Text = 'Edit1'
            end
            object Edit2: TEdit
              Left = 80
              Top = 16
              Width = 465
              Height = 21
              Color = 14869218
              ReadOnly = True
              TabOrder = 2
              Text = 'Edit2'
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Width = 552
            Height = 405
            inherited Bevel3: TBevel
              Width = 536
              Height = 394
            end
            object Label5: TLabel
              Left = 28
              Top = 331
              Width = 91
              Height = 13
              Caption = 'Usu'#225'rio que Incluiu'
              FocusControl = DBEdit6
            end
            object Label3: TLabel
              Left = 28
              Top = 365
              Width = 93
              Height = 13
              Caption = 'Usu'#225'rio que Alterou'
              FocusControl = DBEdit6
            end
            object Label12: TLabel
              Left = 19
              Top = 163
              Width = 66
              Height = 13
              Caption = 'Observa'#231#245'es:'
            end
            object SpeedButton2: TSpeedButton
              Left = 441
              Top = 168
              Width = 23
              Height = 24
              Hint = 'Acrescenta numero de Liga'#231#227'o'
              Flat = True
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000130B0000130B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9A2A2A26F6F6F6C6C6C8C8C8CC2C2C2E6E6
                E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE3E3E37777778E8989BCA6A6A99393837474777171A3A2A2
                F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFA3A3A39595959C9797AB9B9BC1A7A7E5BFBFE7BDBD686363D2D2D2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                A6A6A69C9C9C9B9898888484716A6A796E6E988282646060D2D2D2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9AB
                ABAB9D9B9B8885856E6969786F6F958484636060D2D2D2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB1B1B19F9E
                9E7F7E7E6B68687E78788B7F7F625F5FD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB5B5B5A1A1A1878787
                767575837F7F8B8282626060D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FF0000FFFFFFFFFFFFFFABABABBABABAB5B5B58686866363636C
                6A6A8E8787626060D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FF0000FFFFFFFFFFFFFFABABABBEBEBEABB0AD57926A5F96716F947B8998
                8C5E5E5ED2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
                00FFFFFFFFFFFFFFACACACC2C2C2A9B2AC53C1773DD6704CE27E5FB67C575B58
                D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000
                FF0000FFADADADC7C7C7A9BCAE5CD8843ED7713BD46D54B474565B57D2D2D2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
                ADADADCBCBCBA9BCAD64DF894EE77F36CF6649A969555A57D2D2D2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFAEAEAED0
                D0D0ABB8AC67CF7C55ED8239D26443A35F555A56D2D2D2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFAEAEAED4D4D4AFB0
                AF727E74697C6F61856A738E7A5C5D5CD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFACACACB2B2B2A7A7A7797979
                7E7E7E8989899595955D5D5DD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB0B0B08282826161616F6F6F78
                7878797979A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6E6E6E3B2C2C5D5050D4D4D4D6D6D6D6D6
                D6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFA3A3A3473434867474FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFB9B9B96F6868989292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFB9B9B9898282DBD8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object Label6: TLabel
              Left = 499
              Top = 157
              Width = 31
              Height = 13
              Caption = 'N. Lig.'
              FocusControl = DBEdit8
            end
            object SpeedButton3: TSpeedButton
              Left = 469
              Top = 168
              Width = 22
              Height = 24
              Hint = 'Subtrai numero de Liga'#231#245'es'
              Flat = True
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000130B0000130B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9A2A2A26F6F6F6C6C6C8C8C8CC2C2C2E6E6
                E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE3E3E37777778E8989BCA6A6A99393837474777171A3A2A2
                F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFA3A3A39595959C9797AB9B9BC1A7A7E5BFBFE7BDBD686363D2D2D2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                A6A6A69C9C9C9B9898888484716A6A796E6E988282646060D2D2D2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9AB
                ABAB9D9B9B8885856E6969786F6F958484636060D2D2D2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB1B1B19F9E
                9E7F7E7E6B68687E78788B7F7F625F5FD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB5B5B5A1A1A1878787
                767575837F7F8B8282626060D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABABBABABAB5B5B58686866363636C
                6A6A8E8787626060D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFABABABBEBEBEABB0AD57926A5F96716F947B8998
                8C5E5E5ED2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00
                00FF0000FF0000FFACACACC2C2C2A9B2AC53C1773DD6704CE27E5FB67C575B58
                D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000
                FF0000FFADADADC7C7C7A9BCAE5CD8843ED7713BD46D54B474565B57D2D2D2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                ADADADCBCBCBA9BCAD64DF894EE77F36CF6649A969555A57D2D2D2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAED0
                D0D0ABB8AC67CF7C55ED8239D26443A35F555A56D2D2D2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAED4D4D4AFB0
                AF727E74697C6F61856A738E7A5C5D5CD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACACB2B2B2A7A7A7797979
                7E7E7E8989899595955D5D5DD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB0B0B08282826161616F6F6F78
                7878797979A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6E6E6E3B2C2C5D5050D4D4D4D6D6D6D6D6
                D6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFA3A3A3473434867474FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFB9B9B96F6868989292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFB9B9B9898282DBD8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton3Click
            end
            object DBEdit5: TDBEdit
              Left = 408
              Top = 345
              Width = 121
              Height = 21
              Color = 14869218
              DataField = 'Dat_Contato'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 28
              Top = 345
              Width = 373
              Height = 21
              Color = 14869218
              DataField = 'Atendente'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit14: TDBEdit
              Left = 28
              Top = 377
              Width = 373
              Height = 21
              Color = 14869218
              DataField = 'AtendenteAlterou'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit15: TDBEdit
              Left = 408
              Top = 377
              Width = 121
              Height = 21
              Color = 14869218
              DataField = 'Dat_alterou'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 6
            end
            object RdStatus: TDBRadioGroup
              Left = 19
              Top = 9
              Width = 516
              Height = 118
              Anchors = []
              Caption = '| Status |'
              Columns = 3
              Ctl3D = True
              DataField = 'Status'
              DataSource = DmDTA.dsContatos
              Items.Strings = (
                '1.Ningu'#233'm atende'
                '2.Telefone ocupado'
                '3.Indispon'#237'vel. '
                '4.Recado'
                '5.N'#250'mero incorreto'
                '6.Trabalhando/Efetivo'
                '7.Estagiando'
                '8.Bolsa-aux'#237'lio insuficiente '
                '9.Trancou matr'#237'cula'
                '10.Inativo.'
                '11.Outro.'
                '12.Agendado '
                '13.Localiza'#231#227'o incompat'#237'vel'
                '14.Sem vaga'
                '15.Perfil recente'
                '16.Em processo seletivo'
                '17.Reprovado anteriormente'
                '18.'#193'rea de est'#225'gio incompat'#237'vel'
                '19.Interesse por e-mail')
              ParentCtl3D = False
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19')
              OnChange = RdStatusChange
            end
            object nb: TNotebook
              Left = 19
              Top = 126
              Width = 514
              Height = 30
              TabOrder = 2
              object TPage
                Left = 0
                Top = 0
                Caption = 'Default'
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Retorno'
                object Label4: TLabel
                  Left = 296
                  Top = 8
                  Width = 100
                  Height = 13
                  Caption = 'Previs'#227'o de Retorno:'
                end
                object Label17: TLabel
                  Left = 456
                  Top = 8
                  Width = 37
                  Height = 13
                  Caption = '(Meses)'
                end
                object Label18: TLabel
                  Left = 8
                  Top = 8
                  Width = 35
                  Height = 13
                  Caption = 'Motivo:'
                end
                object DBEdit16: TDBEdit
                  Left = 407
                  Top = 4
                  Width = 42
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'PrevisaoRetorno'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 0
                  OnKeyPress = DBEdit16KeyPress
                end
                object DBEdit21: TDBEdit
                  Left = 48
                  Top = 5
                  Width = 236
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'MotivoInativo'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 1
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Recado'
                object Label14: TLabel
                  Left = 11
                  Top = 8
                  Width = 64
                  Height = 13
                  Caption = 'Recado com:'
                end
                object DBEdit17: TDBEdit
                  Left = 80
                  Top = 5
                  Width = 409
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'RecadoCom'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'ValorMinimo'
                object Label15: TLabel
                  Left = 11
                  Top = 8
                  Width = 65
                  Height = 13
                  Caption = 'Valor M'#237'nimo:'
                end
                object DBEdit18: TDBEdit
                  Left = 80
                  Top = 5
                  Width = 121
                  Height = 21
                  DataField = 'ValoMinimo'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Melhorhorario'
                object Label16: TLabel
                  Left = 8
                  Top = 8
                  Width = 72
                  Height = 13
                  Caption = 'Melhor Hor'#225'rio:'
                end
                object DBEdit19: TDBEdit
                  Left = 88
                  Top = 5
                  Width = 403
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'MelhorDia'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'TextoOutros'
                object Label13: TLabel
                  Left = 9
                  Top = 8
                  Width = 64
                  Height = 13
                  Caption = 'Texto Outros:'
                end
                object DBEdit20: TDBEdit
                  Left = 80
                  Top = 5
                  Width = 393
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'TextoOutros'
                  DataSource = DmDTA.dsContatos
                  TabOrder = 0
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Agenda'
                object SpeedButton1: TSpeedButton
                  Left = 11
                  Top = 5
                  Width = 106
                  Height = 22
                  Caption = 'Abrir Agenda'
                  Flat = True
                  Glyph.Data = {
                    66060000424D6606000000000000360000002800000018000000160000000100
                    18000000000030060000C40E0000C40E00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC7B3
                    ACB29F9CAC9D9DAC9C9DAD9B97B5A19BC0ACA4C4AFA7C4AEA7C3AEA7C3AEA7C3
                    AEA7C3AEA7C3ADA7C4ADA7C3ADA7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFA09CA27BB6CD59BEE435A6ED228AEE2775E54870C6807B94CBA37DF5C3
                    8EF6C692F6C796F6C899F7CA9DF6CCA1F7CDA4F6D1AAD1AA81B8B2B2FF00FFFF
                    00FFFF00FFFF00FFDAAE9854C3E690F2FF3BCDFF00AFFF00A0FF008FFF0084FF
                    007DCE9093A2E2D9CBE1D9CEE3DCD2E3DED6E3DED9E3E1DCE5E3DFE4E8E9F2D7
                    BAC5A08CFF00FFFF00FFFF00FFFF00FFEFBE96ABA4B07FDCF29CEEFF1CC3FF00
                    AFFF009FFF0089E46A80AAE4E6E7EDEDEFCECFD2E8E9EBEEEFF0D3D4D5DEDFE0
                    EEEEEEE1E4E9DFC6AAC6A189FF00FFFF00FFFF00FFFF00FFF1C097C3B5B481DF
                    EFBFF8FF2BD5FF00C1FF00B1FF0091DD8392B1FFFFFFFFFFFFDFDCDAFDFBF7FF
                    FFFFE4E2E0EEEEEDFFFFFFF2F5F9E1C7AAC5A18AFF00FFFF00FFFF00FFFF00FF
                    F1C199BDB0B196E6F2DBFDFF2EE6FF00D4FF00C3FF009DE27789ADE4E4E5E7E6
                    E6C1CBDAD1E0F7D5E5FCBECFE3DADBDDE9E9E8DDE1E4DEC3A5C6A18AFF00FFFF
                    00FFFF00FFFF00FFF2C29ACBBAAF8ED2E8F8FFFF6BECF400D8F200D1FD00A0DF
                    7D82A1D1D1D2E7E5E378BBF700ABFF2298FE4092FBD0D8E2E6E5E3DADDE1DDC2
                    A2C6A28AFF00FFFF00FFFF00FFFF00FFF1C299DDCEBCC4D4E99BB8CF509BC715
                    7AA7007EA6708AB5CEBAB5BE9C8EB79E9C7BC1EB00D4FF1CBBFF40A5FCE8EEF9
                    FFFFFFF2F5F9E0C4A5C5A08AFF00FFFF00FFFF00FFFF00FFF1C39BD9CAB8E7E9
                    ECB2B0BF3B90CE2778B2959497E9D7C6F2E0CEFFF9DEEED4AF997E7D1CCEEB00
                    CBFF2BAFFDDAE0ECF0EFEEE2E5E9DEC1A0C6A18AFF00FFFF00FFFF00FFFF00FF
                    F2C39CD5C6B4D7D9DCBE93879995974075A5E9DDC0FFF6DCFFF5DAFFF0CDFFEC
                    BAEAC890978790B7D7F6A8C5E5CED1D5DEDDDCD4D7DBDCBE9CC6A18AFF00FFFF
                    00FFFF00FFFF00FFF1C29BDED0C0EAE5E7CA935F5595C6157EBABEB095F2E1BA
                    F7E5BCF8E4B4F9DFA5FDDD94BB8659EAE9E8E5E2DEEEEDEDFFFFFFF1F4F8DFC1
                    9FC5A08AFF00FFFF00FFFF00FFFF00FFF2C39CDBCDBEDACBCDCC9D65279AD915
                    80BE938A807570667C725A877859E3C785E7B972CD9C54D2CECFD9DADCE6E7E9
                    F5F7F8E8ECF2DDBE9CC5A08AFF00FFFF00FFFF00FFFF00FFF4C5A0E6D6C2CDB7
                    B3CFA06B279ADA1580BD9C989297908338332BAE9763F3CD7AE5B057CD9746BE
                    B0A6D6CDC0D7CEC1DBD1C2D8D2C8E8C499C5A08AFF00FFFF00FFFF00FFFF00FF
                    F6C7A4FFEACBEFC7A5D39A5F5D98C8157DBACEC7B7FCF2D8BAB29E665D46DBC2
                    8BFCD682BC7C38E7BA84FCCC90FBCB8DF9C887FBCD93F8CA8EC79F89FF00FFFF
                    00FFFF00FFFF00FFF6CAA9FEC985EAA100CE7F15C9B59FB2B8BEFAF4E3FFF9E7
                    FFF8E0BCB4A2D1C6A6F1CD94B46F15EBAC00EDAE15EDAF1CEDB027F0AD22F7B3
                    50C6A38AFF00FFFF00FFFF00FFFF00FFF7CBA8FDC37DE09400D88F00CD822EF3
                    D6AFFFFDEFEFDCCFF1DECAFFF9DCF1D2A4B46F33D49400E2A100E3A200E3A300
                    E2A400E6A200F8AF4ACAA990FF00FFFF00FFFF00FFFF00FFF9CDB2FFE3BAF8BE
                    7AF6B865EEAD5FD3863BD69C6FE0AF78DEAE76CD9569C37A38E8AA55F7B75DF7
                    B75CF7B75AF7B75AF6B657F9BD6AF8C37FD8BAAAFF00FFFF00FFFF00FFFF00FF
                    FF00FFF8D1B0F8D1ADF6CEA9F6CDA7F5CCA6E9BA97E1AA89DFAA88E6B893F5C8
                    A0F6C99FF5C89DF5C79CF5C79CF4C79AF5C698F5C799E8C7ACFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FF}
                  OnClick = SpeedButton1Click
                end
              end
            end
            object DBEdit7: TDBEdit
              Left = 480
              Top = 102
              Width = 49
              Height = 21
              Color = 16053492
              DataField = 'Cont_cod'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 7
              OnChange = DBEdit7Change
            end
            object DBEdit8: TDBEdit
              Left = 501
              Top = 169
              Width = 28
              Height = 21
              Color = 14869218
              DataField = 'NumeroLigacoes'
              DataSource = DmDTA.dsContatos
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit9: TDBEdit
              Left = 88
              Top = 162
              Width = 345
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Observacoes'
              DataSource = DmDTA.dsContatos
              TabOrder = 1
            end
            object GroupBox1: TGroupBox
              Left = 19
              Top = 187
              Width = 518
              Height = 145
              Caption = '[Vaga]'
              TabOrder = 9
              object Label2: TLabel
                Left = 8
                Top = 19
                Width = 25
                Height = 13
                Caption = 'Vaga'
              end
              object Label7: TLabel
                Left = 11
                Top = 43
                Width = 41
                Height = 13
                Caption = 'Empresa'
              end
              object SpeedButton4: TSpeedButton
                Left = 490
                Top = 13
                Width = 23
                Height = 22
                Hint = 'Incluir Nova Filial'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF196B37196B37196B
                  37196B37196B37FFFFFFFFFFFFD69E72D3996ED19668CE9263CB8E5EC98A5BC7
                  8756C384526B7744288C5364BA8D95D2B264BA8D288C53196B37FFFFFFD7A175
                  F8F2EDF7F0EAF6EDE6F4EAE2F3E7DEF1E4DBF0E2D822703E62BA8B60BA87FFFF
                  FF60B98767BC8F196B37FFFFFFD9A47AF9F3EEEBD2BEFFFFFFEBD3BFFFFFFFFF
                  FFFFFFFFFF317B4C9CD4B6FFFFFFFFFFFFFFFFFF95D2B2196B37FFFFFFDDA87E
                  F9F3EFEBD0BAEBD0BBEBD0BBEBD0BBEBD0BBEBD1BD49896090D3B192D6B1FFFF
                  FF65BC8C67BC8F196B37FFFFFFDFAA82F9F3EFEACEB7FFFFFFEBD0BBFFFFFFFF
                  FFFFFFFFFF9DAF9161AB8195D4B4BAE6D06ABB8F2D8F57196B37FFFFFFE1AE87
                  FAF4F0EACBB2EACCB3EACCB3EACCB3EACCB3EACEB7E8C7ACA2AE8E5F97714F8E
                  6649895F7B7F4FFFFFFFFFFFFFE3B18CFAF6F1EAC9AEFFFFFFEAC9B0FFFFFFFF
                  FFFFFFFFFFE8C7ACFFFFFFFFFFFFFFFFFFF1E5DBC68655FFFFFFFFFFFFE5B48F
                  FAF6F2E9C6AAE9C6ACEAC7ACE9C7ADE9C9AEE9C9B0E8C7ACE9C9B0E8C8B0E8CC
                  B5F2E7DEC88A59FFFFFFFFFFFFE7B794FBF7F4E9C3A6FFFFFFE8C4A9FFFFFFFF
                  FFFFFFFFFFE8C7ACFFFFFFFFFFFFFFFFFFF7F1EBCB8F5FFFFFFFFFFFFFE9BA98
                  FBF7F4E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3
                  A6FBF7F4CE9364FFFFFFFFFFFFEBBD9BFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4D1976AFFFFFFFFFFFFECBF9E
                  FBF7F49CD5A598D3A194D09D90CE988BCB9387C98E82C6897EC3847AC18076BE
                  7CFBF7F4D49B6FFFFFFFFFFFFFEEC1A1FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FB
                  F7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4D7A074FFFFFFFFFFFFEFC2A3
                  EFC1A2EDC09FEBBE9DEBBC9AE9BA96E7B793E6B590E4B28CE2AF88E0AC84DDA9
                  80DCA57DDAA37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton4Click
              end
              object SpeedButton10: TSpeedButton
                Left = 490
                Top = 41
                Width = 23
                Height = 22
                Hint = 'Editar Filial'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFBB6A34
                  BA6530BB6631BA6630BA6630BA6630BA6530BA652FB9652EB9652EB9642EB964
                  2EB7622CB7622EFFFFFFFFFFFFBC6933F8F1EAF7ECDFF6EBDEF6EADEF6EADCF6
                  EADCFAF3EBFAF3EBFAF2EAFCF7F3FCF8F4FEFEFDB7602AFFFFFFFFFFFFBF7138
                  F5EBDFFDBF68FCBD67FBBE65FCBE64FCBE64FCBD62FBBD63FBBC61FCBE60FCBC
                  62FDFBF8B9642DFFFFFFFFFFFFC1783CF7EDE3FDC26E1842572B61874C89BC70
                  9FB3E3C99AFFD695FFD594FFD493FBBE65FBF7F4BB6731FFFFFFFFFFFFC47C40
                  F7F0E6F8B4552E668294C7F991C9F94185C92668A6D2A865F7B251F7B24FF7B2
                  4FFCF9F5BF6F36FFFFFFFFFFFFC58042F8F1E8FEE5D54389AAE0F2FF549AD81A
                  7ABE4998C5488CC2DAD2CDFBE0C9FBE1C8FDFAF7C1763BFFFFFFFFFFFFC58245
                  F8F2EBFEE7D6A6B6BF7AB6D590B7D155C9E45BDFF578D0ED519BD9E1D6CDFBE1
                  C9FBF7F2C57C3FFFFFFFFFFFFFC68447F9F3ECFEE8D6FEE8D7B3C6CC76B9D6C2
                  F6FD63DFF75DE2F879D3F04998DAE2D5C8FAF2EAC68042FFFFFFFFFFFFC68849
                  F9F4EDFEE8D8FEE8D8FEE8D7B0C6CC77CBE7C7F7FD5EDCF55AE1F77BD4F14B99
                  DBD2DFE9C68245FFFFFFFFFFFFC6884AF9F4EFFEE7D7FDE7D6FDE7D5FDE6D4BD
                  D6D579D3EEC7F7FD5FDCF55BE2F77AD6F251A1E0AD8560FFFFFFFFFFFFC6894B
                  F9F4F0FCE6D3FCE6D4FDE7D3FCE4D1FBE3CDBED4D07DD4EEC4F6FD6CDDF66DCA
                  ED63A3D76499C85192CAFFFFFFC6894BF9F5F1FCE3CFFBE4D0FCE4CFFCE3CDFA
                  E1CAF9DDC4AFCDC981D5EEB2E3F98BC0E7AED3F6C4E0FC669FD3FFFFFFC6894C
                  F9F5F1FCE3CDFBE3CEFBE3CDFBE2CBF9E0C8F8DCC2F5D6BAAFE3F177BEE7B4D2
                  F0E5F3FFACD2EF488CC7FFFFFFC5884BFAF6F2FAE0C7FBE1C9FBE2C9FBE0C8F9
                  DFC5F8DBC1F4D6B8FFFBF8B6CBC258A5D885B1DB469DD02B95D1FFFFFFC48549
                  F7F2ECF8F4EEF8F4EDF8F3EDF8F3EDF8F3EDF8F2ECF7F2ECF2E6D7E2B27DDB94
                  65B3683BFFFFFFFFFFFFFFFFFFC17D44C88B4DC88C4FC88C4FC88C4FC88C4FC8
                  8D4FC98C4FC78B4FC5894BC4763BB3683CFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton10Click
              end
              object SpeedButton11: TSpeedButton
                Left = 490
                Top = 66
                Width = 23
                Height = 22
                Hint = 'Salvar Filial'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFBA6833C38458D38B68E18F70DC8D6CDA8B6DD78A
                  6ECD8B6CAB6D44A65F2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68355EF
                  CEBADDFFFF87EEC7A2F4D7A2F6D78CEEC7E0FFFFDDA285AB6A3ED69E72D3996E
                  D19668CE9263CB8E5EC98A5BC37F51EFB69AEAF3E851BF846FC99871C99954BF
                  84E4F4E9DD9C7BAA693AD7A175F8F2EDF7F0EAF6EDE6F4EAE2F3E7DEC48154EA
                  B697F3F3EAEDF1E6EFF1E6EFF0E6EDF1E5F3F5EDD59C79B07044D9A47AF9F3EE
                  EBD2BEFFFFFFEBD3BFFFFFFFC98B61E6B592E2A781E1A781DEA37DDCA17BDB9F
                  79D99E77D49A73BB7E57DDA87EF9F3EFEBD0BAEBD0BBEBD0BBEBD0BBCA8D65EA
                  B899DDA57EDDA680DBA37CD9A07AD9A079D89F78D89E78BF845DDFAA82F9F3EF
                  EACEB7FFFFFFEBD0BBFFFFFFC8885DEFBFA1FDFCFAFEFCFBFEFDFDFEFDFCFDFB
                  FAFDFCFBDDA885C17F53E1AE87FAF4F0EACBB2EACCB3EACCB3EACCB3C7865BEF
                  C09EFFFFFFCC936EFFFFFFFFFFFFFFFBF7FFF8F1E4AF8CC78A61E3B18CFAF6F1
                  EAC9AEFFFFFFEAC9B0FFFFFFCC8D65F3CDB0FFFFFFE3C7B3FFFFFFFFFFFFFFFF
                  FFFFFFFFEABFA1C98960E5B48FFAF6F2E9C6AAE9C6ACEAC7ACE9C7ADD4976ED4
                  9E7BD09871D6A482CD8E68CD9069D09A75D19973C88B62AD5A20E7B794FBF7F4
                  E9C3A6FFFFFFE8C4A9FFFFFFFFFFFFFFFFFFE8C7ACFFFFFFFFFFFFFFFFFFF7F1
                  EBCB8F5FFFFFFFFFFFFFE9BA98FBF7F4E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9
                  C3A6E9C3A6E9C3A6E9C3A6E9C3A6FBF7F4CE9364FFFFFFFFFFFFEBBD9BFBF7F4
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
                  F4D1976AFFFFFFFFFFFFECBF9EFBF7F49CD5A598D3A194D09D90CE988BCB9387
                  C98E82C6897EC3847AC18076BE7CFBF7F4D49B6FFFFFFFFFFFFFEEC1A1FBF7F4
                  FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7
                  F4D7A074FFFFFFFFFFFFEFC2A3EFC1A2EDC09FEBBE9DEBBC9AE9BA96E7B793E6
                  B590E4B28CE2AF88E0AC84DDA980DCA57DDAA37AFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton11Click
              end
              object SpeedButton12: TSpeedButton
                Left = 489
                Top = 92
                Width = 23
                Height = 22
                Hint = 'Cancelar Inclus'#227'o/Edi'#231#227'o - Filial'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF328AC53087C42F85C32D83C22B81C1297FC0287DBF267B
                  BE2579BD2377BD2276BCFFFFFFD69E72D3996ED19668CE92634891BEDDECF6BD
                  EEF9ACEAF8ABEAF8ABEAF8ABEAF8ADEAF8D4F3FBA4C8E4267BBEFFFFFFD7A175
                  F8F2EDF7F0EAF6EDE6A8C8D98EC2E197E8F961DCF65BDBF53288C25BDBF56ADE
                  F6B1E7F63A84B92B81C1FFFFFFD9A47AF9F3EEEBD2BEFFFFFFE7D2BF69B1D9AB
                  DBEF74E0F758DAF558DAF55DDBF590E6F892C1E17D8B91FFFFFFFFFFFFDDA87E
                  F9F3EFEBD0BAEBD0BBEBD0BBBDC4C27BBDDFA2EAF961DCF63187C277E1F7B6DE
                  F057A1CCBF8A62FFFFFFFFFFFFDFAA82F9F3EFEACEB7FFFFFFEBD0BBFEFEFF8D
                  C9E4ACD9EC82E3F83388C2ACEDFA449ECFB7CBD5C88D5FFFFFFFFFFFFFE1AE87
                  FAF4F0EACBB2EACCB3EACCB3EACCB3D1C8B95CB1D5B4EBF88EE6F8B5DDEE79B0
                  C8EDE1D8C48654FFFFFFFFFFFFE3B18CFAF6F1EAC9AEFFFFFFEAC9B0FFFFFFFF
                  FFFFABDBEDA4D7EBDCF4FB5CB4DADAEEF6F1E5DBC68655FFFFFFFFFFFFE5B48F
                  FAF6F2E9C6AAE9C6ACEAC7ACE9C7ADE9C9AEE1C8B270BCD5ABDBED98BEC8E8CC
                  B5F2E7DEC88A59FFFFFFFFFFFFE7B794FBF7F4E9C3A6FFFFFFE8C4A9FFFFFFFF
                  FFFFFFFFFFBAC4BD7FCBE5F1F9FCFFFFFFF7F1EBCB8F5FFFFFFFFFFFFFE9BA98
                  FBF7F4E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3
                  A6FBF7F4CE9364FFFFFFFFFFFFEBBD9BFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4D1976AFFFFFFFFFFFFECBF9E
                  FBF7F49CD5A598D3A194D09D90CE988BCB9387C98E82C6897EC3847AC18076BE
                  7CFBF7F4D49B6FFFFFFFFFFFFFEEC1A1FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FB
                  F7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4D7A074FFFFFFFFFFFFEFC2A3
                  EFC1A2EDC09FEBBE9DEBBC9AE9BA96E7B793E6B590E4B28CE2AF88E0AC84DDA9
                  80DCA57DDAA37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton12Click
              end
              object SpeedButton13: TSpeedButton
                Left = 490
                Top = 117
                Width = 23
                Height = 22
                Hint = 'Excluir Filial'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D57C40345B90442
                  BC0345B90345B8FFFFFFFFFFFFD69E72D3996ED19668CE9263CB8E5EC98A5BC7
                  8756C384526E6D8B2765C72177E60579EA0164DD054DBC0345B8FFFFFFD7A175
                  F8F2EDF7F0EAF6EDE6F4EAE2F3E7DEF1E4DBF0E2D81D56BC639DF4187FFF0076
                  F80076EE0368E10345B9FFFFFFD9A47AF9F3EEEBD2BEFFFFFFEBD3BFFFFFFFFF
                  FFFFFFFFFF0543BCAECDFEFFFFFFFFFFFFFFFFFF187FEF0442BCFFFFFFDDA87E
                  F9F3EFEBD0BAEBD0BBEBD0BBEBD0BBEBD0BBEBD1BD2256B88DB5F64D92FF1177
                  FF2186FF408AEB0344B9FFFFFFDFAA82F9F3EFEACEB7FFFFFFEBD0BBFFFFFFFF
                  FFFFFFFFFF8B97BF3D76D28DB5F7B8D6FE72A8F52F6BCA0443BAFFFFFFE1AE87
                  FAF4F0EACBB2EACCB3EACCB3EACCB3EACCB3EACEB7E8C7AC8993B7285BBE0543
                  BC1E57BD696784FFFFFFFFFFFFE3B18CFAF6F1EAC9AEFFFFFFEAC9B0FFFFFFFF
                  FFFFFFFFFFE8C7ACFFFFFFFFFFFFFFFFFFF1E5DBC68655FFFFFFFFFFFFE5B48F
                  FAF6F2E9C6AAE9C6ACEAC7ACE9C7ADE9C9AEE9C9B0E8C7ACE9C9B0E8C8B0E8CC
                  B5F2E7DEC88A59FFFFFFFFFFFFE7B794FBF7F4E9C3A6FFFFFFE8C4A9FFFFFFFF
                  FFFFFFFFFFE8C7ACFFFFFFFFFFFFFFFFFFF7F1EBCB8F5FFFFFFFFFFFFFE9BA98
                  FBF7F4E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3A6E9C3
                  A6FBF7F4CE9364FFFFFFFFFFFFEBBD9BFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4D1976AFFFFFFFFFFFFECBF9E
                  FBF7F49CD5A598D3A194D09D90CE988BCB9387C98E82C6897EC3847AC18076BE
                  7CFBF7F4D49B6FFFFFFFFFFFFFEEC1A1FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FB
                  F7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4D7A074FFFFFFFFFFFFEFC2A3
                  EFC1A2EDC09FEBBE9DEBBC9AE9BA96E7B793E6B590E4B28CE2AF88E0AC84DDA9
                  80DCA57DDAA37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton13Click
              end
              object DBEdit3: TDBEdit
                Left = 58
                Top = 17
                Width = 49
                Height = 21
                DataField = 'Vag_cod'
                DataSource = DmDTA.dsEstContVaga
                Enabled = False
                TabOrder = 0
                OnDblClick = DBEdit3DblClick
                OnExit = DBEdit3Exit
              end
              object DBEdit4: TDBEdit
                Left = 110
                Top = 17
                Width = 367
                Height = 21
                Color = 14869218
                DataField = 'Vaga'
                DataSource = DmDTA.dsEstContVaga
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 58
                Top = 40
                Width = 48
                Height = 21
                Color = clWhite
                DataField = 'Emp_cod'
                DataSource = DmDTA.dsEstContVaga
                Enabled = False
                TabOrder = 2
                OnDblClick = DBEdit2DblClick
              end
              object DBEdit1: TDBEdit
                Left = 110
                Top = 40
                Width = 367
                Height = 21
                Color = 14869218
                DataField = 'Empresa'
                DataSource = DmDTA.dsEstContVaga
                ReadOnly = True
                TabOrder = 3
              end
              object DBGrid4: TDBGrid
                Left = 9
                Top = 65
                Width = 472
                Height = 75
                DataSource = DmDTA.dsEstContVaga
                ReadOnly = True
                TabOrder = 4
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
            end
          end
        end
      end
    end
  end
  inherited usPrincipal1: TUpdateSQL
    Left = 585
    Top = 246
  end
  inherited quPrincipal1: TQuery
    Left = 586
    Top = 200
  end
  object quprincipal2: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    UpdateObject = usprincipal2
    Left = 586
    Top = 288
  end
  object usprincipal2: TUpdateSQL
    Left = 585
    Top = 318
  end
end
