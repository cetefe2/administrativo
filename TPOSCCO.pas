unit TPOSCCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls,
  ComObj,ComCtrls,  OleServer, Word97,  Outlook8, Mapi, Excel97;

type
  TFORSCCO = class(TForm)
    Bevel1: TBevel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    Label2: TLabel;
    edTotEst: TEdit;
    btEmail: TSpeedButton;
    campos: TListBox;
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
    procedure btEmailClick(Sender: TObject);
    procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FORSCCO: TFORSCCO;
implementation

Uses TPOEMP, TPODTA, TPOFNC, TPORCCO, TPOINI, TPOSELEMP;

{$R *.DFM}

procedure TFORSCCO.FormShow(Sender: TObject);
begin
  with DmDta.quContaCorr do
  begin
    Close;
    ParamByName('emp_cod').AsInteger := -1;
    Open;
    edTotEst.Text := '0';
  end;
end;

procedure TFORSCCO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    //vk_F2: edEmpCodDblClick(Sender);
    vk_F6: btImprimirClick(Sender);
  end;
end;

procedure TFORSCCO.btImprimirClick(Sender: TObject);
begin
  if edEmpCod.Text = '' then
  begin
    MSGERRO('Empresa não informada!');
    edEmpCod.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRCCO := TQRCCO.Create(Application);
    Screen.Cursor := crDefault;
    QRCCO.Preview;
    QRCCO.Free;
  end;
end;

procedure TFORSCCO.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSCCO.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNext(ActiveControl,True,True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSCCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quContaCorr.Close;
  Action := caFree;
end;

procedure TFORSCCO.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    if edEmpNome.Text <> '' then
    begin
      with DmDta.quContaCorr do
      begin
        Close;
        ParamByName('emp_cod').AsInteger := StrToInt(edEmpCod.Text);
        Open;
        edTotEst.Text := IntToStr(RecordCount);
      end;
    end
    else
      MSGErro('Empresa não cadastrada!');
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSCCO.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORSCCO.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSCCO.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORSCCO.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  DmDta.quContaCorrcpf_formatado.Visible := true;

  campos.Items.Clear;
  ExportarDadosExcel(DmDta.quContaCorr,campos, '', 'Contas Corrente',edempnome.Text);

  DmDta.quContaCorrcpf_formatado.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORSCCO.ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
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
