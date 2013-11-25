unit TPOSERE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSERE = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    Label1: TLabel;
    btEnter: TBitBtn;
    Label2: TLabel;
    edEstResc: TEdit;
    btEmail: TSpeedButton;
    campos: TListBox;
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
  private
    { Private declarations }
    procedure AbreQuery;
  public
    { Public declarations }
  end;

var
  FORSERE: TFORSERE;

implementation

Uses TPODTA, TPOFNC, TPORERE;

{$R *.DFM}

procedure TFORSERE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSERE.btImprimirClick(Sender: TObject);
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

procedure TFORSERE.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSERE.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
  begin
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSERE.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSERE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quEstResc.Close;
  Action := caFree;
end;

procedure TFORSERE.FormShow(Sender: TObject);
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

procedure TFORSERE.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSERE.AbreQuery;
var
  dataIni, dataFim: String;
begin
  //dataIni :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''';
  //dataFim :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''';

  with DmDta.quEstResc do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini,');
    Sql.Add('t.tce_datafim, Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as Tpr_datafim,');
    Sql.Add('e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, e.pcu_peratual, ');
    Sql.Add('e.pcu_anoatual, ''1'' as tipo,');
    Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
    Sql.Add('from Tce t, Estudante e, Empresa m, EmpFuncionario F, Curso C ');
    Sql.Add('where t.est_cod = e.est_cod and ');
    Sql.Add('t.emp_cod = m.emp_cod and ');
    Sql.Add('e.cur_cod = c.cur_cod and ');
    Sql.Add('t.tce_situacao = ''0'' and ');
    Sql.Add('t.tce_cod not in (select tce_cod from tceaditivo )  and   ');
    Sql.Add('m.emp_cod *= f.emp_cod and ');
    Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
    Sql.Add('t.tce_datafim between  :dataIni  and  :dataFim ');
    Sql.Add('union');
    Sql.Add('select t.tce_cod, e.est_nome, m.emp_nome,(select grup_nome from grupo where  grup_cod = m.grup_cod) Grupo  ,t.tce_dataini, t.tce_datafim,');
    Sql.Add('a.tpr_dataini, a.tpr_datafim, e.est_dtnasc, f.efu_nome emp_nomerespent, c.cur_nome, ');
    Sql.Add('e.pcu_peratual, e.pcu_anoatual, ''2'' as tipo,');
    Sql.Add('(select efu_email from EmpFuncionario where emp_cod = m.emp_cod and func_cod = m.emp_respent) email');
    Sql.Add('from Tce t, Estudante e, TceAditivo a, Empresa m, EmpFuncionario F, Curso c');
    Sql.Add('where t.est_cod = e.est_cod and ');
    Sql.Add('e.cur_cod = c.cur_cod and ');
    Sql.Add('t.tce_cod = a.tce_cod and ');
    Sql.Add('t.emp_cod = m.emp_cod and ');
    Sql.Add('m.emp_cod *= f.emp_cod and ');
    Sql.Add('(select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');
    Sql.Add('T.tce_situacao <> ''7'' and');
    Sql.Add('a.prg_cod in');
    Sql.Add('(select max(prg_cod) from TceAditivo where tce_cod = t.tce_cod) and ');
    Sql.Add('a.tpr_datafim between  :dataIni and :dataFim ') ;
    Sql.Add('order by');
    Sql.Add('m.emp_nome,t.tce_datafim, e.est_nome');
    ParamByName('dataini').AsDateTime := StrToDate(meDataIni.Text);
    ParamByName('datafim').AsDateTime := StrToDate(meDataFim.Text);

    Open;
    edEstResc.Text := IntToStr(DmDta.quEstResc.RecordCount);
  end;
end;

procedure TFORSERE.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quEstResc, Caption, 'Período ' + medataini.Text+' - ' + medatafim.Text);
  Screen.Cursor := crDefault;
  //campos.Items.Clear;
  //ExportarDadosExcel(DmDta.quEstResc, campos, '', Caption, 'Período ' + medataini.Text+' - ' + medatafim.Text );
end;

end.
