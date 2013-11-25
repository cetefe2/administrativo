unit TPORDSP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRDSP = class(TQuickRep)
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
    QRMes1: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRMes2: TQRLabel;
    QRMes4: TQRLabel;
    QRMes3: TQRLabel;
    QRMes6: TQRLabel;
    QRMes5: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr5Print(sender: TObject; var Value: String);
  private

  public
    Fatura: String;
  end;

var
  QRDSP: TQRDSP;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRDSP.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMes1.Caption := DmDta.quRDespesa.FieldByName('Valor1').DisplayLabel;
  QRMes2.Caption := DmDta.quRDespesa.FieldByName('Valor2').DisplayLabel;
  QRMes3.Caption := DmDta.quRDespesa.FieldByName('Valor3').DisplayLabel;
  QRMes4.Caption := DmDta.quRDespesa.FieldByName('Valor4').DisplayLabel;
  QRMes5.Caption := DmDta.quRDespesa.FieldByName('Valor5').DisplayLabel;
  QRMes6.Caption := DmDta.quRDespesa.FieldByName('Valor6').DisplayLabel;
end;

procedure TQRDSP.QRExpr5Print(sender: TObject; var Value: String);
begin
  Value := 'R$ ' + FormatFloat('0.00', StrToFloat(Value));
end;

end.
