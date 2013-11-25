unit TPOESTAV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORESTAV = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    btExportar: TSpeedButton;
    Label3: TLabel;
    edMesesRetr: TEdit;
    Label4: TLabel;
    edTotal: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORESTAV: TFORESTAV;

implementation

uses TPODTE, TPOFNC, TPOERTAV;

{$R *.DFM}

procedure TFORESTAV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORESTAV.btImprimirClick(Sender: TObject);
begin
  if (edAno.Text = '') or (edMes.Text = '') then
  begin
    MSGERRO('Período não informado!');
    edAno.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRTAV := TQRTAV.Create(Application);
    Screen.Cursor := crDefault;
    QRTAV.Preview;
    QRTAV.Free;
  end;
end;

procedure TFORESTAV.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORESTAV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDTE.quTCEAtivos.Close;
  Action := caFree;
end;

procedure TFORESTAV.FormShow(Sender: TObject);
begin
  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  edMesesRetr.Text := '24';
  edMesExit(Sender);
end;

procedure TFORESTAV.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);
end;

procedure TFORESTAV.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
    if not validaAno(edAno.Text) then
      edAno.SetFocus;
end;

procedure TFORESTAV.edMesExit(Sender: TObject);
var
  Total: Integer;
begin
  if (edMes.Text <> '') and (edAno.Text <> '') and (edMesesRetr.Text <> '') then
  begin
    with DmDTE.quTCEAtivos do
    begin
      Close;
      ParamByName('AnoAtual').AsInteger := StrToInt(edAno.Text);
      ParamByName('MesAtual').AsInteger := StrToInt(edMes.Text);
      ParamByName('Meses').AsInteger := StrToInt(edMesesRetr.Text);
      Open;

      // Total de cadastros
      Total := 0;
      DisableControls;
      First;
      while not Eof do
      begin
        Total := Total + FieldByName('Estagiários').AsInteger;
        Next;
      end;
      edTotal.Text := FormatFloat('#,##0', Total / RecordCount);

      First;
      EnableControls;
    end;
  end;
end;

procedure TFORESTAV.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDTE.quTCEAtivos, Caption);
  Screen.Cursor := crDefault;
end;

end.

