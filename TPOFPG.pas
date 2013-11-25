unit TPOFPG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, DBCGrids, Menus;

type
  TFORFPG = class(TFORMOD3)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    edAno: TEdit;
    edMes: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    DBCheckBox1: TDBCheckBox;
    quInsereFolha: TQuery;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox2: TDBCheckBox;
    Button1: TButton;
    btCalcular: TSpeedButton;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    btExportar: TSpeedButton;
    qryEstudantes: TQuery;
    btLiberarMtos: TSpeedButton;
    cbHabilitaEdicao: TCheckBox;
    edTotalEst: TEdit;
    ExportarItau: TSpeedButton;
    PopupMenu1: TPopupMenu;
    MarcarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    Qrypesquisa: TQuery;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    ExportarHSBC: TSpeedButton;
    btPreencherValoresZerados: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btExportarClick(Sender: TObject);
    procedure btLiberarMtosClick(Sender: TObject);
    procedure cbHabilitaEdicaoClick(Sender: TObject);
    procedure ExportarItauClick(Sender: TObject);
    function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
    procedure MarcarTodas1Click(Sender: TObject);
    procedure DesmarcarTodas1Click(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ExportarHSBCClick(Sender: TObject);
    procedure btPreencherValoresZeradosClick(Sender: TObject);

  private
    procedure PreencheValoresZerados;
  public
    { Public declarations }
    Fat, Mes, Ano, Emp: Integer;
    EmpNome: string;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure PreencheEstudantesEmp;
    procedure AtualizarCCEstudantes();
  end;

var
  FORFPG: TFORFPG;

implementation

uses TPODTA, TPOFNC, TPOEST, TPOCST, TPOLote, TPOLote2;

{$R *.DFM}

procedure TFORFPG.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'est_cod';
  nomeNome := 'est_nome';
  nomeTabela := 'folhaPgto';
  DmDta.Fatura := 0; // Fatura do DmDTA p/ controle do grid

  quPrincipal1 := DmDta.quFolhaPgto;
  DmDta.dsFolhaPgto.DataSet := quPrincipal1;
end;

procedure TFORFPG.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsFolhaPgto.DataSet := DmDta.quFolhaPgto;
end;

procedure TFORFPG.AtualizaDados;
begin
  inherited;
end;

procedure TFORFPG.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('fat_numero').Value := Fat;
  quPrincipal1.FieldbyName('fbo_descontos').Value := 0;
  quPrincipal1.FieldByName('tce_cod').Value := 0;
  quPrincipal1.FieldByName('fbo_situacao').Value := '0';
  quPrincipal1.FieldByName('fbo_liberacao').Value := '1';
  DBCheckBox1.ReadOnly := True;
  DBEdit1.SetFocus;
end;

procedure TFORFPG.BuscaPrimeiroUltimo;
begin
  inherited;
end;

procedure TFORFPG.FormShow(Sender: TObject);
begin
  try
    edAno.Text := IntToStr(Ano);
    edMes.Text := IntToStr(Mes);
    edEmpCod.Text := IntToStr(Emp);
    edEmpNome.Text := EmpNome;

    with quPrincipal1 do
    begin
      Close;
      ParamByName('fat_numero').AsInteger := Fat;
      Open;

      if IsEmpty then
      begin
        close;
        PreencheEstudantesEmp;
        //Close;
        ParamByName('fat_numero').AsInteger := Fat;
        Open;
        edTotalEst.Text := IntToStr(RecordCount);
      end;
    end;
    inherited;
    edTotalEst.Text := IntToStr(quPrincipal1.RecordCount);
  except
    MSGERRO('Problemas na geração da folha de pagamento. Favor verificar os estagiários por empresa.' +
      #13 + 'Depois exclua essa fatura e inclua novamente!');
  end;
end;

procedure TFORFPG.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.Fatura := 0; // Fatura do DmDTA p/ controle do grid
  if DBEdit1.Text = '' then
  begin
    MSGERRO('Entre com o nome do estudante da folha!');
    DBEdit1.SetFocus;
  end
  else if DBEdit3.Text = '' then
  begin
    MSGERRO('Entre com o valor da bolsa do estudante!');
    DBEdit3.SetFocus;
  end
  else
  begin
    inherited;
    btCalcular.Click;
    DBCheckBox1.ReadOnly := False;
    btCalcular.Enabled := True;
    DBGRid1.SetFocus;
  end;
end;

procedure TFORFPG.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  if DBEdit1.ReadOnly then Exit;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    if not (DmDta.quFolhaPgto.State in [dsInsert, dsEdit]) then dmDta.quFolhaPgto.Edit;
    DmDta.quFolhaPgtoest_cod.Text := FOREST.F2Codigo;
    DmDta.quFolhaPgtoest_nome.Text := FOREST.F2Nome + ' (*)';

    SelectNext(ActiveControl, True, True);
  end;

  FOREST.Free;
end;

procedure TFORFPG.btCancelarClick(Sender: TObject);
begin
  btenter.SetFocus;
  DmDta.Fatura := 0; // Fatura do DmDTA p/ controle do grid
  inherited;
  DBCheckBox1.ReadOnly := False;
  btCalcular.Enabled := True;
  DBGRid1.SetFocus;
end;

procedure TFORFPG.PreencheEstudantesEmp;
var
  empCod, data1, data2, SituacaoEst: string;
  empresa, Funcionario, totTotal, TotResc: Integer;
begin
  Screen.Cursor := crHourGlass;

  data1 := '01/' + DmDta.quFaturafat_mes.Text + '/' + DmDta.quFaturafat_ano.Text;
  data2 := IntToStr(RetornaDiasMes(DmDta.quFaturafat_mes.AsInteger, DmDta.quFaturafat_ano.AsInteger)) +
    '/' + DmDta.quFaturafat_mes.Text + '/' +
    DmDta.quFaturafat_ano.Text;

  empCod := DmDta.quFaturaemp_Cod.text;
  empresa := strtoint(empCod);
  funcionario := 0;
  dmdta.PegaResponsavel(1, empresa, funcionario);
  dmdta.qrypesquisa.Close;
  dmdta.qrypesquisa.SQL.Clear;
  dmdta.qrypesquisa.SQL.add(' select p.*,f.emp_cod from  Fatura F, Folhapgto P ');
  dmdta.qrypesquisa.SQL.add(' where f.fat_mes = ''' + DmDta.quFaturafat_mes.Text + ''' and f.fat_ano = ''' + DmDta.quFaturafat_ano.Text + ''' ');
  dmdta.qrypesquisa.SQL.add(' and  P.fat_numero = f.fat_numero and  p.tce_cod=:tce  and p.controle=:controle ');

  //  Sql.Add('  m.emp_cod = f.emp_cod and');
  //  Sql.Add('  m.emp_respcomp = f.func_cod and');

  with DmDta.quEstEmp do
  begin
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, 0 Situacao, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  Convert(DateTime,null) as tpr_dataini, Convert(DateTime,null) as tpr_datafim, e.est_pgtolib, i.inst_nivel,Convert(DateTime,Null) as DTAlteracao ');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, empFuncionario F, Curso C');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.emp_cod = ' + empCod + ' and');
    Sql.Add('  t.tce_situacao = ''0'' and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  ' + inttostr(empresa) + ' = f.emp_cod and');
    Sql.Add('  ' + inttostr(funcionario) + ' = f.func_cod and');
    Sql.Add('  t.tce_dataini <= :data2 and');
    Sql.Add('  t.tce_datafim >= :data1');
    Sql.Add('union');
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, a.prg_cod Situacao, ');
    Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel,Convert(DateTime,Null) as DTAlteracao');
    Sql.Add('from');
    Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, EmpFuncionario F, Curso C');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.tce_cod = a.tce_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  ' + inttostr(empresa) + ' = f.emp_cod and');
    Sql.Add('  ' + inttostr(funcionario) + ' = f.func_cod and');
    Sql.Add('  t.emp_cod = ' + empCod + ' and');
    Sql.Add('  t.tce_situacao <> ''7'' and');
    Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
    Sql.Add('  t.tce_situacao <> ''0'' and');
    Sql.Add('  t.tce_dataini <= :data2 and');
    Sql.Add('  a.tpr_datafim >= :data1');
    Sql.Add('union');
    //rescindidos
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, 0 Situacao, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  Convert(DateTime,null) as tpr_dataini, Convert(DateTime,null) as tpr_datafim, e.est_pgtolib, i.inst_nivel,Convert(DateTime,Null) as DTAlteracao');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, EmpFuncionario F');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.tce_situacao = ''7'' and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  ' + inttostr(empresa) + ' = f.emp_cod and');
    Sql.Add('  ' + inttostr(funcionario) + ' = f.func_cod and');
    Sql.Add('  t.emp_cod = ' + empCod + ' and');
    Sql.Add('  t.tce_dataini <= :data2 and');
    Sql.Add('  t.tce_datares >= :data1');
    Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and ');
    Sql.Add('  tpr_dataini <= :data2)');
    Sql.Add('union');

    //rescindidos
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, 9 Situacao, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  Convert(DateTime,null) as tpr_dataini, Convert(DateTime,null) as tpr_datafim, e.est_pgtolib, i.inst_nivel,Convert(DateTime,Null) as DTAlteracao');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, EmpFuncionario F');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.tce_situacao = ''7'' and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  ' + inttostr(empresa) + ' = f.emp_cod and');
    Sql.Add('  ' + inttostr(funcionario) + ' = f.func_cod and');
    Sql.Add('  t.emp_cod = ' + empCod + ' and');
    Sql.Add('  t.tce_dataini <= :data2 and');
    Sql.Add('  t.tce_datares >= :data1 ');
    Sql.Add('  and ( t.tce_dataini >= ''25/09/2008''  or (select  max(tpr_dataemi) data  from tceaditivo where tce_cod = t.tce_cod) >= ''25/09/2008'' or  ');
    Sql.Add('  (select max(tal_dataemi) data from tcealteracao where tce_cod = t.tce_cod) >= ''25/09/2008'' )  ');
    Sql.Add('union');

    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, F.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, max(a.prg_cod) Situacao, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  Convert(DateTime,null) as tpr_dataini, Convert(DateTime,null) as tpr_datafim, e.est_pgtolib, i.inst_nivel,Convert(DateTime,Null) as DTAlteracao');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, TceAditivo A, EmpFuncionario F, Curso C');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.tce_cod = a.tce_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  t.tce_situacao = ''7'' and');
    Sql.Add('  t.emp_cod = ' + empCod + ' and');
   // Sql.Add('  m.emp_cod = f.emp_cod and');
   // Sql.Add('  m.emp_respcomp = f.func_cod and');
    Sql.Add('  ' + inttostr(empresa) + ' = f.emp_cod and');
    Sql.Add('  ' + inttostr(funcionario) + ' = f.func_cod and');
    Sql.Add('  a.tpr_dataini <= :data2 and');
    Sql.Add('  t.tce_datares >= :data1');
    Sql.Add('group by');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  e.est_pgtolib, i.inst_nivel');
    Sql.Add('order by');
    Sql.Add('  e.est_nome');
    ParamByName('data1').AsDateTime := StrToDate(data1);
    ParamByName('data2').AsDateTime := StrToDate(data2);
    Open;
    first;
    while not eof do
    begin
      with quInsereFolha do
      begin
        if DmDta.quFaturarescisao.asstring = 'S' then
        begin
          if (DmDta.quEstEmpsituacao.AsInteger >= 7) or (DmDta.quEstEmptce_situacao.AsInteger >= 7) then
          begin
            dmdta.qrypesquisa.Close;
            dmdta.qrypesquisa.parambyname('tce').AsInteger := DmDta.quEstEmptce_cod.Value;
            if DmDta.quEstEmpsituacao.AsInteger = 9 then
              dmdta.qrypesquisa.parambyname('controle').AsInteger := 1
            else
              dmdta.qrypesquisa.parambyname('controle').AsInteger := 0;
            dmdta.qrypesquisa.open;
            if dmdta.qrypesquisa.eof then
            begin
              Close;
              ParamByName('fat_numero').Value := Fat;
              ParamByName('tce_cod').Value := DmDta.quEstEmptce_cod.Value;
              ParamByName('est_cod').Value := DmDta.quEstEmpest_cod.Value;
              ParamByName('fbo_valor').Value := 0;
              if DmDta.quEstEmpsituacao.AsInteger = 9 then
                ParamByName('controle').Value := 1
              else
                ParamByName('controle').Value := 0;
              ParamByName('fbo_descontos').Value := 0;
              SituacaoEst := DmDta.quEstEmpest_pgtolib.Text;
              ParamByName('fbo_situacao').Value := SituacaoEst;
              if SituacaoEst = '0' then
                ParamByName('fbo_liberacao').Value := '1'
              else
                ParamByName('fbo_liberacao').Value := '0';
              ExecSql;
            end;
          end;
        end
        else
        begin
          dmdta.qrypesquisa.Close;
          dmdta.qrypesquisa.parambyname('tce').AsInteger := DmDta.quEstEmptce_cod.Value;
          if DmDta.quEstEmpsituacao.AsInteger = 9 then
            dmdta.qrypesquisa.parambyname('controle').AsInteger := 1
          else
            dmdta.qrypesquisa.parambyname('controle').AsInteger := 0;
          dmdta.qrypesquisa.open;
          if dmdta.qrypesquisa.eof then
          begin
            Close;
            ParamByName('fat_numero').Value := Fat;
            ParamByName('tce_cod').Value := DmDta.quEstEmptce_cod.Value;
            ParamByName('est_cod').Value := DmDta.quEstEmpest_cod.Value;
            ParamByName('fbo_valor').Value := 0;
            if DmDta.quEstEmpsituacao.AsInteger = 9 then
              ParamByName('controle').Value := 1
            else
              ParamByName('controle').Value := 0;

              // DmDta.quEstEmpsituacao.AsInteger;
            ParamByName('fbo_descontos').Value := 0;
            SituacaoEst := DmDta.quEstEmpest_pgtolib.Text;
            ParamByName('fbo_situacao').Value := SituacaoEst;
            if SituacaoEst = '0' then
              ParamByName('fbo_liberacao').Value := '1'
            else
              ParamByName('fbo_liberacao').Value := '0';
            ExecSql;
          end;
        end;
      end;

      Next;
    end;
    if quInsereFolha.UpdatesPending then
    begin
      quInsereFolha.ApplyUpdates;
      quInsereFolha.CommitUpdates;
    end;

  end;
  Screen.Cursor := crDefault;
end;

procedure TFORFPG.CarregaDados;
begin
  inherited;
end;

procedure TFORFPG.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORFPG.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
    DmDta.qufolhaPgtoest_nome.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit1.Text));
    DmDta.quFolhaPgtoest_agencia.Text := DmDta.BuscaCampo('Estudante', 'est_agencia', 'est_cod', StrToInt(DBEdit1.Text));
    DmDta.quFolhaPgtoest_conta.Text := DmDta.BuscaCampo('Estudante', 'est_conta', 'est_cod', StrToInt(DBEdit1.Text));

    if DmDta.quFolhaPgtoest_nome.Text = '' then
    begin
      MSGERRO('Estudante inexistente. Selecione outro estudante!');
      DBEdit1.SetFocus;
      Salvou := False;
    end
    else
    begin
      Salvou := True;
      if lblInclusao.Caption = 'Inclusão' then
      begin
        DmDta.qufolhaPgtoest_nome.Text := DmDta.qufolhaPgtoest_nome.Text + ' (*)';
        DmDta.quFolhaPgtofbo_situacao.Text := '0';
        DmDta.quFolhaPgtofbo_liberacao.Text := '1';

        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Add('Select max(tce_cod) as Tce from Tce where est_cod = ' + DBEdit1.Text);
//          Sql.Add('and tce_situacao <> ''7''');
          Open;
          DmDta.quFolhaPgtotce_cod.Value := FieldByName('tce').AsInteger;
          Close;
          Free;
        end;
      end;
    end;
  end
  else
    DmDta.qufolhaPgtoest_nome.Text := '';
end;

procedure TFORFPG.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit1DblClick(Sender);

end;

procedure TFORFPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DmDta.quFolhaPgto.UpdatesPending then
  begin
    DmDta.quFolhaPgto.ApplyUpdates;
    DmDta.quFolhaPgto.CommitUpdates;
  end;

  // Atualiza C/C dos estudantes
  AtualizarCCEstudantes();

  // Registra o total liberado
  with DmDta.quFatura do
  begin
    Edit;
    FieldByName('fat_totLiberado').Value := DBEdit6.Field.Value;
    Post;
    ApplyUpdates;
  end;
  inherited;
  ACTION := CAFREE;
end;

procedure TFORFPG.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit3.SetFocus;
end;

procedure TFORFPG.btNovoClick(Sender: TObject);
begin
  DmDta.Fatura := 1; // Fatura do DmDTA p/ controle do grid
  inherited;
  DBEdit1.ReadOnly := False;
  btCalcular.Enabled := False;
  dmdta.quFolhaPgtocontrole.AsInteger := 0; 
end;

procedure TFORFPG.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 2;
end;

procedure TFORFPG.btCalcularClick(Sender: TObject);
begin
  btEnter.SetFocus;
  with DmDta.quFolhaPgto do
  begin
    if UpdatesPending then
    begin
      ApplyUpdates;
      CommitUpdates;
    end;
  end;
  with DmDta.quTotal do
  begin
    Close;
    ParamByName('fat_numero').AsInteger := DmDta.quFolhaPgtofat_numero.AsInteger;
    Open;
  end;
end;

procedure TFORFPG.DBCtrlGrid1Exit(Sender: TObject);
begin
  inherited;
  if DmDta.quFolhaPgto.State = dsEdit then DmDta.quFolhaPgto.Post;
end;

procedure TFORFPG.btExcluirClick(Sender: TObject);
begin
  inherited;
  btCalcular.Click;
end;

procedure TFORFPG.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORFPG.btExportarClick(Sender: TObject);
var
  F, F1: TextFile;
  sFav, sPag: string;
  ano, mes, dia: Word;
  sValor: string;
begin
  inherited;
  // Gera um arquivo para o Banco do Brasil
  if not directoryexists('C:\BancoBrasil\Aplicativos\Arquivos\Pag\') then
  begin
    createdir('C:\BancoBrasil');
    createdir('C:\BancoBrasil\Aplicativos\');
    createdir('C:\BancoBrasil\Aplicativos\Arquivos');
    createdir('C:\BancoBrasil\Aplicativos\Arquivos\Pag');
  end;

  Screen.Cursor := crHourGlass;

  AssignFile(F, ArquivoBB_F);
  Rewrite(F);
  AssignFile(F1, ArquivoBB_P);
  Rewrite(F1);

  // data de liberação pgto
  DecodeDate(Date, ano, mes, dia);

  with dmDta.quFolhaPgto do
  begin
    First;
    DisableControls;

    while not eof do
    begin
      if FieldByName('fbo_liberacao').AsInteger = 1 then
      begin
        sFav := '';
        sPag := '';

        // Tratamento do valor
        sValor := FormatFloat('0', FieldByName('valorcerto').AsFloat * 100);

        // Arquivo favorecidos
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30);
        sFav := sFav + '1' + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        sFav := sFav + '001' + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 5);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_conta').AsString, 12);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_endereco').AsString, 30);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_cidade').AsString, 20);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_cep').AsString, 8);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_estado').AsString, 2);
        WriteLn(F, sFav);

        // Arquivo pagamentos
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30);
        sPag := sPag + '1' + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(dia), 2);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(mes), 2);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(ano), 4);
        sPag := sPag + PreencheEspacosEsquerda(sValor, 15);
        sPag := sPag + PreencheEspacosDireita('', 20);
        sPag := sPag + '01  30001';
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 5);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_conta').AsString, 12);
        sPag := sPag + '0';
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_endereco').AsString, 30);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_cidade').AsString, 20);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_cep').AsString, 8);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_estado').AsString, 2) + '0';
        WriteLn(F1, sPag);
      end;

      next;
    end;

    First;
    EnableControls;
  end;

  CloseFIle(F);
  CloseFIle(F1);
  Screen.Cursor := crdefault;
  MSGAVISO('Arquivos gerados com sucesso!');
end;

procedure TFORFPG.AtualizarCCEstudantes;
begin
  with DmDTA.quFolhaPgto do
  begin
    first;
    disablecontrols;
    while not eof do
    begin
      qryEstudantes.ParamByName('est_cod').AsInteger := FieldByName('est_cod').AsInteger;
      qryEstudantes.ParamByName('est_agencia').AsString := FieldByName('est_agencia').AsString;
      qryEstudantes.ParamByName('est_conta').AsString := FieldByName('est_conta').AsString;
      qryEstudantes.ExecSql;
      next;
    end;
    first;
    enablecontrols;
  end;
end;

procedure TFORFPG.btLiberarMtosClick(Sender: TObject);
begin
  inherited;
  if cbHabilitaEdicao.Checked then
  begin
    ShowMessage('Desabilite a edição da lista para fazer essa operação!');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  DBGrid1.SelectedRows.Delete;
  Screen.Cursor := crDefault;
  edTotalEst.Text := IntToStr(quPrincipal1.RecordCount);
  // desmarca todos de uma vez
  {DBGrid1.Datasource.Dataset.DisableControls;
  with DBGrid1.SelectedRows do
  begin
    TempBookmark := DBGrid1.Datasource.Dataset.GetBookmark;
    if Count > 0 then
    begin
      for x := 0 to Count - 1 do
      begin
        if IndexOf(Items[x]) > -1 then
        begin
          with DBGrid1.Datasource.Dataset do
          begin
            Bookmark := Items[x];
            Edit;
            If FieldByName('fbo_liberacao').AsInteger = 1 then
              FieldByName('fbo_liberacao').AsInteger := 0
            else
              FieldByName('fbo_liberacao').AsInteger := 1;
            Post;
          end;
        end;
      end;
    end;
  end;
  DBGrid1.Datasource.Dataset.GotoBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.FreeBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.EnableControls;   }
  Screen.Cursor := crDefault;
end;

procedure TFORFPG.cbHabilitaEdicaoClick(Sender: TObject);
begin
  inherited;
  if cbHabilitaEdicao.Checked then
    DBGrid1.Options := DBGrid1.Options - [dgMultiSelect]
  else
    DBGrid1.Options := DBGrid1.Options + [dgMultiSelect];
end;

procedure TFORFPG.ExportarItauClick(Sender: TObject);
var
  F, F1: TextFile;
  sFav, sPag: string;
  ano, mes, dia: Word;
  sValor: string;
  Registro: string;
  CodigoBanco: string;
  NumeroRegistro, NumeroLote: integer;
  total: real;

begin
  Screen.Cursor := crHourGlass;
  FORLOTE := TFORLOTE.Create(Self);
  FORLOTE.Fat := fat;
  FORLOTE.Ano := ano;
  FORLOTE.Mes := mes;
  FORLOTE.Emp := emp;
  FORLOTE.EmpNome := empnome;
  Screen.Cursor := crDefault;
  FORLOTE.ShowModal;
  // saindo
  exit;

  NumeroRegistro := 0;
  NumeroLote := strtoint(copy(DmDta.quFolhaPgtofat_numero.asstring, 5, 4));
  Registro := '';
  CodigoBanco := '341';


  // Gera um arquivo para o Banco do Itau
  if not directoryexists('C:\BancoItau\Aplicativos\Arquivos\Pag\') then
  begin
    createdir('C:\BancoItau');
    createdir('C:\BancoItau\Aplicativos\');
    createdir('C:\BancoItau\Aplicativos\Arquivos');
    createdir('C:\BancoItau\Aplicativos\Arquivos\Pag');
  end;

  Screen.Cursor := crHourGlass;

  AssignFile(F, 'C:\BancoItau\Aplicativos\Arquivos\Pag\list_' + copy(DmDta.quFolhaPgtofat_numero.asstring, 5, 4) + '.txt');
  Rewrite(F);
  AssignFile(F1, 'C:\BancoItau\Aplicativos\Arquivos\Pag\Rem' + copy(DmDta.quFolhaPgtofat_numero.asstring, 5, 4) + '.txt');
  Rewrite(F1);

  Registro := Formatar('341', 3, false, '0'); {1 a 3 - Código do banco}
  Registro := Registro + '0000'; {4 a 7 - Lote de serviço}
  Registro := Registro + '0'; {8 - Tipo de registro - Registro header de arquivo}
  Registro := Registro + Formatar('', 6); {9 a 14 - Complemento}
  Registro := Registro + '080'; {15 a 17 - Versão do Layout}
  Registro := Registro + '2'; {18 - Tipo de inscrição do cedente} // 2 - pessoa juridica

  Registro := Registro + Formatar('02217643000117', 14, false, '0'); {19 a 32 - Número de inscrição do cedente}
  Registro := Registro + Formatar('', 20); {33 a 52 - Complemento}

      {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
  Registro := Registro + Formatar('1568', 5, false, '0'); {53 a 57 - Código da agência} //
  Registro := Registro + Formatar('', 1); {58 - Complemento}
  Registro := Registro + Formatar('13137', 12, false, '0'); {59 a 70 - Numero da Conta debitada} //
  Registro := Registro + Formatar('', 1); {71 - Complemento}
  Registro := Registro + Formatar('7', 1, false, '0'); {72 - Dígito do código do convênio no banco} //
  Registro := Registro + Formatar('CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 30, true, ' '); {73 a 102 - Nome do cedente}

  Registro := Registro + Formatar('BANCO ITAU S.A.', 30, true, ' '); {103 a 132 - Nome do banco}
  Registro := Registro + Formatar('', 10); {133 a 142 }
  Registro := Registro + '1'; {143 - Código de Remessa (1) / Retorno (2)}
  Registro := Registro + FormatDateTime('ddmmyyyy', NOW()); {144 a 151 - Data do de geração do arquivo}
  Registro := Registro + FormatDateTime('hhmmss', NOW()); {152 a 157 - Hora de geração do arquivo}
  Registro := Registro + Formatar('0', 9); {158 a 166 }
  Registro := Registro + Formatar('0', 5); {167 a 171 }
  Registro := Registro + Formatar('', 69); {172 a 240 }

  WriteLn(F1, REGISTRO);
  Registro := '';

      {GERAR REGISTRO HEADER DO LOTE}
  Registro := Formatar(CodigoBanco, 3, false, '0'); {1a 3 - Código do banco}
  Registro := Registro + Formatar(IntToStr(NumeroLote), 4, false, '0'); {4 a 7 - Número do lote de serviço}
  Registro := Registro + '1'; {8 - Tipo do registro - Registro header de lote}
  Registro := Registro + 'C'; {9 - Tipo de operação: C Credito)}

  Registro := Registro + '30'; {10 a 11 - Tipo da Operação: 01 (Cobrança)} // 30 - salario 20 - Fornecedores
  Registro := Registro + '01'; {12 a 13 - Forma de pagamento: preencher com ZEROS no caso de cobrança}
  Registro := Registro + '040'; {14 a 16 - Número da versão do layout do lote}
  Registro := Registro + ' '; {17 - Uso exclusivo FEBRABAN/CNAB}
  Registro := Registro + '2'; {18 - Tipo de inscrição do cedente}
  Registro := Registro + Formatar('02217643000117', 14, false, '0'); {19 a 32 - Número de inscrição do cedente}
  Registro := Registro + Formatar('', 20); {33 a 52 }

  {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
  Registro := Registro + Formatar('1568', 5, false, '0'); {53 a 57 - Código da agência cETEFE} // #####
  Registro := Registro + Formatar('', 1); {58 a 58  Brancos}
  Registro := Registro + Formatar('13137', 12, false, '0'); {59 a 70 Numero da conta Debitada Cetefe} // ####
  Registro := Registro + Formatar('', 1); {71 a 71  Brancos}
  Registro := Registro + Formatar('7', 1, false, '0'); {72 - Dígito do código Agencia do cedente no banco} // ####
  Registro := Registro + Formatar('CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 30, true, ' '); {73 a 102 - Nome do cedente}
  Registro := Registro + Formatar('', 30); {103 a 132  Brancos} // Verificar o tipo de convenio ####
  Registro := Registro + Formatar('', 10); {133 a 142  Brancos} // Verificar o tipo de convenio ####
  Registro := Registro + Formatar('IGUACU', 30, true, ' '); {143 a 172  ENDERECO} // verificar endereco
  Registro := Registro + Formatar('2345', 5, false, '0'); {173 a 177  NUMERO} //
  Registro := Registro + Formatar('1º ANDAR', 15, true, ' '); {178 a 192  COMPLEMENTO} //
  Registro := Registro + Formatar('CURITIBA', 20, true, ' '); {193 a 212  CIDADE} //
  Registro := Registro + Formatar('80240030', 8, false, '0'); {213 a 220  CEP} //
  Registro := Registro + 'PR'; {221 a 222  UF} //
  Registro := Registro + Formatar('', 8); {223 a 230  BRANCOS}
  Registro := Registro + Formatar('', 10); {231 a 240  BRANCOS}

  WriteLn(F1, REGISTRO);
  // data de liberação pgto
  DecodeDate(Date, ano, mes, dia);

  NumeroRegistro := 0;

  with dmDta.quFolhaPgto do
  begin
    First;
    DisableControls;

    while not eof do
    begin
      if FieldByName('fbo_liberacao').AsInteger = 1 then
      begin
        INC(NumeroRegistro);
        Registro := '';
        sFav := '';
        sPag := '';
        // Tratamento do valor
        sValor := FormatFloat('0', FieldByName('valorcerto').AsFloat * 100);
        total := total + FieldByName('valorcerto').AsFloat * 100;

        Registro := Formatar(CodigoBanco, 3, false, '0'); {1a 3 - Código do banco}
        Registro := Registro + Formatar(IntToStr(NumeroLote), 4, false, '0'); { 4 A 7  NUMERO DO LOTE }
        Registro := Registro + '3'; { 8 A 8  REGISTRO DETALHE LOTE }
        Registro := Registro + Formatar(IntToStr(NumeroRegistro), 5, false, '0'); { 9 A 13 N. sequencial do Registro no lote }
        Registro := Registro + 'A'; { 14 A 14  Codigo do Segmento }

        Registro := Registro + '000'; { 15 A 17  Tipo de movimento }
        Registro := Registro + '000'; { 18 A 20  Complemento do registro}
        Registro := Registro + '341'; { 21 A 23  Banco do Favorecido}
        Registro := Registro + '0' + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 4) +
          ' ' + '0000000' + PreencheEspacosDireita(copy(FieldByName('est_conta').AsString, 1, pos('-', FieldByName('est_conta').AsString) - 1), 5) + ' '
          + PreencheEspacosDireita(copy(FieldByName('est_conta').AsString, pos('-', FieldByName('est_conta').AsString) + 1, 1), 1); { 24 a 43 Dados da conta do favorecido}
        Registro := Registro + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30); { 44 a 73 Nome do Favorecido}
        Registro := Registro + PreencheEspacosDireita(DmDta.quFolhaPgtofat_numero.Asstring, 20); {74 a 93 Seu numero }
        Registro := Registro + FormatDateTime('ddmmyyyy', date); {94 a 101   Data de Pagamento}
        Registro := Registro + '009'; { 102 a 104  Moeda}
        Registro := Registro + Formatar('0', 9, false, '0'); {105 a 119 }
        Registro := Registro + Formatar(svalor, 21, false, '0'); {120 a 134 valor previsto}
        Registro := Registro + Formatar(' ', 15); {135 a 149 em branco }
        Registro := Registro + Formatar(' ', 5); {150 a 154 em branco }
        Registro := Registro + Formatar('0', 8, false, '0'); {155 a 162 Data da efetivação do Pagamento}
        Registro := Registro + Formatar('0', 15, false, '0'); {163 a 177 Valor Efetivo do pagamento }
        Registro := Registro + Formatar(' ', 18); {178 a 195 em branco  Nota 13}
        Registro := Registro + Formatar(' ', 2); {196 a 197 em branco }
        Registro := Registro + Formatar('0', 9, false, '0'); {198 a 203 nota 14 }
        Registro := Registro + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        Registro := Registro + Formatar('51', 2); {218 a 219 nota 30 } //###
        Registro := Registro + '00010'; {220 a 224 nota 26 } //###
        Registro := Registro + Formatar(' ', 2); {225 a 229 em branco }
        Registro := Registro + Formatar('0', 1, false, '0'); {230 aviso ao favorecido  Não }
        Registro := Registro + Formatar(' ', 10); {225 a 229 em branco }
        WriteLn(F1, REGISTRO);
        // Arquivo favorecidos

        sFav := sFav + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30);
        sFav := sFav + '1' + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        sFav := sFav + '001' + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 5);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_conta').AsString, 12);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_endereco').AsString, 30);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_cidade').AsString, 20);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_cep').AsString, 8);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_estado').AsString, 2);
        WriteLn(F, sFav);

        // Arquivo pagamentos
        {sPag := sPag + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30);
        sPag := sPag + '1' + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(dia), 2);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(mes), 2);
        sPag := sPag + PreencheZerosEsquerda(IntToStr(ano), 4);
        sPag := sPag + PreencheEspacosEsquerda(sValor, 15);
        sPag := sPag + PreencheEspacosDireita('', 20);
        sPag := sPag + '01  30001';
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 5);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_conta').AsString, 12);
        sPag := sPag + '0';
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_endereco').AsString, 30);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_cidade').AsString, 20);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_cep').AsString, 8);
        sPag := sPag + PreencheEspacosDireita(FieldByName('est_estado').AsString, 2) + '0';
        WriteLn(F1, sPag);}
      end;
      next;
    end;
    registro := '';
    registro := '341' + Formatar(IntToStr(NumeroLote), 4, false, '0') + '5';
    Registro := Registro + Formatar(' ', 9);
    Registro := Registro + Formatar(IntToStr(NumeroRegistro + 2), 6, false, '0');
    svalor := FormatFloat('0', total);
    Registro := Registro + Formatar(svalor, 18, false, '0');
    Registro := Registro + Formatar('0', 18, false, '0');
    Registro := Registro + Formatar(' ', 171);
    Registro := Registro + Formatar(' ', 10);
    WriteLn(F1, REGISTRO);
    registro := '34199999         000001';
    Registro := Registro + Formatar(IntToStr(NumeroRegistro + 4), 6, false, '0');
    registro := Registro + Formatar(' ', 211);
    WriteLn(F1, REGISTRO);
    First;
    EnableControls;
  end;

  CloseFIle(F);
  CloseFIle(F1);
  Screen.Cursor := crdefault;
  MSGAVISO('Arquivos gerados com sucesso!');
end;

function TFORFPG.Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
  QuantidadeAcrescentar,
    TamanhoTexto,
    PosicaoInicial,
    i: integer;

begin
  case CaracterAcrescentar of
    '0'..'9', 'a'..'z', 'A'..'Z': ; {Não faz nada}
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(AnsiUpperCase(Texto));
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else Texto[i] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + Copy(Texto, PosicaoInicial, TamanhoDesejado);

  Result := AnsiUpperCase(Texto);
end;


procedure TFORFPG.MarcarTodas1Click(Sender: TObject);
begin
  inherited;

  dmdta.quFolhaPgto.DisableControls;
  dmdta.quFolhaPgto.first;
  while dmdta.quFolhaPgto.eof = false do
  begin
    dmdta.quFolhaPgto.edit;
    dmdta.quFolhaPgto.FieldByName('fbo_liberacao').AsInteger := 1;
    dmdta.quFolhaPgto.post;
    dmdta.quFolhaPgto.next;
  end;
  dmdta.quFolhaPgto.EnableControls;

end;

procedure TFORFPG.DesmarcarTodas1Click(Sender: TObject);
begin
  inherited;
  dmdta.quFolhaPgto.DisableControls;
  dmdta.quFolhaPgto.first;
  while dmdta.quFolhaPgto.eof = false do
  begin
    dmdta.quFolhaPgto.edit;
    dmdta.quFolhaPgto.FieldByName('fbo_liberacao').AsInteger := 0;
    dmdta.quFolhaPgto.post;
    dmdta.quFolhaPgto.next;
  end;
  dmdta.quFolhaPgto.EnableControls;
end;

procedure TFORFPG.btFecharClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFORFPG.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := true;
end;

procedure TFORFPG.SpeedButton1Click(Sender: TObject);
var
  idempresa, idpessoa, idparcela, iddocumento: integer;
begin
  inherited;
  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.Add('select * from tb_pessoas where emp_cod=(select emp_cod from fatura where fat_numero=:fatura)  ');
  qrypesquisa.ParamByName('fatura').AsInteger := DmDta.qufolhapgtofat_numero.AsInteger;
  qrypesquisa.Open;
  if qrypesquisa.Eof = false then
    idempresa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;

  if (dmdta.quFolhaPgto.FieldByName('id_parcela').AsString = '') and
    (dmdta.quFolhaPgto.FieldByName('lot_numero').asstring = '') and
    (DmDta.quFolhaPgtovalorcerto.AsCurrency > 0) then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('select * from tb_pessoas where est_cod=:codigo or func_cod=:codigo ');
    qrypesquisa.ParamByName('codigo').AsInteger := dmdta.quFolhaPgto.fieldbyname('est_cod').AsInteger;
    qrypesquisa.Open;
    if not qrypesquisa.Eof then
    begin
      idpessoa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;
      QRYPESQUISA.CLOSE;
      QRYPESQUISA.SQL.CLEAR;
      QRYPESQUISA.SQL.ADD('SELECT id_pcSalEst,id_ccSalEst FROM TB_EMPRESA ');
      qrypesquisa.Open;

      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Add('insert into tb_documentos ');
        sql.add(' (id_documento,id_pessoa,pagrec,documento,id_planocontas,num_parcelas,');
        sql.add('totalavista,total,saldo,id_usuarioincluiu,dta_emissao,dataincluiu,vlr_efetuado,status) values ');
        sql.add(' (:id_documento,:id_pessoa,:pagrec,:documento,:id_planocontas,:num_parcelas, ');
        sql.add(':totalavista,:total,:saldo,:id_usuarioincluiu,:dta_emissao,:dataincluiu,0,1 )');
        IDDOCUMENTO := dmdta.NEW_ID('tb_documentos');
        parambyname('pagrec').asstring := 'P';
        parambyname('documento').asstring := DmDta.quFolhaPgtofat_numero.asstring;
        parambyname('id_documento').asinteger := IDDOCUMENTO;
        parambyname('id_pessoa').asinteger := idempresa;
        parambyname('id_planocontas').asinteger := qrypesquisa.fieldbyname('id_pcsalEst').asinteger;
        parambyname('num_parcelas').asinteger := 1;
        parambyname('id_usuarioincluiu').asinteger := 0;
        parambyname('totalavista').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        parambyname('total').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        parambyname('saldo').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        parambyname('dta_emissao').value := date;
        parambyname('dataincluiu').value := date;
        execsql;
        close;
        free;
      end;

      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Add('insert into tb_rateiocc ');
        sql.Add(' (ID_RATEIO, ID_DOCUMENTO, ID_CC, VALOR, PERC  ) values');
        sql.Add(' (:ID_RATEIO, :ID_DOCUMENTO, :ID_CC, :VALOR, 100) ');
        parambyname('id_rateio').asinteger := dmdta.NEW_ID('tb_rateiocc'); ;
        parambyname('id_documento').asinteger := IDDOCUMENTO;
        parambyname('id_cc').asinteger := qrypesquisa.fieldbyname('id_ccsalEst').asinteger;
        parambyname('valor').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        execsql;
        close;
        free;
      end;

      with TQuery.Create(nil) do
      begin
        idparcela := dmdta.NEW_ID('tb_parcelas');
        DatabaseName := DATABASE_NAME;
        Sql.Add('insert into TB_Parcelas ');
        sql.Add(' (DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO,ID_PARCELAS, NUMPARCELA,SALDO, VLR_PARCELA, VLR_REALIZADO,id_pessoa)  values');
        sql.Add(' (:DTA_VENCIMENTO, :DTA_VENCPRORROGADO, :ID_DOCUMENTO,:ID_PARCELAS, :NUMPARCELA,:SALDO,:VLR_PARCELA, :VLR_REALIZADO,:id_pessoa) ');
        idparcela := dmdta.NEW_ID('tb_parcelas');
        parambyname('DTA_VENCIMENTO').value := date;
        parambyname('DTA_VENCPRORROGADO').value := date;
        parambyname('id_documento').asinteger := IDDOCUMENTO;
        parambyname('id_parcelas').asinteger := idparcela;
        parambyname('id_pessoa').asinteger := idpessoa;
        parambyname('numparcela').asinteger := 1;
        parambyname('saldo').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        parambyname('VLR_PARCELA').ascurrency := DmDta.quFolhaPgtovalorcerto.AsCurrency;
        parambyname('VLR_REALIZADO').ascurrency := 0;
        execsql;
        close;
        free;
      end;
      DmDta.quFolhaPgto.Edit;
      DmDta.quFolhaPgtoid_parcela.AsInteger := idparcela;
      dmdta.SalvarRegistro(DmDta.quFolhaPgto);
    end;
  end;
end;

procedure TFORFPG.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DmDTA.qufolhapgtocontrole.AsString = '1' then //  se for de outra empresa
    if not (gdSelected in State) then // se a célula não está selecionada
    begin
      DBGrid1.Canvas.Brush.Color := $00E2E2E2; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end;


end;

procedure TFORFPG.ExportarHSBCClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  FORLOTE2 := TFORLOTE2.Create(Self);
  FORLOTE2.Fat := fat;
  FORLOTE2.Ano := ano;
  FORLOTE2.Mes := mes;
  FORLOTE2.Emp := emp;
  FORLOTE2.EmpNome := empnome;
  Screen.Cursor := crDefault;
  FORLOTE2.ShowModal;

end;

procedure TFORFPG.PreencheValoresZerados;
begin
  DmDTA.quFolhaPgto.DisableControls;
  try
    DmDTA.quFolhaPgto.First;
    while not DmDTA.quFolhaPgto.Eof do
    begin
      if (DmDTA.quFolhaPgtofbo_valor.asFloat = 0) and (DmDTA.quFolhaPgtotce_cod.asInteger > 0) then
      begin
        dmdta.qrypesquisa.Close;
        dmdta.qrypesquisa.SQL.Clear;
        dmdta.qrypesquisa.SQL.add('select tce_bolsa from tce');
        dmdta.qrypesquisa.SQL.add('where tce_cod = :tce_cod');
        dmdta.qrypesquisa.ParamByName('tce_cod').asInteger := DmDTA.quFolhaPgtotce_cod.asInteger ;
        dmdta.qrypesquisa.Open;
        if dmdta.qrypesquisa.FieldByName('tce_bolsa').AsFloat > 0 then
        begin
           DmDTA.quFolhaPgto.Edit;
           DmDTA.quFolhaPgtofbo_valor.asFloat := dmdta.qrypesquisa.FieldByName('tce_bolsa').AsFloat; 
           DmDTA.quFolhaPgto.Post;
        end;
      end;

      DmDTA.quFolhaPgto.Next;
    end;
    DmDTA.quFolhaPgto.First;
  finally
    DmDTA.quFolhaPgto.EnableControls;
  end;
end;

procedure TFORFPG.btPreencherValoresZeradosClick(Sender: TObject);
begin
  inherited;
  PreencheValoresZerados;
  Application.MessageBox('Bolsas com totais zerados foram preenchidas com valores padrões!', 'Aviso', MB_ICONINFORMATION or MB_OK);
end;

end.

