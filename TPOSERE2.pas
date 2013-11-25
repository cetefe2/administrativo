unit TPOSERE2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DateUtils, StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSERE2 = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    btEnter: TBitBtn;
    Label2: TLabel;
    edEstResc: TEdit;
    btEmail: TSpeedButton;
    campos: TListBox;
    qryvencer: TQuery;
    qryvencerTCE: TIntegerField;
    qryvencerEstudante: TStringField;
    qryvencerEmpresa: TStringField;
    qryvencerGrupo: TStringField;
    qryvencerSupervisor: TStringField;
    qryvencerSetor: TStringField;
    qryvencerInicio: TDateTimeField;
    qryvencerVencimento: TDateTimeField;
    qryvencerRenovacao: TDateField;
    qryvencerRetirada: TDateField;
    qryvencerNovaLei: TStringField;
    qryvencerPendente: TStringField;
    qryvencerSituacao: TStringField;
    qryvencerObservacoes: TStringField;
    qryvencerest_pgtolib: TStringField;
    DataSource1: TDataSource;
    qryvencertce_dataini: TDateTimeField;
    qryvencertpr_dataini: TDateTimeField;
    edEmpCod: TEdit;
    Label3: TLabel;
    edEmpNome: TEdit;
    EdGrupoCod: TEdit;
    Label10: TLabel;
    EdGrupoNome: TEdit;
    SpeedButton1: TSpeedButton;
    qryvencerTempo: TStringField;
    Notebook1: TNotebook;
    Label5: TLabel;
    cbTipoPesquisa: TComboBox;
    Label4: TLabel;
    meDataIni: TMaskEdit;
    Label1: TLabel;
    meDataFim: TMaskEdit;
    meData: TMaskEdit;
    Label6: TLabel;
    rdDias: TRadioGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure meDataIniExit(Sender: TObject);
    procedure meDataFimExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure qryvencerCalcFields(DataSet: TDataSet);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure EdGrupoCodDblClick(Sender: TObject);
    procedure EdGrupoCodExit(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;
  public
    { Public declarations }
  end;

var
  FORSERE2: TFORSERE2;

implementation

uses TPODTA, TPOFNC, TPORERE, TPOEMP, TPOGRUPO;

{$R *.DFM}

procedure TFORSERE2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSERE2.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRERE := TQRERE.Create(Application);
    QRERE.DataIni := meDataIni.Text;
    QRERE.DataFim := meDataFim.Text;
    Screen.Cursor := crDefault;
    QRERE.Preview;
    QRERE.Free;
  end;
end;

procedure TFORSERE2.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSERE2.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
  begin
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
     // AbreQuery;
  end;
end;

procedure TFORSERE2.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else
      if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      // AbreQuery;
  end;
end;

procedure TFORSERE2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quEstResc.Close;
  Action := caFree;
end;

procedure TFORSERE2.FormShow(Sender: TObject);
begin
  with DmDta.quEstResc do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,');
    Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
    Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, e.pcu_peratual, ');
    Sql.Add('e.pcu_anoatual, c.cur_nome, ''1'' as tipo, '''' as email');
    Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C');
    Sql.Add('where t.est_cod = e.est_cod and');
    Sql.Add('t.emp_cod = m.emp_cod and');
    Sql.Add('e.cur_cod = c.cur_cod and');
    Sql.Add('m.emp_cod = f.emp_cod and');
    Sql.Add('m.emp_respent = f.func_cod and');
    Sql.Add('t.emp_cod = -1');
    Open;
  end;
end;

procedure TFORSERE2.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl, True, True);
end;

procedure TFORSERE2.AbreQuery;
var
  dataIni, dataFim: string;
  Data, DataI: TDate;
  Di, Mes, Ano: Word;
  Sano: string;
begin
  //dataIni :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''';
  //dataFim :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''';

  if cbtipopesquisa.ItemIndex = 1 then
  begin
  // ajustar as Datas para o intervalo
    if not validadata(meData.Text) then
    begin
      meData.SetFocus;
      exit;
    end;
    data := strtodate(medata.Text);
    if rddias.ItemIndex = 0 then
      data := data + 15
    else
      data := data + 30;
    data := DiasUteisM(8, data);

    DecodeDate(Data, Ano, Mes, Di);
    sano := inttostr(ano);

    medataini.Text := datetostr(data);

    if DayOfTheWeek(data) = 5 then
      data := data + 2;

    if (data + 1 = strtodate('10/04/2009')) or
      (data + 1 = strtodate('01/01/' + sano)) or
      (data + 1 = strtodate('08/09/' + sano)) or
      (data + 1 = strtodate('07/09/' + sano)) or
      (data + 1 = strtodate('12/10/' + sano)) or
      (data + 1 = strtodate('15/11/' + sano)) or
      (data + 1 = strtodate('02/11/' + sano)) or
      (data + 1 = strtodate('21/04/' + sano)) or
      (data + 1 = strtodate('25/12/' + sano)) then
      data := data + 1;
    if (data + 1 = strtodate('08/09/' + sano)) then
      data := data + 1;
    medatafim.Text := datetostr(data);

  end
  else
  begin
    if meDataFim.Text <> '  /  /    ' then
    begin
      if not validadata(meDataFim.Text) then
      begin
        meDataFim.SetFocus;
        exit;
      end
      else
        if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
    end
    else
    begin
      meDataFim.SetFocus;
      exit;
    end;
    if meDataIni.Text <> '  /  /    ' then
    begin
      if not validadata(meDataIni.Text) then
      begin
        meDataIni.SetFocus;
        exit;
      end
      else
        if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
    end
    else
    begin
      meDataIni.SetFocus;
      exit;
    end;
  end;

  with qryvencer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select t.tce_cod TCE, e.est_nome Estudante , m.emp_nome Empresa,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim ,');
    Sql.Add(' (select efu_nome from empfuncionario where  emp_cod = t.emp_cod2 and func_cod= t.func_cod) Supervisor, ');
    Sql.Add(' (select efu_nome from empfuncionario where  emp_cod = t.emp_cod2 and func_cod= t.func_cod) Setor, ');
    Sql.Add('  e.est_pgtolib,t.tce_dataini Inicio, t.tce_datafim Vencimento, ');
    Sql.Add(' Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
    Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
    Sql.Add('e.pcu_anoatual, ''1'' as tipo,');
    Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
    Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C');
    Sql.Add('where t.est_cod = e.est_cod and');
    Sql.Add('t.emp_cod = m.emp_cod and ');
    if edgrupocod.Text <> '' then
      Sql.Add(' m.grup_cod =' + edgrupocod.Text + ' and ');
    if edempcod.Text <> '' then
      Sql.Add(' m.emp_cod =' + edEmpcod.Text + ' and ');
    Sql.Add(' e.cur_cod = c.cur_cod and');
    Sql.Add('t.tce_situacao = ''0'' and');
    Sql.Add('t.tce_cod not in (select tce_cod from tceaditivo )  and   ');
    Sql.Add('m.emp_cod *= f.emp_cod and');
    Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
    Sql.Add('t.tce_datafim between  :dataIni  and  :dataFim ');
    Sql.Add('union');
    Sql.Add('select t.tce_cod TCE, e.est_nome Estudante, m.emp_nome Empresa ,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim,');
    Sql.Add(' (select efu_nome from empfuncionario where  emp_cod = t.emp_cod2 and func_cod= t.func_cod) Supervisor, ');
    Sql.Add(' (select efu_nome from empfuncionario where  emp_cod = t.emp_cod2 and func_cod= t.func_cod) Setor, ');
    Sql.Add('  e.est_pgtolib,  a.tpr_dataini inicio, a.tpr_datafim Vencimento, ');
    Sql.Add('a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, ');
    Sql.Add('e.pcu_peratual, e.pcu_anoatual, ''2'' as tipo,');
    Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
    Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso c');
    Sql.Add('where t.est_cod = e.est_cod and');
    Sql.Add('e.cur_cod = c.cur_cod and ');
    Sql.Add('t.tce_cod = a.tce_cod and ');
    Sql.Add('t.emp_cod = m.emp_cod and ');
    if edgrupocod.Text <> '' then
      Sql.Add('  m.grup_cod =' + edgrupocod.Text + ' and ');
    if edempcod.Text <> '' then
      Sql.Add(' m.emp_cod =' + edEmpcod.Text + ' and ');
    Sql.Add(' m.emp_cod *= f.emp_cod and');
    Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
    Sql.Add('T.tce_situacao <> ''7'' and');
    Sql.Add('a.prg_cod in');
    Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and ');
    Sql.Add(' a.tpr_datafim between  :dataIni and :dataFim ');
    Sql.Add('order by');
    Sql.Add('m.emp_nome,t.tce_datafim, e.est_nome');
    ParamByName('dataini').AsDateTime := StrToDate(meDataIni.Text);
    ParamByName('datafim').AsDateTime := StrToDate(meDataFim.Text);
    Open;
    last;
    edEstResc.Text := IntToStr(qryvencer.RecordCount);
    first;
  end;
end;

procedure TFORSERE2.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(qryvencer, Caption, 'Período ' + medataini.Text + ' - ' + medatafim.Text);
  Screen.Cursor := crDefault;
  //campos.Items.Clear;
  //ExportarDadosExcel(DmDta.quEstResc, campos, '', Caption, 'Período ' + medataini.Text+' - ' + medatafim.Text );
end;

procedure TFORSERE2.qryvencerCalcFields(DataSet: TDataSet);
var idade: string;
begin
  case qryvencer.fieldbyname('est_pgtolib').AsInteger of
    0: qryvencerPendente.Value := 'Liberado';
    1: qryvencerPendente.Value := 'Falta D.M.';
    2: qryvencerPendente.Value := 'Falta T.C.E.';
    3: qryvencerPendente.Value := 'Falta T.C.E./D.M.';
    4: qryvencerPendente.Value := 'Falta T.A.';
    5: qryvencerPendente.Value := 'Falta T.C.E./T.A.';
    6: qryvencerPendente.Value := 'Falta D.M./T.A.';
    7: qryvencerPendente.Value := 'Falta T.C.E./D.M./T.A.';
    8: qryvencerPendente.Value := 'Falta T.Alt.';
    9: qryvencerPendente.Value := 'Falta D.M./T.Alt.';
    10: qryvencerPendente.Value := 'Falta T.C.E./T.Alt.';
    11: qryvencerPendente.Value := 'Falta T.C.E./D.M./T.Alt.';
    12: qryvencerPendente.Value := 'Falta T.A./T.Alt.';
    13: qryvencerPendente.Value := 'Falta T.C.E./T.A./T.Alt.';
    14: qryvencerPendente.Value := 'Falta D.M./T.A./T.Alt.';
    15: qryvencerPendente.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
  end;
  RetornatempoMes(qryvencertce_dataini.Text, Idade);
  qryvencertempo.Value := idade;
{  or
    (qryvencerdtAlteracao.Value >= strtodate('25/09/2008 '))}

  if (qryvencertce_dataini.Value >= strtodate('25/09/2008 ')) or
    (qryvencertpr_dataini.Value >= strtodate('25/09/2008 ')) then
    qryvencernovalei.AsString := 'Estágio já adaptado à Nova Lei'
  else
    qryvencernovalei.AsString := 'Necessita adaptação à Nova Lei';
  qryvencerrenovacao.Value := diasuteis(8, qryvencervencimento.AsDateTime);
  qryvencerretirada.Value := diasuteis(5, qryvencervencimento.AsDateTime);

end;

procedure TFORSERE2.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNExt(ActiveControl, True, True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSERE2.EdGrupoCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORGRUPO := TFORGRUPO.Create(Self);
  FORGRUPO.F2 := True;
  Screen.Cursor := crDefault;
  FORGRUPO.ShowModal;
  if FORGRUPO.F2Codigo <> '' then
  begin
    edGrupoCod.Text := FORGRUPO.F2Codigo;
    edGrupoNome.Text := FORGRUPO.F2Nome;
    SelectNExt(ActiveControl, True, True);
  end
  else
  begin
    edGrupoCod.Text := '';
    edGrupoNome.Text := '';
  end;
  FORGRUPO.Free;
end;

procedure TFORSERE2.EdGrupoCodExit(Sender: TObject);
begin
  if edGrupoCod.Text <> '' then
    edGrupoNome.Text := DmDta.BuscaCampo('Grupo', 'Grup_nome', 'Grup_cod', StrToInt(edGrupoCod.Text))
  else
    edGrupoNome.Text := '';
end;

procedure TFORSERE2.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text))
  else
    edEmpNome.Text := '';
end;

procedure TFORSERE2.SpeedButton1Click(Sender: TObject);
begin
  abrequery;
end;

procedure TFORSERE2.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0:
      begin
        Notebook1.PageIndex := 0;
        meDataini.SetFocus;
        meDataini.Text := '  /  /    ';
        meDatafim.text := '  /  /    ';
      end;
    1:
      begin
        Notebook1.PageIndex := 1;
        meData.SetFocus;
        meData.Text := '  /  /    ';
      end;
  end;
end;

end.

