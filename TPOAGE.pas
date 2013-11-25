unit TPOAGE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, QRExport,
  DBTables;

type
  TFORAGE = class(TFORMOD1)
    DBGrid1: TDBGrid;
    dtpDataAgenda: TDateTimePicker;
    Label1: TLabel;
    btMarcar: TSpeedButton;
    btRelatorio: TSpeedButton;
    btPorVaga: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query1: TQuery;
    Query1age_data: TDateTimeField;
    Query1Estudante: TStringField;
    Query1Encaminhamento: TDateTimeField;
    Query1Resultado: TStringField;
    Query1Compareceu: TStringField;
    Query1Aviso_de_Falta: TDateTimeField;
    Query1Empresa: TStringField;
    Query1Area: TStringField;
    qrypesquisa: TQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btMarcarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dtpDataAgendaChange(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btRelatorioClick(Sender: TObject);
    procedure btPorVagaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CriaCampo(Tabela, campo, chave, condicao: string);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure VerificaAgenda();
  end;

var
  FORAGE: TFORAGE;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOAGE1, TPORAGE, TPORAGE1,  TPOINI, TPOEML;

procedure TFORAGE.FormShow(Sender: TObject);
begin
  inherited;
  dtpDataAgenda.Date := Date;
  dtpDataAgendaChange(sender);
end;

procedure TFORAGE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DmDta.quAgenda.Close;
end;

procedure TFORAGE.VerificaAgenda;

  // função que insere a hora
  procedure InsereHora(Hora: string);
  begin
    // Insere a hora
    with DmDta.quAgenda do
    begin
      if not Locate('Hora', hora, []) then
      begin
        Insert;
        FieldByName('Hora').AsString := Hora;
        FieldByName('Age_data').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + Hora);
        Post;
      end;
    end;
  end;

begin
  Screen.Cursor := CrHourGlass;

  with DmDta.quAgenda do
  begin
    // Verifica se a agenda está preenchida
    DisableControls;

    // Insere as horas - manhã
    InsereHora('08:30:00');
    InsereHora('08:45:00');
    InsereHora('09:00:00');
    InsereHora('09:15:00');
    InsereHora('09:30:00');
    InsereHora('09:45:00');
    InsereHora('10:00:00');
    InsereHora('10:15:00');
    InsereHora('10:30:00');
    InsereHora('10:45:00');
    InsereHora('11:00:00');
    InsereHora('11:15:00');
    InsereHora('11:30:00');
    InsereHora('11:45:00');
    InsereHora('12:00:00');
    InsereHora('12:15:00');
    InsereHora('12:30:00');
    InsereHora('12:45:00');
    InsereHora('13:00:00');
    InsereHora('13:15:00');
    InsereHora('13:30:00');
    InsereHora('13:45:00');
    InsereHora('14:00:00');
    InsereHora('14:15:00');
    InsereHora('14:30:00');
    InsereHora('14:45:00');
    InsereHora('15:00:00');
    InsereHora('15:15:00');
    InsereHora('15:30:00');
    InsereHora('15:45:00');
    InsereHora('16:00:00');
    InsereHora('16:15:00');
    InsereHora('16:30:00');
    InsereHora('16:45:00');
    InsereHora('17:00:00');
    InsereHora('17:15:00');
    InsereHora('17:30:00');
    InsereHora('17:45:00');

    // posiciona no primeiro
    First;
    EnableControls;

  end;

  Screen.Cursor := crDefault;
end;

procedure TFORAGE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_F3: btOkClick(Sender);
    vk_F4: btMarcarClick(Sender);
    vk_F5: btAtualizarClick(Sender);
    vk_F6: btRelatorioClick(Sender);
    vk_F7: btPorVagaClick(Sender);
  end;
end;

procedure TFORAGE.btMarcarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORAGE1 := TFORAGE1.Create(Self);
  Screen.Cursor := crDefault;
  FORAGE1.ShowModal;
end;

procedure TFORAGE.btAtualizarClick(Sender: TObject);
begin
  inherited;
  // atualiza todos os horários
  {with DmDta.quAgenda do
  begin
    If Active then
    begin
      If State in [dsInsert,dsEdit] then Post;
      If UpdatesPending then
      begin
        Screen.Cursor := crHourGlass;
        ApplyUpdates;
        CommitUpdates;
        Screen.Cursor := crDefault;
        MSGAVISO('Agenda do dia ' + FormatDateTime('dd/mm/yyyy',FieldByName('age_data').AsDateTime)  + ' atualizada com sucessso!');
      end;
    end;
  end;}
end;

procedure TFORAGE.dtpDataAgendaChange(Sender: TObject);
begin
  inherited;
  // abre a agenda para a data de hoje
  with DmDta.quAgenda do
  begin
    if Active and UpdatesPending then
    begin
      Cancel;
      CancelUpdates;
    end;

    Close;
    ParamByName('data1').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 00:00:00');
    ParamByName('data2').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 23:59:59');
    Open;
    VerificaAgenda();
    Salvou := False;
  end;
end;

procedure TFORAGE.btOkClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFORAGE.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  with DmDta.quAgenda do
  begin
    if UpdatesPending or (State in [dsInsert, dsEdit]) then
    begin
      Cancel;
      CancelUpdates;
    end;
  end;
end;

procedure TFORAGE.btRelatorioClick(Sender: TObject);
begin
  inherited;
  if DmDta.quAgenda.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrAGE := TqrAGE.Create(Self);
  qrAGE.qrData.Caption := FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date);
  DmDta.quEntrevNaoRealiz.ParamByName('data1').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 00:00:00');
  DmDta.quEntrevNaoRealiz.ParamByName('data2').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 23:59:59');
  DmDta.quEntrevNaoRealiz.Open;
  Screen.Cursor := crDefault;

  QRAge.Preview;
  DmDta.quEntrevNaoRealiz.Close;
  qrAGE.Free;
end;

procedure TFORAGE.btPorVagaClick(Sender: TObject);
begin
  if DmDta.quAgenda.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrAGE1 := TqrAGE1.Create(Self);
  qrAGE1.qrData.Caption := FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date);
  DmDta.quAgendaVaga.ParamByName('data1').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 00:00:00');
  DmDta.quAgendaVaga.ParamByName('data2').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 23:59:59');
  DmDta.quAgendaVaga.Open;
  Screen.Cursor := crDefault;

  QRAge1.Preview;
  DmDta.quAgendaVaga.Close;
  qrAGE1.Free;
end;

procedure TFORAGE.SpeedButton1Click(Sender: TObject);
var
  sPara, sAssunto: string;
  sCorpo: TStringList;
  i: Integer;
  Qry, QryAtualiza: tquery;
begin
  inherited;

  if DmDta.quAgenda.Isempty then
  begin
    MSGERRO('Não há registros!');
    Exit;
  end;

  qryAtualiza := TQuery.create(nil);
  qryAtualiza.Databasename := 'TalentPool';
  qryAtualiza.Close;
  qryatualiza.sql.Clear;



  qry := TQuery.create(nil);
  qry.Databasename := 'TalentPool';
  qry.Close;
  qry.sql.Clear;


  qry.SQL.Text := 'select  agenda.age_data, ' +
    ' (select est_nome from  Estudante where Agenda.age_estcod1 = est_cod ) Estudante1,  ' +
    ' (select est_nome from  Estudante where Agenda.age_estcod2 = est_cod ) Estudante2,  ' +
    ' (select est_nome from  Estudante where Agenda.age_estcod3 = est_cod ) Estudante3,  ' +
    ' (select est_email from  Estudante where Agenda.age_estcod1 = est_cod ) Email1,   ' +
    ' (select est_email from  Estudante where Agenda.age_estcod2 = est_cod ) Email2,   ' +
    ' (select est_email from  Estudante where Agenda.age_estcod3 = est_cod ) email3, ' +
    ' age_faltou1,age_faltou2,age_faltou3,age_dtenvio1,age_dtenvio2,age_dtenvio3  from Agenda ' +
    ' where ' +
    ' (age_faltou1 = ''Não'' or age_faltou3 =  ''Não'' or age_faltou2 = ''Não'' ) ' +
    '  and age_data between :data1 and :data2 ';

  qry.ParamByName('data1').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 00:00:00');
  qry.ParamByName('data2').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 23:59:59');
  qry.Open;
  Screen.Cursor := crDefault;


  with qry do
  begin
    if Isempty then
    begin
      MSGAVISO('Não há estudantes Faltosos');
      exit;
    end;

    DisableControls;
    First;

    while not Eof do
    begin

      if ((FieldByName('age_faltou1').AsString = 'Não') and ((FieldByName('age_dtEnvio1').AsString = ''))) then
      begin
        if (FieldByName('email1').AsString = '') then
          MSGAVISO('Estudante ' + FieldByName('estudante1').AsString + ' sem e-mail cadastrado!')
        else
        begin
        // e-mail do estudante
          sPara := FieldByName('email1').AsString;
        // corpo do e-mail
          sCorpo := TStringList.Create();
          sCorpo.LoadFromFile(FORINI.Diretorio + 'CorpoFaltosos.txt');
          sAssunto := 'Falta na Entrevista Agendada';
        // manda e-mail para o estudante
          FOREML := TFOREML.Create(Self);
          FOREML.RegistrarEmail(sAssunto, sPara, '', sCorpo, nil, 'E-Mail do Estudante:');
          Screen.Cursor := crDefault;
          if FOREML.ShowModal = Mrok then
          begin
            qryAtualiza.Close;
            qryatualiza.sql.Clear;
            qryAtualiza.sql.Text := 'Update agenda set age_dtEnvio1 =:data where age_data=:entrevista ';
            qryatualiza.ParamByName('data').Value := now;
            qryatualiza.ParamByName('entrevista').Value := qry.fieldbyname('age_data').Value;
            qryatualiza.ExecSQL;
          end;
        end;
      end;

      if ((FieldByName('age_faltou2').AsString = 'Não') and ((FieldByName('age_dtEnvio2').AsString = ''))) then
      begin
        if (FieldByName('email2').AsString = '') then
          MSGAVISO('Estudante ' + FieldByName('estudante2').AsString + ' sem e-mail cadastrado!')
        else
        begin
        // e-mail do estudante
          sPara := FieldByName('email2').AsString;
        // corpo do e-mail
          sCorpo := TStringList.Create();
          sCorpo.LoadFromFile(FORINI.Diretorio + 'CorpoFaltosos.txt');
          sAssunto := 'Falta na Entrevista Agendada';
        // manda e-mail para o estudante
          FOREML := TFOREML.Create(Self);
          FOREML.RegistrarEmail(sAssunto, sPara, '', sCorpo, nil, 'E-Mail do Estudante:');
          Screen.Cursor := crDefault;
          if FOREML.ShowModal = Mrok then
          begin
            qryAtualiza.Close;
            qryatualiza.sql.Clear;
            qryAtualiza.sql.Text := 'Update agenda set age_dtEnvio2 =:data where age_data=:entrevista ';
            qryatualiza.ParamByName('data').Value := now;
            qryatualiza.ParamByName('entrevista').Value := qry.fieldbyname('age_data').Value;
            qryatualiza.ExecSQL;
          end;
        end;
      end;

      if ((FieldByName('age_faltou3').AsString = 'Não') and ((FieldByName('age_dtEnvio3').AsString = ''))) then
      begin
        if (FieldByName('email3').AsString = '') then
          MSGAVISO('Estudante ' + FieldByName('estudante3').AsString + ' sem e-mail cadastrado!')
        else
        begin
        // e-mail do estudante
          sPara := FieldByName('email3').AsString;
        // corpo do e-mail
          sCorpo := TStringList.Create();
          sCorpo.LoadFromFile(FORINI.Diretorio + 'CorpoFaltosos.txt');
          sAssunto := 'Falta na Entrevista Agendada';
        // manda e-mail para o estudante
          FOREML := TFOREML.Create(Self);
          FOREML.RegistrarEmail(sAssunto, sPara, '', sCorpo, nil, 'E-Mail do Estudante:');
          Screen.Cursor := crDefault;
          if FOREML.ShowModal = Mrok then
          begin
            qryAtualiza.Close;
            qryatualiza.sql.Clear;
            qryAtualiza.sql.Text := 'Update agenda set age_dtEnvio3=:data where age_data=:entrevista ';
            qryatualiza.ParamByName('data').Value := now;
            qryatualiza.ParamByName('entrevista').Value := qry.fieldbyname('age_data').Value;
            qryatualiza.ExecSQL;

          end;
        end;
      end;

      Next;
    end;

    First;
    EnableControls;
  end;
  DmDta.quEntrevNaoRealiz.Close;

end;

procedure TFORAGE.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  query1.Close;
  query1.SQL.Clear;
//  ' (select est_nome from  Estudante where Agenda.age_estcod1 = est_cod ) Estudante, ' +
  query1.SQL.Text := ' select  agenda.age_data,agenda.age_nome1 Estudante, ' +
    ' (select emp_nome from  Empresa where  Emp_cod in (select Emp_cod from vaga where vag_cod = Agenda.age_vagcod1)) Empresa, ' +
    ' (select vag_setor from vaga where vag_cod = Agenda.age_vagcod1) Area, ' +
    ' (select eva_dataenc from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) Encaminhamento, ' +
    '   case ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 0  then ''Em Espera'' ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 1  then ''Reprovado'' ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 2  then ''Aprovado''  ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 3  then ''Desistiu''  ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 4  then ''Selecionado pela Empresa'' ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 5  then ''Não Entrevistado pelo Cliente'' ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod1 = est_cod and Agenda.age_vagcod1 = vag_cod ) = 6  then ''STANDBY'' ' +
    '   else ' +
    '   ''Não encaminhado'' ' +
    '  end Resultado,' +
    '  age_faltou1 Compareceu ,age_dtenvio1 Aviso_de_Falta' +
    ' from Agenda  where age_estcod1 is not null and age_data between :data1 and :data2' +
    '  union' +
    ' select  agenda.age_data,agenda.age_nome2 Estudante,' +
    ' (select emp_nome from  Empresa where  Emp_cod in (select Emp_cod from vaga where vag_cod = Agenda.age_vagcod2)) Empresa, ' +
    ' (select vag_setor from vaga where vag_cod = Agenda.age_vagcod2) Area, ' +
    ' (select eva_dataenc from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) Encaminhamento,' +
    '      case' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 0  then ''Em Espera''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 1  then ''Reprovado''   ' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 2  then ''Aprovado''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 3  then ''Desistiu''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 4  then ''Selecionado pela Empresa''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 5  then ''Não Entrevistado pelo Cliente''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod2 = est_cod and Agenda.age_vagcod2 = vag_cod ) = 6  then ''STANDBY''' +
    '  else' +
    '  ''Não encaminhado''' +
    '  end Resultado,' +
    '  age_faltou2 Compareceu ,age_dtenvio2 Aviso_de_Falta' +
    ' from Agenda  where age_estcod2 is not null and age_data between :data1 and :data2' +
    ' union' +
    ' select  agenda.age_data,agenda.age_nome3 Estudante,' +
    ' (select emp_nome from  Empresa where  Emp_cod in (select Emp_cod from vaga where vag_cod = Agenda.age_vagcod3)) Empresa, ' +
    ' (select vag_setor from vaga where vag_cod = Agenda.age_vagcod3) Area, ' +
    ' (select eva_dataenc from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) Encaminhamento,' +
    '      case' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 0  then ''Em Espera''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 1  then ''Reprovado''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 2  then ''Aprovado''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 3  then ''Desistiu''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 4  then ''Selecionado pela Empresa''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 5  then ''Não Entrevistado pelo Cliente''' +
    '   when  (select eva_resultado from  Encaminhamento where Agenda.age_estcod3 = est_cod and Agenda.age_vagcod3 = vag_cod ) = 6  then ''STANDBY''' +
    '   else' +
    '  ''Não encaminhado''' +
    '  end Resultado,' +
    '  age_faltou3 Compareceu ,age_dtenvio3 Aviso_de_Falta' +
    ' from Agenda   where age_estcod3 is not null and age_data between :data1 and :data2' +
    ' order by age_data';
 // ' (select est_nome from  Estudante where Agenda.age_estcod3 = est_cod ) Estudante,' +
//    ' (select est_nome from  Estudante where Agenda.age_estcod2 = est_cod ) Estudante,' +
  query1.ParamByName('data1').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 00:00:00');
  query1.ParamByName('data2').AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', dtpDataAgenda.Date) + ' 23:59:59');
  query1.Open;
  GerarExcel(query1, Caption);
  query1.close;
end;

procedure TFORAGE.FormCreate(Sender: TObject);
begin
  inherited;
  criacampo('AGENDA', 'Age_Teste1', 'AGE_ESTCOD1', ' CHAR(1)');
  criacampo('AGENDA', 'Age_Redacao1', 'AGE_ESTCOD1', ' CHAR(1)');
  criacampo('AGENDA', 'Age_Teste2', 'AGE_ESTCOD1', ' CHAR(1)');
  criacampo('AGENDA', 'Age_Redacao2', 'AGE_ESTCOD1', ' CHAR(1)');
  criacampo('AGENDA', 'Age_Teste3', 'AGE_ESTCOD1', ' CHAR(1)');
  criacampo('AGENDA', 'Age_Redacao3', 'AGE_ESTCOD1', ' CHAR(1)');

end;
procedure TFORAGE.CriaCampo(Tabela, campo, chave, condicao: string);
begin
  qrypesquisa.CLOSE;
  qrypesquisa.SQL.clear;
  qrypesquisa.sql.text := 'select * from ' + tabela + ' where ' + chave + ' = -1';
  qrypesquisa.Open;
  if qrypesquisa.FieldList.IndexOf(campo) < 0 then
  begin
    try
      qrypesquisa.Close;
      qrypesquisa.SQL.Clear;
      qrypesquisa.SQL.Add('alter table ' + tabela + ' add  ' + campo + ' ' + condicao + ' ');
      qrypesquisa.ExecSQL;
    except
      showmessage('Campo Já foi Criado');
    end;
  end;
end;



end.

