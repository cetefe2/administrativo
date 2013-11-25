unit TPORTRV;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRTRV = class(TQuickRep)
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
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRFatura: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRVaga: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    procedure QRVagaPrint(sender: TObject; var Value: String);
  private

  public
    Vaga: String;
  end;

var
  QRTRV: TQRTRV;

implementation

Uses TPODTA, TPOTRV;

{$R *.DFM}

procedure TQRTRV.QRVagaPrint(sender: TObject; var Value: String);
begin
  Value := Vaga;
  
end;

end.
