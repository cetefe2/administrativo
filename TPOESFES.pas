unit TPOESFES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORESFES = class(TForm)
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
    btExportar: TSpeedButton;
    Label3: TLabel;
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
  FORESFES: TFORESFES;

implementation

Uses TPODTE, TPOFNC, TPOINI, TPOERFES;

{$R *.DFM}

procedure TFORESFES.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORESFES.btImprimirClick(Sender: TObject);
begin
  if (meDtIni.Text = '  /  /    ') or (meDtFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDtIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRFES := TQRFES.Create(Application);
    Screen.Cursor := crDefault;
    QRFES.Preview;
    QRFES.Free;
  end;
end;

procedure TFORESFES.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORESFES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDTE.quFichaEstudante.Close;
  Action := caFree;
end;

procedure TFORESFES.FormShow(Sender: TObject);
begin
  // Calcula a data inicial referente ao mês e ano
  meDtIni.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),1));
  meDtFim.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),RetornaDiasMes(RetornaValorMes(),RetornaValorAno())));
 // joilson
  // abre a query
  meDtFimExit(Sender);
end;

procedure TFORESFES.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORESFES.meDtIniExit(Sender: TObject);
begin
  if meDtIni.Text <> '  /  /    ' then
    if not validaData(meDtIni.Text) then
      meDtIni.SetFocus;
end;

procedure TFORESFES.meDtFimExit(Sender: TObject);
begin
  if meDtFim.Text <> '  /  /    ' then
  begin
    if not validaData(meDtFim.Text) then
      meDtFim.SetFocus
    else
    begin
      if (meDtIni.Text <> '  /  /    ') and (meDtFim.Text <> '  /  /    ') then
      begin
        with DmDTE.quFichaEstudante do
        begin
          Close;
          ParamByName('data1').Value := StrToDate(meDtIni.Text);
          ParamByName('data2').Value := StrToDate(meDtFim.Text);
          Open;

          // Total de cadastros
          edTotal.Text := IntToStr(RecordCount);

          First;
          EnableControls;
        end;
      end;
    end;
  end;
end;

procedure TFORESFES.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDTE.quFichaEstudante, Caption);
  Screen.Cursor := crDefault;
end;

end.
