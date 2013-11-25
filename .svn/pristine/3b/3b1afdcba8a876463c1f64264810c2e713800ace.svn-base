object Form1: TForm1
  Left = 192
  Top = 114
  Width = 158
  Height = 87
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 99
    Height = 25
    Caption = 'Atualiza Tabelas'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 96
    Top = 48
    Width = 297
    Height = 265
    Lines.Strings = (
      'CREATE TABLE [dbo].[InstHistorico] '
      '('
      #9'[inst_cod] [int] NOT NULL ,'
      #9'[hist_cod] [int] NOT NULL ,'
      #9'[ehi_dthist] [datetime] NOT '
      'NULL ,'
      #9'[func_cod] [int] NULL ,'
      #9'[ehi_descricao] [varchar] '
      '(1000) COLLATE '
      'SQL_Latin1_General_CP1_CI_AS '
      'NULL ,'
      #9'[funccetefe_cod] [int] '
      'NULL '
      ') ON [PRIMARY]')
    TabOrder = 1
    Visible = False
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
    CachedUpdates = True
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'CREATE TABLE [dbo].[Lote] ('
      #9'[Lot_numero] [int] NOT NULL ,'
      #9'[Fat_numero] [int] NOT NULL ,'
      #9'[Lot_data] [datetime] NULL ,'
      #9'[Emp_cod] [int] NOT NULL ,'
      #9'[Lot_sequencia] [int] NULL '
      ') ON [PRIMARY]')
    Left = 2
    Top = 37
  end
end
