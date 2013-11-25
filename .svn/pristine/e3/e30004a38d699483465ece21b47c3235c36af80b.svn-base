unit TPOSAVD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSAVD = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    meData: TMaskEdit;
    btEnter: TBitBtn;
    btEmailEst: TSpeedButton;
    GroupBox3: TGroupBox;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label1: TLabel;
    edTotalEstagiarios: TEdit;
    btAtualizar: TSpeedButton;
    quAtualizaAval: TQuery;
    btExportar: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure meDataExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailEstClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAtualizarClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;
    procedure MontaFichaEstudante(NomeArq: String);
    procedure MontaFichaEmpresa(NomeArq: String);
  public
    { Public declarations }
    sEMailEmpresa, sNomeContato, sTelefone: String;
  end;

var
  FORSAVD: TFORSAVD;

implementation

Uses TPODTA, TPOFNC, TPOINS, TPORAVD, TPOEMP, TPOEML, ComObj, TPOCST,
  TPOINI, TPOSELEMP;

{$R *.DFM}

procedure TFORSAVD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btAtualizarClick(Sender);
    vk_F6: btImprimirClick(Sender);
    vk_F7: btEmailEstClick(Sender);
    vk_F8: btExportarClick(Sender);
  end;
end;

procedure TFORSAVD.btImprimirClick(Sender: TObject);
begin
  if (meData.Text = '  /  /    ') then
  begin
    MSGERRO('Data do relatório não informada!');
    meData.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRAVD := TQRAVD.Create(Application);
    QRAVD.Data := meData.Text;
    Screen.Cursor := crDefault;
    QRAVD.Preview;
    QRAVD.Free;
  end;
end;

procedure TFORSAVD.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSAVD.meDataExit(Sender: TObject);
begin
  if meData.Text <> '  /  /    ' then
  begin
    if not validadata(meData.Text) then
      meData.SetFocus
    else
      AbreQuery;
  end;
end;

procedure TFORSAVD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quAvalDesemp.Close;
  Action := caFree;
end;

procedure TFORSAVD.FormShow(Sender: TObject);
begin
  // data do relatório
  meData.Text := FormatDateTime('dd/mm/yyyy',Date);
  meDataExit(Sender);
end;

procedure TFORSAVD.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSAVD.btEmailEstClick(Sender: TObject);
var
  sCopiaOculta, sPara: String;
  sCorpo, sArquivos:   TStringList;
  sNomeArq, sAssunto:    String;
  i: Word;

begin
  sCopiaOculta := '';
  sPara        := '';
  Screen.Cursor := crHourGlass;

  with DmDta.quAvalDesemp do
  begin
    DisableControls;
    First;

    While Not Eof do
    begin
      sPara := FieldByName('efu_email').Text;

      // corpo do e-mail
      sCorpo := TStringList.Create();
      sCorpo.LoadFromFile(FORINI.Diretorio + 'CorpoEmail.txt');

      // Avaliação de desempenho
      sNomeArq  := 'AVALDESP';
      sArquivos := TStringList.Create();
      sArquivos.Add(FORINI.Diretorio + 'EMail\' + sNomeArq + '.doc');

      sAssunto := 'Avaliação de Desempenho - ' + FieldByName('est_nome').Text;
      MontaFichaEmpresa(sNomeArq);

      // Relatório de estágio
      sNomeArq := 'RELESTAG';
      sArquivos.Add(FORINI.Diretorio + 'EMail\' + sNomeArq + '.doc');
      MontaFichaEstudante(sNomeArq);

      // manda e-mail para o estudante
      FOREML := TFOREML.Create(Self);
      FOREML.RegistrarEmail(sAssunto, sPara, sCopiaOculta, sCorpo, sArquivos, 'E-Mail do Responsável pela Empresa:');
      Screen.Cursor := crDefault;
      FOREML.ShowModal;

      // apaga os arquivos
      for i := 0 to sArquivos.Count - 1 do
        DeleteFile(sArquivos[i]);

      Next;
    end;

    First;
    EnableControls;
  end;

end;

procedure TFORSAVD.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORSAVD.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));

    if meData.Text <> '  /  /    ' then
    begin
      AbreQuery;
    end;
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSAVD.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORSAVD.AbreQuery;
var
  DataPesquisa, DataInicial: TDateTime;
begin
  // calcula a data de pesquisa (3 meses atrás)
  DataInicial := StrToDate(meData.Text);
  DataPesquisa := IncMonth(DataInicial, -3);

  with DmDta.quAvalDesemp do
  begin
    Close;
    Sql.Clear;

    // pela data de início (TCE)
        // pela data de início (TCE)
    Sql.Add('select');
    Sql.Add('  m.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, ');
    Sql.Add('  t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_avaliacao,');
    Sql.Add('  m.emp_telefone, f.efu_nome emp_nomerespent, f.efu_email');
    Sql.Add('from');
    Sql.Add('  tce t, Estudante e, Empresa m, EmpFuncionario F');
    Sql.Add('where');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.tce_dataini   = :dataPesquisa and');
    Sql.Add('  t.tce_avaliacao is null and');
    Sql.Add('  t.tce_situacao  = ''0'' and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  m.emp_cod = f.emp_cod and');
    Sql.Add('  m.emp_respent = f.func_cod');

    If edEmpCod.Text <> '' then
      Sql.Add('  and t.emp_cod = ' + edEmpCod.Text);

    Sql.Add('union');

    // pela data de avaliação (TCE)
    Sql.Add('select');
    Sql.Add('  m.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, ');
    Sql.Add('  t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_avaliacao,');
    Sql.Add('  m.emp_telefone, f.efu_nome emp_nomerespent, f.efu_email');
    Sql.Add('from');
    Sql.Add('  tce t, Estudante e, Empresa m, EmpFuncionario F');
    Sql.Add('where');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.tce_avaliacao = :dataPesquisa and');
    Sql.Add('  t.tce_avaliacao is not null and');
    Sql.Add('  t.tce_situacao  = ''0'' and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  m.emp_cod = f.emp_cod and');
    Sql.Add('  m.emp_respent = f.func_cod');

    If edEmpCod.Text <> '' then
      Sql.Add('  and t.emp_cod = ' + edEmpCod.Text);

    Sql.Add('union');

    // pela data de início (TA)
    Sql.Add('select');
    Sql.Add('  m.emp_nome, e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email,');
    Sql.Add('  tce.tce_dataini, t.tpr_datafim, tce.tce_situacao, tce.tce_avaliacao,');
    Sql.Add('  m.emp_telefone, f.efu_nome emp_nomerespent, f.efu_email');
    Sql.Add('from');
    Sql.Add('  tce, tceAditivo t, Estudante e, Empresa m, EmpFuncionario F');
    Sql.Add('where');
    Sql.Add('  tce.est_cod = e.est_cod and');
    Sql.Add('  t.tce_cod = tce.tce_cod and');
    Sql.Add('  tce.tce_dataini = :dataPesquisa and');
    Sql.Add('  tce.tce_avaliacao is null and');
    Sql.Add('  tce.tce_situacao <> ''7'' and');
    Sql.Add('  tce.tce_situacao = t.prg_cod and');
    Sql.Add('  tce.tce_situacao <> ''0'' and');
    Sql.Add('  tce.emp_cod = m.emp_cod and');
    Sql.Add('  m.emp_cod = f.emp_cod and');
    Sql.Add('  m.emp_respent = f.func_cod');

    If edEmpCod.Text <> '' then
      Sql.Add('  and tce.emp_cod = ' + edEmpCod.Text);

    Sql.Add('order by');
    Sql.Add('  m.emp_nome, e.est_nome');
    ParamByName('dataPesquisa').value := DataPesquisa;
    Open;
    edTotalEstagiarios.Text := IntToStr(RecordCount);
  end;
end;

procedure TFORSAVD.btAtualizarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  // atualiza a data de todos os estudantes
  with DmDta.quAvalDesemp do
  begin
    DisableControls;
    First;

    // percorre os TCE's atualizando a data de avaliação com a data do relatório
    while not Eof do
    begin
      quAtualizaAval.ParamByName('tce_avaliacao').AsDateTime := StrToDateTime(meData.Text);
      quAtualizaAval.ParamByName('tce_cod').AsInteger        := FieldByName('tce_cod').AsInteger;
      quAtualizaAval.ExecSql;
      Next;
    end;

    First;
    EnableControls;
  end;
  Screen.Cursor := crDefault;

  MSGAVISO('Data de avaliação dos TCE''s atualizada com sucesso!');
end;

procedure TFORSAVD.MontaFichaEmpresa(NomeArq: String);
var
  Var1: Variant;
begin
  var1 := CreateOleObject('Word.basic');
  var1.FileOpen(FORINI.Diretorio+'RelEmpresa.doc');

  Var1.CenterPara;
  Var1.Bold();
  Var1.Insert('RELATÓRIO DE AVALIAÇÃO DE DESEMPENHO'+#13);
  Var1.Bold();
  Var1.Insert('(A SER PREENCHIDO PELA EMPRESA)'+#13);

  Var1.JustifyPara;
  Var1.Insert('A Avaliação de Desempenho deve ocorrer com a participação do Supervisor do Estágio ');
  Var1.Insert('e do Estagiário para que sejam estabelecidas as metas para melhoria de conduta e ajuste ');
  Var1.Insert('de outros fatores importantes para o desempenho do mesmo. '+#13+#13);

  Var1.TableInsertTable(NumRows := 1, NumColumns := 1, Format := 16);
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('1. ' + #9 + 'Nome da Empresa: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('emp_nome').Text+#13);
  Var1.Bold;
  Var1.Insert('2. '+#9 + 'Telefone: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('FoneFormatado').Text+#13);
  Var1.Bold;
  Var1.Insert('3.	Nome Completo do Estagiário: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('est_nome').Text+#13);
  Var1.Bold;
  Var1.Insert('4.	Nome da Pessoa para Contato: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('emp_nomerespent').Text+#13);
  Var1.Bold;
  Var1.Insert('5.	Data do Início do Estágio: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('tce_dataini').Text);
  Var1.Bold;
  Var1.Insert(#9 + 'Data de Previsão de Término do Estágio: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('tce_datafim').Text+#13);

  Var1.FileSaveAs(FORINI.Diretorio + 'EMail\' + NomeArq + '.doc');
  Var1.FileClose;
end;

procedure TFORSAVD.MontaFichaEstudante(NomeArq: String);
var
  Var1: Variant;

begin
  var1 := CreateOleObject('Word.basic');
  var1.FileOpen(FORINI.Diretorio+'RelEstagiario.doc');

  Var1.CenterPara;
  Var1.Bold();
  Var1.Insert('RELATÓRIO DE ESTAGIÁRIO'+#13);
  Var1.Bold();
  Var1.Insert('(A SER PREENCHIDO PELO ESTAGIÁRIO)'+#13);

  Var1.JustifyPara;

  Var1.TableInsertTable(NumRows := 1, NumColumns := 1, Format := 16);
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Font('Arial', 9);
  Var1.Insert('1. ' + #9 + 'Nome da Empresa: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('emp_nome').Text+#13);
  Var1.Font('Arial', 9);
  Var1.Bold;
  Var1.Insert('2. '+#9 + 'Telefone: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('FoneFormatado').Text+#13);
  Var1.Bold;
  Var1.Font('Arial', 9);
  Var1.Insert('3.	Nome Completo do Estagiário: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('est_nome').Text+#13);
  Var1.Bold;
  Var1.Font('Arial', 9);
  Var1.Insert('4.	Nome da Pessoa para Contato: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('emp_nomerespent').Text+#13);
  Var1.Bold;
  Var1.Font('Arial', 9);
  Var1.Insert('5.	Data do Início do Estágio: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('tce_dataini').Text);
  Var1.Bold;
  Var1.Insert(#9 + 'Data de Previsão de Término do Estágio: ');
  Var1.Bold;
  Var1.Insert(DmDta.quAvalDesemp.FieldByName('tce_datafim').Text+#13);

  Var1.FileSaveAs(FORINI.Diretorio + 'EMail\' + NomeArq + '.doc');
  Var1.FileClose;
end;

procedure TFORSAVD.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quAvalDesemp, Caption);
  Screen.Cursor := crDefault;
end;

end.
