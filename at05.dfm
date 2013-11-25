object Form1: TForm1
  Left = 391
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza Situa'#231#227'o'
  ClientHeight = 116
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 80
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 64
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Exportar Divergencias'
    TabOrder = 1
    OnClick = Button1Click
  end
  object campos: TListBox
    Left = 192
    Top = 40
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object db_Principal: TDatabase
    AliasName = 'CETEFE'
    DatabaseName = 'TalentPool'
    LoginPrompt = False
    Params.Strings = (
      'user name=sa'
      'password=cba857')
    SessionName = 'Default'
    Left = 3
    Top = 4
  end
  object qrypesquisa: TQuery
    Active = True
    DatabaseName = 'TalentPool'
    Filtered = True
    SQL.Strings = (
      'Select vag_cod,vag_qtde,Vag_qtdepreenc,'
      '(select count(*) total from  encaminhamento where'
      
        ' eva_resultado = 2 and Encaminhamento.Vag_cod = Vaga.Vag_cod) Ca' +
        'ndidatos'
      ' from vaga'
      'where '
      
        ' vag_qtdepreenc <>  (select count(*) total from  encaminhamento ' +
        'where'
      ' eva_resultado = 2 and Encaminhamento.Vag_cod = Vaga.Vag_cod) '
      ''
      'order by vag_cod ')
    Left = 34
    Top = 5
    object qrypesquisavag_cod: TIntegerField
      DisplayWidth = 12
      FieldName = 'vag_cod'
    end
    object qrypesquisavag_qtde: TIntegerField
      DisplayWidth = 12
      FieldName = 'vag_qtde'
    end
    object qrypesquisaVag_qtdepreenc: TIntegerField
      DisplayWidth = 16
      FieldName = 'Vag_qtdepreenc'
    end
    object qrypesquisaCandidatos: TIntegerField
      DisplayWidth = 15
      FieldName = 'Candidatos'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrypesquisa
    Left = 280
  end
  object divergencia: TQuery
    DatabaseName = 'TalentPool'
    Filtered = True
    SQL.Strings = (
      
        'select vag_cod,vag_qtde,vag_qtdepreenc,(select count(tce_cod) fr' +
        'om tce where Tce.Vag_cod = Vaga.Vag_cod) Tces,'
      
        '(select count(vag_cod) from encaminhamento where  encaminhamento' +
        '.eva_resultado =2 and encaminhamento.vag_cod =Vaga.Vag_cod  ) En' +
        'caminhamentos'
      ' from vaga '
      
        'where vag_cod in (select vag_cod from encaminhamento where  enca' +
        'minhamento.eva_resultado =2)'
      
        'and vag_qtdepreenc <> (select count(tce_cod) from tce where Tce.' +
        'Vag_cod = Vaga.Vag_cod)'
      'order by vag_cod')
    Left = 10
    Top = 85
    object IntegerField1: TIntegerField
      DisplayLabel = 'Vaga'
      DisplayWidth = 12
      FieldName = 'vag_cod'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 12
      FieldName = 'vag_qtde'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Preenchidas'
      DisplayWidth = 16
      FieldName = 'Vag_qtdepreenc'
    end
    object divergenciaTCEs: TIntegerField
      FieldName = 'TCEs'
    end
    object divergenciaEncaminhamentos: TIntegerField
      FieldName = 'Encaminhamentos'
    end
  end
end
