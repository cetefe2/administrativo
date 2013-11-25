object DmDTE: TDmDTE
  OldCreateOrder = False
  Left = 217
  Top = 168
  Height = 480
  Width = 696
  object dsInstCadastro: TDataSource
    DataSet = quInstCadastro
    Left = 166
    Top = 16
  end
  object quInstCadastro: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select distinct'
      
        'I.inst_nome  "Institui'#231#227'o", C.Cur_nome "Curso", C.cur_nivel "N'#237'v' +
        'el",'
      'C.cur_area "'#193'rea", count(*) "Cadastros"'
      'from  Estudante E, Curso C, Instituicao I'
      'where E.Cur_cod = C.Cur_cod'
      'and   E.est_dtinc between :data1 and :data2'
      'and I.Inst_cod = E.inst_cod'
      'group by I.inst_nome, C.Cur_nome, C.cur_nivel, C.cur_area'
      'order by "Cadastros" Desc')
    Left = 246
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quInstCadastroInstituio: TStringField
      DisplayWidth = 55
      FieldName = 'Institui'#231#227'o'
      Size = 100
    end
    object quInstCadastroCurso: TStringField
      DisplayWidth = 25
      FieldName = 'Curso'
      Size = 150
    end
    object quInstCadastroNvel: TStringField
      DisplayWidth = 10
      FieldName = 'N'#237'vel'
    end
    object quInstCadastrorea: TStringField
      DisplayWidth = 10
      FieldName = #193'rea'
      Size = 30
    end
    object quInstCadastroCadastros: TIntegerField
      DisplayWidth = 9
      FieldName = 'Cadastros'
    end
  end
  object dsInstColocacao: TDataSource
    DataSet = quInstColocacao
    Left = 24
    Top = 16
  end
  object quInstColocacao: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select distinct'
      
        'I.inst_nome "Institui'#231#227'o", C.Cur_nome "Curso", C.cur_nivel "N'#237've' +
        'l",'
      'C.cur_area "'#193'rea", count(*) "Coloca'#231#245'es"'
      'from  Estudante E, Curso C, TCE T,Instituicao I'
      'where E.Cur_cod = C.Cur_cod'
      'and   E.est_cod = T.est_cod'
      'and   T.tce_data between :data1 and :data2 '
      'and I.Inst_cod = E.inst_cod'
      'group by I.inst_nome, C.Cur_nome, C.cur_nivel, C.cur_area'
      'order by "Coloca'#231#245'es" Desc')
    Left = 72
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      DisplayWidth = 55
      FieldName = 'Institui'#231#227'o'
      Size = 100
    end
    object StringField2: TStringField
      DisplayWidth = 25
      FieldName = 'Curso'
      Size = 150
    end
    object StringField3: TStringField
      DisplayWidth = 10
      FieldName = 'N'#237'vel'
    end
    object StringField4: TStringField
      DisplayWidth = 10
      FieldName = #193'rea'
      Size = 30
    end
    object quInstColocacaoColocaes: TIntegerField
      DisplayWidth = 9
      FieldName = 'Coloca'#231#245'es'
    end
  end
  object quTCEAtivos: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      '/* Estat'#237'stica de estagi'#225'rios vigentes */'
      'Declare @Mes '#9'   '#9#9#9'Integer,  @MesAux  '#9#9'Integer'
      'Declare @Ano '#9#9' '#9#9#9'Integer,  @AnoAux  '#9#9'Integer'
      'Declare @DataIni '#9#9#9'Datetime, @DataFim '#9#9'DateTime'
      'Declare @DataPrimeira Datetime, @DataUltima DateTime'
      'Declare @Meses '#9' '#9#9#9'Integer'
      ''
      '/* Inicializa as vari'#225'veis */'
      'Select @Mes   = :MesAtual'
      'Select @Ano   = :AnoAtual'
      
        'Select @DataPrimeira = Convert(datetime,CONVERT(Varchar,@Ano) + ' +
        #39'/'#39' + CONVERT(Varchar,@Mes) + '#39'/01'#39')'
      'Select @Meses = 0'
      ''
      '/* Cria a tabela tempor'#225'ria */'
      'Create table #Estatistica'
      '(Ano     Integer NULL,'
      ' Mes     Integer NULL,'
      ' Emp_cod Integer NULL,'
      ' Total   Integer NULL)'
      ''
      '/* Percorre 24 meses (dois anos) */'
      'while (@Meses < :Meses)'
      'begin'
      #9'/* Inicializa m'#234's e ano auxiliares */'
      #9'Select @MesAux = @Mes'
      #9'Select @AnoAux = @Ano'
      ''
      #9'/* Incrementa o m'#234's para a data final*/'
      #9'If @Mes = 12'
      #9'begin'
      #9#9'/* Virada de ano */'
      #9#9'Select @MesAux = 1'
      #9#9'Select @AnoAux = @AnoAux + 1'
      #9'end'
      #9'else'
      '    '#9#9'/* Virada de m'#234's */'
      #9#9'Select @MesAux = @MesAux + 1'
      ''
      #9'/* Datas de in'#237'cio e fim */'
      
        #9'Select @DataIni = Convert(datetime,CONVERT(Varchar,@Ano)    + '#39 +
        '/'#39' + CONVERT(Varchar,@Mes)    + '#39'/01'#39')'
      
        ' '#9'Select @DataFim = Convert(datetime,CONVERT(Varchar,@AnoAux) + ' +
        #39'/'#39' + CONVERT(Varchar,@MesAux) + '#39'/01'#39')-1'
      ''
      #9'/* Faz o select principal */'
      #9'Insert into #Estatistica'
      #9'select @Ano, @Mes, t.emp_cod, count(t.tce_cod)'
      #9'from Tce t, Empresa e'
      #9'where e.emp_cod = t.emp_cod and'
      
        #9'(t.tce_cod in (select tce_cod from Tce where tce_situacao = '#39'0'#39 +
        ' and'
      #9'tce_dataini <= @DataFim and tce_datafim >= @DataIni) or'
      #9't.tce_cod in (select tce.tce_cod from TceAditivo TA, Tce'
      #9'where ta.tce_cod = tce.tce_cod and tce.tce_situacao <> '#39'0'#39
      #9'and tce.tce_situacao <> '#39'7'#39' and ta.tpr_dataini <= @DataFim and'
      #9'ta.tpr_datafim >= @DataIni) /*or'
      
        #9't.tce_cod in (select tce_cod from Tce where tce_cod = t.tce_cod' +
        ' and'
      
        #9'tce_situacao = '#39'7'#39' and tce_dataini <= @DataFim and tce_datares ' +
        '>= @DataIni)*/)'
      #9'group by t.emp_cod'
      ''
      #9'/* Atualiza m'#234's e ano para pr'#243'xima itera'#231#227'o */'
      ''
      #9'/* Decrementa o m'#234's para a pr'#243'xima itera'#231#227'o */'
      #9'If @Mes = 1'
      #9'begin'
      #9#9'/* Virada de ano */'
      #9#9'Select @Mes = 12'
      #9#9'Select @Ano = @Ano- 1'
      #9'end'
      #9'else'
      '    '#9#9'/* Virada de m'#234's */'
      #9#9'Select @Mes = @Mes - 1'
      ''
      ' '#9'select @Meses = @Meses + 1'
      'end'
      ''
      
        'Select @DataUltima = Convert(datetime,CONVERT(Varchar,@Ano) + '#39'/' +
        #39' + CONVERT(Varchar,@Mes) + '#39'/01'#39')'
      ''
      '/* N'#250'mero de contratos vigentes */'
      'Select Ano, Mes "M'#234's", '
      'count(distinct emp_cod) "Empresas", '
      'sum(Total) "Estagi'#225'rios"'
      'from #Estatistica'
      'Group by Ano, Mes'
      'Order by Ano desc, Mes desc'
      ''
      '/* Dropa a tabela */'
      'Drop table #Estatistica'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Left = 72
    Top = 81
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MesAtual'
        ParamType = ptUnknown
        Value = '12'
      end
      item
        DataType = ftInteger
        Name = 'AnoAtual'
        ParamType = ptUnknown
        Value = '2002'
      end
      item
        DataType = ftInteger
        Name = 'Meses'
        ParamType = ptUnknown
        Value = '12'
      end>
    object quTCEAtivosAno: TIntegerField
      DisplayWidth = 8
      FieldName = 'Ano'
    end
    object quTCEAtivosMs: TIntegerField
      DisplayWidth = 6
      FieldName = 'M'#234's'
      DisplayFormat = '00'
    end
    object quTCEAtivosEmpresas: TIntegerField
      DisplayWidth = 8
      FieldName = 'Empresas'
    end
    object quTCEAtivosEstagirios: TIntegerField
      DisplayWidth = 8
      FieldName = 'Estagi'#225'rios'
    end
  end
  object dsTCEAtivos: TDataSource
    DataSet = quTCEAtivos
    Left = 24
    Top = 81
  end
  object quResEmpresas: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'Select E.Emp_cod "C'#243'digo", Emp_ramo "Ramo", Emp_porte "Porte",'
      'emp_tipo "Tipo", emp_func "Funcion'#225'rios",'
      
        'count(T.tce_cod) "Estagi'#225'rios", IsNull(SUM(F.fat_totcont),0) "Co' +
        'ntribui'#231#227'o",'
      
        'count(v1.vag_cod) "Vagas Abertas", IsNull(Avg(V1.valorbolsa),0) ' +
        '"Bolsa"'
      'from Empresa E, TCE T, Fatura F,'
      '(select vag_cod, vag_dataabertura, emp_cod,'
      
        ' (case when vag_tipobolsa = 0 then Vag_valorbolsa * 176 else Vag' +
        '_valorbolsa end)'
      ' ValorBolsa from Vaga) V1'
      'where E.emp_cod = T.emp_cod'
      'and '#9'E.emp_cod = F.emp_cod'
      'and'#9'  E.emp_cod = v1.emp_cod'
      'and   v1.vag_dataabertura between :data1 and :data2'
      'and   t.tce_data between :data1 and :data2'
      
        'and   (f.fat_ano * 100 + f.fat_mes) between :mesAno1 and :mesAno' +
        '2'
      'Group by E.Emp_cod, Emp_ramo, Emp_porte, emp_tipo, emp_func'
      'order by E.emp_cod'
      ''
      ''
      ''
      ' '
      ' '
      ''
      ' '
      ''
      ' '
      ' ')
    Left = 272
    Top = 80
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mesAno1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mesAno2'
        ParamType = ptUnknown
      end>
    object quResEmpresasCdigo: TIntegerField
      FieldName = 'C'#243'digo'
    end
    object quResEmpresasRamo: TStringField
      FieldName = 'Ramo'
      Size = 12
    end
    object quResEmpresasPorte: TStringField
      FieldName = 'Porte'
      Size = 10
    end
    object quResEmpresasTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object quResEmpresasFuncionrios: TIntegerField
      DisplayWidth = 12
      FieldName = 'Funcion'#225'rios'
      DisplayFormat = '00'
    end
    object quResEmpresasEstagirios: TIntegerField
      FieldName = 'Estagi'#225'rios'
    end
    object quResEmpresasFaturamento: TFloatField
      FieldName = 'Contribui'#231#227'o'
      DisplayFormat = '#,###,##0.00'
    end
    object quResEmpresasVagasAbertas: TIntegerField
      FieldName = 'Vagas Abertas'
    end
    object quResEmpresasBolsa: TFloatField
      FieldName = 'Bolsa'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object dsResEmpresas: TDataSource
    DataSet = quResEmpresas
    Left = 168
    Top = 80
  end
  object dsFichaEstudantes: TDataSource
    DataSet = quFichaEstudante
    Left = 24
    Top = 152
  end
  object quFichaEstudante: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      '/* Estudandes cadastrados */'
      'select E.Est_cod "C'#243'digo", C.Cur_nome "Curso", '
      'C.cur_nivel "N'#237'vel", I.inst_nome "Institui'#231#227'o", '
      
        '(Case E.pcu_turno when 0 then '#39'Manh'#227#39' when 1 then '#39'Tarde'#39' when 2' +
        ' then '#39'Noite'#39' end) "Turno"'
      'from  Estudante E, Curso C,Instituicao I'
      'where E.Cur_cod = C.Cur_cod'
      'and   E.est_dtinc between :data1 and :data2'
      'and I.Inst_cod = E.inst_cod'
      'order by "C'#243'digo" Desc')
    Left = 96
    Top = 152
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quFichaEstudanteCdigo: TIntegerField
      DisplayWidth = 7
      FieldName = 'C'#243'digo'
    end
    object quFichaEstudanteInstituio: TStringField
      DisplayWidth = 45
      FieldName = 'Institui'#231#227'o'
      Size = 100
    end
    object quFichaEstudanteCurso: TStringField
      DisplayWidth = 25
      FieldName = 'Curso'
      Size = 150
    end
    object quFichaEstudanteNvel: TStringField
      DisplayWidth = 12
      FieldName = 'N'#237'vel'
    end
    object quFichaEstudanteTurno: TStringField
      DisplayWidth = 9
      FieldName = 'Turno'
      Size = 5
    end
  end
  object quFichaOport: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      '/* Vagas abertas */'
      'select V.vag_cod "C'#243'digo", vag_setor "Curso", '
      'Vag_duracao "Dura'#231#227'o", '
      
        '(Case when Vag_efetiva = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Efetiva",' +
        ' '
      
        '(Case when Vag_prorroga = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Prorroga' +
        '", '
      
        '(Case when Vag_refeicaoprop = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Ref.' +
        ' Pr'#243'pria", '
      
        '(Case when Vag_valetransp = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Vale T' +
        'ransporte", '
      
        '(Case when Vag_valeref = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Vale Refe' +
        'i'#231#227'o", '
      
        '(Case when Vag_valealim = 0 then '#39'N'#227'o'#39' Else '#39'Sim'#39' End) "Vale Ali' +
        'menta'#231#227'o",'
      'v.vag_qtde "Quantidade", v.vag_qtdepreenc "Preenchidas",'
      '(select count(*) from Agenda T where T.age_vagcod1 = V.vag_cod'
      
        ' or T.age_vagcod2 = V.vag_cod or T.age_vagcod3 = V.vag_cod) "Ent' +
        'revistados",'
      
        '(select count(*) from Encaminhamento M where M.vag_cod = V.vag_c' +
        'od) "Encaminhados"'
      'from  Empresa E, Vaga V '
      'where V.emp_cod = E.emp_cod'
      'and   V.vag_dataabertura between :data1 and :data2'
      'order by "C'#243'digo" Desc'
      ' ')
    Left = 280
    Top = 144
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quFichaOportCdigo: TIntegerField
      DisplayWidth = 6
      FieldName = 'C'#243'digo'
    end
    object quFichaOportCurso: TStringField
      DisplayWidth = 33
      FieldName = 'Curso'
      Size = 40
    end
    object quFichaOportDurao: TIntegerField
      DisplayLabel = 'Meses'
      DisplayWidth = 6
      FieldName = 'Dura'#231#227'o'
    end
    object quFichaOportEfetiva: TStringField
      FieldName = 'Efetiva'
      Size = 3
    end
    object quFichaOportProrroga: TStringField
      FieldName = 'Prorroga'
      Size = 3
    end
    object quFichaOportRefPrpria: TStringField
      FieldName = 'Ref. Pr'#243'pria'
      Size = 3
    end
    object quFichaOportValeTransporte: TStringField
      DisplayLabel = 'V. T.'
      DisplayWidth = 5
      FieldName = 'Vale Transporte'
      Size = 3
    end
    object quFichaOportValeRefeio: TStringField
      DisplayLabel = 'V. R.'
      DisplayWidth = 5
      FieldName = 'Vale Refei'#231#227'o'
      Size = 3
    end
    object quFichaOportValeAlimentao: TStringField
      DisplayLabel = 'V. A.'
      DisplayWidth = 5
      FieldName = 'Vale Alimenta'#231#227'o'
      Size = 3
    end
    object quFichaOportQuantidade: TIntegerField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 7
      FieldName = 'Quantidade'
    end
    object quFichaOportEntrevistados: TIntegerField
      DisplayLabel = 'Entrev.'
      DisplayWidth = 7
      FieldName = 'Entrevistados'
    end
    object quFichaOportEncaminhados: TIntegerField
      DisplayLabel = 'Encam.'
      DisplayWidth = 7
      FieldName = 'Encaminhados'
    end
    object quFichaOportPreenchidas: TIntegerField
      DisplayLabel = 'Aprov.'
      DisplayWidth = 7
      FieldName = 'Preenchidas'
    end
  end
  object dsFichaOport: TDataSource
    DataSet = quFichaOport
    Left = 168
    Top = 144
  end
  object quFichaTCE: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      
        'select t.tce_cod "C'#243'digo", e.emp_ramo "Ramo", e.emp_porte "Porte' +
        '", '
      
        'e.emp_tipo "Tipo", s.inst_nome "Institui'#231#227'o", s.cur_nome "Curso"' +
        ', '
      
        '(case when t.tce_tipobolsa = 0 then t.tce_bolsa * t.tce_tothoras' +
        ' else t.tce_bolsa end) "Bolsa"'
      'from TCE T, Empresa E, Estudante S'
      'where e.emp_cod = T.emp_cod'
      'and s.est_cod = t.est_cod'
      'and t.tce_data between :data1 and :data2'
      ''
      ''
      '')
    Left = 88
    Top = 216
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object quFichaTCECdigo: TIntegerField
      DisplayWidth = 7
      FieldName = 'C'#243'digo'
    end
    object quFichaTCERamo: TStringField
      FieldName = 'Ramo'
      Size = 12
    end
    object quFichaTCEPorte: TStringField
      FieldName = 'Porte'
      Size = 10
    end
    object quFichaTCETipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object quFichaTCEInstituio: TStringField
      DisplayWidth = 40
      FieldName = 'Institui'#231#227'o'
      Size = 100
    end
    object quFichaTCECurso: TStringField
      DisplayWidth = 25
      FieldName = 'Curso'
      Size = 80
    end
    object quFichaTCEBolsa: TFloatField
      FieldName = 'Bolsa'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object dsFichaTCE: TDataSource
    DataSet = quFichaTCE
    Left = 24
    Top = 216
  end
  object dsTotaisCadastro: TDataSource
    DataSet = quTotaisCadastro
    Left = 176
    Top = 216
  end
  object quTotaisCadastro: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '#9#9'C.cur_cod, C.cur_nome, count(e.est_cod) total'
      'from '#9#9#9'Estudante e, Curso c'
      'where '#9#9'e.cur_cod = c.cur_cod'
      'group by  c.cur_cod, C.cur_nome'
      'order by  C.cur_nome'
      ' ')
    Left = 256
    Top = 216
    object quTotaisCadastrocur_cod: TIntegerField
      FieldName = 'cur_cod'
      Origin = 'TALENTPOOL.Curso.cur_cod'
      Visible = False
    end
    object quTotaisCadastrocur_nome: TStringField
      DisplayLabel = 'Curso'
      DisplayWidth = 80
      FieldName = 'cur_nome'
      Origin = 'TALENTPOOL.Curso.cur_nome'
      Size = 150
    end
    object quTotaisCadastrototal: TIntegerField
      DisplayLabel = 'Total'
      DisplayWidth = 7
      FieldName = 'total'
      Origin = 'TALENTPOOL.Estudante.est_cod'
    end
  end
  object dsEstatisticas: TDataSource
    DataSet = quEstatisticas
    Left = 176
    Top = 280
  end
  object quEstatisticas: TQuery
    DatabaseName = 'TalentPool'
    SQL.Strings = (
      'select '#9#9'1 Tipo, count(*) Total'
      'from '#9#9#9'TCE'
      'where     tce_dataini between :data1 and :data2'
      ''
      'union'
      ''
      'select '#9#9'2 Tipo, count(*) Total'
      'from '#9#9#9'TCE'
      'where     tce_datares between :data1 and :data2'
      ''
      'union'
      ''
      
        'select '#9#9'3 Tipo, avg(convert(float,tce_datares - tce_dataini)/30' +
        ') Total'
      'from '#9#9#9'TCE'
      'where     tce_datares between :data1 and :data2'
      ''
      '')
    Left = 216
    Top = 280
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data2'
        ParamType = ptUnknown
      end>
  end
end
