unit TPOSREC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSREC = class(TForm)
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
  FORSREC: TFORSREC;

implementation

Uses TPODTA, TPOFNC, TPORCai, TPORREC;

{$R *.DFM}

procedure TFORSREC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORSREC.btImprimirClick(Sender: TObject);
begin
  if (edAno.Text = '') or (edMes.Text = '') then
  begin
    MSGERRO('Período não informado!');
    edAno.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRRec := TQRRec.Create(Application);
    Screen.Cursor := crDefault;
    QRRec.Preview;
    QRRec.Free;
  end;
end;

procedure TFORSREC.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSREC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quRReceita.Close;
  Action := caFree;
end;

procedure TFORSREC.FormShow(Sender: TObject);
begin
  with DmDta.quRReceita do
  begin
    Close;
    ParamByName('ano1').AsInteger  := -1;
    ParamByName('mes1').AsInteger  := -1;
    ParamByName('ano2').AsInteger  := -1;
    ParamByName('mes2').AsInteger  := -1;
    ParamByName('ano3').AsInteger  := -1;
    ParamByName('mes3').AsInteger  := -1;
    ParamByName('ano4').AsInteger  := -1;
    ParamByName('mes4').AsInteger  := -1;
    ParamByName('ano5').AsInteger  := -1;
    ParamByName('mes5').AsInteger  := -1;
    ParamByName('ano6').AsInteger  := -1;
    ParamByName('mes6').AsInteger  := -1;

    FieldByName('Rec1').DisplayLabel := 'Mês 1';
    FieldByName('Rec2').DisplayLabel := 'Mês 2';
    FieldByName('Rec3').DisplayLabel := 'Mês 3';
    FieldByName('Rec4').DisplayLabel := 'Mês 4';
    FieldByName('Rec5').DisplayLabel := 'Mês 5';
    FieldByName('Rec6').DisplayLabel := 'Mês 6';

    Open;
  end;
end;

procedure TFORSREC.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSREC.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
    if not validaAno(edAno.Text) then
      edAno.SetFocus;
end;

procedure TFORSREC.edMesExit(Sender: TObject);
var anoAux, mesAux: Integer;

  procedure DecrementaMes();
  begin
    if MesAux > 1 then
      Dec(MesAux)
    else
    begin
      MesAux := 12;
      Dec(AnoAux);
    end;
  end;

begin
  if edMes.Text <> '' then
  begin
    if not validaMes(edMes.Text) then
      edMes.SetFocus
    else
    begin
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        AnoAux := StrToInt(edAno.Text);
        MesAux := StrToInt(edMes.Text);

        with DmDta.quRReceita do
        begin
          Close;
          ParamByName('ano6').Value  := AnoAux;
          ParamByName('mes6').Value  := MesAux;
          FieldByName('Rec6').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);
          DecrementaMes();

          ParamByName('ano5').Value := AnoAux;
          ParamByName('mes5').Value := MesAux;
          FieldByName('Rec5').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);
          DecrementaMes();

          ParamByName('ano4').Value := AnoAux;
          ParamByName('mes4').Value := MesAux;
          FieldByName('Rec4').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);
          DecrementaMes();

          ParamByName('ano3').Value := AnoAux;
          ParamByName('mes3').Value := MesAux;
          FieldByName('Rec3').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);
          DecrementaMes();

          ParamByName('ano2').Value := AnoAux;
          ParamByName('mes2').Value := MesAux;
          FieldByName('Rec2').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);
          DecrementaMes();

          ParamByName('ano1').Value  := AnoAux;
          ParamByName('mes1').Value  := MesAux;

          FieldByName('Rec1').DisplayLabel := IntToStr(MesAux)+'/'+IntToStr(AnoAux);

          Open;
        end;
      end;
    end;
  end;
end;

procedure TFORSREC.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quRReceita, Caption);
  Screen.Cursor := crDefault;
end;

end.
