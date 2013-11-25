unit TPORAGE1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRAGE1 = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qrData: TQRLabel;
  private

  public
    Est: Integer;

  end;

var
  QRAGE1: TQRAGE1;

implementation

Uses TPODTA;

{$R *.DFM}

end.
