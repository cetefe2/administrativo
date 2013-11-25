unit TPOESICOL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORESICOL = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    btEnter: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    meDtIni: TMaskEdit;
    meDtFim: TMaskEdit;
    Label3: TLabel;
    btExportar: TSpeedButton;
    edTotal: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure meDtIniExit(Sender: TObject);
    procedure meDtFimExit(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORESICOL: TFORESICOL;

implementation

Uses TPODTE, TPOFNC, TPOERICOL, TPOINI;

{$R *.DFM}

procedure TFORESICOL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORESICOL.btImprimirClick(Sender: TObject);
begin
  if (meDtIni.Text = '  /  /    ') or (meDtFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDtIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRICOL := TQRICOL.Create(Application);
    Screen.Cursor := crDefault;
    QRICOL.Preview;
    QRICOL.Free;
  end;
end;

procedure TFORESICOL.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORESICOL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDTE.quInstColocacao.Close;
  Action := caFree;
end;

procedure TFORESICOL.FormShow(Sender: TObject);
begin
  // Calcula a data inicial referente ao mês e ano
  meDtIni.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),1));
  meDtFim.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),RetornaDiasMes(RetornaValorMes(),RetornaValorAno())));
// joilson 30/10/2007
  // abre a query
  meDtFimExit(Sender);
end;

procedure TFORESICOL.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORESICOL.meDtIniExit(Sender: TObject);
begin
  if meDtIni.Text <> '  /  /    ' then
    if not validaData(meDtIni.Text) then
      meDtIni.SetFocus;
end;

procedure TFORESICOL.meDtFimExit(Sender: TObject);
var
  Total: Integer;
begin
  if meDtFim.Text <> '  /  /    ' then
  begin
    if not validaData(meDtFim.Text) then
      meDtFim.SetFocus
    else
    begin
      if (meDtIni.Text <> '  /  /    ') and (meDtFim.Text <> '  /  /    ') then
      begin
        with DmDTE.quInstColocacao do
        begin
          Close;
          ParamByName('data1').Value := StrToDate(meDtIni.Text);
          ParamByName('data2').Value := StrToDate(meDtFim.Text);
          Open;

          // Total de cadastros
          Total := 0;
          DisableControls;
          First;
          While Not Eof do
          begin
            Total := Total + FieldByName('Colocações').AsInteger;
            Next;
          end;
          edTotal.Text := IntToStr(Total);

          First;
          EnableControls;
        end;
      end;
    end;
  end;
end;

procedure TFORESICOL.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDTE.quInstColocacao, Caption);
  Screen.Cursor := crDefault;
end;

end.
