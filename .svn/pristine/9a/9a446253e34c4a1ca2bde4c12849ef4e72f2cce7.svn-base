unit TPOSECA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSECA = class(TForm)
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
  FORSECA: TFORSECA;

implementation

Uses TPODTA, TPOFNC, TPORECA;

{$R *.DFM}

procedure TFORSECA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSECA.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRECA := TQRECA.Create(Application);
    QRECA.DataIni := meDataIni.Text;
    QRECA.DataFim := meDataFim.Text;
    Screen.Cursor := crDefault;
    QRECA.Preview;
    QRECA.Free;
  end;
end;

procedure TFORSECA.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSECA.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
  begin
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSECA.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      AbreQuery;
  end;
end;

procedure TFORSECA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quBuscaEmpresa.Close;
  Action := caFree;
end;

procedure TFORSECA.FormShow(Sender: TObject);
begin
  with DmDta.quBuscaEmpresa do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select e.emp_cod, e.emp_nome, e.emp_dtinc');
    Sql.Add('from Empresa e');
    Sql.Add('where e.emp_cod = -1');
    Sql.Add('order by e.emp_nome');
    Open;
  end;
end;

procedure TFORSECA.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSECA.AbreQuery;
var
  dataIni, dataFim: String;
begin
  dataIni :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''';
  dataFim :=  '''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''';

  with DmDta.quBuscaEmpresa do
  begin
    Close;
    Sql.Clear;

    Sql.Clear;
    Sql.Add('select e.emp_cod, e.emp_nome, e.emp_dtinc');
    Sql.Add('from Empresa e');
    Sql.Add('where e.emp_dtinc between ' + dataIni + ' and ' + dataFim);
    Sql.Add('order by e.emp_nome');

    Open;
    edEstResc.Text := IntToStr(RecordCount);
  end;
end;

procedure TFORSECA.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quBuscaEmpresa, Caption);
  Screen.Cursor := crDefault;
end;

end.
