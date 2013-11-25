unit TPORPEMP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRPEmp = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QREmpresa: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private

  public
    Empresa: String;
  end;

var
  QRPEmp: TQRPEmp;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRPEmp.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QREmpresa.Caption := Empresa;
end;

procedure TQRPEmp.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('#,###,##0.00', StrToFloat(Value));
end;

end.
