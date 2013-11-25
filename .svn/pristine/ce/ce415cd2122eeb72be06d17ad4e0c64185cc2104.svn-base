unit at05;
interface
uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Menus, DBTables, Db, jpeg, Buttons,comobj,
  OleServer, Word97, StdCtrls, Outlook8, Mapi, Excel97;
type
  TForm1 = class(TForm)
    db_Principal: TDatabase;
    qrypesquisa: TQuery;
    qrypesquisavag_cod: TIntegerField;
    qrypesquisavag_qtde: TIntegerField;
    qrypesquisaVag_qtdepreenc: TIntegerField;
    DataSource1: TDataSource;
    qrypesquisaCandidatos: TIntegerField;
    Button2: TButton;
    Button1: TButton;
    divergencia: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    divergenciaTCEs: TIntegerField;
    campos: TListBox;
    divergenciaEncaminhamentos: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
    {qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select count(*) total from estudante where  (cur_cod = 439) ';
    qrypesquisa.open;
    label4.caption := inttostr(qrypesquisa.fieldbyname('total').asinteger);
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select count(*) total from estudante where  (cur_cod = 1) ';
    qrypesquisa.open;
    label3.caption := inttostr(qrypesquisa.fieldbyname('total').asinteger);}
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  divergencia.Open;
  campos.Items.Clear;
  campos.Items.Add('Qtde.');
  campos.Items.Add('Preenc.');
  ExportarDadosExcel(divergencia, campos, '', 'Vagas com Divergencia', '');
  divergencia.close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  qrypesquisa.close;
  qrypesquisa.SQL.Text := ' update encaminhamento  set encaminhamento.eva_resultado =2 ' +
    ' FROM         Vaga,encaminhamento,tce,Estudante ' +
    ' WHERE     (Encaminhamento.Eva_resultado = 1) and (Vaga.Vag_cod = Encaminhamento.Vag_cod) and ' +
    '   (Vaga.Vag_cod = Tce.Vag_cod) and ' +
    '  ( Encaminhamento.Est_cod = Estudante.est_cod) AND  (Tce.Est_cod = Estudante.est_cod) ';
  // 'update      Encaminhamento  set  Encaminhamento.Eva_resultado = 2 ' +
//                            ' FROM         Tce, Encaminhamento WHERE  Tce.Vag_cod = Encaminhamento.Vag_cod  and ' +
//                            ' (Encaminhamento.Eva_resultado = 1) ';
  qrypesquisa.execsql;
  showmessage('Encaminhamentos atualizados')
end;

procedure TForm1.ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
var
  Excel: Variant;
  cor, ColunasVisiveis, Linha, i, coluna: Integer;
  totalcoluna: array of variant;
  totalcolunageral: array of variant;
  quebranova, quebra1: string;
begin
  SetLength(totalcoluna, campos.Items.Count);
  SetLength(totalcolunageral, campos.Items.Count);
  cor := 15;
  for i := 0 to campos.Items.Count - 1 do
  begin
    totalcoluna[i] := 0;
    totalcolunageral[i] := 0;
  end;

  ColunasVisiveis := 0;
  for i := 0 to Query.FieldCount - 1 do
  begin
    if Query.Fields[i].Visible then
      Inc(ColunasVisiveis);
  end;
  if not Query.IsEmpty then
  begin
    query.Last;
    Query.First;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := false;
    Excel.Workbooks.Add;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Excel.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Excel.Cells[1, 1] := AnsiUpperCase(Titulo);
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Excel.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Excel.Cells[2, 1] := SubTitulo;
    Linha := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    Excel.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    Excel.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    Excel.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;
    Linha := 4;
    while not Query.Eof do
    begin
      coluna := -1;
      for i := 0 to Query.FieldCount - 1 do
        if Query.Fields[i].Visible then
        begin
          inc(coluna);
          if campos.Items.Count > 0 then
          begin
            if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
            begin
              totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
              totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)] + Query.Fields[i].Value;
            end;
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].Value;
        end;
      Query.Next;
      if (quebra <> '') and (query.eof = false) then
        for i := 0 to Query.FieldCount - 1 do
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebranova := Query.Fields[i].value;
      Linha := Linha + 1;
      if (query.eof) or (quebranova <> quebra1) then
      begin
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if campos.Items.Count > 0 then
            begin
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
              begin
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcoluna[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
              end;
            end;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        inc(linha);
        inc(linha);
        coluna := -1;
        for i := 0 to Query.FieldCount - 1 do
          if Query.Fields[i].Visible then
          begin
            inc(coluna);
            if query.Eof = false then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName
            else
              if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
                Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
            if quebra <> '' then
              if quebra = Query.Fields[i].fieldName then
                quebra1 := Query.Fields[i].value;
          end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
        inc(cor);
        if query.Eof = false then
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 19
        else
          Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 12;

        for i := 0 to campos.Items.Count - 1 do
        begin
          totalcoluna[i] := 0;
        end;
        quebra1 := quebranova;
        inc(linha);
      end;
    end;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := totalcolunageral[campos.Items.IndexOf(Query.Fields[i].DisplayName)];
          end;
        end;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Borders.LineStyle := 1;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Columns.Interior.ColorIndex := 15;
        Excel.Range['A' + inttostr(linha), chr(65 + coluna) + inttostr(linha)].Font.bold := true;
      end;
    excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    excel.visible := True;
  end;
end;
end.

update encaminhamento set encaminhamento.eva_resultado = 2
FROM Vaga, encaminhamento, tce, Estudante
WHERE(Encaminhamento.Eva_resultado = 1) and (Vaga.Vag_cod = Encaminhamento.Vag_cod) and
(Vaga.Vag_cod = Tce.Vag_cod) and
(Encaminhamento.Est_cod = Estudante.est_cod) and (Tce.Est_cod = Estudante.est_cod)

