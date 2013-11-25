unit TPORResUFPR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRResUFPR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRPeriodo: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    DataIni, DataFim: String;
  end;

var
  QRResUFPR: TQRResUFPR;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRResUFPR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRPeriodo.Caption := 'Período: ' + DataIni + ' a ' + DataFim;
end;

end.
