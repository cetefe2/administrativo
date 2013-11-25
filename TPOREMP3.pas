unit TPOREMP3;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQREmp3 = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRTitulo: TQRLabel;
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
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRData: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
  private

  public
    Mes: String;

  end;

var
  QREmp3: TQREmp3;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQREmp3.QRDBText12Print(sender: TObject; var Value: String);
begin
  Value := '(' + Copy(Value,1,2) + ') ' + Copy(Value,3,4) + '-' + Copy(Value,7,4);
end;

procedure TQREmp3.QRLabel3Print(sender: TObject; var Value: String);
begin
  Value := Mes;
end;

end.
