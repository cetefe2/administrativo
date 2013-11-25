unit TPORANI;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRANI = class(TQuickRep)
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
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QRANI: TQRANI;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRANI.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('0.00', StrToFloat(Value));
end;

procedure TQRANI.QRLabel2Print(sender: TObject; var Value: String);
begin
  Value := Value + ' - ' + FormatDateTime('DD/MM', Date);
end;

end.
