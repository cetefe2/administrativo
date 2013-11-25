unit TPOREMP2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQREmp2 = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    procedure QRDBText3Print(sender: TObject; var Value: String);
  private

  public
    Exportar: Integer;
  end;

var
  QREmp2: TQREmp2;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQREmp2.QRDBText3Print(sender: TObject; var Value: String);
begin
  if Exportar = 1 then
    Value := Copy(Value, 1, 77);
end;

end.
