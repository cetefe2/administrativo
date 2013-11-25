unit TPOERFOP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRFOP = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
  private

  public
    Fatura: String;
  end;

var
  QRFOP: TQRFOP;

implementation

Uses TPODTE;

{$R *.DFM}

end.
