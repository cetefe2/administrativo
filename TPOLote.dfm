object FORLOTE: TFORLOTE
  Left = 350
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lotes de Envio - Ita'#250
  ClientHeight = 369
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 546
    Top = 2
    Width = 49
    Height = 365
  end
  object btNovo: TSpeedButton
    Left = 557
    Top = 11
    Width = 32
    Height = 31
    Hint = 'Novo - Insert'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btNovoClick
  end
  object btExcluir: TSpeedButton
    Left = 557
    Top = 49
    Width = 32
    Height = 31
    Hint = 'Excluir - Delete'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btExcluirClick
  end
  object btSalvar: TSpeedButton
    Left = 557
    Top = 88
    Width = 32
    Height = 31
    Hint = 'Salvar - F3'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btSalvarClick
  end
  object btCancelar: TSpeedButton
    Left = 557
    Top = 129
    Width = 32
    Height = 31
    Hint = 'Cancelar - F5'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btCancelarClick
  end
  object btEmail: TSpeedButton
    Left = 557
    Top = 205
    Width = 32
    Height = 31
    Hint = 'Exportar Dados - Tecla F6'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
      FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
      07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
      77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
      0733333773FF33F773333333707EE707333333333773F7733333333333700733
      3333333333377333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btEmailClick
  end
  object btFechar: TSpeedButton
    Left = 557
    Top = 324
    Width = 32
    Height = 31
    Hint = 'Fechar - F4'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btFecharClick
  end
  object SpeedButton1: TSpeedButton
    Left = 558
    Top = 245
    Width = 32
    Height = 31
    Hint = 'Exportar Dados - do Lote'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
      FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
      07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
      77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
      0733333773FF33F773333333707EE707333333333773F7733333333333700733
      3333333333377333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Pgprincipal: TPageControl
    Left = 0
    Top = 0
    Width = 545
    Height = 369
    ActivePage = tbconsulta
    Align = alLeft
    Style = tsButtons
    TabOrder = 0
    object tbconsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 537
        Height = 338
        Align = alClient
        BevelInner = bvLowered
        BorderWidth = 2
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 4
          Top = 4
          Width = 529
          Height = 330
          Align = alClient
          DataSource = DmDTA.DsLotePgto
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = DBGrid4KeyPress
        end
        object campos: TListBox
          Left = 449
          Top = 313
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          Visible = False
        end
      end
    end
    object tbregistro: TTabSheet
      Caption = 'Registro'
      object lblInclusao: TLabel
        Left = 437
        Top = 32
        Width = 59
        Height = 22
        Caption = 'Inclus'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 91
        Width = 537
        Height = 247
        ActivePage = TabSheet4
        Align = alBottom
        Style = tsButtons
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Registros'
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 529
            Height = 216
            Align = alClient
            BevelInner = bvLowered
            BorderWidth = 2
            Caption = 'Panel2'
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 4
              Top = 4
              Width = 521
              Height = 208
              Align = alClient
              DataSource = dsItens
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Incluir Registro'
          ImageIndex = 1
          object SpeedButton6: TSpeedButton
            Left = 256
            Top = 72
            Width = 23
            Height = 22
            Caption = '>'
            Flat = True
            OnClick = SpeedButton6Click
          end
          object SpeedButton7: TSpeedButton
            Left = 256
            Top = 104
            Width = 23
            Height = 22
            Caption = '>>'
            Flat = True
            OnClick = SpeedButton7Click
          end
          object SpeedButton8: TSpeedButton
            Left = 256
            Top = 136
            Width = 23
            Height = 22
            Caption = '<'
            Flat = True
            OnClick = SpeedButton8Click
          end
          object SpeedButton9: TSpeedButton
            Left = 256
            Top = 176
            Width = 23
            Height = 23
            Caption = '<<'
            Flat = True
            OnClick = SpeedButton9Click
          end
          object DBGrid3: TDBGrid
            Left = 4
            Top = 3
            Width = 249
            Height = 213
            Ctl3D = False
            DataSource = DsAbertos
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Est_nome'
                Title.Caption = 'Estagi'#225'rios Em Aberto'
                Width = 239
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 282
            Top = 1
            Width = 247
            Height = 213
            Ctl3D = False
            DataSource = dsItens
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Est_nome'
                Width = 235
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 537
        Height = 91
        Align = alClient
        BevelInner = bvLowered
        BorderWidth = 2
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 7
          Width = 33
          Height = 13
          Caption = 'Id Lote'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 74
          Top = 7
          Width = 30
          Height = 13
          Caption = 'Fatura'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 264
          Top = 7
          Width = 41
          Height = 13
          Caption = 'Gera'#231#227'o'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 402
          Top = 48
          Width = 82
          Height = 13
          Caption = 'Numero do Envio'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 11
          Top = 47
          Width = 41
          Height = 13
          Caption = 'Empresa'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 162
          Top = 7
          Width = 19
          Height = 13
          Caption = 'Ano'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 216
          Top = 7
          Width = 20
          Height = 13
          Caption = 'M'#234's'
          FocusControl = DBEdit8
        end
        object Label4: TLabel
          Left = 384
          Top = 7
          Width = 83
          Height = 13
          Caption = 'Data para Cr'#233'dito'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 11
          Top = 22
          Width = 49
          Height = 21
          Color = 16053492
          DataField = 'Lot_numero'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit1Change
        end
        object DBEdit2: TDBEdit
          Left = 75
          Top = 22
          Width = 65
          Height = 21
          Color = 16053492
          DataField = 'Fat_numero'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 262
          Top = 22
          Width = 100
          Height = 21
          Color = 16053492
          DataField = 'Lot_data'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 402
          Top = 61
          Width = 83
          Height = 21
          Color = 16053492
          DataField = 'Lot_sequencia'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 11
          Top = 61
          Width = 354
          Height = 21
          Color = 16053492
          DataField = 'emp_nome'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 162
          Top = 22
          Width = 41
          Height = 21
          Color = 16053492
          DataField = 'fat_ano'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 216
          Top = 22
          Width = 30
          Height = 21
          Color = 16053492
          DataField = 'Fat_mes'
          DataSource = DmDTA.DsLotePgto
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 382
          Top = 22
          Width = 99
          Height = 21
          Color = clWhite
          DataField = 'lot_datacred'
          DataSource = DmDTA.DsLotePgto
          TabOrder = 7
        end
      end
    end
  end
  object quPrincipal1: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    Left = 210
    Top = 262
  end
  object usPrincipal1: TUpdateSQL
    Left = 313
    Top = 262
  end
  object QryItensLote: TQuery
    CachedUpdates = True
    OnCalcFields = QryItensLoteCalcFields
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'SELECT    FolhaPgto.fat_numero ,'
      
        '                  FolhaPgto.est_cod , FolhaPgto.tce_cod , Estuda' +
        'nte.Est_nome , '
      '                  Estudante.est_agencia , Estudante.est_conta ,'
      '                  Estudante.Est_cpf ,'
      '                   Estudante.Est_Cidade ,'
      '                    Estudante.Est_Estado ,'
      '                    Estudante.Est_endereco ,'
      '                    Estudante.Est_cep ,   '
      '                  FolhaPgto.lot_numero, FolhaPgto.fbo_valor, '
      
        '                  FolhaPgto.fbo_descontos, FolhaPgto.fbo_situaca' +
        'o,'
      '                  FolhaPgto.fbo_liberacao,'
      '                  FolhaPgto.id_parcela,'
      
        '           (FolhaPgto.fbo_valor - FolhaPgto.fbo_descontos) - 0.5' +
        '0  as ValorCerto'
      'FROM       FolhaPgto INNER JOIN'
      
        '                 Estudante ON FolhaPgto.est_cod = Estudante.est_' +
        'cod'
      'where lot_numero=:lote    '
      'order by Estudante.Est_nome'
      '      ')
    Left = 74
    Top = 222
    ParamData = <
      item
        DataType = ftInteger
        Name = 'lote'
        ParamType = ptInput
      end>
    object QryItensLoteEst_nome: TStringField
      DisplayLabel = 'Est'#225'giario'
      DisplayWidth = 42
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.Estudante.Est_nome'
      Size = 50
    end
    object QryItensLotetce_cod: TIntegerField
      DisplayLabel = 'Tce'
      DisplayWidth = 9
      FieldName = 'tce_cod'
      Origin = 'TALENTPOOL.FolhaPgto.tce_cod'
    end
    object QryItensLoteEst_cpf: TStringField
      DisplayLabel = 'Cpf'
      DisplayWidth = 13
      FieldName = 'Est_cpf'
      Origin = 'TALENTPOOL.Estudante.Est_cpf'
      Visible = False
      Size = 11
    end
    object QryItensLoteest_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 13
      FieldName = 'est_agencia'
      Origin = 'TALENTPOOL.Estudante.est_agencia'
      Size = 15
    end
    object QryItensLoteest_conta: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'est_conta'
      Origin = 'TALENTPOOL.Estudante.est_conta'
      Size = 15
    end
    object QryItensLoteDataCred: TDateField
      DisplayLabel = 'Data Cred.'
      FieldKind = fkCalculated
      FieldName = 'DataCred'
      DisplayFormat = 'dd/mm/yyyy'
      Calculated = True
    end
    object QryItensLoteValorCerto: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'ValorCerto'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      DisplayFormat = '###,##0.00'
    end
    object QryItensLotelot_numero: TIntegerField
      FieldName = 'lot_numero'
      Origin = 'TALENTPOOL.FolhaPgto.lot_numero'
      Visible = False
    end
    object QryItensLotefbo_valor: TFloatField
      FieldName = 'fbo_valor'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_valor'
      Visible = False
    end
    object QryItensLotefbo_descontos: TFloatField
      FieldName = 'fbo_descontos'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_descontos'
      Visible = False
    end
    object QryItensLotefbo_situacao: TStringField
      FieldName = 'fbo_situacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_situacao'
      Visible = False
      Size = 2
    end
    object QryItensLotefbo_liberacao: TStringField
      FieldName = 'fbo_liberacao'
      Origin = 'TALENTPOOL.FolhaPgto.fbo_liberacao'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QryItensLotefat_numero: TIntegerField
      FieldName = 'fat_numero'
      Origin = 'TALENTPOOL.FolhaPgto.fat_numero'
      Visible = False
    end
    object QryItensLoteest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.FolhaPgto.est_cod'
      Visible = False
    end
    object QryItensLoteEst_Cidade: TStringField
      FieldName = 'Est_Cidade'
      Visible = False
      Size = 50
    end
    object QryItensLoteEst_Estado: TStringField
      FieldName = 'Est_Estado'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QryItensLoteEst_endereco: TStringField
      FieldName = 'Est_endereco'
      Visible = False
      Size = 100
    end
    object QryItensLoteEst_cep: TStringField
      FieldName = 'Est_cep'
      Visible = False
      Size = 8
    end
    object QryItensLoteid_parcela: TIntegerField
      FieldName = 'id_parcela'
    end
  end
  object dsItens: TDataSource
    DataSet = QryItensLote
    Left = 288
    Top = 184
  end
  object QryAbertos: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'SELECT    FolhaPgto.est_cod , FolhaPgto.tce_cod , Estudante.Est_' +
        'nome '
      '                  '
      'FROM       FolhaPgto INNER JOIN'
      
        '                 Estudante ON FolhaPgto.est_cod = Estudante.est_' +
        'cod'
      
        'where lot_numero is null and folhapgto.fat_numero=:faturamento a' +
        'nd'
      
        'Estudante.est_banco = '#39'Banco Ita'#250#39'    and  fbo_liberacao = 1    ' +
        '   ')
    Left = 162
    Top = 198
    ParamData = <
      item
        DataType = ftInteger
        Name = 'faturamento'
        ParamType = ptInput
      end>
    object QryAbertosest_cod: TIntegerField
      FieldName = 'est_cod'
      Origin = 'TALENTPOOL.FolhaPgto.est_cod'
    end
    object QryAbertostce_cod: TIntegerField
      FieldName = 'tce_cod'
      Origin = 'TALENTPOOL.FolhaPgto.tce_cod'
    end
    object QryAbertosEst_nome: TStringField
      FieldName = 'Est_nome'
      Origin = 'TALENTPOOL.Estudante.Est_nome'
      Size = 50
    end
  end
  object DsAbertos: TDataSource
    DataSet = QryAbertos
    Left = 24
    Top = 296
  end
  object Qrypesquisa: TQuery
    CachedUpdates = True
    OnCalcFields = QryItensLoteCalcFields
    DatabaseName = 'TalentPool'
    Left = 114
    Top = 302
  end
  object DSD: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from  TB_documentos nolock'
      'where id_documento =:documento'
      '')
    UpdateObject = UpdateSQL1
    Left = 432
    Top = 186
    ParamData = <
      item
        DataType = ftInteger
        Name = 'documento'
        ParamType = ptInput
      end>
    object DSDID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = 'TALENTPOOL.TB_documentos.ID_DOCUMENTO'
    end
    object DSDID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'TALENTPOOL.TB_documentos.ID_PESSOA'
    end
    object DSDID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Origin = 'TALENTPOOL.TB_documentos.ID_CENTROCUSTO'
    end
    object DSDID_PLANOCONTAS: TIntegerField
      FieldName = 'ID_PLANOCONTAS'
      Origin = 'TALENTPOOL.TB_documentos.ID_PLANOCONTAS'
    end
    object DSDDTA_EMISSAO: TDateTimeField
      FieldName = 'DTA_EMISSAO'
      Origin = 'TALENTPOOL.TB_documentos.DTA_EMISSAO'
    end
    object DSDNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = 'TALENTPOOL.TB_documentos.NUM_PARCELAS'
    end
    object DSDDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'TALENTPOOL.TB_documentos.DOCUMENTO'
    end
    object DSDJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'TALENTPOOL.TB_documentos.JUROS'
    end
    object DSDTOTALAVISTA: TFloatField
      FieldName = 'TOTALAVISTA'
      Origin = 'TALENTPOOL.TB_documentos.TOTALAVISTA'
    end
    object DSDTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TALENTPOOL.TB_documentos.TOTAL'
    end
    object DSDOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'TALENTPOOL.TB_documentos.OBSERVACAO'
      Size = 60
    end
    object DSDPAGREC: TStringField
      FieldName = 'PAGREC'
      Origin = 'TALENTPOOL.TB_documentos.PAGREC'
      FixedChar = True
      Size = 1
    end
    object DSDID_USUARIOINCLUIU: TIntegerField
      FieldName = 'ID_USUARIOINCLUIU'
      Origin = 'TALENTPOOL.TB_documentos.ID_USUARIOINCLUIU'
    end
    object DSDID_USUARIOALTEROU: TIntegerField
      FieldName = 'ID_USUARIOALTEROU'
      Origin = 'TALENTPOOL.TB_documentos.ID_USUARIOALTEROU'
    end
    object DSDDATAINCLUIU: TDateTimeField
      FieldName = 'DATAINCLUIU'
      Origin = 'TALENTPOOL.TB_documentos.DATAINCLUIU'
    end
    object DSDDATAALTEROU: TDateTimeField
      FieldName = 'DATAALTEROU'
      Origin = 'TALENTPOOL.TB_documentos.DATAALTEROU'
    end
    object DSDSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'TALENTPOOL.TB_documentos.STATUS'
    end
    object DSDID_USUARIOCANCELOU: TIntegerField
      FieldName = 'ID_USUARIOCANCELOU'
      Origin = 'TALENTPOOL.TB_documentos.ID_USUARIOCANCELOU'
    end
    object DSDDTA_CANCELAMENTO: TDateTimeField
      FieldName = 'DTA_CANCELAMENTO'
      Origin = 'TALENTPOOL.TB_documentos.DTA_CANCELAMENTO'
    end
    object DSDVLR_EFETUADO: TFloatField
      FieldName = 'VLR_EFETUADO'
      Origin = 'TALENTPOOL.TB_documentos.VLR_EFETUADO'
    end
    object DSDSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'TALENTPOOL.TB_documentos.SALDO'
    end
    object DSDID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Origin = 'TALENTPOOL.TB_documentos.ID_DOCUMENTO'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update TB_documentos'
      'set'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  ID_PESSOA = :ID_PESSOA,'
      '  ID_CENTROCUSTO = :ID_CENTROCUSTO,'
      '  ID_PLANOCONTAS = :ID_PLANOCONTAS,'
      '  DTA_EMISSAO = :DTA_EMISSAO,'
      '  NUM_PARCELAS = :NUM_PARCELAS,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  JUROS = :JUROS,'
      '  TOTALAVISTA = :TOTALAVISTA,'
      '  TOTAL = :TOTAL,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PAGREC = :PAGREC,'
      '  ID_USUARIOINCLUIU = :ID_USUARIOINCLUIU,'
      '  ID_USUARIOALTEROU = :ID_USUARIOALTEROU,'
      '  DATAINCLUIU = :DATAINCLUIU,'
      '  DATAALTEROU = :DATAALTEROU,'
      '  STATUS = :STATUS,'
      '  ID_USUARIOCANCELOU = :ID_USUARIOCANCELOU,'
      '  DTA_CANCELAMENTO = :DTA_CANCELAMENTO,'
      '  VLR_EFETUADO = :VLR_EFETUADO,'
      '  SALDO = :SALDO,'
      '  ID_NOTA = :ID_NOTA'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    InsertSQL.Strings = (
      'insert into TB_documentos'
      
        '  (ID_DOCUMENTO, ID_PESSOA, ID_CENTROCUSTO, ID_PLANOCONTAS, DTA_' +
        'EMISSAO, '
      
        '   NUM_PARCELAS, DOCUMENTO, JUROS, TOTALAVISTA, TOTAL, OBSERVACA' +
        'O, PAGREC, '
      
        '   ID_USUARIOINCLUIU, ID_USUARIOALTEROU, DATAINCLUIU, DATAALTERO' +
        'U, STATUS, '
      
        '   ID_USUARIOCANCELOU, DTA_CANCELAMENTO, VLR_EFETUADO, SALDO, ID' +
        '_NOTA)'
      'values'
      
        '  (:ID_DOCUMENTO, :ID_PESSOA, :ID_CENTROCUSTO, :ID_PLANOCONTAS, ' +
        ':DTA_EMISSAO, '
      
        '   :NUM_PARCELAS, :DOCUMENTO, :JUROS, :TOTALAVISTA, :TOTAL, :OBS' +
        'ERVACAO, '
      
        '   :PAGREC, :ID_USUARIOINCLUIU, :ID_USUARIOALTEROU, :DATAINCLUIU' +
        ', :DATAALTEROU, '
      
        '   :STATUS, :ID_USUARIOCANCELOU, :DTA_CANCELAMENTO, :VLR_EFETUAD' +
        'O, :SALDO, '
      '   :ID_NOTA)')
    DeleteSQL.Strings = (
      'delete from TB_documentos'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    Left = 433
    Top = 217
  end
  object dbparcela: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select '
      
        'DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO, ID_PARCELAS, N' +
        'UMPARCELA, SALDO, VLR_PARCELA, VLR_REALIZADO'
      'from'
      '  TB_Parcelas nolock'
      ' Where'
      'id_documento=:id_documento'
      '')
    UpdateObject = upparcela
    Left = 472
    Top = 186
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_documento'
        ParamType = ptInput
      end>
    object dbparcelaDTA_VENCIMENTO: TDateTimeField
      FieldName = 'DTA_VENCIMENTO'
      Origin = 'TALENTPOOL.TB_Parcelas.DTA_VENCIMENTO'
    end
    object dbparcelaDTA_VENCPRORROGADO: TDateTimeField
      FieldName = 'DTA_VENCPRORROGADO'
      Origin = 'TALENTPOOL.TB_Parcelas.DTA_VENCPRORROGADO'
    end
    object dbparcelaID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = 'TALENTPOOL.TB_Parcelas.ID_DOCUMENTO'
    end
    object dbparcelaID_PARCELAS: TIntegerField
      FieldName = 'ID_PARCELAS'
      Origin = 'TALENTPOOL.TB_Parcelas.ID_PARCELAS'
    end
    object dbparcelaNUMPARCELA: TIntegerField
      FieldName = 'NUMPARCELA'
      Origin = 'TALENTPOOL.TB_Parcelas.NUMPARCELA'
    end
    object dbparcelaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'TALENTPOOL.TB_Parcelas.SALDO'
    end
    object dbparcelaVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      Origin = 'TALENTPOOL.TB_Parcelas.VLR_PARCELA'
    end
    object dbparcelaVLR_REALIZADO: TFloatField
      FieldName = 'VLR_REALIZADO'
      Origin = 'TALENTPOOL.TB_Parcelas.VLR_REALIZADO'
    end
  end
  object upparcela: TUpdateSQL
    ModifySQL.Strings = (
      'update TB_Parcelas'
      'set'
      '  DTA_VENCIMENTO = :DTA_VENCIMENTO,'
      '  DTA_VENCPRORROGADO = :DTA_VENCPRORROGADO,'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  ID_PARCELAS = :ID_PARCELAS,'
      '  NUMPARCELA = :NUMPARCELA,'
      '  SALDO = :SALDO,'
      '  VLR_PARCELA = :VLR_PARCELA,'
      '  VLR_REALIZADO = :VLR_REALIZADO'
      'where'
      '  ID_PARCELAS = :OLD_ID_PARCELAS')
    InsertSQL.Strings = (
      'insert into TB_Parcelas'
      '  (DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO, '
      'ID_PARCELAS, NUMPARCELA, '
      '   SALDO, VLR_PARCELA, VLR_REALIZADO)'
      'values'
      '  (:DTA_VENCIMENTO, :DTA_VENCPRORROGADO, :ID_DOCUMENTO, '
      ':ID_PARCELAS, :NUMPARCELA, '
      '   :SALDO, :VLR_PARCELA, :VLR_REALIZADO)')
    DeleteSQL.Strings = (
      'delete from TB_Parcelas'
      'where'
      '  ID_PARCELAS = :OLD_ID_PARCELAS')
    Left = 473
    Top = 225
  end
  object Rateio: TQuery
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select *  from tb_rateiocc  nolock '
      'where id_documento=:doc'
      '')
    UpdateObject = upRateio
    Left = 248
    Top = 178
    ParamData = <
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptInput
      end>
    object RateioID_RATEIO: TIntegerField
      FieldName = 'ID_RATEIO'
      Origin = 'TALENTPOOL.tb_rateiocc.ID_RATEIO'
    end
    object RateioID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = 'TALENTPOOL.tb_rateiocc.ID_DOCUMENTO'
    end
    object RateioID_CC: TIntegerField
      FieldName = 'ID_CC'
      Origin = 'TALENTPOOL.tb_rateiocc.ID_CC'
    end
    object RateioVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'TALENTPOOL.tb_rateiocc.VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object RateioPERC: TFloatField
      FieldName = 'PERC'
      Origin = 'TALENTPOOL.tb_rateiocc.PERC'
      DisplayFormat = '##0.00'
    end
  end
  object upRateio: TUpdateSQL
    ModifySQL.Strings = (
      'update tb_rateiocc'
      'set'
      '  ID_RATEIO = :ID_RATEIO,'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  ID_CC = :ID_CC,'
      '  VALOR = :VALOR,'
      '  PERC = :PERC'
      'where'
      '  ID_RATEIO = :OLD_ID_RATEIO')
    InsertSQL.Strings = (
      'insert into tb_rateiocc'
      '  (ID_RATEIO, ID_DOCUMENTO, ID_CC, VALOR, PERC)'
      'values'
      '  (:ID_RATEIO, :ID_DOCUMENTO, :ID_CC, :VALOR, :PERC)')
    DeleteSQL.Strings = (
      'delete from tb_rateiocc'
      'where'
      '  ID_RATEIO = :OLD_ID_RATEIO')
    Left = 249
    Top = 217
  end
end
