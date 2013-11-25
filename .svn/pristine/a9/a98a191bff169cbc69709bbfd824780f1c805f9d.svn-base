
unit TPOVAG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DBCtrls, Mask, RXCtrls, RXDBCtrl, ToolEdit, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox;

type
  TFORVAG = class(TFORMOD2)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    btIdiomas: TSpeedButton;
    btCursos: TSpeedButton;
    btSoftwares: TSpeedButton;
    btEncaminhamento: TSpeedButton;
    edDataAbertura: TMaskEdit;
    cbSexo: TComboBox;
    meEntr1: TMaskEdit;
    meSai1: TMaskEdit;
    meEntr2: TMaskEdit;
    meSai2: TMaskEdit;
    Notebook1: TNotebook;
    edPar: TEdit;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    btAtividades: TSpeedButton;
    btTriagem: TSpeedButton;
    Label19: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    rgSituacao: TRadioGroup;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    btImprimir: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    meData1: TMaskEdit;
    Label25: TLabel;
    meData2: TMaskEdit;
    btImpressao: TSpeedButton;
    Label26: TLabel;
    edTotalVagas: TEdit;
    DBCheckBox11: TDBCheckBox;
    sbHistorico: TSpeedButton;
    campos: TListBox;
    Label27: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit8: TDBEdit;
    Label29: TLabel;
    DBEdit9: TDBEdit;
    Label31: TLabel;
    DBEdit15: TDBEdit;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    Label32: TLabel;
    DBEdit16: TDBEdit;
    btSupervisor: TSpeedButton;
    Label33: TLabel;
    meIntervalo: TMaskEdit;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    cbTipoBolsa: TComboBox;
    Label17: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    btBeneficio: TSpeedButton;
    btProdutividade: TSpeedButton;
    btEntrevistadores: TSpeedButton;
    cbtipo: TcxDBRadioGroup;
    ckEscala: TDBCheckBox;
    btSabado: TSpeedButton;
    Label39: TLabel;
    edsemana: TEdit;
    Label24: TLabel;
    eddiario: TEdit;
    DBEdit19: TDBEdit;
    cbHorarioPer: TComboBox;
    Label7: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    ckSelecao: TcxDBCheckBox;
    ckfechada: TcxDBCheckBox;
    Label28: TLabel;
    DBDateEdit2: TDBDateEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    botao1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    rdVaga: TRadioGroup;
    Label34: TLabel;
    edPreenchidas: TEdit;
    edCanceladas: TEdit;
    edAberto: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    edtotal: TEdit;
    Label38: TLabel;
    SpeedButton3: TSpeedButton;
    qryvaga: TQuery;
    qryvagaVaga: TIntegerField;
    qryvagaEmpresa: TStringField;
    qryvagaGestor: TStringField;
    qryvagaSexo: TStringField;
    qryvagaCurso: TStringField;
    qryvagaCOLUMN6: TStringField;
    qryvagaRequisitosparaDivulgao: TMemoField;
    qryvagaHorrioBolsaAuxlioeBenef: TStringField;
    qryvagaDataehorriodaColetiva: TStringField;
    qryvagaBairro: TStringField;
    qryvagaRequisitos: TMemoField;
    qryvagaObservaes: TMemoField;
    qryvagaDataAbertura: TDateTimeField;
    qryvagaQtde: TIntegerField;
    qryvagaSelecionadoPelaEmpresa: TIntegerField;
    qryvagaAprovado: TIntegerField;
    qryvagaEmEspera: TIntegerField;
    qryvagaReprovado: TIntegerField;
    qryvagaStandBy: TIntegerField;
    qryvagaNoentrevistadopelocliente: TIntegerField;
    qryvagaDesistiu: TIntegerField;
    qryvagaNecessidadedeEncaminhamento: TStringField;
    qryvagaVagasPendentes: TStringField;
    qryvagaAcao: TStringField;
    qryvagaNdeTCEsparaEmisso: TStringField;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure edDataAberturaExit(Sender: TObject);
    procedure meEntr1Exit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btCursosClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btIdiomasClick(Sender: TObject);
    procedure btSoftwaresClick(Sender: TObject);
    procedure btAtividadesClick(Sender: TObject);
    procedure btEncaminhamentoClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure btTriagemClick(Sender: TObject);
    procedure cbHorarioPerClick(Sender: TObject);
    procedure edDataAberturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure edMesExit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
    procedure meData1Exit(Sender: TObject);
    procedure meData2Exit(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbHistoricoClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btSupervisorClick(Sender: TObject);
    procedure btSabadoClick(Sender: TObject);
    procedure btProdutividadeClick(Sender: TObject);
    procedure btBeneficioClick(Sender: TObject);
    procedure btEntrevistadoresClick(Sender: TObject);
    procedure DBEdit19Change(Sender: TObject);
    procedure DBEdit20DblClick(Sender: TObject);
    procedure DBEdit21DblClick(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure senhaExit(Sender: TObject);
    procedure botao1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    MudaAba: Boolean;
    pesquisa: string;
  public
    { Public declarations }
    liberado: boolean;
    F2Qtde, F2QtdePreenc, F2Emp: Integer;
    Argumento,F2EmpNome, F2H1, F2H2, F2H3, F2H4, F2TipoBolsa: string;
    F2VagBolsa: Double;
    OlhaVaga: integer;

    function Testar(): boolean;
    function calchora(): string;
    procedure AtualizaDados; override;
    procedure InicializaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
    procedure SelecionarEmpresa();
    procedure MostraTotal();
  end;

var
  FORVAG: TFORVAG;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOEMP, TPOVCU, TPOVID, TPOVSW,
  TPOVAT, TPOENC, TPOTRV, ComObj, TPOCST, TPORVAG, TPOINI, untLibera,
  TPOVHI, TPOVREQ, TPOSELEMP, TPOVAGSUP, TPOVAGD, TPOPRODUTIVIDADE,
  TPOFORBEN, TPOVAGENTR, TPOAREA, TPOSELECIONADOR, TPOFORMT, TPOPERFVAGA;


function RetiraQuebra(Texto: String): String;
var
S: String;
begin
s := StringReplace(Texto, ''#$D'', '', [rfReplaceAll]);
s := StringReplace(s, ''#$A'', '', [rfReplaceAll]);
S := Copy(S, 1, 500);
Result := trim(S);
end;




function SubstituirCaracteres(S: String; C1: String; C2: String): String;
 var
  IndexadorS: Integer;
  TrechosDaString: String[1];
  StringAuxiliar: String;
begin
 //Inicializa as variáveis
 IndexadorS := 0;
 StringAuxiliar := '';
 //Somente executa a função se o comprimento for 0 ou 1
 if (Length(C1) = 0) or (Length(C1) = 1) then
  begin
   Case Length(C1) of
    0:
     begin
      if C1 = '' then
       S := C2;
     end;
    1:
     begin
      //Procura o caractere "C1" na String "S" e substitui por "C2"
      for IndexadorS := 1 to Length(S) do
       begin
        TrechosDaString := Copy(S, IndexadorS, 1);
         if TrechosDaString = C1 then
          TrechosDaString := C2;
        StringAuxiliar := StringAuxiliar + TrechosDaString;
       end;
      S := StringAuxiliar;
     end;
   end;
  end;
 Result := S;
end;


procedure TFORVAG.ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
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


          if (query.fields[i].DisplayName = 'Observações') then
             Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] :=trim( retiraquebra(Query.Fields[i].asstring));



          if (Query.Fields[i].asstring = 'formula1') then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := '=(((N'+inttostr(linha)+'*4)-(O'+inttostr(linha)+'*4)-(P'+inttostr(linha)+'*4))-Q'+inttostr(linha)+')';
          if (Query.Fields[i].asstring = 'formula2') then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := '=N'+inttostr(linha)+'- O'+inttostr(linha)+'-P'+inttostr(linha);
          if (Query.Fields[i].asstring = 'formula3') then
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := '=O'+inttostr(linha);


          //     '=G' + inttostr(linha) + ' + I' + inttostr(linha) + '';
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
      excel.Range['A1', chr(65 + coluna) + inttostr(linha)].RowHeight := 20;
      excel.Range['A1', chr(65 + coluna) + inttostr(linha)].ColumnWidth  := 20;
    //excel.rows.AutoFit;
    //excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    excel.visible := True;

  end;
end;




procedure TFORVAG.FormCreate(Sender: TObject);
begin
  inherited;
  DmDTA.criacampo('Vaga', 'Vag_reqinterno', 'Vag_COD', ' varchar(500)');
  DmDTA.criacampo('Vaga', 'Vag_reqdivulgacao', 'Vag_COD', ' varchar(500)');
  DmDTA.criacampo('Vaga', 'Vag_dataprocesso', 'Vag_COD', ' varchar(100)');
  DmDTA.criacampo('Vaga', 'Vag_horaprocesso', 'Vag_COD', ' varchar(100)');
  DmDTA.criacampo('Vaga', 'Vag_bolsabeneficio', 'Vag_COD', ' varchar(100)');


  DmDTA.criacampo('Vaga', 'Vag_AuxTransp', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_AuxTransptexto', 'Vag_COD', ' varchar(50)');
  DmDTA.criacampo('Vaga', 'Vag_AuxTranspValor', 'Vag_COD', ' money');

  DmDTA.criacampo('Vaga', 'Vag_AuxAlim', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_AuxAlimAntecipa', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_AuxAlimTipo', 'Vag_COD', ' varchar(50)');
  DmDTA.criacampo('Vaga', 'Vag_AuxAlimtexto', 'Vag_COD', ' varchar(50)');
  DmDTA.criacampo('Vaga', 'Vag_AuxAlimValor', 'Vag_COD', ' money');



  DmDTA.criacampo('Vaga', 'Vag_domingo', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_segunda', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_terca', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_quarta', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_quinta', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_sexta', 'Vag_COD', ' char(1)');
  DmDTA.criacampo('Vaga', 'Vag_sabado', 'Vag_COD', ' char(1)');

  DmDTA.criacampo('Vaga', 'Vag_DataSolicitacao', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_Intervalo', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsegini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsegfim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsegini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsegfim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Interseg', 'Vag_COD', ' smalldatetime ');

  DmDTA.criacampo('Vaga', 'Vag_horterini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horterfim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horterini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horterfim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Interter', 'Vag_COD', ' smalldatetime ');

  DmDTA.criacampo('Vaga', 'Vag_horquaini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquafim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquaini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquafim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Interqua', 'Vag_COD', ' smalldatetime ');

  DmDTA.criacampo('Vaga', 'Vag_horquiini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquifim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquiini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horquifim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Interqui', 'Vag_COD', ' smalldatetime ');

  DmDTA.criacampo('Vaga', 'Vag_horsexini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsexfim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsexini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsexfim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Intersex', 'Vag_COD', ' smalldatetime ');

  DmDTA.criacampo('Vaga', 'Vag_horsabini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsabfim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsabini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_horsabfim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Intersab', 'Vag_COD', ' smalldatetime ');



  DmDTA.criacampo('Vaga', 'Vag_hordomini1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_hordomfim1', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_hordomini2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'Vag_hordomfim2', 'Vag_COD', ' smalldatetime ');
  DmDTA.criacampo('Vaga', 'vag_Interdom', 'Vag_COD', ' smalldatetime ');


  nomeChave := 'vag_cod';
  nomeCodigo := 'vag_cod';
  nomeNome := 'vag_qtde';
  nomeTabela := 'Vaga';

  olhavaga := 0;
  quPrincipal := DmDta.quVaga;
  DmDta.dsVaga.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORVAG.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsVaga.DataSet := DmDta.quVaga;
end;

procedure TFORVAG.AtualizaDados;
begin
  if edDataAbertura.Text <> '  /  /    ' then
    quPrincipal.FieldByName('vag_dataabertura').Value := edDataAbertura.Text
  else
    quPrincipal.FieldByName('vag_dataabertura').Value := '';
  quPrincipal.FieldByName('vag_periodo').Value := IntToStr(cbHorarioPer.ItemIndex);
  if meEntr1.Text <> '  :  ' then
    quPrincipal.FieldByName('vag_horarioini1').Value := '01/01/1900 ' + meEntr1.Text;
  if meSai1.Text <> '  :  ' then
    quPrincipal.FieldByName('vag_horariofim1').Value := '01/01/1900 ' + meSai1.Text;

  if meEntr2.Text <> '  :  ' then
    quPrincipal.FieldByName('vag_horarioini2').Value := '01/01/1900 ' + meEntr2.Text
  else
    quPrincipal.FieldByName('vag_horarioini2').Text := '';
  if meSai2.Text <> '  :  ' then
    quPrincipal.FieldByName('vag_horariofim2').Value := '01/01/1900 ' + meSai2.Text
  else
    quPrincipal.FieldByName('vag_horariofim2').Text := '';

  if cbSexo.ItemIndex >= 0 then
    quPrincipal.FieldByName('vag_sexo').Value := IntToStr(cbSexo.ItemIndex)
  else
    quPrincipal.FieldByName('vag_sexo').Value := '';
  if cbTipoBolsa.ItemIndex >= 0 then
    quPrincipal.FieldByName('vag_tipobolsa').Value := IntToStr(cbTipoBolsa.ItemIndex)
  else
    quPrincipal.FieldByName('vag_tipobolsa').Value := '';
end;

procedure TFORVAG.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('vag_cod').Value := 0;

  edDataAbertura.Text := FormatDateTime('dd/mm/yyyy', Date);
  cbHorarioPer.ItemIndex := 3;
  cbSexo.ItemIndex := 2;
  cbTipoBolsa.ItemIndex := 1;

  quPrincipal.FieldByName('vag_qtde').Value := 1;
  quPrincipal.FieldByName('vag_qtdepreenc').Value := 0;
  quPrincipal.FieldByName('vag_prorroga').Value := 0;
  quPrincipal.FieldByName('vag_efetiva').Value := 0;
  quPrincipal.FieldByName('vag_digitacao').Value := 0;
  quPrincipal.FieldByName('vag_refeicaoprop').Value := 0;
  quPrincipal.FieldByName('vag_valetransp').Value := 0;
  quPrincipal.FieldByName('vag_valealim').Value := 0;
  quPrincipal.FieldByName('vag_valeref').Value := 0;
  quPrincipal.FieldByName('vag_divulgasite').Value := 0;
  quPrincipal.FieldByName('vag_divulgaemail').Value := 0;
  quPrincipal.FieldByName('vag_assistmedica').Value := 0;
  quPrincipal.FieldByName('vag_transpemp').Value := 0;
  quPrincipal.FieldByName('vag_periodic').Value := 0;
  quPrincipal.FieldByName('vag_cancelada').Value := 0;
  quPrincipal.FieldByName('vag_segunda').Value := '1';
  quPrincipal.FieldByName('vag_terca').Value := '1';
  quPrincipal.FieldByName('vag_quarta').Value := '1';
  quPrincipal.FieldByName('vag_quinta').Value := '1';
  quPrincipal.FieldByName('vag_sexta').Value := '1';
  quPrincipal.FieldByName('vag_sabado').Value := '0';
  quPrincipal.FieldByName('vag_domingo').Value := '0';
  DBEdit2.SetFocus;
end;

procedure TFORVAG.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  BuscaPrimeiroUltimo;
  AbreFechaTabelas(true);
  liberado := false;


  with quPrincipal do
  begin
    pesquisa := '  v.*, e.emp_nome ,(select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod) Encaminhados, ' +
      '  (select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag_cod and Age_faltou1 = ''Não'') + ' +
      '  (select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag_cod and Age_faltou2 = ''Não'') + ' +
      '  (select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag_cod and Age_faltou3 = ''Não'') Entrevistados,' +
      '  (select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag_cod ) + ' +
      '  (select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag_cod ) + ' +
      '  (select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag_cod ) Agendados, ' +
      '  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''1'') Reprovados, ' +
      '  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''6'') Stand_By,' +
      '  (select count(vag_cod) from TCE where vag_cod = v.vag_cod ) Tces, ' +
      '    (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''3'') Desistentes, ' +
      ' (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''2'') Aprovados, case  ' +
      ' when  cast(v.vag_cancelada as integer)  > 0 then  v.vag_qtde * cast(v.vag_cancelada as integer) else ' +
      ' v.vag_qtdecancel  end Canceladas,e.emp_nome ' +
      ',  (select  f.efu_nome from  Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod) RespEmpresa  ';
    Close;
    Sql.Clear;
    Sql.Add('Select  v.*,  ');
    Sql.Add('  (select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag_cod ) + ');
    Sql.Add('  (select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag_cod ) + ');
    Sql.Add('  (select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag_cod ) Agendados, ');
    Sql.Add('  (select count(age_vagcod1) from Agenda where age_vagcod1 = v.vag_cod and Age_faltou1 = ''Não'') + ');
    Sql.Add('  (select count(age_vagcod2) from Agenda where age_vagcod2 = v.vag_cod and Age_faltou2 = ''Não'') + ');
    Sql.Add('  (select count(age_vagcod3) from Agenda where age_vagcod3 = v.vag_cod and Age_faltou3 = ''Não'') Entrevistados,');
    Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''1'') Reprovados, ');
    Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''6'') Stand_By,');
    Sql.Add('  (select count(vag_cod) from TCE where vag_cod = v.vag_cod ) Tces, ');
    Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod) Encaminhados, ');
    Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''3'') Desistentes, ');
    Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''2'') Aprovados,  ');
    Sql.Add('  case  when  cast(v.vag_cancelada as integer)  > 0 then  v.vag_qtde * cast(v.vag_cancelada as integer) else ');
    Sql.Add('  v.vag_qtdecancel  end Canceladas ');
    Sql.Add(' , e.emp_nome, (select  f.efu_nome from  Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod) RespEmpresa ');
    Sql.Add('  from Vaga V, Empresa E where e.emp_cod = v.emp_cod and v.vag_qtdepreenc + coalesce(v.vag_qtdecancel,0) < vag_qtde and vag_cancelada <> ''1'' ');
    Sql.Add('  order by v.vag_cod desc  ');
    Open;
    MostraTotal();
    first;
  end;

  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 0;
  Notebook1.PageIndex := 0;
  Screen.Cursor := crDefault;
  if olhavaga > 0 then
  begin
    edpar.SetFocus;
    edpar.Text := inttostr(olhavaga);
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFORVAG.CarregaDados;
begin
  inherited;
  if not quPrincipal.FieldByName('vag_dataabertura').IsNull then
    edDataAbertura.Text := quPrincipal.FieldByName('vag_dataabertura').Value;
  if (quPrincipal.FieldByName('vag_periodo').Value <> '') and
    (not quPrincipal.FieldByName('vag_periodo').IsNull) then
    cbHorarioPer.ItemIndex := quPrincipal.FieldByName('vag_periodo').AsInteger;
  if not quPrincipal.FieldByName('vag_horarioini1').IsNull then
    meEntr1.Text := FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_horarioini1').Value);
  if not quPrincipal.FieldByName('vag_horariofim1').IsNull then
    meSai1.Text := FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_horariofim1').Value);
  if not quPrincipal.FieldByName('vag_horarioini2').IsNull then
    meEntr2.Text := FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_horarioini2').Value);
  if not quPrincipal.FieldByName('vag_horariofim2').IsNull then
    meSai2.Text := FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_horariofim2').Value);
  if (not quPrincipal.FieldByName('vag_sexo').IsNull) and
    (quPrincipal.FieldByName('vag_sexo').Value <> '') then
    cbSexo.ItemIndex := quPrincipal.FieldByName('vag_sexo').AsInteger;
  if (not quPrincipal.FieldByName('vag_tipobolsa').IsNull) and
    (quPrincipal.FieldByName('vag_tipobolsa').Value <> '') then
    cbTipoBolsa.ItemIndex := quPrincipal.FieldByName('vag_tipobolsa').AsInteger;
end;

procedure TFORVAG.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    if DmDTA.quVaga.Active then
    begin
      if not (DmDta.quVaga.State in [dsInsert, dsEdit]) then dmDta.quVaga.Edit;
      DmDta.quVagaemp_cod.Text := FOREMP.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORVAG.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit5.Text <> '') then
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DmDta.quVagaemp_nome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(DBEdit5.Text));
      DmDta.quVagaVag_Auxtransp.Text := DmDta.BuscaCampo('Empresa', 'emp_AuxTransp', 'emp_cod', StrToInt(DBEdit5.Text));
      DmDta.quVagaVag_Auxtransptexto.value := DmDta.BuscaCampo('Empresa', 'emp_AuxTransptexto', 'emp_cod', StrToInt(DBEdit5.Text));
      DmDta.quVagaVag_Auxtranspvalor.Text := DmDta.BuscaCampo('Empresa', 'emp_AuxTranspvalor', 'emp_cod', StrToInt(DBEdit5.Text));

      if DmDta.quVagaemp_nome.Text = '' then
      begin
        MSGERRO('Empresa inexistente. Selecione outra empresa!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quVaga.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DmDta.quVagaemp_nome.Text := '';
    end;
  end;
end;

procedure TFORVAG.edDataAberturaExit(Sender: TObject);
begin
  inherited;
  if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFORVAG.meEntr1Exit(Sender: TObject);
begin
  inherited;
  if TCustomEdit(Sender).Text <> '  :  ' then
  begin
    if not ValidaHora(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
    if quprincipal.State in [dsedit, dsinsert] then
      if (meEntr2.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
        meintervalo.Text := timetostr(strtotime(meentr2.text) - strtotime(mesai1.text));
    if (meEntr1.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
      calchora();
  end;
end;

procedure TFORVAG.btExcluirClick(Sender: TObject);

  function VerificaDelecao: Boolean;
  begin
    with TQuery.create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select * from TCE where vag_cod = ' + quPrincipal.FieldByName('vag_cod').Text);
      Sql.Add('and tce_situacao <> ''7''');
      Open;

      Result := IsEmpty;

      Close;
      Free;
    end;
  end;

  procedure DeletaTabelas;
    procedure Tabela(nomeTabela: string);
    begin
      with TQuery.create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Delete from ' + nomeTabela + ' where vag_cod = ' + quPrincipal.FieldByName('vag_cod').Text);
        ExecSql;
        Free;
      end;
    end;
  begin
    Tabela('Encaminhamento');
    Tabela('VagaCurso');
    Tabela('VagaAtividade');
    Tabela('VagaIdioma');
    Tabela('VagaSoftware');
  end;

begin
  if VerificaDelecao then
  begin
    if MSGSIMNAO('Deseja excluir o registro posicionado?') then
    begin
      if frmlibera.showmodal <> mrok then
      begin
        showmessage('Você não tem Permissão para executar essa tarefa!!');
        exit;
      end;

      try
        btEnter.SetFocus;
        DeletaTabelas;
        DmDta.ExcluirRegistro(quPrincipal);
        estadoNavegando;

        cbTipoPesquisa.ItemIndex := 0;
        Notebook1.PageIndex := 0;
        edPar.Clear;
        if edPar.CanFocus then edPar.SetFocus;

      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
  end
  else
    MSGERRO('Existem TCE''s cadastrados para esta vaga. Exclusão não permitida!');
end;

procedure TFORVAG.btSalvarClick(Sender: TObject);
var
  marca: tbookmark;
  vagaxx: string;
begin
  if testar() = false then
    exit;
  btEnter.SetFocus;
  Salvou := True;

  if edDataAbertura.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data de abertura da vaga!');
    edDataAbertura.SetFocus;
    Salvou := False;
  end
  else
  begin
    // salva o registro
    calchora();
    if quPrincipal.state in [dsinsert, dsedit] then
    begin
      if (quprincipal.FieldByName('vag_selecao').asstring = 'S') and
        (quprincipal.FieldByName('vag_fechada').asstring = 'S') then
        quprincipal.FieldByName('vag_qtdepreenc').AsInteger := quprincipal.FieldByName('vag_qtde').AsInteger;
      if (quprincipal.FieldByName('vag_selecao').asstring = 'S') and
        (quprincipal.FieldByName('vag_fechada').asstring = 'N') then
        quprincipal.FieldByName('vag_qtdepreenc').AsInteger := 0;
    end;

    if quPrincipal.State = dsEdit then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);
        //quprincipal.Post;
        {if quprincipal.UpdatesPending then
        begin
          quprincipal.ApplyUpdates;
          quprincipal.CommitUpdates;
        end;}
      except
       // quprincipal.CancelUpdates;
        btCancelar.Click; // Cancela Registro
        MSGERRO('Atenção não foi possível salvar o registro. Informações incompletas, ou erro ao salvar no banco de dados!');
      end;
    end
    else if quPrincipal.State = dsInsert then
    begin
      try
        AtualizaDados;
       // QUPRINCIPAL.Post;
        DMDta.SalvarRegistro(quPrincipal);
        vagaxx := quprincipal.FieldByName('vag_cod').asstring;
      except
        btCancelar.Click; // Cancela Registro
        MSGERRO('Atenção não foi possível salvar o registro. Informações incompletas!');
        Exit;
      end;
      // refresh
      with quPrincipal do
      begin
        Close;
        Open;
        MostraTotal();
        quprincipal.Locate('vag_cod', vagaxx, []);
        //first;
      end;
    end;

    if MudaAba then
    begin
      estadoNavegando;
      cbTipoPesquisa.ItemIndex := 0;
      pgPrincipal.ActivePage := tbConsulta;
      Notebook1.PageIndex := 0;
      edPar.Clear;
      if edPar.CanFocus then edPar.SetFocus;
    end;
  end;
end;

procedure TFORVAG.btCancelarClick(Sender: TObject);
begin
  inherited;
  cbTipoPesquisa.ItemIndex := 0;
  Notebook1.PageIndex := 0;
  edPar.Clear;
  if edPar.CanFocus then edPar.SetFocus;
end;

procedure TFORVAG.edParExit(Sender: TObject);
var  ordem: string;
begin
  if edPar.Text <> '' then
  begin
    ordem := 'v.vag_cod';
    argumento := 'v.emp_cod = e.emp_cod and v.vag_cod = ' + edPar.Text;

    // verifica a situação da vaga
    case rgSituacao.itemIndex of
      0: argumento := argumento + ' and v.vag_qtdepreenc < v.vag_qtde and v.vag_cancelada = ''0''';
      1: argumento := argumento + ' and v.vag_qtdepreenc = v.vag_qtde and v.vag_cancelada = ''0''';
      2: argumento := argumento + ' and v.vag_cancelada = ''1''';
    end;

    case rdVaga.ItemIndex of
      1: argumento := argumento + ' and  v.vag_resp = ''A''';
      2: argumento := argumento + ' and  v.vag_resp = ''R''';
    end;

    DMDta.montaSql(quPrincipal, pesquisa, 'Vaga V, Empresa E', argumento, ordem);
    quPrincipal.Last;
    estadoNavegando();
  end;
end;

procedure TFORVAG.edParKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaNumero(Key);
end;

procedure TFORVAG.cbTipoPesquisaChange(Sender: TObject);
begin
  inherited;
  case cbTipoPesquisa.ItemIndex of
    0:
      begin
        Notebook1.PageIndex := 0;
        edPar.SetFocus;
        edEmpCod.Text := '';
        edEmpNome.Text := '';
        edAno.Text := '';
        edMes.Text := '';
        meData1.Text := '';
        meData2.Text := '';
      end;

    1:
      begin
        Notebook1.PageIndex := 1;
        edEmpCod.SetFocus;
        edPar.Text := '';
        edAno.Text := IntToStr(RetornaValorAno());
        edMes.Text := IntToStr(RetornaValorMes());
        meData1.Text := '';
        meData2.Text := '';
      end;

    2:
      begin
        Notebook1.PageIndex := 2;
        meData1.SetFocus;
        edPar.Text := '';
        edAno.Text := '';
        edMes.Text := '';
        edEmpCod.Text := '';
        edEmpNome.Text := '';
      end;
  end;
end;

procedure TFORVAG.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
      Exit;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    Close;
  end;
end;

procedure TFORVAG.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  lblInclusao.Caption := 'Inclusão';
  DmDta.IncluirRegistro(quPrincipal);
  pgPrincipal.ActivePage := tbRegistro;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORVAG.btCursosClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVCU := TFORVCU.Create(Self);
    FORVCU.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVCU.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORVAG.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(Sender);
end;

procedure TFORVAG.btIdiomasClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVID := TFORVID.Create(Self);
    FORVID.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVID.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORVAG.btSoftwaresClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVSW := TFORVSW.Create(Self);
    FORVSW.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVSW.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORVAG.btAtividadesClick(Sender: TObject);
begin
  if Testar() = false then
    exit;

  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVAT := TFORVAT.Create(Self);
    FORVAT.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVAT.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORVAG.btEncaminhamentoClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORENC := TFORENC.Create(Self);
    Screen.Cursor := crDefault;
    FORENC.ShowModal;
    forenc.Free;
  end;
  MudaAba := True;
end;

procedure TFORVAG.edEmpCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORVAG.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    vk_F6: btImprimirClick(Sender);
    vk_F7: btTriagemClick(Sender);
    vk_F8: btCursosClick(Sender);
    vk_F9: btIdiomasClick(Sender);
    vk_F10: btSoftwaresClick(Sender);
    vk_F11: btAtividadesClick(Sender);
    vk_F12: btEncaminhamentoClick(Sender);
  end;
end;

procedure TFORVAG.LimpaCampos;
begin
  inherited;
  meEntr1.Clear;
  meSai1.Clear;
  meEntr2.Clear;
  meSai2.Clear;
end;

procedure TFORVAG.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORVAG.btTriagemClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if (quPrincipal.FieldByName('vag_qtde').AsInteger) >
    (quPrincipal.FieldByName('vag_qtdepreenc').AsInteger) then
  begin
    Screen.Cursor := crHourGlass;
    FORTRV := TFORTRV.Create(Self);
    Screen.Cursor := crDefault;
    FORTRV.ShowModal;
  end
  else
    MSGAVISO('Vaga(s) já preenchida(s). Tente novamente!');

  MudaAba := True;
end;

procedure TFORVAG.cbHorarioPerClick(Sender: TObject);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
end;

procedure TFORVAG.edDataAberturaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
end;

procedure TFORVAG.LimpaParametros;
begin
  inherited;
  edPar.clear;
  edEmpCod.Clear;
  edEmpNome.Clear;
end;

procedure TFORVAG.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORVAG.edMesExit(Sender: TObject);
begin
  SelecionarEmpresa();
end;

procedure TFORVAG.SelecionarEmpresa();
var
  Data, Data1, Data2, Ordem: string;
  ano, mes, dia: Word;
begin
  inherited;
  argumento := 'v.emp_cod = e.emp_cod';

  if edPar.Text <> '' then
    argumento := argumento + ' and v.vag_cod = ' + edPar.Text;


  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    argumento := argumento + ' and e.emp_cod = ' + edEmpCod.Text;
  end
  else
    edEmpNome.Text := '';

  if (edAno.Text <> '') and (edMes.Text <> '') then
  begin
    // data inicial e final
    {data1 := '''' + edMes.Text + '/01/' + edAno.Text + '''';
    data2 := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
      StrToInt(edAno.Text))) + '/' + edAno.Text + '''';}
    data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
    data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
      StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';

    // verifica se já não existe cláusula where
    argumento := argumento + ' and v.vag_dataabertura between ' + data1 + ' and ' + data2;
    ordem := 'v.vag_cod';
  end;

  if meData1.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData1.Text), ano, mes, dia);
    data := IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
    argumento := argumento + ' and v.vag_dataabertura >= ''' + data + '''';
  end;

  if meData2.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData2.Text), ano, mes, dia);
    data := IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
    argumento := argumento + ' and v.vag_dataabertura <= ''' + data + '''';
  end;

  ordem := 'v.vag_cod';
  // verifica a situação da vaga
  case rgSituacao.itemIndex of
    0: begin
        argumento := argumento + ' and v.vag_qtdepreenc + coalesce(v.vag_qtdecancel,0) < vag_qtde and vag_cancelada = ''0''';
        ordem := 'v.vag_cod';
      end;
    1: begin
        argumento := argumento + ' and v.vag_qtdepreenc + coalesce(v.vag_qtdecancel,0) = vag_qtde  and vag_cancelada = ''0''';
        ordem := 'v.vag_cod';
      end;
    2: begin
        argumento := argumento + ' and (coalesce(v.vag_qtdecancel,0) > 0  or  coalesce(v.vag_cancelada,0) > 0) ';
        ordem := 'v.vag_cod';
      end;
    3: begin
       { with quPrincipal do
        begin
          Close;
          Sql.Clear;
          Sql.Add('Select v.*,  ');
          Sql.Add('  (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod) Encaminhados, ');
          Sql.Add(' (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''3'') Desistentes, ');
          Sql.Add(' (select count(vag_cod) from encaminhamento where vag_cod = v.vag_cod and eva_resultado =''2'') Aprovados,  ');
          Sql.Add(' case  when  cast(v.vag_cancelada as integer)  > 0 then  v.vag_qtde * cast(v.vag_cancelada as integer) else ');
          Sql.Add('  v.vag_qtdecancel  end Canceladas ');
          Sql.Add(' , e.emp_nome, (select  f.efu_nome from  Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod) RespEmpresa ');
          Sql.Add('  from Vaga V, Empresa E where e.emp_cod = v.emp_cod order by v.vag_cod ');
          Open;
          MostraTotal();
          Last;
        end;}

      end;
  end;

  case rdVaga.ItemIndex of
    1: argumento := argumento + ' and  v.vag_resp = ''A''';
    2: argumento := argumento + ' and  v.vag_resp = ''R''';
  end;



  if (Ordem <> '') and (argumento <> '') then
  begin
    DMDta.montaSql(quPrincipal, pesquisa, 'Vaga V, Empresa E', argumento, ordem);
    MostraTotal();
    quPrincipal.Last;
    estadoNavegando();
  end;
end;

procedure TFORVAG.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit13.Text <> '') and (DBEdit14.Text = '') then
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then
        quPrincipal.Edit;
      quPrincipal.FieldByName('Vag_idademax').Text := DBEdit13.Text;
    end;
  end;
end;

procedure TFORVAG.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  SelecionarEmpresa();
end;

procedure TFORVAG.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORVAG.btImprimirClick(Sender: TObject);
var
  var1: Variant;
  endemp, telefone, emprespent, EmpNomeRespEnt: string;
  i, Vaga: Integer;
  empresa, funcionario: integer;
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  Vaga := DBEdit1.Field.AsInteger;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  Screen.Cursor := crHourGlass;
  var1 := CreateOleObject('Word.basic');
  var1.FileNew(FORINI.Diretorio + 'SolEmpresa.dot');

  // Dados da empresa
  Var1.Insert('SOLICITAÇÃO DE ESTAGIÁRIOS');
  Var1.NextCell;
  Var1.Insert('OE: ' + DmDta.quVagaVag_cod.Text);
  Var1.NextCell;
  Var1.Insert('(A ser Preenchido pela Empresa)');
  Var1.NextCell;
  Var1.NextCell;
  Var1.Insert('DADOS DA EMPRESA:');

  Var1.NextCell;
  Var1.Insert('Nome da Empresa:');
  Var1.NextCell;
  Var1.Insert(quPrincipal.FieldByName('emp_nome').Text);

  Var1.NextCell;
  Var1.Insert('Telefone:');
  Var1.NextCell;
  // busca o telefone
  Telefone := DmDta.BuscaCampo('Empresa', 'emp_telefone', 'emp_cod', StrToInt(DBEdit5.Text));
  if telefone <> '' then
    Var1.Insert('(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4));

  Var1.NextCell;
  Var1.Insert('Data da Solicitação:');
  Var1.NextCell;
  Var1.Insert(edDataAbertura.Text);

  Var1.NextCell;
  Var1.Insert('Nome do Solicitante (RH):');
  Var1.NextCell;
  empresa := strtoint(dbedit5.text);
  funcionario := 0;
  dmdta.PegaResponsavel(4, empresa, funcionario); // Pega o responsavel pela entrevista

  //EmpRespEnt := DmDta.BuscaCampo('Empresa', 'emp_respent', 'emp_cod', StrToInt(DBEdit5.Text));
  EmpNomeRespEnt := DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod', empresa, Funcionario);
  Var1.Insert(empNomeRespEnt);

  Var1.NextCell;
  Var1.Insert('Número de Vagas:');
  Var1.NextCell;
  Var1.Insert(quPrincipal.FieldByName('vag_qtde').Text);

  Var1.NextCell;
  Var1.NextCell;
  Var1.Insert('CURSOS:');
  Var1.NextCell;
  Var1.Insert('ANO EM CURSO:');
  Var1.NextCell;


  // cursos da vaga
  with DmDTA.quVagaCurso do
  begin
    Close;
    // imprime os cursos
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
    first;
    i := 1;
    while not eof do
    begin
      Var1.Insert(IntToStr(i) + '. ' + FieldByName('cur_nome').Text);
      var1.NextCell;
      // verifica se é só um ano ou dois
      if FieldByName('Vcu_periodoini').AsInteger = FieldByName('Vcu_periodofim').AsInteger then
        Var1.Insert(FieldByName('Vcu_periodoini').Text + 'º')
      else
        Var1.Insert(FieldByName('Vcu_periodoini').Text + 'º até ' + FieldByName('Vcu_periodofim').Text + 'º');
      var1.NextCell;
      Next;
      i := i + 1;
    end;

    // imprime as linhas em branco (restantes)
    for i := DmDta.quVagaCurso.RecordCount + 1 to 5 do
    begin
      var1.NextCell;
      var1.NextCell;
    end;
    Close;
  end;
  var1.NextCell;
  Var1.Insert('ATIVIDADES DO ESTÁGIO: ');
  Var1.Nextcell;


  // atividades da vaga
  with DmDTA.quVagaAtividade do
  begin
    // imprime as atividades
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
    first;
    i := 1;
    while not eof do
    begin
      Var1.Insert(IntToStr(i) + '. ' + FieldByName('ati_nome').Text);
      var1.NextCell;
      Next;
      i := i + 1;
    end;

    // imprime as linhas em branco (restantes)
    for i := DmDta.quVagaAtividade.RecordCount + 1 to 5 do
    begin
      var1.NextCell;
    end;
    Close;
  end;
  var1.NextCell;

  // dados do estágio
  Var1.Insert('DADOS SOBRE O ESTÁGIO:');

  Var1.NextCell;
  Var1.Insert('Duração do Estágio: ');
  Var1.NextCell;
  if quPrincipal.FieldByName('Vag_duracao').AsInteger = 6 then
    var1.Insert('(  X  )  06 meses    (      )  12 meses')
  else
    var1.Insert('(      )  06 meses    (  X  )  12 meses');

  Var1.NextCell;
  Var1.Insert('Sexo: ');
  Var1.NextCell;
  if cbSexo.ItemIndex = 0 then
    var1.Insert('(      )  Feminino    (  X  )  Masculino')
  else if cbSexo.ItemIndex = 1 then
    var1.Insert('(  X  )  Feminino    (      )  Masculino')
  else if cbSexo.ItemIndex = 2 then
    var1.Insert('(  X  )  Feminino    (  X  )  Masculino')
  else
    var1.Insert('(      )  Feminino    (      )  Masculino');

  // verifica se é só uma idade ou duas
  Var1.NextCell;
  Var1.Insert('Idade: ');
  Var1.NextCell;
  if quPrincipal.FieldByName('Vag_idademin').Text <> '' then
  begin
    if quPrincipal.FieldByName('Vag_idademin').AsInteger = quPrincipal.FieldByName('Vag_idademax').AsInteger then
      Var1.Insert(quPrincipal.FieldByName('Vag_idademin').Text)
    else
      Var1.Insert(quPrincipal.FieldByName('Vag_idademin').Text + ' até ' + quPrincipal.FieldByName('Vag_idademax').Text);
  end;

  Var1.NextCell;
  Var1.Insert('Horário do Estágio: ');
  Var1.NextCell;
  Var1.Insert(CalcHora());

  Var1.NextCell;
  Var1.Insert('Possibilidade de Efetivação: ');
  Var1.NextCell;
 // if DBCheckbox1.Checked then
  if quPrincipal.FieldByName('Vag_efetiva').AsString = '1' then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');

  Var1.NextCell;
  Var1.Insert('Possibilidade de Prorrogação: ');
  Var1.NextCell;
 // if DBCheckbox2.Checked then
  if quPrincipal.FieldByName('Vag_prorroga').AsString = '1' then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');

  Var1.NextCell;
  var1.Insert('Informática:');
  var1.NextCell;

  with DmDTA.quVagaSoftware do
  begin
    // imprime os softwares
    ParamByName('vag_cod').AsInteger := DmDta.quvagavag_cod.AsInteger;
    Open;

    if not Eof then
    begin
      first;
      while not eof do
      begin
        // software
        Var1.Insert(FieldByName('stw_nome').Text);
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível regular
      first;
      while not eof do
      begin
        // software
        if FieldByName('vsw_nivel').AsInteger = 0 then
          Var1.Insert('(  X  )  Regular')
        else
          Var1.Insert('(      )  Regular');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível bom
      first;
      while not eof do
      begin
        // software
        if FieldByName('vsw_nivel').AsInteger = 1 then
          Var1.Insert('(  X  )  Bom')
        else
          Var1.Insert('(      )  Bom');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível ótimo
      first;
      while not eof do
      begin
        // software
        if FieldByName('vsw_nivel').AsInteger = 2 then
          Var1.Insert('(  X  )  Ótimo')
        else
          Var1.Insert('(      )  Ótimo');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
    end
    else
    begin
      Var1.NextCell;
      Var1.NextCell;
      Var1.NextCell;
    end;
    Close;
  end;

  var1.NextCell;
  Var1.Insert('Língua Estrangeira:');
  var1.NextCell;

  with DmDTA.quVagaIdioma do
  begin
    // imprime os softwares
    ParamByName('vag_cod').AsInteger := DmDta.quVagavag_cod.AsInteger;
    Open;
    first;
    if not eof then
    begin
      while not eof do
      begin
        // software
        Var1.Insert(FieldByName('idi_nome').Text);
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime LÊ
      first;
      while not eof do
      begin
        // software
        if FieldByName('vid_nivel').AsString = 'B' then
          Var1.Insert('(  X  )  Básico')
        else
          Var1.Insert('(      )  Básico');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível bom
      first;
      while not eof do
      begin
        // software
        if FieldByName('vid_nivel').AsString = 'I' then
          Var1.Insert('(  X  )  Intermediário')
        else
          Var1.Insert('(      )  Intermediário');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;

      // Imprime o nível ótimo
      first;
      while not eof do
      begin
        // software
        if FieldByName('vid_nivel').AsString = 'A' then
          Var1.Insert('(  X  )  Avançado')
        else
          Var1.Insert('(      )  Avançado');
        Next;
        if not Eof then Var1.Insert(#13);
      end;
      Var1.NextCell;
      first;
      while not eof do
      begin
        // software
        if FieldByName('vid_nivel').AsString = 'F' then
          Var1.Insert('(  X  )  Fluente')
        else
          Var1.Insert('(      )  Fluente');
        Next;
        if not Eof then Var1.Insert(#13);
      end;

    end
    else
    begin
      Var1.NextCell;
      Var1.NextCell;
      Var1.NextCell;
      Var1.NextCell;
    end;
    Close;
  end;

  Var1.NextCell;
  Var1.NextCell;
  Var1.Insert('BENEFÍCIOS OFERECIDOS PELA EMPRESA:');
  Var1.NextCell;
  //Var1.Insert('Transporte da Empresa:');
  Var1.Insert('Auxílio Transporte');
  Var1.NextCell;
  //if DBCheckbox4.Checked then

  if DmDta.quvaga.FieldByName('vag_AuxTransp').AsString = 'R' then
    Var1.Insert('Recarga Urbs');
  if DmDta.quvaga.FieldByName('vag_AuxTransp').AsString = 'P' then
  begin
    Var1.Insert('Auxilio Pecuniário  Valor: R$ ');
    if DmDta.quvaga.FieldByName('vag_AuxTranspvalor').AsString <> '' then
      Var1.Insert(FormatFloat('##,##0.00', DmDta.quvaga.FieldByName('vag_AuxTranspvalor').value));
  end;
  if DmDta.quvaga.FieldByName('vag_AuxTransp').AsString = 'T' then
    Var1.Insert('Transporte oferecido pela Empresa');
  if DmDta.quvaga.FieldByName('vag_AuxTransp').AsString = 'O' then
  begin
    Var1.Insert('Outro Benefício: ');
    DmDta.quvaga.FieldByName('vag_AuxTranspTexto').AsString;
  end;


  {if  FieldByName('vag_AuxTransp').AsString = 'T' then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');}

  Var1.NextCell;
 // Var1.Insert('Vale Transporte:');
 // Var1.NextCell;
  //{if DBCheckbox8.Checked then
 { if  FieldByName('vag_AuxTransp').AsString = 'R' then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');}

  //Var1.NextCell;
  Var1.Insert('Assistência Médica:');
  Var1.NextCell;
  //{if DBCheckbox10.Checked then
  if DmDta.quvaga.FieldByName('vag_assistmedica').AsString = '1' then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');

  Var1.NextCell;
  //Var1.Insert('Restaurante Próprio:');
  //Var1.NextCell;
 { if DBCheckbox7.Checked then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');
  }
  //Var1.NextCell;
  Var1.Insert('Auxilio Refeição:');
  Var1.NextCell;
  {if DBCheckbox3.Checked then
    var1.Insert('(  X  )  Sim    (      )  Não')
  else
    var1.Insert('(      )  Sim    (  X  )  Não');
   }


  if DmDta.quvaga.FieldByName('vag_AuxAlim').AsString = 'V' then
  begin
    Var1.Insert('Vale Refeição');
    DmDta.quvaga.FieldByName('vag_AuxAlimtexto').AsString

  end;
  if DmDta.quvaga.FieldByName('vag_AuxAlim').AsString = 'R' then
  begin
    Var1.Insert('Refeitório Próprio');
  end;
  if DmDta.quvaga.FieldByName('vag_AuxAlim').AsString = 'P' then
  begin
    Var1.Insert('Auxílio Pecuniário R$ ');
    if DmDta.quvaga.FieldByName('vag_AuxAlimValor').asstring <> '' then
      Var1.Insert(FormatFloat('##,##0.00', DmDta.quvaga.FieldByName('vag_AuxAlimValor').value));
    if DmDta.quvaga.FieldByName('vag_AuxAlimTipo').AsString = 'D' then
      Var1.Insert('/Diário')
    else
      Var1.Insert('/Mensal');

    if DmDta.quvaga.FieldByName('vag_AuxAlimAntecipa').AsString = 'S' then
      Var1.Insert('- Antecipado')
    else
      Var1.Insert('- Subsequente');
  end;

  Var1.NextCell;
  Var1.Insert('Bolsa Auxílio:');
  Var1.NextCell;
  var1.Insert(DBEdit17.Text + ' / ' + cbtipobolsa.Text);

  Var1.NextCell;
  Var1.Insert('Outros Benefícios:');
  Var1.NextCell;
  DmDta.quVagaBeneficio.close;
  DmDta.quVagaBeneficio.parambyname('vaga').Asinteger := dmdta.quVagaVag_cod.AsInteger;

  DmDta.quVagaBeneficio.open;
  while DmDta.quVagaBeneficio.eof = false do
  begin
    Var1.Insert(DmDta.quVagaBeneficiovbn_nome.AsString);
    DmDta.quVagaBeneficio.next;
    if DmDta.quVagaBeneficio.eof = false then
      Var1.Insert(#13);
  end;
  Var1.NextCell;


  Var1.NextCell;
  Var1.Insert('ENDEREÇO PARA ENTREVISTAS:');
  Var1.NextCell;
  Var1.Insert('RUA: ');
  Var1.NextCell;

  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    sql.clear;
    sql.add('select * from Empresa where emp_cod = ' + DBEdit5.Text);
    Open;

    endemp := fieldbyname('emp_enderecoenc').asstring;
    if fieldbyname('emp_numendenc').Text <> '' then
      endemp := endemp + ' ' + fieldbyname('emp_numendenc').Text;
    if fieldbyname('emp_cjtoendenc').Text <> '' then
      endemp := endemp + ' - CJ. ' + fieldbyname('emp_cjtoendenc').Text;
    Var1.Insert(endemp);

    Var1.NextCell;
    Var1.Insert('Telefone:');
    Var1.NextCell;
    // busca o telefone
    Telefone := FieldByName('emp_telefoneenc').Text;
    if Telefone <> '' then
      Var1.Insert('(' + Copy(Telefone, 1, 2) + ') ' + Copy(Telefone, 3, 4) + '-' + Copy(Telefone, 7, 4));
    Var1.NextCell;
    Var1.Insert('Bairro:');
    Var1.NextCell;
    Var1.Insert(fieldbyname('emp_bairroenc').Text);
    Var1.NextCell;
    Var1.Insert('Nome do Responsável para a Entrevista:');
    Var1.NextCell;
    close;
    free;
  end;
  DmDta.quEntrevistadorVaga.close;
  DmDta.quEntrevistadorVaga.parambyname('vaga').Asinteger := dmdta.quVagaVag_cod.AsInteger;

  DmDta.quEntrevistadorVaga.open;
  while DmDta.quEntrevistadorVaga.eof = false do
  begin
    Var1.Insert(DmDta.quEntrevistadorVaganome.AsString);
    DmDta.quEntrevistadorVaga.next;
    if DmDta.quEntrevistadorVaga.eof = false then
      Var1.Insert(#13);
  end;
  Screen.Cursor := crDefault;
  Var1.AppShow;

  MudaAba := True;
end;

function TFORVAG.calchora(): string;
var
  hor: array[1..20] of string;
  horarios, dtc, hr1, hr2, hr3, hr4: string;
  dias: array[1..7] of string;
  semana, diassemana: integer;
  HSemana, Acumula, h1, h2, h3, h4, h5, h6, h7, h8: TDateTime;
  contador: integer;
  multiplicador: real;


  function Vdia(dia: string): boolean;
  begin

    if ((quPrincipal.FieldByName('Vag_Hor' + dia + 'ini1').asstring <> '') and
      (quPrincipal.FieldByName('vag_Hor' + dia + 'fim1').asstring <> '')) or
      ((quPrincipal.FieldByName('Vag_Hor' + dia + 'ini2').asstring <> '') and
      (quPrincipal.FieldByName('Vag_Hor' + dia + 'fim2').asstring <> '')) then
      result := true
    else
      result := false;
  end;



begin
  dias[1] := 'um';
  dias[2] := 'dois';
  dias[3] := 'tres';
  dias[4] := 'qatro';
  dias[5] := 'cinco';
  dias[6] := 'seis';
  dias[7] := 'sete';
  semana := 0;


  diassemana := 0;
  dtc := '';

  if dmdta.quVagaVag_domingo.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_segunda.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_terca.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_quarta.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_quinta.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_Sexta.AsString = '1' then
    inc(diassemana);
  if dmdta.quVagaVag_Sabado.AsString = '1' then
    inc(diassemana);


  hr1 := meEntr1.Text;
  hr2 := meSai1.Text;
  if meEntr2.Text <> '  :  ' then
    hr3 := meEntr2.Text
  else
    hr3 := '';
  if meSai2.Text <> '  :  ' then
    hr4 := meSai2.Text
  else
    hr4 := '';

  if (hr1 = '') and (hr2 = '') then
    Exit;

  if (hr1 = '  :  ') and (hr2 = '  :  ') then
    Exit;

  if DBCheckBox12.Checked then
    inc(semana);
  if DBCheckBox13.Checked then
    inc(semana);
  if DBCheckBox14.Checked then
    inc(semana);
  if DBCheckBox15.Checked then
    inc(semana);
  if DBCheckBox16.Checked then
    inc(semana);
  if DBCheckBox17.Checked then
    inc(semana);
  if DBCheckBox18.Checked then
    inc(semana);

   ///// Verifica dias da Semana diferenciado

  if DBCheckBox13.Checked then
  begin
    if vdia('Seg') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegfim1').Value)) * 24;
      Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegfim1').Value);
      dec(semana);

      if quPrincipal.FieldByName('Vag_HorSegini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorSegfim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegfim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorSegini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSegfim2').Value);
      horarios := horarios + 'horas nas segundas-feiras ';

    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;

    //TERCA
  if DBCheckBox14.Checked then
  begin
    if vdia('Ter') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerfim1').Value)) * 24;
      dec(semana);

      Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerfim1').Value);

      if quPrincipal.FieldByName('vag_HorTerini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorTerfim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerfim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorTerini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorTerfim2').Value);
      horarios := horarios + 'horas nas terças-feiras ';

    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;

    //quarta
  if DBCheckBox15.Checked then
  begin
    if vdia('Qua') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuaini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuafim1').Value)) * 24;
      Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuaini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuafim1').Value);
      dec(semana);

      if quPrincipal.FieldByName('vag_HorQuaini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuaini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorQuafim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuafim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorQuaini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuaini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuafim2').Value);
      horarios := horarios + 'horas nas quartas-feiras ';

    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;
    // Quinta
  if DBCheckBox16.Checked then
  begin
    if vdia('Qui') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuiini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuifim1').Value)) * 24;
      Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuiini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuifim1').Value);
      dec(semana);

      if quPrincipal.FieldByName('vag_HorQuiini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuiini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorQuifim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuifim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorQuiini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuiini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorQuifim2').Value);
      horarios := horarios + 'horas nas quintas-feiras ';

    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;

    //Sexta
  if DBCheckBox17.Checked then
  begin
    if vdia('Sex') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexfim1').Value)) * 24;
      Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexfim1').Value);
      dec(semana);

      if quPrincipal.FieldByName('vag_HorSexini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorSexfim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexfim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorSexini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSexfim2').Value);
      horarios := horarios + 'horas nas sextas-feiras ';

    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;
    //sabado

  if DBCheckBox18.Checked then
  begin
    if vdia('Sab') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabfim1').Value)) * 24;
      Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabfim1').Value);
      dec(semana);
      if quPrincipal.FieldByName('vag_HorSabini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorSabfim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabfim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorSabini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorSabfim2').Value);
      horarios := horarios + 'horas aos sábados ';
    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;
    //domingo
  if DBCheckBox12.Checked then
  begin
    if vdia('Dom') then
    begin
      h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomini1').Value)) * 24;
      h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomfim1').Value)) * 24;
      Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomini1').Value) +
        ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomfim1').Value);
      dec(semana);

      if quPrincipal.FieldByName('vag_HorDomini2').asstring <> '' then
        h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomini2').Value)) * 24
      else
        h3 := 0;
      if quPrincipal.FieldByName('vag_HorDomfim2').asstring <> '' then
        h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomfim2').Value)) * 24
      else
        h4 := 0;
      if quPrincipal.FieldByName('vag_HorDomini2').asstring <> '' then
        horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomini2').Value) +
          ' às ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('vag_HorDomfim2').Value);
      horarios := horarios + 'horas aos domingos ';
    end
    else
    begin
      h1 := strtoTime(hr1) * 24;
      h2 := strtoTime(hr2) * 24;
      if hr3 <> '' then
        h3 := strtoTime(hr3) * 24
      else
        h3 := 0;
      if hr4 <> '' then
        h4 := strtoTime(hr4) * 24
      else
        h4 := 0;
    end;
    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    HSemana := Hsemana + ((h2 - h1) + (h4 - h3));
    acumula := acumula + (((h2 - h1) + (h4 - h3)) * multiplicador);
    if contador > 0 then
      dec(contador);
    if contador = 0 then multiplicador := 4;
  end;



   //// Fim verifica Dias







  // entrada 1
  hor[1] := hr1[1];
  hor[2] := hr1[2];
  hor[3] := ':';
  hor[4] := hr1[4];
  hor[5] := hr1[5];

  // saida 1
  hor[6] := hr2[1];
  hor[7] := hr2[2];
  hor[8] := ':';
  hor[9] := hr2[4];
  hor[10] := hr2[5];

  // entrada 2
  if hr3 <> '' then
  begin
    hor[11] := hr3[1];
    hor[12] := hr3[2];
    hor[13] := ':';
    hor[14] := hr3[4];
    hor[15] := hr3[5];
  end;

  // saída 2
  if hr4 <> '' then
  begin
    hor[16] := hr4[1];
    hor[17] := hr4[2];
    hor[18] := ':';
    hor[19] := hr4[4];
    hor[20] := hr4[5];
  end;

  eddiario.Text := FloatToStr(arredondar((h2 - h1) + (h4 - h3), 2));

  edsemana.Text := FloatToStr(arredondar(Hsemana, 2));

  dtc := hor[1] + hor[2] + hor[3] + hor[4] + hor[5] + ' às ' + hor[6] + hor[7] + hor[8] + hor[9] + hor[10];
  if (hr3 <> '') or (hr4 <> '') then
    dtc := dtc + ' e das ' + hor[11] + hor[12] + hor[13] + hor[14] + hor[15] + ' às ' + hor[16] + hor[17] + hor[18] + hor[19] + hor[20];

  if ckEscala.Checked then
    dtc := 'Horário com dias da semana indeterminados, conforme escala: ' + strzero(diassemana, 2) + ' (' + dias[diassemana] + ') dias da semana, conforme escala, das' + dtc;

  Result := dtc;
end;

procedure TFORVAG.meData1Exit(Sender: TObject);
begin
  inherited;
  if (meData2.Text = '  /  /    ') and (meData1.Text <> '  /  /    ') then
    meData2.Text := meData1.Text;
end;

procedure TFORVAG.meData2Exit(Sender: TObject);
var
  ano, mes, dia: Word;
  ordem, data: string;
begin
  inherited;
  ordem := 'v.vag_cod';
  argumento := 'v.emp_cod = e.emp_cod ';
  //and v.vag_cod = ' + edPar.Text;

  if meData1.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData1.Text), ano, mes, dia);
    data := IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
    argumento := argumento + ' and v.vag_dataabertura >= ''' + meData1.Text + '''';
  end;
  if meData2.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData2.Text), ano, mes, dia);
    data := IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
//    If argumento <> '' then argumento := argumento + ' and ';
    argumento := argumento + ' and v.vag_dataabertura <= ''' + meData2.Text + '''';
  end;


    // verifica a situação da vaga
  case rgSituacao.itemIndex of
    0: argumento := argumento + ' and v.vag_qtdepreenc < v.vag_qtde and v.vag_cancelada = ''0''';
    1: argumento := argumento + ' and v.vag_qtdepreenc = v.vag_qtde and v.vag_cancelada = ''0''';
    2: argumento := argumento + ' and v.vag_cancelada = ''1''';
  end;

  case rdVaga.ItemIndex of
    1: argumento := argumento + ' and  v.vag_resp = ''A''';
    2: argumento := argumento + ' and  v.vag_resp = ''R''';
  end;


  if (Ordem <> '') and (Argumento <> '') then
  begin
    // 'V.*, e.emp_nome'
    DMDta.montaSql(quPrincipal, pesquisa, 'Vaga V, Empresa E', argumento, ordem);
    quPrincipal.Last;
    estadoNavegando();
  end;
  MostraTotal();
end;

procedure TFORVAG.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  {qrVAG := TQRVAG.Create(Self);
  Screen.Cursor := crDefault;
  qrVAG.Preview;
  qrVAG.Free;}
  DmDta.quVagaVag_dataabertura.Visible := true;

  DmDta.quVagaVag_setor.Visible := true;
  //DmDta.quVagaVag_observacao.Visible := true;
  //DmDta.quVagaRespEmpresa.Visible := true;
  DmDta.quVagaEncaminhados.Visible := true;
  DmDta.quVagaDesistentes.Visible := true;
  DmDta.quVagaAprovados.Visible := true;
  dmDta.quVagaAreaEstagio.Visible := true;
  DmDta.quVagaVag_supervisor.Visible := true;
  DmDta.quVagaVag_formsupervisor.Visible := true;
  DmDta.quVagaVag_dataEnc.Visible := true;
  //DmDta.quVagaVag_Respselecao.Visible := true;
  campos.Items.Clear;
  campos.Items.Add('Encaminhados');
  campos.Items.Add('Desistentes');
  campos.Items.Add('Aprovados');
  campos.Items.Add('Canceladas');
  campos.Items.Add('Qtde.');
  campos.Items.Add('Preenc.');
  campos.Items.Add('Cancel.');
  //campos.Items.Add('Data Abertura');
  //campos.Items.Add('Data Solicitação');
  //campos.Items.Add('Data para Encaminhamento');


  DmDta.quVaga.DisableControls;
  ExportarDadosExcel(DmDta.quVaga, campos, '', 'Vagas por Periodo', 'Período ' + medata1.text + ' - ' + medata2.text);
  DmDta.quVaga.EnableControls;
  dmDta.quVagaAreaEstagio.Visible := false;
  DmDta.quVagaVag_dataabertura.Visible := false;
  DmDta.quVagaEncaminhados.Visible := false;
  DmDta.quVagaDesistentes.Visible := false;
  DmDta.quVagaAprovados.Visible := false;
  DmDta.quVagaVag_setor.Visible := false;
  DmDta.quVagaVag_Respselecao.Visible := false;
  DmDta.quVagaRespEmpresa.Visible := false;
  DmDta.quVagaVag_observacao.Visible := false;
  DmDta.quVagaVag_supervisor.Visible := false;
  DmDta.quVagaVag_FormSupervisor.Visible := false;
  //GerarExcel(DmDta.quVaga, 'Vagas por Período');
  Screen.Cursor := crDefault;

end;

procedure TFORVAG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if quPrincipal.Active then
  begin
    if not quPrincipal.FieldByName(nomeCodigo).IsNull then
      F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
    if not quPrincipal.FieldByName(nomenome).IsNull then
      F2Nome := quPrincipal.FieldByName(nomenome).AsString;
    if not quPrincipal.FieldByName('vag_qtde').IsNull then
      F2Qtde := quPrincipal.FieldByName('vag_Qtde').AsInteger;
    if not quPrincipal.FieldByName('vag_Qtdepreenc').IsNull then
      F2QtdePreenc := quPrincipal.FieldByName('vag_Qtdepreenc').AsInteger;
    if not quPrincipal.FieldByName('emp_cod').IsNull then
      F2Emp := quPrincipal.FieldByName('emp_cod').AsInteger;
    if not quPrincipal.FieldByName('emp_nome').IsNull then
      F2EmpNome := quPrincipal.FieldByName('emp_nome').AsString;
    if not quPrincipal.FieldByName('vag_horarioini1').IsNull then
      F2H1 := Copy(quPrincipal.FieldByName('vag_horarioini1').Value, 12, 8);
    if not quPrincipal.FieldByName('vag_horariofim1').IsNull then
      F2H2 := Copy(quPrincipal.FieldByName('vag_horariofim1').Value, 12, 8);
    if not quPrincipal.FieldByName('vag_horarioini2').IsNull then
      F2H3 := Copy(quPrincipal.FieldByName('vag_horarioini2').Value, 12, 8);
    if not quPrincipal.FieldByName('vag_horariofim2').IsNull then
      F2H4 := Copy(quPrincipal.FieldByName('vag_horariofim2').Value, 12, 8);
    if not quPrincipal.FieldByName('vag_valorbolsa').IsNull then
      F2VagBolsa := quPrincipal.FieldByName('vag_valorbolsa').Value;
    if not quPrincipal.FieldByName('vag_tipobolsa').IsNull then
      F2TipoBolsa := quPrincipal.FieldByName('vag_tipobolsa').Value;
  end;
  inherited;
end;

procedure TFORVAG.MostraTotal;
var
  Total: Integer;
  TotalReg: integer;
  TotalCanceladas: integer;
  TotalPreenchidas: integer;
  pendente, TotalEmAberto: integer;
begin
  // vai somando de acordo com a situação

  Total := 0;
  TotalReg := 0;
  TotalCanceladas := 0;
  TotalPreenchidas := 0;
  TotalEmAberto := 0;

  with DmDTA.quVaga do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Total := Total + FieldByName('vag_qtde').AsInteger;
      if FieldByName('vag_cancelada').Asstring <> '1' then
      begin
        totalpreenchidas := totalpreenchidas + FieldByName('vag_qtdepreenc').AsInteger;
        totalemAberto := totalemaberto + FieldByName('pendentes').AsInteger;
        totalCanceladas := totalcanceladas + FieldByName('vag_qtdecancel').AsInteger;
      end
      else
        totalCanceladas := totalcanceladas + (FieldByName('vag_qtde').AsInteger - FieldByName('vag_qtdepreenc').AsInteger);
      // verifica a situação
     { if rgSituacao.ItemIndex = 0 then
        Total := Total + FieldByName('vag_qtde').AsInteger -
          (FieldByName('vag_qtdepreenc').AsInteger + FieldByName('vag_qtdecancel').AsInteger)
      else if rgSituacao.ItemIndex = 1 then
        Total := Total + FieldByName('vag_qtdepreenc').AsInteger
      else
        Total := Total + FieldByName('vag_qtde').AsInteger;
      }
      Next;
    end;
    First;
    EnableControls;
  end;

  DmDTA.quVaga.Last;
  edTotalVagas.Text := inttostr(DmDTA.quVaga.recordcount);

  edpreenchidas.Text := inttostr(totalpreenchidas);
  edcanceladas.Text := inttostr(totalcanceladas);
  edaberto.Text := inttostr(totalemaberto);
  edtotal.Text := IntToStr(Total);
  DmDTA.quVaga.first;

end;

procedure TFORVAG.sbHistoricoClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVHI := TFORVHI.Create(Self);
    FORVHI.vag := DBEdit1.Field.AsInteger;
    FORVHI.emp := DBEdit5.Field.AsInteger;
    Screen.Cursor := crDefault;
    FORVHI.ShowModal;
  end;
  MudaAba := True;

end;

procedure TFORVAG.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  if frmlibera.showmodal = mrok then
    dbedit3.ReadOnly := false;
end;

procedure TFORVAG.SpeedButton1Click(Sender: TObject);
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVREQ := TFORVREQ.Create(Self);
    FORVREQ.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVREQ.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORVAG.btSupervisorClick(Sender: TObject);
begin
  inherited;
  if Testar() = false then
    exit;

  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVAGSUP := TFORVAGSUP.Create(Self);
    FORVAGSUP.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger, quPrincipal.FieldByName('Emp_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVAGSUP.ShowModal;
    forvagsup.Free;

  end;
  MudaAba := True;

end;

procedure TFORVAG.btSabadoClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVAGD := TFORVAGD.Create(Self);
    Screen.Cursor := crDefault;
    forVAGd.domingo.Enabled := DBCheckBox12.Checked;
    forVAGd.segunda.Enabled := DBCheckBox13.Checked;
    forVAGd.terca.Enabled := DBCheckBox14.Checked;
    forVAGd.quarta.Enabled := DBCheckBox15.Checked;
    forVAGd.quinta.Enabled := DBCheckBox16.Checked;
    forVAGd.sexta.Enabled := DBCheckBox17.Checked;
    forVAGd.sabado.Enabled := DBCheckBox18.Checked;
    FORVAGD.ShowModal;
    FORVAGD.FREE;
  end;
  MudaAba := True;

end;

procedure TFORVAG.btProdutividadeClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORPRODUTIVIDADE := TFORPRODUTIVIDADE.Create(Self);
    Screen.Cursor := crDefault;
    forprodutividade.cbtipo.Enabled := liberado;
    FORPRODUTIVIDADE.ShowModal;
    FORPRODUTIVIDADE.FREE;
  end;
  MudaAba := True;

end;

procedure TFORVAG.btBeneficioClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORBEN := TFORBEN.Create(Self);
    Screen.Cursor := crDefault;
    FORBEN.ShowModal;
    FORBEN.FREE;
  end;
  MudaAba := True;

end;

procedure TFORVAG.btEntrevistadoresClick(Sender: TObject);
begin
  if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORVAGENTR := TFORVAGENTR.Create(Self);
    FORVAGENTR.SetaCodigo(quPrincipal.FieldByName('vag_cod').AsInteger, quPrincipal.FieldByName('Emp_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORVAGENTR.ShowModal;
    forvagENTR.Free;

  end;
  MudaAba := True;


end;

function TFORVAG.Testar: boolean;
begin
  if dbedit5.Text = '' then
  begin
    showmessage('É Necessário Cadastrar a empresa da Vaga');
    result := false;
    exit;
  end;

  if meentr1.Text = '  :  ' then
  begin
    showmessage('Cadastre a Hora de entrada da Vaga');
    result := false;
    exit;
  end;
  if meSai1.Text = '  :  ' then
  begin
    showmessage('Cadastre a Hora de saida da Vaga');
    result := false;
    exit;
  end;
  result := true;
end;

procedure TFORVAG.DBEdit19Change(Sender: TObject);
begin

  calchora();
end;

procedure TFORVAG.DBEdit20DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORAREA := TFORAREA.Create(Self);
  FORAREA.F2 := True;
  Screen.Cursor := crDefault;
  FORAREA.ShowModal;

  if FORAREA.F2Codigo <> '' then
  begin
    if DmDTA.quVaga.Active then
    begin
      if not (DmDta.quVaga.State in [dsInsert, dsEdit]) then dmDta.quVaga.Edit;
      DmDta.quVagaArea_cod.Text := FORAREA.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORAREA.Free;
end;

procedure TFORVAG.DBEdit21DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORSELECIONADOR := tFORSELECIONADOR.Create(Self);
  FORSELECIONADOR.F2 := True;
  Screen.Cursor := crDefault;
  FORSELECIONADOR.ShowModal;

  if FORSELECIONADOR.F2Codigo <> '' then
  begin
    if DmDTA.quVaga.Active then
    begin
      if not (DmDta.quVaga.State in [dsInsert, dsEdit]) then dmDta.quVaga.Edit;
      DmDta.quVagaSel_cod.Text := FORSELECIONADOR.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORSELECIONADOR.Free;
end;

procedure TFORVAG.DBCheckBox13Click(Sender: TObject);
begin
  CALCHORA();

end;

procedure TFORVAG.senhaExit(Sender: TObject);
begin
//  inherited;

end;

procedure TFORVAG.botao1Click(Sender: TObject);
begin
  inherited;
  if frmlibera.showmodal <> mrok then
  begin
    showmessage('Você não tem Permissão para executar essa tarefa!!');
    exit;
  end;
  liberado := true;
end;

procedure TFORVAG.SpeedButton2Click(Sender: TObject);
var ag1:string;
begin
  ag1 := memo1.Text + ' ' +argumento + ' order by   v.vag_cod ';   
  qryvaga.Active :=false;
  qryvaga.SQL.Text := ag1;
  qryvaga.active := true;
  if qryvaga.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  ExportarDadosExcel(qryvaga, campos, '', 'RELATÓRIO DE AÇÕES RECRUTAMENTO', '');
  Screen.Cursor := crDefault;

  exit;
  if quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;
  Screen.Cursor := crHourGlass;


  DmDta.quVagaVag_dataabertura.Visible := true;
  DmDta.quVagaVag_datasolicitacao.Visible := true;
  DmDta.quVagaEncaminhados.Visible := true;
  DmDta.quVagaDesistentes.Visible := true;
  DmDta.quVagapendentes.Visible := true;
  DmDta.quVagaAprovados.Visible := true;
  DmDta.quVagaAcao.Visible := true;
  dmDta.quVagaselecionador.Visible := false;
  campos.Items.Clear;
  campos.Items.Add('Encaminhados');
  campos.Items.Add('Desistentes');
  campos.Items.Add('Aprovados');
  campos.Items.Add('Canceladas');
  campos.Items.Add('Qtde.');
  campos.Items.Add('Preenc.');
  campos.Items.Add('Pendentes');
  campos.Items.Add('Cancel.');
  dmDta.quVagaAreaEstagio.Visible := true;
  DmDta.quVaga.DisableControls;
  ExportarDadosExcel(DmDta.quVaga, campos, '', 'RELATÓRIO DE AÇÕES RECRUTAMENTO', '');
  //'Período ' + medata1.text + ' - ' + medata2.text);
  DmDta.quVaga.EnableControls;
  dmDta.quVagaAreaEstagio.Visible := false;
  dmDta.quVagapendentes.Visible := false;
  DmDta.quVagaAprovados.Visible := false;
  dmDta.quVagaselecionador.Visible := true;
  DmDta.quVagaAcao.Visible := true;
  DmDta.quVagaVag_dataabertura.Visible := false;
  DmDta.quVagaEncaminhados.Visible := false;
  DmDta.quVagaDesistentes.Visible := false;
  DmDta.quVagaAprovados.Visible := false;
  DmDta.quVagaVag_setor.Visible := false;
  DmDta.quVagaVag_Respselecao.Visible := false;
  DmDta.quVagaRespEmpresa.Visible := false;
  DmDta.quVagaVag_observacao.Visible := false;
  DmDta.quVagaVag_supervisor.Visible := false;
  DmDta.quVagaVag_FormSupervisor.Visible := false;
  //GerarExcel(DmDta.quVaga, 'Vagas por Período');
  Screen.Cursor := crDefault;


end;

procedure TFORVAG.SpeedButton3Click(Sender: TObject);
begin
if Testar() = false then
    exit;
  inherited;
  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORPERFILVAGA := TFORPERFILVAGA.Create(Self);
    Screen.Cursor := crDefault;
    FORPERFILVAGA.ShowModal;
    FORPERFILVAGA.FREE;
  end;
  MudaAba := True;


end;

end.

