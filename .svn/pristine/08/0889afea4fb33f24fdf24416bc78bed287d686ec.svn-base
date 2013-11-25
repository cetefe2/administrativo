unit TPOENC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls,
  DBTables, Db, QRExport, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit;

type
  TFORENC = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Bevel2: TBevel;
    quPrincipal1: TQuery;
    usPrincipal1: TUpdateSQL;
    Panel3: TPanel;
    Bevel3: TBevel;
    btImprimirCarta: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Notebook1: TNotebook;
    DBGrid2: TDBGrid;
    Bevel1: TBevel;
    btExcluir: TSpeedButton;
    btNovo: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    edDataEnc: TMaskEdit;
    Bevel4: TBevel;
    btEnter: TBitBtn;
    btFechar: TSpeedButton;
    cboResultado: TComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    btRetornoReprovados: TSpeedButton;
    btEncaminhamento: TSpeedButton;
    quEncaminh: TQuery;
    Label1: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    qryEntrevistador: TQuery;
    qryEntrevistadorNome: TStringField;
    qryEntrevistadorFunc_cod: TIntegerField;
    dsEntrevistador: TDataSource;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cbSuper: TDBLookupComboBox;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataEncChange(Sender: TObject);
    procedure btImprimirCartaClick(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRetornoReprovadosClick(Sender: TObject);
    procedure btEncaminhamentoClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure quPrincipal1BeforeEdit(DataSet: TDataSet);
    procedure quPrincipal1BeforeInsert(DataSet: TDataSet);
  private
    PrimeiroRegistro, ultimoRegistro: Integer;
    nomeChave, nomeTabela: string;

    { Private declarations }
    procedure InicializaDados();
    procedure estadoNavegando();
    procedure estadoEditando();
    procedure LimpaCampos();
    procedure AtualizaDados;
  public
    status: integer;
    { Public declarations }
    procedure EncaminharEntrevista(estCod: Integer; estNome: string; DataHora: TDateTime);
  end;

var
  FORENC: TFORENC;

implementation

uses TPODTA, TPOFNC, TPOINI, TPOEST, TPOEOB, TPOCST,
  TPOEML, ComObj, untLibera;

{$R *.DFM}

procedure TFORENC.FormCreate(Sender: TObject);
var
  posicao: tbookmark;
begin
  UltimoRegistro := -1;
  PrimeiroRegistro := -1;
  nomeChave := 'vag_cod';
  nomeTabela := 'Encaminhamento';
  quPrincipal1 := DmDta.quEncaminhamento;
  DmDta.dsEncaminhamento.DataSet := quPrincipal1;
 // posicao := dmdta.quvaga.GetBookmark;
 // dmdta.quvaga.close;
 // dmdta.quvaga.open;
 // dmdta.quvaga.GotoBookmark(posicao);
  qryentrevistador.Close;
  qryentrevistador.ParamByName('vaga').AsInteger := dmdta.quVagaVag_cod.AsInteger;
  qryentrevistador.Open;
end;

procedure TFORENC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quVagaCurso.Close;
  quPrincipal1.Close;
  DmDta.quAgendaEst.Close;
  Action := caFree;
end;

procedure TFORENC.estadoEditando;

  procedure MostraDados;
  begin
    Screen.Cursor := crHourGlass;
    if not quPrincipal1.FieldByName('eva_dataenc').IsNull then
      edDataEnc.Text := quPrincipal1.FieldByName('eva_dataenc').Text;
    if (not quPrincipal1.FieldByName('eva_resultado').IsNull) and
      (quPrincipal1.FieldByName('eva_resultado').Value <> '') then
      cboResultado.ItemIndex := quPrincipal1.FieldByName('eva_resultado').AsInteger;
    Screen.Cursor := crDefault;
  end;

begin
  btNovo.Enabled := false;
  btExcluir.Enabled := false;
  btSalvar.Enabled := true;
  btCancelar.Enabled := true;

  //if quPrincipal1.State = dsEdit then
  MostraDados();
end;

procedure TFORENC.estadoNavegando;
begin
  btNovo.Enabled := true;
  btExcluir.Enabled := not quPrincipal1.IsEmpty;
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;
end;

procedure TFORENC.InicializaDados;
begin
  quPrincipal1.FieldByName('vag_cod').Text := DBEdit1.Text;
  edDataEnc.Text := FormatDateTime('dd/mm/yyyy', Date);

  cboResultado.ItemIndex := 0;
end;

procedure TFORENC.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if StrToInt(DBEdit2.Text) = StrToInt(DBEdit3.Text) then
  begin
    MSGERRO('Vaga(s) já preenchida(s)!');
    Exit;
  end;

  DmDta.IncluirRegistro(quPrincipal1);
  Notebook1.PageIndex := 1;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select * from empresa where emp_cod = ' + dmdta.quVagaEmp_cod.Text);
    Open;
    if eof = false then
    begin
      dmdta.quEncaminhamentoenderecoenc.AsString := fieldbyname('Emp_enderecoenc').AsString;
      dmdta.quEncaminhamentobairroenc.asstring := fieldbyname('Emp_bairroenc').AsString;
      dmdta.quEncaminhamentonumendenc.AsString := fieldbyname('Emp_numendenc').AsString;
      dmdta.quEncaminhamentocjtoendenc.AsString := fieldbyname('Emp_bairroenc').AsString;
      dmdta.quEncaminhamentocidadeenc.AsString := fieldbyname('Emp_cidadeenc').AsString;
      dmdta.quEncaminhamentotelefoneenc.AsString := fieldbyname('Emp_Telefoneenc').AsString;
    end;
    close;
    free;
  end;

end;

procedure TFORENC.btExcluirClick(Sender: TObject);
begin
  if quPrincipal1.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      btEnter.SetFocus;
      DmDta.ExcluirRegistro(quPrincipal1);
      estadoNavegando;
    except
    end;
  end;
end;

procedure TFORENC.btSalvarClick(Sender: TObject);
var
  posicao: tbookmark;
  pesquisa: tquery;
  alterado: byte;
  procedure AtualizaEstagiario(Situacao: string);
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Estudante set est_situacao = ''' + Situacao + ''' where est_cod = ' + quPrincipal1.FieldByname('est_cod').Text);
      ExecSql;
      Free;
    end;
  end;
begin
  alterado := 0;
  if status <> 2 then
  begin
    if cboresultado.ItemIndex = 2 then
    begin
       //showmessage('Não é possível gravar este resultado nesta tela');
      if frmlibera.showmodal <> mrok then
      begin
        showmessage('Você não tem Permissão para trocar este Status nessa tela!!');
        exit;
      end;
      alterado := 1;
      AtualizaEstagiario('S');
    end;
  end
  else
  begin
    if cboresultado.ItemIndex <> 2 then
    begin
       //showmessage('Não é possível gravar este resultado nesta tela');
      if frmlibera.showmodal <> mrok then
      begin
        showmessage('Você não tem Permissão para trocar este Status nessa tela!!');
        exit;
      end;
      alterado := 1;
      AtualizaEstagiario('N');

    end
  end;
  if edDataEnc.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data do encaminhamento!');
    edDataEnc.SetFocus;
  end
  else if DBedit7.Text = '' then
  begin
    MSGERRO('Selecione o estudante a ser encaminhado!');
    DBEdit7.SetFocus;
  end
  else if (DBEdit7.Text <> '') and (DBEdit12.Text = '') then
  begin
    MSGERRO('Estudante sem curso definido!');
    DBEdit7.SetFocus;
  end
  else
  begin
    if quPrincipal1.State in [dsInsert, dsEdit] then
    begin
      try
        btEnter.SetFocus;
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal1);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
    estadoNavegando;
    Notebook1.PageIndex := 0;
    if alterado = 1 then
      with TQuery.Create(nil) do
      begin
        pesquisa := tquery.create(nil);
        pesquisa.DatabaseName := DATABASE_NAME;
        pesquisa.close;
        pesquisa.SQL.Clear;
        pesquisa.sql.Text := 'Select count(*) total from Encaminhamento where eva_resultado = 2 and vag_cod =' + quPrincipal1.FieldByname('vag_cod').Text;
        pesquisa.Open;
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Update Vaga set vag_qtdepreenc =' + InttoStr(pesquisa.FieldByName('total').AsInteger) + ' where vag_cod = ' + quPrincipal1.FieldByname('vag_cod').Text);
        ExecSql;
        Free;
        posicao := dmdta.quvaga.GetBookmark;
        dmdta.quvaga.close;
        dmdta.quvaga.open;
        dmdta.quvaga.GotoBookmark(posicao);
      end;
  end;
end;

procedure TFORENC.btCancelarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.CancelarRegistro(quPrincipal1);
  Notebook1.PageIndex := 0;
  estadoNavegando;
end;

procedure TFORENC.AtualizaDados;
begin
  quPrincipal1.fieldByName('eva_resultado').Value := cboResultado.ItemIndex;
  if edDataEnc.Text <> '  /  /    ' then
    quPrincipal1.fieldByName('eva_dataenc').Value := edDataEnc.Text;
end;

procedure TFORENC.FormShow(Sender: TObject);
begin
  with DmDta.quVagaCurso do
  begin
    Close;
    ParamByName('vag_cod').Text := DBEdit1.Text;
    Open;
  end;
  with quPrincipal1 do
  begin
    Close;
    ParamByName('vag_cod').Text := DBEdit1.Text;
    Open;
  end;

  estadoNavegando;
end;

procedure TFORENC.FormDestroy(Sender: TObject);
begin
 // DmDta.dsEncaminhamento.DataSet := DmDta.quEncaminhamento;
end;

procedure TFORENC.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid2 then
    DBGrid2DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORENC.DBGrid2DblClick(Sender: TObject);
begin
  if quPrincipal1.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Edição cancelada!');
    Exit;
  end;

  Notebook1.PageIndex := 1;
  status := quprincipal1.fieldbyname('eva_resultado').AsInteger;
  EstadoEditando;
end;

procedure TFORENC.btFecharClick(Sender: TObject);
begin
  // DmDta.dsEncaminhamento.DataSet := DmDta.quEncaminhamento;
  Close;
end;

procedure TFORENC.DBEdit7DblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;
  if FOREST.F2Codigo <> '' then
  begin
    if DmDta.quEncaminhamento.Active then
    begin
      if not (DmDta.quEncaminhamento.State in [dsInsert, dsEdit]) then dmDta.quEncaminhamento.Edit;
      DmDta.quEncaminhamentoEST_cod.Text := FOREST.F2Codigo;
      DmDta.quEncaminhamentoEST_NOME.Text := FOREST.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREST.Free;
end;

procedure TFORENC.DBEdit7Exit(Sender: TObject);

  function VerificaEncaminhamento(): Boolean;
  //var vagaAno, AnoAtual: Integer;
  begin
    Result := True;

    // Verifica se o curso do aluno corresponde ao da vaga
    if (not DmDta.quVagaCurso.Locate('cur_cod', DmDta.quEstcur_cod.Value, [])) and (DmDta.quVagaCurso.RecordCount > 0) then
    begin
      if not MSGSIMNAO('Curso do estudante diferente do curso da vaga. Deseja encaminhá-lo mesmo assim?') then
      begin
        Result := False;
        exit;
      end;
    end;

    // Verifica o período do curso em relação ao do aluno
    {if (not DmDta.quEstPcu_peratual.IsNull) and
       (DmDta.quEstPcu_peratual.Value <> '') then
    begin
      case DmDta.quEstPcu_peratual.AsInteger of
        0: // Ano
        begin
          AnoAtual := DmDta.quEstPcu_anoatual.Value;

          // Ano em curso
          if DmDta.quVagaCursoVcu_periodo.IsNull then
            vagaAno := 0
          else
            vagaAno := DmDta.quVagaCursoVcu_periodo.AsInteger;


          // Valida o ano do estudante
          if (anoAtual <> vagaAno) then
          begin
            if not MSGSIMNAO('Ano atual do estudante não corresponde aos requisitops da vaga. Deseja encaminhá-lo mesmo assim?') then
            begin
              Result := False;
              exit;
            end;
          end;
        end;

        1: // Mês
        begin
          if (DmDta.quEstPcu_anoatual.Value mod 2) = 0 then
            AnoAtual := DmDta.quEstPcu_anoatual.Value div 2
          else
            AnoAtual := (DmDta.quEstPcu_anoatual.Value div 2) + 1;

          // Ano em curso
          if DmDta.quVagaCursoVcu_periodo.IsNull then
            vagaAno := 0
          else
            vagaAno := DmDta.quVagaCursoVcu_periodo.AsInteger;

          // Valida o ano do estudante
          if (anoAtual <> VagaAno) then
          begin
            if not MSGSIMNAO('Ano atual do estudante não corresponde aos requisitos da vaga. Deseja encaminhá-lo mesmo assim?') then
            begin
              Result := False;
              exit;
            end;
          end;
        end;
      end;
    end;}
  end;

begin
  if (DBEdit7.Text <> '') then
  begin
    if DmDta.quEncaminhamento.Active then
    begin
      if not (DmDta.quEncaminhamento.State in [dsInsert, dsEdit]) then
        DmDta.quEncaminhamento.Edit;
      with DmDta.quEst do
      begin
        Close;
        ParamByName('est_cod').Text := DBEdit7.Text;
        Open;

        // Busca perfil (curso)
        Screen.Cursor := crHourGlass;

        if DmDta.quEstudanteEST_SITUACAO.Value = 'S' then
        begin
          MSGERRO('Estudante já estagiando!');
          DBEdit7.SetFocus;
          DBEdit8.Text := '';
          DBEdit10.Text := '';
          DBEdit9.Text := '';
          DBEdit12.Text := '';
          DBEdit13.Text := '';
          DBEdit14.Text := '';
          DmDta.quEncaminhamentoest_email.Text := '';
          DmDta.quEncaminhamentopcu_peratual.Value := '';
        end
        else
        begin
          DBEdit8.Text := DmDta.quEstEst_nome.AsString;
          DBEdit10.Text := DmDta.quEstInst_cod.AsString;
          DBEdit9.Text := DmDta.quEstinst_nome.Value;
          DBEdit12.Text := DmDta.quEstcur_cod.AsString;
          DBEdit13.Text := DmDta.quEstcur_nome.Value;
          DBEdit14.Text := DmDta.quEstpcu_anoatual.AsString;
          DmDta.quEncaminhamentoest_email.Text := DmDta.quEstEst_email.Text;
          DmDta.quEncaminhamentopcu_peratual.Value := DmDta.quEstPcu_peratual.AsString;
        end;

        Screen.Cursor := crDefault;
      end;

      with DmDta.quAgendaEst do
      begin
        Close;
        ParamByName('est_cod').Text := DBEdit7.Text;
        Open;
        DBEdit16.Text := FieldByName('age_data').Text;
      end;
    end;
  end
  else
  begin
    if DmDta.quEncaminhamento.Active then
    begin
      if not (DmDta.quEncaminhamento.State in [dsInsert, dsEdit]) then
        DmDta.quEncaminhamento.Edit;
      DBEdit8.Text := '';
      DBEdit10.Text := '';
      DBEdit9.Text := '';
      DBEdit12.Text := '';
      DBEdit13.Text := '';
      DBEdit14.Text := '';
      DmDta.quEncaminhamentoest_email.Text := '';
      DmDta.quEncaminhamentopcu_peratual.Value := '';
    end;
  end;
end;

procedure TFORENC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_Insert: if Notebook1.PageIndex = 0 then btNovoClick(Sender);
    vk_Delete: if ActiveControl = DBGrid2 then btExcluirClick(Sender);
    vk_F3: if Notebook1.PageIndex = 1 then btSalvarClick(Sender);
    vk_F5: if Notebook1.PageIndex = 1 then btCancelarClick(Sender);
    vk_F4: Close;
    vk_F6: if Notebook1.PageIndex = 0 then btImprimirCartaClick(Sender);
    //vk_F7:     if Notebook1.PageIndex = 0 then btImprimirLaudoClick(Sender);
    vk_F8: if Notebook1.PageIndex = 0 then btRetornoReprovadosClick(Sender);
  end;
end;

procedure TFORENC.edDataEncChange(Sender: TObject);
begin
  if not (quPrincipal1.State in [dsInsert, dsEdit]) then
    quPrincipal1.Edit;
end;

procedure TFORENC.btImprimirCartaClick(Sender: TObject);
var
  var1: Variant;
  EndAux, ValueTel, ValueTel2: string;
begin
  if DmDta.quEncaminhamento.IsEmpty then
  begin
    MSGAVISO('Não já estudantes encaminhados para esta oportunidade!');
    exit;
  end;

  with quEncaminh do
  begin
    Sql.Clear;
    sql.Add('select');
    sql.Add('  e.*, i.inst_nome, c.cur_nome, m.emp_enderecoenc, m.emp_bairroenc, m.emp_numendenc, m.emp_cjtoendenc, m.emp_nome, ');
    sql.add('  m.emp_cidadeenc, m.emp_telefoneenc, F.efu_nome emp_nomerespent, m.emp_site, n.*,');
    sql.add('  v.vag_setor, v.vag_dataabertura, v.vag_qtde, v.vag_respselecao, v.vag_observacao, f.efu_email');
    sql.Add('from');
    sql.Add('  estudante e, instituicao i, curso c, empresa m, encaminhamento n, Vaga v, EmpFuncionario F');
    sql.Add('where');
    sql.Add('  v.emp_cod = m.emp_cod and');
    sql.Add('  n.vag_cod = v.vag_cod and');
    sql.Add('  n.est_cod = e.est_cod and');
    sql.add('  e.inst_cod = i.inst_cod and');
    sql.Add('  n.est_cod = :est_cod and');
    sql.add('  e.cur_cod = c.cur_cod and');
    sql.Add('  n.vag_cod = :vag_cod and');
    Sql.Add('  m.emp_cod *= F.emp_cod and');
    Sql.Add('  m.emp_respent *= F.func_cod');
    ParamByName('est_cod').Value := DmDta.quEncaminhamentoest_cod.Value;
    ParamByName('vag_cod').Value := DmDta.quEncaminhamentovag_cod.Value;
    Open;
  end;

  var1 := CreateOleObject('Word.basic');
  var1.FileNew(FORINI.Diretorio + 'CartaEnca.dot');



  var1.editbookmark('data', 0, 0, 0, 1);
  Var1.Insert(dtcompleta(false, FormatDateTime('dd/mm/yyyy', Date())));



  // endereço
  EndAux := quEncaminh.FieldByName('est_endereco').Text;
  if quEncaminh.FieldByName('est_numend').Text <> '' then
    EndAux := EndAux + ' ' + quEncaminh.FieldByName('est_numend').Text;
  if quEncaminh.FieldByName('est_apto').Text <> '' then
    EndAux := EndAux + ' - APTO. ' + quEncaminh.FieldByName('est_apto').Text;
  if quEncaminh.FieldByName('est_bloco').Text <> '' then
    EndAux := EndAux + ' - BLOCO ' + quEncaminh.FieldByName('est_bloco').Text;

  ValueTel := quEncaminh.FieldByName('est_fone1').Text;
  ValueTel2 := quEncaminh.FieldByName('est_fone2').Text;

  // Insere aqui o estudante
  var1.editbookmark('estudante', 0, 0, 0, 1);

  Var1.Insert(quEncaminh.FieldByName('est_nome').Text);
  var1.editbookmark('endereco', 0, 0, 0, 1);
  Var1.Insert(EndAux);

  var1.editbookmark('bairro', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('est_bairro').Text);

  var1.editbookmark('cidade', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('est_cidade').Text);
 var1.editbookmark('telefone', 0, 0, 0, 1);
  if ValueTel <> '' then
    Var1.Insert('(' + Copy(ValueTel, 1, 2) + ') ' + Copy(ValueTel, 3, 4) + '-' + Copy(ValueTel, 7, 4));

  var1.editbookmark('celular', 0, 0, 0, 1);
  if ValueTel2 <> '' then
    Var1.Insert('(' + Copy(ValueTel2, 1, 2) + ') ' + Copy(ValueTel2, 3, 4) + '-' + Copy(ValueTel2, 7, 4));

  var1.editbookmark('email', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('est_email').Text);

  //instituicao
  var1.editbookmark('instituicao', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('inst_nome').Text);

  var1.editbookmark('curso', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('cur_nome').Text);

  var1.editbookmark('ano', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('pcu_anoatual').Text + 'º Ano');

  var1.editbookmark('selecionador', 0, 0, 0, 1);
  if DmDta.quVagaselecionador.AsString <> '' then
    Var1.Insert(DmDta.quVagaselecionador.Text )
  else
    Var1.Insert(DmDta.quVagavag_respselecao.Text );


  // Insere aqui a empresa
  // endereço
  EndAux := quEncaminh.FieldByName('emp_enderecoenc').Text;
  if quEncaminh.FieldByName('emp_numendenc').Text <> '' then
    EndAux := EndAux + ' ' + quEncaminh.FieldByName('emp_numendenc').Text;
  if quEncaminh.FieldByName('emp_cjtoendenc').Text <> '' then
    EndAux := EndAux + ' - CJ. ' + quEncaminh.FieldByName('emp_cjtoendenc').Text;

  ValueTel := quEncaminh.FieldByName('emp_telefoneenc').Text;


  var1.editbookmark('empresa', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('emp_nome').Text);

  var1.editbookmark('enderecoempresa', 0, 0, 0, 1);
  Var1.Insert(EndAux);

  var1.editbookmark('bairroempresa', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('emp_bairroenc').Text);
  var1.editbookmark('cidadeempresa', 0, 0, 0, 1);
  Var1.Insert(quEncaminh.FieldByName('emp_cidadeenc').Text);
  var1.editbookmark('telefoneempresa', 0, 0, 0, 1);
  if ValueTel <> '' then
    Var1.Insert('(' + Copy(ValueTel, 1, 2) + ') ' + Copy(ValueTel, 3, 4) + '-' + Copy(ValueTel, 7, 4));

  var1.editbookmark('contatoempresa', 0, 0, 0, 1);
  
  Var1.Insert(cbsuper.Text);

  var1.Appshow;
end;

procedure TFORENC.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then DBEdit7DblClick(Sender);
end;

procedure TFORENC.LimpaCampos;
begin
  edDataEnc.Clear;
end;

procedure TFORENC.EncaminharEntrevista(estCod: Integer; estNome: string;
  DataHora: TDateTime);
begin
  Screen.Cursor := crHourGlass;
  // encaminha direto o estudante
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select e.*, t.est_nome, I.inst_nome, C.cur_nome from Encaminhamento E, Estudante T, ');
    Sql.Add('Instituicao I, Curso C where e.est_cod = t.est_cod and E.inst_cod = I.inst_cod and E.cur_cod = C.cur_cod and e.vag_cod = ' + DmDta.quVagavag_cod.Text);
    Sql.Add('and Est_cod = ' + IntToStr(estcod));
    Open;

    // verifica se o estudante já não foi encaminhado antes
    if IsEmpty then
    begin
      // cria um encaminhamento para o estudante
      if not DmDta.quVagaCurso.Active then
      begin
        DmDta.quVagaCurso.ParamByName('vag_cod').Text := DBEdit1.Text;
        DmDta.quVagaCurso.Open;
      end;
      if not DmDta.quEncaminhamento.Active then
      begin
        DmDta.quEncaminhamento.ParamByName('vag_cod').Text := DBEdit1.Text;
        DmDta.quEncaminhamento.Open;
      end;
      DmDta.IncluirRegistro(quPrincipal1);
      InicializaDados;

      // Salva o registro
      if EstCod <> 0 then
      begin
        DmDta.quEncaminhamentoEst_cod.AsInteger := Estcod;
        // salva os dados do estudante, caso já seja um estudante cadastrado
        DBEdit7Exit(nil);
      end;
      DmDta.quEncaminhamentoest_nome.AsString := EstNome;
      DmDta.quEncaminhamentoeva_agedata.AsDateTime := DataHora;
      cboResultado.ItemIndex := 0;
      AtualizaDados();
      DmDta.SalvarRegistro(quPrincipal1);
    end;

    Close;
    Free;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFORENC.btRetornoReprovadosClick(Sender: TObject);
var
  sPara, sAssunto: string;
  sCorpo: TStringList;
  i: Integer;

begin
  with DmDta.quEncaminhamento do
  begin
    if Isempty then
    begin
      MSGAVISO('Não já estudantes encaminhados para esta oportunidade!');
      exit;
    end;

    DisableControls;
    First;

    while not Eof do
    begin
      // se o estudante não foi APROVADO e tiver e-mail, entra na rotina de envio de retorno
      // (FieldByName('eva_resultado').AsString <> '2')
      if ((FieldByName('eva_resultado').AsString = '1') and ((FieldByName('eva_dataret').AsString = ''))) then
     // or  ((FieldByName('eva_resultado').AsString <> '2') and ((DmDTA.quVagaVag_qtdepreenc.AsInteger + DmDTA.quVagaVag_qtdecancel.AsInteger) >= DmDTA.quVagaVag_qtde.AsInteger) and  ((FieldByName('eva_dataret').AsString = ''))) then
      begin
        if (FieldByName('est_email').AsString = '') then
        begin
          MSGAVISO('Estudante ' + DmDta.quEncaminhamentoest_nome.Text + ' sem e-mail cadastrado!');
          Next;
          continue;
        end;
        // e-mail do estudante
        sPara := DmDta.quEncaminhamentoest_email.Text;
        // corpo do e-mail
        sCorpo := TStringList.Create();
        sCorpo.LoadFromFile(FORINI.Diretorio + 'CorpoReprovados.txt');

        // substitui o nome do estudante
        for i := 0 to sCorpo.count - 1 do
        begin
          // substitui o nome do estudante
          if Pos('<ESTUDANTE>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<ESTUDANTE>', DmDta.quEncaminhamentoest_nome.Text, []);

          // substitui o curso da vaga
          if Pos('<CURSO>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<CURSO>', DmDta.quVagaVag_setor.Text, []);

          // substitui a empresa da vaga
          if Pos('<EMPRESA>', sCorpo[i]) > 0 then
            sCorpo[i] := stringReplace(sCorpo[I], '<EMPRESA>', DmDta.quVagaemp_nome.Text, []);
        end;

        // assunto
        sAssunto := 'Retorno de Oportunidade';

        // manda e-mail para o estudante
        FOREML := TFOREML.Create(Self);
        FOREML.RegistrarEmail(sAssunto, sPara, '', sCorpo, nil, 'E-Mail do Estudante:');
        Screen.Cursor := crDefault;
        if FOREML.ShowModal = Mrok then
        begin
          quPrincipal1.Edit;
          quprincipal1.FieldByName('eva_dataret').Value := now;
          DMDta.SalvarRegistro(quPrincipal1);
        end;
      end;

      Next;
    end;

    First;
    EnableControls;
  end;
end;

procedure TFORENC.btEncaminhamentoClick(Sender: TObject);
var
  sResponsavel, sPara, sAssunto: string;
  sCorpo, sCabecalho, sRodape, sEstudantes: TStringList;
  i: Integer;

begin
  with DmDta.quEncaminhamento do
  begin
    if Isempty then
    begin
      MSGAVISO('Não há estudantes encaminhados para esta oportunidade!');
      exit;
    end;

    InputQuery('Responsável', 'Responsável na Empresa', sResponsavel);
    sResponsavel := PrimeiraMaiuscula(sResponsavel, True);

    DisableControls;
    First;
    i := 0;
    //  verificar geracao de email joilson
    sEstudantes := TStringList.Create();
    while not Eof do
    begin
      // monta
      inc(i);
      sEstudantes.Add(IntToStr(i) + ' - ' + PrimeirasMaiusculas(FieldByName('est_nome').Text) + ' - ' + PrimeirasMaiusculas(FieldByName('cur_nome').Text) +
        ' - ' + FieldByName('pcu_anoatual').Text + 'º ' + FieldByName('DescPeriodo').Text +
        ' - ' + PrimeirasMaiusculas(FieldByName('Complemento').Text));
      sEstudantes.Add('');
      next;
    end;

    EnableControls;
    First;

    // e-mail da empresa
    sPara := '';

    // corpo do e-mail
    sCabecalho := TStringList.Create();
    sCabecalho.LoadFromFile(FORINI.Diretorio + 'CabecalhoEncaminhados.txt');

    // corpo do e-mail
    sRodape := TStringList.Create();
    sRodape.LoadFromFile(FORINI.Diretorio + 'RodapeEncaminhados.txt');

    // acrescenta tudo no corpo
    sCorpo := TStringList.Create();
    for i := 0 to sCabecalho.count - 1 do
      sCorpo.Add(sCabecalho[i]);
    for i := 0 to sEstudantes.count - 1 do
      sCorpo.Add(sEstudantes[i]);
    for i := 0 to sRodape.count - 1 do
      sCorpo.Add(sRodape[i]);

    // substitui o nome do estudante
    for i := 0 to sCorpo.count - 1 do
    begin
      // Responsável pela vaga
      if Pos('<RESPONSAVEL>', sCorpo[i]) > 0 then
        sCorpo[i] := stringReplace(sCorpo[I], '<RESPONSAVEL>', sResponsavel, []);

      // substitui o nome do responsável
      if Pos('<RESPSELECAO>', sCorpo[i]) > 0 then
        sCorpo[i] := stringReplace(sCorpo[I], '<RESPSELECAO>', PrimeiraMaiuscula(DmDta.quVagavag_respselecao.Text, True), []);
    end;

    // assunto
    sAssunto := 'Encaminhamento de Candidatos - CETEFE';

    // manda e-mail para o estudante
    FOREML := TFOREML.Create(Self);
    FOREML.RegistrarEmail(sAssunto, sPara, '', sCorpo, nil, 'E-Mail da Empresa:');
    Screen.Cursor := crDefault;
    FOREML.ShowModal;
  end;
end;

procedure TFORENC.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORENC.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 32 then
    if DmDTA.dsEncaminhamento.State in [dsedit, dsinsert] then
      DmDTA.quencaminhamentoeva_dataret.Value := date();

end;

procedure TFORENC.quPrincipal1BeforeEdit(DataSet: TDataSet);
begin
  status := quprincipal1.fieldbyname('eva_resultado').AsInteger;
end;

procedure TFORENC.quPrincipal1BeforeInsert(DataSet: TDataSet);
begin
  status := quprincipal1.fieldbyname('eva_resultado').AsInteger;
end;

end.



  if DmDta.quEncaminhamento.IsEmpty then
  begin
    MSGAVISO('Não já estudantes encaminhados para esta oportunidade!');
    exit;
  end;

  with quEncaminh do
  begin
    Sql.Clear;
    sql.Add('select');
    sql.Add('  e.*, i.inst_nome, c.cur_nome, m.emp_enderecoenc, m.emp_bairroenc, m.emp_numendenc, m.emp_cjtoendenc, m.emp_nome, ');
    sql.add('  m.emp_cidadeenc, m.emp_telefoneenc, F.efu_nome emp_nomerespent, m.emp_site, n.*,');
    sql.add('  v.vag_setor, v.vag_dataabertura, v.vag_qtde, v.vag_respselecao, v.vag_observacao, f.efu_email');
    sql.Add('from');
    sql.Add('  estudante e, instituicao i, curso c, empresa m, encaminhamento n, Vaga v, EmpFuncionario F');
    sql.Add('where');
    sql.Add('  v.emp_cod = m.emp_cod and');
    sql.Add('  n.vag_cod = v.vag_cod and');
    sql.Add('  n.est_cod = e.est_cod and');
    sql.add('  e.inst_cod = i.inst_cod and');
    sql.Add('  n.est_cod = :est_cod and');
    sql.add('  e.cur_cod = c.cur_cod and');
    sql.Add('  n.vag_cod = :vag_cod and');
    Sql.Add('  m.emp_cod *= F.emp_cod and');
    Sql.Add('  m.emp_respent *= F.func_cod');
    ParamByName('est_cod').Value := DmDta.quEncaminhamentoest_cod.Value;
    ParamByName('vag_cod').Value := DmDta.quEncaminhamentovag_cod.Value;
    Open;
  end;

  var1 := CreateOleObject('Word.basic');
  var1.FileNew(FORINI.Diretorio + 'CartaEncaminhamento.dot');

  Var1.RightPara;
  Var1.Bold;
  Var1.Insert('Curitiba, ' + dtcompleta(false, FormatDateTime('dd/mm/yyyy', Date())) + '.');
  Var1.Insert(#13 + #13);

  Var1.NextCell;
  Var1.JustifyPara;
  Var1.Bold;
  Var1.Insert('CARTA DE ENCAMINHAMENTO' + #13);

  Var1.NextCell;
  Var1.Insert('Prezado(a) Senhor(a):' + #13);
  Var1.NextCell;
  Var1.Insert('Estamos encaminhando o (a) estudante abaixo, conforme solicitação: ' + #13);

  // endereço
  EndAux := quEncaminh.FieldByName('est_endereco').Text;
  if quEncaminh.FieldByName('est_numend').Text <> '' then
    EndAux := EndAux + ' ' + quEncaminh.FieldByName('est_numend').Text;
  if quEncaminh.FieldByName('est_apto').Text <> '' then
    EndAux := EndAux + ' - APTO. ' + quEncaminh.FieldByName('est_apto').Text;
  if quEncaminh.FieldByName('est_bloco').Text <> '' then
    EndAux := EndAux + ' - BLOCO ' + quEncaminh.FieldByName('est_bloco').Text;

  ValueTel := quEncaminh.FieldByName('est_fone1').Text;
  ValueTel2 := quEncaminh.FieldByName('est_fone2').Text;

  // Insere aqui o estudante
  Var1.NextCell;
  Var1.Insert('Estudante:');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('est_nome').Text);
  Var1.NextCell;
  Var1.Insert('Endereço: ');
  Var1.NextCell;
  Var1.Insert(EndAux);
  Var1.NextCell;
  Var1.Insert('Bairro: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('est_bairro').Text);
  Var1.NextCell;
  Var1.Insert('Cidade: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('est_cidade').Text);
  Var1.NextCell;
  Var1.Insert('Telefone: ');
  Var1.NextCell;
  if ValueTel <> '' then
    Var1.Insert('(' + Copy(ValueTel, 1, 2) + ') ' + Copy(ValueTel, 3, 4) + '-' + Copy(ValueTel, 7, 4));
  Var1.NextCell;
  Var1.Insert('Celular: ');
  Var1.NextCell;
  if ValueTel2 <> '' then
    Var1.Insert('(' + Copy(ValueTel2, 1, 2) + ') ' + Copy(ValueTel2, 3, 4) + '-' + Copy(ValueTel2, 7, 4));
  Var1.NextCell;
  Var1.Insert('E-mail: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('est_email').Text);
  Var1.NextCell;
  Var1.Insert('Instituição: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('inst_nome').Text);
  Var1.NextCell;
  Var1.Insert('Curso: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('cur_nome').Text);
  Var1.NextCell;
  Var1.Insert('Ano / Semestre: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('pcu_anoatual').Text + 'º Ano');
  Var1.Insert(#13);
  Var1.NextCell;


  Var1.Bold;
  Var1.JustifyPara;
  Var1.Insert('Caso você seja selecionado(a), deverá comparecer ao CETEFE com os seguintes documentos: ');
  Var1.Insert('Declaração de Matrícula ORIGINAL e ATUALIZADA, xerox do RG, CPF e Comprovante de Residência.' + #13);
  Var1.NextCell;
  Var1.Insert('Atenciosamente, ' + #13 + #13 + #13);

  Var1.NextCell;
  Var1.CenterPara;
  Var1.Insert('_____________________________________' + #13);
  Var1.CenterPara;
  if DmDta.quVagaselecionador.AsString <> '' then
    Var1.Insert(DmDta.quVagaselecionador.Text + #13)
  else
    Var1.Insert(DmDta.quVagavag_respselecao.Text + #13);
  Var1.Bold;
  Var1.NextCell;
  Var1.CenterPara;
  Var1.Bold;
  Var1.Insert('Resposta do Encaminhamento' + #13);

  // Insere aqui a empresa
  // endereço
  EndAux := quEncaminh.FieldByName('emp_enderecoenc').Text;
  if quEncaminh.FieldByName('emp_numendenc').Text <> '' then
    EndAux := EndAux + ' ' + quEncaminh.FieldByName('emp_numendenc').Text;
  if quEncaminh.FieldByName('emp_cjtoendenc').Text <> '' then
    EndAux := EndAux + ' - CJ. ' + quEncaminh.FieldByName('emp_cjtoendenc').Text;

  ValueTel := quEncaminh.FieldByName('emp_telefoneenc').Text;

  Var1.NextCell;
  Var1.JustifyPara;
  Var1.Insert('Empresa: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('emp_nome').Text);
  Var1.NextCell;
  Var1.Insert('Endereço: ');
  Var1.NextCell;
  Var1.Insert(EndAux);
  Var1.NextCell;
  Var1.Insert('Bairro: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('emp_bairroenc').Text);
  Var1.NextCell;
  Var1.Insert('Cidade: ');
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('emp_cidadeenc').Text);
  Var1.NextCell;
  Var1.Insert('Telefone: ');
  Var1.NextCell;
  if ValueTel <> '' then
    Var1.Insert('(' + Copy(ValueTel, 1, 2) + ') ' + Copy(ValueTel, 3, 4) + '-' + Copy(ValueTel, 7, 4));
  Var1.NextCell;
  Var1.Insert('Contato: ');
  if DmDta.quVagavag_divulgasite.Text = '1' then
  begin
    Var1.Insert(#13);
    Var1.Insert('Site: ');
  end;
  if DmDta.quVagavag_divulgaemail.Text = '1' then
  begin
    Var1.Insert(#13);
    Var1.Insert('E-Mail: ');
  end;
  if quEncaminh.FieldByName('vag_observacao').AsString <> '' then
  begin
    Var1.Insert(#13);
    Var1.Bold;
    Var1.Insert('Observação: ');
  end;
  Var1.NextCell;
  Var1.Insert(quEncaminh.FieldByName('emp_nomerespent').Text);
  if DmDta.quVagavag_divulgasite.Text = '1' then
  begin
    Var1.Insert(#13);
    Var1.Insert(quEncaminh.FieldByName('emp_site').Text);
  end;
  if DmDta.quVagavag_divulgaemail.Text = '1' then
  begin
    Var1.Insert(#13);
    Var1.Insert(quEncaminh.FieldByName('efu_email').Text);
  end;
  if quEncaminh.FieldByName('vag_observacao').AsString <> '' then
  begin
    Var1.Insert(#13);
    Var1.Bold;
    Var1.Insert(quEncaminh.FieldByName('vag_observacao').asstring);
  end;
  Var1.Insert(#13);

  Var1.NextCell;
  Var1.JustifyPara;
  Var1.Bold;
  Var1.Insert('Caso o(a) candidato(a) seja aprovado(a), devolver esta carta devidamente ');
  Var1.Insert('preenchida para que seja emitido o Termo de Compromisso de Estágio.' + #13);
  Var1.NextCell;
  Var1.JustifyPara;
  Var1.Bold;
  Var1.Insert(#13 + 'Data de Início: ');
  Var1.Bold;
  Var1.Insert('___________________________________');
  Var1.Bold;
  Var1.Insert(' Duração: ');
  Var1.Bold;
  Var1.Insert(' (em meses): ' + '(   ) 6    (   ) 12' + #13);
  Var1.JustifyPara;
  Var1.Bold;
  Var1.Insert('Horário do Estágio:  ');
  Var1.Bold;
  Var1.Insert('_____________ às _____________ e das ___________ _ às ____________' + #13);
  Var1.JustifyPara;
  Var1.Bold;
  Var1.Insert('Valor da Bolsa - Auxílio:  ');
  Var1.Bold;
  Var1.Insert('R$ ___________________________________ (       ) mês   (       ) hora' + #13 + #13);


  Var1.NextCell;
  Var1.Bold;
  Var1.Insert('ATIVIDADES DESENVOLVIDAS (Preencher com no mínimo 03 atividades):' + #13);
  Var1.Insert('1. _____________________________________________________________________________' + #13);
  Var1.Insert('2. _____________________________________________________________________________' + #13);
  Var1.Insert('3. _____________________________________________________________________________' + #13);
  Var1.Insert('4. _____________________________________________________________________________' + #13);
  Var1.Insert('5. _____________________________________________________________________________' + #13 + #13 + #13);

  Var1.NextCell;
  Var1.CenterPara;
  Var1.Insert('_____________________________________' + #13);
  Var1.CenterPara;
  Var1.Insert('Carimbo e Assinatura da Unidade Concedente');
  var1.Appshow;
