//**************************************************************************//
// Form: Não Aplicável                                                      //
// DataSet: Não Aplicável                                                   //
// Autor: Bruno e Fabiana                                                   //
// Data: 23/09/2000                                                         //
//**************************************************************************//

unit TPOFNC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DateUtils, Menus, ExtCtrls, ComCtrls, ToolWin, DBTables, DB, StdCtrls;

function validaData(data: string): boolean;
procedure MSGERRO(stringErro: string);
procedure MSGAVISO(stringErro: string);
function MSGSIMNAO(stringErro: string): boolean;
function verificaNumero(var num: char): boolean;
function validaHora(numHora: string): Boolean;
function ConverteHoraNum(horaNum: string): Real;
function verificaPorcentagem(porcent: string): Boolean;
procedure caracterMaiusculo(var tecla: char);
procedure caracterMinusculo(var tecla: char);
function ValidaCgcCpf(Value: string): boolean;
function PreencheZerosEsquerda(valor: string; numDigitos: Integer): string;
function Localiza(tabela: TTable; valorChave: array of const): Boolean;
function getDescricao(tabela: TTable; valorChave: array of const; nomeCampo: string): string;
function ValidaAno(ano: string): Boolean;
function ValidaMes(mes: string): Boolean;
function RetornaDiasMes(mes, ano: Integer): Integer;
procedure Bolha(n_elementos: Integer; var vet: array of Integer);
procedure BolhaString(n_elementos: Integer; var vet: array of string);
function ArredondaCima(valor: Double): Integer;
function PegaHoraSistema: string;
procedure RetornaIdade(asDataNasc: string;
  var asIdade: string; var asUnidIdade: string);
procedure RetornaTempo(asDataNasc: string;
  var asIdade: string);
function AnoBissexto(anAno: integer): boolean;
function DiasDoMes(anMes: integer): integer;
function NumeroExtenso(NumeroInteiro: integer; tipo_numero: integer): string;
function RetornaValorCerto(valor: string): string;
function RetornaMes(Mes: Integer): string;
function RetornaValorMes: Integer;
function RetornaValorAno: Integer;
function dtcompleta(Dias: Boolean; Data: string): string;
function PreencheTracos(numTracos: Integer): string;
function PreencheEspacosDireita(valor: string; numDigitos: Integer): string;
function PreencheEspacosEsquerda(valor: string; numDigitos: Integer): string;
procedure GerarExcel(Consulta: TQuery; Titulo: string; SubTitulo: string = '');
function PrimeiraMaiuscula(Ativ: string; TodasPrimeiras: Boolean): string;
function PrimeirasMaiusculas(Ativ: string): string;
function sonumero(linha: string): string;
function ValidateCpf(Cpf: string): boolean;
function poemascara(palavra: string): string;
function strzero(numero, zeros: integer): string;
function Arredondar(Valor: Double; Dec: Integer): Double;
procedure BuscaCep(cep: string; var Logradouro, Bairro, Cidade, Uf: string);
function StrIsDate(const S: string): boolean;
function Nchar(palavra, pedaco: string): integer;
procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
function CincoDias(data: tdate): tdate;
function Extenso(pValor: Extended): string;
function Extenso2(pValor: Extended): string;
function IsNumeric(aValue: string): Boolean;
function TotalMeses(inicio, final: tdate): integer;
procedure RetornaTempoMes(asDataNasc: string; var asIdade: string);
function DiasUteis(dias: integer; data: TDate): tdate;
function DiasUteisM(dias: integer; data: TDate): tdate;
function PrimeiroDia(dias: integer; data: TDate): tdate;
function PrimeiroMes(data: TDate; IntervaloMes: integer = 2): tdate;
function ProximoMes(data: TDate): tdate;

implementation

uses TPOCST, ComObj, idHTTP;

function primeirodia(dias: integer; data: tdate): tdate;
var
  dia: Tdate;
  Di, Mes, Ano: Word;
  Sano: string;
begin

  DecodeDate(Data, Ano, Mes, Di);
  sano := inttostr(ano);
  dia := incday(data, 14);
  if dia = strtodate('15/11/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('21/04/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('25/12/' + sano) then
    dia := incday(dia, 1);

  if DayOfTheWeek(dia) = 7 then
    dia := incday(dia, 1);
  if DayOfTheWeek(dia) = 6 then
    dia := incday(dia, 2);
  result := dia;
end;


function proximomes(data: tdate): tdate;
var
  inicial: tdate;
  x: integer;
  Di, Mes, Ano: Word;
  Sano: string;
begin
  DecodeDate(Data, Ano, Mes, Di);
  if mes = 12 then
  begin
    mes := 1;
    inc(ano);
  end
  else
    inc(mes);
  inicial := encodeDate(Ano, Mes, 1);
  inicial := incmonth(inicial, 5);
  inicial := primeirodia(15, inicial);
  result := inicial;
end;


function PrimeiroMes(data: TDate; IntervaloMes: integer = 2): tdate;
var
  inicial: tdate;
  x: integer;
  Di, Mes, Ano: Word;
  Sano: string;
begin
  DecodeDate(Data, Ano, Mes, Di);
 {
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/03/2009 - PRAZO PARA ENTREGA 26/06/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/04/2009 - PRAZO PARA ENTREGA 15/07/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/05/2009 - PRAZO PARA ENTREGA 17/08/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/06/2009 - PRAZO PARA ENTREGA 15/09/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/07/2009 - PRAZO PARA ENTREGA 15/10/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/08/2009 - PRAZO PARA ENTREGA 16/11/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/09/2009 - PRAZO PARA ENTREGA 15/12/2009
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/10/2009 - PRAZO PARA ENTREGA 15/01/2010
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/11/2009 - PRAZO PARA ENTREGA 15/02/2010
  ESTUDANTES QUE ENTRARAM NA NOVA LEI ATÉ 31/12/2009 - PRAZO PARA ENTREGA 15/03/2010
 }

  if data <= STRTODATE('31/03/2009') then
    result := strtodate('26/06/2009')
  else
  begin
    if mes = 12 then
    begin
      mes := 1;
      inc(ano);
    end
    else
      inc(mes);
    inicial := encodeDate(Ano, Mes, 1);
    //inicial := incmonth(inicial, 2);
    inicial := incmonth(inicial, IntervaloMes); // by R.e.a.L - 10/03/2013
    inicial := primeirodia(15, inicial);
    result := inicial;
  end;
end;

function TotalMeses(inicio, final: tdate): integer;
var
  meses: integer;
  data: tdate;
begin
  data := inicio;
  meses := 0;
  while data < final + 1 do
  begin
    data := IncMonth(data, 1);
    if data <= final + 1 then
      inc(meses);
  end;
  totalmeses := meses;
end;

function IsNumeric(aValue: string): Boolean;
var
  i: Integer;
begin
  if (aValue = '') then
  begin
    Result := False;
    Exit;
  end;

  Result := True;

  for i := 1 to Length(aValue) do
    if not (aValue[i] in ['0'..'9', '.', ',']) then
    begin
      Result := False;
      Break;
    end;
end;


function iif(Condicao: Boolean; retornaTrue, retornaFalse: Variant): Variant;
begin
  if Condicao then
    Result := retornaTrue
  else
    Result := retornaFalse;
end;



function StripDouble(pString: string): string;
begin
  while pos('  ', pString) > 0 do Delete(pString, pos('  ', pString), 1);
  Result := pString;
end;

function ExtCem(pCem: string): string;
const
  aCent: array[1..9] of string =
  ('CENTO', 'DUZENTOS', 'TREZENTOS', 'QUATROCENTOS', 'QUINHENTOS',
    'SEISCENTOS', 'SETECENTOS', 'OITOCENTOS', 'NOVECENTOS');
  aVint: array[1..9] of string = ('ONZE', 'DOZE', 'TREZE', 'QUATORZE',
    'QUINZE', 'DEZESSEIS', 'DEZESSETE', 'DEZOITO', 'DEZENOVE');
  aDez: array[1..9] of string = ('DEZ', 'VINTE', 'TRINTA', 'QUARENTA',
    'CINQUENTA', 'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA');
  aUnit: array[1..9] of string = ('UM', 'DOIS', 'TREIS', 'QUATRO',
    'CINCO', 'SEIS', 'SETE', 'OITO', 'NOVE');
var
  aVal: array[1..3] of integer;
  text: string;
begin
  text := '';
  aVal[1] := StrToInt(Copy(pCem, 1, 1));
  aVal[2] := StrToInt(Copy(pCem, 2, 1));
  aVal[3] := StrToInt(Copy(pCem, 3, 1));
  if StrToInt(pCem) > 0 then
  begin
    if StrToInt(pCem) = 100 then
      text := 'CEM'
    else begin
      if aVal[1] > 0 then
        text := aCent[aVal[1]] + iif((aVal[2] + aVal[3]) > 0, ' E ', ' ');
      if (aVal[2] = 1) and (aVal[3] > 0) then
        text := text + ' ' + aVint[Aval[3]]
      else begin
        if aVal[2] > 0 then
          text := text + ' ' + aDez[aVal[2]] + iif(aVal[3] > 0, ' E ', ' ');
        text := text + iif(aVal[3] > 0, ' ' + aUnit[aVal[3]], ' ');
      end;
    end;
  end;
  text := text + ' ';
  Result := text;
end;

function Extenso(pValor: Extended): string;
const
  aCifra: array[1..6, 1..2] of string = (('TRILHÃO,', 'TRILHOES,'),
    ('BILHAO,', 'BILHÕES,'),
    ('MILHAO,', 'MILHÕES,'),
    ('MIL,', 'MIL,'),
    ('    ', '   '),
    ('CENTAVO', 'CENTAVOS'));
var
  tStr, tExtenso, tSubs: string;
  tX, tCentavos: Integer;
  function StrZero(Numero: Real; qtdezeros, Decimais: integer): string;
  var tamanho, y: integer;
    xdeci, xsig: string;
  begin
    Str(Numero: qtdezeros: Decimais, xdeci);
    xdeci := trimright(trimleft(xdeci));
    tamanho := length(xdeci);
    xsig := '';
    for y := 1 to (qtdezeros - tamanho) do
      xsig := xsig + '0';
    Result := xsig + xdeci;
  end;

begin
  tSubs := ' ';
  tExtenso := ' ';
  tStr := StrZero(pValor, 18, 2);
  tCentavos := StrToInt(Copy(tStr, 17, 2));
  if pValor > 0 then
  begin
    if tCentavos > 0 then
      tExtenso := ExtCem(StrZero(tCentavos, 3, 0)) + aCifra[6, Trunc(iif(tCentavos = 1, 1, 2))];
    if trunc(pValor) > 0 then
      tExtenso := iif(trunc(pValor) = 1, 'REAL', ' REAIS') + iif(tCentavos > 0, ' E   ', '') + tExtenso;
    for tX := 5 downto 1 do
    begin
      tSubs := Copy(tStr, (tX * 3) - 2, 3);
      if StrToInt(tSubs) > 0 then
        tExtenso := ExtCem(tSubs) + aCifra[tX, Trunc(iif(StrToInt(tSubs) = 1, 1, 2))] + '   ' + tExtenso;
    end;
  end;
  Result := StripDouble(tExtenso);
end;

function Extenso2(pValor: Extended): string;
const
  aCifra: array[1..6, 1..2] of string = (('TRILHÃO,', 'TRILHOES,'),
    ('BILHAO,', 'BILHÕES,'),
    ('MILHAO,', 'MILHÕES,'),
    ('MIL,', 'MIL,'),
    ('    ', '   '),
    ('CENTAVO', 'CENTAVOS'));
var
  tStr, tExtenso, tSubs: string;
  tX, tCentavos: Integer;
  function StrZero(Numero: Real; qtdezeros, Decimais: integer): string;
  var tamanho, y: integer;
    xdeci, xsig: string;
  begin
    Str(Numero: qtdezeros: Decimais, xdeci);
    xdeci := trimright(trimleft(xdeci));
    tamanho := length(xdeci);
    xsig := '';
    for y := 1 to (qtdezeros - tamanho) do
      xsig := xsig + '0';
    Result := xsig + xdeci;
  end;

begin
  tSubs := ' ';
  tExtenso := ' ';
  tStr := StrZero(pValor, 18, 2);
  tCentavos := StrToInt(Copy(tStr, 17, 2));
  if pValor > 0 then
  begin
    if tCentavos > 0 then
      tExtenso := ExtCem(StrZero(tCentavos, 3, 0)) + aCifra[6, Trunc(iif(tCentavos = 1, 1, 2))];
    if trunc(pValor) > 0 then
      tExtenso := iif(trunc(pValor) = 1, 'REAL', ' REAIS') + iif(tCentavos > 0, ' E   ', '') + tExtenso;
    for tX := 5 downto 1 do
    begin
      tSubs := Copy(tStr, (tX * 3) - 2, 3);
      if StrToInt(tSubs) > 0 then
        tExtenso := ExtCem(tSubs) + aCifra[tX, Trunc(iif(StrToInt(tSubs) = 1, 1, 2))] + '   ' + tExtenso;
    end;
  end;

  Result :=   AnsiLowerCase(StripDouble(tExtenso));
end;




function Cincodias(data: TDate): tdate;
var
  dia: Tdate;
  Di, Mes, Ano: Word;
  Sano: string;
begin
  DecodeDate(Data, Ano, Mes, Di);
  sano := inttostr(ano);
  dia := incday(data, -5);
  if dia = strtodate('10/04/2009') then
    dia := incday(dia, -1);
  if dia = strtodate('01/01/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('08/09/' + sano) then
    dia := incday(dia, -2);
  if dia = strtodate('07/09/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('15/11/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('02/11/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('12/10/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('01/05/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('21/04/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('25/12/' + sano) then
    dia := incday(dia, -1);

  if DayOfTheWeek(dia) = 7 then
    dia := incday(dia, -2);
  if DayOfTheWeek(dia) = 6 then
    dia := incday(dia, -1);
  result := dia;
end;

function DiasUteis(dias: integer; data: TDate): tdate;
var
  dia: Tdate;
  Di, Mes, Ano: Word;
  Sano: string;
  tempo, X: integer;
begin
  DecodeDate(Data, Ano, Mes, Di);
  sano := inttostr(ano);
  dia := data;
  x := 0;
  tempo := 1;
  while tempo < dias do
  begin
    if (DayOfTheWeek(dia) = 7) or
      (DayOfTheWeek(dia) = 6) or
      (dia = strtodate('10/04/2009')) or
      (dia = strtodate('01/01/' + sano)) or
      (dia = strtodate('08/09/' + sano)) or
      (dia = strtodate('07/09/' + sano)) or
      (dia = strtodate('12/10/' + sano)) or
      (dia = strtodate('15/11/' + sano)) or
      (dia = strtodate('02/11/' + sano)) or
      (dia = strtodate('21/04/' + sano)) or
      (dia = strtodate('25/12/' + sano)) then
      tempo := tempo
    else
      inc(tempo);
    dia := incday(dia, -1);
    inc(X);
  end;


  dia := incday(data, -x);
  if dia = strtodate('10/04/2009') then
    dia := incday(dia, -1);
  if dia = strtodate('01/01/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('08/09/' + sano) then
    dia := incday(dia, -2);
  if dia = strtodate('07/09/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('15/11/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('02/11/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('12/10/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('01/05/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('21/04/' + sano) then
    dia := incday(dia, -1);
  if dia = strtodate('25/12/' + sano) then
    dia := incday(dia, -1);

  if DayOfTheWeek(dia) = 7 then
    dia := incday(dia, -2);
  if DayOfTheWeek(dia) = 6 then
    dia := incday(dia, -1);
  result := dia;

end;


function DiasUteisM(dias: integer; data: TDate): tdate;
var
  dia: Tdate;
  Di, Mes, Ano: Word;
  Sano: string;
  tempo, X: integer;
begin
  DecodeDate(Data, Ano, Mes, Di);
  sano := inttostr(ano);
  dia := data;
  x := 0;
  tempo := 1;
  while tempo < dias do
  begin
    if (DayOfTheWeek(dia) = 7) or
      (DayOfTheWeek(dia) = 6) or
      (dia = strtodate('10/04/2009')) or
      (dia = strtodate('01/01/' + sano)) or
      (dia = strtodate('08/09/' + sano)) or
      (dia = strtodate('07/09/' + sano)) or
      (dia = strtodate('12/10/' + sano)) or
      (dia = strtodate('15/11/' + sano)) or
      (dia = strtodate('02/11/' + sano)) or
      (dia = strtodate('21/04/' + sano)) or
      (dia = strtodate('25/12/' + sano)) then
      tempo := tempo
    else
      inc(tempo);
    dia := incday(dia, 1);
    inc(X);
  end;

  dia := incday(data, x);
  if dia = strtodate('10/04/2009') then
    dia := incday(dia, 1);
  if dia = strtodate('01/01/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('08/09/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('07/09/' + sano) then
    dia := incday(dia, 2);
  if dia = strtodate('15/11/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('02/11/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('12/10/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('01/05/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('21/04/' + sano) then
    dia := incday(dia, 1);
  if dia = strtodate('25/12/' + sano) then
    dia := incday(dia, 1);

  if DayOfTheWeek(dia) = 7 then
    dia := incday(dia, 1);
  if DayOfTheWeek(dia) = 6 then
    dia := incday(dia, 2);

  result := dia;

end;





function Nchar(palavra, pedaco: string): integer;
var
  linha: string;
  x: integer;
begin
  linha := palavra;
  x := 0;
  while pos(pedaco, linha) > 0 do
  begin
    inc(x);
    linha := copy(linha, pos(pedaco, linha) + length(pedaco), length(linha));
  end;
  result := x;
end;






function StrIsDate(const S: string): boolean;
begin
  try
    StrToDate(S);
    Result := true;
  except
    Result := false;
  end;
end;



procedure ExportarDadosExcel(Query: TQuery; campos: tlistbox; quebra: string; titulo, subtitulo: string);
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



          if nchar(Query.Fields[i].asstring, '/') = 2 then
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := ' ' + Query.Fields[i].asstring
          else
            Excel.WorkBooks[1].Sheets[1].Cells[Linha, coluna + 1] := Query.Fields[i].Value;

        //    Excel.WorkBooks[1].Sheets[1].cells[Linha, coluna + 1].NumberFormat := 'dd/mm/aaaa';
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

procedure BuscaCep(cep: string; var Logradouro, Bairro, Cidade,
  Uf: string);
var
  arq: textfile;
  linha: string;
  function p(linha: string; posicao: integer): string;
  var
    retorno, palavra: string;
    x: integer;
  begin
    palavra := linha + ';';
    x := 0;
    while X < posicao do
    begin
      retorno := copy(palavra, 1, pos(';', palavra) - 1);
      palavra := copy(palavra, pos(';', palavra) + 1, length(palavra));
      inc(x);
    end;
    result := retorno;
  end;
begin
  insert('-', cep, 6);

  if fileexists(ExtractFilePath(Application.ExeName)+'cep.txt') then
    assignfile(arq, ExtractFilePath(Application.ExeName)+'cep.txt')
  else if fileexists('c:\cep.txt') then
    assignfile(arq, 'c:\cep.txt')
  else if fileexists('\\cetefe-server\cetefe\SISTEMA CETEFE\cep.txt') then
    assignfile(arq, '\\cetefe-server\cetefe\SISTEMA CETEFE\cep.txt')
  else
    exit;
  Reset(Arq);
  while not eof(arq) do
  begin
    readln(arq, linha);
    if copy(linha, 1, pos(';', linha) - 1) = cep then
    begin
      cep := p(linha, 1);
      logradouro := p(linha, 2);
      bairro := p(linha, 3);
      cidade := p(linha, 4);
      uf := p(linha, 5);
      break;
    end;
  end;
  CloseFile(arq);
end;



{procedure BuscaCep(cep: string; var Logradouro, Bairro, Cidade,
  Uf: string);
  function info3(p1, p2, texto: string): string;
  var
    linha, palavra: string;
    i, proximo, chave: integer;
    x, y, control: integer;
  begin
    palavra := texto;
    if pos(p1, palavra) = 0 then
    begin
      result := '';
      exit;
    end;
    palavra := copy(palavra, pos(p1, palavra), length(palavra));
    x := pos(p1, palavra) + length(p1);
    y := pos(p2, palavra);
    linha := trim(copy(palavra, x, y - x));
    result := linha;
  end;

var
  loHTTP: TidHTTP;
  resultado: string;
  lnCont: integer;
begin
  try
    loHTTP := TidHTTP.Create(Application);
    try

      resultado := loHTTP.Get('http://republicavirtual.com.br/web_cep.php?cep=' + CEP + '&formato=1');

      if info3('<resultado>', '</resultado>', resultado) = '0' then
      begin
        showmessage('Cep Não encontrado');
        exit;
      end;
      logradouro := info3('<tipo_logradouro>', '</tipo_logradouro>', resultado) + ' ' + info3('<logradouro>', '</logradouro>', resultado);
      cidade := info3('<cidade>', '</cidade>', resultado);
      bairro := info3('<bairro>', '</bairro>', resultado);
      uf := info3('<uf>', '</uf>', resultado)
    finally
      loHTTP.Free;
    end;
  except
  end;
end;

 }


function Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
    Numero1,
    Numero2,
    Numero3: Double;
begin
  Valor1 := Exp(Ln(10) * (Dec + 1));
  Numero1 := Int(Valor * Valor1);
  Numero2 := (Numero1 / 10);
  Numero3 := Round(Numero2);
  Result := (Numero3 / (Exp(Ln(10) * Dec)));
end;


function strzero(numero, zeros: integer): string;
var
  x, y: integer;
  palavra: string;
begin
  palavra := inttostr(numero);
  while length(palavra) < zeros do
    palavra := '0' + palavra;
  result := palavra;
end;



function ValidateCpf(Cpf: string): boolean;
var
  linDigito1: Integer;
  linDigito2: Integer;
  linPosicao: Integer;
begin
  if Length(Cpf) = 11 then
  begin
    linPosicao := 1;
    linDigito1 := 0;
    while linPosicao <= 9 do
    begin
      linDigito1 := linDigito1 + StrToInt(Cpf[linPosicao]) * (11 - linPosicao);
      linPosicao := linPosicao + 1;
    end;
    linDigito1 := (11 - linDigito1 mod 11);
    if linDigito1 >= 10 then
      linDigito1 := 0;
    linPosicao := 1;
    linDigito2 := 0;
    while linPosicao <= 10 do
    begin
      linDigito2 := linDigito2 + StrToInt(Cpf[linPosicao]) * (12 - linPosicao);
      linPosicao := linPosicao + 1;
    end;
    linDigito2 := (11 - linDigito2 mod 11);
    if linDigito2 >= 10 then
      linDigito2 := 0;
    if (StrToInt(Cpf[10]) <> linDigito1) or (StrToInt(Cpf[11]) <> linDigito2) then
      Result := False
    else
      if (Cpf = '11111111111') or (Cpf = '22222222222') or (Cpf = '33333333333') or
        (Cpf = '44444444444') or (Cpf = '55555555555') or (Cpf = '66666666666') or
        (Cpf = '77777777777') or (Cpf = '88888888888') or (Cpf = '99999999999') or
        (Cpf = '00000000000') then
        Result := False
      else
        Result := True;
  end
  else
    Result := False;
end;




function validaData(data: string): boolean;
var dia, mes, ano, diasdoMes: integer;
begin
  result := false;
  diasdoMes := 0;

  try
    dia := StrToInt(Copy(data, 1, 2)); // Função copy retorna partes da string (string, inicio, posições)
    mes := StrToInt(Copy(data, 4, 2));
    ano := StrToInt(Copy(data, 7, 4));

    case mes of
      1, 3, 5, 7, 8, 10, 12: diasdoMes := 31;
      4, 6, 9, 11: diasdoMes := 30;
      2: if ano mod 4 = 0 then
          diasdoMes := 29
        else
          diasdoMes := 28;
    end;

    if (ano >= MENOR_ANO) and (ano <= MAIOR_ANO) then
      if (dia <= diasdoMes) and (mes <= 12) and (dia <> 0) and (mes <> 0) then
        result := true;
  except

  end;
  if not result then
    MSGERRO('Data inválida (Formato DD/MM/AAAA). Informe nova data ou apague!');
end;

function sonumero(linha: string): string;
var
  palavra: string;
  x: integer;
begin
  palavra := '';
  for x := 1 to length(linha) do
    if pos(linha[x], '0123456789') > 0 then
      palavra := palavra + linha[x];
  result := palavra;
end;


function poemascara(palavra: string): string;
var
  Linha: string;
begin
  linha := sonumero(palavra);
  if length(linha) = 14 then
    linha := copy(linha, 1, 2) + '.' + copy(linha, 3, 3) + '.' + copy(linha, 6, 3) + '/' + copy(linha, 9, 4) + '-' + copy(linha, 13, 2);

  if length(linha) = 11 then
    linha := copy(linha, 1, 3) + '.' + copy(linha, 4, 3) + '.' + copy(linha, 7, 3) + '-' + copy(linha, 10, 2);
  result := linha;
end;







procedure caracterMaiusculo(var tecla: char);
begin
  case tecla of
    'A', 'Á', 'Ã', 'À', 'Â', 'Ä', 'a', 'á', 'ã', 'à', 'â', 'ä': tecla := 'A';
    'E', 'É', 'Ê', 'È', 'Ë', 'e', 'é', 'ê', 'è', 'ë': tecla := 'E';
    'I', 'Í', 'Ì', 'Î', 'Ï', 'i', 'í', 'î', 'ì', 'ï': tecla := 'I';
    'O', 'Ó', 'Ò', 'Ô', 'Õ', 'Ö', 'o', 'ó', 'ò', 'ô', 'õ', 'ö': tecla := 'O';
    'U', 'Ú', 'Ù', 'Û', 'Ü', 'u', 'ú', 'û', 'ù', 'ü': tecla := 'U';
    'N', 'Ñ', 'ñ', 'n': tecla := 'N';
    'C', 'Ç', 'c', 'ç': tecla := 'C';
  else
    tecla := upCase(tecla); // converte tecla para maiúscula
  end;
end;

procedure caracterMinusculo(var tecla: char);
begin
  case tecla of
    'A', 'Á', 'Ã', 'À', 'Â', 'Ä', 'a', 'á', 'ã', 'à', 'â', 'ä': tecla := 'a';
    'E', 'É', 'Ê', 'È', 'Ë', 'e', 'é', 'ê', 'è', 'ë': tecla := 'e';
    'I', 'Í', 'Ì', 'Î', 'Ï', 'i', 'í', 'î', 'ì', 'ï': tecla := 'i';
    'O', 'Ó', 'Ò', 'Ô', 'Õ', 'Ö', 'o', 'ó', 'ò', 'ô', 'õ', 'ö': tecla := 'o';
    'U', 'Ú', 'Ù', 'Û', 'Ü', 'u', 'ú', 'û', 'ù', 'ü': tecla := 'u';
    'N', 'Ñ', 'ñ', 'n': tecla := 'N';
    'C', 'Ç', 'c', 'ç': tecla := 'C';
  end;
end;


procedure MSGERRO(stringErro: string);
begin
  Application.MessageBox(PChar(stringErro), 'Erro no sistema', MB_OK + MB_ICONERROR);
  // MB_ICONERROR - Ícone X
  // Pchar - tipo diferente de string (do Delphi) - colocar PChar(string)
end;

procedure MSGAVISO(stringErro: string);
begin
  Application.MessageBox(PChar(stringErro), 'Atenção', MB_OK + MB_ICONWARNING);
  // MB_ICONWARNING - Ícone Exclamação
  // Pchar - tipo diferente de string (do Delphi) - colocar PChar(string)
end;

function MSGSIMNAO(stringErro: string): boolean;
begin
  if Application.MessageBox(PChar(stringErro), 'Confirmação', MB_YESNO + MB_ICONQUESTION) = IDYES then
    result := true
  else
    result := false;
  // MB_ICONQUESTION - Ícone Interrogação
  // Pchar - tipo diferente de string (do Delphi) - colocar PChar(string)
end;

function verificaNumero(var num: char): boolean;
begin
  Result := true;
  if not (num in ['0'..'9', #8]) then
  begin
    num := #0;
    Result := false;
  end;
end;


function validaHora(numHora: string): Boolean;
var hora, min: integer;
begin
  result := false;
  try
    hora := StrToInt(Copy(numHora, 1, 2)); // Função copy retorna partes da string (string, inicio, posições)
    min := StrToInt(Copy(numHora, 4, 2));

    if ((hora in [0..23]) and (min in [0..59])) then
      result := true;
  except
  end;
  if not result then
    MSGERRO('Hora inválida. Informe nova hora ou apague!');

end;

function ConverteHoraNum(horaNum: string): Real;
var hora, min: Integer;
begin
  hora := StrtoInt(Copy(horaNum, 1, 2));
  min := StrtoInt(Copy(horaNum, 4, 2));

  result := hora + min / 60;
end;


function verificaPorcentagem(porcent: string): Boolean;
begin
  result := true;
  if not (StrToInt(porcent) in [0..100]) then
    result := false;
end;

function ValidaCgcCpf(Value: string): boolean;
var
  msLocalCPFCGC: string;
  mbLocalResult: boolean;
  mnDigito1, mnDigito2: integer;
  mnPos, mnSoma: integer;
  mbIsCGC: boolean;
begin
  msLocalCPFCGC := '';
  mbLocalResult := False;
  mbIsCgc := false;

  try
    {analisa CGC no formato 99999999999900}
    if Length(Value) = 14 then
    begin
      msLocalCPFCGC := value;
      mbLocalResult := True;
      mbIsCgc := true;
    end;

    {analisa CPF no formato 99999999900}
    if Length(Value) = 11 then
    begin
      msLocalCPFCGC := value;
      mbLocalResult := True;
      mbIsCgc := false;
    end;

    {comeca a verificacao do digito para CPF}
    if mbLocalResult and not mbIsCgc then
    try
      {1° digito}
      mnSoma := 0;
      for mnPos := 1 to 9 do Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, 10 - mnPos, 1)) * (mnPos + 1));
      mnDigito1 := 11 - (mnSoma mod 11);
      if mnDigito1 > 9 then
        mnDigito1 := 0;

      {2° digito}
      mnSoma := 0;
      for mnPos := 1 to 10 do Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, 11 - mnPos, 1)) * (mnPos + 1));
      mnDigito2 := 11 - (mnSoma mod 11);
      if mnDigito2 > 9 then
        mnDigito2 := 0;

      {Checa os dois dígitos}
      if (mnDigito1 = StrToInt(Copy(msLocalCPFCGC, 10, 1))) and
        (mnDigito2 = StrToInt(Copy(msLocalCPFCGC, 11, 1))) then
        mbLocalResult := True
      else
        mbLocalResult := False;
    except
      mbLocalResult := False;
    end;

    {comeca a verificacao do digito para CGC}
    if mbLocalResult and mbIsCGC then
    try
      {1° digito}
      mnSoma := 0;
      for mnPos := 1 to 12 do
      begin
        if mnPos < 5 then
          Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, mnPos, 1)) * (6 - mnPos))
        else
          Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, mnPos, 1)) * (14 - mnPos))
      end;
      mnDigito1 := 11 - (mnSoma mod 11);
      if mnDigito1 > 9 then mnDigito1 := 0;

      {2° digito}
      mnSoma := 0;
      for mnPos := 1 to 13 do
      begin
        if mnPos < 6 then
          Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, mnPos, 1)) * (7 - mnPos))
        else
          Inc(mnSoma, StrToInt(Copy(msLocalCPFCGC, mnPos, 1)) * (15 - mnPos))
      end;
      mnDigito2 := 11 - (mnSoma mod 11);
      if mnDigito2 > 9 then mnDigito2 := 0;

      {Checa os dois dígitos}
      if (mnDigito1 = StrToInt(Copy(msLocalCPFCGC, 13, 1))) and
        (mnDigito2 = StrToInt(Copy(msLocalCPFCGC, 14, 1))) then
        mbLocalResult := True
      else
        mbLocalResult := False;
    except
      mbLocalResult := False;
    end;
  except
    mbLocalResult := False;
  end;
  Result := mbLocalResult;
end;

function PreencheZerosEsquerda(valor: string; numDigitos: Integer): string;
var Zeros: string;
  i: Integer;
begin
  Zeros := '';
  for i := 1 to numDigitos do
    Zeros := Zeros + '0';

  Result := Copy(Zeros + valor, length(valor) + 1, numDigitos);
end;

// Função localiza - verifica se tem o registro na tabela

function Localiza(tabela: TTable; valorChave: array of const): Boolean;
begin
  result := tabela.FindKey(valorChave);
end;

function getDescricao(tabela: TTable; valorChave: array of const; nomeCampo: string): string;
begin
  result := '';
  if Tabela.FindKey(valorChave) then
    result := Tabela.FieldByName(nomeCampo).AsString;
end;

function ValidaAno(ano: string): Boolean;
var valorAno: Integer;
begin
  Result := False;
  try
    valorAno := StrToInt(ano);

    if (valorAno >= MENOR_ANO) and (valorAno <= MAIOR_ANO) then
      Result := True;
  except
  end;

  if not Result then
    MSGERRO('Ano inválido. Não esqueça que o ano deve estar no formato AAAA!');
end;

function ValidaMes(mes: string): Boolean;
var valorMes: Integer;
begin
  Result := False;
  try
    valorMes := StrToInt(mes);

    if (valorMes >= 1) and (valorMes <= 12) then
      Result := True;
  except
  end;

  if not Result then
    MSGERRO('Mês inválido. Não esqueça que o mês deve estar no formato MM!');
end;

function RetornaDiasMes(mes, ano: Integer): Integer;
begin
  Result := -1;
  case mes of
    1, 3, 5, 7, 8, 10, 12: Result := 31;
    4, 6, 9, 11: Result := 30;
    2:
      if ano mod 4 = 0 then
        Result := 29
      else
        Result := 28;
  end;
end;

// BOLHA

procedure Bolha(n_elementos: Integer; var vet: array of Integer);
var
  comp: Integer;
  bolha, lsup, j: Integer;
begin
  lsup := n_elementos - 1; //lsup = limite superior
  while (lsup > 0) do
  begin
    bolha := 0;
    for j := 0 to lsup - 1 do
    begin
      //TESTE P/ TROCA
      if (vet[j] > vet[j + 1]) then
      begin
        comp := vet[j];
        vet[j] := vet[j + 1];
        vet[j + 1] := comp;
        bolha := j;
      end;
    end;
    lsup := bolha; //£ltima posi‡Æo que foi inserido o elemento em questÆo
  end;
end;

// BOLHA

procedure BolhaString(n_elementos: Integer; var vet: array of string);
var
  comp: string;
  bolha, lsup, j: Integer;
begin
  lsup := n_elementos - 1; //lsup = limite superior
  while (lsup > 0) do
  begin
    bolha := 0;
    for j := 0 to lsup - 1 do
    begin
   //TESTE P/ TROCA
      if StrComp(PChar(vet[j]), PChar(vet[j + 1])) > 0 then
      begin
        comp := vet[j];
        vet[j] := vet[j + 1];
        vet[j + 1] := comp;
        bolha := j;
      end;
    end;
    lsup := bolha; //£ltima posi‡Æo que foi inserido o elemento em questÆo
  end;
end;

// Arredonda o valor para cima transformando-o em um número inteiro

function ArredondaCima(valor: Double): Integer;
begin
  if Valor - Trunc(Valor) = 0 then
    Result := Trunc(Valor)
  else
    Result := Trunc(Valor) + 1;
end;

// Tira os segundos da hora

function PegaHoraSistema: string;
var Hora: string;
begin
  Hora := TimeToStr(Time);
  Result := Copy(Hora, 1, 5);
end;


procedure RetornaTempoMes(asDataNasc: string;
  var asIdade: string);
var
  tempo, meses, anos: integer;
  Cano, Cmeses: string;
begin
  tempo := MonthsBetween(strtodate(asdatanasc), date);

  meses := tempo;

  if meses > 0 then
  begin
    Cmeses := inttostr(meses);
    if meses = 1 then
      Cmeses := Cmeses + ' mes'
    else
      Cmeses := Cmeses + ' meses';
  end;
  asidade := cmeses;

end;


procedure RetornaTempo(asDataNasc: string;
  var asIdade: string);
var
  tempo, meses, anos: integer;
  Cano, Cmeses: string;
begin
  tempo := MonthsBetween(strtodate(asdatanasc), date);
  anos := tempo div 12;
  meses := tempo mod 12;
  Cano := '';
  if anos > 0 then
  begin
    Cano := inttostr(anos);
    if anos = 1 then
      Cano := Cano + ' ano'
    else
      Cano := Cano + ' anos';
  end;
  if meses > 0 then
  begin
    Cmeses := inttostr(meses);
    if meses = 1 then
      Cmeses := Cmeses + ' mes'
    else
      Cmeses := Cmeses + ' meses';
  end;
  asidade := '';
  if cano <> '' then
  begin
    if cmeses <> '' then
      asidade := Cano + ' e ' + cmeses
    else
      asidade := Cano;
  end
  else
    if cmeses <> '' then
      asidade := cmeses;
end;




// Retorna Idade baseada em uma data

procedure RetornaIdade(asDataNasc: string;
  var asIdade: string; var asUnidIdade: string);
var
  nDia, nMes, nAno: word;
  nDiasNascimento: LongInt;
  nDiasAtual: LongInt;
  tempo, anos, meses, nPos: Integer;
  cano, cmeses: string;
begin
  asunididade := '';


  tempo := MonthsBetween(strtodate(asdatanasc), date);
  anos := tempo div 12;
  meses := tempo mod 12;
  Cano := '';


  if anos > 0 then
  begin
    Cano := inttostr(anos);
    if anos = 1 then
      asUnidIdade := ' ano'
    else
      asUnidIdade := ' anos';
  end;
  {if (meses > 0) and (anos < 1) then
  begin
    Cmeses := inttostr(meses);
    if meses = 1 then
      asUnidIdade := asUnidIdade + '/mes'
    else
      asUnidIdade := asUnidIdade + '/meses';
  end;}

  if (meses > 0) and (anos = 0) then
  begin
    Cmeses := inttostr(meses);
    if meses = 1 then
      asUnidIdade := asUnidIdade + 'mes'
    else
      asUnidIdade := asUnidIdade + 'meses';
  end;
  asidade := '';
  if cano <> '' then
  begin
    if cmeses <> '' then
      asidade := Cano + ' e ' + cmeses
    else
      asidade := Cano;
  end
  else
    if cmeses <> '' then
      asidade := cmeses;

{  DecodeDate(StrToDate(asDataNasc), nAno, nMes, nDia);
  nDiasNascimento := 0;

  for nPos := 1 to nAno do
    if AnoBissexto(nPos) then
      inc(nDiasNascimento, 366)
    else
      inc(nDiasNascimento, 365);

  for nPos := 1 to nMes do
    inc(nDiasNascimento, DiasDoMes(nPos));

  inc(nDiasNascimento, nDia);

  DecodeDate(Date, nAno, nMes, nDia);
  nDiasAtual := 0;

  for nPos := 1 to nAno do
    if AnoBissexto(nPos) then
      inc(nDiasAtual, 366)
    else
      inc(nDiasAtual, 365);

  for nPos := 1 to nMes do
    inc(nDiasAtual, DiasDoMes(nPos));

  inc(nDiasAtual, nDia);

  nDiasNascimento := nDiasAtual - nDiasNascimento;

  if nDiasNascimento = 0 then
  begin
    nAno := 0;
    nMes := 0;
    nDia := 0;
  end
  else
  begin
    DecodeDate(nDiasNascimento + 1, nAno, nMes, nDia);
     //retira o erro gerado no calculo
    dec(nAno, 1900);
    dec(nMes);
  end;
     //retorna os valores conforme comentarios no cabeçalho
  if nAno >= 1 then
  begin
    asIdade := IntToStr(nAno);
    if nAno = 1 then
      asUnidIdade := 'ano'
    else
      asUnidIdade := 'anos';
  end
  else if (nAno < 1) and (nMes >= 1) then
  begin
    asIdade := IntToStr(nMes);
    if nMes = 1 then
      asUnidIdade := 'mes'
    else
      asUnidIdade := 'meses';
  end;

 }
end;

function AnoBissexto(anAno: integer): boolean;
begin
  Result := (anAno mod 4 = 0) and ((anAno mod 100 <> 0) or (anAno mod 400 = 0));
end;

function DiasDoMes(anMes: integer): integer;
const
  DiasPorMes: array[1..12] of Integer =
  (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DiasPorMes[anMes];
end;

function NumeroExtenso(NumeroInteiro: integer; tipo_numero: integer): string;
var numeroCentena, numeroMilhar: integer;
  numeroCentenaString, numeroMilharString, valorCentena, ValorMilhar, Valornumero: string;
begin
  numeroCentena := numeroInteiro mod 1000;
   // acrescenta zeros à centena
  numeroCentenaString := Copy('000' + inttostr(numeroCentena), Length(inttostr(numeroCentena)) + 1, 3);
  numeroMilhar := 0;

  if numeroInteiro > 999 then
  begin
    numeroMilhar := numeroInteiro - numeroCentena;
    numeroMilhar := trunc(numeroMilhar / 1000);
    numeroMilharString := Copy('000' + inttostr(numeroMilhar), Length(inttostr(numeroMilhar)) + 1, 3);
  end;

   // Se for entre 10 e 19...
  if Copy(numeroCentenaString, Length(numeroCentenaString) - 1, 1) = '1' then
    case strtoint(Copy(numeroCentenaString, Length(numeroCentenaString), 1)) of
      0: valorCentena := valorCentena + 'DEZ';
      1: valorCentena := valorCentena + 'ONZE';
      2: valorCentena := valorCentena + 'DOZE';
      3: valorCentena := valorCentena + 'TREZE';
      4: valorCentena := valorCentena + 'QUATORZE';
      5: valorCentena := valorCentena + 'QUINZE';
      6: valorCentena := valorCentena + 'DEZESSEIS';
      7: valorCentena := valorCentena + 'DEZESSETE';
      8: valorCentena := valorCentena + 'DEZOITO';
      9: valorCentena := valorCentena + 'DEZENOVE';
    end
  else
  begin
      // Primeiro número
    case strtoint(Copy(numeroCentenaString, Length(numeroCentenaString), 1)) of
      1: valorCentena := valorCentena + 'UM';
      2: valorCentena := valorCentena + 'DOIS';
      3: valorCentena := valorCentena + 'TRÊS';
      4: valorCentena := valorCentena + 'QUATRO';
      5: valorCentena := valorCentena + 'CINCO';
      6: valorCentena := valorCentena + 'SEIS';
      7: valorCentena := valorCentena + 'SETE';
      8: valorCentena := valorCentena + 'OITO';
      9: valorCentena := valorCentena + 'NOVE';
    end;

    if numeroCentena > 10 then
      // Segundo número
      case strtoint(Copy(numeroCentenaString, Length(numeroCentenaString) - 1, 1)) of
        2: valorCentena := 'VINTE E ' + valorCentena;
        3: valorCentena := 'TRINTA E ' + valorCentena;
        4: valorCentena := 'QUARENTA E ' + valorCentena;
        5: valorCentena := 'CINQÜENTA E ' + valorCentena;
        6: valorCentena := 'SESSENTA E ' + valorCentena;
        7: valorCentena := 'SETENTA E ' + valorCentena;
        8: valorCentena := 'OITENTA E ' + valorCentena;
        9: valorCentena := 'NOVENTA E ' + valorCentena;
      end;
  end;

   // Cem redondo
  if (numeroCentena mod 100 = 0) and (Copy(numeroCentenaString, Length(numeroCentenaString) - 2, 1) = '1') then
    valorCentena := 'CEM';

   // Terceiro dígito
  if numeroCentena > 100 then
  begin
    case strtoint(Copy(numeroCentenaString, Length(numeroCentenaString) - 2, 1)) of
      1: valorCentena := 'CENTO E ' + valorCentena;
      2: valorCentena := 'DUZENTOS E ' + valorCentena;
      3: valorCentena := 'TREZENTOS E ' + valorCentena;
      4: valorCentena := 'QUATROCENTOS E ' + valorCentena;
      5: valorCentena := 'QUINHENTOS E ' + valorCentena;
      6: valorCentena := 'SEISCENTOS E ' + valorCentena;
      7: valorCentena := 'SETECENTOS E ' + valorCentena;
      8: valorCentena := 'OITOCENTOS E ' + valorCentena;
      9: valorCentena := 'NOVECENTOS E ' + valorCentena;
    end;
  end;

  if (copy(valorCentena, Length(valorCentena) - 1, 1) = 'E') and (copy(valorCentena, Length(valorCentena), 1) = ' ') then
  begin
    valorCentena[Length(valorCentena) - 1] := ' ';
    valorCentena := Copy(valorCentena, 1, length(valorCentena) - 3);
  end;

  if numeroInteiro > 999 then
  begin
   // Se for entre 10 e 19...
    if Copy(numeroMilharString, Length(numeroMilharString) - 1, 1) = '1' then
      case strtoint(Copy(numeroMilharString, Length(numeroMilharString), 1)) of
        0: valorMilhar := valorMilhar + 'DEZ';
        1: valorMilhar := valorMilhar + 'ONZE';
        2: valorMilhar := valorMilhar + 'DOZE';
        3: valorMilhar := valorMilhar + 'TREZE';
        4: valorMilhar := valorMilhar + 'QUATORZE';
        5: valorMilhar := valorMilhar + 'QUINZE';
        6: valorMilhar := valorMilhar + 'DEZESSEIS';
        7: valorMilhar := valorMilhar + 'DEZESSETE';
        8: valorMilhar := valorMilhar + 'DEZOITO';
        9: valorMilhar := valorMilhar + 'DEZENOVE';
      end
    else
    begin
      // Primeiro número
      case strtoint(Copy(numeroMilharString, Length(numeroMilharString), 1)) of
        1: valorMilhar := valorMilhar + 'UM';
        2: valorMilhar := valorMilhar + 'DOIS';
        3: valorMilhar := valorMilhar + 'TRÊS';
        4: valorMilhar := valorMilhar + 'QUATRO';
        5: valorMilhar := valorMilhar + 'CINCO';
        6: valorMilhar := valorMilhar + 'SEIS';
        7: valorMilhar := valorMilhar + 'SETE';
        8: valorMilhar := valorMilhar + 'OITO';
        9: valorMilhar := valorMilhar + 'NOVE';
      end;

      if numeroMilhar > 10 then
      // Segundo número
        case strtoint(Copy(numeroMilharString, Length(numeroMilharString) - 1, 1)) of
          2: valorMilhar := 'VINTE E ' + valorMilhar;
          3: valorMilhar := 'TRINTA E ' + valorMilhar;
          4: valorMilhar := 'QUARENTA E ' + valorMilhar;
          5: valorMilhar := 'CINQÜENTA E ' + valorMilhar;
          6: valorMilhar := 'SESSENTA E ' + valorMilhar;
          7: valorMilhar := 'SETENTA E ' + valorMilhar;
          8: valorMilhar := 'OITENTA E ' + valorMilhar;
          9: valorMilhar := 'NOVENTA E ' + valorMilhar;
        end;
    end;

   // Cem redondo
    if (numeroMilhar mod 100 = 0) and (Copy(numeroMilharString, Length(numeroMilharString) - 2, 1) = '1') then
      valorMilhar := 'CEM';

   // Terceiro dígito
    if numeroMilhar > 100 then
    begin
      case strtoint(Copy(numeroMilharString, Length(numeroMilharString) - 2, 1)) of
        1: valorMilhar := 'CENTO E ' + valorMilhar;
        2: valorMilhar := 'DUZENTOS E ' + valorMilhar;
        3: valorMilhar := 'TREZENTOS E ' + valorMilhar;
        4: valorMilhar := 'QUATROCENTOS E ' + valorMilhar;
        5: valorMilhar := 'QUINHENTOS E ' + valorMilhar;
        6: valorMilhar := 'SEISCENTOS E ' + valorMilhar;
        7: valorMilhar := 'SETECENTOS E ' + valorMilhar;
        8: valorMilhar := 'OITOCENTOS E ' + valorMilhar;
        9: valorMilhar := 'NOVECENTOS E ' + valorMilhar;
      end;
    end;

  end;

  if (copy(valorMilhar, Length(valorMilhar) - 1, 1) = 'E') and (copy(valorMilhar, Length(valorMilhar), 1) = ' ') then
  begin
    valorMilhar[Length(valorMilhar) - 1] := ' ';
    valorMilhar := Copy(valorMilhar, 1, length(valorMilhar) - 3);
  end;

  if Numerointeiro > 999 then
  begin
    valorNumero := valorMilhar + ' MIL';
    if numeroCentena > 100 then
      valorNumero := valorNumero + ', ' + valorCentena;
    if (numeroCentena <= 100) and (numeroCentena <> 0) then
      valorNumero := valorNumero + ' E ' + valorCentena;

    if tipo_numero = 1 then
    begin
      if NumeroInteiro = 1 then
        valorNumero := valorNumero + ' REAL'
      else
        ValorNumero := ValorNumero + ' REAIS';
    end;
    if tipo_numero = 2 then
    begin
      if NumeroInteiro = 1 then
        valorNumero := valorNumero + ' CENTAVO'
      else
        ValorNumero := ValorNumero + ' CENTAVOS';
    end;
  end
  else
  begin
    valorNumero := valorCentena;
    if tipo_numero = 1 then
    begin
      if NumeroInteiro = 1 then
        valorNumero := valorNumero + ' REAL'
      else
        ValorNumero := ValorNumero + ' REAIS';
    end;
    if tipo_numero = 2 then
    begin
      if NumeroInteiro = 1 then
        valorNumero := valorNumero + ' CENTAVO'
      else
        ValorNumero := ValorNumero + ' CENTAVOS';
    end;
  end;
  result := valorNumero;
end;


function RetornaValorCerto(valor: string): string;
begin
  case length(valor) of
    4: valor := '           ' + valor;
    5: valor := '         ' + valor;
    6: valor := '       ' + valor;
    7: valor := '     ' + valor;
    8: valor := '   ' + valor;
  end;
  result := valor;
end;

function RetornaMes(Mes: Integer): string;
begin
  Result := '';
  case mes of
    1: Result := 'Janeiro';
    2: Result := 'Fevereiro';
    3: Result := 'Março';
    4: Result := 'Abril';
    5: Result := 'Maio';
    6: Result := 'Junho';
    7: Result := 'Julho';
    8: Result := 'Agosto';
    9: Result := 'Setembro';
    10: Result := 'Outubro';
    11: Result := 'Novembro';
    12: Result := 'Dezembro';
  end;
end;

function RetornaValorMes: Integer;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  Result := Mes;
end;

function RetornaValorAno: Integer;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  Result := Ano;
end;

function dtcompleta(Dias: Boolean; Data: string): string;
var
  dt, d, m, a: string;
  da: array[1..8] of string;
  me: array[1..12] of string;
  dataC: string;
begin
  me[1] := 'Janeiro';
  me[2] := 'Fevereiro';
  me[3] := 'Março';
  me[4] := 'Abril';
  me[5] := 'Maio';
  me[6] := 'Junho';
  me[7] := 'Julho';
  me[8] := 'Agosto';
  me[9] := 'Setembro';
  me[10] := 'Outubro';
  me[11] := 'Novembro';
  me[12] := 'Dezembro';
  dt := Data;
  da[1] := dt[1];
  da[2] := dt[2];
  da[3] := dt[4];
  da[4] := dt[5];
  da[5] := dt[7];
  da[6] := dt[8];
  da[7] := dt[9];
  da[8] := dt[10];
  d := da[1] + da[2];
  m := da[3] + da[4];
  a := da[5] + da[6] + da[7] + da[8];
  if Dias then
    datac := '' + d + ' dia(s) do mês de ' + me[strtoint(m)] + ' de ' + a + ''
  else
    datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';

  Result := DataC;
end;

function PreencheEspacosEsquerda(valor: string; numDigitos: Integer): string;
var Espacos: string;
  i: Integer;
begin
  Espacos := '';
  for i := 1 to numDigitos do
    Espacos := Espacos + ' ';

  Result := Copy(Espacos + valor, Length(Valor) + 1, numDigitos);
end;

function PreencheEspacosDireita(valor: string; numDigitos: Integer): string;
var Espacos: string;
  i: Integer;
begin
  Espacos := '';
  for i := 1 to numDigitos do
    Espacos := Espacos + ' ';

  Result := Copy(valor + Espacos, 1, numDigitos);
end;

function PreencheTracos(numTracos: Integer): string;
var Tracos: string;
  i: Integer;
begin
  Tracos := '';
  for i := 1 to numTracos do
    Tracos := Tracos + '-';

  Result := Tracos;
end;






procedure GerarExcel(Consulta: TQuery; Titulo, SubTitulo: string);
var
  coluna, colExcel, i, linha, colunasvisiveis: integer;
  excel: variant;
  valor: variant;
  letra, letraAntes: string;
const
  xlLeft = -4131;
  xlRight = -4152;
  XlCenter = -4108;
  xlContinuous = 1;
begin
  // cria o excel
  try
    excel := CreateOleObject('Excel.Application');
    excel.Workbooks.add(1);

  except
    Application.MessageBox('Versão do Ms-Excel' +
      'Incompatível', 'Erro', MB_OK + MB_ICONEXCLAMATION);
  end;

  // percorre a planilha
  Consulta.DisableControls;
  Consulta.First;
  try
    // título e sub-título
    Excel.cells[1, 1] := '';
    Excel.Cells[2, 1] := '';

    // letra da coluna
    ColunasVisiveis := 0;
    for i := 0 to Consulta.FieldCount - 1 do
    begin
      if Consulta.Fields[i].Visible then
        Inc(ColunasVisiveis);
    end;

    letra := 'A';
    letraAntes := ' ';
    case ColunasVisiveis of
      1:
        begin
          Letra := 'A';
          LetraAntes := ' ';
        end;
      2:
        begin
          Letra := 'B';
          LetraAntes := 'A';
        end;
      3:
        begin
          Letra := 'C';
          LetraAntes := 'B';
        end;
      4:
        begin
          Letra := 'D';
          LetraAntes := 'C';
        end;
      5:
        begin
          Letra := 'E';
          LetraAntes := 'D';
        end;
      6:
        begin
          Letra := 'F';
          LetraAntes := 'E';
        end;
      7:
        begin
          Letra := 'G';
          LetraAntes := 'F';
        end;
      8:
        begin
          Letra := 'H';
          LetraAntes := 'G';
        end;
      9:
        begin
          Letra := 'I';
          LetraAntes := 'H';
        end;
      10:
        begin
          Letra := 'J';
          LetraAntes := 'I';
        end;
      11:
        begin
          Letra := 'K';
          LetraAntes := 'J';
        end;
      12:
        begin
          Letra := 'L';
          LetraAntes := 'K';
        end;
      13:
        begin
          Letra := 'M';
          LetraAntes := 'L';
        end;
      14:
        begin
          Letra := 'N';
          LetraAntes := 'M';
        end;
      15:
        begin
          Letra := 'O';
          LetraAntes := 'N';
        end;
      16:
        begin
          Letra := 'P';
          LetraAntes := 'O';
        end;
      17:
        begin
          Letra := 'Q';
          LetraAntes := 'P';
        end;
      18:
        begin
          Letra := 'R';
          LetraAntes := 'Q';
        end;
      19:
        begin
          Letra := 'S';
          LetraAntes := 'R';
        end;
      20:
        begin
          Letra := 'T';
          LetraAntes := 'S';
        end;
      21:
        begin
          Letra := 'U';
          LetraAntes := 'T';
        end;
      22:
        begin
          Letra := 'V';
          LetraAntes := 'U';
        end;
      23:
        begin
          Letra := 'W';
          LetraAntes := 'V';
        end;
      24:
        begin
          Letra := 'X';
          LetraAntes := 'W';
        end;
      25:
        begin
          Letra := 'Y';
          LetraAntes := 'X';
        end;
      26:
        begin
          Letra := 'Z';
          LetraAntes := 'Y';
        end;
      27:
        begin
          Letra := 'AA';
          LetraAntes := 'Z';
        end;
      28:
        begin
          Letra := 'AB';
          LetraAntes := 'AA';
        end;
      29:
        begin
          Letra := 'AC';
          LetraAntes := 'AB';
        end;
      30:
        begin
          Letra := 'AD';
          LetraAntes := 'AC';
        end;
      31:
        begin
          Letra := 'AE';
          LetraAntes := 'AD';
        end;
      32:
        begin
          Letra := 'AF';
          LetraAntes := 'AE';
        end;
      33:
        begin
          Letra := 'AG';
          LetraAntes := 'AF';
        end;
      34:
        begin
          Letra := 'AH';
          LetraAntes := 'AG';
        end;
      35:
        begin
          Letra := 'AI';
          LetraAntes := 'AH';
        end;
      36:
        begin
          Letra := 'AJ';
          LetraAntes := 'AI';
        end;
      37:
        begin
          Letra := 'AK';
          LetraAntes := 'AJ';
        end;
      38:
        begin
          Letra := 'AL';
          LetraAntes := 'AK';
        end;
      39:
        begin
          Letra := 'AM';
          LetraAntes := 'AL';
        end;
      40:
        begin
          Letra := 'AN';
          LetraAntes := 'AM';
        end;
      41:
        begin
          Letra := 'AO';
          LetraAntes := 'AN';
        end;
      42:
        begin
          Letra := 'AP';
          LetraAntes := 'AO';
        end;
      43:
        begin
          Letra := 'AQ';
          LetraAntes := 'AP';
        end;
      44:
        begin
          Letra := 'AR';
          LetraAntes := 'AQ';
        end;
      45:
        begin
          Letra := 'AS';
          LetraAntes := 'AR';
        end;
      46:
        begin
          Letra := 'AT';
          LetraAntes := 'AS';
        end;
      47:
        begin
          Letra := 'AT';
          LetraAntes := 'AM';
        end;
      48:
        begin
          Letra := 'AU';
          LetraAntes := 'AM';
        end;
      49:
        begin
          Letra := 'AW';
          LetraAntes := 'AV';
        end;
      50:
        begin
          Letra := 'AX';
          LetraAntes := 'AW';
        end;
    end;

    Excel.Range['A1', letra + '1'].Merge;
    Excel.Range['A1', letra + '1'].HorizontalAlignment := xlCenter;
    Excel.Range['A1', letra + '1'].Font.Bold := True;
    Excel.Cells[1, 1] := AnsiUpperCase(Titulo);

    Excel.Range['A2', letra + '2'].Merge;
    Excel.Range['A2', letra + '2'].HorizontalAlignment := xlCenter;
    Excel.Cells[2, 1] := SubTitulo;

    // dados
    for linha := 0 to Consulta.RecordCount - 1 do
    begin
      ColExcel := 1; // 1ª coluna do excel
      for coluna := 0 to Consulta.FieldCount - 1 do
      begin
        // verifica se a coluna é visível
        if Consulta.Fields[coluna].Visible then
        begin


          if nchar(consulta.Fields[coluna].asstring, '/') = 2 then
          //(Consulta.Fields[coluna] is TDateTimeField then
          begin
            valor := Consulta.Fields[coluna].asstring;
            excel.cells[linha + 5, ColExcel] := ' ' + valor;
            excel.cells[linha + 5, ColExcel].HorizontalAlignment := xlLeft;
          end
          else
          begin
            valor := Consulta.Fields[coluna].DisplayText;
            excel.cells[linha + 5, ColExcel] := valor;
            excel.cells[linha + 5, ColExcel].HorizontalAlignment := xlLeft;
          end;
          ColExcel := ColExcel + 1;
        end;
      end;
      Consulta.Next;
    end;

    // Título
    ColExcel := 1; // 1ª coluna do excel
    for coluna := 0 to Consulta.FieldCount - 1 do // eliminei a coluna 0 da relação do Excel
    begin
      // verifica se a coluna é visível
      if Consulta.Fields[coluna].Visible then
      begin
        valor := Consulta.Fields[coluna].DisplayLabel;
        excel.cells[4, ColExcel].Font.Bold := True;
        excel.cells[4, ColExcel] := valor;
        ColExcel := ColExcel + 1;
      end;
    end;

    Excel.Range['A4', letra + IntToStr(linha + 4)].Borders.LineStyle := xlContinuous;
    Excel.Range['A' + IntToStr(linha + 6), letraAntes + IntToStr(linha + 6)].MergeCells := True;
    excel.cells[linha + 6, 1] := 'Total:';
    excel.cells[linha + 6, 1].HorizontalAlignment := xlRight;
    excel.cells[linha + 6, ColunasVisiveis] := Consulta.RecordCount;

    excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    //excel.ActiveWorkBook.Activesheet.Protect(true,true,true);
    excel.visible := True;

  except
    Application.MessageBox('Aconteceu um erro desconhecido durante a conversão ' +
      'da tabela para o Ms-Excel', 'Erro', MB_OK + MB_ICONEXCLAMATION);
  end;
  Consulta.First;
  Consulta.EnableControls;
end;

function PrimeiraMaiuscula(Ativ: string; TodasPrimeiras: Boolean): string;
var
  CopiaAtv: string;
  PrimLetra: Char;
  MudaMaiusculo: boolean;
  i: Word;
begin
  // verifica se tem todas as letras maiusculas ou só a primeira
  if not TodasPrimeiras then
  begin
    CopiaAtv := Copy(Ativ, 2, Length(Ativ));
    PrimLetra := Ativ[1];
    Result := AnsiUpperCase(PrimLetra) + AnsiLowerCase(CopiaAtv)
  end
  else
  begin
    CopiaAtv := '';
    MudaMaiusculo := true; // primeira sempre maiuscula

    // se caracter espaco, próximo deve ser maiusculo
    for i := 1 to Length(Ativ) do
    begin
      if MudaMaiusculo then
        CopiaAtv := CopiaAtv + AnsiUpperCase(Ativ[i])
      else
        CopiaAtv := CopiaAtv + AnsiLowerCase(Ativ[i]);

      // próxima letra maiuscula se espaço encontrado
      MudaMaiusculo := Ativ[i] = ' ';
    end;

    Result := CopiaAtv;
  end;
end;

function PrimeirasMaiusculas(Ativ: string): string;
var
  CopiaAtiv: string;
  i: Word;
  EncontrouEspaco: Boolean;
begin
  CopiaAtiv := '';
  EncontrouEspaco := False;

  for i := 1 to Length(Ativ) do
  begin
    if (EncontrouEspaco) or (i = 1) then
      CopiaAtiv := CopiaAtiv + UpCase(Ativ[i])
    else
      CopiaAtiv := CopiaAtiv + LowerCase(Ativ[i]);
    EncontrouEspaco := Ativ[i] = ' ';
  end;

  Result := CopiaAtiv;
end;

end.




DecodeDate(StrToDate(asDataNasc), nAno, nMes, nDia);
nDiasNascimento := 0;

for nPos := 1 to nAno do
  if AnoBissexto(nPos) then
    inc(nDiasNascimento, 366)
  else
    inc(nDiasNascimento, 365);

for nPos := 1 to nMes do
  inc(nDiasNascimento, DiasDoMes(nPos));

inc(nDiasNascimento, nDia);

DecodeDate(Date, nAno, nMes, nDia);
nDiasAtual := 0;

for nPos := 1 to nAno do
  if AnoBissexto(nPos) then
    inc(nDiasAtual, 366)
  else
    inc(nDiasAtual, 365);

for nPos := 1 to nMes do
  inc(nDiasAtual, DiasDoMes(nPos));

inc(nDiasAtual, nDia);

nDiasNascimento := nDiasAtual - nDiasNascimento;

if nDiasNascimento = 0 then
begin
  nAno := 0;
  nMes := 0;
  nDia := 0;
end
else
begin
  DecodeDate(nDiasNascimento + 1, nAno, nMes, nDia);

     //retira o erro gerado no calculo
  dec(nAno, 1900);
  dec(nMes);
end;

     //retorna os valores conforme comentarios no cabeçalho
if nAno >= 3 then
begin
  asIdade := IntToStr(nAno);
  if nAno = 1 then
    asUnidIdade := 'ano'
  else
    asUnidIdade := 'anos';
end
else if (nAno >= 1) and (nAno < 3) then
begin
  asIdade := IntToStr(nAno) + '/' + IntToStr(nMes);
  if nAno = 1 then
    asUnidIdade := 'ano/'
  else
    asUnidIdade := 'anos/';
  if nMes = 1 then
    asUnidIdade := asUnidIdade + 'mes'
  else
    asUnidIdade := asUnidIdade + 'meses';
end
else if (nAno < 1) and (nMes >= 1) then
begin
  asIdade := IntToStr(nMes);
    //+ '/' + IntToStr(nDia);
  if nMes = 1 then
    asUnidIdade := 'mes'
  else
    asUnidIdade := 'meses';
    {if nDia = 1 then
      asUnidIdade := asUnidIdade + 'dia'
    else
      asUnidIdade := asUnidIdade + 'dias'}
end
else if nMes < 1 then
begin
    {asIdade := IntToStr(nDia);
    if nDia < 2 then
      asUnidIdade := 'dia'
    else
      asUnidIdade := 'dias'}
end;
if nAno >= 3 then
begin
  asIdade := IntToStr(nAno);
  if nAno = 1 then
    asUnidIdade := 'ano'
  else
    asUnidIdade := 'anos';
end
else if (nAno >= 1) and (nAno < 3) then
begin
  asIdade := IntToStr(nAno) + '/' + IntToStr(nMes);
  if nAno = 1 then
    asUnidIdade := 'ano/'
  else
    asUnidIdade := 'anos/';
  if nMes = 1 then
    asUnidIdade := asUnidIdade + 'mes'
  else
    asUnidIdade := asUnidIdade + 'meses';
end
else if (nAno < 1) and (nMes >= 1) then
begin
  asIdade := IntToStr(nMes);
    // + '/' + IntToStr(nDia);
  if nMes = 1 then
    asUnidIdade := 'mes'
  else
    asUnidIdade := 'meses';
    {if nDia = 1 then
      asUnidIdade := asUnidIdade + 'dia'
    else
      asUnidIdade := asUnidIdade + 'dias'}
end
else if nMes < 1 then
begin
    {asIdade := IntToStr(nDia);
    if nDia < 2 then
      asUnidIdade := 'dia'
    else
      asUnidIdade := 'dias'}
end;

