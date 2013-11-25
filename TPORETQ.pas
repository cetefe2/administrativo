unit TPORETQ;

interface

uses
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRETQ = class(TQuickRep)
    QRBand1: TQRBand;
    QRNomeEsc: TQRDBText;
    QRNomeResp: TQRDBText;
    QREnd1: TQRDBText;
    QREnd2: TQRDBText;
    QRNomeEsc1: TQRDBText;
    QRNomeResp1: TQRDBText;
    QREnd1_1: TQRDBText;
    QREnd2_1: TQRDBText;
    tbEtiqueta: TTable;
    tbEtiquetaNomeEsc: TStringField;
    tbEtiquetaNomeResp: TStringField;
    tbEtiquetaEnd1: TStringField;
    tbEtiquetaEnd2: TStringField;
    tbEtiquetaNomeEsc1: TStringField;
    tbEtiquetaNomeResp1: TStringField;
    tbEtiquetaEnd1_1: TStringField;
    tbEtiquetaEnd2_1: TStringField;
    procedure tbEtiquetaBeforeOpen(DataSet: TDataSet);
    procedure tbEtiquetaAfterClose(DataSet: TDataSet);
  private
    Linha1, Coluna1, Etiquetas: Integer;
    ValAC, NomeEsc, NomeResp, End1, End2: String;

    procedure MontaEtiquetas;
    procedure MontaEtiquetasVE;
  public
    procedure SetaEtiquetas(val1, val2, val3, val4: String; val5, val6, val7: Integer);
    procedure SetaEtiquetasVE(AC: String; val1, val2, val3: Integer);
  end;

var
  QRETQ: TQRETQ;

implementation

uses TPODTA, TPOCST;

{$R *.DFM}

{ TQRETQ }

procedure TQRETQ.MontaEtiquetas;
var
  j, l, c: Integer;
begin
  j := 0;
  l := 1;
  c := 1;
  while j < Etiquetas do
  begin
    if C = 1 then
    begin
      tbEtiqueta.Append;
      tbEtiquetaNomeEsc.Value   := '';
      tbEtiquetaNomeResp.Value  := '';
      tbEtiquetaEnd1.Value      := '';
      tbEtiquetaEnd2.Value      := '';
      tbEtiquetaNomeEsc1.Value  := '';
      tbEtiquetaNomeResp1.value := '';
      tbEtiquetaEnd1_1.Value    := '';
      tbEtiquetaEnd2_1.Value    := '';
    end
    else
      tbEtiqueta.Edit;


    if l = linha1 then
    begin
      if c >= coluna1 then
      begin
        if c = 1 then
        begin
          tbEtiquetaNomeEsc.Value   := nomeEsc;
          tbEtiquetaNomeResp.Value  := nomeResp;
          tbEtiquetaEnd1.Value      := End1;
          tbEtiquetaEnd2.Value      := End2;
          inc(j);
        end
        else
        begin
          tbEtiquetaNomeEsc1.Value   := nomeEsc;
          tbEtiquetaNomeResp1.Value  := nomeResp;
          tbEtiquetaEnd1_1.Value     := End1;
          tbEtiquetaEnd2_1.Value     := End2;
          inc(j);
        end;
      end;
    end
    else if l > linha1 then
    begin
      if c = 1 then
      begin
        tbEtiquetaNomeEsc.Value   := nomeEsc;
        tbEtiquetaNomeResp.Value  := nomeResp;
        tbEtiquetaEnd1.Value      := End1;
        tbEtiquetaEnd2.Value      := End2;
        inc(j);
      end
      else
      begin
        tbEtiquetaNomeEsc1.Value   := nomeEsc;
        tbEtiquetaNomeResp1.Value  := nomeResp;
        tbEtiquetaEnd1_1.Value     := End1;
        tbEtiquetaEnd2_1.Value     := End2;
        inc(j);
      end;
    end;

    if c = 1 then
      inc(c)
    else
    begin
      c := 1;
      inc(l);
    end;

    tbEtiqueta.Post;
  end;
end;

procedure TQRETQ.MontaEtiquetasVE;
var
  l, c: Integer;
begin
  l := 1;
  c := 1;
  DmDta.tbEtiqueta.First;

  If DmDta.tbEtiqueta.RecordCount > 0 then
  begin
    while Not DmDta.tbEtiqueta.Eof do
    begin
      if C = 1 then
      begin
        tbEtiqueta.Append;
        tbEtiquetaNomeEsc.Value   := '';
        tbEtiquetaNomeResp.Value  := '';
        tbEtiquetaEnd1.Value      := '';
        tbEtiquetaEnd2.Value      := '';
        tbEtiquetaNomeEsc1.Value  := '';
        tbEtiquetaNomeResp1.value := '';
        tbEtiquetaEnd1_1.Value    := '';
        tbEtiquetaEnd2_1.Value    := '';
      end
      else
        tbEtiqueta.Edit;


      if l = linha1 then
      begin
        if c >= coluna1 then
        begin
          if c = 1 then
          begin
            tbEtiquetaNomeEsc.Value   := DmDta.tbEtiquetaNomeEsc.Value;
            tbEtiquetaNomeResp.Value  := valAC;
            tbEtiquetaEnd1.Value      := DmDta.tbEtiquetaEnd1.Value;
            tbEtiquetaEnd2.Value      := DmDta.tbEtiquetaEnd2.Value;
            DmDta.tbEtiqueta.Next;
          end
          else
          begin
            tbEtiquetaNomeEsc1.Value   := DmDta.tbEtiquetaNomeEsc.Value;
            tbEtiquetaNomeResp1.Value  := valAC;
            tbEtiquetaEnd1_1.Value     := DmDta.tbEtiquetaEnd1.Value;
            tbEtiquetaEnd2_1.Value     := DmDta.tbEtiquetaEnd2.Value;
            DmDta.tbEtiqueta.Next;
          end;
        end;
      end
      else if l > linha1 then
      begin
        if c = 1 then
        begin
          tbEtiquetaNomeEsc.Value   := DmDta.tbEtiquetaNomeEsc.Value;
          tbEtiquetaNomeResp.Value  := valAC;
          tbEtiquetaEnd1.Value      := DmDta.tbEtiquetaEnd1.Value;
          tbEtiquetaEnd2.Value      := DmDta.tbEtiquetaEnd2.Value;
          DmDta.tbEtiqueta.Next;
        end
        else
        begin
          tbEtiquetaNomeEsc1.Value   := DmDta.tbEtiquetaNomeEsc.Value;
          tbEtiquetaNomeResp1.Value  := valAC;
          tbEtiquetaEnd1_1.Value     := DmDta.tbEtiquetaEnd1.Value;
          tbEtiquetaEnd2_1.Value     := DmDta.tbEtiquetaEnd2.Value;
          DmDta.tbEtiqueta.Next;
        end;
      end;

      if c = 1 then
        inc(c)
      else
      begin
        c := 1;
        inc(l);
      end;

      tbEtiqueta.Post;
    end;
  end;
end;

procedure TQRETQ.SetaEtiquetas(val1, val2, val3, val4: String; val5, val6,
  val7: Integer);
begin
  nomeEsc   := val1;
  nomeResp  := val2;
  end1      := val3;
  end2      := val4;
  Linha1    := val5;
  coluna1   := val6;
  Etiquetas := val7;

  tbEtiqueta.Open;
  MontaEtiquetas;
end;

procedure TQRETQ.SetaEtiquetasVE(AC: String; val1, val2, val3: Integer);
begin
  Linha1    := val1;
  coluna1   := val2;
  Etiquetas := val3;
  ValAC     := AC;

  tbEtiqueta.Open;
  MontaEtiquetasVE();
end;

procedure TQRETQ.tbEtiquetaBeforeOpen(DataSet: TDataSet);
begin
  with tbEtiqueta do
  begin
    Active := False;
    TableType := ttParadox;
    TableName := 'EtiquetaImp.DB';

    // campos da tabela
    with FieldDefs do
    begin
      Clear;
      with AddFieldDef do
      begin
        Name     := 'NomeEsc';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'NomeResp';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'End1';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'End2';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'NomeEsc1';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'NomeResp1';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'End1_1';
        DataType := ftString;
        Size     := 100;
      end;
      with AddFieldDef do
      begin
        Name     := 'End2_1';
        DataType := ftString;
        Size     := 100;
      end;
      // cria a tabela
      CreateTable();
    end;
  end;
end;

procedure TQRETQ.tbEtiquetaAfterClose(DataSet: TDataSet);
begin
 tbEtiqueta.DeleteTable();
end;

end.
