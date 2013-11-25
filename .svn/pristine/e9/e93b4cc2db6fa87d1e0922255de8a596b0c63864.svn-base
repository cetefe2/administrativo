unit TPOSTCA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSTCA = class(TForm)
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
  FORSTCA: TFORSTCA;

implementation

Uses TPODTA, TPOFNC, TPORTCA;

{$R *.DFM}

procedure TFORSTCA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSTCA.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRTCA := TQRTCA.Create(Application);
    QRTCA.DataIni := meDataIni.Text;
    QRTCA.DataFim := meDataFim.Text;
    Screen.Cursor := crDefault;
    QRTCA.Preview;
    QRTCA.Free;
  end;
end;

procedure TFORSTCA.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSTCA.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
  begin
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSTCA.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSTCA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quEstResc.Close;
  Action := caFree;
end;

procedure TFORSTCA.FormShow(Sender: TObject);
begin
  with DmDta.quBuscaTCE do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select t.*, m.emp_nome, e.est_nome, i.inst_nome, c.cur_nome,e.est_email');
    Sql.Add('from TCE t, Estudante e, Empresa M, Instituicao I, Curso C where t.emp_cod = -1');
    Sql.Add('and e.inst_cod = i.inst_cod and e.cur_cod = c.cur_cod');
     Sql.Add('and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod');
    Sql.Add('order by e.est_nome');
    Open;
  end;
end;

procedure TFORSTCA.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSTCA.AbreQuery;
var
  dataIni, dataFim: String;
begin
  dataIni :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''';
  dataFim :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''';

  with DmDta.quBuscaTCE do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select t.*, m.emp_nome, e.est_nome, i.inst_nome, c.cur_nome,e.est_email');
    Sql.Add('from TCE t, Estudante e, Empresa M, Instituicao I, Curso C where t.tce_data between ' + dataIni + ' and ' + dataFim);
    Sql.Add('and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod');
    Sql.Add('and e.inst_cod = i.inst_cod and e.cur_cod = c.cur_cod');
    Sql.Add('order by e.est_nome');
    Open;
    last;
    edEstResc.Text := IntToStr(RecordCount);
    first;
  end;
end;

procedure TFORSTCA.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quBuscaTCE, Caption);
  Screen.Cursor := crDefault;
end;

end.
