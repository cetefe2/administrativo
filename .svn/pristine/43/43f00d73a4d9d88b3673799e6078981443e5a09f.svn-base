unit TPORSAI;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRSAI = class(TQuickRep)
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
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QRSAI: TQRSAI;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRSAI.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('#,###,##0.00', StrToFloat(Value));
end;

end.
