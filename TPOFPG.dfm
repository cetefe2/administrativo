inherited FORFPG: TFORFPG
  Left = 261
  Top = 36
  Caption = 'Folha de Pagamento da Fatura'
  ClientHeight = 414
  ClientWidth = 857
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 395
    Width = 857
  end
  inherited Panel1: TPanel
    Width = 857
    Height = 395
    inherited btEnter: TBitBtn
      Top = 368
    end
    inherited Panel4: TPanel
      Left = 803
      Top = 9
      Height = 383
      inherited btNovo: TSpeedButton
        Top = 3
        Height = 30
      end
      inherited btExcluir: TSpeedButton
        Top = 41
        Height = 30
      end
      inherited btCancelar: TSpeedButton
        Top = 115
      end
      inherited btFechar: TSpeedButton
        Top = 352
        Height = 30
      end
      object btCalcular: TSpeedButton
        Left = 8
        Top = 154
        Width = 32
        Height = 31
        Hint = 'Calcular - F7'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
          73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
          0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
          0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
          0333337F777777737F333308888888880333337F333333337F33330888888888
          03333373FFFFFFFF733333700000000073333337777777773333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btCalcularClick
      end
      object btExportar: TSpeedButton
        Left = -24
        Top = 131
        Width = 32
        Height = 25
        Hint = 'Exportar - Banco do Brasil'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = btExportarClick
      end
      object btLiberarMtos: TSpeedButton
        Left = 8
        Top = 234
        Width = 32
        Height = 31
        Hint = 'Excluir Selecionados'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btLiberarMtosClick
      end
      object ExportarItau: TSpeedButton
        Left = -24
        Top = 196
        Width = 32
        Height = 30
        Hint = 'Remessa Ita'#250
        Flat = True
        Glyph.Data = {
          12090000424D120900000000000036000000280000001C0000001B0000000100
          180000000000DC080000130B0000130B00000000000000000000FFFFFFFFFFFF
          FAFCFCEDECEBC8BFBC998480886D688769658B6A658D6A658D69658D6A658D6A
          658D6A658D6A658D6A658D6A658C6A658A6A65896A65896B65937772B5A3A2E3
          DCDDF8F9FAFBFFFEFEFFFDFFFFFEFEFFFFFFFFFFE9E9E93A2728000000210000
          3300004000003700003300002F00003100003200003200003000003200003000
          003600004000004000003E00002F0000000000130000CEBBB7FFFFFFFFFFFFFF
          FFFFF9FDFDFAF7F73000002F0000631700642A0A5F270964240B5F26056B2505
          5827066325066A25046829006427026527036026056024075B26095528095828
          085B2A04632002490000050000B8B1AAFFFFFFFFFEFFF3F6F483606318000062
          27006F23006C1C046224015E2601621F007419046C1A0B731C085C17005D1500
          751A04691A0A6E1C066A1D03692301721D00751A00741B0061200A6621095909
          001A0000DED6D4FCFCFAECE7E30000006917006D2600661D0063201176110079
          0D006C17045F2D15700900620A00602B1A572B295B090068000054371C5E1908
          760000640E00522A1B5E0C00650400691A00721A006100004C140DF3F0EEE2D8
          D40000008230097C1B004F5B49359A996309006A1E0D2A9FA329D1D55500004E
          6A6535F1F324CEE2439CA4255A6933D5D554444B650C0530B5AC28D5DB369DA6
          368D8C2C878A612009772200000000E9E2DCDFD3CE0900008237097A19004391
          8226FFFF770500725C5C1BFFFF53B6C464070031FFFF3EA19F6D50536D989D3C
          FFFF33FFFF6B0900576C5623FFFF5C7C806C74782BFFFF16FFFF6C22178A2C00
          010000E2D8CFE0D4CC0F0000823F037E1400467E6E24F2F28500006E5A5815FF
          FF60202F6E000022FFFF4B3A515D0000690000458F8D39FFFF6C0000519A6F2E
          C8C87900008D00003CA6A821F0FA771408903200130000E1D6CBE1D4CD180000
          8A460285190048846923F3F0820000725F5A1EFFFF6A36409B000052A27837FF
          FF36E3DB56C8CA15DFF143FFFF74000050A8862DCFD17303009F00004EABB916
          F4FF771C0D943600180000E2D6CAE3D4CD210000924904911B004789671EF3F2
          9000007960581EFFFF864040A700007D360C5D2B287F35369A403732CDC84BFF
          FF80000059A68329D2D17C0B00A5010051ABB817F2FF81240D9A3B001F0000E4
          D7CAE3D6CB260000964F029B2100508D6624EDDD82000062443E15E4FB492621
          77000047F0EB22CFDD5F000073000037B3B937FFFF87000050A58126D1CF820F
          00AA020052A9B812F1FF84280DA240002A0000E6D8CAE4D8CB3C00009D52079B
          270042916A19E7E183652B4BFFEB0EFFFF52FFFF764A246C534533FFFF46FFFF
          13FFFF20FFFF589077A80F004CBFB137ECEC8D2C00A321004FCFD513FFFF844C
          24A64A00370000E7D8CAE4D8CA5000008E5707B62D00678A7224E6DCA000006A
          4B5D00DCFF5A363CA80700B627008119006A2B007F35078A1100A62500922E00
          862F009E2B008C1D00900C00B00C00992600A02900A44E00410000E7D8CAE5D9
          CA5800009D5900A03600339C7E00F7FF8A270091947056FFFF7E7E5698390097
          4E0A9E4300AF3E009D43008B4800904E00A648009E49048C42005ABEB61EDFF5
          603A15A04100965101A15A02440000E7DACAE5DBC9580000A460009E4300817F
          6667CCCFA443009D21007B1900992A00A84D009C5600925600945300A25206A1
          55009D51048C5407955107AA3C0092501736F5EF5ABDBB995111935001A45D01
          4C0000E8DBCAE7DACC650000A85E09A74A00AE3600AC3400AA4200A75404A959
          04A65704A155059F5405A253059F54059F54059E5405A15404A25403A15309A4
          4F00AC37009E2B008F3100AB41009C5206A85F01520000E8DBC9E7DACC670000
          A7610CA057079F580AA15708A2560AA25709A15607A05607A05607A15607A156
          07A15607A15607A15607A15607A15607A05609A05709A25808AF5704B45504A7
          59019C5809AC6104590000E9DBCAE7DBCA6A0000AA6309A15707A15807A55807
          A65807A65807A35807A15707A25807A25607A25807A25607A25607A25807A256
          07A25807A25707A15807A35807A05A049A5A07A45804A2560AB16206610000EA
          DBCAE7DCC86A0000AC6A02A35B06A35B05A15B05A35B05A35B05A35B05A35B05
          A35D05A35905A35D03A35905A35905A35D03A35905A35D05A35B05A35B05A35B
          05A45B06A15B06A95904A25906AE6500600000EBDCCAE7DBC8650000AC6703A2
          5608A15706A15706A15906A15906A15706A15706A15906A15906A15906A15906
          A15906A15906A15906A15906A15706A15706A15906A15906A05906A659049F59
          08B063025D0000EADCCAE7DACC570000A963019D53079F53069F53049F51069F
          52059F52059F52059F52059F52059F52059F52059F52059F52059F52059F5205
          9F52059F52059F52059F52059D5206A352039C520AAB5E05590000E9DACAEDE4
          DC3C0000A653009B50039C4E049B4E039B4C079B4C069B4A069B4C069B4C049B
          4A089B4D049B4B089B4B089B4D049B4A089B4C049B4C069B4A069B4C069C4C07
          994C05A04B05964C0BA85303510000ECDED3F0F2ED6B200D871B009747079344
          0994420996440A96440A96440A96440A96460A96420C97460A95410995410997
          460A97420C97460A97440A97440A9544089342089445089B43088F4908973400
          4D0000F3EBE4F9FCFAE3D7D54800007D1E00903E088A3C078E3C048B3C04873A
          05873C03843C03863A05863C03833900833900873C03843A05853C03843C0387
          3A05883C048A39048739078D3E08843901600000AA7C6FFAF7F6FEFFFFFFFFFF
          BFAEA43500007A100080330282350C7D340C84340D8C330F8A320D8C330F8C34
          0F8C320D8C320D8C340F8C330F8C330F8C330F8D340F83320D7E350C89340987
          26005900005B0F05FBFCFDFDFEFEFFFFFFFFFFFFFFFFFFCFC1C02D0000320000
          5000005C00005600004E00004A00004C00004C00004C00004C00004C00004C00
          004C00004C00004D00004D0000560000490000210000753632F4EFEEFFFFFFFE
          FEFFFFFFFFFFFFFFFCFFFDF8F9F9E6DDD9C3ABA2A78478A1796DA4786DA6786D
          A6786DA6786DA6786DA6786DA6786DA6786DA6786DA6786DA6786DA6786DA678
          6DA67A70B28F89D6C3C0F1EDEAF8FCFAFCFEFDFFFFFF}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ExportarItauClick
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 275
        Width = 32
        Height = 30
        Hint = 'Gerar Documento nom Financeiro'
        Flat = True
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF9F9F9F4F4F4F0F0F0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFDFDFDF5F5
          F5E3E3E3CACBCCBABABAB2B2B2C8C8C8EBEBEBFDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFDFDFDF4F4F4DEDEDEBDBEBEB5A38F
          B18467A49D9CAAACAD9A9A9ABCBCBCE3E3E3FAFAFAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FBFBFBDADBDDBEB9B5B9A28CD9A462E9A752CB7E2BA7
          8F8EC0C5C7B2B2B2999999AFAFAFD8D8D8F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000E0DDDBD1B295E4B277F2B467EBAD5DE9A955D79750AC918DB6BC
          BEBABABAB3B3B39F9F9FA4A4A4D5D5D5F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF00
          0000D2C8BFFFC480F6BC78F1B772F2B76FEBB876CB975CBAA090B3B7BAAFAFAE
          B4B4B4B6B6B6A4A4A4BFBFBFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFF000000D6C8
          BCFFC88AF4BC7EE2AB74AD6F3B8162598B807BC2BEBCB4B5B6A8A8A8A3A3A39E
          9E9EA3A3A3B9B9B9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFF000000D6CDC3E3B480
          B67742A0878BB6B2B2CED4D7EAF1F5E9EBEBB2B2B29C9C9C8E8E8E8989897E7E
          7EB2B2B2E4E4E4EBEBEBF2F2F2FEFEFEFFFFFF000000E9E9E9CFCCCCD4D6D9E0
          E6E9E1E4E8E4D1BEC19C8DE9E6E4BCBCBD8A8A8A9293939A9C9D787E7FA0A1A3
          B2AFAFB0AEAEC8C8C8F4F4F4FFFFFF000000F2F3F4E2E1DFD9BAA5D8AA84CD81
          38E0A057DE9315E5D4C8D3D5D68F8F909D9C9C90888B877275965442AB5015B4
          6B42B0A5A4EDEDEDFFFFFF000000F5F8F9E6D9CDEFAF63DD974EEFC294F1DAC7
          F9E3D0FDFAF7F3F4F5919496AD9A92AA572BC76000DB863BF0A767E8A46ACEBB
          B4F8F8F8FFFFFF000000F9F9FAE9E7E6FFF4E8F6EBE3FCF4ECEEE0D3F5EAE2D6
          9E7DEBE6E3C3C7C8B2ABA7CC9067C08552BE987CE8BF9CEED4C0F3F1F0FFFFFF
          FFFFFF000000FEFEFEEFEFF0FAFCFEE9B684D2975CE39C4AD09865EAAF73DCC9
          BEEBEEEEADADAF888A8B8B9092989B9CE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFAFAFAE7E9EBEED4BCE7CAB5EEDED2E5DCD5E4DFD7D2D2D1C0C1C2
          B8B8B88A8A8A8A8A8A999999E1E1E1FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFBFBFBDFE1E2CACBCB959BA085898C6F73765254554C4C4C9E9E9E8E
          8E8E8888889A9A9ADDDDDDFDFDFDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFE3E3E3A0A1A15A5A595454524242423D3D3D464646AAAAAA8D8D8D7E7E
          7E9B9B9BDCDCDCFCFCFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE5
          E5E5B9B9B9989898B0B0B0C3C3C3CFCFCFD9D9D9E9E9E9D6D6D6AAAAAAAAAAAA
          EDEDEDFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF3F3F3D9D9
          D9CECECECECECED4D4D4D7D7D7DBDBDBDCDCDCE4E4E4E7E7E7F1F1F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object ExportarHSBC: TSpeedButton
        Left = 8
        Top = 194
        Width = 32
        Height = 31
        Hint = 'Remessa HSBC'
        Flat = True
        Glyph.Data = {
          7A080000424D7A0800000000000036000000280000001E000000170000000100
          18000000000044080000130B0000130B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000E3E3E3FFFFFF000000F4F4F43F3F3FADADAD515151FFFFFF3535357474
          74959595494949FFFFFF8C8C8C4B4B4B929292B4B4B4FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFF000000FFFFFFE9E9E9FFFFFF5C5C5CC3C3C3535353F8F8F8FFFFFF
          000000FFFFFF000000FFFFFFFFFFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BEBEBEC8C8
          C8000000FFFFFFFFFFFF0303030D0D0DFFFFFF4B4B4B8383836868684C4C4CFF
          FFFF252525FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
          FFFFFF000000D0D0D0FFFFFFFFFFFF4B4B4BFEFEFEFFFFFF000000FFFFFF0000
          00FFFFFFFFFFFFE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E8E8E8FFFFFF000000FFFFFF49
          4949D5D5D51E1E1EFFFFFF0606067676766D6D6D525252FFFFFF7171718F8F8F
          C2C2C2171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCDCDFF5151FF5F5FFF6E6EFF6E6EFF6E6EFF6E
          6EFF6E6EFF6A6AFF5050FF8D8DFFEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFAAAAFF2626FFACACFF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7
          C7FF0000FF3535FFFFFFFF9D9DFF0000FF0000FF0000FF0000FF0000FF0000FF
          FFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF0000FF0000
          FF3C3CFFFFFFFFFFFFFFA7A7FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFF
          FFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4FF0000FF0000FF0000FF3D3DFF
          FFFFFFFFFFFFFFFFFF9F9FFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
          FF0000FF0000FF0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFCDCDFF0000FF0000FF0000FF0000FF3D3DFFFFFFFFFF
          FFFFFFFFFFFFFFFF9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF
          0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0303FF0000FF0000FF0000FF3D3DFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FF9797FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00
          00FF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0B0BFF0000FF0000FF3D3DFFFFFFFFFFFFFFFFFFFF0505FF
          0000FF0000FFA4A4FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF8585FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0505FF0000FF3A3AFFFFFFFFFFFFFF0707FF0000FF0000FF00
          00FF0000FF9F9FFFFFFFFFFFFFFF0000FF0000FF7D7DFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000FF3434FFFFFFFF0505FF0000FF0000FF0000FF0000FF0000
          FF0000FFA3A3FFFFFFFF0000FF7373FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF4040FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF8E8EFF3333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ExportarHSBCClick
      end
      object btPreencherValoresZerados: TSpeedButton
        Left = 8
        Top = 314
        Width = 32
        Height = 30
        Hint = 
          'Preencher com valores padr'#245'es as bolsas que estejam com valores ' +
          'zerados'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C963F68B76E67B66C3D96
          3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF54AB568DC8918EC99156AE59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DA55186C58A97CD9B96CC9981C38456AC
          5839923DFFFFFFFFFFFFFFFFFFF2CCBFF5D9CFFFFFFFFFFFFFFFFFFFFFFFFF4D
          A55193CB9687C58C82C3858EC9908CC8907BC07F3A943DFFFFFFFFFFFFE69980
          DF8060FFFFFFFFFFFFFFFFFFFFFFFF4DA55159B05F439B47429A465BB0618CC8
          908BC78E4CA54FFFFFFFFFFFFFE69980CC3300DF8060FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF429B4681C28696CD996CB870FFFFFFFFFFFFE69980
          CC3300CC3300DF8060FFFFFFFFFFFFFFFFFFFFFFFF48A14D469E4B6BB87290CA
          9591CA9655AB58FFFFFFFFFFFFE69980CC3300CC3300CC3300DF8060FFFFFF4D
          A55188C58E8CC79291CB979BCF9F96CC9A88C68C429B46FFFFFFFFFFFFE69980
          CC3300CC3300CC3300CC3300FFFFFF4DA551A5D3AA98CE9D8FCA9587C58C68B7
          6F469E4BFFFFFFFFFFFFFFFFFFE69980CC3300CC3300CC3300DF8060FFFFFF4D
          A5519BCFA154AB5A4EA6544DA551FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE69980
          CC3300CC3300DF8060FFFFFFFFFFFF4DA55191CB9952AA58FFFFFF4FA6544DA6
          5255AB5A4AA24FFFFFFFFFFFFFE69980CC3300DF8060FFFFFFFFFFFFFFFFFF4D
          A5519FD2A581C3896FBA7785C58C99CE9E96CD9C6EBA75FFFFFFFFFFFFE69980
          DF8060FFFFFFFFFFFFFFFFFFFFFFFF4DA551A7D4ACABD6B0A5D4ABA8D6AE9DD0
          A290C99553AA59FFFFFFFFFFFFF2CCBFF5D9CFFFFFFFFFFFFFFFFFFFFFFFFF4D
          A55189C791ACD6B2ADD8B38EC9965AB06353AA59FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85C48EAAD7B1ACD7B38AC792FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF63B46F92CB9A92CB9A5DB268FFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btPreencherValoresZeradosClick
      end
    end
    inherited Panel5: TPanel
      Width = 785
      Height = 389
      inherited pgPrincipal: TPageControl
        Width = 774
        Height = 383
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 766
            Height = 352
            object Label7: TLabel [0]
              Left = 384
              Top = 308
              Width = 54
              Height = 13
              Caption = 'Estagi'#225'rios:'
            end
            object Label8: TLabel [1]
              Left = 558
              Top = 307
              Width = 70
              Height = 13
              Caption = 'Com Desconto'
            end
            object Label10: TLabel [2]
              Left = 446
              Top = 309
              Width = 106
              Height = 13
              Alignment = taRightJustify
              Caption = 'Total Folha (Liberado):'
            end
            inherited DBGrid1: TDBGrid
              Left = 9
              Top = 8
              Width = 705
              Height = 292
              DataSource = DmDTA.dsFolhaPgto
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
              ParentFont = False
              PopupMenu = PopupMenu1
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnEnter = DBGrid1Enter
              OnExit = DBCtrlGrid1Exit
              OnKeyPress = DBGrid1KeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'est_nome'
                  ReadOnly = True
                  Width = 145
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tce_cod'
                  ReadOnly = True
                  Width = 34
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Banco'
                  Width = 110
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'est_agencia'
                  Title.Caption = 'Ag'#234'ncia'
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'est_conta'
                  Title.Caption = 'Conta'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fbo_valor'
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorCerto'
                  Title.Caption = 'Valor Dep'#243'sito'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DescSituacao'
                  ReadOnly = True
                  Width = 108
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'id_parcela'
                  Width = 40
                  Visible = True
                end>
            end
            object DBEdit6: TDBEdit
              Left = 558
              Top = 323
              Width = 106
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'TotalBB'
              DataSource = DmDTA.dsTotal
              ReadOnly = True
              TabOrder = 1
            end
            object DBCtrlGrid1: TDBCtrlGrid
              Left = 718
              Top = 27
              Width = 38
              Height = 270
              Color = clWhite
              DataSource = DmDTA.dsFolhaPgto
              PanelBorder = gbNone
              PanelHeight = 18
              PanelWidth = 21
              ParentColor = False
              TabOrder = 2
              RowCount = 15
              OnExit = DBCtrlGrid1Exit
              object DBCheckBox2: TDBCheckBox
                Left = 5
                Top = 1
                Width = 16
                Height = 17
                DataField = 'fbo_liberacao'
                DataSource = DmDTA.dsFolhaPgto
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
            object Button1: TButton
              Left = 715
              Top = 10
              Width = 36
              Height = 18
              Caption = 'Lib.'
              TabOrder = 3
            end
            object DBEdit9: TDBEdit
              Left = 446
              Top = 324
              Width = 106
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'Total'
              DataSource = DmDTA.dsTotal
              ReadOnly = True
              TabOrder = 4
            end
            object cbHabilitaEdicao: TCheckBox
              Left = 8
              Top = 317
              Width = 209
              Height = 17
              Caption = 'Habilita Edi'#231#227'o da lista'
              Checked = True
              State = cbChecked
              TabOrder = 5
              OnClick = cbHabilitaEdicaoClick
            end
            object edTotalEst: TEdit
              Left = 383
              Top = 324
              Width = 58
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 6
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Width = 766
            Height = 352
            inherited Bevel3: TBevel
              Top = 56
              Width = 728
              Height = 289
            end
            object Label2: TLabel
              Left = 80
              Top = 76
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fatura:'
            end
            object Label3: TLabel
              Left = 62
              Top = 199
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Estudante:'
            end
            object Label4: TLabel
              Left = 52
              Top = 245
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'Bolsa Aux'#237'lio'
            end
            object Label5: TLabel
              Left = 242
              Top = 245
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Descontos:'
            end
            object Label1: TLabel
              Left = 68
              Top = 156
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = 'Empresa:'
            end
            object Label6: TLabel
              Left = 67
              Top = 117
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ano/M'#234's:'
            end
            object DBText1: TDBText
              Left = 620
              Top = 75
              Width = 67
              Height = 16
              Alignment = taRightJustify
              AutoSize = True
              DataField = 'DescSituacao'
              DataSource = DmDTA.dsFolhaPgto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 600
              Top = 119
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Caption = 'TCE:'
            end
            object Label11: TLabel
              Left = 511
              Top = 245
              Width = 39
              Height = 13
              Caption = 'Parcela:'
              FocusControl = DBEdit5
            end
            object DBEdit1: TDBEdit
              Left = 117
              Top = 195
              Width = 37
              Height = 21
              Color = clInfoBk
              DataField = 'est_cod'
              DataSource = DmDTA.dsFolhaPgto
              TabOrder = 0
              OnDblClick = DBEdit1DblClick
              OnExit = DBEdit1Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 159
              Top = 195
              Width = 527
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'est_nome'
              DataSource = DmDTA.dsFolhaPgto
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 117
              Top = 241
              Width = 105
              Height = 21
              DataField = 'fbo_valor'
              DataSource = DmDTA.dsFolhaPgto
              TabOrder = 2
              OnKeyPress = DBEdit3KeyPress
            end
            object DBEdit4: TDBEdit
              Left = 300
              Top = 241
              Width = 124
              Height = 21
              DataField = 'fbo_descontos'
              DataSource = DmDTA.dsFolhaPgto
              TabOrder = 3
              OnKeyPress = DBEdit3KeyPress
            end
            object DBEdit8: TDBEdit
              Left = 117
              Top = 73
              Width = 59
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'fat_numero'
              DataSource = DmDTA.dsFolhaPgto
              ReadOnly = True
              TabOrder = 4
            end
            object edAno: TEdit
              Left = 117
              Top = 114
              Width = 59
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 5
            end
            object edMes: TEdit
              Left = 181
              Top = 114
              Width = 37
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 6
            end
            object edEmpCod: TEdit
              Left = 117
              Top = 153
              Width = 36
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 7
            end
            object edEmpNome: TEdit
              Left = 157
              Top = 153
              Width = 529
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 8
            end
            object DBCheckBox1: TDBCheckBox
              Left = 564
              Top = 277
              Width = 121
              Height = 16
              TabStop = False
              Alignment = taLeftJustify
              Caption = 'Pagamento Liberado'
              DataField = 'fbo_liberacao'
              DataSource = DmDTA.dsFolhaPgto
              TabOrder = 9
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit7: TDBEdit
              Left = 630
              Top = 115
              Width = 55
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = cl3DLight
              DataField = 'tce_cod'
              DataSource = DmDTA.dsFolhaPgto
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdit5: TDBEdit
              Left = 551
              Top = 243
              Width = 134
              Height = 21
              TabStop = False
              Color = cl3DLight
              DataField = 'id_parcela'
              DataSource = DmDTA.dsFolhaPgto
              ReadOnly = True
              TabOrder = 11
            end
            object DBNavigator1: TDBNavigator
              Left = 60
              Top = 278
              Width = 40
              Height = 21
              DataSource = DmDTA.dsFolhaPgto
              VisibleButtons = [nbFirst, nbNext]
              Flat = True
              TabOrder = 12
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 103
              Top = 266
              Width = 456
              Height = 63
              Caption = 'Tipo de Lancamento'
              Columns = 3
              DataField = 'Controle'
              DataSource = DmDTA.dsFolhaPgto
              Items.Strings = (
                'Folha Normal'
                'Recesso Indenizado'
                'Recesso Remunerado'
                'Complemento 01'
                'Complemento 02'
                'Complemento 03')
              TabOrder = 13
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
            end
          end
        end
      end
    end
  end
  inherited usPrincipal1: TUpdateSQL
    Left = 385
    Top = 94
  end
  inherited quPrincipal1: TQuery
    Left = 346
    Top = 102
  end
  object quInsereFolha: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'insert into FolhaPgto'
      
        '  (fat_numero, tce_cod, est_cod, fbo_valor, fbo_descontos, fbo_s' +
        'ituacao, fbo_liberacao,controle)'
      'values'
      
        '  (:fat_numero, :tce_cod, :est_cod, :fbo_valor, :fbo_descontos, ' +
        ':fbo_situacao, :fbo_liberacao,:controle)')
    Left = 67
    Top = 130
    ParamData = <
      item
        DataType = ftInteger
        Name = 'fat_numero'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tce_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'est_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'fbo_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'fbo_descontos'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fbo_situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fbo_liberacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'controle'
        ParamType = ptUnknown
      end>
  end
  object qryEstudantes: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'update estudante'
      'set est_agencia = :est_agencia,'
      'est_conta = :est_conta'
      'where'
      'est_cod = :est_cod')
    Left = 115
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'est_agencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_cod'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 235
    Top = 98
    object MarcarTodas1: TMenuItem
      Caption = 'Marcar Todas'
      OnClick = MarcarTodas1Click
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      OnClick = DesmarcarTodas1Click
    end
  end
  object Qrypesquisa: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    Left = 282
    Top = 94
  end
end
