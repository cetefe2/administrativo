unit TPOSCAI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSCAI = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    btEnter: TBitBtn;
    Label1: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    btExportar: TSpeedButton;
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
  FORSCAI: TFORSCAI;

implementation

Uses TPODTA, TPOFNC, TPORCai;

{$R *.DFM}

procedure TFORSCAI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORSCAI.btImprimirClick(Sender: TObject);
begin
  if (edAno.Text = '') or (edMes.Text = '') then
  begin
    MSGERRO('Período não informado!');
    edAno.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRCai := TQRCai.Create(Application);
    Screen.Cursor := crDefault;
    QRCai.Preview;
    QRCai.Free;
  end;
end;

procedure TFORSCAI.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSCAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quRCaixa.Close;
  Action := caFree;
end;

procedure TFORSCAI.FormShow(Sender: TObject);
begin
  with DmDta.quRCaixa do
  begin
    Close;
    ParamByName('cai_ano').AsInteger := -1;
    ParamByNAme('cai_mes').AsInteger := -1;
    Open;
  end;
end;

procedure TFORSCAI.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSCAI.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
    if not validaAno(edAno.Text) then
      edAno.SetFocus;
end;

procedure TFORSCAI.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if not validaMes(edMes.Text) then
      edMes.SetFocus
    else
    begin
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        with DmDta.quRCaixa do
        begin
          Close;
          ParamByName('cai_ano').Value := StrToInt(edAno.Text);
          ParamByName('cai_mes').Value := StrToInt(edMes.Text);
          Open;
        end;
      end;
    end;
  end;
end;

procedure TFORSCAI.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quRCaixa, Caption);
  Screen.Cursor := crDefault;
end;

end.
