inherited FOREMPRESP: TFOREMPRESP
  Left = 295
  Top = 202
  Caption = 'Respons'#225'veis'
  ClientHeight = 272
  ClientWidth = 650
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPrincipal: TStatusBar
    Top = 253
    Width = 650
  end
  inherited Panel1: TPanel
    Width = 650
    Height = 253
    inherited Panel4: TPanel
      Left = 595
      Top = 4
      Height = 240
    end
    inherited Panel5: TPanel
      Width = 580
      inherited pgPrincipal: TPageControl
        Width = 575
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            Width = 567
            object Label1: TLabel [0]
              Left = 8
              Top = 1
              Width = 41
              Height = 13
              Caption = 'Empresa'
            end
            inherited DBGrid1: TDBGrid
              Top = 43
              Width = 553
              Height = 145
              DataSource = DmDTA.dsResponsavel
            end
            object edEmpCod: TEdit
              Left = 8
              Top = 17
              Width = 54
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 1
            end
            object edEmpNome: TEdit
              Left = 66
              Top = 17
              Width = 487
              Height = 21
              TabStop = False
              Color = cl3DLight
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            Width = 567
            inherited Bevel3: TBevel
              Width = 552
            end
            object Label25: TLabel
              Left = 16
              Top = 19
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Funcion'#225'rio'
            end
            object Label2: TLabel
              Left = 36
              Top = 52
              Width = 36
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fun'#231#227'o'
            end
            object SpeedButton1: TSpeedButton
              Left = 516
              Top = 16
              Width = 21
              Height = 21
              Hint = 'Funcion'#225'rios'
              Flat = True
              Glyph.Data = {
                AA040000424DAA04000000000000360000002800000013000000130000000100
                18000000000074040000C40E0000C40E00000000000000000000FF00FFFF00FF
                CEACABD8BEBCD7BCBAD5B7B6B68383CFAFADD7BDBBD7BBBAD9BEBCBB9797FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFE8CAC7FF
                F1ECFFF0ECDBB7B49D4646D0A7A4FFF1ECFFEEE9FFF1EDCBAAA8FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFD9AEAAFFE9E4FFEF
                EAD9B5B2973538CD9894FFDFD7FFDDD5FFDBD3BB8D8BB28080CFAFADD7BDBBD7
                BBBAD9BEBCBB9797FF00FF000000FF00FFFF00FFD4B1AFFEE5E1FFF8F5ECD7D5
                9D4648E2BEBAFFDDD5FFDAD1EFBFB6B88D8B9D4646D0A7A4FFF1ECFFEEE9FFF1
                EDCDADABFF00FF000000FF00FFFF00FFFF00FFE0B7B3FFFFFEF9F1F1AF7272EE
                E1E0FFFDFCFFF1EDCA9A96CBAAA7973538CD9894FFDFD7FFDDD5FFDBD3C6A4A3
                FF00FF000000FF00FFFF00FFFF00FFD7BEBDF0D4D0FFFFFECEAFAFFBF8F8FFFA
                F9DBB2AEDDCDCAECD7D59D4648E2BEBAFFDDD5FFDAD1EFBFB6FF00FFFF00FF00
                0000FF00FFFF00FFFF00FFFF00FFFF00FFE4C3BECFA4A1E5C5C2DBB5B0CEA09C
                FFFFFEF9F1F1AF7272EEE1E0FFFDFCFFF1EDCA9C99FF00FFFF00FF000000FF00
                FFFF00FFFF00FFFF00FFFF00FF98A4C2818FBA848DB2A8ADBEC3ACACEFD3CFFF
                FFFECEAFAFFBF8F8FFFAF9DBB3AFFF00FFFF00FFFF00FF000000FF00FFFF00FF
                FF00FFFF00FF76ADE496CEFB99D2FE98D1FD84BCED7793C0C2AEAFE4C3BECFA4
                A1E5C5C2E0BCB8FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF6B
                B1F190D2FF8ECEFF8CCDFF8DCDFF90CFFF81C3F9738BB68F99B6818FBA848DB2
                A8ADBEFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF788FB85A97D167A5
                E072B7F875BEFF74BCFF74BCFF77C0FF5294D87FAED699D2FE98D1FD84BCED78
                94C0FF00FFFF00FFFF00FF000000FF00FFFF00FF155993005490004E89225590
                4885CB60ABFC62B0FF63B0FF5097E673A7D68CCDFF8DCDFF90CFFF81C3F98197
                BCFF00FFFF00FF000000FF00FFFF00FF2262982B77A82B76A72774A41C5A8B2B
                5D9C4C90DA5FADFC468EDB65A2DE75BEFF74BCFF74BCFF77C0FF5796D9FF00FF
                FF00FF000000FF00FFFF00FF3B6A966BA3C569A0C269A0C269A0C36093B54E76
                9B406DA31C4C8A1C4E844885CB60ABFC62B0FF63B0FF5097E6FF00FFFF00FF00
                0000FF00FFFF00FF9CA2B18CAFC9AFCEE1AACADDAAC9DCACCBDFAACBE05D85AB
                153B67276F9E1C5A8B2B5D9C4C90DA5FADFC5794DDFF00FFFF00FF000000FF00
                FFFF00FFFF00FF9DA6B4A6BACAD2E0EAD6E4EDC9D9E5839BB6355A826093B269
                A0C269A0C36093B54E769B406DA35A6E9AFF00FFFF00FF000000FF00FFFF00FF
                FF00FFFF00FFFF00FFAEB3BFA6ADBCA6ABB87E839488AAC4AFCEE1AACADDAAC9
                DCACCBDFAACBE05D85AB7C7C8AFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FF9DA6B4A6BACAD2E0EAD6E4EDC9D9E5
                839BB6808598FF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEB3BFA6ADBCA7ACB8FF00FFFF
                00FFFF00FFFF00FFFF00FF000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 86
              Top = 16
              DataBinding.DataField = 'Func_cod'
              DataBinding.DataSource = DmDTA.dsResponsavel
              Properties.ClearKey = 46
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'Func_cod'
              Properties.ListColumns = <
                item
                  FieldName = 'Efu_nome'
                end
                item
                  FieldName = 'efu_setor'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListSource = dsfunc
              Style.BorderStyle = ebs3D
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.ButtonStyle = bts3D
              Style.ButtonTransparency = ebtNone
              Style.PopupBorderStyle = epbsDefault
              StyleDisabled.BorderColor = clBlack
              StyleDisabled.BorderStyle = ebsFlat
              StyleDisabled.Color = clBtnText
              StyleDisabled.ButtonStyle = btsUltraFlat
              StyleFocused.Color = 16119285
              StyleFocused.TextStyle = []
              TabOrder = 0
              OnEnter = cxDBLookupComboBox1Enter
              Width = 427
            end
            object cbfuncao: TcxDBComboBox
              Left = 86
              Top = 48
              DataBinding.DataField = 'Funcao'
              DataBinding.DataSource = DmDTA.dsResponsavel
              Properties.ClearKey = 46
              Properties.Items.Strings = (
                'Contrato'
                'Compromisso'
                'Entrevista'
                'Financeiro')
              Style.BorderStyle = ebs3D
              TabOrder = 1
              Width = 265
            end
            object GroupBox1: TGroupBox
              Left = 48
              Top = 88
              Width = 489
              Height = 57
              Caption = 'Per'#237'odo'
              TabOrder = 2
              object Label3: TLabel
                Left = 24
                Top = 28
                Width = 27
                Height = 13
                Caption = 'In'#237'cio'
              end
              object Label4: TLabel
                Left = 280
                Top = 27
                Width = 22
                Height = 13
                Caption = 'Final'
              end
              object dbinicio: TcxDBDateEdit
                Left = 80
                Top = 24
                DataBinding.DataField = 'inicio'
                DataBinding.DataSource = DmDTA.dsResponsavel
                Properties.DateButtons = []
                TabOrder = 0
                Width = 121
              end
              object dbfim: TcxDBDateEdit
                Left = 328
                Top = 24
                DataBinding.DataField = 'final'
                DataBinding.DataSource = DmDTA.dsResponsavel
                Properties.DateButtons = []
                Style.Shadow = False
                TabOrder = 1
                Width = 121
              end
            end
          end
        end
      end
    end
  end
  inherited quPrincipal1: TQuery
    Left = 234
    Top = 198
  end
  object qryFuncionario: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from empfuncionario nolock where emp_cod=:empresa '
      'order by efu_nome')
    Left = 432
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    object qryFuncionarioFunc_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Func_cod'
      Origin = 'TALENTPOOL.empfuncionario.Func_cod'
    end
    object qryFuncionarioEfu_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Efu_nome'
      Origin = 'TALENTPOOL.empfuncionario.Efu_nome'
      Size = 50
    end
    object qryFuncionarioEfu_setor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'Efu_setor'
      Origin = 'TALENTPOOL.empfuncionario.Efu_setor'
      Size = 100
    end
    object qryFuncionarioEfu_cargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'Efu_cargo'
      Origin = 'TALENTPOOL.empfuncionario.Efu_cargo'
      Size = 100
    end
  end
  object dsfunc: TDataSource
    DataSet = qryFuncionario
    Left = 312
    Top = 136
  end
end
