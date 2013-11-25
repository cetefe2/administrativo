unit TPORCUR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRCUR = class(TQuickRep)
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
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrNomeCurso: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    quInstCurso: TQuery;
    QRDBText2: TQRDBText;
    quInstCursoInst_cod: TIntegerField;
    quInstCursoCur_cod: TIntegerField;
    quInstCursoCuri_duracao: TIntegerField;
    quInstCursoCuri_periodic: TStringField;
    quInstCursoCuri_duracaomax: TIntegerField;
    quInstCursoCuri_registro: TStringField;
    quInstCursocuri_coord: TIntegerField;
    quInstCursocuri_nomecoord: TStringField;
    quInstCursocuri_obs: TStringField;
    quInstCursoifu_fone: TStringField;
    quInstCursoifu_email: TStringField;
    quInstCursoifu_nome: TStringField;
    quInstCursoinst_nome: TStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
  private

  public
  end;

var
  QRCUR: TQRCUR;

implementation

Uses TPODTA;

{$R *.DFM}

end.
