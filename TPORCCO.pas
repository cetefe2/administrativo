unit TPORCCO;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRCCO = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
  private

  public
    Mes: String;

  end;

var
  QRCCO: TQRCCO;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRCCO.QRDBText12Print(sender: TObject; var Value: String);
begin
  Value := '(' + Copy(Value,1,2) + ') ' + Copy(Value,3,4) + '-' + Copy(Value,7,4);
end;

procedure TQRCCO.QRLabel3Print(sender: TObject; var Value: String);
begin
  Value := Mes;
end;

procedure TQRCCO.QRDBText7Print(sender: TObject; var Value: String);
begin
  if Value <> '' then
    Value := Copy(Value, 1, 3) + '.' + Copy(Value, 4, 3) + '.' + Copy(Value, 7, 3) + '-' + Copy(Value, 10, 2);
end;

end.
