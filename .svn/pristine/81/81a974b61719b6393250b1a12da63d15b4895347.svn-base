unit TPORCAI;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRCAI = class(TQuickRep)
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
    QRFatura: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QrSdoMov: TQRLabel;
    QRSdoFinal: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QRCAI: TQRCAI;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRCAI.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Saldo: Double;
begin
  Saldo := DmDta.quRCaixaSomaEntradas.AsFloat - DmDta.quRCaixaSomaSaidas.AsFloat;

  QRSdoMov.Caption := 'R$ ' + FormatFloat('#,##0.00', Saldo);
  QRSdoFinal.Caption := 'R$ ' + FormatFloat('#,##0.00', Saldo+DmDta.quRCaixacai_inicial.AsFloat);
end;

procedure TQRCAI.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('#,##0.00', StrToFloat(Value));
end;

end.
