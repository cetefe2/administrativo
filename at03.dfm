object Form1: TForm1
  Left = 391
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza Curso'
  ClientHeight = 318
  ClientWidth = 399
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
  object Button1: TButton
    Left = 88
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 385
    Height = 213
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 144
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object db_Principal: TDatabase
    AliasName = 'CETEFE'
    Connected = True
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
end
