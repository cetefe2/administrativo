unit TPOEST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DBCtrls, Mask, OleServer, Excel97, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  ToolEdit, RXDBCtrl;

type
  TFOREST = class(TFORMOD2)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    lblIdade: TLabel;
    Bevel4: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    DBComboBox2: TDBComboBox;
    Label11: TLabel;
    DBComboBox3: TDBComboBox;
    btPerfil: TSpeedButton;
    edEstDtIncx: TMaskEdit;
    edEstDtNascx: TMaskEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    meCpf: TMaskEdit;
    btCurso: TSpeedButton;
    btIdioma: TSpeedButton;
    btSoftware: TSpeedButton;
    btExperiencia: TSpeedButton;
    btPChave: TSpeedButton;
    btCursos: TSpeedButton;
    Label22: TLabel;
    DBEdit3: TDBEdit;
    btEntrevistas: TSpeedButton;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    Label12: TLabel;
    Label27: TLabel;
    edEstDtAtux: TMaskEdit;
    quEstudante: TQuery;
    quEstudanteEst_cod: TIntegerField;
    quEstudanteEst_nome: TStringField;
    quEstudanteEst_cpf: TStringField;
    quEstudanteEst_rg: TStringField;
    quEstudanteEst_sexo: TStringField;
    dsEstudante: TDataSource;
    usEstudante: TUpdateSQL;
    btIntencao: TSpeedButton;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label31: TLabel;
    btImprimir: TSpeedButton;
    quEstudanteest_dtnasc: TDateTimeField;
    quEstudanteest_pgtolib: TStringField;
    btInformacoes: TSpeedButton;
    edEstDtNasc: TDBEdit;
    edEstDtInc: TDBEdit;
    edEstDtAtu: TDBEdit;
    SpeedButton1: TSpeedButton;
    btnRequistos: TSpeedButton;
    DBComboBox1: TDBComboBox;
    botao1: TSpeedButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    senha: TMaskEdit;
    Label28: TLabel;
    DBCheckBox1: TDBCheckBox;
    qrypesquisa: TQuery;
    btnContatos: TSpeedButton;
    cxDBDateEdit1: TcxDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure edEstDtIncxExit(Sender: TObject);
    procedure btEnderecoClick(Sender: TObject);
    procedure btPerfilClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edEstDtNascxExit(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meCpfExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCursoClick(Sender: TObject);
    procedure btIdiomaClick(Sender: TObject);
    procedure btSoftwareClick(Sender: TObject);
    procedure btExperienciaClick(Sender: TObject);
    procedure btCursosClick(Sender: TObject);
    procedure btPChaveClick(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure edEstDtIncxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cbsexoClick(Sender: TObject);
    procedure btEntrevistasClick(Sender: TObject);
    procedure btIntencaoClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btInformacoesClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edEstDtNascExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnRequistosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure senhaExit(Sender: TObject);
    procedure botao1Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure btnContatosClick(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    MudaAba: Boolean;
  public
    { Public declarations }
    F2DocLib: Boolean;
    F2DNasc: TDateTime;
    EstDeFora: Integer;
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
    procedure EstadoNavegando;
  end;

var
  FOREST: TFOREST;

implementation

uses TPOFNC, TPODTA, TPOEST1, TPOEST2, TPOEST3, TPOEST4, TPOEST5,
  TPOEST6, TPOEST7, TPOEST8, TPOEST9, ComObj, TPOCST, TPOEST10, TPOINI,
  tpoest11, TPOESTREQ, TpoContatos;

{$R *.DFM}

procedure TFOREST.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'est_cod';
  nomeCodigo := 'est_cod';
  nomeNome := 'est_nome';
  nomeTabela := 'Estudante';
  EstDeFora := -1;

  quPrincipal := DmDta.quEstudante;
  DmDta.dsEstudante.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFOREST.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if EstDeFora <> -1 then
  begin
    with DmDta.quEstudante do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select E.*, I.inst_nome, C.cur_nome from Estudante E, Instituicao I, ');
      Sql.Add('Curso C where e.inst_cod = i.inst_cod and e.cur_cod = c.cur_cod and e.est_cod = :est_cod');
      ParamByName('est_cod').AsInteger := EstDeFora;
      Open;
    end;

    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;
    btSalvar.Enabled := False;
    btCancelar.Enabled := false;
  end
  else
  begin
    with quEstudante do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib from Estudante');
      Sql.Add('order by est_cod');
      Open;
      Last;
    end;

    EstadoEditando;
    CarregaDados;

    AbreFechaTabelas(true);
    estadoNavegando;

    cbTipoPesquisa.ItemIndex := 1;

    btSalvar.Enabled := False;
    btCancelar.Enabled := False;
    btExcluir.Enabled := not quEstudante.IsEmpty;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFOREST.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEstudante.DataSet := DmDta.quEstudante;
end;

procedure TFOREST.InicializaDados;
begin
  quPrincipal.FieldByName('est_cod').Value := 0;
  quPrincipal.FieldByName('est_filhos').Value := 0;
  quPrincipal.FieldByName('est_fumante').Value := '0';
  quPrincipal.FieldByName('est_situacao').Value := 'N';
  quPrincipal.FieldByName('est_pgtolib').Value := '1';

  quPrincipal.FieldByName('Est_DtInc').Value := date();
  quPrincipal.FieldByName('Est_Dtatu').Value := date();
  //edEstDtInc. :=Date();
  //edEstDtAtu.date := date();
  meCPF.SetFocus;
end;

procedure TFOREST.AtualizaDados;
begin

 { if edEstDtInc.Text <> '  /  /    ' then
    quPrincipal.FieldByName('est_dtinc').AsString  := edEstDtInc.Text
  else
    quPrincipal.FieldByName('est_dtinc').Text := '';}

  //edEstDtAtu.Text := FormatDateTime('dd/mm/yyyy',Date());
  //quPrincipal.FieldByName('est_dtatu').value := date();
  // edEstDtAtu.Text;

  {if edEstDtNasc.Text <> '  /  /    ' then
    quPrincipal.FieldByName('est_dtnasc').AsString := edEstDtNasc.Text
  else
    quPrincipal.FieldByName('est_dtnasc').AsString := '';}

  if meCpf.Text <> '   .   .   -  ' then
    quPrincipal.FieldByName('est_cpf').AsString := meCpf.Text
  else
    quPrincipal.FieldByName('est_cpf').AsString := '';

  {if cbSexo.ItemIndex >= 0 then
  begin
    if cbSexo.ItemIndex = 0 then
      quPrincipal.FieldByName('est_sexo').Value := 'M'
    else if cbSexo.ItemIndex = 1 then
      quPrincipal.FieldByName('est_sexo').Value := 'F';
  end;}
end;

procedure TFOREST.CarregaDados;
var idade, unidade: string;
begin
  {if not quPrincipal.FieldByName('est_dtinc').IsNull then
    edEstDtInc.Text := quPrincipal.FieldByName('est_dtinc').AsString;
  if not quPrincipal.FieldByName('est_dtatu').IsNull then
    edEstDtAtu.Text := quPrincipal.FieldByName('est_dtatu').AsString;
   }
  if not quPrincipal.FieldByName('est_dtnasc').Isnull then
  begin
    //edEstDtNasc.Text := quPrincipal.FieldByName('est_dtnasc').AsString;

    RetornaIdade(quPrincipal.FieldByName('est_dtnasc').asstring, Idade, unidade);
    //RetornaIdade(edEstDtNasc.Text, Idade, unidade);
    lblIdade.Caption := idade;
  end;

  if quPrincipal.FieldByName('est_cpf').Value <> '' then
    meCpf.Text := quPrincipal.FieldByName('est_cpf').AsString;

  {if quPrincipal.FieldByName('est_sexo').Value <> '' then
  begin
    if quPrincipal.FieldByName('est_sexo').Value = 'M' then
      cbSexo.ITemIndex := 0
    else if quPrincipal.FieldByName('est_sexo').Value = 'F' then
      cbSexo.ITemIndex := 1;
  end;}
end;

procedure TFOREST.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);
end;

procedure TFOREST.edParametroExit(Sender: TObject);
var argumento, ordem: string;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'est_cod';
          argumento := 'est_cod = ' + edParametro.Text;
          DMDta.montaSql(quEstudante, 'est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib', 'Estudante', argumento, ordem);
          estadoNavegando();
        end;
      1:
        begin
          ordem := 'est_nome';
          argumento := 'est_nome like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quEstudante, 'est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib', 'Estudante', argumento, ordem);
          estadoNavegando();
        end;
      2:
        begin
          ordem := 'est_nome';
          argumento := 'est_rg like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quEstudante, 'est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib', 'Estudante', argumento, ordem);
          estadoNavegando();
        end;
      3:
        begin
          ordem := 'est_nome';
          argumento := 'est_cpf like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quEstudante, 'est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib', 'Estudante', argumento, ordem);
          estadoNavegando();
        end;
      4:
        begin
          ordem := 'est_email';
          argumento := 'est_email like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quEstudante, 'est_cod, est_nome,est_email, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib', 'Estudante', argumento, ordem);
          estadoNavegando();
        end;
    end;
  end;
end;

procedure TFOREST.edEstDtIncxExit(Sender: TObject);
begin
  inherited;
  if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFOREST.btEnderecoClick(Sender: TObject);
begin
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;
end;

procedure TFOREST.btPerfilClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin

    Screen.Cursor := crHourGlass;
    FOREST2 := TFOREST2.Create(Self);
    Screen.Cursor := crDefault;
    FOREST2.qryfunc.Open;
    FOREST2.qryfunc.last;

    FOREST2.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if DBEdit5.Text = '' then
    begin
      MSGERRO('Entre com o nome do estudante!');
      DBEdit5.SetFocus;
      Salvou := False;
    end
    else if edEstDtNasc.Text = '  /  /    ' then
    begin
      MSGERRO('Entre com a data de nascimento do estudante!');
      edEstDtNasc.SetFocus;
      Salvou := False;
    end
    {else if cbSexo.ItemIndex < 0 then
    begin
      MSGERRO('Entre com o sexo do estudante!');
      cbSexo.SetFocus;
      Salvou := False;
    end}
    else
    begin

      if DBEdit7.Text = '' then
      begin
        if MSGSIMNAO('E-mail do estudante não preenchido. Deseja informar?') then
        begin
          DBEdit7.SetFocus;
          Exit;
        end;
      end;

      btEnter.SetFocus;
      //DmDTA.db_Principal.StartTransaction;

      // salva o registro
      if quPrincipal.State = dsEdit then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
          //DmDTA.db_Principal.Rollback;
        end;
      end
      else if quPrincipal.State = dsInsert then
      begin

        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
          //DmDTA.db_Principal.Rollback;
        end;

        // sincroniza o registro insreido com a query qye controla a tela
        with quEstudante do
        begin
          Close;
          Sql.Clear;
          Sql.Add('select est_cod, est_nome, est_rg, est_cpf, est_sexo, est_dtnasc, est_pgtolib ');
          Sql.Add('from Estudante');
          Sql.Add('order by est_cod');
          Open;
          Last;
        end;

        with DmDta.quEstudante do
        begin
          Close;
          ParamByName('est_cod').AsInteger := quEstudanteEST_COD.Value;
          Open;
        end;

      end;

      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;
        edParametro.Clear;
        if edParametro.CanFocus then edParametro.SetFocus;
      end;

      //DmDTA.db_Principal.Commit;
    end;
  end;
end;

procedure TFOREST.LimpaCampos;
begin
 // edEstDtInc.Clear;
 // edEstDtNasc.Clear;
 // edEstDtAtu.Clear;
  meCpf.Clear;
  lblIdade.Caption := '00';
 // cbSexo.ItemIndex := -1;
end;

procedure TFOREST.edEstDtNascxExit(Sender: TObject);
var idade, unidade: string;
begin
  inherited;
  if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
      TCustomEdit(Sender).SetFocus
    else
    begin
      RetornaIdade(edEstDtNasc.Text, Idade, unidade);
      lblIdade.Caption := idade;
    end;
  end;
end;

procedure TFOREST.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  caracterMinusculo(Key);
end;

procedure TFOREST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
    vk_F6: btCursoClick(Sender);
    vk_F7: btPerfilClick(Sender);
    vk_F8: btIdiomaClick(Sender);
    vk_F9: btSoftwareClick(Sender);
    vk_F10: btEntrevistasClick(Sender);
    vk_F11: btExperienciaClick(Sender);
    vk_F12: btCursosClick(Sender);
  end;
end;

procedure TFOREST.meCpfExit(Sender: TObject);
begin
  inherited;
  {if meCpf.Text <> '' then
    if not ValidaCgcCpf(meCpf.Text) then
    begin
      MSGERRO('CPF inválido. Informe novo CPF ou apague!');
      meCpf.SetFocus;
    end;}
end;

procedure TFOREST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quEstudante.Cancel;
  AbreFechaTabelas(false);
  quEstudante.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFOREST.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quEstudante.IsEmpty then
    begin
      MSGERRO('Selecione um estudante!');
      Exit;
    end;

    with DmDta.quEstudante do
    begin
      Close;
      ParamByName('est_cod').AsInteger := quEstudanteEST_COD.Value;
      Open;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    F2Codigo := quEstudante.FieldByName(nomeCodigo).AsString;
    F2Nome := quEstudante.FieldByName(nomeNome).AsString;
    F2DocLib := quEstudante.FieldByName('est_pgtolib').AsString = '0';
    F2DNasc := quEstudante.FieldByName('est_dtnasc').Value;
    Close;
  end;
end;

procedure TFOREST.btExcluirClick(Sender: TObject);

  function VerificaDelecao: Boolean;
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select * from TCE where est_cod = ' + quEstudante.FieldByName('est_cod').Text);
      Sql.Add('and tce_situacao <> ''7''');
      Open;

      Result := IsEmpty;
      Close;
      Free;
    end;
  end;

  procedure DeletaTabelas;
    procedure Tabela(nomeTabela: string);
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Delete from ' + nomeTabela + ' where est_cod = ' + quEstudante.FieldByName('est_cod').Text);
        ExecSql;
        Free;
      end;
    end;
  begin
    Tabela('Encaminhamento');
    Tabela('Experiencia');
    Tabela('PalavraChave');
    Tabela('PerCursos');
    Tabela('PerOutrosCursos');
    Tabela('PerIdioma');
    Tabela('PerSoftware');
  end;

begin

  // Verifica se não tem TCE Ativo
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    Screen.Cursor := crHourGlass;
    if VerificaDelecao then
    begin
      // Apaga tabelas filhas da Estudante
      btEnter.SetFocus;
      DeletaTabelas;

      with DmDta.quEstudante do
      begin
        Close;
        ParamByName('est_cod').AsInteger := quEstudanteEST_COD.Value;
        Open;
      end;

      DmDta.ExcluirRegistro(quPrincipal);
      quEstudante.Delete;
      estadoNavegando;
    end
    else
    begin
      MSGERRO('Estudante estagiando. Exclusão não permitida!');
    end;
  end;
end;

procedure TFOREST.btCursoClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST1 := TFOREST1.Create(Self);
    Screen.Cursor := crDefault;
    if botao1.Tag = 0 then
      forest1.situacao.Enabled := false
    else
      forest1.situacao.Enabled := true;


    FOREST1.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btIdiomaClick(Sender: TObject);
begin
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST3 := TFOREST3.Create(Self);
    FOREST3.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST3.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btSoftwareClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST4 := TFOREST4.Create(Self);
    FOREST4.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST4.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btExperienciaClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST5 := TFOREST5.Create(Self);
    FOREST5.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST5.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btPChaveClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST6 := TFOREST6.Create(Self);
    FOREST6.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST6.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btCursosClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST7 := TFOREST7.Create(Self);
    FOREST7.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST7.ShowModal;
  end;
  MudaAba := true;
end;


procedure TFOREST.EstadoNavegando;
begin
  btNovo.Enabled := true;
  btExcluir.Enabled := not quEstudante.IsEmpty;
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;

  //pgPrincipal.ActivePage := tbConsulta;

  // Carrega os dados do registro
  if not quPrincipal.IsEmpty then
    CarregaDados();
end;

procedure TFOREST.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFOREST.edEstDtIncxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
end;

procedure TFOREST.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
  if (Sender <> DBEdit7) then
    CaracterMaiusculo(Key);
end;

procedure TFOREST.cbsexoClick(Sender: TObject);
begin
  inherited;
  Salvou := True;
end;

procedure TFOREST.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFOREST.btEntrevistasClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST8 := TFOREST8.Create(Self);
    FOREST8.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST8.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btIntencaoClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST9 := TFOREST9.Create(Self);
    Screen.Cursor := crDefault;
    FOREST9.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btImprimirClick(Sender: TObject);
var
  var1: variant;
  idade, unidade: string;
  telefone, cep, cpf, endest: string;
begin
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  Screen.Cursor := crHourGlass;
  var1 := CreateOleObject('Word.basic');
  var1.FileNew(FORINI.Diretorio + 'curriculo.dot');

  var1.Insert('SOLICITAÇÃO DE ESTÁGIO');
  var1.NextCell;
  var1.Insert('(A ser Preenchido pelo Estudante)');
  var1.NextCell;
  var1.Insert('DADOS PESSOAIS');

  var1.NextCell;
  var1.Insert('Nome Completo:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_nome').Text);

  var1.NextCell;
  var1.Insert('Data Nascimento:');
  var1.NextCell;
  var1.Insert(FormatDateTime('dd/mm/yyyy', DmDta.quEstudante.FieldByName('est_dtnasc').asDateTime));

  var1.NextCell;
  var1.Insert('Idade:');
  var1.NextCell;
  // cálculo da idade
  RetornaIdade(DmDta.quEstudante.fieldByName('est_dtnasc').Text, Idade, unidade);
  var1.Insert(Idade + ' ANOS');

  var1.NextCell;
  var1.Insert('Nacionalidade:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_nacionalidade').Text);

  var1.NextCell;
  var1.Insert('Local Nascimento:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_localnasc').Text);

  var1.NextCell;
  var1.Insert('Estado Civil:');
  var1.NextCell;
  var1.Insert(AnsiUpperCase(DmDta.quEstudante.fieldByName('est_estadocivil').Text));

  var1.NextCell;
  var1.Insert('Sexo:');
  var1.NextCell;
  if DmDta.quEstudante.fieldByName('est_sexo').Text = 'M' then
    var1.Insert('MASCULINO')
  else
    var1.Insert('FEMININO');

  var1.NextCell;
  var1.Insert('Religião:');
  var1.NextCell;
  var1.Insert(AnsiUpperCase(DmDta.quEstudante.fieldByName('est_religiao').Text));

  var1.NextCell;
  var1.Insert('Endereço:');
  var1.NextCell;
  endest := DmDta.quEstudante.fieldbyname('est_endereco').asstring;
  if DmDta.quEstudante.fieldbyname('est_numend').Text <> '' then
    endEst := endEst + ' ' + DmDta.quEstudante.fieldbyname('est_numend').Text;
  if DmDta.quEstudante.fieldbyname('est_apto').Text <> '' then
    endEst := endEst + ' - APTO. ' + DmDta.quEstudante.fieldbyname('est_apto').Text;
  if DmDta.quEstudante.fieldbyname('est_bloco').Text <> '' then
    endEst := endEst + ' - BLOCO ' + DmDta.quEstudante.fieldbyname('est_bloco').Text;
  var1.Insert(endest);

  var1.NextCell;
  var1.Insert('Bairro:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_bairro').Text);

  var1.NextCell;
  var1.Insert('Cidade:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_cidade').Text);

  var1.NextCell;
  var1.Insert('Estado:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_estado').Text);

  var1.NextCell;
  var1.Insert('CEP:');
  var1.NextCell;
  cep := DmDta.quEstudante.fieldByName('est_cep').Text;
  var1.Insert(copy(cep, 1, 5) + '.' + copy(cep, 6, 3));

  var1.NextCell;
  var1.Insert('Telefone:');
  var1.NextCell;
  telefone := DmDta.quEstudante.fieldByName('est_fone1').Text;
  if Telefone <> '' then
    telefone := '(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4);
  var1.Insert(telefone);

  var1.NextCell;
  var1.Insert('Celular:');
  var1.NextCell;
  telefone := DmDta.quEstudante.fieldByName('est_fone2').Text;
  if Telefone <> '' then
    telefone := '(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4);
  var1.Insert(telefone);

  var1.NextCell;
  var1.Insert('Recado:');
  var1.NextCell;
  telefone := DmDta.quEstudante.fieldByName('est_recado').Text;
  if Telefone <> '' then
    telefone := '(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4);
  var1.Insert(telefone);

  var1.NextCell;
  var1.Insert('Com:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_nomerecado').Text);

  var1.NextCell;
  var1.Insert('E-Mail:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_email').Text);

  var1.NextCell;
  var1.Insert('Nº Identidade:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('est_rg').Text);

  var1.NextCell;
  var1.Insert('CPF:');
  var1.NextCell;
  cpf := DmDta.quEstudante.fieldByName('est_cpf').Text;
  if Cpf <> '' then
    var1.Insert(copy(cpf, 1, 3) + '.' + copy(cpf, 4, 3) + '.' + copy(cpf, 7, 3) + '-' + copy(cpf, 10, 2));

  var1.NextCell;
  var1.Insert('Nº Carteira Trabalho:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('Est_ctpsnum').Text);

  var1.NextCell;
  var1.Insert('Série:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.fieldByName('Est_ctpsserie').Text);

  var1.NextCell;
  var1.Insert('ESCOLARIDADE');

  var1.NextCell;
  var1.Insert('Horário de Estudo:');
  var1.NextCell;
  if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '0' then
    var1.Insert('(  X  )  Manhã    (      )  Tarde    (      )  Noite')
  else if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '1' then
    var1.Insert('(      )  Manhã    (  X  )  Tarde    (      )  Noite')
  else if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '2' then
    var1.Insert('(      )  Manhã    (      )  Tarde    (  X  )  Noite')
  else if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '3' then
    var1.Insert('(  X  )  Manhã    (  X  )  Tarde    (      )  Noite')
  else if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '4' then
    var1.Insert('(  X  )  Manhã    (      )  Tarde    (  X  )  Noite')
  else if DmDta.quEstudante.FieldByName('pcu_turno').AsString = '5' then
    var1.Insert('(      )  Manhã    (  X  )  Tarde    (  X  )  Noite')
  else
    var1.Insert('(      )  Manhã    (      )  Tarde    (      )  Noite');


  var1.NextCell;
  var1.Insert('Ano em Curso:');
  var1.NextCell;
  if DmDta.quEstudante.FieldByName('pcu_anoatual').Text <> '' then
    var1.Insert(DmDta.quEstudante.FieldByName('pcu_anoatual').Text + 'º');

  var1.NextCell;
  var1.Insert('Nome do Curso:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.FieldByName('cur_nome').Text);

  var1.NextCell;
  var1.Insert('Nome da Instituição:');
  var1.NextCell;
  var1.Insert(DmDta.quEstudante.FieldByName('inst_nome').Text);

  var1.NextCell;
  var1.Insert('CONHECIMENTOS:');
  var1.NextCell;
  var1.Insert('Informática:');
  var1.NextCell;

  with DmDTA.quPerSoftware do
  begin
    // imprime os softwares
    ParamByName('est_cod').AsInteger := DmDta.quEstudanteest_cod.AsInteger;
    Open;

    if not Eof then
    begin
      first;
      while not eof do
      begin
        // software
        Var1.Insert(FieldByName('stw_nome').Text);
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível regular
      first;
      while not eof do
      begin
        // software
        if FieldByName('Psw_nivel').AsInteger = 0 then
          Var1.Insert('(  X  )  Regular')
        else
          Var1.Insert('(      )  Regular');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível bom
      first;
      while not eof do
      begin
        // software
        if FieldByName('Psw_nivel').AsInteger = 1 then
          Var1.Insert('(  X  )  Bom')
        else
          Var1.Insert('(      )  Bom');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível ótimo
      first;
      while not eof do
      begin
        // software
        if FieldByName('Psw_nivel').AsInteger = 2 then
          Var1.Insert('(  X  )  Ótimo')
        else
          Var1.Insert('(      )  Ótimo');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
    end
    else
    begin
      Var1.NextCell;
      Var1.NextCell;
      Var1.NextCell;
    end;
    Close;
  end;

  var1.NextCell;
  Var1.Insert('Língua Estrangeira:');
  var1.NextCell;

  with DmDTA.quPerIdioma do
  begin
    // imprime os softwares
    ParamByName('est_cod').AsInteger := DmDta.quEstudanteest_cod.AsInteger;
    Open;
    first;
    if not eof then
    begin
      while not eof do
      begin
        // software
        Var1.Insert(FieldByName('idi_nome').Text);
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime LÊ
      first;
      while not eof do
      begin
        // software
        if FieldByName('Pid_le').AsString = 'S' then
          Var1.Insert('(  X  )  Lê')
        else
          Var1.Insert('(      )  Lê');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível bom
      first;
      while not eof do
      begin
        // software
        if FieldByName('Pid_fala').AsString = 'S' then
          Var1.Insert('(  X  )  Fala')
        else
          Var1.Insert('(      )  Fala');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível ótimo
      first;
      while not eof do
      begin
        // software
        if FieldByName('Pid_escreve').AsString = 'S' then
          Var1.Insert('(  X  )  Escreve')
        else
          Var1.Insert('(      )  Escreve');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
    end
    else
    begin
      Var1.NextCell;
      Var1.NextCell;
      Var1.NextCell;
    end;
    Close;
  end;

  var1.NextCell;
  Var1.Insert('ESTÁGIOS ANTERIORES / EXPERIÊNCIA PROFISSIONAL:');


  with DmDTA.quExperiencia do
  begin
    // imprime a última experiência
    ParamByName('est_cod').AsInteger := DmDta.quEstudanteest_cod.AsInteger;
    Open;
    Last;

    var1.NextCell;
    Var1.Insert('Empresa:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_empresa').Text);

    var1.NextCell;
    Var1.Insert('Telefone:');
    var1.NextCell;
    telefone := fieldByName('exp_telefone').Text;
    if Telefone <> '' then
      telefone := '(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4);
    var1.Insert(telefone);

    var1.NextCell;
    Var1.Insert('Contatar Com:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_contato').Text);

    var1.NextCell;
    Var1.Insert('Atividades Desenvolvidas:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_atividades').Text);

    var1.NextCell;
    if FieldByName('exp_funcest').AsString = 'Funcionário' then
      Var1.Insert('(  X  )  Funcionário')
    else
      Var1.Insert('(      )  Funcionário');
    Var1.NextCell;
    if FieldByName('exp_funcest').AsString = 'Estagiário' then
      Var1.Insert('(  X  )  Estagiário')
    else
      Var1.Insert('(      )  Estagiário');

    var1.NextCell;
    Var1.Insert('Data de Admissão:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_inicio').Text);

    var1.NextCell;
    Var1.Insert('Data de Demissão:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_fim').Text);

    var1.NextCell;
    Var1.Insert('Salário Inicial:');
    var1.NextCell;
    if not FieldByName('exp_salinicial').IsNull then
      Var1.Insert('R$ ' + FormatFloat('#,###,##0.00', FieldByName('exp_salinicial').AsFloat));

    var1.NextCell;
    Var1.Insert('Salário Final:');
    var1.NextCell;
    if not FieldByName('exp_salfinal').IsNull then
      Var1.Insert('R$ ' + FormatFloat('#,###,##0.00', FieldByName('exp_salfinal').AsFloat));

    var1.NextCell;
    Var1.Insert('Motivo do Desligamento:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_motivo').Text);

    var1.NextCell;
    Var1.Insert('Número de Empresas que Já Estagiou ou Trabalhou:');
    var1.NextCell;
    Var1.Insert(FieldByName('exp_nroemp').Text);

    Close;
  end;

  var1.NextCell;
  Var1.Insert('INFORMAÇÕES SOBRE A INTENÇÃO DE ESTÁGIO');

  var1.NextCell;
  Var1.Insert('1. Relate resumidamente as habilidades, os conhecimentos e as experiências que possui e que poderão ser úteis para a Empresa:');
  var1.NextCell;
  Var1.Insert(DmDta.quEstudante.FieldbyName('est_habilidades').Text);

  var1.NextCell;
  Var1.Insert('2. Quais são as suas principais características pessoais?');
  var1.NextCell;
  Var1.Insert(DmDta.quEstudante.FieldbyName('est_caracteristicas').Text);

  var1.NextCell;
  Var1.Insert('3. Por que você quer fazer estágio?');
  var1.NextCell;
  Var1.Insert(DmDta.quEstudante.FieldbyName('est_porquestagioest').Text);

  var1.NextCell;
  Var1.Insert('INFORMAÇÕES COMPLEMENTARES');

  var1.NextCell;
  Var1.Insert('1. Fumante?');
  var1.NextCell;
  if DmDta.quEstudante.FieldbyName('est_fumante').Text = 'S' then
    Var1.Insert('(  X  )  Sim')
  else
    Var1.Insert('(      )  Sim');
  var1.NextCell;
  if DmDta.quEstudante.FieldbyName('est_fumante').Text = 'N' then
    Var1.Insert('(  X  )  Não')
  else
    Var1.Insert('(      )  Não');

  var1.NextCell;
  Var1.Insert('2. Existe algum impedimento para desenvolver tarefas?');
  var1.NextCell;
  Var1.Insert(DmDta.quEstudante.FieldbyName('est_impedimento').Text);

  Var1.NextCell;
  Var1.Insert('3. Possui carteira de habilitação?');
  Var1.NextCell;
  if Trim(DmDta.quEstudante.FieldbyName('est_tipocnh').Text) <> '' then
    Var1.Insert('(  X  )  Sim')
  else
    Var1.Insert('(      )  Sim');
  var1.NextCell;
  if Trim(DmDta.quEstudante.FieldbyName('est_tipocnh').Text) = '' then
    Var1.Insert('(  X  )  Não')
  else
    Var1.Insert('(      )  Não');
  Var1.NextCell;
  Var1.Insert('No caso de sim, qual?');
  Var1.NextCell;
  if not DmDta.quEstudante.FieldbyName('est_tipocnh').IsNull then
    Var1.Insert('Tipo: ' + DmDta.quEstudante.FieldbyName('est_tipocnh').Text);

  Screen.Cursor := crDefault;
  var1.appshow;
  MudaAba := True;
end;

procedure TFOREST.btNovoClick(Sender: TObject);
begin
  with DmDta.quEstudante do
  begin
    Close;
    ParamByName('est_cod').AsInteger := 0;
    Open;
  end;
  inherited;
end;

procedure TFOREST.btInformacoesClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST10 := TFOREST10.Create(Self);
    Screen.Cursor := crDefault;
    FOREST10.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btCancelarClick(Sender: TObject);
begin
  inherited;
  EstadoNavegando;
end;

procedure TFOREST.edEstDtNascExit(Sender: TObject);
var idade, unidade: string;
begin
  inherited;
  if not ValidaData(TCustomEdit(Sender).Text) then
    TCustomEdit(Sender).SetFocus
  else
  begin
    RetornaIdade(edEstDtNasc.Text, Idade, unidade);
    lblIdade.Caption := idade;
  end;
end;

procedure TFOREST.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FOREST11 := TFOREST11.Create(Self);
    FOREST11.EstCod := quPrincipal.FieldByName('est_cod').Value;
    Screen.Cursor := crDefault;
    FOREST11.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.btnRequistosClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORESTREQ := TFORESTREQ.Create(Self);
    Screen.Cursor := crDefault;
    FORESTREQ.EstCod := quPrincipal.FieldByName('est_cod').Value;
    FORESTREQ.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.BitBtn1Click(Sender: TObject);
begin
  inherited;
  panel4.Visible := false;
end;

procedure TFOREST.senhaExit(Sender: TObject);
begin
  inherited;
  if senha.Text = 'y3k6b1' then
  begin
    botao1.Tag := 1;
    botao1.Font.Color := clblue;
  end
  else
  begin
    botao1.Tag := 0;
    botao1.Font.Color := clblack;
  end;


end;

procedure TFOREST.botao1Click(Sender: TObject);
begin
  inherited;
  panel4.Visible := visible;
  senha.SetFocus;
end;

procedure TFOREST.DBEdit13Exit(Sender: TObject);
var
  Logradouro, Bairro, Cidade,
    Uf: string;
begin
  inherited;
  if DmDta.quEstudante.State in [dsedit, dsinsert] then
  begin
    Buscacep(DmDta.quEstudanteest_cep.AsString, Logradouro, Bairro, Cidade, Uf);
    if logradouro <> '' then
      DmDta.quEstudanteest_endereco.AsString := logradouro;
    if bairro <> '' then
      DmDta.quEstudanteest_bairro.AsString := bairro;
    if uf <> '' then
      DmDta.quEstudanteest_estado.AsString := uf;
    if cidade <> '' then
      DmDta.quEstudanteest_cidade.AsString := cidade;
  end;
end;



procedure TFOREST.btnContatosClick(Sender: TObject);
begin
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORCONTATOS := TFORCONTATOS.Create(Self);
    Screen.Cursor := crDefault;
    forcontatos.Edit1.Text := dbedit1.Text; // codigo
    forcontatos.Edit2.Text := dbedit5.Text; // nome
    FORCONTATOS.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFOREST.cxDBDateEdit1Exit(Sender: TObject);
var idade, unidade: string;
begin
  if cxDBDateEdit1.Text = '' then
    Exit;
  if not ValidaData(cxDBDateEdit1.Text) then
    TCustomEdit(Sender).SetFocus
  else
  begin
    RetornaIdade(cxDBDateEdit1.Text, Idade, unidade);
    lblIdade.Caption := idade;
  end;

end;

end.

