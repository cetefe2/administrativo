unit TPOREMP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TQREmp = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
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
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel16: TQRLabel;
    quAux: TQuery;
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
  private

  public
    Mes: String;

  end;

var
  QREmp: TQREmp;

implementation

Uses TPODTA, TPOCST, TPOFNC;

{$R *.DFM}

procedure TQREmp.QRDBText12Print(sender: TObject; var Value: String);
begin
  Value := '(' + Copy(Value,1,2) + ') ' + Copy(Value,3,4) + '-' + Copy(Value,7,4);
end;

procedure TQREmp.QRLabel3Print(sender: TObject; var Value: String);
begin
  Value := Mes;
end;

end.
