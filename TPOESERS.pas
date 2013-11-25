unit TPOESERS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORESERS = class(TForm)
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
  FORESERS: TFORESERS;

implementation

Uses TPODTE, TPOFNC, TPOINI, TPOERERS;

{$R *.DFM}

procedure TFORESERS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORESERS.btImprimirClick(Sender: TObject);
begin
  if (meDtIni.Text = '  /  /    ') or (meDtFim.Text = '  /  /    ') then
  begin
    MSGERRO('Per�odo n�o informado!');
    meDtIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRERS := TQRERS.Create(Application);
    Screen.Cursor := crDefault;
    QRERS.Preview;
    QRERS.Free;
  end;
end;

procedure TFORESERS.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORESERS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDTE.quResEmpresas.Close;
  Action := caFree;
end;

procedure TFORESERS.FormShow(Sender: TObject);
begin
  // Calcula a data inicial referente ao m�s e ano
  meDtIni.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),1));
  meDtFim.Text := FormatDateTime('dd/mm/yyyy',EncodeDate(RetornaValorAno(),RetornaValorMes(),RetornaDiasMes(RetornaValorMes(),RetornaValorAno())));

  // abre a query
  meDtFimExit(Sender);
end;

procedure TFORESERS.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORESERS.meDtIniExit(Sender: TObject);
begin
  if meDtIni.Text <> '  /  /    ' then
    if not validaData(meDtIni.Text) then
      meDtIni.SetFocus;
end;

procedure TFORESERS.meDtFimExit(Sender: TObject);
var
  MesAno1, MesAno2: Integer;
  Ano,Mes,Dia: Word;
begin
  if meDtFim.Text <> '  /  /    ' then
  begin
    if not validaData(meDtFim.Text) then
      meDtFim.SetFocus
    else
    begin
      if (meDtIni.Text <> '  /  /    ') and (meDtFim.Text <> '  /  /    ') then
      begin
        with DmDTE.quResEmpresas do
        begin
          Close;
          ParamByName('data1').Value := StrToDate(meDtIni.Text);
          ParamByName('data2').Value := StrToDate(meDtFim.Text);

          // C�lculo do M�s / Ano inicial e final
          DecodeDate(StrToDate(meDtIni.Text),Ano,Mes,Dia);
          MesAno1 := Ano * 100 + Mes;
          DecodeDate(StrToDate(meDtFim.Text),Ano,Mes,Dia);
          MesAno2 := Ano * 100 + Mes;
          ParamByName('MesAno1').Value := MesAno1;
          ParamByName('MesAno2').Value := MesAno2;
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

procedure TFORESERS.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDTE.quResEmpresas, Caption);
  Screen.Cursor := crDefault;
end;

end.
