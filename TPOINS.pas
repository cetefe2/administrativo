unit TPOINS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls,
  Mask, DB, BDE, DBTables, Menus;

type
  TFORINS = class(TFORMOD2)
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    btFuncionarios: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    edInstDtInc: TMaskEdit;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBComboBox2: TDBComboBox;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    btCursos: TSpeedButton;
    btResponsaveis: TSpeedButton;
    meCnpj: TMaskEdit;
    btEtiquetas: TSpeedButton;
    btConvenio: TSpeedButton;
    btImpressao: TSpeedButton;
    btCoordenadores: TSpeedButton;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    edInstDtRetorno: TMaskEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label9: TLabel;
    btDiretores: TSpeedButton;
    mePesqCnpj: TMaskEdit;
    sbHistorico: TSpeedButton;
    SpeedButton1: TSpeedButton;
    qryEstudante: TQuery;
    qryEstudanteTce_cod: TIntegerField;
    qryEstudanteEmp_nome: TStringField;
    qryEstudanteEst_nome: TStringField;
    qryEstudanteest_cod: TIntegerField;
    qryEstudanteEst_endereco: TStringField;
    qryEstudanteEst_bairro: TStringField;
    qryEstudanteEst_cidade: TStringField;
    qryEstudanteEst_estado: TStringField;
    qryEstudanteInst_cod: TIntegerField;
    qryEstudanteest_situacao: TStringField;
    qryEstudanteInst_nome: TStringField;
    qryEstudanteTce_estenc: TStringField;
    qryEstudantecur_nome: TStringField;
    qryEstudantecur_nivel: TStringField;
    campos: TListBox;
    PopupMenu1: TPopupMenu;
    MarcarTodos1: TMenuItem;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edInstDtIncExit(Sender: TObject);
    procedure btEnderecoClick(Sender: TObject);
    procedure btResponsaveisClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure pgPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure edParExit(Sender: TObject);
    procedure btFuncionariosClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btCursosClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEtiquetasClick(Sender: TObject);
    procedure edInstDtIncKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edInstDtIncKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btConvenioClick(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
    procedure btCoordenadoresClick(Sender: TObject);
    procedure btDiretoresClick(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure sbHistoricoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
    procedure MarcarTodos1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    mudaAba: Boolean;
  public
    { Public declarations }
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
  end;

var
  FORINS: TFORINS;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOIFU, TPOICU, TPOIRE, TPOETQ, TPORETQ, TPOCST, ComObj,
  TPORINS, TPOIFU1, TPOINI, TPOIFU2, TPOIHI, TPOINSTOBS,tpoInstTce;

procedure TFORINs.ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
var
  Excel: Variant;
  TotaldeLinhas, cor, ColunasVisiveis, Linha, i, coluna: Integer;
  totalcoluna: array of variant;
  totalcolunageral: array of variant;
  quebranova, quebra1: string;
begin
  SetLength(totalcoluna, campos.Items.Count);
  SetLength(totalcolunageral, campos.Items.Count);
  cor := 15;
  TotaldeLinhas := 0;
  for i := 0 to campos.Items.Count - 1 do
  begin
    totalcoluna[i] := 0;
    totalcolunageral[i] := 0;
  end;

  ColunasVisiveis := 0;
  for i := 0 to Query.FieldCount - 1 do
  begin
    if Query.Fields[i].Visible then
      Inc(ColunasVisiveis);
  end;
  if not Query.IsEmpty then
  begin
    query.Last;
    Query.First;

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := false;
    Excel.Workbooks.Add;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Excel.Cells[1, 1] := AnsiUpperCase(Titulo);
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Excel.Cells[2, 1] := SubTitulo;
    Linha := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    Excel.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    Excel.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    Excel.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;

    Linha := 4;

    while not Query.Eof do
    begin
      coluna := -1;
      inc(totaldelinhas);
      for i := 0 to Query.FieldCount - 1 do
        if Query.Fields[i].Visible then
        begin
          inc(coluna);
          if campos.Items.Count > 0 then
          begin
            if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
            begin
              totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
              totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
            end;
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].Value;
        end;
      Query.Next;
      if (quebra <> '') and (query.eof = false) then
        for i := 0 to Query.FieldCount - 1 do
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebranova := Query.Fields[i].value;
      Linha := Linha + 1;
      if (query.eof) or (quebranova <> quebra1) then
      begin
        coluna := -1;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1] := inttostr(totaldelinhas);
        totaldelinhas := 0;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if campos.Items.Count > 0 then
            begin
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
              begin
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
              end;
            end;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        inc(linha);
        inc(linha);
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if query.Eof = false then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName
            else
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
            if quebra <> '' then
              if quebra = Query.Fields[i].fieldName then
                quebra1 := Query.Fields[i].value;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        inc(cor);
        if query.Eof = false then
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 19
        else
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 12;

        for i := 0 to campos.Items.Count - 1 do
        begin
          totalcoluna[i] := 0;
        end;
        quebra1 := quebranova;
        inc(linha);
      end;

    end;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
          end;
        end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
      end;

    excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    excel.visible := True;
  end;
end;



procedure TFORINS.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'inst_cod';
  nomeCodigo := 'inst_cod';
  nomeNome := 'inst_nome';
  nomeTabela := 'Instituicao';

  quPrincipal := DmDta.quInstituicao;
  DmDta.dsInstituicao.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORINS.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsInstituicao.DataSet := DmDta.quInstituicao;
end;

procedure TFORINS.AtualizaDados;
begin
  if edInstDtInc.Text <> '  /  /    ' then
    quPrincipal.FieldByName('inst_dtinc').AsString := edInstDtInc.Text
  else
    quPrincipal.FieldByName('inst_dtinc').AsString := '';

  if edInstDtRetorno.Text <> '  /  /    ' then
    quPrincipal.FieldByName('inst_dtretorno').AsString := edInstDtRetorno.Text
  else
    quPrincipal.FieldByName('inst_dtretorno').AsString := '';


  quPrincipal.FieldbyName('inst_cnpj').AsString := meCnpj.Text;
end;

procedure TFORINS.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('inst_cod').Value := 0;
  edInstDtInc.Text := FormatDateTime('dd/mm/yyyy', Date);
  edInstDtInc.SetFocus;
end;

procedure TFORINS.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORINS.CarregaDados;
begin
  inherited;
  if not quPrincipal.FieldByName('inst_dtinc').IsNull then
    edInstDtInc.Text := quPrincipal.FieldByName('inst_dtinc').AsString;
  if not quPrincipal.FieldByName('inst_dtretorno').IsNull then
    edInstDtRetorno.Text := quPrincipal.FieldByName('inst_dtretorno').AsString;
  if not quPrincipal.FieldbyName('inst_cnpj').IsNull then begin
    meCnpj.Text := quPrincipal.FieldbyName('inst_cnpj').AsString;
  end;
end;

procedure TFORINS.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8:
      begin
        Notebook1.PageIndex := 0;
        edPar.SetFocus;
      end;
    2: Notebook1.PageIndex := 1;
    3: Notebook1.PageIndex := 2;
    7:
      begin
        Notebook1.PageIndex := 3;
        mePesqCnpj.SetFocus;
      end;
  end;
end;

procedure TFORINS.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomerespcomp, IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2, IF5.ifu_nome Divulga3');
    Sql.Add('from');
    Sql.Add('  Instituicao I, InstFuncionario IF1, InstFuncionario IF2,InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5 ');
    Sql.Add('where');
    Sql.Add('  I.inst_cod      *= IF1.Inst_cod and');
    Sql.Add('  I.inst_respconv *= IF1.func_cod and');
    Sql.Add('  I.inst_cod      *= IF2.Inst_cod and');
    Sql.Add('  I.inst_respcomp *= IF2.func_cod and');
    Sql.Add('  I.inst_cod      *= IF3.Inst_cod and');
    Sql.Add('  I.inst_respdiv1 *= IF3.func_cod and');
    Sql.Add('  I.inst_cod      *= IF4.Inst_cod and');
    Sql.Add('  I.inst_respdiv2 *= IF4.func_cod and');
    Sql.Add('  I.inst_cod      *= IF5.Inst_cod and');
    Sql.Add('  I.inst_respdiv3 *= IF5.func_cod ');

    Sql.Add('order by');
    Sql.Add('  i.inst_cod');
    Open;
    Last;
  end;

  AbreFechaTabelas(true);
  estadoNavegando;

  //if edPar.CanFocus then edPar.SetFocus;
  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORINS.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if DBEdit3.Text = '' then
    begin
      MSGERRO('Entre com o nome da instituição!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
    else if DBComboBox1.Text = '' then
    begin
      MSGERRO('Entre com o tipo da instituição!');
      DBComboBox1.SetFocus;
      Salvou := False;
    end
    else if DBComboBox2.Text = '' then
    begin
      MSGERRO('Entre com o nível da instituição!');
      DBComboBox2.SetFocus;
      Salvou := False;
    end
    else if meCnpj.Text = '' then
    begin
      MSGERRO('Entre com o CNPJ da instituição!');
      meCnpj.SetFocus;
      Salvou := False;
    end
    else
    begin
      // salva o registro
      if quPrincipal.State = dsEdit then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end
      else if quPrincipal.State = dsInsert then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;

        // refresh
        quPrincipal.Close;
        quPrincipal.Open;
        quPrincipal.Last;
      end;

      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;
        Notebook1.PageIndex := 0;
        cbTipoPesquisa.ItemIndex := 1;
        edPar.Clear;
        mePesqCnpj.Clear;
        if edPar.CanFocus then edPar.SetFocus;
      end;
    end;
  end;
end;

procedure TFORINS.edInstDtIncExit(Sender: TObject);
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

procedure TFORINS.btEnderecoClick(Sender: TObject);
begin
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;
end;

procedure TFORINS.btResponsaveisClick(Sender: TObject);
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
    FORIRE := TFORIRE.Create(Self);
    Screen.Cursor := crDefault;
    FORIRE.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORINS.btNovoClick(Sender: TObject);
begin
  inherited;
  DBEdit3.SetFocus;
end;

procedure TFORINS.RadioGroup1Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod      *= IF1.Inst_cod and ' +
    'I.inst_respconv *= IF1.func_cod and ' +
    'I.inst_cod      *= IF2.Inst_cod and ' +
    'I.inst_respcomp *= IF2.func_cod and ' +
    ' I.inst_cod      *= IF3.Inst_cod and ' +
    ' I.inst_respdiv1 *= IF3.func_cod and ' +
    ' I.inst_cod      *= IF4.Inst_cod and ' +
    ' I.inst_respdiv2 *= IF4.func_cod and ' +
    ' I.inst_cod      *= IF5.Inst_cod and  ' +
    ' I.inst_respdiv3 *= IF5.func_cod   ';


  tabelas := 'Instituicao I, InstFuncionario IF1, InstFuncionario IF2,InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5';

  colunas := 'I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomerespcomp,IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2, ' +
    ' IF5.ifu_nome Divulga3 ';
  ordem := 'i.inst_nome';

  case radioGroup1.ItemIndex of
    0: argumento := argumento + ' and i.inst_tipo = ''Municipal''';
    1: argumento := argumento + ' and i.inst_tipo = ''Estadual''';
    2: argumento := argumento + ' and i.inst_tipo = ''Federal''';
    3: argumento := argumento + ' and i.inst_tipo = ''Particular''';
  end;

  dmDta.MontaSQL(quPrincipal, colunas, tabelas, argumento, ordem);
end;

procedure TFORINS.RadioGroup2Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod      *= IF1.Inst_cod and ' +
    'I.inst_respconv *= IF1.func_cod and ' +
    'I.inst_cod      *= IF2.Inst_cod and ' +
    'I.inst_respcomp *= IF2.func_cod and ' +
    ' I.inst_cod      *= IF3.Inst_cod and ' +
    ' I.inst_respdiv1 *= IF3.func_cod and ' +
    ' I.inst_cod      *= IF4.Inst_cod and ' +
    ' I.inst_respdiv2 *= IF4.func_cod and ' +
    ' I.inst_cod      *= IF5.Inst_cod and  ' +
    ' I.inst_respdiv3 *= IF5.func_cod   ';


  tabelas := 'Instituicao I, InstFuncionario IF1, InstFuncionario IF2,InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5';

  colunas := 'I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomerespcomp,IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2, ' +
    ' IF5.ifu_nome Divulga3 ';

  ordem := 'i.inst_nome';

  case radioGroup2.ItemIndex of
    0: argumento := argumento + ' and i.inst_nivel = ''Médio''';
    1: argumento := argumento + ' and i.inst_nivel = ''Pós-Médio''';
    2: argumento := argumento + ' and i.inst_nivel = ''Superior''';
    3: argumento := argumento + ' and i.inst_nivel = ''Pós-Graduação''';
  end;

  dmDta.MontaSQL(quPrincipal, colunas, tabelas, argumento, ordem);
end;

procedure TFORINS.btExcluirClick(Sender: TObject);

  function VerificaDelecao: Boolean;
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select * from Estudante where inst_cod = ' + quPrincipal.FieldByName('inst_cod').Text);
      Sql.Add('and est_situacao <> ''7''');
      Open;

      Result := IsEmpty;
      Free;
    end;
  end;

  procedure DeletaTabelas;
    procedure Tabela(nomeTabela: string);
    begin
      with TQuery.create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Delete from ' + nomeTabela + ' where inst_cod = ' + quPrincipal.FieldByName('inst_cod').Text);
        ExecSql;
        Free;
      end;
    end;
  begin
    Tabela('InstFuncionario');
    Tabela('InstCoordenador');
    Tabela('InstCurso');
  end;

begin
  // verifica se tem estudantes cadastrados
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Add('select est_cod from Estudante');
    Sql.Add('where inst_cod = ' + quPrincipal.FieldByName('inst_cod').AsString);
    Open;

    if not IsEmpty then
    begin
      MSGAVISO('Existem estudantes vinculados a esta instituição. Não é possível excluí-la!');
      Exit;
    end;

    Close;
    Free;
  end;


  if VerificaDelecao then
  begin
    if MSGSIMNAO('Deseja excluir o registro posicionado?') then
    begin
      try
        btEnter.SetFocus;
        DeletaTabelas;
        DmDta.ExcluirRegistro(quPrincipal);
        estadoNavegando;

        cbTipoPesquisa.ItemIndex := 1;
        Notebook1.PageIndex := 0;
        edPar.Clear;
        if edPar.CanFocus then edPar.SetFocus;

      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
  end
  else
    MSGERRO('Existem estudantes cadastrados na instituição. Exclusão não permitida!');
end;

procedure TFORINS.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
      PgPrincipal.ActivePageIndex := 0;
      Exit;
    end;

    EstadoEditando;
  end
  else
  begin
    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      MSGERRO('Salve o registro primeiramente!');
      PgPrincipal.ActivePageIndex := 1;
    end
    else
      EstadoNavegando();

    cbTipoPesquisa.ItemIndex := 1;
    Notebook1.PageIndex := 0;
    edPar.Clear;
    if edPar.CanFocus then edPar.SetFocus;
  end;
end;

procedure TFORINS.edParExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if edPar.Text <> '' then
  begin
    argumento := 'I.inst_cod      *= IF1.Inst_cod and ' +
      'I.inst_respconv *= IF1.func_cod and ' +
      'I.inst_cod      *= IF2.Inst_cod and ' +
      'I.inst_respcomp *= IF2.func_cod and ' +
      ' I.inst_cod      *= IF3.Inst_cod and ' +
      ' I.inst_respdiv1 *= IF3.func_cod and ' +
      ' I.inst_cod      *= IF4.Inst_cod and ' +
      ' I.inst_respdiv2 *= IF4.func_cod and ' +
      ' I.inst_cod      *= IF5.Inst_cod and  ' +
      ' I.inst_respdiv3 *= IF5.func_cod   ';


    tabelas := 'Instituicao I, InstFuncionario IF1, InstFuncionario IF2,InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5';

    colunas := 'I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomerespcomp,IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2, ' +
      ' IF5.ifu_nome Divulga3 ';

    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'i.inst_cod';
          argumento := argumento + ' and i.inst_cod = ' + edPar.Text;
          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
      1:
        begin
          ordem := 'i.inst_nome';
         // argumento := argumento + ' and i.inst_nome like ''%' + edPar.Text + '%''';
          argumento := argumento + ' and ((I.INST_nome like ''%' + edPar.Text + '%'') or ' +
            '(I.INST_nomefantasia like ''%' + edPar.Text + '%''))';


          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
      4:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_endereco like ''%' + edPar.Text + '%''';
          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
      5:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_bairro like ''%' + edPar.Text + '%''';
          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
      6:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_cidade like ''%' + edPar.Text + '%''';
          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
      8:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_estado = ''' + edPar.Text + '''';
          DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
          estadoNavegando();
        end;
    end;
  end;
end;

procedure TFORINS.btFuncionariosClick(Sender: TObject);
var
  bNovaInst: Boolean;
begin
  MudaAba := False;
  bNovaInst := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      bNovaInst := quPrincipal.State = dsInsert;
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
    FORIFU := TFORIFU.Create(Self);
    FORIFU.NovaIns := bNovaInst;
    FORIFU.Inst := quPrincipal.FieldByName('inst_cod').AsInteger;
    FORIFU.InstNome := quPrincipal.FieldByName('inst_nome').AsString;
    Screen.Cursor := crDefault;
    FORIFU.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORINS.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFORINS.btCursosClick(Sender: TObject);
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
    FORICU := TFORICU.Create(Self);
    FORICU.SetaCodigo(quPrincipal.FieldByName('inst_cod').AsInteger, quPrincipal.FieldByName('inst_nome').AsString);
    Screen.Cursor := crDefault;
    FORICU.ShowModal;
  end;
  MudaAba := true;
end;

procedure TFORINS.btCancelarClick(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := 0;
  edPar.Clear;
  if edPar.CanFocus then edPar.SetFocus;
end;

procedure TFORINS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    vk_F6: btFuncionariosClick(Sender);
    vk_F7: btResponsaveisClick(Sender);
    vk_f8: btCursosClick(Sender);
    vk_F9: btconvenioClick(sender);
    vk_F10: btEtiquetasClick(sender);
    vk_F11: btImpressaoClick(sender);
    vk_F12: btCoordenadoresClick(Sender);
  end;
end;

procedure TFORINS.LimpaCampos;
begin
  inherited;
  edInstDtInc.Clear;
  edInstDtRetorno.Clear;
  meCnpj.Clear;
end;

procedure TFORINS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORINS.btEtiquetasClick(Sender: TObject);
var
  End2, Cep: string;
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
    if quPrincipal.FieldByName('inst_cep').AsString <> '' then
    begin
      Cep := quPrincipal.FieldByName('inst_cep').AsString;
      Cep := Copy(Cep, 1, 2) + '.' + Copy(Cep, 3, 3) + '-' + Copy(Cep, 6, 3);
    end;

    End2 := 'CEP: ' + Cep + ' - ' +
      quPrincipal.FieldByName('inst_bairro').AsString + ' - ' +
      quPrincipal.FieldByName('inst_cidade').AsString + '/PR';

    if quPrincipal.FieldByName('inst_caixapostal').Text <> '' then
      End2 := End2 + ' - C.P. ' + quPrincipal.FieldByName('inst_caixapostal').Text;

    Screen.Cursor := crHourGlass;
    FORETQ := TFORETQ.Create(Self);
    FORETQ.F2 := True;
    FORETQ.nome := quPrincipal.FieldByName('inst_nome').AsString;
    FORETQ.nomeResp := quPrincipal.FieldByName('inst_nomerespcomp').AsString;
    FORETQ.End1 := quPrincipal.FieldByName('inst_endereco').AsString;
    if quPrincipal.fieldbyname('inst_numend').Text <> '' then
      FORETQ.End1 := FORETQ.End1 + ' ' + quPrincipal.fieldbyname('inst_numend').Text;
    if quPrincipal.fieldbyname('inst_sala').Text <> '' then
      FORETQ.End1 := FORETQ.End1 + ' - SALA ' + quPrincipal.fieldbyname('inst_sala').Text;
    FORETQ.End2 := End2;
    Screen.Cursor := crDefault;
    FORETQ.ShowModal;

    if (FORETQ.Linha <> 0) and (FORETQ.Coluna <> 0) and (FORETQ.Etiquetas <> 0) then
    begin
      QRETQ := TQREtq.Create(Application);
      QRETQ.SetaEtiquetas(FORETQ.Nome, 'A/C: ' + FORETQ.NomeResp, FORETQ.End1, FORETQ.End2,
        FORETQ.Linha, FORETQ.Coluna, FORETQ.Etiquetas);
      QRETQ.Preview;
      QRETQ.tbEtiqueta.Close;
      QRETQ.Free;
    end;
    FORETQ.Free;
  end;
  MudaAba := True;
end;

procedure TFORINS.edInstDtIncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then
    quPrincipal.Edit;
end;

procedure TFORINS.edInstDtIncKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
  if (Sender <> DBEdit2) then
    CaracterMaiusculo(Key);
end;

procedure TFORINS.DBComboBox1Click(Sender: TObject);
begin
  inherited;
  Salvou := True;
end;

procedure TFORINS.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  {if not ValidaCgcCpf(meCnpj.text) then
  begin
    MSGERRO('CNPJ inválido. Verifique-o novamente!');
    meCnpj.SetFocus;
  end;}
end;

procedure TFORINS.btConvenioClick(Sender: TObject);
var
  var1: Variant;
  DataC: string;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'Janeiro';
    me[2] := 'Fevereiro';
    me[3] := 'Março';
    me[4] := 'Abril';
    me[5] := 'Maio';
    me[6] := 'Junho';
    me[7] := 'Julho';
    me[8] := 'Agosto';
    me[9] := 'Setembro';
    me[10] := 'Outubro';
    me[11] := 'Novembro';
    me[12] := 'Dezembro';
    //dt := edInstDtInc.Text;
    dt := datetostr(date);
    da[1] := dt[1];
    da[2] := dt[2];
    da[3] := dt[4];
    da[4] := dt[5];
    da[5] := dt[7];
    da[6] := dt[8];
    da[7] := dt[9];
    da[8] := dt[10];
    d := da[1] + da[2];
    m := da[3] + da[4];
    a := da[5] + da[6] + da[7] + da[8];
    datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
  end;

  procedure Imprime_Gama;
  begin
    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio + 'Convenio_gama.doc');
    Var1.AppShow;
  end;


  function Estados(uf:string):string;
  var
  luf:string;
  begin
  luf := uppercase(uf);

  if uf = 'PR' THEN
     RESULT := 'Paraná';
  if uf = 'SC' THEN
     RESULT := 'Santa Catarina';
  if uf = 'RS' THEN
     RESULT := 'Rio Grande do Sul';
  if uf = 'RJ' THEN
     RESULT := 'Rio de Janeiro';
  if uf = 'SP' THEN
     RESULT := 'São Paulo';
  if uf = 'BA' THEN
     RESULT := 'Bahia';
  if uf = 'MG' THEN
     RESULT := 'Minas Gerais';
  if uf = 'RN' THEN
     RESULT := 'Rio Grande do Norte';
  if uf = 'AM' THEN
     RESULT := 'Amazonas';
  if uf = 'ES' THEN
     RESULT := 'Espirito Santo';
  if uf = 'CE' THEN
     RESULT := 'Ceará';
  if uf = 'AL' THEN
     RESULT := 'Alagoas';
  if uf = 'PE' THEN
     RESULT := 'Pernanbuco';
  if uf = 'DF' THEN
     RESULT := 'Distrito Federal';
  if uf = 'MS' THEN
     RESULT := 'Mato Grosso do Sul';
  if uf = 'MT' THEN
     RESULT := 'Mato Grosso';
  if uf = 'PA' THEN
     RESULT := 'Pará';
  if uf = 'GO' THEN
     RESULT := 'Goiás';
  if uf = 'SE' THEN
     RESULT := 'Sergipe';
  if uf = 'AC' THEN
     RESULT := 'Acre';
  if uf = 'MA' THEN
     RESULT := 'Maranhão';
  if uf = 'TO' THEN
     RESULT := 'Tocantins';
  if uf = 'PI' THEN
     RESULT := 'Piauí';
  if uf = 'PB' THEN
     RESULT := 'Paraiba';
  if uf = 'RO' THEN
     RESULT := 'Rondônia';
  if uf = 'RR' THEN
     RESULT := 'Roraima';



  end;

  procedure Imprime;
  var
    Numero, Responsavel, Cargo: string;
    Escola, funcionarioEscola: INTEGER;
  begin
    ESCOLA := 0;
    FUNCIONARIOESCOLA := 0;
    Numero := FormatDateTime('yyyy', Now()) + Copy('0000' + DBEdit1.Text, Length(DBEdit1.Text) + 1, 4);
    var1 := CreateOleObject('Word.basic');
    var1.FileNew(FORINI.Diretorio + 'Convenio.dot');
    // Dados da impressão
    Var1.Font('Arial', 12);
    Var1.Bold;
    Var1.CenterPara;
    if Numero <> '' then
      Var1.Insert('TERMO DE CONVÊNIO Nº ' + Numero + #13 + #13 + #13);

    Var1.JustifyPara;
    Var1.Insert('Pelo presente instrumento particular, de um lado ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, ');
    Var1.Bold;
    Var1.Insert('pessoa jurídica de direito privado, agente de integração declarado de utilidade pública, de fins educacionais e sem intuito lucrativo, ');
    Var1.Insert('com sede na cidade de Curitiba, Estado do Paraná, na ');
    Var1.Insert('Avenida Iguaçu, nº 2345, 1º andar, inscrita no CNPJ/MF sob nº. ');
    Var1.Insert('02.217.643/0001-17, neste ato representado por seu Diretor-Presidente ');
    Var1.Bold;
    Var1.Insert('Rodrigo Kotzias Moscalewski, ');
    Var1.Bold;
    Var1.Insert('brasileiro, casado, empresário, portador da carteira de identidade RG nº. 3.655.060-0 SSP/PR e inscrito no CPF/MF sob nº. 873.751.419-91, ora denominado ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('e de outro lado ');
    Var1.Bold;
    Var1.Insert(dmDta.quInstituicaoinst_nome.Text + ', ');
    Var1.Bold;
    Var1.Insert('pessoa jurídica de direito privado, com sede na cidade de ' + DmDta.PrimeirasMaiusculas(dmDta.quInstituicaoinst_cidade.Text) + ', Estado do ' + Estados(dmDta.quInstituicaoinst_Estado.Text));
    Var1.Insert(', na ' + DmDta.PrimeirasMaiusculas(dmDta.quInstituicaoinst_endereco.Text));
    if dmDta.quInstituicao.fieldbyname('inst_numend').Text <> '' then
      Var1.Insert(', nº ' + dmDta.quInstituicao.fieldbyname('inst_numend').Text);
    if dmDta.quInstituicao.fieldbyname('inst_sala').Text <> '' then
      Var1.Insert(' - SALA ' + dmDta.quInstituicao.fieldbyname('inst_sala').Text);
    //Var1.Insert(', em ' + DmDta.PrimeirasMaiusculas(dmDta.quInstituicaoinst_cidade.Text) + ' (' + dmDta.quInstituicaoinst_estado.Text + '), ');
    Var1.Insert(', inscrita no CNPJ/MF sob nº. ' + Copy(DmDta.quInstituicaoinst_cnpj.Text, 1, 2) + '.' + Copy(DmDta.quInstituicaoinst_cnpj.Text, 3, 3) + '.' + Copy(DmDta.quInstituicaoinst_cnpj.Text, 6, 3) + '/' + Copy(DmDta.quInstituicaoinst_cnpj.Text, 9, 4) + '-' + Copy(DmDta.quInstituicaoinst_cnpj.Text, 13, 2) + ', ');
    escola := DmDta.quInstituicaoinst_cod.asinteger;
    dmdta.PegaResponsavelEscola(2, escola, FuncionarioEscola);

    //if not DmDta.quInstituicaoinst_respconv.IsNull then
    if funcionarioEscola > 0 then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;

        Sql.Add('Select ifu_nome,ifu_estcivil,ifu_cargo,ifu_rg,ifu_cpf,ifu_nacionalidade from InstFuncionario where inst_cod = ' + DmDta.quInstituicaoinst_cod.Text);
        Sql.Add('and func_cod = ' + inttostr(funcionarioEscola));
        Open;
        Var1.Insert('neste ato representada por seu(ua) ');
        Var1.Insert(DmDta.PrimeirasMaiusculas(fieldbyname('ifu_cargo').ASSTRING) + ' ');
        Var1.Bold;
        Var1.Insert(DmDta.PrimeirasMaiusculas(fieldbyname('ifu_nome').ASSTRING) + ', ');
        Var1.Bold;
        Var1.Insert(ANSILOWERCASE(fieldbyname('ifu_nacionalidade').ASSTRING) + ', ');
        Var1.Insert(ANSILOWERCASE(fieldbyname('ifu_estcivil').ASSTRING) + ', ');
        responsavel := DmDta.PrimeirasMaiusculas(fieldbyname('ifu_NOME').ASSTRING);
        cargo := DmDta.PrimeirasMaiusculas(fieldbyname('ifu_cargo').ASSTRING);
        if not IsEmpty then
        begin
          Var1.Insert('portador(a) da carteira de identidade RG nº. ' + FieldByName('ifu_rg').AsString + '  ');
          Var1.Insert('e inscrito(a) no CPF/MF sob nº. ');
          Var1.Insert(Copy(FieldByName('ifu_cpf').Text, 1, 3) + '.' + Copy(FieldByName('ifu_cpf').Text, 4, 3) + '.' + Copy(FieldByName('ifu_cpf').Text, 7, 3) + '-' + Copy(FieldByName('ifu_cpf').Text, 10, 2) + ', ');

        end;
        Close;
        Free;
      end;
    end;
    Var1.Insert('ora denominada ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('firmam o presente Termo de Convênio nº. ' + Numero + ' que se regerá pelas seguintes cláusulas e condições:' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA PRIMEIRA: OBJETO' + #13 + #13);
    Var1.Insert('O presente Convênio tem como objetivo estabelecer a cooperação recíproca entre as partes, visando à execução do Programa de Estágio ');
    Var1.Insert('Supervisionado, em conformidade com a Lei nº. 11.788 de 25/09/2008 e demais disposições legais aplicáveis.' + #13 + #13);
    Var1.Bold;
    Var1.Insert('Parágrafo Único: ');
    Var1.Bold;
    Var1.Insert('Conforme estabelece o artigo 5º. da Lei nº. 11.788/2008, o ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('deverá atuar como intermediador do processo de estágio estabelecido entre o estudante, a Parte Concedente e a ');



    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('sendo-lhe vedado representar qualquer uma das');
    Var1.Insert(' partes antes mencionadas em instrumentos jurídicos a serem firmados visando à formalização do estágio. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA SEGUNDA: OBRIGAÇÕES DO CETEFE' + #13 + #13);
    Var1.Insert('a) Identificar para a ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO ');
    Var1.Bold;
    Var1.Insert('as oportunidades de estágio curricular junto às Partes Concedentes, compatibilizando as atividades');
    Var1.Insert(' e o horário de estágio com a programação curricular do curso do estudante;' + #13 + #13);
    Var1.Insert('b) Cadastrar, convocar e selecionar os estudantes matriculados em curso ou instituição de ensino em que exista a previsão de estágio');
    Var1.Insert(' curricular, encaminhando-os à Parte Concedente, a fim de realizarem atividades compatíveis com a programação curricular estabelecida');
    Var1.Insert(' para cada curso e relacionadas às necessidades da Parte Concedente;' + #13 + #13);

    Var1.Insert('c) Realizar a integração entre a Parte Concedente e a ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('visando facilitar o ajuste das condições para a assinatura do instrumento jurídico previsto no art. 16 da Lei nº. 11.788/2008;' + #13 + #13);
    Var1.Insert('d) Providenciar toda a documentação necessária para a efetivação do estágio, em especial a assinatura do competente "Termo de Compromisso de Estágio" ');
    Var1.Insert('entre a Parte Concedente, o estudante, a ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO ');
    Var1.Bold;
    Var1.Insert('e o ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('de acordo com o disposto no art. 16 da Lei nº. 11.788/2008;' + #13 + #13);
    Var1.Insert('e) Zelar, em conjunto com a ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('pelo cumprimento do “Termo de Compromisso de Estágio” antes referido, reorientando o');
    Var1.Insert(' estudante para outro local em caso de descumprimento das disposições nele estabelecidas; ' + #13 + #13);


    Var1.Insert('f) Providenciar o Seguro Contra Acidentes Pessoais em favor do estudante, assumindo os custos correspondentes.' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA TERCEIRA: OBRIGAÇÕES DA INSTITUIÇÃO DE ENSINO ' + #13 + #13);
    Var1.Insert('a) Informar ao ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('a relação de todos os cursos que mantém, bem como as condições mínimas exigidas para realização de estágio para cada curso;' + #13 + #13);

    Var1.Insert('b) Assinar o “Termo de Compromisso de Estágio” necessário para a celebração do estágio entre a Parte Concedente, o estudante, a ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO ');
    Var1.Bold;
    Var1.Insert('e o ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('indicando as condições de adequação do estágio à proposta pedagógica do curso, à etapa e modalidade da formação');
    Var1.Insert(' escolar do estudante e ao horário do calendário escolar, de acordo com o art. 7º, I, da Lei nº. 11.788/2008;' + #13 + #13);

    Var1.Insert('c) Zelar, em conjunto com o ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('pelo cumprimento do “Termo de Compromisso de Estágio” antes referido, reorientando o estudante para outro local');
    Var1.Insert(' em caso de descumprimento das disposições nele estabelecidas;' + #13 + #13);

    Var1.Insert('d) Avaliar as instalações da Parte Concedente do estágio e a sua adequação à formação cultural e profissional do estudante;' + #13 + #13);

    Var1.Insert('e) Exigir do estudante a apresentação periódica do relatório de atividades, em prazo não superior a 06 (seis) meses;' + #13 + #13);

    Var1.Insert('f) Comunicar ao ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('no início do período letivo, as datas de realização das avaliações escolares ou acadêmicas;' + #13 + #13);

    Var1.Insert('g) Designar professor orientador da área a ser desenvolvida no estágio como responsável');
    Var1.Insert(' pelo acompanhamento efetivo e pelas avaliações das atividades do estudante;' + #13 + #13);

    Var1.Insert('h) Comunicar ao ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('detalhes sobre a situação do estudante no que se refere à regularidade e freqüência escolar,');
    Var1.Insert(' sempre que solicitado ou que se faça necessário;' + #13 + #13);

    Var1.Insert('i) Comunicar ao ');
    Var1.Bold;
    Var1.Insert('CETEFE ');
    Var1.Bold;
    Var1.Insert('sempre que tiver conhecimento de desistências de cursos, trancamento de matrícula,');
    Var1.Insert(' conclusão de curso, bem como outras informações que venham a ser úteis no processo de manutenção do Programa de Estágio;' + #13 + #13);
    Var1.Insert('j) Elaborar normas complementares e instrumentos de avaliação dos estudantes.' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA QUARTA: GRATUIDADE' + #13 + #13);
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO ');
    Var1.Bold;
    Var1.Insert('não terá qualquer obrigação pecuniária em relação às atividades desenvolvidas pelo ');
    Var1.Bold;
    Var1.Insert('CETEFE, ');
    Var1.Bold;
    Var1.Insert('elencadas na Cláusula Segunda supra, sendo o presente Convênio firmado a título gratuito. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA QUINTA: PRAZO ' + #13 + #13);
    Var1.Insert('O presente Convênio vigorará pelo prazo de 12 (doze) meses contados da data de sua assinatura, podendo ser renovado automaticamente após ');
    Var1.Insert('decorrido este prazo, por períodos iguais e sucessivos até o prazo de 60 (sessenta) meses, caso as partes não convencionem em sentido contrário. ' + #13 + #13);
    Var1.Bold;
    Var1.Insert('Parágrafo Único: ');
    Var1.Bold;
    Var1.Insert('Este Convênio poderá ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante comunicação por escrito com 30 (trinta) ');
    Var1.Insert('dias de antecedência, sem que assista à outra parte direito a qualquer reclamação, permanecendo em vigor todas as cláusulas e condições ora estabelecidas durante o prazo de denúncia. ' + #13 + #13 + #13);

    Var1.Bold;
    Var1.Insert('CLÁUSULA SEXTA: FORO ' + #13 + #13);
    Var1.Insert('Fica eleito o Foro Central da Comarca da Região Metropolitana de Curitiba, Estado do Paraná, para dirimir quaisquer dúvidas ou questões oriundas deste Convênio.' + #13 + #13);

    Var1.Insert('E, por assim estarem de acordo, assinam o presente Convênio em 02 (duas) vias de igual teor e forma, na presença de 02 (duas) testemunhas.');
    Var1.Insert(#13 + #13 + #13);

    Var1.CenterPara; // Centraliza o texto
    Var1.Insert('Curitiba, ' + dataC + '. ' + #13 + #13 + #13 + #13);
    Var1.CenterPara; // Centraliza o texto

    Var1.Insert('__________________________________________' + #13);
    Var1.Bold;
    Var1.Insert('Rodrigo Kotzias Moscalewski' + #13);
    Var1.Bold;
    //Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE' + #13);
    Var1.Insert('Diretor-Presidente' + #13);
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRAÇÃO' + #13 + #13 + #13 + #13);
    Var1.Insert('__________________________________________' + #13);
    Var1.Bold;
    Var1.Insert(DmDta.PrimeirasMaiusculas(responsavel) + #13);
    Var1.Bold;
    Var1.Insert(DmDta.PrimeirasMaiusculas(cargo) + #13);
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO' + #13 + #13 + #13 + #13);



    Var1.JustifyPara; // Centraliza o texto
    Var1.Insert('Testemunhas: ' + #13 + #13 + #13 + #13);
    Var1.TableInsertTable(NumRows := 1, NumColumns := 2);
    Var1.Insert('1) ________________________________' + #13);
    Var1.Insert('Nome: ' + #13);
    Var1.Insert('RG: ' + #13);
    Var1.Insert('CPF-MF: ' + #13);

    Var1.NextCell;
    Var1.Insert('2) ________________________________' + #13);
    Var1.Insert('Nome: ' + #13);
    Var1.Insert('RG: ' + #13);
    Var1.Insert('CPF-MF: ' + #13);

    Var1.AppShow;
  end;

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
    if DmDta.quInstituicao.FieldByName('inst_cod').AsInteger = 749 then
      Imprime_Gama
    else
    begin
      DtCompleta;
      Imprime;
    end;
  end;
  MudaAba := True;
end;

procedure TFORINS.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFORINS.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrINS := TQRINS.Create(Self);
  Screen.Cursor := crDefault;
  qrINS.Preview;
  qrINS.Free;
end;

procedure TFORINS.btCoordenadoresClick(Sender: TObject);
var
  bNovaInst: Boolean;
begin
  MudaAba := False;
  bNovaInst := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      bNovaInst := quPrincipal.State = dsInsert;
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
    FORIFU1 := TFORIFU1.Create(Self);
    FORIFU1.NovaIns := bNovaInst;
    FORIFU1.Inst := quPrincipal.FieldByName('inst_cod').AsInteger;
    FORIFU1.InstNome := quPrincipal.FieldByName('inst_nome').AsString;
    Screen.Cursor := crDefault;
    FORIFU1.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORINS.btDiretoresClick(Sender: TObject);
var
  bNovaInst: Boolean;
begin
  MudaAba := False;
  bNovaInst := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      bNovaInst := quPrincipal.State = dsInsert;
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
    FORIFU2 := TFORIFU2.Create(Self);
    FORIFU2.NovaIns := bNovaInst;
    FORIFU2.Inst := quPrincipal.FieldByName('inst_cod').AsInteger;
    FORIFU2.InstNome := quPrincipal.FieldByName('inst_nome').AsString;
    Screen.Cursor := crDefault;
    FORIFU2.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORINS.mePesqCnpjExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod      *= IF1.Inst_cod and ' +
    'I.inst_respconv *= IF1.func_cod and ' +
    'I.inst_cod      *= IF2.Inst_cod and ' +
    'I.inst_respcomp *= IF2.func_cod and ' +
    ' I.inst_cod      *= IF3.Inst_cod and ' +
    ' I.inst_respdiv1 *= IF3.func_cod and ' +
    ' I.inst_cod      *= IF4.Inst_cod and ' +
    ' I.inst_respdiv2 *= IF4.func_cod and ' +
    ' I.inst_cod      *= IF5.Inst_cod and  ' +
    ' I.inst_respdiv3 *= IF5.func_cod   ';


  tabelas := 'Instituicao I, InstFuncionario IF1, InstFuncionario IF2,InstFuncionario IF3,InstFuncionario IF4,InstFuncionario IF5';

  colunas := 'I.*, IF1.ifu_nome inst_nomerespconv, If2.ifu_nome inst_nomerespcomp,IF3.ifu_nome Divulga1, If4.ifu_nome Divulga2, ' +
    ' IF5.ifu_nome Divulga3 ';

  ordem := 'i.inst_nome';

  if mePesqCnpj.Text <> '' then
  begin
    argumento := argumento + ' and i.inst_cnpj = ''' + mePesqCnpj.Text + '''';
    DMDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFORINS.sbHistoricoClick(Sender: TObject);
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
    FORIHI := TFORIHI.Create(Self);
    FORIHI.Inst := DBEdit1.Field.AsInteger;
    Screen.Cursor := crDefault;
    FORIHI.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORINS.SpeedButton1Click(Sender: TObject);
var
  linha: ansistring;
begin
  inherited;
  linha := '';
  with DmDta.quInstituicao do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    while not Eof do
    begin
      if dbgrid1.SelectedRows.CurrentRowSelected then
      begin
        linha := linha + FieldByName('Inst_cod').Asstring + ',';
       // dbgrid1.SelectedRows.CurrentRowSelected := false;
      end;
      Next;
    end;
    enableControls;
  end;
  if length(linha) > 0 then
  begin
    linha := copy(linha, 1, length(linha) - 1);
    qryestudante.Close;
    qryestudante.SQL.Clear;
    qryestudante.SQL.Text := 'SELECT  Tce.Tce_cod, Empresa.Emp_nome, Estudante.Est_nome, Estudante.est_cod, Estudante.Est_endereco, Estudante.Est_bairro, Estudante.Est_cidade, ' +
      ' Estudante.Est_estado, Instituicao.Inst_cod, Estudante.est_situacao, Instituicao.Inst_nome, Tce.Tce_estenc, Curso.cur_nome, Curso.cur_nivel ' +
      '  FROM         Instituicao INNER JOIN Estudante ON Instituicao.Inst_cod = Estudante.inst_cod INNER JOIN ' +
      ' Tce ON Estudante.est_cod = Tce.Est_cod INNER JOIN ' +
      ' Empresa ON Tce.Emp_cod = Empresa.Emp_cod INNER JOIN ' +
      ' Curso ON Estudante.cur_cod = Curso.cur_cod ' +
      ' WHERE     (Estudante.est_situacao = ''S'') and ' +
      ' Instituicao.inst_cod in (' + linha + ')  and Tce.Tce_situacao <> 7 ' +
      ' ORDER BY Instituicao.Inst_nome, Estudante.Est_nome ';
    qryestudante.Open;
    campos.Items.Clear;
    ExportarDadosExcel(qryestudante, campos, 'Inst_nome', 'Relação de Estágiarios', 'Por Instituição de Ensino');
    //GerarExcel(qryestudante, Caption);
    Screen.Cursor := crDefault;


  end;
end;

procedure TFORINS.MarcarTodos1Click(Sender: TObject);
begin
  inherited;
  with DmDta.quInstituicao do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    while not Eof do
    begin
      dbgrid1.SelectedRows.CurrentRowSelected := true;
      Next;
    end;
    enableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFORINS.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  campos.Items.Clear;
  ExportarDadosExcel(quprincipal, campos, '', 'Relação de Instituições de Ensino', '');
end;

procedure TFORINS.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  Screen.Cursor := crHourGlass;
  FORMInstObs := TFORMInstObs.Create(Self);
  Screen.Cursor := crDefault;
  FORMInstObs.ShowModal;
  FORMInstObs.Free; 
end;

procedure TFORINS.DBEdit7Exit(Sender: TObject);
var
  Logradouro, Bairro, Cidade,
    Uf: string;
begin
  inherited;
  if DmDta.quInstituicao.State in [dsedit, dsinsert] then
  begin
    Buscacep(DmDta.quInstituicaoInst_cep.AsString, Logradouro, Bairro, Cidade, Uf);
    if logradouro <> '' then
      DmDta.quInstituicaoInst_endereco.AsString := logradouro;
    if bairro <> '' then
      DmDta.quInstituicaoInst_bairro.AsString := bairro;
    if uf <> '' then
      DmDta.quInstituicaoInst_estado.AsString := uf;
    if cidade <> '' then
      DmDta.quInstituicaoInst_cidade.AsString := cidade;

  end;
end;
procedure TFORINS.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORInstTce := TFORInstTce.Create(Self);
  Screen.Cursor := crDefault;
  FORInstTce.ShowModal;
  ForInstTce.free;
end;

end.

