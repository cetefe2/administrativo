unit TPOTRV2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls,
  DBTables, Db;

type
  TFORTRV2 = class(TForm)
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
    quVaga: TQuery;
    quVagaVag_cod: TIntegerField;
    quVagaEmp_cod: TIntegerField;
    quVagaemp_nome: TStringField;
    quVagaRespEmpresa: TStringField;
    quVagavag_respselecao: TStringField;
    quVagaVag_setor: TStringField;
    quVagavag_observacao: TMemoField;
    quVagaVag_dataabertura: TDateTimeField;
    quVagaVag_qtde: TIntegerField;
    quVagaVag_qtdepreenc: TIntegerField;
    quVagaEncaminhados: TIntegerField;
    quVagaDesistentes: TIntegerField;
    quVagaAprovados: TIntegerField;
    quVagavag_cancelada: TStringField;
    quVagaVag_horarioini1: TDateTimeField;
    quVagaVag_horariofim1: TDateTimeField;
    quVagaVag_horarioini2: TDateTimeField;
    quVagaVag_horariofim2: TDateTimeField;
    quVagaVag_periodo: TStringField;
    quVagaVag_duracao: TIntegerField;
    quVagaVag_periodic: TStringField;
    quVagaVag_efetiva: TStringField;
    quVagaVag_prorroga: TStringField;
    quVagaVag_sexo: TStringField;
    quVagaVag_idademin: TIntegerField;
    quVagaVag_idademax: TIntegerField;
    quVagaVag_digitacao: TStringField;
    quVagaVag_valetransp: TStringField;
    quVagaVag_refeicaoprop: TStringField;
    quVagavag_valeref: TStringField;
    quVagaVag_valorvaleref: TFloatField;
    quVagavag_valealim: TStringField;
    quVagaVag_valorvalealim: TFloatField;
    quVagaVag_valorbolsa: TFloatField;
    quVagaVag_tipobolsa: TStringField;
    quVagavag_divulgasite: TStringField;
    quVagavag_divulgaemail: TStringField;
    quVagavag_transpemp: TStringField;
    quVagavag_assistmedica: TStringField;
    quVagaCanceladas: TIntegerField;
    quVagavag_qtdecancel: TIntegerField;
    quVagavag_Supervisor: TStringField;
    quVagavag_FormSupervisor: TStringField;
    SpeedButton1: TSpeedButton;
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
    procedure Triagem(Vaga: Integer);
    procedure SpeedButton1Click(Sender: TObject);
  private


  public

    triar, filtro: ansistring;
    { Public declarations }
  end;

var
  FORTRV2: TFORTRV2;

implementation

uses TPODTA, TPOFNC, TPOINI, TPOEST, TPOEOB, ComObj, TPOCST, TPORTRV,
  TPOVAG, TpoContatos;

{$R *.DFM}

procedure TFORTRV2.FormShow(Sender: TObject);
begin
  Triagem(StrToInt(edVaga.Text));
end;

procedure TFORTRV2.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORTRV2.edVagaKeyPress(Sender: TObject; var Key: Char);
begin
  VerificaNumero(Key);
end;

procedure TFORTRV2.Triagem(Vaga: Integer);
var
  requisitos, Idiomas, Softwares: Boolean;
  feito, i: Integer;
  ano, mes, dia: Word;
  linha: ansistring;
begin
  triar := '';
  feito := 0;
  Screen.Cursor := crHourglass;
  with quVaga do
  begin
    Close;
    ParamByName('vaga').Value := Vaga;
    Open;
  end;
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
    Sql.Add(' from Estudante e  ');


    if Idiomas and Softwares then
    begin
      Sql.Add(', PerIdioma I, PerSoftware S');
      Sql.Add(' where e.est_cod = i.est_cod and e.est_cod = s.est_cod');
      feito := 1;

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
      quVagaSoftware.first;
      while not quVagaSoftware.eof do
      begin
        Sql.Add(' and s.stw_cod = ' + quVagaSoftwarestw_Cod.Text);
        quVagaSoftware.Next;
      end;
    end;

    if feito = 0 then
      Sql.Add(' where ');


    quVagaCurso.first;

    if not quVagaCurso.Eof then
    begin
      Sql.Add(' ( ');
      while not quVagaCurso.Eof do
      begin
        Sql.Add(' (e.cur_cod = ' + quVagaCursoCur_Cod.Text);
        if quVagaCursoVcu_periodoini.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual >= ' + quVagaCursoVcu_periodoini.AsString);
        if quVagaCursoVcu_periodofim.AsString <> '' then
          Sql.Add(' and e.Pcu_anoatual <= ' + quVagaCursoVcu_periodofim.AsString);
        Sql.Add(' ) ');
        quVagaCurso.Next;
        if not quVagaCurso.eof then
          Sql.Add(' or ');
      end;
      Sql.Add(' ) ');
    end;

    // Sexo
    if quVagaVag_sexo.Value = '0' then
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.est_sexo = ''M'' ');
    end
    else if quVagavag_sexo.Value = '1' then
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

    if not quVagaVag_idademin.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc <= ''' + IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(Ano - quVagaVag_idademin.AsInteger) + '''');
    end;

    if not quVagaVag_idademax.IsNull then
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.est_dtnasc >= ''' + IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(Ano - quVagaVag_idademax.AsInteger) + '''');
    end;

    // Turnos
    if quVagaVag_periodo.Value = '0' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''0'''); // Não pode estudar de manhã
    end
    else if quVagaVag_periodo.Value = '1' then // Tarde
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno <> ''1'''); // Não pode estudar de tarde
    end
    else if quVagaVag_periodo.Value = '2' then // Manhã
    begin
      if Sql.Count > 2 then Sql.Add('and');
      Sql.Add(' e.pcu_turno <> ''2'''); // Não pode estudar de noite
    end
    else if quVagaVag_periodo.Value = '3' then // Integral
    begin
      if Sql.Count > 2 then Sql.Add(' and ');
      Sql.Add(' e.pcu_turno = ''2'''); // Tem que estudar de noite
    end;

    if Sql.Count > 2 then Sql.Add(' and ');
    sql.Add(' ( substring(e.est_fone1,1,2) = ''41''  or substring(e.est_fone2,1,2) = ''41''  )  ');

    if Sql.Count > 2 then Sql.Add(' and ');
    Sql.Add(' e.est_situacao <> ''S''');

    if filtro <> '' then
      Sql.Add(' ' + filtro + '  ');

    Sql.Add(' order by e.est_nome');


    Open;

    while not eof do
    begin
      triar := triar + fieldbyname('est_cod').asstring + ',';
      next;
    end;
    triar := copy(triar, 1, length(triar) - 1);

    if IsEmpty then
      MSGAVISO(' Não foram selecionados estudantes para esta vaga!');
  end;
  Screen.Cursor := crDefault;
end;


procedure TFORTRV2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quVagaSoftware.Close;
  quVagaIdioma.Close;
  quVagaCurso.Close;
  DmDta.quTriagem.Close;
end;

procedure TFORTRV2.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORTRV2.btImprimirClick(Sender: TObject);
begin
  QRTRV := TQRTRV.Create(Application);
  QRTRV.Vaga := edVaga.Text;
  QRTRV.Preview;
  QRTRV.Free;
end;

procedure TFORTRV2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4: Close;
    VK_F5: btImprimirClick(Sender);
    VK_F6: btEstudanteClick(Sender);
  end;
end;

procedure TFORTRV2.btEstudanteClick(Sender: TObject);
begin
  FOREST := TFOREST.Create(Application);
  FOREST.EstDeFora := DmDta.quTriagemEST_COD.Value;
  FOREST.ShowModal;
  FOREST.Free;
end;

procedure TFORTRV2.DBGrid1DblClick(Sender: TObject);
begin
  if DmDta.quTriagem.RecordCount > 0 then
    btEstudante.Click;
end;

procedure TFORTRV2.SpeedButton1Click(Sender: TObject);
begin
  FORCONTATOS := TFORCONTATOS.Create(Self);
  Screen.Cursor := crDefault;
  forcontatos.Edit1.Text := DmDta.quTriagemEST_COD.text; // codigo
  forcontatos.Edit2.Text := DmDta.quTriagemEST_NOME.text; // nome
  FORCONTATOS.ShowModal;
end;

end.

