unit TPOSENT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSENT = class(TForm)
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
    DBEdit1: TDBEdit;
    Label3: TLabel;
    btExportar: TSpeedButton;
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
  FORSENT: TFORSENT;

implementation

Uses TPODTA, TPOFNC, TPOREnt;

{$R *.DFM}

procedure TFORSENT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORSENT.btImprimirClick(Sender: TObject);
begin
  if (meDtIni.Text = '  /  /    ') or (meDtFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDtIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QREnt := TQREnt.Create(Application);
    Screen.Cursor := crDefault;
    QREnt.Preview;
    QREnt.Free;
  end;
end;

procedure TFORSENT.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSENT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREntrada.Close;
  Action := caFree;
end;

procedure TFORSENT.FormShow(Sender: TObject);
begin
  with DmDta.quREntrada do
  begin
    Close;
    ParamByName('data1').AsDateTime := 0;
    ParamByNAme('data2').AsDateTime := 0;
    Open;
  end;
end;

procedure TFORSENT.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSENT.meDtIniExit(Sender: TObject);
begin
  if meDtIni.Text <> '  /  /    ' then
    if not validaData(meDtIni.Text) then
      meDtIni.SetFocus;
end;

procedure TFORSENT.meDtFimExit(Sender: TObject);
begin
  if meDtFim.Text <> '  /  /    ' then
  begin
    if not validaData(meDtFim.Text) then
      meDtFim.SetFocus
    else
    begin
      if (meDtIni.Text <> '  /  /    ') and (meDtFim.Text <> '  /  /    ') then
      begin
        with DmDta.quREntrada do
        begin
          Close;
          ParamByName('data1').Value := StrToDate(meDtIni.Text);
          ParamByName('data2').Value := StrToDate(meDtFim.Text);
          Open;
        end;
      end;
    end;
  end;
end;

procedure TFORSENT.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quREntrada, Caption);
  Screen.Cursor := crDefault;
end;

end.
