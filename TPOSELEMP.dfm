object FORSELEMP: TFORSELEMP
  Left = 298
  Top = 195
  Width = 651
  Height = 486
  Caption = 'Selecionar Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Pesquisa por: '
    end
    object cbTipoPesquisa: TComboBox
      Left = 8
      Top = 23
      Width = 76
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbTipoPesquisaChange
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Ramo'
        'Porte'
        'Endere'#231'o'
        'Bairro'
        'Cidade'
        'CNPJ'
        'Estado'
        'Grupo')
    end
    object edParametro: TEdit
      Left = 97
      Top = 23
      Width = 437
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Notebook1: TNotebook
      Left = 88
      Top = 17
      Width = 550
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TPage
        Left = 0
        Top = 0
        Caption = 'Page1'
        object edPar: TEdit
          Left = 4
          Top = 6
          Width = 541
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = edParExit
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Page2'
        object RadioGroup1: TRadioGroup
          Left = 0
          Top = 0
          Width = 545
          Height = 29
          Columns = 3
          ItemIndex = 2
          Items.Strings = (
            'Ind'#250'stria'
            'Com'#233'rcio'
            'Servi'#231'os')
          TabOrder = 0
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Page3'
        object RadioGroup2: TRadioGroup
          Left = 0
          Top = 0
          Width = 545
          Height = 29
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            'Pequeno'
            'M'#233'dio'
            'Grande'
            'Multinac.')
          TabOrder = 0
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Page4'
        object mePesqCnpj: TMaskEdit
          Left = 6
          Top = 6
          Width = 122
          Height = 21
          EditMask = '99.999.999/9999-99;0; '
          MaxLength = 18
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 643
    Height = 395
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 641
      Height = 393
      Align = alClient
      DataSource = dsConsEmp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object QConsEmp: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select emp_cod, emp_nome, emp_ramo from Empresa where emp_ramo =' +
        ' '#39'SERVI'#199'OS'#39)
    Left = 320
    Top = 392
    object QConsEmpemp_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'emp_cod'
      Origin = 'TALENTPOOL."Empresa.DB".Emp_cod'
    end
    object QConsEmpemp_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 43
      FieldName = 'emp_nome'
      Origin = 'TALENTPOOL."Empresa.DB".Emp_nome'
      Size = 50
    end
    object QConsEmpemp_ramo: TStringField
      DisplayLabel = 'Ramo'
      DisplayWidth = 15
      FieldName = 'emp_ramo'
      Origin = 'TALENTPOOL."Empresa.DB".Emp_ramo'
      Size = 12
    end
  end
  object dsConsEmp: TDataSource
    DataSet = quPrincipal
    Left = 272
    Top = 392
  end
  object quPrincipal: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select * from empresa order by emp_cod')
    Left = 233
    Top = 390
    object quPrincipalEmp_cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Emp_cod'
      Origin = 'TALENTPOOL.empresa.Emp_cod'
    end
    object quPrincipalEmp_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Emp_nome'
      Origin = 'TALENTPOOL.empresa.Emp_nome'
      Size = 150
    end
    object quPrincipalEmp_nomefantasia: TStringField
      DisplayLabel = 'Nome Fantasial'
      FieldName = 'Emp_nomefantasia'
      Origin = 'TALENTPOOL.empresa.Emp_nomefantasia'
      Size = 150
    end
    object quPrincipalEmp_cnpj: TStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'Emp_cnpj'
      Origin = 'TALENTPOOL.empresa.Emp_cnpj'
      Size = 14
    end
    object quPrincipalEmp_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Emp_endereco'
      Origin = 'TALENTPOOL.empresa.Emp_endereco'
      Size = 100
    end
    object quPrincipalEmp_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Emp_bairro'
      Origin = 'TALENTPOOL.empresa.Emp_bairro'
      Size = 50
    end
    object quPrincipalEmp_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Emp_cidade'
      Origin = 'TALENTPOOL.empresa.Emp_cidade'
      Size = 50
    end
    object quPrincipalEmp_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'Emp_estado'
      Origin = 'TALENTPOOL.empresa.Emp_estado'
      FixedChar = True
      Size = 2
    end
    object quPrincipalEmp_cep: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'Emp_cep'
      Origin = 'TALENTPOOL.empresa.Emp_cep'
      Size = 8
    end
    object quPrincipalEmp_ramo: TStringField
      DisplayLabel = 'Ramo'
      FieldName = 'Emp_ramo'
      Origin = 'TALENTPOOL.empresa.Emp_ramo'
      Size = 12
    end
    object quPrincipalemp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'emp_tipo'
      Origin = 'TALENTPOOL.empresa.emp_tipo'
      Size = 10
    end
    object quPrincipalemp_site: TStringField
      DisplayLabel = 'Site'
      FieldName = 'emp_site'
      Origin = 'TALENTPOOL.empresa.emp_site'
      Size = 100
    end
    object quPrincipalGrup_Cod: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'Grup_Cod'
      Origin = 'TALENTPOOL.empresa.Grup_Cod'
    end
  end
end
