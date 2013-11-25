unit TPORREC;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRREC = class(TQuickRep)
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
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRExpr5: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRMes6: TQRLabel;
    QRMes5: TQRLabel;
    QRLabel5: TQRLabel;
    QRMes4: TQRLabel;
    QRLabel8: TQRLabel;
    QRMes3: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRMes2: TQRLabel;
    QRMes1: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr5Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QRREC: TQRREC;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRREC.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMes1.Caption := DmDta.quRReceita.FieldByName('Rec1').DisplayLabel;
  QRMes2.Caption := DmDta.quRReceita.FieldByName('Rec2').DisplayLabel;
  QRMes3.Caption := DmDta.quRReceita.FieldByName('Rec3').DisplayLabel;
  QRMes4.Caption := DmDta.quRReceita.FieldByName('Rec4').DisplayLabel;
  QRMes5.Caption := DmDta.quRReceita.FieldByName('Rec5').DisplayLabel;
  QRMes6.Caption := DmDta.quRReceita.FieldByName('Rec6').DisplayLabel;
end;

procedure TQRREC.QRExpr5Print(sender: TObject; var Value: String);
begin
  Value := FormatFloat('#,###,##0.00', StrToFloat(Value));
end;

end.
