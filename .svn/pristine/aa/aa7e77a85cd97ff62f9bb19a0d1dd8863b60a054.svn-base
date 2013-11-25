unit TPOLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, ComCtrls, StdCtrls, Mask, DBCtrls,
  ExtCtrls, DBTables, DB;

type
  TFORLOTE = class(TForm)
    Pgprincipal: TPageControl;
    tbregistro: TTabSheet;
    tbconsulta: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBGrid2: TDBGrid;
    Bevel1: TBevel;
    btNovo: TSpeedButton;
    btExcluir: TSpeedButton;
    btSalvar: TSpeedButton;
    btCancelar: TSpeedButton;
    btEmail: TSpeedButton;
    btFechar: TSpeedButton;
    quPrincipal1: TQuery;
    usPrincipal1: TUpdateSQL;
    lblInclusao: TLabel;
    QryItensLote: TQuery;
    QryItensLotefat_numero: TIntegerField;
    QryItensLoteest_cod: TIntegerField;
    QryItensLotetce_cod: TIntegerField;
    QryItensLoteEst_nome: TStringField;
    QryItensLoteest_agencia: TStringField;
    QryItensLoteest_conta: TStringField;
    QryItensLotelot_numero: TIntegerField;
    QryItensLotefbo_valor: TFloatField;
    QryItensLotefbo_descontos: TFloatField;
    QryItensLotefbo_situacao: TStringField;
    QryItensLotefbo_liberacao: TStringField;
    QryItensLoteValorCerto: TFloatField;
    dsItens: TDataSource;
    QryItensLoteEst_cpf: TStringField;
    QryAbertos: TQuery;
    QryAbertosest_cod: TIntegerField;
    QryAbertostce_cod: TIntegerField;
    QryAbertosEst_nome: TStringField;
    DsAbertos: TDataSource;
    Panel1: TPanel;
    DBGrid4: TDBGrid;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    QryItensLoteEst_Cidade: TStringField;
    QryItensLoteEst_Estado: TStringField;
    QryItensLoteEst_endereco: TStringField;
    QryItensLoteEst_cep: TStringField;
    SpeedButton1: TSpeedButton;
    campos: TListBox;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    QryItensLoteDataCred: TDateField;
    Qrypesquisa: TQuery;
    QryItensLoteid_parcela: TIntegerField;
    DSD: TQuery;
    DSDID_DOCUMENTO: TIntegerField;
    DSDID_PESSOA: TIntegerField;
    DSDID_CENTROCUSTO: TIntegerField;
    DSDID_PLANOCONTAS: TIntegerField;
    DSDDTA_EMISSAO: TDateTimeField;
    DSDNUM_PARCELAS: TIntegerField;
    DSDDOCUMENTO: TStringField;
    DSDJUROS: TFloatField;
    DSDTOTALAVISTA: TFloatField;
    DSDTOTAL: TFloatField;
    DSDOBSERVACAO: TStringField;
    DSDPAGREC: TStringField;
    DSDID_USUARIOINCLUIU: TIntegerField;
    DSDID_USUARIOALTEROU: TIntegerField;
    DSDDATAINCLUIU: TDateTimeField;
    DSDDATAALTEROU: TDateTimeField;
    DSDSTATUS: TIntegerField;
    DSDID_USUARIOCANCELOU: TIntegerField;
    DSDDTA_CANCELAMENTO: TDateTimeField;
    DSDVLR_EFETUADO: TFloatField;
    DSDSALDO: TFloatField;
    DSDID_NOTA: TIntegerField;
    UpdateSQL1: TUpdateSQL;
    dbparcela: TQuery;
    dbparcelaDTA_VENCIMENTO: TDateTimeField;
    dbparcelaDTA_VENCPRORROGADO: TDateTimeField;
    dbparcelaID_DOCUMENTO: TIntegerField;
    dbparcelaID_PARCELAS: TIntegerField;
    dbparcelaNUMPARCELA: TIntegerField;
    dbparcelaSALDO: TFloatField;
    dbparcelaVLR_PARCELA: TFloatField;
    dbparcelaVLR_REALIZADO: TFloatField;
    upparcela: TUpdateSQL;
    Rateio: TQuery;
    RateioID_RATEIO: TIntegerField;
    RateioID_DOCUMENTO: TIntegerField;
    RateioID_CC: TIntegerField;
    RateioVALOR: TFloatField;
    RateioPERC: TFloatField;
    upRateio: TUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
    procedure btFecharClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure QryItensLoteCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Fat, Mes, Ano, Emp: Integer;
    EmpNome: string;
  end;
var
  FORLOTE: TFORLOTE;
implementation
uses TPODTA, TPOFNC, TPOCST, TPOFPG, TPOINI;
{$R *.dfm}

procedure TFORLOTE.FormCreate(Sender: TObject);
begin
  quPrincipal1 := DmDTA.quLotePgto;
  DmDTA.DsLotePgto.DataSet := quPrincipal1;
end;

procedure TFORLOTE.FormShow(Sender: TObject);
begin
  with DmDTA.quLotePgto do
  begin
    Close;
    ParamByName('fat_numero').AsInteger := Fat;
    Open;
  end;
end;

procedure TFORLOTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DmDta.quFolhaPgto.UpdatesPending then
  begin
    DmDta.quLotePgto.ApplyUpdates;
    DmDta.quLotePgto.CommitUpdates;
  end;
  ACTION := CAFREE;
end;

procedure TFORLOTE.FormDestroy(Sender: TObject);
begin
  DmDta.dsLotepgto.DataSet := DmDta.qulotepgto;
end;

procedure TFORLOTE.btNovoClick(Sender: TObject);
begin
  quPrincipal1.Insert;
  quPrincipal1.FieldByName('fat_numero').AsInteger := fat;
  quPrincipal1.FieldByName('fat_ano').AsInteger := ano;
  quPrincipal1.FieldByName('fat_mes').asinteger := mes;
  quPrincipal1.FieldByName('emp_cod').asinteger := emp;
  lblInclusao.Caption := 'Inclusão';
  pgPrincipal.ActivePage := tbRegistro;
  btsalvar.Enabled := true;
  QryItensLote.Close;
  btSalvarClick(Sender);
end;

procedure TFORLOTE.btSalvarClick(Sender: TObject);
var
  PrimeiroRegistro, UltimoRegistro: integer;
  posicao: tbookmark;
begin
  if quPrincipal1.State in [dsinsert, dsEdit] = false then
    exit;
  if quPrincipal1.State in [dsinsert] then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(lot_numero) as Maximo,');
      SQL.Add('  min(lot_numero) as Minimo');
      SQL.Add('from');
      SQL.Add('  lote');
      Open;
      if FieldByName('Minimo').IsNull then
      begin
        PrimeiroRegistro := 0;
        UltimoRegistro := 0;
      end
      else
      begin
        PrimeiroRegistro := FieldByName('Minimo').AsInteger;
        UltimoRegistro := FieldByName('Maximo').AsInteger;
      end;
      Close;
      Free;
      quPrincipal1.FieldByName('lot_numero').asinteger := ultimoregistro + 1;
    end;
    quprincipal1.post;
    if quprincipal1.UpdatesPending then
    begin
      quprincipal1.ApplyUpdates;
      quprincipal1.CommitUpdates;
    end;
    quprincipal1.Close;
    quprincipal1.Open;
    btsalvar.Enabled := false;
    pgPrincipal.ActivePage := tbconsulta;
  end;
end;

procedure TFORLOTE.SpeedButton6Click(Sender: TObject);
var
  posicao: tbookmark;
begin
  if quprincipal1.FieldByName('lot_sequencia').AsString = '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('update  folhapgto  set lot_numero =:lote where est_cod =:estudante and fat_numero=:fatura ');
      parambyname('lote').asinteger := quprincipal1.FieldByName('lot_numero').Asinteger;
      parambyname('estudante').asinteger := qryabertos.FieldByName('est_cod').Asinteger;
      parambyname('fatura').asinteger := quprincipal1.FieldByName('fat_numero').Asinteger;
      execsql;
      if not qryabertos.Eof then
        qryabertos.Next
      else if qryabertos.RecordCount > 1 then
        qryabertos.First;
     // posicao := qryabertos.GetBookmark;
      qryabertos.Close;
      qryabertos.Open;
      qryitenslote.Close;
      qryitenslote.Open;
      Close;
      Free;
    end;
  end
  else
    showmessage('Lote já foi emitido');
end;

procedure TFORLOTE.DBEdit1Change(Sender: TObject);
begin
  if (quprincipal1.Active) and (quprincipal1.IsEmpty = false) then
  begin
    qryitenslote.Close;
    qryitenslote.ParamByName('lote').asinteger := quprincipal1.FieldByName('lot_numero').Asinteger;
    qryitenslote.Open;
    qryabertos.Close;
    qryabertos.ParamByName('faturamento').asinteger := fat;
    qryabertos.Open;
  end;
end;

procedure TFORLOTE.SpeedButton7Click(Sender: TObject);
begin
  if quprincipal1.FieldByName('lot_sequencia').AsString = '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('update  folhapgto  set lot_numero =:lote where lot_numero is null and  fat_numero=:fatura ');
      sql.Add(' and est_cod in (select est_cod from Estudante where est_banco = ''Banco Itaú'')  and  fbo_liberacao = 1    ');
      parambyname('lote').asinteger := quprincipal1.FieldByName('lot_numero').Asinteger;
      parambyname('fatura').asinteger := quprincipal1.FieldByName('fat_numero').Asinteger;
      execsql;
      qryabertos.Close;
      qryabertos.Open;
      qryitenslote.Close;
      qryitenslote.Open;
      Close;
      Free;
    end;
  end
  else
    showmessage('Lote já foi emitido!');
end;

function strzero(linha: string; tam: integer): string;
var
  palavra: string;
begin
  palavra := trim(linha);
  while length(palavra) < tam do
    palavra := '0' + palavra;
  result := palavra;
end;

procedure TFORLOTE.btEmailClick(Sender: TObject);
var
  car: char;
  F, F1: TextFile;
  sFav, sPag: string;
  ano, mes, dia: Word;
  sValor: string;
  Registro: string;
  CodigoBanco: string;
  NumeroRegistro, NumeroLote: integer;
  total: real;
  PrimeiroRegistro, UltimoRegistro: integer;
  idempresa, idrateio, idpessoa, iddocumento, idparcela: integer;
  TotalDoc, valordoc: currency;
  QCC, Qdocumento: tquery;

begin
  TotalDoc := 0;

  iddocumento := 0;
  idempresa := 0;
  if quPrincipal1.FieldByName('lot_datacred').asstring = '' then
  begin
    showmessage('É Necessário Informar a Data para crédito');
    dbedit4.SetFocus;
    exit;
  end;
  if MSGSIMNAO('Deseja Emitir Lote?') = false then
    exit;
  if quPrincipal1.FieldByName('lot_sequencia').AsString = '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(lot_sequencia) as Maximo,');
      SQL.Add('  min(lot_sequencia) as Minimo');
      SQL.Add('from');
      SQL.Add('  lote');
      Open;
      if FieldByName('Minimo').IsNull then
      begin
        PrimeiroRegistro := 0;
        UltimoRegistro := 0;
      end
      else
      begin
        PrimeiroRegistro := FieldByName('Minimo').AsInteger;
        UltimoRegistro := FieldByName('Maximo').AsInteger;
      end;
      Close;
      Free;
      quprincipal1.Edit;
      quPrincipal1.FieldByName('lot_sequencia').asinteger := ultimoregistro + 1;
      quprincipal1.fieldbyname('lot_data').value := now;
      quprincipal1.post;
      if quprincipal1.UpdatesPending then
      begin
        quprincipal1.ApplyUpdates;
        quprincipal1.CommitUpdates;
      end;
    end;
  end;

  NumeroRegistro := 0;
  NumeroLote := quPrincipal1.FieldByName('lot_sequencia').asinteger;

  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.Add('select id_documento from tb_documentos nolock where id_documento in (select id_documento from tb_parcelas where id_lote=:lote) ');
  qrypesquisa.ParamByName('lote').AsInteger := numerolote;
  qrypesquisa.Open;
  if qrypesquisa.Eof = false then
    iddocumento := qrypesquisa.fieldbyname('id_documento').asinteger;

  Registro := '';
  CodigoBanco := '341';
  // Gera um arquivo para o Banco do Itau
  if not directoryexists('C:\BancoItau\Aplicativos\Arquivos\Pag\') then
  begin
    createdir('C:\BancoItau');
    createdir('C:\BancoItau\Aplicativos\');
    createdir('C:\BancoItau\Aplicativos\Arquivos');
    createdir('C:\BancoItau\Aplicativos\Arquivos\Pag');
  end;

  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  qrypesquisa.SQL.Add('select * from tb_pessoas where emp_cod=:codigo or func_cod=:codigo ');
  qrypesquisa.ParamByName('codigo').AsInteger := DmDta.qulotePgtoemp_cod.AsInteger;
  qrypesquisa.Open;
  if qrypesquisa.Eof = false then
  begin
    Qdocumento := TQuery.Create(nil);
    qcc := TQuery.Create(nil);
    idempresa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;
  end;

  Screen.Cursor := crHourGlass;
  AssignFile(F, 'C:\BancoItau\Aplicativos\Arquivos\Pag\list_' + copy(DmDta.quFolhaPgtofat_numero.asstring, 5, 4) + '.txt');
  Rewrite(F);
  AssignFile(F1, 'C:\BancoItau\Aplicativos\Arquivos\Pag\' + copy(DmDta.quFolhaPgtofat_numero.asstring, 5, 4) + strzero(quPrincipal1.FieldByName('lot_sequencia').asstring, 4) + '.rem');
  Rewrite(F1);
  Registro := Formatar('341', 3, false, '0'); {1 a 3 - Código do banco}
  Registro := Registro + '0000'; {4 a 7 - Lote de serviço}
  Registro := Registro + '0'; {8 - Tipo de registro - Registro header de arquivo}
  Registro := Registro + Formatar('', 6); {9 a 14 - Complemento}
  Registro := Registro + '080'; {15 a 17 - Versão do Layout}
  Registro := Registro + '2'; {18 - Tipo de inscrição do cedente} // 2 - pessoa juridica
  Registro := Registro + Formatar('02217643000117', 14, false, '0'); {19 a 32 - Número de inscrição do cedente}
  Registro := Registro + Formatar('', 20); {33 a 52 - Complemento}
 {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
  Registro := Registro + Formatar('1568', 5, false, '0'); {53 a 57 - Código da agência} //
  Registro := Registro + Formatar('', 1); {58 - Complemento}
  Registro := Registro + Formatar('13137', 12, false, '0'); {59 a 70 - Numero da Conta debitada} //
  Registro := Registro + Formatar('', 1); {71 - Complemento}
  Registro := Registro + Formatar('7', 1, false, '0'); {72 - Dígito do código do convênio no banco} //
  Registro := Registro + Formatar('CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 30, true, ' '); {73 a 102 - Nome do cedente}
  Registro := Registro + Formatar('BANCO ITAU S.A.', 30, true, ' '); {103 a 132 - Nome do banco}
  Registro := Registro + Formatar('', 10); {133 a 142 }
  Registro := Registro + '1'; {143 - Código de Remessa (1) / Retorno (2)}
  Registro := Registro + FormatDateTime('ddmmyyyy', NOW()); {144 a 151 - Data do de geração do arquivo}
  Registro := Registro + FormatDateTime('hhmmss', NOW()); {152 a 157 - Hora de geração do arquivo}
  Registro := Registro + Formatar('0', 9); {158 a 166 }
  Registro := Registro + Formatar('0', 5); {167 a 171 }
  Registro := Registro + Formatar('', 69); {172 a 240 }
  WriteLn(F1, REGISTRO);
  Registro := '';
  {GERAR REGISTRO HEADER DO LOTE}
  Registro := Formatar(CodigoBanco, 3, false, '0'); {1a 3 - Código do banco}
  Registro := Registro + Formatar(IntToStr(1), 4, false, '0'); {4 a 7 - Número do lote de serviço}
  Registro := Registro + '1'; {8 - Tipo do registro - Registro header de lote}
  Registro := Registro + 'C'; {9 - Tipo de operação: C Credito)}
  Registro := Registro + '30'; {10 a 11 - Tipo da Operação: 01 (Cobrança)} // 30 - salario 20 - Fornecedores
  Registro := Registro + '01'; {12 a 13 - Forma de pagamento: preencher com ZEROS no caso de cobrança}
  Registro := Registro + '040'; {14 a 16 - Número da versão do layout do lote}
  Registro := Registro + ' '; {17 - Uso exclusivo FEBRABAN/CNAB}
  Registro := Registro + '2'; {18 - Tipo de inscrição do cedente}
  Registro := Registro + Formatar('02217643000117', 14, false, '0'); {19 a 32 - Número de inscrição do cedente}
  Registro := Registro + Formatar('', 20); {33 a 52 }
  {CÓDIGO DO CONVÊNIO = AGÊNCIA + NÚMERO CONVÊNIO + DV}
  Registro := Registro + Formatar('1568', 5, false, '0'); {53 a 57 - Código da agência cETEFE} // #####
  Registro := Registro + Formatar('', 1); {58 a 58  Brancos}
  Registro := Registro + Formatar('13137', 12, false, '0'); {59 a 70 Numero da conta Debitada Cetefe} // ####
  Registro := Registro + Formatar('', 1); {71 a 71  Brancos}
  Registro := Registro + Formatar('7', 1, false, '0'); {72 - Dígito do código Agencia do cedente no banco} // ####
  Registro := Registro + Formatar('CENTRO DE TREINAMENTO E FORMACAO DO ESTUDANTE', 30, true, ' '); {73 a 102 - Nome do cedente}
  Registro := Registro + Formatar('', 30); {103 a 132  Brancos} // Verificar o tipo de convenio ####
  Registro := Registro + Formatar('', 10); {133 a 142  Brancos} // Verificar o tipo de convenio ####
  Registro := Registro + Formatar('IGUACU', 30, true, ' '); {143 a 172  ENDERECO} // verificar endereco
  Registro := Registro + Formatar('2345', 5, false, '0'); {173 a 177  NUMERO} //
  Registro := Registro + Formatar('1º ANDAR', 15, true, ' '); {178 a 192  COMPLEMENTO} //
  Registro := Registro + Formatar('CURITIBA', 20, true, ' '); {193 a 212  CIDADE} //
  Registro := Registro + Formatar('80240030', 8, false, '0'); {213 a 220  CEP} //
  Registro := Registro + 'PR'; {221 a 222  UF} //
  Registro := Registro + Formatar('', 8); {223 a 230  BRANCOS}
  Registro := Registro + Formatar('', 10); {231 a 240  BRANCOS}
  WriteLn(F1, REGISTRO);
  // data de liberação pgto
  DecodeDate(Date, ano, mes, dia);
  NumeroRegistro := 0;
  //dmDta.quFolhaPgto
  with qryitenslote do
  begin
    First;
    DisableControls;
    while not eof do
    begin
      if FieldByName('fbo_liberacao').AsInteger = 1 then
      begin
        INC(NumeroRegistro);
        Registro := '';
        sFav := '';
        sPag := '';
        // Tratamento do valor
        sValor := FormatFloat('0', FieldByName('valorcerto').AsFloat * 100);
        total := total + FieldByName('valorcerto').AsFloat * 100;
        Registro := Formatar(CodigoBanco, 3, false, '0'); {1a 3 - Código do banco}
        Registro := Registro + Formatar(IntToStr(1), 4, false, '0'); { 4 A 7  NUMERO DO LOTE }
        Registro := Registro + '3'; { 8 A 8  REGISTRO DETALHE LOTE }
        Registro := Registro + Formatar(IntToStr(NumeroRegistro), 5, false, '0'); { 9 A 13 N. sequencial do Registro no lote }
        Registro := Registro + 'A'; { 14 A 14  Codigo do Segmento }
        Registro := Registro + '000'; { 15 A 17  Tipo de movimento }
        Registro := Registro + '000'; { 18 A 20  Complemento do registro}
        Registro := Registro + '341'; { 21 A 23  Banco do Favorecido}
        Registro := Registro + '0' + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 4) +
          ' ' + '0000000' + PreencheEspacosDireita(copy(FieldByName('est_conta').AsString, 1, pos('-', FieldByName('est_conta').AsString) - 1), 5) + ' '
          + PreencheEspacosDireita(copy(FieldByName('est_conta').AsString, pos('-', FieldByName('est_conta').AsString) + 1, 1), 1); { 24 a 43 Dados da conta do favorecido}
        Registro := Registro + PreencheEspacosDireita(FieldByName('est_nome').AsString, 30); { 44 a 73 Nome do Favorecido}
        Registro := Registro + PreencheEspacosDireita(DmDta.quFolhaPgtofat_numero.Asstring, 20); {74 a 93 Seu numero }
        Registro := Registro + FormatDateTime('ddmmyyyy', quPrincipal1.FieldByName('lot_datacred').value); {94 a 101   Data de Pagamento}
        Registro := Registro + '009'; { 102 a 104  Moeda}
        Registro := Registro + Formatar('0', 9, false, '0'); {105 a 119 }
        Registro := Registro + Formatar(svalor, 21, false, '0'); {120 a 134 valor previsto}
        Registro := Registro + Formatar(' ', 15); {135 a 149 em branco }
        Registro := Registro + Formatar(' ', 5); {150 a 154 em branco }
        Registro := Registro + Formatar('0', 8, false, '0'); {155 a 162 Data da efetivação do Pagamento}
        Registro := Registro + Formatar('0', 15, false, '0'); {163 a 177 Valor Efetivo do pagamento }
        Registro := Registro + Formatar(' ', 18); {178 a 195 em branco  Nota 13}
        Registro := Registro + Formatar(' ', 2); {196 a 197 em branco }
        Registro := Registro + Formatar('0', 9, false, '0'); {198 a 203 nota 14 }
        Registro := Registro + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        Registro := Registro + Formatar('51', 2); {218 a 219 nota 30 } //###
        Registro := Registro + '00010'; {220 a 224 nota 26 } //###
        Registro := Registro + Formatar(' ', 2); {225 a 229 em branco }
        Registro := Registro + Formatar('0', 1, false, '0'); {230 aviso ao favorecido  Não }
        Registro := Registro + Formatar(' ', 10); {225 a 229 em branco }
        WriteLn(F1, REGISTRO);
        // Arquivo favorecidos
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_nome').AsString, 50);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_cpf').AsString, 14);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_agencia').AsString, 5);
        sFav := sFav + PreencheEspacosDireita(FieldByName('est_conta').AsString, 12);
        sFav := sFav + Formatar(svalor, 21, false, '0');

        WriteLn(F, sFav);
        {if idempresa > 0 then
        begin
          if qryitenslote.FieldByName('id_parcela').AsString = '' then
          begin
            qrypesquisa.Close;
            qrypesquisa.SQL.Clear;
            qrypesquisa.SQL.Add('select * from tb_pessoas where est_cod=:codigo or func_cod=:codigo ');
            qrypesquisa.ParamByName('codigo').AsInteger := qryitenslote.fieldbyname('est_cod').AsInteger;
            qrypesquisa.Open;
            if not qrypesquisa.Eof then
            begin
              idpessoa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;
              QRYPESQUISA.CLOSE;
              QRYPESQUISA.SQL.CLEAR;
              QRYPESQUISA.SQL.ADD('SELECT id_pcSalEst,id_ccSalEst FROM TB_EMPRESA ');
              qrypesquisa.Open;
              if iddocumento = 0 then
              begin
                Qdocumento := TQuery.Create(nil);
                with Qdocumento do
                begin
                  DatabaseName := DATABASE_NAME;
                  Sql.Add('insert into tb_documentos ');
                  sql.add(' (id_documento,id_pessoa,pagrec,documento,id_planocontas,num_parcelas,');
                  sql.add('totalavista,total,saldo,id_usuarioincluiu,dta_emissao,dataincluiu,vlr_efetuado,status) values ');
                  sql.add(' (:id_documento,:id_pessoa,:pagrec,:documento,:id_planocontas,:num_parcelas, ');
                  sql.add(':totalavista,:total,:saldo,:id_usuarioincluiu,:dta_emissao,:dataincluiu,0,1 )');
                  IDDOCUMENTO := dmdta.NEW_ID('tb_documentos');
                  parambyname('pagrec').asstring := 'P';
                  parambyname('documento').asstring := DmDta.quFolhaPgtofat_numero.asstring;
                  parambyname('id_documento').asinteger := IDDOCUMENTO;
                  parambyname('id_pessoa').asinteger := idEmpresa;
                  parambyname('id_planocontas').asinteger := qrypesquisa.fieldbyname('id_pcsalEst').asinteger;
                  parambyname('num_parcelas').asinteger := 1;
                  parambyname('id_usuarioincluiu').asinteger := 0;
                  parambyname('dta_emissao').value := dmdta.quLotePgtoLot_data.Value;
                  parambyname('dataincluiu').value := date;
                  parambyname('totalavista').ascurrency := 0;
                  parambyname('total').ascurrency := 0;
                  parambyname('saldo').ascurrency := 0;
                  execsql;
                end;
                qcc := TQuery.Create(nil);
                with qcc do
                begin
                  DatabaseName := DATABASE_NAME;
                  Sql.Add('insert into tb_rateiocc ');
                  sql.Add(' (ID_RATEIO, ID_DOCUMENTO, ID_CC, VALOR, PERC  ) values');
                  sql.Add(' (:ID_RATEIO, :ID_DOCUMENTO, :ID_CC, :VALOR, 100) ');
                  idrateio := dmdta.NEW_ID('tb_rateiocc');
                  parambyname('id_rateio').asinteger := idrateio;
                  parambyname('id_documento').asinteger := IDDOCUMENTO;
                  parambyname('id_cc').asinteger := qrypesquisa.fieldbyname('id_ccsalEst').asinteger;
                  parambyname('valor').ascurrency := 0;
                  execsql;
                end;
              end;
              with TQuery.Create(nil) do
              begin
                DatabaseName := DATABASE_NAME;
                Sql.Add('insert into TB_Parcelas ');
                sql.Add(' (DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO,ID_PARCELAS, NUMPARCELA,SALDO, VLR_PARCELA, VLR_REALIZADO,id_pessoa,id_lote)  values');
                sql.Add(' (:DTA_VENCIMENTO, :DTA_VENCPRORROGADO, :ID_DOCUMENTO,:ID_PARCELAS, :NUMPARCELA,:SALDO,:VLR_PARCELA, :VLR_REALIZADO,:id_pessoa,:id_lote) ');
                idparcela := dmdta.NEW_ID('tb_parcelas');
                parambyname('DTA_VENCIMENTO').value := qryitenslotedatacred.value;
                parambyname('DTA_VENCPRORROGADO').value := qryitenslotedatacred.value;
                parambyname('id_documento').asinteger := IDDOCUMENTO;
                parambyname('id_pessoa').asinteger := idpessoa;
                parambyname('id_parcelas').asinteger := idparcela;
                parambyname('numparcela').asinteger := 1;
                parambyname('id_lote').asinteger := NumeroLote;
                parambyname('saldo').ascurrency := qryitenslotevalorcerto.AsCurrency;
                parambyname('VLR_PARCELA').ascurrency := qryitenslotevalorcerto.AsCurrency;
                parambyname('VLR_REALIZADO').ascurrency := 0;
                totaldoc := totalDoc + qryitenslotevalorcerto.AsCurrency;
                execsql;
                close;
                free;
              end;
              with TQuery.Create(nil) do
              begin
                DatabaseName := DATABASE_NAME;
                Sql.Add('update  folhapgto  set id_parcela =:parcela where est_cod =:estudante and fat_numero=:fatura ');
                parambyname('parcela').asinteger := idparcela;
                parambyname('estudante').asinteger := qryitensloteest_cod.AsInteger;
                parambyname('fatura').asinteger := qryitenslotefat_numero.AsInteger;
                execsql;
                close;
                free;
              end;
            end;
          end;
        end;}
      end;
      next;
    end;
    if iddocumento > 0 then
    begin
      with Qdocumento do
      begin
        DatabaseName := DATABASE_NAME;
        sql.clear;
        Sql.Add('update  tb_documentos set  ');
        sql.add(' totalavista=:totalavista,total=:total,saldo=:saldo where id_documento=:documento ');
        qrypesquisa.close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.Add('select sum(vlr_parcela) Total ,sum(saldo) saldo from tb_parcelas where id_documento=:documento ');
        qrypesquisa.parambyname('documento').asinteger := iddocumento;
        qrypesquisa.Open;
        parambyname('totalavista').ascurrency := qrypesquisa.fieldbyname('total').AsCurrency;
        parambyname('total').ascurrency := qrypesquisa.fieldbyname('total').AsCurrency;
        parambyname('saldo').ascurrency := qrypesquisa.fieldbyname('saldo').AsCurrency;
        parambyname('documento').asinteger := iddocumento;
        execsql;
        close;
        free;
      end;

      with QCC do
      begin
        DatabaseName := DATABASE_NAME;
        sql.clear;
        Sql.Add('update  tb_rateiocc set  ');
        sql.add(' valor=:valor where id_documento=:documento');
       // parambyname('id_rateio').asinteger := idrateio;
        parambyname('valor').ascurrency := qrypesquisa.fieldbyname('total').AsCurrency;
        parambyname('documento').asinteger := iddocumento;
        execsql;
        close;
        free;
      end;
    end;

    registro := '';
    registro := '341' + Formatar(IntToStr(1), 4, false, '0') + '5';
    Registro := Registro + Formatar(' ', 9);
    Registro := Registro + Formatar(IntToStr(NumeroRegistro + 2), 6, false, '0');
    svalor := FormatFloat('0', total);
    Registro := Registro + Formatar(svalor, 18, false, '0');
    Registro := Registro + Formatar('0', 18, false, '0');
    Registro := Registro + Formatar(' ', 171);
    Registro := Registro + Formatar(' ', 10);
    WriteLn(F1, REGISTRO);
    registro := '34199999         000001';
    Registro := Registro + Formatar(IntToStr(NumeroRegistro + 4), 6, false, '0');
    registro := Registro + Formatar(' ', 211);
    WriteLn(F1, REGISTRO);
    First;
    EnableControls;
  end;
  CloseFIle(F);
  CloseFIle(F1);
  Screen.Cursor := crdefault;

  MSGAVISO('Arquivos gerados com sucesso!');
  qryitenslote.close;
  qryitenslote.open;
end;

function TFORLOTE.Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
  QuantidadeAcrescentar,
    TamanhoTexto,
    PosicaoInicial,
    i: integer;

begin
  case CaracterAcrescentar of
    '0'..'9', 'a'..'z', 'A'..'Z': ; {Não faz nada}
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(AnsiUpperCase(Texto));
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else Texto[i] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + Copy(Texto, PosicaoInicial, TamanhoDesejado);

  Result := AnsiUpperCase(Texto);
end;

procedure TFORLOTE.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORLOTE.SpeedButton8Click(Sender: TObject);
begin
  if quprincipal1.FieldByName('lot_sequencia').AsString <> '' then
    if MSGSIMNAO('Este Lote já foi emitido. Deseja mesmo tirar Lançamento do Lote?') = false then
      exit;

  if (qryitenslote.FieldByName('id_parcela').AsString <> '') then
  begin
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.add('select * from tb_parcelas where id_parcelas=:parcela ');
    qrypesquisa.parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
    qrypesquisa.Open;
    if qrypesquisa.FieldByName('saldo').ascurrency <> qryitenslote.FieldByName('valorcerto').ascurrency then
    begin
      showmessage('Lançamento está em um documento e já foi efetivado. Cancele primeiro as baixas(no financeiro)  para continuar. ');
      exit;
    end;
  end;
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('update  tb_documentos  set total=total-:valor, totalavista=totalavista-:valor, saldo=saldo - :valor where id_documento= (select id_documento from tb_parcelas where id_parcelas=:parcela) ');
      parambyname('valor').ascurrency := qryitenslote.FieldByName('valorcerto').ascurrency;
      parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
      execsql;
      Close;
      Free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('delete tb_lancamentos where id_parcela=:parcela ');
      parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
      execsql;
      Close;
      Free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      qrypesquisa.Close;
      qrypesquisa.SQL.Clear;
      qrypesquisa.SQL.add('select total from tb_documentos where id_documento= (select id_documento from tb_parcelas where id_parcelas=:parcela)  ');
      qrypesquisa.parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
      qrypesquisa.Open;
      sql.clear;
      Sql.Add('update  tb_rateiocc set  ');
      sql.add(' valor=:valor  where id_documento=(select id_documento from tb_parcelas where id_parcelas=:parcela) ');
      parambyname('valor').ascurrency := qrypesquisa.fieldbyname('total').ascurrency;
      parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
      execsql;
      close;
      free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('delete tb_parcelas where id_parcelas=:parcela ');
      parambyname('parcela').asinteger := qryitenslote.FieldByName('id_parcela').Asinteger;
      execsql;
      Close;
      Free;
    end;

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('update  folhapgto  set lot_numero = null ,id_parcela = null where lot_numero=:lote and est_cod =:estudante and fat_numero=:fatura ');
      parambyname('lote').asinteger := qryitenslote.FieldByName('lot_numero').Asinteger;
      parambyname('estudante').asinteger := qryitenslote.FieldByName('est_cod').Asinteger;
      parambyname('fatura').asinteger := qryitenslote.FieldByName('fat_numero').Asinteger;
      execsql;
      qryabertos.Close;
      qryabertos.Open;
      qryitenslote.Close;
      qryitenslote.Open;
      Close;
      Free;
    end;
  end;
end;

procedure TFORLOTE.SpeedButton9Click(Sender: TObject);
begin
  if quprincipal1.FieldByName('lot_sequencia').AsString = '' then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Add('update  folhapgto  set lot_numero = null where lot_numero=:lote and  fat_numero=:fatura ');
      parambyname('lote').asinteger := quprincipal1.FieldByName('lot_numero').Asinteger;
      parambyname('fatura').asinteger := quprincipal1.FieldByName('fat_numero').Asinteger;
      execsql;
      qryabertos.Close;
      qryabertos.Open;
      qryitenslote.Close;
      qryitenslote.Open;
      Close;
      Free;
    end;
  end
  else
    showmessage('Lote já foi emitido!');
end;

procedure TFORLOTE.btExcluirClick(Sender: TObject);
begin
  if qryitenslote.isempty then
    if quprincipal1.IsEmpty = false then
      if MSGSIMNAO('Deseja excluir o registro posicionado?') then
      begin
        try
          DmDta.ExcluirRegistro(quPrincipal1);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end;
end;

procedure TFORLOTE.btCancelarClick(Sender: TObject);
begin
  quprincipal1.Cancel;
  quprincipal1.CancelUpdates;
  btsalvar.Enabled := false;
end;

procedure TFORLOTE.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QryItensLotetce_cod.Visible := false;
  campos.Items.Clear;
  campos.Items.Add('valor');
  forini.ExportarDadosExcel(QryItensLote, campos, '', 'Fatura: ' + dbedit2.Text + '  Lote: ' + dbedit1.text + '  Envio: ' + dbedit5.Text + '  ' + dbedit3.Text, dbedit6.Text);
  DmDta.quContaCorrest_cpf.Visible := false;
  QryItensLotetce_cod.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORLOTE.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    pgPrincipal.ActivePage := tbRegistro;
end;

procedure TFORLOTE.QryItensLoteCalcFields(DataSet: TDataSet);
begin
  qryitenslotedatacred.asstring := quPrincipal1.FieldByName('lot_datacred').asstring;
end;

end.

