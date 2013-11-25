unit TPOREMP1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQREmp1 = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QREmp1: TQREmp1;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQREmp1.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('0.00', StrToFloat(Value));
end;

end.
