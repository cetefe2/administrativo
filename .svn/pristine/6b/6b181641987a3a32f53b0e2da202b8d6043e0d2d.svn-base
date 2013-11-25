unit TPOTRV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls,
  DBTables, Db;

type
  TFORTRV = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Bevel2: TBevel;
    quPrincipal: TQuery;
    usPrincipal: TUpdateSQL;
    Panel3: TPanel;
    Bevel3: TBevel;
    btEnter: TBitBtn;
    btFechar: TSpeedButton;
    qencaminha: TQuery;
    edVaga: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    quVagaSoftware: TQuery;
    quVagaIdioma: TQuery;
    quVagaIdiomaVag_cod: TIntegerField;
    quVagaIdiomaIdi_cod: TIntegerField;
    quVagaSoftwareVag_cod: TIntegerField;
    quVagaSoftwareStw_cod: TIntegerField;
    dsEstudante: TDataSource;
    quVagaCurso: TQuery;
    quVagaCursoVag_cod: TIntegerField;
    quVagaCursoCur_cod: TIntegerField;
    quVagaCursocur_nome: TStringField;
    quVagaCursoInst_cod: TIntegerField;
    quVagaCursoinst_nome: TStringField;
    quVagaCursoVcu_periodoini: TFloatField;
    quVagaCursoVcu_periodofim: TFloatField;
    btImprimir: TSpeedButton;
    btEstudante: TSpeedButton;
    quVagaIdiomavid_fala: TStringField;
    quVagaIdiomavid_le: TStringField;
    quVagaIdiomavid_escreve: TStringField;
    quVagaRequisito: TQuery;
    quVagaRequisitoCOD_VAGA: TIntegerField;
    quVagaRequisitoID_REQUISITO: TIntegerField;
    quVagaRequisitoTIPO: TStringField;
    procedure btEnterClick(Sender: TObject);
    procedure edVagaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEstudanteClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

    procedure Triagem(Vaga: Integer);
  public
    { Public declarations }
  end;

var
  FORTRV: TFORTRV;

implementation

uses TPODTA, TPOFNC, TPOINI, TPOEST, TPOEOB, ComObj, TPOCST, TPORTRV,
  TPOVAG;

{$R *.DFM}

procedure TFORTRV.FormShow(Sender: TObject);
begin
  edVaga.Text := DmDta.quVagavag_cod.Text;
  Triagem(StrToInt(edVaga.Text));
end;

procedure TFORTRV.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORTRV.edVagaKeyPress(Sender: TObject; var Key: Char);
begin
  VerificaNumero(Key);
end;

procedure TFORTRV.Triagem(Vaga: Integer);
var
  requisitos, Idiomas, Softwares: Boolean;
  feito, i: Integer;
  ano, mes, dia: Word;
  linha: ansistring;
begin
  feito := 0;
  Screen.Cursor := crHourglass;
  with quVagaIdioma do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  with quVagaSoftware do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  with quVagaCurso do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;

  with quVagarequisito do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  Idiomas := not quVagaIdioma.IsEmpty;
  Softwares := not quVagaSoftware.IsEmpty;
  Requisitos := not quVagaRequisito.IsEmpty;



  with DmDta.quTriagem do
  begin
    Close;
    Sql.clear;
    Sql.Add(' Select e.est_nome, e.pcu_turno, e.pcu_anoatual, e.est_fone1, e.est_fone2, e.est_recado, e.est_cod,e.est_situacao,e.cur_cod ');
    Sql.Add(' from Estudante e ');

    if Idiomas and Softwares then
    begin
      Sql.Add(', PerIdioma I, PerSoftware S');
      Sql.Add('where e.est_cod = i.est_cod and e.est_cod = s.est_cod');
      feito := 1;
      {quVagaCurso.First;
      while not quVagaCurso.eof do
      begin
        Sql.Add(' and (e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        if quVagaCursoVcu_periodoini.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual >= ' + quVagaCursoVcu_periodoini.AsString);
        if quVagaCursoVcu_periodofim.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual <= ' + quVagaCursoVcu_periodofim.AsString);
        Sql.Add(' ) ');
        quVagaCurso.Next;
      end;}
      quVagaIdioma.first;
      while not quVagaIdioma.eof do
      begin
        Sql.Add(' and i.idi_cod = ' + quVagaIdiomaidi_Cod.Text);
        quVagaIdioma.Next;
      end;
      quVagaSoftware.first;
      while not quVagaSoftware.eof do
      begin
        Sql.Add(' and s.stw_cod = ' + quVagaSoftwarestw_Cod.Text);
        quVagaSoftware.Next;
      end;
    end
    else if Idiomas then
    begin
      feito := 1;
      Sql.Add(', PerIdioma i ');
      Sql.Add(' where e.est_cod = i.est_cod ');
      {quVagaCurso.First;
      while not quVagaCurso.eof do
      begin
        Sql.Add(' and (e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        if quVagaCursoVcu_periodoini.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual >= ' + quVagaCursoVcu_periodoini.AsString);
        if quVagaCursoVcu_periodofim.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual <= ' + quVagaCursoVcu_periodofim.AsString);
        Sql.Add(' ) ');
        quVagaCurso.Next;
      end;}
      quVagaIdioma.first;
      while not quVagaIdioma.eof do
      begin
        Sql.Add(' and i.idi_cod = ' + quVagaIdiomaidi_Cod.Text);
        quVagaIdioma.Next;
      end;
    end
    else if Softwares then
    begin
      feito := 1;
      Sql.Add(', PerSoftware S');
      Sql.Add(' where e.est_cod = s.est_cod ');
      {quVagaCurso.First;
      while not quVagaCurso.eof do
      begin
        Sql.Add(' and (e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        if quVagaCursoVcu_periodoini.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual >= ' + quVagaCursoVcu_periodoini.AsString);
        if quVagaCursoVcu_periodofim.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual <= ' + quVagaCursoVcu_periodofim.AsString);
        Sql.Add(' ) ');
        quVagaCurso.Next;
      end;}
      quVagaSoftware.first;
      while not quVagaSoftware.eof do
      begin
        Sql.Add(' and s.stw_cod = ' + quVagaSoftwarestw_Cod.Text);
        quVagaSoftware.Next;
      end;
    end;

    if feito = 0 then
      Sql.Add(' where ')
    else
      Sql.Add(' And ');

    quVagaCurso.first;
    Sql.Add(' ( ');
    while not quVagaCurso.Eof do
    //for i := 1 to quVagaCurso.RecordCount do
    begin
      Sql.Add(' (e.cur_cod = ' + quVagaCursoCur_Cod.Text);
      if quVagaCursoVcu_periodoini.AsString <> '' then
        Sql.Add(' and e.Pcu_anoatual >= ' + quVagaCursoVcu_periodoini.AsString);
      if quVagaCursoVcu_periodofim.AsString <> '' then
        Sql.Add(' and e.Pcu_anoatual <= ' + quVagaCursoVcu_periodofim.AsString);
      Sql.Add(' ) ');
      {if i < quVagaCurso.RecordCount then
        Sql.Add(' or ');}

      quVagaCurso.Next;
      if not quVagaCurso.eof then
        Sql.Add(' or ');
    end;
    Sql.Add(' ) ');

    // Sexo
    if DmDta.quVagaVag_sexo.Value = '0' then
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.est_sexo = ''M'' ');
    end
    else if DmDta.quVagavag_sexo.Value = '1' then
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.est_sexo = ''F'' ');
    end;

    // Requistos
    if Requisitos then
    begin
      linha := '';
      quvagarequisito.First;
      while not quvagarequisito.Eof do
      begin
        if quvagarequisitotipo.AsString = 'O' then
          linha := linha + quvagarequisitoid_requisito.asstring + ',';
        quvagarequisito.Next;
      end;
      if length(linha) > 0 then
        linha := copy(linha, 1, length(linha) - 1);
      if length(linha) > 0 then
      begin
        if Sql.Count > 2 then Sql.Add(' and ');
        sql.add(' e.est_cod in (select est_cod from tb_estudanterequisito where id_requisito in (' + linha + '))');
      end;
    end;

    // Idades mínima e máxima
    decodeDate(Date, ano, mes, dia);

    if not DmDta.quVagaVag_idademin.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc <= ''' + IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(Ano - DmDta.quVagaVag_idademin.AsInteger) + '''');
    end;

    if not DmDta.quVagaVag_idademax.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc >= ''' + IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(Ano - DmDta.quVagaVag_idademax.AsInteger) + '''');
    end;

    // Turnos
    if DmDta.quVagaVag_periodo.Value = '0' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''0'''); // Não pode estudar de manhã
    end
    else if DmDta.quVagaVag_periodo.Value = '1' then // Tarde
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''1'''); // Não pode estudar de tarde
    end
    else if DmDta.quVagaVag_periodo.Value = '2' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.pcu_turno <> ''2'''); // Não pode estudar de noite
    end
    else if DmDta.quVagaVag_periodo.Value = '3' then // Integral
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno = ''2'''); // Tem que estudar de noite
    end;

    if Sql.Count > 2 then Sql.Add(' and ');
    sql.Add(' ( substring(e.est_fone1,1,2) = ''41''  or substring(e.est_fone2,1,2) = ''41''  )  ');

    if Sql.Count > 2 then Sql.Add(' and ');
    Sql.Add(' e.est_situacao <> ''S''');
    Sql.Add(' order by e.est_nome');
    Open;

    if IsEmpty then
      MSGAVISO(' Não foram selecionados estudantes para esta vaga!');
  end;


  Screen.Cursor := crDefault;
end;

procedure TFORTRV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quVagaSoftware.Close;
  quVagaIdioma.Close;
  quVagaCurso.Close;
  DmDta.quTriagem.Close;
end;

procedure TFORTRV.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORTRV.btImprimirClick(Sender: TObject);
begin
  QRTRV := TQRTRV.Create(Application);
  QRTRV.Vaga := edVaga.Text;
  QRTRV.Preview;
  QRTRV.Free;
end;

procedure TFORTRV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4: Close;
    VK_F5: btImprimirClick(Sender);
    VK_F6: btEstudanteClick(Sender);
  end;
end;

procedure TFORTRV.btEstudanteClick(Sender: TObject);
begin
  FOREST := TFOREST.Create(Application);
  FOREST.EstDeFora := DmDta.quTriagemEST_COD.Value;
  FOREST.ShowModal;
  FOREST.Free;
end;

procedure TFORTRV.DBGrid1DblClick(Sender: TObject);
begin
  if DmDta.quTriagem.RecordCount > 0 then
    btEstudante.Click;
end;

end.




Triangem antiga

procedure TFORTRV.Triagem(Vaga: Integer);
var
  linha, Requisitos, Idiomas, Softwares: Boolean;
  feito, i: Integer;
  ano, mes, dia: Word;
begin
  feito := 0;
  Screen.Cursor := crHourglass;
  with quVagaIdioma do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  with quVagaSoftware do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  with quVagaCurso do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  with quVagaRequisito do
  begin
    Close;
    ParamByName('vag_cod').Value := Vaga;
    Open;
  end;
  Idiomas := not quVagaIdioma.IsEmpty;
  Softwares := not quVagaSoftware.IsEmpty;
  Requisitos := not quVagaRequisito.IsEmpty;

  with DmDta.quTriagem do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select e.est_nome, e.pcu_turno, e.pcu_anoatual, e.est_fone1, e.est_fone2, e.est_recado, e.est_cod');
    Sql.Add('from Estudante e ');
    if Idiomas and Softwares then
    begin
      Sql.Add(', PerIdioma I, PerSoftware S');
      Sql.Add('where e.est_cod = i.est_cod and e.est_cod = s.est_cod');
      feito := 1;
      for i := 1 to quVagaCurso.RecordCount do
      begin
        Sql.Add('and e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        quVagaCurso.Next;
      end;
      for i := 1 to quVagaIdioma.RecordCount do
      begin
        Sql.Add('and i.idi_cod = ' + quVagaIdiomaidi_Cod.Text);
        quVagaCurso.Next;
      end;
      for i := 1 to quVagaSoftware.RecordCount do
      begin
        Sql.Add('and s.stw_cod = ' + quVagaSoftwarestw_Cod.Text);
        quVagaCurso.Next;
      end;
    end
    else if Idiomas then
    begin
      feito := 1;
      Sql.Add(', PerIdioma i');
      Sql.Add('where e.est_cod = i.est_cod');
      for i := 1 to quVagaCurso.RecordCount do
      begin
        Sql.Add('and e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        quVagaCurso.Next;
      end;
      for i := 1 to quVagaIdioma.RecordCount do
      begin
        Sql.Add('and i.idi_cod = ' + quVagaIdiomaidi_Cod.Text);
        quVagaCurso.Next;
      end;
    end
    else if Softwares then
    begin
      feito := 1;
      Sql.Add(' PerSoftware S');
      Sql.Add('where e.est_cod = s.est_cod');
      for i := 1 to quVagaCurso.RecordCount do
      begin
        Sql.Add('and e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        quVagaCurso.Next;
      end;
      for i := 1 to quVagaSoftware.RecordCount do
      begin
        Sql.Add('and s.stw_cod = ' + quVagaSoftwarestw_Cod.Text);
        quVagaCurso.Next;
      end;
    end;

    if feito = 0 then
      Sql.Add(' where ')
    else
      Sql.Add(' And ');

    for i := 1 to quVagaCurso.RecordCount do
    begin
      Sql.Add(' e.cur_cod = ' + quVagaCursoCur_Cod.Text);
      if i < quVagaCurso.RecordCount then
        Sql.Add(' and ');
      quVagaCurso.Next;
    end;

    // Sexo
    if DmDta.quVagaVag_sexo.Value = '0' then
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.est_sexo = ''M'' ');
    end
    else if DmDta.quVagavag_sexo.Value = '1' then
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add('e.est_sexo = ''F'' ');
    end;

    // requisitos do aluno
    if requisitos then
    begin
      quvagarequisito.first;


    end;

    // Idades mínima e máxima
    decodeDate(Date, ano, mes, dia);

    if not DmDta.quVagaVag_idademin.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc <= ''' + IntToStr(Mes) + '/' + IntToStr(Dia) + '/' + IntToStr(Ano - DmDta.quVagaVag_idademin.AsInteger) + '''');
    end;

    if not DmDta.quVagaVag_idademax.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc >= ''' + IntToStr(Mes) + '/' + IntToStr(Dia) + '/' + IntToStr(Ano - DmDta.quVagaVag_idademax.AsInteger) + '''');
    end;

    // Turnos
    if DmDta.quVagaVag_periodo.Value = '0' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''0'''); // Não pode estudar de manhã
    end
    else if DmDta.quVagaVag_periodo.Value = '1' then // Tarde
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''1'''); // Não pode estudar de tarde
    end
    else if DmDta.quVagaVag_periodo.Value = '2' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.pcu_turno <> ''2'''); // Não pode estudar de noite
    end
    else if DmDta.quVagaVag_periodo.Value = '3' then // Integral
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno = ''2'''); // Tem que estudar de noite
    end;



    if Sql.Count > 2 then Sql.Add(' and ');
    Sql.Add(' e.est_situacao <> ''S''');
    Sql.Add(' order by e.est_nome');
    Open;

    if IsEmpty then
      MSGAVISO('Não foram selecionados estudantes para esta vaga!');
  end;


  Screen.Cursor := crDefault;
end;

