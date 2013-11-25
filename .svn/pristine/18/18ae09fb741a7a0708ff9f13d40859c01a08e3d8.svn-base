inherited FOREST11: TFOREST11
  Left = 413
  Top = 226
  Caption = 'Encaminhamentos do Estudante'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited btNovo: TSpeedButton
        Visible = False
      end
      inherited btExcluir: TSpeedButton
        Visible = False
      end
      inherited btSalvar: TSpeedButton
        Visible = False
      end
      inherited btCancelar: TSpeedButton
        Visible = False
      end
    end
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 16
              Height = 169
              DataSource = DataSource1
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Vaga'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Empresa'
                  Width = 225
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Resultado'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Agenda'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Setor'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Estudante'
                  Visible = True
                end>
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 16
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Vaga'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 16
              Top = 64
              Width = 41
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 96
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Resultado'
              FocusControl = DBEdit3
            end
            object Label5: TLabel
              Left = 240
              Top = 16
              Width = 37
              Height = 13
              Caption = 'Agenda'
              FocusControl = DBEdit5
            end
            object Label6: TLabel
              Left = 17
              Top = 108
              Width = 25
              Height = 13
              Caption = 'Setor'
              FocusControl = DBEdit6
            end
            object DBEdit1: TDBEdit
              Left = 16
              Top = 32
              Width = 73
              Height = 21
              DataField = 'Vaga'
              DataSource = DataSource1
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 16
              Top = 80
              Width = 350
              Height = 21
              DataField = 'Empresa'
              DataSource = DataSource1
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 96
              Top = 32
              Width = 133
              Height = 21
              DataField = 'Resultado'
              DataSource = DataSource1
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 239
              Top = 33
              Width = 127
              Height = 21
              DataField = 'Agenda'
              DataSource = DataSource1
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 16
              Top = 124
              Width = 350
              Height = 21
              DataField = 'Setor'
              DataSource = DataSource1
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited usPrincipal1: TUpdateSQL
    Left = 273
    Top = 238
  end
  inherited quPrincipal1: TQuery
    SQL.Strings = (
      
        'SELECT     Encaminhamento.Vag_cod AS Vaga, Empresa.Emp_nome AS E' +
        'mpresa,'
      'case '
      ' when   Encaminhamento.Eva_resultado = 0 then  '#39'Em Espera'#39
      ' when   Encaminhamento.Eva_resultado = 1 then '#39'Reprovado'#39
      ' when   Encaminhamento.Eva_resultado = 2 then  '#39'Aprovado'#39
      ' when   Encaminhamento.Eva_resultado =  3 then '#39'Desistiu'#39
      
        ' when   Encaminhamento.Eva_resultado =  4 then '#39'Selecionado pela' +
        ' Empresa'#39
      
        ' when   Encaminhamento.Eva_resultado =  5 then '#39'N'#227'o entrevistado' +
        ' pelo Cliente'#39
      
        ' when   Encaminhamento.Eva_resultado =  6 then '#39'STANDBY'#39'end  Res' +
        'ultado,'
      
        '                      Estudante.Est_nome AS Estudante, Agenda.ag' +
        'e_data AS Agenda, Vaga.Vag_setor AS Setor  FROM         Encaminh' +
        'amento INNER JOIN'
      
        '                      Vaga ON Encaminhamento.Vag_cod = Vaga.Vag_' +
        'cod INNER JOIN'
      
        '                      Empresa ON Vaga.Emp_cod = Empresa.Emp_cod ' +
        'INNER JOIN'
      
        '                      Estudante ON Encaminhamento.Est_cod = Estu' +
        'dante.est_cod LEFT OUTER JOIN'
      
        '                      Agenda ON Encaminhamento.Vag_cod = Agenda.' +
        'age_vagcod1 AND Encaminhamento.Est_cod = Agenda.age_estcod1 OR '
      
        '                      Encaminhamento.Vag_cod = Agenda.age_vagcod' +
        '2 AND Encaminhamento.Est_cod = Agenda.age_estcod2 OR '
      
        '                      Encaminhamento.Vag_cod = Agenda.age_vagcod' +
        '3 AND Encaminhamento.Est_cod = Agenda.age_estcod3'
      'where  Encaminhamento.est_cod =:cod'
      'order by Encaminhamento.Vag_cod '
      '')
    Left = 218
    Top = 222
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    object quPrincipal1Vaga: TIntegerField
      DisplayWidth = 7
      FieldName = 'Vaga'
    end
    object quPrincipal1Empresa: TStringField
      DisplayWidth = 48
      FieldName = 'Empresa'
      Size = 150
    end
    object quPrincipal1Estudante: TStringField
      DisplayWidth = 60
      FieldName = 'Estudante'
      Size = 50
    end
    object quPrincipal1Agenda: TDateTimeField
      DisplayWidth = 22
      FieldName = 'Agenda'
      DisplayFormat = 'dd/MM/yyyy hh:MM'
    end
    object quPrincipal1Setor: TStringField
      DisplayWidth = 72
      FieldName = 'Setor'
      Size = 60
    end
    object quPrincipal1Resultado: TStringField
      DisplayWidth = 35
      FieldName = 'Resultado'
      Size = 29
    end
  end
  object DataSource1: TDataSource
    DataSet = quPrincipal1
    Left = 232
    Top = 136
  end
end
