unit TPORTAX1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRTax1 = class(TQuickRep)
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
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    lblBolsa: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure lblBolsaPrint(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
  private
  public
    Bolsa: Double;
  end;

var
  QRTax1: TQRTax1;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRTax1.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Bolsa := Bolsa + DmDta.quTaxaFfbo_valor.AsFloat;
end;

procedure TQRTax1.lblBolsaPrint(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + formatFloat('#,###,##0.00', bolsa);
end;

procedure TQRTax1.QRDBText12Print(sender: TObject; var Value: String);
begin
  Value := '(' + Copy(Value,1,2) + ') ' + Copy(Value,3,4) + '-' + Copy(Value,7,4);
end;

end.
