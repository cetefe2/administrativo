
unit TPOSTAX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls,
  QRPrNtr, QuickRpt, comobj;

type
  TFORSTAX = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    btEnter: TBitBtn;
    Label2: TLabel;
    edTotBolsa: TEdit;
    edTotTaxa: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    cboCalculo: TComboBox;
    Notebook1: TNotebook;
    Label1: TLabel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label3: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    Label6: TLabel;
    edFatura: TEdit;
    Notebook2: TNotebook;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btEmail: TSpeedButton;
    Label7: TLabel;
    edEstagiarios: TEdit;
    campos: TListBox;
    rd: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    btnFiltro: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEnterClick(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edMesExit(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure cboCalculoClick(Sender: TObject);
    procedure edFaturaExit(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;
    procedure AbreQueryFatura;
  public
    { Public declarations }
  end;

var
  FORSTAX: TFORSTAX;

implementation

uses TPOEMP, TPODTA, TPOFNC, TPORTax, TPORTax1, TPOSELEMP;

{$R *.DFM}

procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string; Protege: boolean);
var
  Sheet, Excel: Variant;
  plan, cor, ColunasVisiveis, Linha, linha01, Linha02, linha2, coluna2, i, coluna: Integer;
  totalcoluna: array of variant;
  totalcolunageral: array of variant;
  quebranova, quebra1: string;
begin
  SetLength(totalcoluna, campos.Items.Count);
  SetLength(totalcolunageral, campos.Items.Count);
  cor := 15;
  linha2 := 0;
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
    excel.Workbooks[1].Sheets.Add;
    excel.Workbooks[1].WorkSheets[1].Name := 'Contribuicao';
    excel.Workbooks[1].Sheets.Add;

    excel.Workbooks[1].WorkSheets[2].Name := 'Recesso';
    excel.Workbooks[1].WorkSheets[1].Name := 'Contribuicao';
    Excel.WorkBooks[1].Sheets[3].Delete;
    Excel.WorkBooks[1].Sheets[3].Delete;
    Excel.WorkBooks[1].Sheets[3].Delete;

    Sheet := Excel.Workbooks[1].WorkSheets[1];
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Sheet.Cells[1, 1] := AnsiUpperCase(Titulo);
    Sheet.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Sheet.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Sheet.Cells[2, 1] := 'Folha de Pagamento - ' + SubTitulo;
    Linha := 3;
    Linha02 := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Sheet.Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;
        if Query.Fields[i].DisplayName = 'Bolsa Total' then
          Sheet.Cells[Linha, coluna + 1] := '(1) BOLSA AUXÍLIO TCE';

        if Query.Fields[i].DisplayName = 'Contribuição' then
          Sheet.Cells[Linha, coluna + 1] := '(2) Contribuição ao CETEFE';

        if Query.Fields[i].DisplayName = 'Valor do Repasse' then
          Sheet.Cells[Linha, coluna + 1] := '(4) BOLSA AUXÍLIO ';

        if Query.Fields[i].DisplayName = 'Soma' then
          Sheet.Cells[Linha, coluna + 1] := '(3) TOTAL     (2+4)     ';



        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    sheet.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    sheet.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    sheet.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;

    Sheet := Excel.Workbooks[1].WorkSheets[2];
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].Merge;
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].HorizontalAlignment := -4108;
    Sheet.Range['A1', char(64 + ColunasVisiveis) + '1'].Font.Bold := True;
    Sheet.Cells[1, 1] := AnsiUpperCase(Titulo);
    Sheet.Range['A2', char(64 + ColunasVisiveis) + '2'].Merge;
    Sheet.Range['A2', char(64 + ColunasVisiveis) + '2'].HorizontalAlignment := -4108;
    Sheet.Cells[2, 1] := 'Recesso Remunerado - ' + SubTitulo;
    Linha := 3;
    Linha02 := 3;
    coluna := -1;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        Sheet.Cells[Linha, coluna + 1] := Query.Fields[i].DisplayName;

        if Query.Fields[i].DisplayName = 'Bolsa Total' then
          Sheet.Cells[Linha, coluna + 1] := '(1) RECESSO REMUNERADO TCE';

        if Query.Fields[i].DisplayName = 'Contribuição' then
          Sheet.Cells[Linha, coluna + 1] := '(2) Contribuição ao CETEFE';

        if Query.Fields[i].DisplayName = 'Valor do Repasse' then
          Sheet.Cells[Linha, coluna + 1] := '(4) RECESSO REMUNERADO ';
        if Query.Fields[i].DisplayName = 'Soma' then
          Sheet.Cells[Linha, coluna + 1] := '(3) TOTAL   (2+4)        ';


        if quebra <> '' then
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebra1 := Query.Fields[i].value;
      end;

    sheet.Range['A3', chr(65 + coluna) + '3'].Borders.LineStyle := 1;
    sheet.Range['A3', chr(65 + coluna) + '3'].Font.bold := true;
    sheet.Range['A3', chr(65 + coluna) + '3'].Columns.Interior.ColorIndex := 19;

    Linha := 4;
    Linha02 := 4;
    plan := 1;
    linha01 := 4;
    while not Query.Eof do
    begin
      coluna := -1;
      if query.FieldByName('descsituacao').AsString = 'Recesso Remu. Prop.' then
      begin
        plan := 2;
        linha := linha02;
      end
      else
      begin
        plan := 1;
        linha := linha01;
      end;
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
          if nchar(Query.Fields[i].asstring, '/') = 2 then
            Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1] := ' ' + Query.Fields[i].asstring
          else
          begin
            if (query.fields[i].DisplayName = 'Soma') or (query.fields[i].DisplayName = 'Bolsa Total') or
              (query.fields[i].DisplayName = 'Contribuição') or (query.fields[i].DisplayName = 'Valor do Repasse') then
              Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';

            Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1] := Query.Fields[i].Value;
           // contribuicao perguntar
          {  if (query.fields[i].DisplayName = 'Contribuição') then
               Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1] := '=I' + inttostr(linha)+'* 0.10 ';}


            if (query.fields[i].DisplayName = 'Soma') then
              if protege = true then
                Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1] := '=I' + inttostr(linha) + ' + G' + inttostr(linha) + ''  {k - i}
              else
                Excel.WorkBooks[1].Sheets[plan].Cells[Linha, coluna + 1] := '=F' + inttostr(linha) + ' + G' + inttostr(linha) + ''; { h - i }
          end;
        end;
      if query.FieldByName('descsituacao').AsString = 'Recesso Remu. Prop.' then
        inc(linha02)
      else
        inc(linha01);

      Query.Next;
      if (quebra <> '') and (query.eof = false) then
        for i := 0 to Query.FieldCount - 1 do
          if uppercase(quebra) = uppercase(Query.Fields[i].fieldName) then
            quebranova := Query.Fields[i].value;
      Linha := Linha + 1;
      if (query.eof) or (quebranova <> quebra1) then
      begin
        inc(linha);
        inc(linha);
        coluna := -1;
        for i := 0 to campos.Items.Count - 1 do
        begin
          totalcoluna[i] := 0;
        end;
        quebra1 := quebranova;
        inc(linha);
      end;

    end;
    coluna := -1;

    Sheet := Excel.Workbooks[1].WorkSheets[1];
    Excel.Range['B' + inttostr(LINHA01 + 4), 'C' + inttostr(linha01 + 7)].Borders.LineStyle := 1;
    Excel.Range['B' + inttostr(linha01 + 4), 'C' + inttostr(linha01 + 7)].Font.bold := true;
    Sheet.Range['B' + inttostr(linha01 + 4), 'C' + inttostr(linha01 + 4)].Columns.Interior.ColorIndex := 12;
    SHEET.Range['B' + inttostr(linha01 + 5), 'C' + inttostr(linha01 + 7)].Columns.Interior.ColorIndex := 15;
    Sheet.Range['B' + inttostr(LINHA01 + 4), 'C' + inttostr(linha01 + 4)].Merge;
    Sheet.Range['B' + inttostr(LINHA01 + 4), 'C' + inttostr(linha01 + 4)].HorizontalAlignment := -4108;

    Sheet.Cells[Linha01 + 4, 2] := 'TOTAL GERAL';
    Sheet.Cells[Linha01 + 5, 2] := 'Bolsa Auxílio';
    Sheet.Cells[Linha01 + 6, 2] := 'Contribuição ao CETEFE';
    Sheet.Cells[Linha01 + 7, 2] := 'TOTAL';
    Sheet.Cells[Linha01 + 5, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    if protege = true then
      Sheet.Cells[Linha01 + 5, 3] := '=I' + inttostr(linha01) {I}
    else
      Sheet.Cells[Linha01 + 5, 3] := '=F' + inttostr(linha01);  {H}

    Sheet.Cells[Linha01 + 6, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    if protege = true then
      Sheet.Cells[Linha01 + 6, 3] := '=G' + inttostr(linha01)     {J}
    else
      Sheet.Cells[Linha01 + 6, 3] := '=G' + inttostr(linha01);    {I}

    Sheet.Cells[Linha01 + 7, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    Sheet.Cells[Linha01 + 7, 3] := '=C' + inttostr(LINHA01 + 6) + '+C' + inttostr(LINHA01 + 5);
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            sheet.Cells[Linha01, coluna + 1] := '=sum(' + chr(65 + coluna) + '4' + ':' + chr(65 + coluna) + inttostr(linha01 - 1) + ')';
           { if Query.Fields[i].DisplayName = 'Soma' then
              Sheet.Cells[Linha01, coluna + 1] := '=sum(I4:I' + inttostr(linha01 - 1) + ')';
            if Query.Fields[i].DisplayName = 'Valor do Repasse' then
              Sheet.Cells[Linha01, coluna + 1] := '=sum(J4:J' + inttostr(linha01 - 1) + ')';}

          end;
        end;
        Sheet.Range['A' + inttostr(linha01), chr(65 + coluna) + inttostr(linha01)].Borders.LineStyle := 1;
        Sheet.Range['A' + inttostr(linha01), chr(65 + coluna) + inttostr(linha01)].Columns.Interior.ColorIndex := 15;
        Sheet.Range['A' + inttostr(linha01), chr(65 + coluna) + inttostr(linha01)].Font.bold := true;
      end;

    Sheet.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.

    if protege = true then
    begin
      Sheet.Cells.Select; // Seleciona a planilha
      Sheet.Cells.Locked := False; // Retira a proteção
      Sheet.Cells.FormulaHidden := False; // Retira a proteção
      Sheet.Range['A3', chr(65 + coluna - 4) + inttostr(linha01 + 8)].Select; // Seleciona as Células
      excel.Selection.Locked := True; // Ativa Proteção
      excel.Selection.FormulaHidden := True; // Ativa Proteção
      excel.ActiveSheet.Protect('15j305c', True, True, True, True, True, True, True, True, True, True, True, True, True, True, True);
    end;

    COLUNA := -1;
    Sheet := Excel.Workbooks[1].WorkSheets[2];

    sHEET.Range['B' + inttostr(LINHA02 + 4), 'C' + inttostr(linha02 + 7)].Borders.LineStyle := 1;
    ShEET.Range['B' + inttostr(linha02 + 4), 'C' + inttostr(linha02 + 7)].Font.bold := true;
    Sheet.Range['B' + inttostr(linha02 + 4), 'C' + inttostr(linha02 + 4)].Columns.Interior.ColorIndex := 12;
    SHEET.Range['B' + inttostr(linha02 + 5), 'C' + inttostr(linha02 + 5)].Columns.Interior.ColorIndex := 15;
    SHEET.Range['B' + inttostr(linha02 + 6), 'C' + inttostr(linha02 + 6)].Columns.Interior.ColorIndex := 15;
    SHEET.Range['B' + inttostr(linha02 + 7), 'C' + inttostr(linha02 + 6)].Columns.Interior.ColorIndex := 15;
    Sheet.Range['B' + inttostr(LINHA02 + 4), 'C' + inttostr(linha02 + 4)].Merge;
    Sheet.Range['B' + inttostr(LINHA02 + 4), 'C' + inttostr(linha02 + 4)].HorizontalAlignment := -4108;
    Sheet.Cells[Linha02 + 4, 2] := 'TOTAL GERAL';
    Sheet.Cells[Linha02 + 5, 2] := 'Recesso Remunerado + Contribuição ao CETEFE';
    Sheet.Cells[Linha02 + 5, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    Sheet.Cells[Linha02 + 5, 3] := '=H' + inttostr(linha02);     {J}
    Sheet.Cells[Linha02 + 6, 2] := 'Contribuição ao CETEFE';
    Sheet.Cells[Linha02 + 6, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    Sheet.Cells[Linha02 + 6, 3] := '=G' + inttostr(linha02); {I}
    Sheet.Cells[Linha02 + 7, 2] := 'TOTAL';
    Sheet.Cells[Linha02 + 7, 3].NumberFormat := 'R$ ###.###.##0,00_);(R$ ###.###.##0,00)';
    Sheet.Cells[Linha02 + 7, 3] := '=C' + inttostr(LINHA02 + 6) + '+C' + inttostr(LINHA02 + 5);



    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].Visible then
      begin
        inc(coluna);
        if campos.Items.Count > 0 then
        begin
          if campos.Items.IndexOf(Query.Fields[i].DisplayName) >= 0 then
          begin
            if linha02 > 4 then
            begin
              sheet.Cells[Linha02, coluna + 1] := '=sum(' + chr(64 + coluna) + '4' + ':' + chr(64 + coluna) + inttostr(linha02 - 1) + ')';
           { if Query.Fields[i].DisplayName = 'Soma' then
              Sheet.Cells[Linha02, coluna + 1] := '=sum(i4:i' + inttostr(linha02 - 1) + ')';
            if Query.Fields[i].DisplayName = 'Valor do Repasse' then
              Sheet.Cells[Linha02, coluna + 1] := '=sum(j4:j' + inttostr(linha02 - 1) + ')';}
            end;

          end;
        end;
        Sheet.Range['A' + inttostr(linha02), chr(65 + coluna) + inttostr(linha02)].Borders.LineStyle := 1;
        Sheet.Range['A' + inttostr(linha02), chr(65 + coluna) + inttostr(linha02)].Columns.Interior.ColorIndex := 15;
        Sheet.Range['A' + inttostr(linha02), chr(65 + coluna) + inttostr(linha02)].Font.bold := true;
      end;


    Sheet.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    excel.Workbooks[1].WorkSheets[2].Activate;
    if protege = true then
    begin
      Sheet.Cells.Select; // Seleciona a planilha
      Sheet.Cells.Locked := False; // Retira a proteção
      Sheet.Cells.FormulaHidden := False; // Retira a proteção
      Excel.Workbooks[1].WorkSheets[2].Range['A3', chr(65 + coluna - 4) + inttostr(linha02)].Select; // Seleciona as Células
      Excel.Selection.Locked := True; // Ativa Proteção
      excel.Selection.FormulaHidden := True; // Ativa Proteção
      excel.ActiveSheet.Protect('15j305c', True, True, True, True, True, True, True, True, True, True, True, True, True, True, True);
    end;
    excel.Workbooks[1].WorkSheets[1].Activate;
    excel.visible := True;
  end;
end;



procedure TFORSTAX.FormShow(Sender: TObject);
begin
  with DmDta.quTaxa do
  begin
    Close;
    sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,b.cod_banco Banco,m.Emp_periodopgtoobs,');
    Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.tce_datafim, 0 tce_situacao, t.tce_datares,');
    Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, EmpFuncionario F,tb_bancos b');
    Sql.Add('where');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  e.est_codbanco *= b.id_bancos and ');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  m.emp_cod = f.emp_cod and');
    Sql.Add('  m.emp_respcomp = f.func_cod and');
    Sql.Add('  t.emp_cod = -1');
    Open;
  end;

  with DmDta.quTaxaF do
  begin
    Close;
    sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco,');
    Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, p.tce_cod, p.fbo_valor, p.fbo_liberacao');
    Sql.Add('from');
    Sql.Add('  FolhaPgto p, estudante e, Empresa m, Fatura f, EmpFuncionario EF,tb_bancos B');
    Sql.Add('where');
    Sql.Add('  f.fat_numero = p.fat_numero and');
    Sql.Add('  e.est_codbanco *= b.id_bancos and ');
    Sql.Add('  f.emp_cod = m.emp_cod and');
    Sql.Add('  f.fat_numero = -1 and');
    Sql.Add('  m.emp_cod = ef.emp_cod and');
    Sql.Add('  m.emp_respcomp = ef.func_cod and');
    Sql.Add('  e.est_cod = p.est_cod');
    Open;
  end;

  edEstagiarios.Text := '0';
  edTotBolsa.Text := '0,00';
  edTotTaxa.Text := '0,00';
  edEmpCod.SetFocus;

  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  cboCalculo.ItemIndex := 0;
end;

procedure TFORSTAX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSTAX.btImprimirClick(Sender: TObject);
begin
  if cboCalculo.ItemIndex = 0 then
  begin
    if edEmpCod.Text = '' then
    begin
      MSGERRO('Empresa não informada!');
      edEmpCod.SetFocus;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      QRTax := TQRTax.Create(Application);
      QRTax.Bolsa := 0;
      Screen.Cursor := crDefault;
      QRTax.Preview;
      QRTax.Free;
    end;
  end
  else
  begin
    if edFatura.Text = '' then
    begin
      MSGERRO('Fatura não informada!');
      edFatura.SetFocus;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      QRTax1 := TQRTax1.Create(Application);
      QRTax1.Bolsa := 0;
      Screen.Cursor := crDefault;
      QRTax1.Preview;
      QRTax1.Free;
    end;
  end;
end;

procedure TFORSTAX.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSTAX.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNExt(ActiveControl, True, True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSTAX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quTaxa.Close;
  DmDta.quTaxaF.Close;
  Action := caFree;
end;

procedure TFORSTAX.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    //if (edEmpNome.Text <> '') and (edMes.Text <> '') and (edAno.Text <> '') then
    //  AbreQuery;
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSTAX.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORSTAX.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSTAX.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  VerificaNumero(Key);
end;

procedure TFORSTAX.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if not ValidaMes(edMes.Text) then
    begin
      edMes.SetFocus;
      Exit;
    end;
    //else if (edEmpNome.Text <> '') and (edMes.Text <> '') and (edAno.Text <> '') then
    //  AbreQuery;
  end;
end;

procedure TFORSTAX.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
    //else if (edEmpNome.Text <> '') and (edMes.Text <> '') and (edAno.Text <> '') then
    //  AbreQuery;
  end;
end;

procedure TFORSTAX.AbreQuery;
var
  empCod, Data1, Data2: string;
  totBolsa, TotTaxa: Double;
  EMPRESA, FUNCIONARIO: INTEGER;
begin
  totBolsa := 0;
  totTaxa := 0;


  empCod := edEmpCod.Text;
  EMPRESA := STRTOINT(EMPCOD);
  dmdta.PegaResponsavel(1, empresa, funcionario);

  data1 := '01/' + edMes.Text + '/' + edAno.Text;
  data2 := IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
    StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;
//   Sql.Add('  m.emp_cod *= f.emp_cod and ');
 //   Sql.Add(' (select top 1 func_cod from empresponsavel where fun_cod = 1 and inativo = ''N'' and emp_cod = t.emp_cod ) *= f.func_cod and');

  with DmDta.quTaxa do
  begin
    Sql.Clear;
    if (rd.ItemIndex = 0) or (rd.ItemIndex = 1) then
    begin
      Sql.Add('select');
    // Tces Normais
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco,');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.tce_datafim, 0 tce_situacao, t.tce_datares,');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras ');
      Sql.Add('  from ');
      Sql.Add('  tce t, estudante e, Empresa m, EmpFuncionario F,tb_bancos B');
      Sql.Add('  where ');
      Sql.Add('  t.est_cod = e.est_cod and ');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  t.emp_cod = m.emp_cod and ');
      Sql.Add('  t.emp_cod = ' + empCod + ' and ');
      Sql.Add('  ' + INTTOSTR(EMPRESA) + ' = f.emp_cod and ');
      Sql.Add(' ' + INTTOSTR(FUNCIONARIO) + ' = f.func_cod and');
      Sql.Add('  t.tce_situacao = ''0'' and ');
      Sql.Add('  t.tce_dataini <= :data2 and ');
      Sql.Add('  t.tce_datafim >= :data1  ');
      Sql.Add('  union');
    end;
    if (rd.ItemIndex = 0) or (rd.ItemIndex = 1) then
    begin
    // Tces com Prorrogação
      Sql.Add('  select');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco,');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, a.tce_cod, t.tce_dataini, a.tpr_datafim, a.prg_cod tce_situacao, t.tce_datares,');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras');
      Sql.Add('  from');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, EmpFuncionario F, tb_bancos b ');
      Sql.Add('  where');
      Sql.Add('  t.tce_cod = a.tce_cod and ');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  t.est_cod = e.est_cod and ');
      Sql.Add('  t.emp_cod = m.emp_cod and ');
      Sql.Add('  t.emp_cod = ' + empCod + ' and ');
      Sql.Add('  t.tce_situacao <> ''7'' and ');
      Sql.Add('  t.tce_situacao <> ''0'' and ');
      Sql.Add('  ' + INTTOSTR(EMPRESA) + ' = f.emp_cod and ');
      Sql.Add(' ' + INTTOSTR(FUNCIONARIO) + ' = f.func_cod and');
      Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and ');
      Sql.Add('  t.tce_dataini <= :data2 and ');
      Sql.Add('  a.tpr_datafim >= :data1 ');
      Sql.Add('  union');
    end;
    if (rd.ItemIndex = 0) or (rd.ItemIndex = 1) then
    begin
    // Tces recindidos
      Sql.Add('  select');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco, ');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.tce_datafim, 0 tce_situacao, t.tce_datares, ');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras ');
      Sql.Add('  from ');
      Sql.Add('  tce t, estudante e, Empresa m, EmpFuncionario F, tb_bancos B ');
      Sql.Add('  where ');
      Sql.Add('  t.est_cod = e.est_cod and ');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  t.emp_cod = m.emp_cod and ');
      Sql.Add('  t.tce_situacao = ''7'' and ');
      Sql.Add('  t.emp_cod = ' + empCod + ' and ');
      Sql.Add('  ' + INTTOSTR(EMPRESA) + ' = f.emp_cod and ');
      Sql.Add(' ' + INTTOSTR(FUNCIONARIO) + ' = f.func_cod and ');
      Sql.Add('  t.tce_dataini <= :data2 and ');
      Sql.Add('  t.tce_datares >= :data1 ');
      Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and ');
      Sql.Add('  tpr_dataini <= :data2 ) ');
      Sql.Add('  union ');
    end;
    if (rd.ItemIndex = 2) or (rd.ItemIndex = 0) then
    begin
     // Tces recindidos com Recesso
      Sql.Add('  select');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs, b.cod_banco Banco,');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.tce_datafim, 9 tce_situacao, t.tce_datares, ');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras ');
      Sql.Add('  from ');
      Sql.Add('  tce t, estudante e, Empresa m, EmpFuncionario F,tb_bancos B ');
      Sql.Add('  where ');
      Sql.Add('  t.est_cod = e.est_cod and ');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  t.emp_cod = m.emp_cod and ');
      Sql.Add('  t.tce_situacao = ''7'' and ');
      Sql.Add('  t.emp_cod = ' + empCod + ' and ');
      Sql.Add('  ' + INTTOSTR(EMPRESA) + ' = f.emp_cod and ');
      Sql.Add(' ' + INTTOSTR(FUNCIONARIO) + ' = f.func_cod and ');
      Sql.Add('  t.tce_dataini <= :data2 and ');
      Sql.Add('  t.tce_datares >= :data1 ');
      Sql.Add('  and ( t.tce_dataini >= ''25/09/2008''  or (select  max(tpr_dataemi) data  from tceaditivo where tce_cod = t.tce_cod) >= ''25/09/2008'' or  ');
      Sql.Add('  (select max(tal_dataemi) data from tcealteracao where tce_cod = t.tce_cod) >= ''25/09/2008'')  ');
      if (rd.ItemIndex = 0) then
        Sql.Add('  union ');
    end;


    if (rd.ItemIndex = 0) or (rd.ItemIndex = 1) then
    begin
    // rescindidos
      Sql.Add('  select ');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs, b.cod_banco Banco,');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, max(a.tpr_datafim), max(a.prg_cod) tce_situacao, t.tce_datares, ');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras ');
      Sql.Add('  from ');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, EmpFuncionario F,tb_bancos B ');
      Sql.Add('  where ');
      Sql.Add('  e.inst_cod = i.inst_cod and ');
      Sql.Add('  t.tce_cod = a.tce_cod and ');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  t.est_cod = e.est_cod and ');
      Sql.Add('  t.emp_cod = m.emp_cod and ');
      Sql.Add('  ' + INTTOSTR(EMPRESA) + ' = f.emp_cod and ');
      Sql.Add(' ' + INTTOSTR(FUNCIONARIO) + ' = f.func_cod and');
      Sql.Add('  t.emp_cod = ' + EmpCod + ' and ');
      Sql.Add('  t.tce_situacao = ''7'' and ');
      Sql.Add('  a.tpr_dataini <= :data2 and ');
      Sql.Add('  t.tce_datares >= :data1 ');
      Sql.Add('  group by m.Emp_periodopgtoobs,b.cod_banco,');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome, ');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_datares, t.tce_dataini, ');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras ');
    end;
    Sql.Add('  order by ');
    Sql.Add('  e.est_nome ');
    ParamByName('data1').AsDateTime := StrToDate(data1);
    ParamByName('data2').AsDateTime := StrToDate(data2);
    Open;

    if IsEmpty then
    begin
      MSGAVISO('Não há estagiários nesta empresa!');
      //edEmpCod.SetFocus;
    end
    else
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        totBolsa := totBolsa + FieldByName('Bolsatotal').AsFloat;
        // FieldByName('ValBolsa').AsFloat;
        totTaxa := totTaxa + FieldByName('Taxa').AsFloat;
        Next;
      end;
      First;
      EnableControls;
      edTotBolsa.Text := FormatFloat('#,###,###,##0.00', TotBolsa);
      edTotTaxa.Text := FormatFloat('#,###,###,##0.00', TotTaxa);
      edEstagiarios.Text := IntToStr(RecordCount);
    end;
  end;
end;

procedure TFORSTAX.cboCalculoClick(Sender: TObject);
begin
  Notebook1.PageIndex := cboCalculo.ItemIndex;
  Notebook2.PageIndex := cboCalculo.ItemIndex;

  edTotBolsa.Text := '0,00';
  edTotTaxa.Text := '0,00';
  edEmpCod.Text := '';
  edEmpNome.Text := '';
  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  edFatura.Text := '';

  if cboCalculo.ItemIndex = 0 then
  begin
    edEmpCod.SetFocus;
    with DmDta.quTaxaF do
    begin
      Close;
      sql.Clear;
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, p.tce_cod, p.fbo_valor, p.fbo_liberacao');
      Sql.Add('from');
      Sql.Add('  FolhaPgto p, estudante e, Empresa m, Fatura f, EmpFuncionario EF,tb_bancos B');
      Sql.Add('where');
      Sql.Add('  f.fat_numero = p.fat_numero and');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  f.emp_cod = m.emp_cod and');
      Sql.Add('  f.fat_numero = -1 and');
      Sql.Add('  m.emp_cod = ef.emp_cod and');
      Sql.Add('  m.emp_respcomp = ef.func_cod and');
      Sql.Add('  e.est_cod = p.est_cod');
      Open;
    end;
  end
  else
  begin
    edFatura.SetFocus;
    with DmDta.quTaxa do
    begin
      Close;
      sql.Clear;
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco');
      Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  t.tce_bolsa, t.tce_tipobolsa, t.tce_tothoras');
      Sql.Add('from');
      Sql.Add('  tce t, estudante e, Empresa m, EmpFuncionario F,tb_bancos B');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  e.est_codbanco *= b.id_bancos and ');
      Sql.Add('  m.emp_cod = f.emp_cod and');
      Sql.Add('  m.emp_respcomp = f.func_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.emp_cod = -1');
     // Open;
    end;
  end;
end;

procedure TFORSTAX.edFaturaExit(Sender: TObject);
begin
//  if edFatura.Text <> '' then
//    AbreQueryFatura;
end;

procedure TFORSTAX.AbreQueryFatura;
var
  totBolsa, totTaxa: Double;
begin
  totBolsa := 0;
  totTaxa := 0;

  with DmDta.quTaxaF do
  begin
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,m.Emp_periodopgtoobs,b.cod_banco Banco,');
    Sql.Add('  m.emp_tipotaxa, m.emp_valortaxa, p.tce_cod, p.fbo_valor, p.fbo_liberacao');
    Sql.Add('from');
    Sql.Add('  FolhaPgto p, estudante e, Empresa m, Fatura f, EmpFuncionario EF,tb_bancos B');
    Sql.Add('where');
    Sql.Add('  f.fat_numero = p.fat_numero and');
    Sql.Add('  e.est_codbanco *= b.id_bancos and ');
    Sql.Add('  f.emp_cod = m.emp_cod and');
    Sql.Add('  f.fat_numero = ' + edFatura.Text + ' and');
    Sql.Add('  m.emp_cod = ef.emp_cod and');
    Sql.Add('  m.emp_respcomp = ef.func_cod and');
    Sql.Add('  e.est_cod = p.est_cod');
    Sql.Add('order by');
    Sql.Add('  e.est_nome');
    Open;

    if IsEmpty then
    begin
      MSGAVISO('Não há estagiários nesta fatura!');
      //edEmpCod.SetFocus;
    end
    else
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        totBolsa := totBolsa + FieldByName('fbo_valor').AsFloat;
        totTaxa := totTaxa + FieldByName('Taxa').AsFloat;
        Next;
      end;
      First;
      EnableControls;
      edestagiarios.Text := inttostr(dmdta.qutaxaf.RecordCount);
      edTotBolsa.Text := FormatFloat('#,###,###,##0.00', TotBolsa);
      edTotTaxa.Text := FormatFloat('#,###,###,##0.00', TotTaxa);
    end;
  end;
end;

procedure TFORSTAX.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  campos.Items.Clear;
  campos.items.add('Bolsa Total');
  campos.items.add('Contribuição');
 // dmdta.qutaxaDescSituacao.Visible := true;
  ExportarDadosExcel(DmDta.quTaxa, campos, '', 'CETEFE - CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 'Contribuição ao CETEFE - Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text, False);
 // dmdta.qutaxaDescSituacao.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORSTAX.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  campos.Items.Clear;
  campos.items.add('Bolsa Total');
  campos.items.add('Contribuição');
  campos.items.add('Soma');
  campos.items.add('Valor do Repasse');
  DmDta.quTaxarepasse.Visible := true;
  DmDta.quTaxasoma.Visible := true;
 // DmDta.quTaxaSituacao.Visible := F;

  ExportarDadosExcel(DmDta.quTaxa, campos, '', 'CETEFE - CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 'Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text + '  ' + edempnome.Text, True);
  DmDta.quTaxarepasse.Visible := False;
 // DmDta.quTaxaSituacao.Visible := True;
  DmDta.quTaxasoma.Visible := true;

  {GerarExcel(DmDta.quTaxa, 'CETEFE - CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE',
    'Contribuição ao CETEFE - Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text);}
  Screen.Cursor := crDefault;
end;

procedure TFORSTAX.btnFiltroClick(Sender: TObject);
begin
  if Notebook1.PageIndex = 1 then
  begin
    if trim(edFatura.Text) = '' then
    begin
      MessageBox(Handle, 'Preencher o campo de "Nº de Fatura"!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      edFatura.SetFocus;
    end else
      AbreQueryFatura;
  end else
  begin
    if trim(edEmpNome.Text) = '' then
    begin
      MessageBox(Handle, 'Preencher o campo "Empresa"!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      edEmpCod.SetFocus;
    end else if trim(edMes.Text) = '' then
    begin
      MessageBox(Handle, 'Preencher o campo "Mes"!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      edMes.SetFocus;
    end else if trim(edAno.Text) = '' then
    begin
      MessageBox(Handle, 'Preencher o campo "Ano"!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      edAno.SetFocus;
    end else
      AbreQuery;
  end;

end;

end.

