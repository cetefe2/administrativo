unit TPOREST;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQREST = class(TQuickRep)
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
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public
    Est: Integer;

  end;

var
  QREST: TQREST;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQREST.QRSysData1Print(sender: TObject; var Value: String);
begin
  Value := IntToStr(Est);
  Est   := 0;
end;

procedure TQREST.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Est := Est + 1;
end;

end.
