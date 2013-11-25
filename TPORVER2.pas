unit TPORVER2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TQRVer2 = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    quAux: TQuery;
    QRAnoMes: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel21: TQRLabel;
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRAnoMesPrint(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
  private

  public
    Mes, totalBolsa, totalCont, totalUFPR: String;

  end;

var
  QRVer2: TQRVer2;

implementation

Uses TPODTA, TPOCST, TPOFNC;

{$R *.DFM}

procedure TQRVer2.QRDBText12Print(sender: TObject; var Value: String);
begin
  Value := '(' + Copy(Value,1,2) + ') ' + Copy(Value,3,4) + '-' + Copy(Value,7,4);
end;

procedure TQRVer2.QRAnoMesPrint(sender: TObject; var Value: String);
begin
  Value := Mes;
end;

procedure TQRVer2.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If DmDta.quContUFPRConfirmacao.Value = '0' Then
    Printband := False;
end;

procedure TQRVer2.QRLabel13Print(sender: TObject; var Value: String);
begin
  Value := TotalBolsa;
end;

procedure TQRVer2.QRLabel14Print(sender: TObject; var Value: String);
begin
  Value := TotalCont;
end;

procedure TQRVer2.QRLabel15Print(sender: TObject; var Value: String);
begin
  Value := TotalUfPR;
end;

end.
