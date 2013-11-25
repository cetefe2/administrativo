unit TPORTCO;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQRTCO = class(TQuickRep)
    QRBand1: TQRBand;
    QRMemo2: TQRMemo;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  QRTCO: TQRTCO;

implementation

Uses TPODTA;

{$R *.DFM}

procedure TQRTCO.QRLabel1Print(sender: TObject; var Value: String);
var
  DataC: String;

  procedure dtcompleta;
  var
    dt,d,m,a :string;
    da :array[1..8] of string;
    me :array[1..12] of string;
  begin
    me[1]  :='Janeiro';
    me[2]  :='Fevereiro';
    me[3]  :='Março';
    me[4]  :='Abril';
    me[5]  :='Maio';
    me[6]  :='Junho';
    me[7]  :='Julho';
    me[8]  :='Agosto';
    me[9]  :='Setembro';
    me[10] :='Outubro';
    me[11] :='Novembro';
    me[12] :='Dezembro';
    dt := FormatDateTime('dd/mm/yyyy',Date);
    da[1] :=dt[1];
    da[2] :=dt[2];
    da[3] :=dt[4];
    da[4] :=dt[5];
    da[5] :=dt[7];
    da[6] :=dt[8];
    da[7] :=dt[9];
    da[8] :=dt[10];
    d:= da[1]+da[2];
    m:= da[3]+da[4];
    a:= da[5]+ da[6]+da[7]+da[8];
    datac := ''+d+' de '+me[strtoint(m)]+' de '+a+'';
  end;

begin
  DtCompleta;
  Value := 'Curitiba, ' + DataC + '.';
end;



end.
