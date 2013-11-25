unit TPORFOR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRFor = class(TQuickRep)
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
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public
    Est: Integer;

  end;

var
  QRFor: TQRFor;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRFor.QRSysData1Print(sender: TObject; var Value: String);
begin
  Value := IntToStr(Est);
  Est   := 0;
end;

procedure TQRFor.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Est := Est + 1;
end;

end.
