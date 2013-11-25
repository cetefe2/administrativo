unit TPOTCE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, Mask, DBCtrls, Menus, RXCtrls, RXDBCtrl, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Wwdbgrid;

type
  TFORTCE = class(TFORMOD2)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cbTipoSelecao: TComboBox;
    Notebook1: TNotebook;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    cbEstEnc: TComboBox;
    Label6: TLabel;
    Notebook2: TNotebook;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    meTceAbert: TMaskEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    quEncVaga: TQuery;
    quEncVagaest_cod: TIntegerField;
    quEncVagaest_nome: TStringField;
    quEncVagaeva_resultado: TStringField;
    quEncVagaResultado: TStringField;
    dsEncVaga: TDataSource;
    Notebook3: TNotebook;
    edPar: TEdit;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    btImprimir: TSpeedButton;
    qcontrato: TQuery;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    edEstCod: TEdit;
    edEstNome: TEdit;
    SpeedButton3: TSpeedButton;
    quBuscaAlteracao: TQuery;
    edInstCod: TEdit;
    edInstNome: TEdit;
    meData1: TMaskEdit;
    meData2: TMaskEdit;
    Label25: TLabel;
    btImpressao: TSpeedButton;
    btSabado: TSpeedButton;
    edCurCod: TEdit;
    edCurNome: TEdit;
    rgSituacao: TRadioGroup;
    lblAno: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    SpeedButton4: TSpeedButton;
    edOpt: TEdit;
    edOptNome: TEdit;
    SpeedButton5: TSpeedButton;
    qrypesquisa: TQuery;
    dssupervisor: TDataSource;
    qrySupervisor: TQuery;
    qrySupervisorNome: TStringField;
    qrySupervisorFunc_cod: TIntegerField;
    GroupBox1: TGroupBox;
    cbSuper: TDBLookupComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label33: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    Label34: TLabel;
    Label30: TLabel;
    SpeedButton6: TSpeedButton;
    DBStatusLabel2: TDBStatusLabel;
    nb: TNotebook;
    Label31: TLabel;
    DBEdit13: TDBEdit;
    Label37: TLabel;
    cxDBMemo1: TcxDBMemo;
    rdauxilio: TDBRadioGroup;
    Label38: TLabel;
    DBEdit21: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    qrySupervisorEmp_cod: TIntegerField;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    SpeedButton8: TSpeedButton;
    Panel4: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    SpeedButton7: TSpeedButton;
    meTceDtIni: TMaskEdit;
    meTceDtFim: TMaskEdit;
    meTceDtRes: TMaskEdit;
    DBCheckBox1: TDBCheckBox;
    meEnt1: TMaskEdit;
    meSai1: TMaskEdit;
    meEnt2: TMaskEdit;
    DBEdit8: TDBEdit;
    cbTipoBolsa: TComboBox;
    meTceDtRet: TMaskEdit;
    meTceDtDec: TMaskEdit;
    DBEdit12: TDBEdit;
    meTceDtAval: TMaskEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    meSai2: TMaskEdit;
    meIntervalo: TMaskEdit;
    edsemana: TEdit;
    ckEscala: TDBCheckBox;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    Label39: TLabel;
    DBText1: TDBText;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ckF1: TDBCheckBox;
    Label27: TLabel;
    DBEdit14: TDBEdit;
    ckR1: TDBCheckBox;
    ckf2: TDBCheckBox;
    rdEscolha: TDBRadioGroup;
    ckr2: TDBCheckBox;
    DBEdit23: TDBEdit;
    Label40: TLabel;
    cktempo: TDBCheckBox;
    ckarea: TDBCheckBox;
    Label36: TLabel;
    DBEdit20: TDBEdit;
    progresso: TLabel;
    Label41: TLabel;
    DBEdit24: TDBEdit;
    Label42: TLabel;
    DBEdit25: TDBEdit;
    Label43: TLabel;
    DBEdit26: TDBEdit;
    Label44: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label45: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    SpeedButton11: TSpeedButton;
    MSG: TwwMemoDialog;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    atualiza: TQuery;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure quEncVagaCalcFields(DataSet: TDataSet);
    procedure cbEstEncChange(Sender: TObject);
    procedure cbTipoSelecaoChange(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure pgPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure meEnt1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure meTceAbertExit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meTceDtResExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure edEstCodExit(Sender: TObject);
    procedure edEstCodDblClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure Notebook1PageChanged(Sender: TObject);
    procedure cbTipoSelecaoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure meTceAbertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure meTceDtRetKeyPress(Sender: TObject; var Key: Char);
    procedure meTceDtRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edInstCodDblClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meData1Exit(Sender: TObject);
    procedure meData2Exit(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
    procedure btSabadoClick(Sender: TObject);
    procedure edCurCodDblClick(Sender: TObject);
    procedure edCurCodExit(Sender: TObject);
    procedure edCurCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgSituacaoClick(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edOptExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure rdauxilioChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbSuperExit(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure cbSuperEnter(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure edParChange(Sender: TObject);
    procedure edParEnter(Sender: TObject);
  private
    { Private declarations }
    MudaAba, Retorno: Boolean;
    Mtotal: double;
    sTotal, periodo, dtc, Hr1, Hr2, Hr3, Hr4, Hr5, Hr6, Hr7, Hr8, eTotal: string;
    Digitou: Boolean;
    parametroModificado: boolean;

  public
    { Public declarations }
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure InicializaDados; override;
    procedure CarregaDados; override;
    function BuscaPerfil: Boolean;
    function VerificaVaga: Boolean;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
    procedure CalcHora;
    procedure CriaCampo(Tabela, campo, chave, condicao: string);

  end;

var
  FORTCE: TFORTCE;

implementation

uses TPODTA, TPOFNC, TPOVAG, TPOEMP, TPOEST, TPOCST, TPOTAL, TPOTAD, TPOTCED,
  TPOINS, TPORTCE, TPOCUR, ComObj, TPOINI, Math, TPOSELEMP, untLibera,
  TPOTCEOBS, TPOIFU, TPOENTREL;

{$R *.DFM}

procedure TFORTCE.FormCreate(Sender: TObject);
var
  argumento: string;
begin
  inherited;
  pgPrincipal.ActivePage := pgPrincipal.Pages[0];
  
  DmDTA.criacampo('TCE', 'TCE_AuxAlim', 'TCE_COD', ' char(1)');
  DmDTA.criacampo('TCE', 'TCE_AuxAlimAntecipa', 'TCE_COD', ' char(1)');
  DmDTA.criacampo('TCE', 'TCE_AuxAlimTipo', 'TCE_COD', ' varchar(50)');
  DmDTA.criacampo('TCE', 'TCE_AuxAlimtexto', 'TCE_COD', ' varchar(50)');
  DmDTA.criacampo('TCE', 'TCE_AuxAlimValor', 'TCE_COD', ' money');
  criacampo('TCE', 'tce_horsegini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsegfim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsegini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsegfim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterSeg', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'Func_cod', 'TCE_COD', ' int ');
  criacampo('TCE', 'Tce_Intervalo', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horterini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horterfim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horterini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horterfim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterTer', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'tce_horquaini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquafim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquaini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquafim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterQua', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'tce_horquiini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquifim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquiini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horquifim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterQui', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'tce_horsexini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsexfim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsexini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsexfim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterSex', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'tce_hordomini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_hordomfim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_hordomini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_hordomfim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterDom', 'TCE_COD', ' smalldatetime ');

  criacampo('TCE', 'tce_horSabini1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsabfim1', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horsabini2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_horSabfim2', 'TCE_COD', ' smalldatetime ');
  criacampo('TCE', 'tce_InterSab', 'TCE_COD', ' smalldatetime ');


  Digitou := False;
  nomeChave := 'tce_cod';
  nomeCodigo := 'tce_cod';
  nomeNome := '';
  nomeTabela := 'Tce';
  quPrincipal := DmDta.quTce;
  DmDta.dsTce.DataSet := quPrincipal;
  DBGrid1.DataSource := DmDta.dsTce;
  MudaAba := True;
  Retorno := False;
  parametroModificado := false;
end;

procedure TFORTCE.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsTce.DataSet := DmDta.quTce;
end;

procedure TFORTCE.AtualizaDados;
begin
  inherited;
  if quPrincipal.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal.FieldByName('tce_cod').Value := ultimoRegistro;
  end;

  quPrincipal.FieldByName('tce_data').Value := meTceAbert.Text;
  quPrincipal.FieldByName('tce_tipocont').Value := IntToStr(cbTipoSelecao.ItemIndex);
  quPrincipal.FieldByName('tce_estenc').Value := IntToStr(cbEstEnc.ItemIndex);
  quPrincipal.FieldByName('tce_dataini').text := meTceDtIni.Text;
  quPrincipal.FieldByName('tce_datafim').text := meTceDtFim.Text;

  if meTceDtRes.Text <> '  /  /    ' then
  begin
    quPrincipal.FieldByName('tce_datares').text := meTceDtRes.Text;
    if StrtoDate(meTceDtRes.Text) <= Date then
      quPrincipal.FieldbyName('tce_situacao').Text := '7';
  end
  else
  begin
    if lblInclusao.Caption = '' then
    begin
      // Verifica TA's existentes
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Add('Select max(prg_cod) as Maximo from TceAditivo where tce_cod = ' + quPrincipal.FieldByName('tce_cod').Text);
        Open;

        quPrincipal.FieldbyName('tce_situacao').Text := FieldByName('Maximo').AsString;
        if quPrincipal.FieldbyName('tce_situacao').Text = '' then
          quPrincipal.FieldbyName('tce_situacao').Text := '0';

        Close;
        Free;
      end;
    end
    else
      quPrincipal.FieldbyName('tce_situacao').Text := '0';
    quPrincipal.FieldByName('tce_datares').text := '';
  end;

  if meTceDtRet.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_dataret').text := meTceDtRet.Text
  else
    quPrincipal.FieldByName('tce_dataret').text := '';
  if meTceDtDec.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_datadec').text := meTceDtDec.Text
  else
    quPrincipal.FieldByName('tce_datadec').text := '';
  if meTceDtAval.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_avaliacao').text := meTceDtAval.Text
  else
    quPrincipal.FieldByName('tce_avaliacao').text := '';
  if meEnt1.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horarioini1').text := '01/01/1900 ' + meEnt1.Text
  else
    quPrincipal.FieldByName('tce_horarioini1').text := '';
  if meSai1.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horariofim1').text := '01/01/1900 ' + meSai1.Text
  else
    quPrincipal.FieldByName('tce_horariofim1').text := '';
  if meEnt2.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horarioini2').text := '01/01/1900 ' + meEnt2.Text
  else
    quPrincipal.FieldByName('tce_horarioini2').text := '';
  if meSai2.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horariofim2').text := '01/01/1900 ' + meSai2.Text
  else
    quPrincipal.FieldByName('tce_horariofim2').text := '';

  if meIntervalo.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_intervalo').text := '01/01/1900 ' + meIntervalo.Text
  else
    quPrincipal.FieldByName('tce_intervalo').text := '';

  quPrincipal.FieldByName('tce_tipobolsa').text := IntToStr(cbTipoBolsa.ItemIndex);
end;

procedure TFORTCE.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(tce_cod) as Maximo,');
    SQL.Add('  min(tce_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  Tce');
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
    free;
  end;
end;

procedure TFORTCE.CarregaDados;
begin
  inherited;
  Digitou := False;
  Retorno := False;
  if not quPrincipal.FieldByName('tce_data').IsNull then
    meTceAbert.Text := quPrincipal.FieldByName('tce_data').Value;

  if not quPrincipal.FieldByName('tce_dataini').IsNull then
    meTceDtIni.Text := quPrincipal.FieldByName('tce_dataini').text;
  if not quPrincipal.FieldByName('tce_datafim').IsNull then
    meTceDtFim.Text := quPrincipal.FieldByName('tce_datafim').text;
  if not quPrincipal.FieldByName('tce_avaliacao').IsNull then
    meTceDtAval.Text := quPrincipal.FieldByName('tce_avaliacao').text;
  if not quPrincipal.FieldByName('tce_datares').IsNull then
    meTceDtRes.Text := quPrincipal.FieldByName('tce_datares').text;
  if not quPrincipal.FieldbyName('tce_dataret').IsNull then
    meTceDtRet.Text := quPrincipal.FieldbyName('tce_dataret').text;
  if not quPrincipal.FieldByName('tce_datadec').IsNull then
    meTceDtDec.Text := quPrincipal.FieldByName('tce_datadec').Text;

  if (not quPrincipal.FieldByName('tce_horarioini1').IsNull) then
    Hr1 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horarioini1').Value)
  else
    Hr1 := '';
  if (not quPrincipal.FieldByName('tce_horariofim1').IsNull) then
    Hr2 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horariofim1').Value)
  else
    Hr2 := '';
  if (not quPrincipal.FieldByName('tce_horarioini2').IsNull) then
    Hr3 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horarioini2').Value)
  else
    Hr3 := '';
  if (not quPrincipal.FieldByName('tce_horariofim2').IsNull) then
    Hr4 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horariofim2').Value)
  else
    Hr4 := '';

  if (not quPrincipal.FieldByName('tce_horsabini1').IsNull) then
    Hr5 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabini1').Value)
  else
    Hr5 := '';
  if (not quPrincipal.FieldByName('tce_horsabfim1').IsNull) then
    Hr6 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabfim1').Value)
  else
    Hr6 := '';
  if (not quPrincipal.FieldByName('tce_horsabini2').IsNull) then
    Hr7 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabini2').Value)
  else
    Hr7 := '';
  if (not quPrincipal.FieldByName('tce_horsabfim2').IsNull) then
    Hr8 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabfim2').Value)
  else
    Hr8 := '';

  CalcHora;

  if not quPrincipal.FieldByName('tce_tipocont').IsNull then
  begin
    cbTipoSelecao.ItemIndex := quPrincipal.FieldByName('tce_tipocont').AsInteger;
    if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
    begin
      Notebook1.PageIndex := 0;
    end
    else
    begin
      Notebook1.PageIndex := 1;
      Notebook2.PageIndex := 1;
    end;
  end;

  // By R.e.a.L - 11/09/2012
  if (quPrincipal.State = dsInsert) or (quPrincipal.FieldByName('tce_tipocont').asInteger = 1) then
     cbTipoSelecao.Enabled := true
  else
     cbTipoSelecao.Enabled := false;

  if not quPrincipal.FieldByName('tce_estenc').IsNull then
  begin
    if quPrincipal.FieldByName('tce_estenc').AsInteger = 0 then
    begin
      with quEncVaga do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select E.*, T.Est_nome from Encaminhamento E, Estudante T where E.vag_cod = :vag_cod and E.est_cod = T.est_cod order by t.est_nome');
        ParamByName('vag_cod').Text := DBEdit3.Text;
        Open;
      end;
    end;

    cbEstEnc.ItemIndex := quPrincipal.FieldByName('tce_estenc').AsInteger;
    Notebook2.PageIndex := quPrincipal.FieldByName('tce_estenc').AsInteger;
  end;

  if (not quPrincipal.FieldByName('tce_tipobolsa').IsNull) and
    (quPrincipal.FieldByName('tce_tipobolsa').Value <> '') then
    cbTipoBolsa.ItemIndex := quPrincipal.FieldByName('tce_tipobolsa').AsInteger;
end;

procedure TFORTCE.InicializaDados;
begin
  inherited;
  quPrincipal.fieldByName('tce_cod').Value := 0;
  meTceAbert.Text := FormatDateTime('dd/mm/yyyy', Date);
  cbTipoSelecao.ItemIndex := 0;
  cbEstEnc.ItemIndex := 0;
  Notebook1.PageIndex := 0;
  Notebook2.PageIndex := 0;
  quPrincipal.FieldByName('tce_situacao').Value := '0';
  quPrincipal.FieldByName('tce_seguro').Value := '0';
  quPrincipal.FieldByName('tce_segunda').Value := '1';
  quPrincipal.FieldByName('tce_terca').Value := '1';
  quPrincipal.FieldByName('tce_quarta').Value := '1';
  quPrincipal.FieldByName('tce_quinta').Value := '1';
  quPrincipal.FieldByName('tce_sexta').Value := '1';
  quPrincipal.FieldByName('tce_sabado').Value := '0';
  quPrincipal.FieldByName('tce_domingo').Value := '0';


  cbTipoSelecao.Enabled := true;
  cbTipoBolsa.ItemIndex := 0;
  DBCheckBox1.Checked := False;
  Digitou := False;
  Retorno := True;
  meTceAbert.SetFocus;
end;

procedure TFORTCE.quEncVagaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (not quEncVagaEva_resultado.IsNull) and
    (quEncVagaEva_resultado.Value <> '') then
    case quEncVagaEva_resultado.AsInteger of
      0: quEncVagaResultado.Value := 'Em Espera';
      1: quEncVagaResultado.Value := 'Reprovado';
      2: quEncVagaResultado.Value := 'Aprovado';
      3: quEncVagaResultado.Value := 'Desistiu';
    end;
end;

procedure TFORTCE.cbEstEncChange(Sender: TObject);
begin
  inherited;
  Notebook2.PageIndex := cbEstEnc.ItemIndex;
end;

procedure TFORTCE.cbTipoSelecaoChange(Sender: TObject);
begin
  inherited;
  case cbTipoSelecao.ItemIndex of
    0:
      begin
        Notebook1.PageIndex := 0;
      end;
    1:
      begin
        Notebook1.PageIndex := 1;
        if quPrincipal.State in [dsInsert, dsEdit] then
        begin
          quPrincipal.FieldByName('vag_cod').Text := '';
          quPrincipal.FieldByName('vag_qtde').Text := '';
          quPrincipal.FieldByName('vag_qtdepreenc').Text := '';
        end;
        cbEstEnc.ItemIndex := 1;
        Notebook2.PageIndex := 1;
      end;
  end;
end;

procedure TFORTCE.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  dblookupcombobox1.enabled := true;
  dbedit2.enabled := true;
  dbedit3.enabled := true;
  panel4.Enabled := true;
  lblInclusao.Caption := 'Inclus�o';
  DmDta.IncluirRegistro(quPrincipal);
  quprincipal.FieldByName('tce_domingo').asstring := '0';
  quprincipal.FieldByName('tce_EstObrigato').asstring := '0';
  pgPrincipal.ActivePage := tbRegistro;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORTCE.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;

  if FORVAG.F2Codigo <> '' then
  begin
    if DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert, dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTcevag_cod.Text := FORVAG.F2Codigo;
      DmDta.quTcevag_qtde.value := FORVAG.F2Qtde;
      DmDta.quTcevag_qtdepreenc.value := FORVAG.F2QtdePreenc;
      DmDta.quTceemp_cod.Value := FORVAG.F2Emp;
      DmDta.quTceemp_nome.Text := FORVAG.F2EmpNome;
      Hr1 := FORVAG.F2H1;
      Hr2 := FORVAG.F2H2;
      if FORVAG.F2H3 <> '' then
        Hr3 := FORVAG.F2H3;
      if FORVAG.F2H4 <> '' then
        Hr4 := FORVAG.F2H4;
      DmDta.quTcetce_bolsa.Value := FORVAG.F2VagBolsa;
      if FORVAG.F2TipoBolsa = '1' then
        cbTipoBolsa.ItemIndex := 1
      else
        cbTipoBolsa.ItemIndex := 0;
      if VerificaVaga() then
        SelectNext(ActiveControl, True, True);
    end;
  end;
  FORVAG.Free;
end;

procedure TFORTCE.DBEdit2DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    if DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert, dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTceemp_cod.Text := FOREMP.F2Codigo;
      DmDta.quTceemp_nome.Text := FOREMP.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORTCE.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit2.Text <> '') then
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then
        quPrincipal.Edit;


      DmDta.quTCEemp_nome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(DBEdit2.Text));
      DmDta.quTCEtce_AuxTransp.Text := DmDta.BuscaCampo('Empresa', 'emp_AuxTransp', 'emp_cod', StrToInt(DBEdit2.Text));
      DmDta.quTCEtce_AuxTranspValor.text := DmDta.BuscaCampo('Empresa', 'emp_AuxTranspValor', 'emp_cod', StrToInt(DBEdit2.Text));
      DmDta.quTCEtce_AuxTransptexto.value := DmDta.BuscaCampo('Empresa', 'emp_AuxTransptexto', 'emp_cod', StrToInt(DBEdit2.Text));


      if DmDta.quTCEemp_nome.Text = '' then
      begin
        MSGERRO('Empresa inexistente. Selecione outra empresa!');
        DBEdit2.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEemp_nome.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    if DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert, dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTceest_cod.Text := FOREST.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREST.Free;
end;

procedure TFORTCE.DBLookupComboBox1Click(Sender: TObject);
begin
  Salvou := True;
  inherited;


  if quPrincipal.State = dsInsert then
  begin
    if quEncVagaeva_resultado.Value <> '3' then
    begin
      DmDta.quTceEst_Nome.Text := quEncVagaest_nome.Text;

      // Busca situa�ao do perfil
      with DmDta.quEst do
      begin
        Close;
        ParamByName('est_cod').Value := DmDta.quTceEst_cod.Value;
        Open;

        {if not IsEmpty then
        begin
          if FieldByName('est_situacao').Value = 'S' then
            MSGAVISO('Estudante j� estagiando. Favor verificar antes de confirmar!');
        end;

        if not IsEmpty then
        begin
          if FieldByName('est_situacao').Value = 'S' then
          begin
            MSGERRO('Estudante j� estagiando!');
            DBLookupComboBox1.SetFocus;
            Salvou := False;
            Exit;
          end;
        end;}
      end;
    end
    else
    begin
      MSGAVISO('Estudante j� encaminhado. Favor verificar antes de confirmar!');
    end;
  end;
end;

procedure TFORTCE.btSalvarClick(Sender: TObject);
var Insere: Boolean;
  Ret: Boolean;

  procedure AtualizaVaga();
  begin
    with TQuery.Create(nil) do
    begin
      qrypesquisa.close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.Text := 'select vag_acao from vaga where vag_cod=' + quPrincipal.FieldByname('vag_cod').Text;
      qrypesquisa.Open;

      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      if qrypesquisa.FieldByName('vag_acao').asstring = 'V' then
        Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc + 1,vag_qtde = vag_qtde + 1   where vag_cod =  ' + quPrincipal.FieldByname('vag_cod').Text)
      else
        Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc + 1 where vag_cod =  ' + quPrincipal.FieldByname('vag_cod').Text);

      ExecSql;
      Free;
    end;
  end;

  procedure AtualizaEstEncaminhado();
  begin
    with TQuery.Create(nil) do
    begin
      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;

      // Seta APROVADO no candidato
      Sql.Clear;
      Sql.Add('Update Encaminhamento set eva_resultado = ''2''');
      Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      Sql.Add('and Est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;

      // Seta REPROVADO nos outros candidatos (que j� nao foram aprovados);
    {  If DBEdit9.Field.value = DBEdit10.Field.value + 1 then
      begin
        Sql.Clear;
        Sql.Add('Update Encaminhamento set eva_resultado = ''1''');
        Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
        Sql.Add('and Est_cod <> ' + quPrincipal.FieldByname('est_cod').Text);
        Sql.Add('and eva_resultado not in (''2'',''3'')');
        ExecSql;
      end;}

      Free;
    end;
  end;

  procedure AtualizaEstagiario(Situacao: string);
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Estudante set est_situacao = ''' + Situacao + ''' where est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      Free;
    end;
  end;

begin
  btEnter.SetFocus;
  Salvou := True;

  if meTceAbert.Text = '  /  /     ' then
  begin
    MSGERRO('Entre com a data de emiss�o do TCE!');
    meTceAbert.SetFocus;
    Salvou := False;
  end
  else if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com a empresa do TCE!');
    meTceAbert.SetFocus;
    Salvou := False;
  end
  else if quPRincipal.FieldByNAme('est_cod').IsNull then
  begin
    MSGERRO('Entre com o estudante do TCE!');

    if Notebook2.PageIndex = 0 then
      DbLookupComboBox1.SetFocus
    else
      DBEdit5.SetFocus;

    Salvou := False;
  end
  else if meEnt1.Text = '  :  ' then
  begin
    MSGERRO('Entre com a entrada 1 do TCE!');
    meEnt1.SetFocus;
    Salvou := False;
  end
  else if meSai1.Text = '  :  ' then
  begin
    MSGERRO('Entre com a sa�da 1 do TCE!');
    meSai1.SetFocus;
    Salvou := False;
  end
  else if meTceDtIni.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data de in�cio do TCE!');
    meTceDtIni.SetFocus;
    Salvou := False;
  end
  else if meTceDtFim.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data de t�rmino do TCE!');
    meTceDtFim.SetFocus;
    Salvou := False;
  end
  else if (cbTipoSelecao.ItemIndex = 0) and (DBEdit3.Text = '') then
  begin
    MSGERRO('Entre com a vaga correspondente ao TCE!');
    DBEdit3.SetFocus;
    Salvou := False;
  end
  else if (DBEdit8.Text = '') then
  begin
    MSGERRO('Entre com o valor da bolsa do TCE!');
    DBEdit8.SetFocus;
    Salvou := False;
  end
  else
  begin
    Ret := Retorno;
    Insere := QuPrincipal.State = dsInsert;

    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      try
        AtualizaDados;
        if rdauxilio.ItemIndex <> 1 then
          DmDTA.quTcetce_auxTranspvalor.AsString := '';
        if rdauxilio.ItemIndex <> 3 then
          DmDTA.quTcetce_auxTransptexto.AsString := '';

        DMDta.SalvarRegistro(quPrincipal);

        cbTipoPesquisa.ItemIndex := 0;

        if Insere then
        begin
          if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
            Atualizavaga();

          if (quPrincipal.FieldByName('tce_estenc').Value = '0') then
            AtualizaEstEncaminhado();

          AtualizaEstagiario('S');
        end;
        if Ret then
          DmDta.AtualizaPgtoEstagiario(quPrincipal.FieldByName('est_cod').AsInteger,
            quPrincipal.FieldByName('tce_cod').AsInteger);

        if (not quPrincipal.FieldByName('tce_datares').IsNull) and
          (quPrincipal.FieldByName('tce_datares').AsDateTime <= Date) then
          AtualizaEstagiario('X');
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;

    if MudaAba then
    begin
      estadoNavegando;
      pgPrincipal.ActivePage := tbConsulta;
      panel4.Enabled := false;
    end;
  end;
end;

procedure TFORTCE.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
      Exit;
    end;
    dblookupcombobox1.enabled := false;
    dbedit2.enabled := true;
    dbedit3.enabled := false;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
    F2Nome := quPrincipal.FieldByName(nomeNome).AsString;
    Close;
  end;

end;

procedure TFORTCE.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
      AllowChange := False;
      Exit;
    end;
    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      MSGERRO('Salve o registro primeiramente!');
      AllowChange := False;
    end
    else
      EstadoNavegando();
    cbTipoPesquisa.ItemIndex := 0;
    edParametro.Clear;
    if edParametro.CanFocus then edParametro.SetFocus;
  end;
end;

function TFORTCE.BuscaPerfil: Boolean;
begin
  Result := True;
  // Busca situa�ao do perfil
  with DmDta.quEst do
  begin
    Close;
    ParamByName('est_cod').Value := DmDta.quTceEst_cod.Value;
    Open;

    {if not IsEmpty then
    begin
      if FieldByName('est_situacao').Value = 'S' then
        MSGERRO('Estudante j� estagiando. Favor verificar antes de confirmar!');
    end;}
  end;
end;

function TFORTCE.VerificaVaga: Boolean;
begin
  Result := False;
  if quPrincipal.State = dsInsert then
  begin
    if DmDta.quTcevag_qtde.Value = DmDta.quTceVag_qtdepreenc.Value then
    begin
      MSGERRO('Vaga j� preenchida. Selecione outra vaga!');
      DBEdit3.SetFocus;
      Exit;
    end
    else if DmDta.quTcevag_cancelada.Value = '1' then
    begin
      MSGERRO('Vaga cancelada. Selecione outra vaga!');
      DBEdit3.SetFocus;
      Exit;
    end
    else if dmdta.buscacampo('vaga', 'vag_selecao', 'vag_cod', dmdta.qutcevag_cod.asinteger) = 'S' then
    begin
      MSGERRO('Vaga do Tipo Sele��o. Selecione outra vaga!');
      DBEdit3.SetFocus;
      Exit;
    end
  end;

  Digitou := True;
  calcHora();
  with quEncVaga do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select E.*, T.est_nome from Encaminhamento E, Estudante T where e.vag_cod = :vag_cod and e.eva_resultado <> 2 and E.est_Cod = t.est_cod order by t.est_nome');
    ParamByName('vag_cod').Text := DBEdit3.Text;
    Open;
  end;

  Digitou := False;
  Result := True;
end;

procedure TFORTCE.cbTipoPesquisaChange(Sender: TObject);
begin
  inherited;
  edPar.Text := '';
  edEmpNome.Text := '';
  edEmpCod.Text := '';
  edInstCod.Text := '';
  edInstNome.Text := '';
  edCurCod.Text := '';
  edCurNome.Text := '';
  meData1.Clear;
  meData2.Clear;

  case cbTipoPesquisa.ItemIndex of
    0:
      begin
        Notebook3.PageIndex := 0;
        edPar.SetFocus;
      end;
    1:
      begin
        Notebook3.PageIndex := 1;
        edEmpCod.SetFocus;
      end;
    2:
      begin
        Notebook3.PageIndex := 2;
        edEstCod.SetFocus;
      end;
    3:
      begin
        Notebook3.PageIndex := 3;
        edInstCod.SetFocus;
      end;
    4:
      begin
        Notebook3.PageIndex := 5;
        edCurCod.SetFocus;
      end;
    5, 6, 7, 8:
      begin
        Notebook3.PageIndex := 4;
        meData1.SetFocus;
      end;
    9:
      begin
        Notebook3.PageIndex := 6;
        edopt.SetFocus;
      end;
  end;
end;

procedure TFORTCE.edParExit(Sender: TObject);
var
  argumento, ordem: string;
  data1, data2: string;

begin
  inherited;
 // if edPar.Text = '' then
 //   exit;

 if not parametroModificado then
    exit;

  quPrincipal.DisableControls;
  try  
    ordem := 't.tce_cod desc';
    argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';
    if edPar.Text <> '' then
      argumento := argumento + ' and t.tce_cod = ' + IntToStr(StrToIntDef(edPar.Text, -1));

    // situa��o
    case rgSituacao.ItemIndex of
      4: argumento := argumento + ' and t.tce_situacao <> ''7''';
      0: argumento := argumento + ' and t.tce_situacao = ''0''';
      1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'') ';
      2:
        begin
          argumento := argumento + ' and t.tce_situacao = ''7''';
        // data de rescis�o
          if (edAno.Text <> '') and (edMes.Text <> '') then
          begin
          // data inicial e final
            data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
            data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
              StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';

          // verifica se j� n�o existe cl�usula where
            argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
          end;
        end;
    end;

    {DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
      ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
      ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
      'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}

    DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
      ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
      ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo, ' +
      ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod  ),0)   DTFinal ',
      'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

    //quPrincipal.Last;
  finally
    quPrincipal.EnableControls;
  end;
  estadoNavegando();
end;

procedure TFORTCE.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  AbreFechaTabelas(true);
  with quPrincipal do
  begin
    quPrincipal.DisableControls;
    Close;
    Sql.Clear;



    Sql.Add('select T.*, E.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,');
  //  Sql.Add(' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ');
  //  Sql.Add(' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ');
    sql.add(' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao,  ');
    sql.add(' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo, ');
    sql.add(' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod   ),0)   DTFinal ');
    Sql.Add('from Tce T, Vaga V, Estudante E, Empresa m ');
    Sql.Add('where T.vag_cod *= V.vag_cod and T.est_cod = E.est_cod and T.emp_cod = m.emp_cod  and t.tce_situacao <> ''7'' order by tce_cod desc');
    Open;
    //Last;
  end;
  estadoNavegando;
  quPrincipal.EnableControls;

  cbTipoPesquisa.ItemIndex := 0;
  edPar.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFORTCE.btExcluirClick(Sender: TObject);

  procedure AtualizaDetails();
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from TceAditivo where tce_cod = ' + quPrincipal.FieldByname('tce_cod').Text);
      ExecSql;

      Sql.Clear;
      Sql.Add('Delete from TceAlteracao where tce_cod = ' + quPrincipal.FieldByname('tce_cod').Text);
      ExecSql;

      free;
    end;
  end;

  procedure AtualizaVaga();
  begin
    with TQuery.Create(nil) do
    begin
      qrypesquisa.close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.Text := 'select vag_acao from vaga where vag_cod=' + quPrincipal.FieldByname('vag_cod').Text;
      qrypesquisa.Open;

      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      if qrypesquisa.FieldByName('vag_acao').asstring = 'V' then
        Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc - 1,vag_qtde = vag_qtde - 1   where vag_cod =  ' + quPrincipal.FieldByname('vag_cod').Text)
      else
        Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc + 1 where vag_cod =  ' + quPrincipal.FieldByname('vag_cod').Text);

      ExecSql;

      Free;
    end;
  end;

  procedure AtualizaEstEncaminhado();
  begin
    with TQuery.Create(nil) do
    begin
      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;

      // seta Reprovado no candidato
      Sql.Clear;
      Sql.Add('Update Encaminhamento set eva_resultado = ''1''');
      Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      Sql.Add('and Est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      Free;
    end;
  end;

  procedure AtualizaPerfil();
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Estudante set est_situacao = ''N'' where est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      free;
    end;
  end;

begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      btEnter.SetFocus;
      AtualizaDetails();
      AtualizaPErfil();
      if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
        Atualizavaga();
      if (quPrincipal.FieldByName('tce_estenc').Value = '0') then
        AtualizaEstEncaminhado();

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
end;

procedure TFORTCE.btCancelarClick(Sender: TObject);
begin
  inherited;
  cbTipoPesquisa.ItemIndex := 0;
  Notebook3.PageIndex := 0;
  if quprincipal.State in [dsbrowse] = false then
    dmdta.CancelarRegistro(quprincipal);
  edPar.Clear;
  edPar.Text := quPrincipal.FieldByName('tce_cod').Text;
  if edPar.CanFocus then
    edPar.SetFocus;
  panel4.Enabled := false;
end;

procedure TFORTCE.edEmpCodExit(Sender: TObject);
var argumento, ordem: string;
  data1, data2: string;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    argumento := argumento + ' and t.emp_cod = ' + edEmpCod.Text;
  end
  else
    edEmpNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    4: argumento := argumento + ' and t.tce_situacao <> ''7''';
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
        // data inicial e final
          data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
          data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
            StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
  end;

{  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
    ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}
  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo, ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);


  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.edEmpCodDblClick(Sender: TObject);
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

procedure TFORTCE.LimpaCampos;
begin
  inherited;
  meTceAbert.Clear;
  meTceDtIni.Clear;
  meTceDtFim.Clear;
  meTceDtRes.Clear;
  meTceDtRet.Clear;
  meTceDtDec.Clear;
  meTceDtAval.Clear;
  meEnt1.Clear;
  meSai1.Clear;
  meEnt2.Clear;
  meSai2.Clear;
  dtc := '';
  Hr1 := ''; Hr2 := ''; Hr3 := ''; Hr4 := '';
  Hr5 := ''; Hr6 := ''; Hr7 := ''; Hr8 := '';
end;

procedure TForTce.calchora();
var
  hor: array[1..20] of string;
  HSemana, Acumula, h1, h2, h3, h4, h5, h6, h7, h8: TDateTime;
  totDias: Integer;
  tot1: Double;
  DiaInicial, DiaFinal, horarios: string;

  Semana, contador: integer;
  multiplicador: real;
  dias: array[1..7] of string;
  diassemana: integer;
  function Vdia(dia: string): boolean;
  begin

    if ((quPrincipal.FieldByName('tce_Hor' + dia + 'ini1').asstring <> '') and
      (quPrincipal.FieldByName('tce_Hor' + dia + 'fim1').asstring <> '')) or
      ((quPrincipal.FieldByName('tce_Hor' + dia + 'ini2').asstring <> '') and
      (quPrincipal.FieldByName('tce_Hor' + dia + 'fim2').asstring <> '')) then
      result := true
    else
      result := false;
  end;

  function PrimeiroDia: string;
  var
    dia: string;
  begin
    if (DBCheckBox7.Checked) and (not VDia('Sab')) then
      dia := 's�bado';
    if (DBCheckBox6.Checked) and (not VDia('Sex')) then
      Dia := 'sexta';
    if (DBCheckBox5.Checked) and (not VDia('Qui')) then
      Dia := 'quinta';
    if (DBCheckBox4.Checked) and (not VDia('Qua')) then
      Dia := 'quarta';
    if (DBCheckBox3.Checked) and (not VDia('Ter')) then
      Dia := 'ter�a';
    if (DBCheckBox2.Checked) and (not VDia('Seg')) then
      Dia := 'segunda';
    result := dia;
  end;

  function UltimoDia: string;
  var
    dia: string;
  begin

    if (DBCheckBox3.Checked) and (not VDia('ter')) then
      Dia := 'ter�a-feira';
    if (DBCheckBox4.Checked) and (not VDia('qua')) then
      Dia := 'quarta-feira';
    if (DBCheckBox5.Checked) and (not VDia('qui')) then
      Dia := 'quinta-feira';
    if (DBCheckBox6.Checked) and (not VDia('Sex')) then
      Dia := 'sexta-feira';
    if (DBCheckBox7.Checked) and (not VDia('Sab')) then
      dia := 's�bado';
    if (DBCheckBox8.Checked) and (not VDia('Dom')) then
      dia := 'domingo';
    result := dia;
  end;


begin

  dias[1] := 'um';
  dias[2] := 'dois';
  dias[3] := 'tres';
  dias[4] := 'qatro';
  dias[5] := 'cinco';
  dias[6] := 'seis';
  dias[7] := 'sete';
  diassemana := 0;
  dtc := '';

  if dmdta.qutcetce_domingo.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_segunda.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_terca.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_quarta.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_quinta.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_Sexta.AsString = '1' then
    inc(diassemana);
  if dmdta.qutcetce_Sabado.AsString = '1' then
    inc(diassemana);

  Horarios := '';
  if (hr1 = '') and (hr2 = '') then Exit;
  contador := 3;
  multiplicador := 4;
  semana := 0;
  try
    // Verifica Dias da semana  e horarios diferenciados

    if DBCheckBox2.Checked then
      inc(semana);
    if DBCheckBox3.Checked then
      inc(semana);
    if DBCheckBox4.Checked then
      inc(semana);
    if DBCheckBox5.Checked then
      inc(semana);
    if DBCheckBox6.Checked then
      inc(semana);
    if DBCheckBox7.Checked then
      inc(semana);
    if DBCheckBox8.Checked then
      inc(semana);

    HSemana := 0;
    Acumula := 0;
    //SEGUNDA
    if DBCheckBox2.Checked then
    begin
      if vdia('Seg') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegfim1').Value);
        dec(semana);

        if quPrincipal.FieldByName('tce_HorSegini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorSegfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorSegini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSegfim2').Value);
        horarios := horarios + ' horas nas segundas-feiras ';

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
    if DBCheckBox3.Checked then
    begin
      if vdia('Ter') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerfim1').Value)) * 24;
        dec(semana);

        Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerfim1').Value);

        if quPrincipal.FieldByName('tce_HorTerini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorTerfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorTerini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorTerfim2').Value);
        horarios := horarios + ' horas nas ter�as-feiras ';

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
    if DBCheckBox4.Checked then
    begin
      if vdia('Qua') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuaini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuafim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuaini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuafim1').Value);
        dec(semana);

        if quPrincipal.FieldByName('tce_HorQuaini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuaini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorQuafim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuafim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorQuaini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuaini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuafim2').Value);
        horarios := horarios + ' horas nas quartas-feiras ';

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
    if DBCheckBox5.Checked then
    begin
      if vdia('Qui') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuiini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuifim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuiini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuifim1').Value);
        dec(semana);

        if quPrincipal.FieldByName('tce_HorQuiini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuiini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorQuifim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuifim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorQuiini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuiini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorQuifim2').Value);
        horarios := horarios + ' horas nas quintas-feiras ';

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
    if DBCheckBox6.Checked then
    begin
      if vdia('Sex') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexfim1').Value);
        dec(semana);

        if quPrincipal.FieldByName('tce_HorSexini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorSexfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorSexini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSexfim2').Value);
        horarios := horarios + ' horas nas sextas-feiras ';

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

    if DBCheckBox7.Checked then
    begin
      if vdia('Sab') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabfim1').Value);
        dec(semana);
        if quPrincipal.FieldByName('tce_HorSabini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorSabfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorSabini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorSabfim2').Value);
        horarios := horarios + ' horas aos s�bados ';
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
    if DBCheckBox8.Checked then
    begin
      if vdia('Dom') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomfim1').Value)) * 24;
        Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomfim1').Value);
        dec(semana);

        if quPrincipal.FieldByName('tce_HorDomini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal.FieldByName('tce_HorDomfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal.FieldByName('tce_HorDomini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_HorDomfim2').Value);
        horarios := horarios + ' horas aos domingos ';

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

    // Fim verifica
    hor[1] := hr1[1];
    hor[2] := hr1[2];
    hor[3] := ':';
    hor[4] := hr1[4];
    hor[5] := hr1[5];
    //
    hor[6] := hr2[1];
    hor[7] := hr2[2];
    hor[8] := ':';
    hor[9] := hr2[4];
    hor[10] := hr2[5];
    //
    if hr3 <> '' then
    begin
      hor[11] := hr3[1];
      hor[12] := hr3[2];
      hor[13] := ':';
      hor[14] := hr3[4];
      hor[15] := hr3[5];
    end;

    //
    if hr4 <> '' then
    begin
      hor[16] := hr4[1];
      hor[17] := hr4[2];
      hor[18] := ':';
      hor[19] := hr4[4];
      hor[20] := hr4[5];
    end;

    // dia inicial e final
    diainicial := primeirodia();
    diafinal := ultimodia();
    if (diainicial <> '') and (diafinal <> '') then
      periodo := 'de ' + Diainicial + ' a ' + Diafinal + ' ';
    dtc := '';
    if semana > 0 then
    begin
      dtc := 'das ' + hor[1] + hor[2] + hor[3] + hor[4] + hor[5] + ' �s ' + hor[6] + hor[7] + hor[8] + hor[9] + hor[10];
      if (hr3 <> '') or (hr4 <> '') then
        dtc := dtc + ' e das ' + hor[11] + hor[12] + hor[13] + hor[14] + hor[15] + ' �s ' + hor[16] + hor[17] + hor[18] + hor[19] + hor[20];
    end;
    if ckEscala.Checked then
      dtc := 'durante ' + strzero(diassemana, 2) + ' (' + dias[diassemana] + ') dias da semana, conforme escala, ' + dtc;


    if (diainicial = '') and (diafinal = '') then
      dtc := horarios
    else
      dtc := dtc + ' horas' + horarios;
    // hor�rio de s�bado

    tot1 := arredondar(acumula * 1.1, 2);
    mtotal := tot1;
    //((h2 - h1) + (h4 - h3)) * totDias + ((h6 - h5) + (h8 - h7)) * 4;
    etotal := FloatToStr(tot1);
    STotal := FloatToStr(arredondar(Hsemana, 2));
    edsemana.Text := stotal;

    if quPrincipal.active then
    begin
      if quPrincipal.State = dsInsert then
      begin
        if Digitou then
          quPrincipal.FieldByName('tce_tothoras').Value := Tot1;
        eTotal := quPrincipal.FieldByName('tce_tothoras').Text;
      end
      else
      begin
        if Digitou then
        begin
          if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
          quPrincipal.FieldByName('tce_tothoras').Value := Tot1;

        end;
        eTotal := quPrincipal.FieldByName('tce_tothoras').Text;
      end;
    end;

    meEnt1.Text := hr1;
    meSai1.Text := hr2;
    meEnt2.Text := hr3;
    meSai2.Text := hr4;
    Digitou := False;
  except
  end;
end;

procedure TFORTCE.btImprimirClick(Sender: TObject);
var
  var1: variant;
  CRM, CRO, CRJ, CREF, Coren, CPP, Conselho, Inst, Emp: string;
  datac: string[37];
  tipoPessoa, Profissao: string;
  banco, agencia, conta, exte, datana, estadoesc: string;
  respOrientador, carOrientador, CodEsc, endesc, baiesc, cidadeEsc, cnpjesc, caresc, telesc, cepesc, nomeesc, RespEsc: string;
  inscemp, faxemp, estadoemp, endemp, baiemp, cidadeEmp, telemp, cepemp, cnpjemp, caremp, respemp, nomeemp: string;
  NumMatEsc, endest, cpfEst, baiest, cidadeEst, estadoEst, telest, cepest, rgest, ctpest, curcod, curest, nomeEst, turEst, serieEst, dataest: string;
  SuperEmp, AreaEst, OrientadorEst: string;
  at: array[1..5] of string;
  ce, ces, contador: integer;
  AreaSuperEst, ExpSuperEst, DireEsc, CoordEsc, SuperEst, CargoSuperEst, FormSuperEst: string;
  uce, dce: string;
  num: integer;
  vias, uni, dez, cen: string;
  centa, unida, dezen, cente, perAtu, tipobolsa: string;
  bolsa: Double;

  proximo, tce: integer;
  argumento, ordem: string;
  data1, data2: string;
  rdata1, rdata2, rdata3, rdata4: tdate;


  //*************************************************************//
  // Parte inicial - Busca dos dados para impress�o              //
  //*************************************************************//

  procedure completadados;
  var i, ValorInt: Integer;
    Valor, ValorCent: Double;
    ValString: string;
    Empresa, Funcionario: integer;
    Escola, FuncionarioEscola: integer;
  begin
    with qContrato do
    begin
      // Busca a dados da vaga
      if quPrincipal.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);
        Open;
        SuperEst := cbsuper.Text;
        //DmDta.BuscaCampo('vaga', 'vag_supervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        FormSuperEst := DmDta.quTceformacao.AsString;
        //DmDta.BuscaCampo('vaga', 'vag_formsupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        ExpSuperEst := DmDta.quTceTempo.AsString;
        //DmDta.BuscaCampo('vaga', 'vag_expsupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        CargoSuperEst := DmDta.quTceCargo.AsString;
        //DmDta.BuscaCampo('vaga', 'vag_cargSupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        AreaSuperEst := DmDta.quTceArea.asstring;
        //DmDta.BuscaCampo('vaga', 'vag_Areasupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        if not IsEmpty then
        begin
          first;
          for i := 1 to 5 do
          begin
            if Eof then break;
            at[i] := FieldByName('ati_nome').AsString;
            Next;
          end;
        end;
      end;

      Emp := DmDta.quTceemp_cod.text;
      bolsa := DBEdit8.field.Value;
      tipoBolsa := cbTipoBolsa.Text;

      empresa := DmDta.quTceemp_cod.asinteger;
      funcionario := 0;
      dmdta.PegaResponsavel(1, empresa, funcionario);

      // busca dados do perfil
      close;
      sql.clear;
      //sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      sql.add('select e.*, c.cur_nome  from Estudante E, Curso C,tb_bancos B where e.est_codbanco*=b.id_bancos and  e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);

      open;
      agencia := fieldByName('est_agencia').AsString;
      conta := fieldByName('est_conta').AsString;
      dataest := fieldByName('est_dtnasc').AsString;
      nomeEst := fieldByName('est_nome').AsString;
      datana := fieldbyname('est_dtnasc').asstring;
      endest := fieldbyname('est_endereco').asstring;
      if fieldbyname('est_numend').Text <> '' then
        endEst := endEst + ' ' + fieldbyname('est_numend').Text;
      if fieldbyname('est_apto').Text <> '' then
        endEst := endEst + ' - ' + fieldbyname('est_apto').Text;
      if fieldbyname('est_bloco').Text <> '' then
        endEst := endEst + ' - BLOCO ' + fieldbyname('est_bloco').Text;
      baiest := fieldbyname('est_bairro').asstring;
      cidadeEst := fieldByName('est_cidade').asstring;
      estadoEst := fieldByName('est_estado').asstring;
      telest := fieldbyname('est_fone1').asstring;
      // formata o telefone
      if telest <> '' then
        telest := '(' + Copy(telest, 1, 2) + ') ' + Copy(telest, 3, 4) + '-' + Copy(telest, 7, 4);
      cepest := fieldbyname('est_cep').asstring;
      // formata o CEP
      if cepEst <> '' then
        cepest := Copy(cepest, 1, 5) + '-' + Copy(cepest, 6, 3);
      rgest := fieldbyname('est_rg').asstring;
      cpfest := fieldbyname('est_cpf').asstring;
      // formata o CPF
      if cpfEst <> '' then
        cpfEst := Copy(cpfEst, 1, 3) + '.' + Copy(cpfEst, 4, 3) + '.' + Copy(cpfEst, 7, 3) + '-' + Copy(cpfEst, 10, 2);
      ctpest := fieldbyname('est_ctpsnum').asstring;
      serieest := fieldbyname('est_ctpsserie').asstring;
      curCod := fieldByName('cur_cod').asstring;
      curest := fieldbyname('cur_nome').asstring;
      Inst := fieldByName('inst_cod').asstring;
      peratu := fieldByName('pcu_anoatual').AsString;

      escola := strtoint(Inst);
      funcionarioEscola := 0;
      dmdta.PegaResponsavelEscola(1, Escola, funcionarioEscola);

      if fieldByName('pcu_peratual').AsString = '0' then
        perAtu := perAtu + '� ano'
      else
        perAtu := perAtu + '� per�odo';

      if fieldByName('pcu_turno').Asstring <> '' then
        case fieldByName('pcu_turno').AsInteger of
          0: turEst := 'manh�';
          1: turEst := 'tarde';
          2: turEst := 'noite';
          3: turEst := 'manh�/tarde';
          4: turEst := 'manh�/noite';
          5: turEst := 'tarde/noite';
        end;

      // busca dados da escola
      close;
      sql.clear;
    //  sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod where i.inst_cod = ' + Inst);
      sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and ' + inttostr(FuncionarioEscola) + ' = f.func_cod where i.inst_cod = ' + Inst);
      open;
      CodEsc := fieldbyname('inst_cod').asstring;
      nomeesc := fieldbyname('inst_nome').asstring;
      endesc := fieldbyname('inst_endereco').asstring;
      if fieldbyname('inst_numend').Text <> '' then
        endesc := endesc + ' ' + fieldbyname('inst_numend').Text;
      if fieldbyname('inst_sala').Text <> '' then
        endesc := endesc + ' - SALA ' + fieldbyname('inst_sala').Text;
      baiesc := fieldbyname('inst_bairro').asstring;
      cidadeEsc := fieldByName('inst_cidade').asstring;
      cnpjesc := fieldbyname('inst_cnpj').asstring;
      estadoesc := fieldbyname('inst_estado').asstring;
      // formata o CNPJ
      if cnpjEsc <> '' then
        cnpjesc := Copy(cnpjesc, 1, 2) + '.' + Copy(cnpjesc, 3, 3) + '.' + Copy(cnpjesc, 6, 3) + '/' +
          Copy(cnpjesc, 9, 4) + '-' + Copy(cnpjesc, 13, 2);
      caresc := fieldbyname('ifu_cargo').asstring; ;
      telesc := fieldbyname('inst_telefone').asstring;
      // formata o telefone
      if telesc <> '' then
        telesc := '(' + Copy(telesc, 1, 2) + ') ' + Copy(telesc, 3, 4) + '-' + Copy(telesc, 7, 4);
      cepesc := fieldbyname('inst_cep').asstring;
      // formata o CEP
      if cepesc <> '' then
        cepesc := Copy(cepesc, 1, 5) + '-' + Copy(cepesc, 6, 3);
      respEsc := fieldbyname('inst_nomerespcomp').asstring;

      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e left join Empfuncionario f on e.emp_cod = f.emp_cod and ' + inttostr(funcionario) + ' = f.func_cod where e.emp_cod = ' + Emp);
      open;

      Tipopessoa := fieldByName('emp_tipopessoa').AsString;
      Profissao := fieldByName('emp_profissao').AsString;
      telemp := fieldByName('emp_telefone').AsString;
      nomeemp := DmDta.quTceemp_nome.Text;
      endemp := fieldbyname('emp_endereco').asstring;
      if fieldbyname('emp_numend').Text <> '' then
        endemp := endemp + ' ' + fieldbyname('emp_numend').Text;
      if fieldbyname('emp_cjto').Text <> '' then
        endemp := endemp + ' - CJ. ' + fieldbyname('emp_cjto').Text;
      baiemp := fieldbyname('emp_bairro').asstring;
      cidadeEmp := fieldByName('emp_cidade').asstring;
      // formata o telefone
      if telemp <> '' then
        telemp := '(' + Copy(telemp, 1, 2) + ') ' + Copy(telemp, 3, 4) + '-' + Copy(telemp, 7, 4);
      cepemp := fieldbyname('emp_cep').asstring;
      // formata o CEP
      if cepemp <> '' then
        cepemp := Copy(cepemp, 1, 5) + '-' + Copy(cepemp, 6, 3);
      cnpjemp := fieldbyname('emp_cnpj').asstring;
      if cnpjemp <> '' then
      // formata o CNPJ
      begin
        cnpjemp := poemascara(cnpjemp);
        {(  Copy(cnpjemp, 1, 2) + '.' + Copy(cnpjemp, 3, 3) + '.' + Copy(cnpjemp, 6, 3) + '/' +
          Copy(cnpjemp, 9, 4) + '-' + Copy(cnpjemp, 13, 2);}
      end;

      if funcionario = 0 then
      begin
        respemp := '';
        caremp := '';
      end
      else
      begin
       // respemp := qrypesquisa.fieldbyname('Func_cod').asstring;
        qrypesquisa.Close;
        qrypesquisa.SQL.clear;
        qrypesquisa.sql.Add('select * from Empfuncionario where emp_cod =:empresa and  func_cod=' + inttostr(funcionario));
        qrypesquisa.ParamByName('empresa').asinteger := empresa;
        qrypesquisa.Open;
        respemp := qrypesquisa.fieldByName('efu_nome').Asstring;
        caremp := qrypesquisa.fieldbyname('efu_cargo').asstring;
      end;
      estadoemp := fieldByName('emp_estado').Asstring;
      inscemp := fieldbyname('Emp_inscest').Asstring;
      faxemp := fieldbyname('Emp_fax').AsString;
    end;

    ValString := FloatToStr(bolsa);
    Valor := StrToFloat(ValString);
    ValorInt := Trunc(Valor);
    ValorCent := (Valor - ValorInt) * 100;

    // valor por extenso da bolsa aux�lio
    if valorInt > 0 then
      exte := NumeroExtenso(ValorInt, 1);

    if ValorCent > 0 then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0', Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent), 2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent), 2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent) + 1, 2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent) + 1, 2);
      end;
    end;
    exte := AnsiLowerCase(exte);
  end;

  procedure dtcompleta(Dias: Boolean);
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'janeiro';
    me[2] := 'fevereiro';
    me[3] := 'mar�o';
    me[4] := 'abril';
    me[5] := 'maio';
    me[6] := 'junho';
    me[7] := 'julho';
    me[8] := 'agosto';
    me[9] := 'setembro';
    me[10] := 'outubro';
    me[11] := 'novembro';
    me[12] := 'dezembro';
   // if CodEsc <> '200' then
   //   dt := meTceAbert.Text
   // else
    dt := FormatDateTime('dd/mm/yyyy', diasuteis(5, StrToDate(meTceDtIni.Text)));
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
      datac := '' + d + ' dia(s) do m�s de ' + me[strtoint(m)] + ' de ' + a + ''
    else
      datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + ''
  end;

  //*************************************************************//
  // TCE - modelo normal                                         //
  //*************************************************************//
  procedure verfonte;
  begin
    if CodEsc = '200' then
      Var1.Font('Arial', 7)
    else
      Var1.Font('Arial', 8);
  end;
  // Impressao do TCE GERAL

  procedure imprimenova;
  var
    palavra: string;
  begin
    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    if codesc = '331' then
      var1.FileNew(dmDTA.EmpresaLogin.DirTemplate + 'tceufpr.dot')
    else
      if codesc = '200' then
        var1.FileNew(dmDTA.EmpresaLogin.DirTemplate + 'tceutfpr.dot')
      else
        var1.FileNew(dmDTA.EmpresaLogin.DirTemplate + 'tcepd1.dot');

    var1.editbookmark('tipo', 0, 0, 0, 1);

    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert(' OBRIGAT�RIO ')
    else
      var1.Insert(' N�O OBRIGAT�RIO ');

   // var1.editbookmark('numero', 0, 0, 0, 1);
    Var1.Insert('N� ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));

    var1.editbookmark('dia', 0, 0, 0, 1);
    dtcompleta(true);
    Var1.Insert(datac);
    var1.editbookmark('mes', 0, 0, 0, 1);
    var1.editbookmark('ano', 0, 0, 0, 1);
    var1.editbookmark('curitiba', 0, 0, 0, 1);
    var1.Insert('CURITIBA');

    // Estudante
    var1.editbookmark('estudante', 0, 0, 0, 1);
    Var1.Insert(nomeest);
    var1.editbookmark('curso', 0, 0, 0, 1);
    Var1.Insert(curEst);
    var1.editbookmark('ano', 0, 0, 0, 1);
    Var1.Insert(perAtu);

    var1.editbookmark('turno', 0, 0, 0, 1);
    Var1.Insert(turEst);
    var1.editbookmark('curso2', 0, 0, 0, 1);
    Var1.Insert(curEst);
    var1.editbookmark('ano2', 0, 0, 0, 1);
    Var1.Insert(perAtu);


    var1.editbookmark('datanascimento', 0, 0, 0, 1);
    Var1.Insert(dataest);
    var1.editbookmark('endereco', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(endEst));
    var1.editbookmark('bairro', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(baiEst));
    var1.editbookmark('cidade', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(cidadeEst));
    var1.editbookmark('cep', 0, 0, 0, 1);
    Var1.Insert(CepEst);
    var1.editbookmark('estado', 0, 0, 0, 1);
    Var1.Insert(estadoest);
    var1.editbookmark('cpf', 0, 0, 0, 1);
    Var1.Insert(cpfEst);

    var1.editbookmark('rg', 0, 0, 0, 1);
    Var1.Insert(rgEst);

    var1.editbookmark('telefone', 0, 0, 0, 1);
    Var1.Insert(telEst);

    // empresa
    var1.editbookmark('empresa', 0, 0, 0, 1);
    Var1.Insert(nomeemp);
    var1.editbookmark('enderecoempresa', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(endEmp));
    var1.editbookmark('bairroempresa', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(baiemp));
    var1.editbookmark('cidadeempresa', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(cidadeemp));
    var1.editbookmark('cepempresa', 0, 0, 0, 1);
    Var1.Insert(CepEmp);
    var1.editbookmark('estadoempresa', 0, 0, 0, 1);
    Var1.Insert(estadoemp);
    var1.editbookmark('cnpjempresa', 0, 0, 0, 1);
    Var1.Insert(cnpjemp);
    var1.editbookmark('telefoneempresa', 0, 0, 0, 1);
    Var1.Insert(telemp);
    var1.editbookmark('representanteempresa', 0, 0, 0, 1);
    Var1.Insert(respemp);
    var1.editbookmark('cargorepresentante', 0, 0, 0, 1);
    Var1.Insert(caremp);

    // Instituicao

    var1.editbookmark('instituicao', 0, 0, 0, 1);
    Var1.Insert(nomeesc);
    var1.editbookmark('enderecoinstituicao', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(endesc));
    var1.editbookmark('bairroinstituicao', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(baiesc));
    var1.editbookmark('cidadeinstituicao', 0, 0, 0, 1);
    Var1.Insert(AnsiUpperCase(cidadeesc));
    var1.editbookmark('cepinstituicao', 0, 0, 0, 1);
    Var1.Insert(CepEsc);
    var1.editbookmark('estadoinstituicao', 0, 0, 0, 1);
    Var1.Insert(estadoesc);
    var1.editbookmark('cnpjinstituicao', 0, 0, 0, 1);
    Var1.Insert(cnpjesc);
    var1.editbookmark('telefoneinstituicao', 0, 0, 0, 1);
    Var1.Insert(telesc);
    var1.editbookmark('representanteinstituicao', 0, 0, 0, 1);
    Var1.Insert(respEsc);
    var1.editbookmark('cargorepresentanteinstituicao', 0, 0, 0, 1);
    Var1.Insert(caresc);


    //var1.editbookmark('representanteinstituicao', 0, 0, 0, 1);
    //Var1.Insert(respEsc);
    //var1.editbookmark('cargorepresentanteinstituicao', 0, 0, 0, 1);
    //Var1.Insert(caresc);

  {
     var1.editbookmark('banco', 0, 0, 0, 1);
    Var1.Insert(banco);
    var1.editbookmark('agencia', 0, 0, 0, 1);
    Var1.Insert(agencia);
    var1.editbookmark('conta', 0, 0, 0, 1);
    Var1.Insert(conta);}

    // quadro
    var1.editbookmark('vigencia', 0, 0, 0, 1);
    Var1.Insert(meTceDtIni.Text + ' � ' + meTceDtfim.Text);

    if CKESCALA.Checked then
      PERIODO := '';

    var1.editbookmark('semana', 0, 0, 0, 1);
    Var1.Insert(periodo + '' + dtc);

    var1.editbookmark('totalhoras', 0, 0, 0, 1);
    Var1.Insert(Stotal);

    var1.editbookmark('valormensal', 0, 0, 0, 1);

    if Bolsa > 0 then
      Var1.Insert('R$ ' + FormatFloat('#,##0.00', bolsa) + ' (' + exte + ' / ' + lowercase(tipoBolsa) + ')')
    else
      Var1.Insert('R$ ________ (SEM REMUNERA��O)');

    var1.editbookmark('auxiliotransporte', 0, 0, 0, 1);

    if dmdta.quTcevagaAuxTransp.AsString = 'R' then
      Var1.Insert('Recarga no �Cart�o Transporte" fornecido pela URBS � Urbaniza��o de Curitiba � S.A., correspondente ao n�mero de dias em que o ESTUDANTE realizar o est�gio durante o m�s.');

    if dmdta.quTcevagaAuxTransp.AsString = 'P' then
      if dmdta.quTcevagaAuxTranspValor.asstring <> '' then
        Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$ ' + formatfloat('###,##0.00', dmdta.quTcevagaAuxTranspValor.value) + '(' + ansilower(pchar(Extenso(dmdta.quTcevagaAuxTranspValor.value))) + '). ')
      else
        Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  .');

    if dmdta.quTcevagaAuxTransp.AsString = 'T' then
    begin
      Var1.Insert('Meio de locomo��o oferecido pela pr�pria ');
      Var1.Bold;
      Var1.Insert('PARTE CONCEDENTE.');
      Var1.Bold;
    end;

    if dmdta.quTcevagaAuxTransp.AsString = 'O' then
      Var1.Insert(dmdta.quTcevagaAuxTranspTEXTO.AsString + '.');


    if at[1] <> '' then
    begin
      var1.editbookmark('atividade1', 0, 0, 0, 1);
      Var1.Insert('1. ' + at[1] + #13);
    end;

    if at[2] <> '' then
    begin
      var1.editbookmark('atividade2', 0, 0, 0, 1);
      Var1.Insert('2. ' + at[2] + #13);
    end;

    if at[3] <> '' then
    begin
      var1.editbookmark('atividade3', 0, 0, 0, 1);
      Var1.Insert('3. ' + at[3] + #13);
    end;

    if at[4] <> '' then
    begin
      var1.editbookmark('atividade4', 0, 0, 0, 1);
      Var1.Insert('4. ' + at[4] + #13);
    end;

    if at[5] <> '' then
    begin
      var1.editbookmark('atividade5', 0, 0, 0, 1);
      Var1.Insert('5. ' + at[5] + #13);
    end;

    var1.editbookmark('supervisor', 0, 0, 0, 1);
    Var1.Bold;
    Var1.Insert(cbsuper.Text);

    var1.editbookmark('cargosupervisor', 0, 0, 0, 1);

    Var1.Insert(dmDta.quTceCargo.AsString);
    Var1.Bold;
    var1.editbookmark('escolhas', 0, 0, 0, 1);
    if ckf1.Checked then
    begin

      Var1.Insert('Forma��o Acad�mica: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceFormacao.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

 //   var1.editbookmark('registrosupervisor', 0, 0, 0, 1);
    if ckr1.Checked then
    begin
      Var1.Insert('N�mero do registro no Conselho de Fiscaliza��o Profissional: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceregistro.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

   // var1.editbookmark('areasupervisor', 0, 0, 0, 1);

    if ckarea.Checked then
    begin
      Var1.Insert('�rea de atua��o: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTcearea.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

   // var1.editbookmark('outraformacao', 0, 0, 0, 1);
    if ckf2.Checked then
    begin
      Var1.Insert('Outras Forma��es: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceoutraformacao.AsString);
      if ckr2.Checked then
        Var1.Insert(' ' + DmDTA.quTceregistro2.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;


   // var1.editbookmark('temposupervisor', 0, 0, 0, 1);
    if cktempo.Checked then
    begin
      Var1.Insert('Tempo de experi�ncia comprovada: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTcetempo.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

    var1.editbookmark('orientador', 0, 0, 0, 1);
    Var1.Insert(respOrientador);

    var1.editbookmark('formacaoorientador', 0, 0, 0, 1);
    Var1.Insert(carOrientador);

    var1.editbookmark('sextag', 0, 0, 0, 1);
    if (CODESC = '699') or (CODESC = '54') or (CODESC = '716') then
    begin
      Var1.Bold;
      Var1.Insert('g) ');
      Var1.Bold;
      Var1.Insert('Aplica-se ao estagi�rio a legisla��o relacionada � sa�de e seguran�a no trabalho, sendo sua implementa��o de responsabilidade da ');
      Var1.Bold;
      Var1.Insert('PARTE CONCEDENTE.');
      Var1.Bold;
      Var1.Insert(#13);
    end;


    var1.editbookmark('setimad', 0, 0, 0, 1);
    if (CODESC = '699') or (CODESC = '54') or (CODESC = '716') then
      Var1.Insert('atrav�s do aluno, as datas de realiza��o das avalia��es escolares ou acad�micas.')
    else
      Var1.Insert('no in�cio do per�odo letivo, as datas de realiza��o das avalia��es escolares ou acad�micas.');

    if codesc <> '200' then
    begin
      var1.editbookmark('vias', 0, 0, 0, 1);
      if codesc = '331' then
        Var1.Insert('5 (cinco)')
      else
        Var1.Insert('4 (quatro)');
    end;

    qrypesquisa.close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and ordem=:ordem ');
    qrypesquisa.ParamByName('tce').asinteger := quprincipal.fieldbyname('tce_cod').asinteger;
    qrypesquisa.ParamByName('ordem').asinteger := 1;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio1', 0, 0, 0, 1);
      Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 2;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio2', 0, 0, 0, 1);
      Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 3;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio3', 0, 0, 0, 1);
      Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 4;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio4', 0, 0, 0, 1);
      Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    Screen.Cursor := crDefault;
    var1.AppShow;
  end;

begin
  SpeedButton11Click(Sender);
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
    completadados;
    dtCompleta(false);

   { InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    if rdEscolha.ItemIndex > 0 then
    begin
      if rdEscolha.ItemIndex = 0 then
        formSuperEst := DmDTA.quTceformacao.AsString;
      if rdEscolha.ItemIndex = 1 then
        formSuperEst := DmDTA.quTceOutraformacao.AsString;
      if rdEscolha.ItemIndex = 2 then
        formSuperEst := '';
    end;
    if rdEscolha.ItemIndex <> 2 then
    begin
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
    end;}

        //  gerar relatorios
    if quprincipal.FieldByName('datalei').AsString <> '' then
    begin
      atualiza.Close;
      atualiza.SQL.Clear;
      atualiza.SQL.Add(' insert into tceRelatorio (tce_cod,ordem,prev_data) values (:tce_cod,:ordem,:prev_data - 2) ');

      tce := quprincipal.fieldbyname('tce_cod').AsInteger;
      qrypesquisa.close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and prev_data between :inicio and :final ');
      qrypesquisa.ParamByName('tce').asinteger := quprincipal.fieldbyname('tce_cod').asinteger;
      rdata1 := primeiromes(quprincipal.fieldbyname('datalei').Value);
      rdata2 := proximomes(rdata1);
      rdata3 := proximomes(rdata2);
      rdata4 := proximomes(rdata3);

      qrypesquisa.parambyname('inicio').Value := rdata1 - 10;
      qrypesquisa.parambyname('final').Value := rdata1 + 10;
      qrypesquisa.Open;

      if qrypesquisa.Eof then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata1;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata2 - 10;
      qrypesquisa.parambyname('final').Value := rdata2 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata2;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;

      end;
      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata3 - 10;
      qrypesquisa.parambyname('final').Value := rdata3 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata3;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata4 - 10;
      qrypesquisa.parambyname('final').Value := rdata4 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata4;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;
    end;




    resporientador := DmDTA.quTceprofessororientador.AsString;
    InputQuery('Orientador', 'Professor Orientador', respOrientador);
    respOrientador := AnsiUpperCase(respOrientador);
    carOrientador := DmDTA.quTceorientadorCargo.AsString;
    InputQuery('Orientador', 'Formacao do Orientador de Est�gio', carOrientador);
    carOrientador := AnsiUpperCase(carOrientador);
    calchora;
    imprimenova;
//    Imprime; // Chama a rotina que imprime
  end;

  MudaAba := True;
end;

procedure TFORTCE.meEnt1Exit(Sender: TObject);
var
  linha: string;
begin
  if TMaskEdit(Sender).text <> '  :  ' then
  begin
    if not Validahora(TMaskEdit(Sender).Text) then
    begin
      TMAskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
    begin
      Salvou := True;

    end;
  end;

  if Salvou then
  begin
    if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
    if (meEnt2.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
      meIntervalo.Text := timetostr(strtotime(meent2.text) - strtotime(mesai1.text));

    if (meEnt1.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
    begin
      hr1 := ''; hr2 := ''; hr3 := ''; hr4 := '';
      if meEnt1.Text <> '  :  ' then
        hr1 := meEnt1.Text;
      if meSai1.Text <> '  :  ' then
        hr2 := meSai1.Text;
      if meEnt2.Text <> '  :  ' then
        hr3 := meEnt2.Text;
      if meSai2.Text <> '  :  ' then
        hr4 := meSai2.Text;
      if (meEnt1.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
        CalcHora();
    end;
  end;
end;

procedure TFORTCE.SpeedButton1Click(Sender: TObject);
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
    FORTAL := TFORTAL.Create(Self);
    FORTAL.SetaCodigo(quPrincipal.FieldByName('tce_cod').AsInteger, quPrincipal.FieldByName('vag_cod').AsInteger, quPrincipal.FieldByName('est_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORTAL.ShowModal;
  end;
  Mudaaba := True;
end;

procedure TFORTCE.meTceAbertExit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
    begin
      TMAskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
    if TMaskEdit(Sender).Name = 'meTceDtIni' then
      if meTceDtFim.Text = '  /  /    ' then
        meTceDtFim.Text := datetostr(IncMonth(strtodate(meTceDtIni.Text), 6) - 1);

  end;
end;

procedure TFORTCE.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit2DblClick(sender);
end;

procedure TFORTCE.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit3DblClick(sender);
end;

procedure TFORTCE.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(sender);
end;

procedure TFORTCE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
    vk_F6: btImprimirClick(Sender);
    vk_F7: SpeedButton1Click(sender);
    vk_F8: SpeedButton2Click(sender);
    vk_F9: SpeedButton3Click(sender);
    vk_F10: btImpressaoClick(sender);
    vk_F11: btSabadoClick(sender);
  end;
end;

procedure TFORTCE.meTceDtResExit(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal.State in [dsInsert, dsEdit])) then quPrincipal.Edit;
  if TMaskEdit(Sender).text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
      TMAskEdit(Sender).SetFocus
    else
    begin
      // Valida a data digitada, pq pode ser para frente
      if StrToDate(meTceDtRes.Text) <= Date then
        quPrincipal.FieldByName('tce_situacao').Value := '7';
    end;
  end
  else
    quPrincipal.FieldByName('tce_situacao').Value := '0';
end;

procedure TFORTCE.SpeedButton2Click(Sender: TObject);
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
    FORTAD := TFORTAD.Create(Self);
    FORTAD.SetaCodigo(quPrincipal.FieldByName('tce_cod').AsInteger);
    Screen.Cursor := crDefault;
    FORTAD.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORTCE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  quEncVaga.Close;
  qContrato.Close;
end;

procedure TFORTCE.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit3.Text <> '') and (quPrincipal.State = dsInsert) then
  begin
    if quPrincipal.Active then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit3.text);
        Open;

        if not IsEmpty then
        begin
          if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
          DmDta.quTcevag_qtde.value := FieldByName('vag_qtde').Value;
          DmDta.quTcevag_qtdepreenc.value := FieldByName('vag_qtdepreenc').Value;
          DmDta.quTceemp_cod.Value := FieldByName('emp_cod').Value;
          DmDta.quTceemp_nome.Text := FieldByName('emp_nome').Value;

          if not FieldByName('Vag_Escala').IsNull then
            DmDta.quTcetce_Escala.Text := FieldByName('Vag_Escala').Value;

          if not FieldByName('Vag_AuxTransp').IsNull then
            DmDta.quTcetce_AuxTransp.Text := FieldByName('Vag_AuxTransp').Value;

          if not FieldByName('Vag_AuxTranspTexto').IsNull then
            DmDta.quTceTce_AuxTranspTexto.value := FieldByName('Vag_AuxTranspTexto').Value;

          if not FieldByName('Vag_AuxTranspValor').IsNull then
            DmDta.quTceTce_AuxTranspvalor.Text := FieldByName('Vag_AuxTranspValor').Value;

          if not FieldByName('Vag_AuxAlim').IsNull then
            DmDta.quTcetce_AuxAlim.Text := FieldByName('Vag_AuxAlim').Value;
          if not FieldByName('Vag_AuxAlimtipo').IsNull then
            DmDta.quTcetce_AuxAlimTipo.Text := FieldByName('Vag_AuxAlimTipo').Value;
          if not FieldByName('Vag_AuxAlimTexto').IsNull then
            DmDta.quTceTce_AuxAlimTexto.Text := FieldByName('Vag_AuxAlimTexto').Value;
          if not FieldByName('Vag_AuxAlimValor').IsNull then
            DmDta.quTceTce_AuxAlimvalor.Text := FieldByName('Vag_AuxAlimValor').Value;

          if not FieldByName('Vag_Domingo').IsNull then
            DmDta.quTceTce_Domingo.Text := FieldByName('Vag_Domingo').Value;
          if not FieldByName('Vag_segunda').IsNull then
            DmDta.quTceTce_Segunda.Text := FieldByName('Vag_segunda').Value;
          if not FieldByName('Vag_terca').IsNull then
            DmDta.quTceTce_Terca.Text := FieldByName('Vag_terca').Value;
          if not FieldByName('Vag_quarta').IsNull then
            DmDta.quTceTce_Quarta.Text := FieldByName('Vag_quarta').Value;
          if not FieldByName('Vag_quinta').IsNull then
            DmDta.quTceTce_Quinta.Text := FieldByName('Vag_quinta').Value;
          if not FieldByName('Vag_sexta').IsNull then
            DmDta.quTceTce_Sexta.Text := FieldByName('Vag_sexta').Value;
          if not FieldByName('Vag_sabado').IsNull then
            DmDta.quTceTce_Sabado.Text := FieldByName('Vag_sabado').Value;

          if not FieldByName('Vag_horsegini1').IsNull then
            DmDta.quTcetce_horsegini1.Text := FieldByName('Vag_horsegini1').Value;
          if not FieldByName('Vag_horterini1').IsNull then
            DmDta.quTcetce_horterini1.Text := FieldByName('Vag_horterini1').Value;
          if not FieldByName('Vag_horquaini1').IsNull then
            DmDta.quTcetce_horquaini1.Text := FieldByName('Vag_horquaini1').Value;
          if not FieldByName('Vag_horquiini1').IsNull then
            DmDta.quTcetce_horquiini1.Text := FieldByName('Vag_horquiini1').Value;
          if not FieldByName('Vag_horsexini1').IsNull then
            DmDta.quTcetce_horsexini1.Text := FieldByName('Vag_horsexini1').Value;
          if not FieldByName('Vag_horsabini1').IsNull then
            DmDta.quTcetce_horsabini1.Text := FieldByName('Vag_horsabini1').Value;
          if not FieldByName('Vag_hordomini1').IsNull then
            DmDta.quTcetce_hordomini1.Text := FieldByName('Vag_hordomini1').Value;


          if not FieldByName('Vag_horsegini2').IsNull then
            DmDta.quTceTce_horsegini2.Text := FieldByName('Vag_horsegini2').Value;
          if not FieldByName('Vag_horterini2').IsNull then
            DmDta.quTceTce_horterini2.Text := FieldByName('Vag_horterini2').Value;
          if not FieldByName('Vag_horquaini2').IsNull then
            DmDta.quTceTce_horquaini2.Text := FieldByName('Vag_horquaini2').Value;
          if not FieldByName('Vag_horquiini2').IsNull then
            DmDta.quTceTce_horquiini2.Text := FieldByName('Vag_horquiini2').Value;
          if not FieldByName('Vag_horsexini2').IsNull then
            DmDta.quTceTce_horsexini2.Text := FieldByName('Vag_horsexini2').Value;
          if not FieldByName('Vag_horsabini2').IsNull then
            DmDta.quTceTce_horsabini2.Text := FieldByName('Vag_horsabini2').Value;
          if not FieldByName('Vag_hordomini2').IsNull then
            DmDta.quTceTce_hordomini2.Text := FieldByName('Vag_hordomini2').Value;

          if not FieldByName('Vag_horsegfim1').IsNull then
            DmDta.quTceTce_horsegfim1.Text := FieldByName('Vag_horsegfim1').Value;
          if not FieldByName('Vag_horterfim1').IsNull then
            DmDta.quTceTce_horterfim1.Text := FieldByName('Vag_horterfim1').Value;
          if not FieldByName('Vag_horquafim1').IsNull then
            DmDta.quTceTce_horquafim1.Text := FieldByName('Vag_horquafim1').Value;
          if not FieldByName('Vag_horquifim1').IsNull then
            DmDta.quTceTce_horquifim1.Text := FieldByName('Vag_horquifim1').Value;
          if not FieldByName('Vag_horsexfim1').IsNull then
            DmDta.quTceTce_horsexfim1.Text := FieldByName('Vag_horsexfim1').Value;
          if not FieldByName('Vag_horsabfim1').IsNull then
            DmDta.quTceTce_horsabfim1.Text := FieldByName('Vag_horsabfim1').Value;
          if not FieldByName('Vag_hordomfim1').IsNull then
            DmDta.quTceTce_hordomfim1.Text := FieldByName('Vag_hordomfim1').Value;

          if not FieldByName('Vag_horsegfim2').IsNull then
            DmDta.quTceTce_horsegfim2.Text := FieldByName('Vag_horsegfim2').Value;
          if not FieldByName('Vag_horterfim2').IsNull then
            DmDta.quTceTce_horterfim2.Text := FieldByName('Vag_horterfim2').Value;
          if not FieldByName('Vag_horquafim2').IsNull then
            DmDta.quTceTce_horquafim2.Text := FieldByName('Vag_horquafim2').Value;
          if not FieldByName('Vag_horquifim2').IsNull then
            DmDta.quTceTce_horquifim2.Text := FieldByName('Vag_horquifim2').Value;
          if not FieldByName('Vag_horsexfim2').IsNull then
            DmDta.quTceTce_horsexfim2.Text := FieldByName('Vag_horsexfim2').Value;
          if not FieldByName('Vag_horsabfim2').IsNull then
            DmDta.quTceTce_horsabfim2.Text := FieldByName('Vag_horsabfim2').Value;
          if not FieldByName('Vag_hordomfim2').IsNull then
            DmDta.quTceTce_hordomfim2.Text := FieldByName('Vag_hordomfim2').Value;


          if not FieldByName('vag_Intervalo').IsNull then
            meIntervalo.Text := FormatDateTime('hh:nn', FieldByName('vag_intervalo').Value);

          if not FieldByName('vag_horarioini1').IsNull then
            Hr1 := FormatDateTime('hh:nn', FieldByName('vag_horarioini1').Value);
          if not FieldByName('vag_horariofim1').IsNull then
            Hr2 := FormatDateTime('hh:nn', FieldByName('vag_horariofim1').Value);
          if not FieldByName('vag_horarioini2').IsNull then
            Hr3 := FormatDateTime('hh:nn', FieldByName('vag_horarioini2').Value);
          if not FieldByName('vag_horariofim2').IsNull then
            Hr4 := FormatDateTime('hh:nn', FieldByName('vag_horariofim2').Value);
          if not FieldByName('vag_valorbolsa').IsNull then
            DmDta.quTcetce_bolsa.Value := FieldByName('vag_valorbolsa').Value;
          if FieldByName('vag_tipobolsa').Value = '1' then
            cbTipoBolsa.ItemIndex := 1
          else
            cbTipoBolsa.ItemIndex := 0;

          if not VerificaVaga() then
          begin
            DBEdit3.SetFocus;
            Salvou := False;
          end
          else
            Salvou := True;
        end
        else
        begin
          if FieldByName('emp_nome').Text = '' then
          begin
            MSGERRO('Oportunidade inexistente. Selecione outra oportunidade!');
            DBEdit3.SetFocus;
            Salvou := False;
          end;
        end;

        Close;
        Free;
      end;
    end;
  end
  else if (DBEdit3.Text = '') then
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DBEdit9.Text := '';
      DBEdit10.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit5Exit(Sender: TObject);
var Idade, Unidade: string;
begin
  inherited;
  if (DBEdit5.Text <> '') then
  begin
    if quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEest_nome.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit5.Text));

      if DmDta.quTCEEst_nome.Text = '' then
      begin
        MSGERRO('Estudante inexistente. Selecione outro estudante!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
      begin
        Salvou := True;

        try
          RetornaIdade(FormatDateTime('dd/mm/yyyy', FOREST.F2DNasc), Idade, Unidade);

          if StrToInt(Idade) < 16 then
          begin
            MSGAVISO('Estudante menor de 16 anos!');
            DBEdit5.SetFocus;
            Salvou := False;
          end
          else
          begin
            if BuscaPerfil() then
              SelectNext(ActiveControl, True, True);
          end;
        except
        end;
      end;
    end;
  end
  else
  begin
    if (quPrincipal.Active) then
    begin
      if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEest_nome.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORTCE.edEstCodExit(Sender: TObject);
var argumento, ordem: string;
  data1, data2: string;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edEstCod.Text <> '' then
  begin
    edEstNome.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(edEstCod.Text));
    argumento := argumento + ' and t.est_cod = ' + edEstCod.Text;
  end
  else
    edEstNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    4: argumento := argumento + ' and t.tce_situacao <> ''7''';
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
        // data inicial e final
          data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
          data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
            StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
  end;

 { DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
    ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}

  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod   ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.edEstCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    edEstCod.Text := FOREST.F2Codigo;
    edEstNome.Text := FOREST.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;
  FOREST.Free;
end;

procedure TFORTCE.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if not DBEdit12.Field.IsNull then
    eTotal := DBEdit12.Text;
end;

procedure TFORTCE.Notebook1PageChanged(Sender: TObject);
begin
  inherited;
  if Notebook1.PageIndex = 0 then
    DBEdit4.Width := 278
  else
    DBEdit4.Width := 435;
end;

procedure TFORTCE.cbTipoSelecaoClick(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal.State in [dsInsert, dsEdit])) then quPrincipal.Edit;
end;

procedure TFORTCE.SpeedButton3Click(Sender: TObject);
var var1: variant;
  Inst, Emp: string;
  datac, nomeesc, funcesc, cargesc: string;
  areaemp, caremp, respemp, nomeemp: string;
  at: array[1..5] of string;
  TemAlteracao: boolean;
    // Parte da altera��o
  Ent1, Sai1, Ent2, Sai2, Vig: string;
  Bolsa: Double;
  CarSuperEst, CoordEsc, SuperEst, Curso: string;

  procedure completadados;
  var i: Integer;
  begin
    with qContrato do
    begin
      // Busca a dados da vaga
      if quPrincipal.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);
        Open;

        if not IsEmpty then
        begin
          first;

          for i := 1 to 5 do
          begin
            if Eof then break;
            at[i] := FieldByName('ati_nome').AsString;
            Next;
          end;
        end;
      end;

      Emp := DmDta.quTceemp_cod.Text;

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select E.*, C.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      Inst := fieldByName('inst_cod').asstring;
      Curso := fieldByName('cur_nome').asstring;

      // busca dados da escola
      close;
      sql.clear;
      sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i, InstFuncionario F where i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod and i.inst_cod = ' + Inst);
      open;
      nomeesc := fieldbyname('inst_nome').asstring;
      if Inst <> '331' then
        funcesc := fieldByName('inst_nomerespcomp').AsString
      else
        funcesc := '';
      cargesc := fieldByName('ifu_cargo').AsString;

      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e, Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod and e.emp_cod = ' + Emp);
      open;
      nomeemp := DmDta.quTceemp_nome.Text;
      areaemp := fieldByName('emp_ramo').asstring;
      respemp := fieldByName('efu_nome').Asstring;
      caremp := fieldbyname('efu_cargo').asstring; ;
    end;
  end;

  procedure BuscaAlteracao;
  begin
    with quBuscaAlteracao do
    begin
      ParamByName('tce_cod').AsInteger := DmDta.quTcetce_cod.Value;
      Open;

      TemAlteracao := not IsEmpty;

      if TemAlteracao then
      begin
        Last;
        Vig := FieldByName('tal_vigencia').AsString;
        Ent1 := FormatDateTime('hh:nn', FieldByName('tal_horarioini1').Value);
        Sai1 := FormatDateTime('hh:nn', FieldByName('tal_horariofim1').Value);
        if not FieldByName('tal_horarioini2').IsNull then
          Ent2 := FormatDateTime('hh:nn', FieldByName('tal_horarioini2').Value);
        if not FieldByName('tal_horariofim2').IsNull then
          Sai2 := FormatDateTime('hh:nn', FieldByName('tal_horariofim2').Value);
        Bolsa := FieldByName('tal_novabolsa').AsFloat;
      end;

      Close;
    end;
  end;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'Janeiro';
    me[2] := 'Fevereiro';
    me[3] := 'Mar�o';
    me[4] := 'Abril';
    me[5] := 'Maio';
    me[6] := 'Junho';
    me[7] := 'Julho';
    me[8] := 'Agosto';
    me[9] := 'Setembro';
    me[10] := 'Outubro';
    me[11] := 'Novembro';
    me[12] := 'Dezembro';
    if not TemAlteracao then
      dt := meTceAbert.Text
    else
      dt := Vig;
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
    datac := d + ' de ' + me[strtoint(m)] + ' de ' + a + '. ';
  end;

  procedure Imprime;
  begin
    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio + 'PlanoEstagio.dot');

    Var1.NextCell;
    var1.Insert('PLANO DE EST�GIO');
    Var1.NextCell;
    var1.Insert('Curitiba, ' + datac);
    Var1.NextCell;
    var1.Insert('Institui��o de Ensino: ');
    Var1.NextCell;
    Var1.Insert(nomeEsc);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Insert('Nome do(a) estagi�rio(a): ');
    Var1.NextCell;
    Var1.Insert(DmDta.quTceest_nome.Text);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Insert('Orientador(a) na Institui��o de Ensino: ');
    Var1.NextCell;
    Var1.Insert(funcesc);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Empresa: ');
    Var1.Bold;
    Var1.Insert(nomeEmp + #13);
    Var1.Insert('�rea de Est�gio: ' + AreaEmp + #13);
    Var1.Insert('Nome do(a) Supervisor(a): ' + RespEmp + #13);
    Var1.Insert('Forma��o Profissional: ' + CarEmp);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Per�odo de Est�gio: ');
    Var1.Bold;
    // Testa se tem altera��o
    if not TemAlteracao then
      Var1.Insert(DmDta.quTcetce_dataini.Text + ' at� ' + DmDta.quTcetce_datafim.Text)
    else
      Var1.Insert(Vig + ' at� ' + DmDta.quTcetce_datafim.Text);
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Hor�rio: ');
    Var1.Bold;

    // Testa se tem termo de altera��o emitido
    if not TemAlteracao then
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if meEnt2.Text <> '  :  ' then
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text + ' / ' + meEnt2.Text + ' at� ' + meSai2.Text)
      else
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text);
    end
    else
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if Ent2 <> '' then
        Var1.Insert(Ent1 + ' at� ' + Sai1 + ' / ' + Ent2 + ' at� ' + Sai2)
      else
        Var1.Insert(Ent1 + ' at� ' + Sai1);
    end;

    Var1.NextCell;

    if Inst <> '385' then
    begin
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa.Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora')
      else
        Var1.Insert(' / M�s');

      Var1.nextCell;
      Var1.Bold;
      Var1.Insert('Demais Benef�cios:');
    end
    else
    begin
      Var1.bold;
      var1.Insert('Carga Hor�ria Mensal: ');
      Var1.Bold;
      Var1.Insert(FormatFloat('0.00', DmDta.quTcetce_tothoras.AsFloat));
      Var1.NextCell;
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa.Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora')
      else
        Var1.Insert(' / M�s');
    end;
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Justificativa: ');
    Var1.Bold;
    Var1.Insert('Permitir ao estudante desenvolver na pr�tica a teoria adquirida, ');
    Var1.Insert('mensurar suas possibilidades de realiza��o pessoal e profissional, ');
    Var1.Insert('adquirir uma atitude de trabalho sistematizado, desenvolvendo a ');
    Var1.Insert('consci�ncia de produtividade pelo exerc�cio da observa��o, do senso ');
    Var1.Insert('cr�tico e da criatividade, em situa��o real de trabalho.');
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Objetivos do Est�gio: ');
    Var1.Bold;
    Var1.Insert('Construir uma vis�o da empresa, onde se envolva mais conhecimento. ');
    Var1.Insert('Possibilitar um novo padr�o de ensino, onde o supervisor e aluno construam ');
    Var1.Insert('o conhecimento. Desenvolver a��es t�cnicas eficazes de an�lises a partir de ');
    Var1.Insert('projetos de pesquisas, buscando a qualidade na produ��o.');
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Atividades a Serem Desenvolvidas: ');
    Var1.Bold;

    if (at[1] <> '') and (at[2] = '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
      Var1.Insert(at[1] + '.')
    else if (at[1] <> '') and (at[2] <> '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(' e ' + at[2] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(' e ' + at[3] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(' e ' + at[4] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] <> '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(', ' + at[4]);
      Var1.Insert(' e ' + at[5] + '.');
    end;

    Var1.NextCell;
    if Inst <> '331' then
    begin
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Professor(a) Orientador(a) na I.E.');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Representante do CETEFE');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Estagi�rio(a)');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Unidade Concedente');
    end
    else
    begin
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Comiss�o Orientadora de Est�gio');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Representante do CETEFE');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Representante da UNIDADE CONCEDENTE');
      Var1.NextCell;
      Var1.Insert(#13 + #13);
      Var1.Insert('_________________________________' + #13);
      Var1.Insert('Estudante');
    end;

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure ImprimeUniandrade;
  begin
    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio + 'PlanoEstagio1.dot');
    Var1.CenterPAra;
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('arial', 13);
    Var1.Bold;
    Var1.Insert('PLANO DE EST�GIO');
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('arial', 9);
    var1.RightPara;
    var1.Insert('Curitiba, ' + datac + #13 + #13 + #13 + #13);
    Var1.JustifyPara;
    Var1.Bold;
    Var1.Insert('Institui��o de Ensino: ');
    Var1.Bold;
    Var1.Insert(nomeEsc + #13 + #13 + #13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Nome do(a) estagi�rio(a): ');
    Var1.Bold;
    Var1.Insert(DmDta.quTceest_nome.Text + #13 + #13 + #13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Orientador(a) na Institui��o de Ensino: ');
    Var1.Bold;
    Var1.Insert(CoordEsc + #13);
    Var1.Bold;
    Var1.Insert('Cargo: ');
    Var1.Bold;
    Var1.Insert('COORDENADOR DO CURSO DE ' + curso + #13);
    var1.Insert(#13 + #13);
    Var1.Bold;
    Var1.Insert('Empresa: ');
    Var1.Bold;
    Var1.Insert(nomeEmp + #13);
    Var1.Bold;
    Var1.Insert('�rea de Est�gio: ');
    Var1.Bold;
    Var1.Insert(curso + #13);
    Var1.Bold;
    Var1.Insert('Nome do(a) Supervisor(a): ');
    Var1.Bold;
    Var1.Insert(SuperEst + #13);
    Var1.Bold;
    Var1.Insert('Cargo: ');
    Var1.Bold;
    Var1.Insert(CarSuperEst);
    Var1.Bold;
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Per�odo de Est�gio: ');
    Var1.Bold;

    // Testa se tem altera��o
    if not TemAlteracao then
      Var1.Insert(DmDta.quTcetce_dataini.Text + ' at� ' + DmDta.quTcetce_datafim.Text + #9)
    else
      Var1.Insert(Vig + ' at� ' + DmDta.quTcetce_datafim.Text + #9);

    Var1.Bold;
    Var1.Insert('Hor�rio: ');
    Var1.Bold;

    // Testa se tem termo de altera��o emitido
    if not TemAlteracao then
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if meEnt2.Text <> '  :  ' then
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text + ' / ' + meEnt2.Text + ' at� ' + meSai2.Text)
      else
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text);
    end
    else
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if Ent2 <> '' then
        Var1.Insert(Ent1 + ' at� ' + Sai1 + ' / ' + Ent2 + ' at� ' + Sai2)
      else
        Var1.Insert(Ent1 + ' at� ' + Sai1);
    end;

    Var1.Insert(#13);

    if Inst <> '385' then
    begin
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa.Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert(DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora' + #9)
      else
        Var1.Insert(' / M�s' + #9);

      Var1.Insert(#13 + #13 + #13);
    end
    else
    begin
      Var1.bold;
      var1.Insert('Carga Hor�ria Mensal: ');
      Var1.Bold;

      Var1.Insert(FormatFloat('0.00', DmDta.quTcetce_tothoras.AsFloat) + #9);

      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa.Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert(DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora' + #9)
      else
        Var1.Insert(' / M�s' + #9);
      Var1.Insert(#13 + #13 + #13);
    end;

    Var1.Bold;
    Var1.Insert(#13 + 'Justificativa:' + #13);
    Var1.Insert('Permitir ao estudante desenvolver na pr�tica a teoria adquirida, ');
    Var1.Insert('mensurar suas possibilidades de realiza��o pessoal e profissional, ');
    Var1.Insert('adquirir uma atitude de trabalho sistematizado, desenvolvendo a ');
    Var1.Insert('consci�ncia de produtividade pelo exerc�cio da observa��o, do senso ');
    Var1.Insert('cr�tico e da criatividade, em situa��o real de trabalho.' + #13 + #13 + #13);

    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Objetivos do Est�gio: ');
    Var1.Bold;
    Var1.Insert('Construir uma vis�o da empresa, onde se envolva mais conhecimento. ');
    Var1.Insert('Possibilitar um novo padr�o de ensino, onde o supervisor e aluno construam ');
    Var1.Insert('o conhecimento. Desenvolver a��es t�cnicas eficazes de an�lises a partir de ');
    Var1.Insert('projetos de pesquisas, buscando a qualidade na produ��o.' + #13 + #13 + #13);

    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Atividades a serem desenvolvidas: ');
    Var1.Bold;

    if (at[1] <> '') and (at[2] = '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
      Var1.Insert(at[1] + '.')
    else if (at[1] <> '') and (at[2] <> '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(' E ' + at[2] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(' E ' + at[3] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(' E ' + at[4] + '.');
    end
    else if (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] <> '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(', ' + at[4]);
      Var1.Insert(' E ' + at[5] + '.');
    end;


    var1.Insert(#13 + #13 + #13 + #13);
    var1.Font('arial', 8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial', 8);
    var1.Insert(#13 + '         Representante da INSTITUI��O DE ENSINO                          Coordenador de Curso na INSTITUI��O DE ENSINO ');
    var1.Insert(#13 + #13 + #13 + #13 + #13 + #13);
    var1.Font('arial', 8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial', 8);
    var1.Insert(#13 + '         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE         ');
    var1.Insert(#13 + #13 + #13 + #13 + #13 + #13);
    var1.Font('arial', 8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial', 8);
    var1.Insert(#13 + '                                Estudante                                                                                Representante do CETEFE');

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

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
    BuscaAlteracao;
    completadados;
    dtcompleta;
    if Inst = '137' then
    begin
      InputQuery('Coordenador', 'Coordenador do Curso', CoordEsc);
      CoordEsc := AnsiUpperCase(CoordEsc);
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      InputQuery('Supervisor', 'Cargo do Supervisor de Est�gio', CarSuperEst);
      CarSuperEst := AnsiUpperCase(CarSuperEst);
      imprimeUniandrade;
    end
    else
      imprime;
    Screen.Cursor := crDefault;
  end;
  MudaAba := True;
end;

procedure TFORTCE.meTceAbertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Digitou := True;
  inherited;
  if (not (quPrincipal.State in [dsInsert, dsEdit])) then quPrincipal.Edit;
end;

procedure TFORTCE.DBLookupComboBox1Exit(Sender: TObject);
var DtNasc, idade, unidade: string;
begin
  inherited;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    DtNasc := DmDta.BuscaCampo('Estudante', 'est_dtnasc', 'est_cod', quEncVagaEst_cod.AsInteger);

    try
      RetornaIdade(DtNasc, Idade, Unidade);

      if StrToInt(Idade) < 16 then
      begin
        MSGAVISO('Estudante menor de 16 anos!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
      begin
        if BuscaPerfil() then
          SelectNext(ActiveControl, True, True);
      end;
    except
    end;
  end;
end;

procedure TFORTCE.meTceDtRetKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
end;

procedure TFORTCE.meTceDtRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Digitou := True;
  if (not (quPrincipal.State in [dsInsert, dsEdit])) then quPrincipal.Edit;
  Retorno := True;
end;

procedure TFORTCE.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORTCE.edEstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEstCodDblClick(Sender);
end;

procedure TFORTCE.LimpaParametros;
begin
  inherited;
  edPar.Clear;
  edEstCod.Clear;
  edEstNome.Clear;
  edEmpCod.Clear;
  edEmpNome.Clear;
  edInstCod.Clear;
  edInstNome.Clear;
end;

procedure TFORTCE.edInstCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edInstCod.Text := FORINS.F2Codigo;
    edInstNome.Text := FORINS.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;

  FORINS.Free;
end;

procedure TFORTCE.edInstCodExit(Sender: TObject);
var
  ordem, argumento: string;
  data1, data2: string;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edInstCod.Text <> '' then
  begin
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text));
    argumento := argumento + ' and e.inst_cod = ' + edInstCod.Text;
  end
  else
    edInstNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    4: argumento := argumento + ' and t.tce_situacao <> ''7''';
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
        // data inicial e final
          data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
          data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
            StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';


        // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
  end;
//  ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
//    ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',

  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edInstCodDblClick(Sender);
end;

procedure TFORTCE.meData1Exit(Sender: TObject);
begin
  inherited;
  if (meData2.Text = '  /  /    ') and (meData1.Text <> '  /  /    ') then
    meData2.Text := meData1.Text;
end;

procedure TFORTCE.meData2Exit(Sender: TObject);
var
  ano, mes, dia: Word;
  ordem, argumento, campo, data: string;
  data1, data2: string;
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 5 then
    Campo := 't.tce_data'
  else if cbTipoPesquisa.ItemIndex = 6 then
    Campo := 't.tce_dataini'
  else if cbTipoPesquisa.ItemIndex = 7 then
    Campo := 't.tce_datafim'
  else if cbTipoPesquisa.ItemIndex = 8 then
    Campo := 't.tce_datares';

  ordem := 't.tce_cod';

  if meData1.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData1.Text), ano, mes, dia);
    data := IntToStr(mes) + '/' + IntToStr(dia) + '/' + IntToStr(ano);
    argumento := campo + ' >= ''' + data + '''';
  end;
  if meData2.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData2.Text), ano, mes, dia);
    data := IntToStr(mes) + '/' + IntToStr(dia) + '/' + IntToStr(ano);
    if argumento <> '' then argumento := argumento + ' and ';
    argumento := argumento + campo + ' <= ''' + data + '''';
  end;

  if (Ordem <> '') and (Argumento <> '') then
  begin
    argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod and ' + argumento;
    // situa��o
    case rgSituacao.ItemIndex of
      4: argumento := argumento + ' and t.tce_situacao <> ''7''';
      0: argumento := argumento + ' and t.tce_situacao = ''0''';
      1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
      2:
        begin
          argumento := argumento + ' and t.tce_situacao = ''7''';
        // data de rescis�o
          if (edAno.Text <> '') and (edMes.Text <> '') then
          begin
          // data inicial e final
            data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
            data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
              StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';

          // verifica se j� n�o existe cl�usula where
            argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
          end;
        end;
    end;

    {DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
      ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
      ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
      'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}

    DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
      ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
      ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
      ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod   ),0)   DTFinal ',
      'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

    quPrincipal.Last;
    estadoNavegando();
  end;
end;

procedure TFORTCE.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('N�o h� registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrTCE := TQRTCE.Create(Self);
  Screen.Cursor := crDefault;
  qrTCE.Preview;
  qrTCE.Free;
//  GerarExcel(DmDta.quTce, Caption);
end;

procedure TFORTCE.btSabadoClick(Sender: TObject);
begin
  inherited;
 { if not DBCheckBox7.Checked then
  begin
    MSGAVISO('Selecione o s�bado para habilitar essa op��o!');
    Exit;
  end;}
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
    FORTCED := TFORTCED.Create(Self);
    Screen.Cursor := crDefault;
    fortced.domingo.Enabled := DBCheckBox8.Checked;
    fortced.segunda.Enabled := DBCheckBox2.Checked;
    fortced.terca.Enabled := DBCheckBox3.Checked;
    fortced.quarta.Enabled := DBCheckBox4.Checked;
    fortced.quinta.Enabled := DBCheckBox5.Checked;
    fortced.sexta.Enabled := DBCheckBox6.Checked;
    fortced.sabado.Enabled := DBCheckBox7.Checked;
    FORTCED.ShowModal;

    // recalcula o hor�rio
    if (not quPrincipal.FieldByName('tce_horsabini1').IsNull) then
      Hr5 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabini1').Value)
    else
      Hr5 := '';
    if (not quPrincipal.FieldByName('tce_horsabfim1').IsNull) then
      Hr6 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabfim1').Value)
    else
      Hr6 := '';
    if (not quPrincipal.FieldByName('tce_horsabini2').IsNull) then
      Hr7 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabini2').Value)
    else
      Hr7 := '';
    if (not quPrincipal.FieldByName('tce_horsabfim2').IsNull) then
      Hr8 := FormatDateTime('hh:nn', quPrincipal.FieldByName('tce_horsabfim2').Value)
    else
      Hr8 := '';
    // chama rotina que faz o rec�lculo das horas
    Digitou := True;
    CalcHora();
  end;
  MudaAba := True;
end;

procedure TFORTCE.edCurCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORCUR := TFORCUR.Create(Self);
  FORCUR.F2 := True;
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

  if FORCUR.F2Codigo <> '' then
  begin
    edCurCod.Text := FORCUR.F2Codigo;
    edCurNome.Text := FORCUR.F2Nome;
    SelectNext(ActiveControl, True, True);
  end;

  FORCUR.Free;
end;

procedure TFORTCE.edCurCodExit(Sender: TObject);
var
  ordem, argumento: string;
  data1, data2: string;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edCurCod.Text <> '' then
  begin
    edCurNome.Text := DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(edCurCod.Text));
    argumento := argumento + ' and e.cur_cod = ' + edCurCod.Text;
  end
  else
    edCurNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    4: argumento := argumento + ' and t.tce_situacao <> ''7''';
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
        // data inicial e final
          data1 := '''01' + edMes.Text + '/' + edAno.Text + '''';
          data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
            StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';
        // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
  end;

 { DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
    ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}
  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod  ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.edCurCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edCurCodDblClick(sender);
end;

procedure TFORTCE.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  lblAno.Visible := rgSituacao.ItemIndex = 2;
  edAno.Visible := rgSituacao.ItemIndex = 2;
  edMes.Visible := rgSituacao.ItemIndex = 2;

  if edAno.Visible then edAno.SetFocus;

  parametroModificado := true;
  // chama o exit do campo do page de cima
  case Notebook3.PageIndex of
    0: edParExit(sender);
    1: edEmpCodExit(sender);
    2: edEstCodExit(sender);
    3: edInstCodExit(sender);
    4: edCurCodExit(sender);
    5, 6, 7, 8: meData2Exit(sender);
    9: edoptexit(sender);
  end;
end;

procedure TFORTCE.edMesExit(Sender: TObject);
begin
  inherited;
  // chama o exit do campo do page de cima
  case Notebook3.PageIndex of
    0: edParExit(sender);
    1: edEmpCodExit(sender);
    2: edEstCodExit(sender);
    3: edInstCodExit(sender);
    4: edCurCodExit(sender);
    5, 6, 7, 8: meData2Exit(sender);
  end;
end;

procedure TFORTCE.DBCheckBox2Click(Sender: TObject);
begin
  inherited;
  if pgPrincipal.ActivePageIndex = 1 then
  begin
    Digitou := True;
    CalcHora;
  end;
end;

procedure TFORTCE.DBCheckBox7Click(Sender: TObject);
begin
  inherited;
  if pgPrincipal.ActivePageIndex = 1 then
    Digitou := True;
end;

procedure TFORTCE.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('N�o h� registros para imprimir!');
    Exit;
  end;
  GerarExcel(DmDta.quTce, Caption);
end;

procedure TFORTCE.edOptExit(Sender: TObject);
var
  ordem, argumento: string;
  data1, data2: string;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edopt.Text <> '' then
  begin
    edoptNome.Text := DmDta.BuscaCampo('Vaga', 'vag_setor', 'vag_cod', StrToInt(edopt.Text));
    argumento := argumento + ' and t.vag_cod = ' + edopt.Text;
  end
  else
    edoptNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    4: argumento := argumento + ' and t.tce_situacao <> ''7''';
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
        // data inicial e final
          data1 := '''01' + edMes.Text + '/' + edAno.Text + '''';
          data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
            StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';
        // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
  end;
  {DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao, ' +
    ' (select top 1 tpr_dataemi from tceaditivo where tce_cod = t.tce_cod order by PRG_cod desc   ) DTAditivo ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);}

  DMDta.montaSql(quPrincipal, 't.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada,V.vag_selecao, m.emp_nome,e.est_fone1,e.est_fone2,e.est_recado,e.est_nomerecado,' +
    ' coalesce((select min(tal_vigencia) from tcealteracao where tce_cod = t.tce_cod  and tal_vigencia >= ''25/09/2008''),0) DTAlteracao, ' +
    ' coalesce((select min(tpr_dataini) from tceaditivo where tce_cod = t.tce_cod  and tpr_dataini >= ''25/09/2008'' ),0)   DTAditivo , ' +
    ' coalesce((select max(tpr_datafim) from tceaditivo where tce_cod = t.tce_cod   ),0)   DTFinal ',
    'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);

  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('N�o h� registros para imprimir!');
    Exit;
  end;
  DmDta.quTceest_fone1.Visible := true;
  DmDta.quTceest_fone2.Visible := true;
  DmDta.quTceest_recado.Visible := true;
  DmDta.quTceest_nomerecado.Visible := true;
  GerarExcel(DmDta.quTce, Caption);
  DmDta.quTceest_fone1.Visible := false;
  DmDta.quTceest_fone2.Visible := false;
  DmDta.quTceest_recado.Visible := false;
  DmDta.quTceest_nomerecado.Visible := false;
end;

procedure TFORTCE.CriaCampo(Tabela, campo, chave, condicao: string);
begin
  qrypesquisa.CLOSE;
  qrypesquisa.SQL.clear;
  qrypesquisa.sql.text := 'select * from ' + tabela + ' where ' + chave + ' = -1';
  qrypesquisa.Open;
  if qrypesquisa.FieldList.IndexOf(campo) < 0 then
  begin
    try
      qrypesquisa.Close;
      qrypesquisa.SQL.Clear;
      qrypesquisa.SQL.Add('alter table ' + tabela + ' add  ' + campo + ' ' + condicao + ' ');
      qrypesquisa.ExecSQL;
    except
      showmessage('Campo J� foi Criado');
    end;
  end;
end;

procedure TFORTCE.rdauxilioChange(Sender: TObject);
begin
  inherited;
  nb.ActivePage := 'default';
  if rdauxilio.ItemIndex = 1 then
    nb.ActivePage := 'valor';
  if rdauxilio.ItemIndex = 3 then
    nb.ActivePage := 'Texto';
end;

procedure TFORTCE.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not (DmDta.qutce.State in [dsInsert, dsEdit]) then dmDta.qutce.Edit;
  DmDta.quTceTce_Auxtransp.AsString := '';
  rdauxilio.ItemIndex := -1;
  DmDta.quTceTce_Auxtransptexto.AsString := '';
  DmDta.quTceTce_Auxtranspvalor.asstring := '';
end;

procedure TFORTCE.cbSuperExit(Sender: TObject);
var
  empresa, Total: integer;
begin
  begin
    if (quPrincipal.State in [dsInsert, dsEdit]) then
    begin
      empresa := qrysupervisoremp_cod.AsInteger;
      DmDta.quTceEmp_cod2.AsInteger := empresa;

      if (DmDta.quTceEst_cod.Asstring <> '') and
        (DmDta.quTceFunc_cod.Asstring <> '') then
      begin

        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          Sql.Clear;

          Sql.add('select EmpFuncRest.*,Instituicao.inst_nome from EmpFuncRest,Instituicao where  Instituicao.Inst_cod = EmpFuncRest.inst_cod and  emp_cod=' + DmDta.quTceEmp_cod2.AsSTRING + ' and Func_cod = ' + DmDta.quTceFunc_cod.AsString + ' and  Instituicao.inst_cod=' + DmDta.BuscaCampo('Estudante', 'inst_cod', 'Est_cod', DmDta.quTceEst_cod.Asinteger));
          Open;
          if eof = false then
          begin
            showmessage('A Institui��o de ensino do Estudante possui restri��es quanto a este Supervisor!!');
            DmDta.quTceFunc_cod.AsString := '';
            Close;
            Free;
            exit;
          end;
          Close;
          Free;
        end;
      end;
     ////
      if (DmDta.quTceFunc_cod.Asstring <> '') then
      begin
        with TQuery.Create(nil) do
        begin
          Total := 0;
          DatabaseName := DATABASE_NAME;
          Sql.Clear;
          sql.Text := ' select TOP 1 (select count(T.tce_cod) TotalT  from  tce t ' +
            ' where  T.FUNC_COD IS NOT NULL AND  T.FUNC_COD = :func ' +
            '  AND  t.tce_situacao <> ''7'' and T.EMP_COD2=:empresa ' +
            '  AND  t.tce_cod not in (select tce_cod from tcealteracao )) + ' +
            ' (select count(X.tce_cod)  TotalN  from  tcealteracao x where ' +
            ' x.tce_cod in (select tce_cod from tce t where  t.tce_situacao <> ''7'') ' +
            ' AND X.FUNC_COD=:func AND X.EMP_COD2=:empresa AND X.func_cod IS NOT NULL  and ' +
            '   X.tal_cod = (select top 1 tal_cod from tcealteracao where tce_cod = x.tce_cod order by tal_cod desc )) ' +
            ' T2 FROM  TCE WHERE 1=1 ';

          parambyname('empresa').AsInteger := empresa;
          parambyname('func').AsInteger := DmDta.quTceFunc_cod.asinteger;
          Open;
          total := fieldbyname('t2').asinteger;

          if total >= 10 then
          begin
            showmessage('Este Supervisor Possui 10 Estagi�rios Ativos!!');
            if DmDta.quTce.State in [dsinsert] then
              DmDta.quTceFunc_cod.AsString := '';
            Close;
            Free;
            exit;
          end;
          Close;
          Free;
        end;
      end;
    end;
  end;
end;

procedure TFORTCE.DBEdit2Change(Sender: TObject);
begin
  inherited;
  qrysupervisor.Close;
  if (dbedit3.Text <> '') then
  begin
    qrysupervisor.ParamByName('vaga').asstring := dbedit3.Text;
    qrysupervisor.Open;
  end;
end;

procedure TFORTCE.SpeedButton6Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  Screen.Cursor := crDefault;
  forvag.OlhaVaga := DmDta.quTcevag_cod.AsInteger;
  FORVAG.ShowModal;
  forvag.Free;
end;

procedure TFORTCE.DBEdit1Change(Sender: TObject);
begin
  inherited;
  rdauxilioChange(Sender);
end;

procedure TFORTCE.SpeedButton7Click(Sender: TObject);
var
  editando: boolean;
begin
  if DmDta.quTce.State in [dsedit, dsinsert] = false then
    if dmdta.quTce.IsEmpty = false then
      dmdta.quTce.Edit;
  if (meEnt1.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
  begin
    hr1 := ''; hr2 := ''; hr3 := ''; hr4 := '';
    if meEnt1.Text <> '  :  ' then
      hr1 := meEnt1.Text;
    if meSai1.Text <> '  :  ' then
      hr2 := meSai1.Text;
    if meEnt2.Text <> '  :  ' then
      hr3 := meEnt2.Text;
    if meSai2.Text <> '  :  ' then
      hr4 := meSai2.Text;
    digitou := true;
    CalcHora();
  end;
end;


procedure TFORTCE.SpeedButton8Click(Sender: TObject);
begin
  if (DmDTA.quTce.State in [dsbrowse]) and
    (DmDTA.quTce.IsEmpty = false) then
  begin
    DmDTA.quTce.Edit;
    panel4.Enabled := true;
    pgPrincipal.ActivePageIndex := 1;
  end;
end;


procedure TFORTCE.cbSuperEnter(Sender: TObject);
begin
  inherited;
  qrysupervisor.Close;
  if (dbedit3.Text <> '') then
  begin
    qrysupervisor.ParamByName('vaga').asstring := dbedit3.Text;
    qrysupervisor.Open;
    qrysupervisor.last;
  end;
end;

procedure TFORTCE.SpeedButton9Click(Sender: TObject);
var
  x, y: integer;
begin
  progresso.Caption := '';
  progresso.Visible := true;
  dmdta.qutce.First;
  quPrincipal.first;
  x := 0;
  y := 0;
  while quPrincipal.eof = false do
  begin
    inc(x);
    if (quPrincipal.FieldByName('tce_tipobolsa').AsInteger = 0) and
      (quPrincipal.FieldByName('tce_situacao').AsInteger = 0) then
    begin
      mtotal := quPrincipal.FieldByName('tce_tothoras').Value;
      CarregaDados;
      calchora();
      if quPrincipal.FieldByName('tce_tothoras').Value <> mtotal then
      begin
        inc(y);
        quPrincipal.Edit;
        quPrincipal.FieldByName('tce_tothoras').Value := mtotal;
        DMDta.SalvarRegistro(quPrincipal);
      end;
    end;
    quPrincipal.Next;
    progresso.Caption := 'Verificados: ' + strzero(X, 5) + '  Realizados :' + strzero(y, 5);
    progresso.Repaint;
    progresso.Refresh;
  end;
//  progresso.Visible := false;
end;

procedure TFORTCE.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORMTCEObs := TFORMTCEObs.Create(Self);
  Screen.Cursor := crDefault;
  FORMTCEObs.ShowModal;
end;

procedure TFORTCE.DBEdit24DblClick(Sender: TObject);
var
  escola: integer;
  NomeEscola: string;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    close;
    sql.clear;
    sql.add('select e.*, c.inst_nome from Estudante E, Instituicao C where e.inst_cod = c.inst_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
    open;
    escola := FieldByName('inst_cod').Value;
    nomeEscola := FieldByName('inst_nome').Value;
    close;
    free;
  end;
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := Escola;
  FORIFU.InstNome := nomeEscola;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  //forifu.CkOrientadores.Checked := true;
  //forifu.cbfuncoesExit(nil);
  FORIFU.ShowModal;
  if FORIFU.F2Codigo <> '' then
  begin
    if DmDta.qutce.Active then
    begin
      if (DmDta.quTce.State in [dsInsert, dsEdit]) then
      begin
        DmDta.quTce.FieldByName('tce_orientador').Text := FORIFU.F2Codigo;
        DmDta.quTce.FieldByName('inst_cod').Text := inttostr(FORIFU.inst);
      end;
    end;
    SelectNext(ActiveControl, True, true);
  end;
  FORIFU.Free;


end;

procedure TFORTCE.DBEdit24Exit(Sender: TObject);
var
  escola: integer;
  NomeEscola: string;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    close;
    sql.clear;
    sql.add('select e.*, c.inst_nome from Estudante E, Instituicao C where e.inst_cod = c.inst_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
    open;
    escola := FieldByName('inst_cod').Value;
    nomeEscola := FieldByName('inst_nome').Value;
    close;
    free;
  end;

  if (DmDta.quTce.State in [dsInsert, dsEdit]) then
  begin
    DmDta.quTce.FieldByName('inst_cod').Text := inttostr(escola);
  end;

end;

procedure TFORTCE.SpeedButton11Click(Sender: TObject);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    close;
    sql.clear;
    sql.add('select Inst_TceProcedimento from Instituicao a, Estudante E  where e.inst_cod = A.inst_cod and E.Est_cod  = ' + Dmdta.quTceEst_cod.Text);
    open;
    msg.Lines.Text := fieldbyname('Inst_TceProcedimento').AsString;
    close;
    free;
    msg.Execute;
  end;

end;

procedure TFORTCE.SpeedButton12Click(Sender: TObject);
var
  proximo, tce, intervalorMes: integer;
  argumento, ordem: string;
  data1, data2: string;
  rdata1, rdata2, rdata3, rdata4: tdate;
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
     //  gerar relatorios
    if quprincipal.FieldByName('datalei').AsString <> '' then
    begin
      atualiza.Close;
      atualiza.SQL.Clear;
      atualiza.SQL.Add(' insert into tceRelatorio (tce_cod,ordem,prev_data) values (:tce_cod,:ordem,:prev_data - 2) ');

      tce := quprincipal.fieldbyname('tce_cod').AsInteger;
      intervalorMes := quprincipal.fieldbyname('INTERVALOREL').AsInteger;
      qrypesquisa.close;
      qrypesquisa.SQL.clear;
      qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and prev_data between :inicio and :final ');
      qrypesquisa.ParamByName('tce').asinteger := quprincipal.fieldbyname('tce_cod').asinteger;
      rdata1 := primeiromes(quprincipal.fieldbyname('datalei').Value, intervalorMes);
      rdata2 := proximomes(rdata1);
      rdata3 := proximomes(rdata2);
      rdata4 := proximomes(rdata3);

     { rdata1 := diasuteism(90, quprincipal.fieldbyname('datalei').Value);
      rdata2 := diasuteism(90, rdata1);
      rdata3 := diasuteism(90, rdata2);
      rdata4 := diasuteism(90, rdata3);}

      qrypesquisa.parambyname('inicio').Value := rdata1 - 10;
      qrypesquisa.parambyname('final').Value := rdata1 + 10;
      qrypesquisa.Open;


      if qrypesquisa.Eof then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata1;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata2 - 10;
      qrypesquisa.parambyname('final').Value := rdata2 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata2;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;

      end;
      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata3 - 10;
      qrypesquisa.parambyname('final').Value := rdata3 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata3;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;

      qrypesquisa.close;
      qrypesquisa.parambyname('inicio').Value := rdata4 - 10;
      qrypesquisa.parambyname('final').Value := rdata4 + 10;
      qrypesquisa.Open;
      if (qrypesquisa.Eof) then
      begin
        with TQuery.Create(nil) do
        begin
          DatabaseName := DATABASE_NAME;
          SQL.Clear;
          SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
          ParamByName('tce_cod').AsInteger := tce;
          Open;
          proximo := fieldbyname('maximo').asinteger;
          inc(proximo);
          atualiza.Close;
          atualiza.ParamByName('tce_cod').asinteger := tce;
          atualiza.ParamByName('prev_data').value := rdata4;
          atualiza.ParamByName('ordem').asinteger := proximo;
          atualiza.ExecSQL;
          close;
          free;
        end;
      end;
    end;
     //
    Screen.Cursor := crHourGlass;
    FORENTREL := TFORENTREL.Create(Self);
    FORENTREL.tce := quPrincipal.FieldByName('tce_cod').AsInteger;
    FORENTREL.Label1.caption := quPrincipal.FieldByName('tce_cod').Asstring;
    FORENTREL.Label3.caption := quPrincipal.FieldByName('emp_nome').Asstring;
    FORENTREL.Label2.caption := quPrincipal.FieldByName('est_nome').Asstring;
    Screen.Cursor := crDefault;
    FORENTREL.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORTCE.SpeedButton13Click(Sender: TObject);
begin
  if not (quPrincipal.State in [dsEdit]) then
  begin
    showmessage('O registro tem que estar em modo de Edi��o para executar essa opera��o!');
    exit;
  end;
  if DmDta.quTceVAG_COD.AsString = '' then
    EXIT;
  if MSGSIMNAO('Reimportar informa�oes da vaga?') then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select v.*, e.emp_nome from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit3.text);
      Open;

      if not IsEmpty then
      begin



        if not FieldByName('Vag_Escala').IsNull then
          DmDta.quTcetce_Escala.Text := FieldByName('Vag_Escala').Value;

        if not FieldByName('Vag_AuxTransp').IsNull then
          DmDta.quTcetce_AuxTransp.Text := FieldByName('Vag_AuxTransp').Value;

        if not FieldByName('Vag_AuxTranspTexto').IsNull then
          DmDta.quTceTce_AuxTranspTexto.value := FieldByName('Vag_AuxTranspTexto').Value;

        if not FieldByName('Vag_AuxTranspValor').IsNull then
          DmDta.quTceTce_AuxTranspvalor.Text := FieldByName('Vag_AuxTranspValor').Value;

        if not FieldByName('Vag_AuxAlim').IsNull then
          DmDta.quTcetce_AuxAlim.Text := FieldByName('Vag_AuxAlim').Value;
        if not FieldByName('Vag_AuxAlimtipo').IsNull then
          DmDta.quTcetce_AuxAlimTipo.Text := FieldByName('Vag_AuxAlimTipo').Value;
        if not FieldByName('Vag_AuxAlimTexto').IsNull then
          DmDta.quTceTce_AuxAlimTexto.Text := FieldByName('Vag_AuxAlimTexto').Value;
        if not FieldByName('Vag_AuxAlimValor').IsNull then
          DmDta.quTceTce_AuxAlimvalor.Text := FieldByName('Vag_AuxAlimValor').Value;

        if not FieldByName('Vag_Domingo').IsNull then
          DmDta.quTceTce_Domingo.Text := FieldByName('Vag_Domingo').Value;
        if not FieldByName('Vag_segunda').IsNull then
          DmDta.quTceTce_Segunda.Text := FieldByName('Vag_segunda').Value;
        if not FieldByName('Vag_terca').IsNull then
          DmDta.quTceTce_Terca.Text := FieldByName('Vag_terca').Value;
        if not FieldByName('Vag_quarta').IsNull then
          DmDta.quTceTce_Quarta.Text := FieldByName('Vag_quarta').Value;
        if not FieldByName('Vag_quinta').IsNull then
          DmDta.quTceTce_Quinta.Text := FieldByName('Vag_quinta').Value;
        if not FieldByName('Vag_sexta').IsNull then
          DmDta.quTceTce_Sexta.Text := FieldByName('Vag_sexta').Value;
        if not FieldByName('Vag_sabado').IsNull then
          DmDta.quTceTce_Sabado.Text := FieldByName('Vag_sabado').Value;

        if not FieldByName('Vag_horsegini1').IsNull then
          DmDta.quTcetce_horsegini1.Text := FieldByName('Vag_horsegini1').Value;
        if not FieldByName('Vag_horterini1').IsNull then
          DmDta.quTcetce_horterini1.Text := FieldByName('Vag_horterini1').Value;
        if not FieldByName('Vag_horquaini1').IsNull then
          DmDta.quTcetce_horquaini1.Text := FieldByName('Vag_horquaini1').Value;
        if not FieldByName('Vag_horquiini1').IsNull then
          DmDta.quTcetce_horquiini1.Text := FieldByName('Vag_horquiini1').Value;
        if not FieldByName('Vag_horsexini1').IsNull then
          DmDta.quTcetce_horsexini1.Text := FieldByName('Vag_horsexini1').Value;
        if not FieldByName('Vag_horsabini1').IsNull then
          DmDta.quTcetce_horsabini1.Text := FieldByName('Vag_horsabini1').Value;
        if not FieldByName('Vag_hordomini1').IsNull then
          DmDta.quTcetce_hordomini1.Text := FieldByName('Vag_hordomini1').Value;


        if not FieldByName('Vag_horsegini2').IsNull then
          DmDta.quTceTce_horsegini2.Text := FieldByName('Vag_horsegini2').Value;
        if not FieldByName('Vag_horterini2').IsNull then
          DmDta.quTceTce_horterini2.Text := FieldByName('Vag_horterini2').Value;
        if not FieldByName('Vag_horquaini2').IsNull then
          DmDta.quTceTce_horquaini2.Text := FieldByName('Vag_horquaini2').Value;
        if not FieldByName('Vag_horquiini2').IsNull then
          DmDta.quTceTce_horquiini2.Text := FieldByName('Vag_horquiini2').Value;
        if not FieldByName('Vag_horsexini2').IsNull then
          DmDta.quTceTce_horsexini2.Text := FieldByName('Vag_horsexini2').Value;
        if not FieldByName('Vag_horsabini2').IsNull then
          DmDta.quTceTce_horsabini2.Text := FieldByName('Vag_horsabini2').Value;
        if not FieldByName('Vag_hordomini2').IsNull then
          DmDta.quTceTce_hordomini2.Text := FieldByName('Vag_hordomini2').Value;

        if not FieldByName('Vag_horsegfim1').IsNull then
          DmDta.quTceTce_horsegfim1.Text := FieldByName('Vag_horsegfim1').Value;
        if not FieldByName('Vag_horterfim1').IsNull then
          DmDta.quTceTce_horterfim1.Text := FieldByName('Vag_horterfim1').Value;
        if not FieldByName('Vag_horquafim1').IsNull then
          DmDta.quTceTce_horquafim1.Text := FieldByName('Vag_horquafim1').Value;
        if not FieldByName('Vag_horquifim1').IsNull then
          DmDta.quTceTce_horquifim1.Text := FieldByName('Vag_horquifim1').Value;
        if not FieldByName('Vag_horsexfim1').IsNull then
          DmDta.quTceTce_horsexfim1.Text := FieldByName('Vag_horsexfim1').Value;
        if not FieldByName('Vag_horsabfim1').IsNull then
          DmDta.quTceTce_horsabfim1.Text := FieldByName('Vag_horsabfim1').Value;
        if not FieldByName('Vag_hordomfim1').IsNull then
          DmDta.quTceTce_hordomfim1.Text := FieldByName('Vag_hordomfim1').Value;

        if not FieldByName('Vag_horsegfim2').IsNull then
          DmDta.quTceTce_horsegfim2.Text := FieldByName('Vag_horsegfim2').Value;
        if not FieldByName('Vag_horterfim2').IsNull then
          DmDta.quTceTce_horterfim2.Text := FieldByName('Vag_horterfim2').Value;
        if not FieldByName('Vag_horquafim2').IsNull then
          DmDta.quTceTce_horquafim2.Text := FieldByName('Vag_horquafim2').Value;
        if not FieldByName('Vag_horquifim2').IsNull then
          DmDta.quTceTce_horquifim2.Text := FieldByName('Vag_horquifim2').Value;
        if not FieldByName('Vag_horsexfim2').IsNull then
          DmDta.quTceTce_horsexfim2.Text := FieldByName('Vag_horsexfim2').Value;
        if not FieldByName('Vag_horsabfim2').IsNull then
          DmDta.quTceTce_horsabfim2.Text := FieldByName('Vag_horsabfim2').Value;
        if not FieldByName('Vag_hordomfim2').IsNull then
          DmDta.quTceTce_hordomfim2.Text := FieldByName('Vag_hordomfim2').Value;
        if not FieldByName('vag_Intervalo').IsNull then
          meIntervalo.Text := FormatDateTime('hh:nn', FieldByName('vag_intervalo').Value);

        if not FieldByName('vag_horarioini1').IsNull then
          Hr1 := FormatDateTime('hh:nn', FieldByName('vag_horarioini1').Value);
        if not FieldByName('vag_horariofim1').IsNull then
          Hr2 := FormatDateTime('hh:nn', FieldByName('vag_horariofim1').Value);
        if not FieldByName('vag_horarioini2').IsNull then
          Hr3 := FormatDateTime('hh:nn', FieldByName('vag_horarioini2').Value);
        if not FieldByName('vag_horariofim2').IsNull then
          Hr4 := FormatDateTime('hh:nn', FieldByName('vag_horariofim2').Value);
        if not FieldByName('vag_valorbolsa').IsNull then
          DmDta.quTcetce_bolsa.Value := FieldByName('vag_valorbolsa').Value;
        if FieldByName('vag_tipobolsa').Value = '1' then
          cbTipoBolsa.ItemIndex := 1
        else
          cbTipoBolsa.ItemIndex := 0;
        carregadados;
      end;
    end;
  end;
end;
procedure TFORTCE.edParChange(Sender: TObject);
begin
  inherited;
  parametroModificado := true;
end;

procedure TFORTCE.edParEnter(Sender: TObject);
begin
  inherited;
  parametroModificado := false;
end;

end.


{  procedure Imprime;
  var
    palavra: string;
  begin
    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    if CodEsc = '200' then
      var1.FileNew(FORINI.Diretorio + 'tce_mod1UT.dot')
    else
      var1.FileNew(FORINI.Diretorio + 'tce_mod1.dot');

    // Cabe�alho
    if CodEsc = '200' then
    begin
      Var1.Font('Arial', 8);
      Var1.Insert(#13 + #13);
      Var1.Insert(#13 + #13);
      Var1.Insert(#13);
    end;

    Var1.CenterPara;
    Var1.Font('Arial', 11);
    Var1.Bold;
    Var1.Insert('TERMO DE COMPROMISSO DE EST�GIO ');
    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert('OBRIGAT�RIO ')
    else
      var1.Insert('N�O OBRIGAT�RIO ');
    Var1.Insert('N� ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));

    Var1.Insert(#13 + #13);
    verfonte;

    // Parte da institui��o de ensino
    Var1.JustifyPara;
    Var1.Underline;
    Var1.Insert('INSTITUI��O DE ENSINO' + #13);
    verfonte;

    Var1.Insert('Raz�o Social: ' + #9 + nomeesc + #13);
    verfonte;
    Var1.Insert('Endere�o: ' + #9 + endesc + #13);
    verfonte;
    Var1.Insert('Bairro: ' + #9 + baiesc + #9);

    Var1.Insert('Cidade: ' + #9 + cidadeEsc + #13);
    verfonte;
    Var1.Insert('CEP: ' + #9 + cepEsc + #9);
    Var1.Insert('Telefone: ' + #9 + telesc + #13);
    verfonte;
    Var1.Insert('CNPJ: ' + #9 + cnpjesc + #13);
    verfonte;
    Var1.Insert('Representada por: ' + #9 + respEsc + #13);
    verfonte;
    Var1.Insert('Cargo: ' + #9 + caresc + #13);
    verfonte;
    Var1.Insert('Professor Orientador: ' + #9 + respOrientador + #13);
    verfonte;
    Var1.Insert('Forma��o Acad�mica: ' + #9 + carOrientador + #13);
    verfonte;
    Var1.Insert(#13);
    verfonte;
    // parte da empresa
    if tipopessoa = 'J' then // pessoa Juridica
    begin
      Var1.Underline;
      Var1.Insert('PARTE CONCEDENTE' + #13);
      verfonte;
      Var1.Insert('Raz�o Social: ' + #9 + nomeemp + #13);
      verfonte;
      Var1.Insert('Endere�o: ' + #9 + AnsiUpperCase(endemp) + #13);
      verfonte;
      Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiemp) + #9);
      Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeemp) + #13);
      verfonte;
      Var1.Insert('CEP: ' + #9 + cepemp + #9);
      Var1.Insert('Telefone: ' + #9 + telemp + #13);
      verfonte;
      Var1.Insert('CNPJ: ' + #9 + cnpjemp + #13);
      verfonte;
      Var1.Insert('Representada por: ' + #9 + respemp + #13);
      verfonte;
      Var1.Insert('Cargo: ' + #9 + caremp + #13);
      {verfonte;
      Var1.Insert('Supervisor de Est�gio: ' + #9 + SuperEst + #13);
      verfonte;
      Var1.Insert('Cargo: ' + #9 + CargoSuperEst + #13);
      verfonte;
      if FormSuperEst <> '' then
      begin
        Var1.Insert('Forma��o Acad�mica: ' + #9 + FormSuperEst + #13);
        verfonte;
        Var1.Insert(#13);
      end
      else
      begin
        Var1.Insert('�rea de atua��o: ' + #9 + AreaSuperEst + #13);
        verfonte;
        Var1.Insert('Tempo de experi�ncia comprovada: ' + ExpSuperEst + #13);

        Var1.Insert(#13);
        verfonte;
      end;}

end
else
  begin
    Var1.Underline;
    Var1.Insert('PARTE CONCEDENTE' + #13);
    verfonte;
    Var1.Insert('Profissional Liberal: ' + #9 + nomeemp + #13);
    verfonte;
    Var1.Insert('Cargo: ' + #9 + caremp + #13);
    verfonte;
    Var1.Insert('CPF: ' + #9 + cnpjemp + #13);
    verfonte;
    Var1.Insert('Endere�o: ' + #9 + AnsiUpperCase(endemp) + #13);
    verfonte;
    Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiemp) + #9);
    verfonte;
    Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeemp) + #13);
    verfonte;
    Var1.Insert('CEP: ' + #9 + cepemp + #9);

    Var1.Insert('Telefone: ' + #9 + telemp + #13);
    verfonte;

    Var1.Insert('Representada por: ' + #9 + respemp + #13);
    verfonte;
    Var1.Insert('Cargo: ' + #9 + caremp + #13);

     { verfonte;
      Var1.Insert('Supervisor de Est�gio: ' + #9 + SuperEst + #13);
      verfonte;
      Var1.Insert('Cargo: ' + #9 + CargoSuperEst + #13);
      verfonte;

      if FormSuperEst <> '' then
      begin
        Var1.Insert('Forma��o Acad�mica: ' + #9 + FormSuperEst + #13);
        Var1.Insert(#13);
        verfonte;
      end
      else
      begin
        Var1.Insert('�rea de atua��o: ' + #9 + AreaSuperEst + #13);
        verfonte;
        Var1.Insert('Tempo de experi�ncia comprovada: ' + #9 + ExpSuperEst + #13);
        verfonte;
        Var1.Insert(#13);
        verfonte;
      end;}
  end;
    // supervisor do Est�gio
  verfonte;
  Var1.Insert('Supervisor de Est�gio: ' + #9 + cbsuper.Text + #13);
  verfonte;
  Var1.Insert('Cargo: ' + #9 + dmDta.quTceCargo.AsString + #13);
  verfonte;

  if ckf1.Checked then
    Var1.Insert('Forma��o Acad�mica: ' + #9 + DmDTA.quTceFormacao.AsString);
  if ckr1.Checked then
  begin
    if ckf1.Checked then
      Var1.Insert(#9 + 'N� Registro Conselho:' + #9 + DmDTA.quTceregistro.AsString + #13)
    else
      Var1.Insert('N� Registro Conselho:' + #9 + DmDTA.quTceregistro.AsString + #13)
  end
  else
    if ckf1.Checked then
      Var1.Insert(#13);

  if ckf2.Checked then
    Var1.Insert('Outra Forma��o: ' + #9 + DmDTA.quTceoutraformacao.AsString);
  if ckr2.Checked then
  begin
    if ckf2.Checked then
      Var1.Insert(#9 + 'N� Registro Conselho:' + #9 + DmDTA.quTceregistro2.AsString + #13)
    else
      Var1.Insert('N� Registro Conselho:' + #9 + DmDTA.quTceregistro2.AsString + #13)
  end
  else
    if ckf2.Checked then
      Var1.Insert(#13);

  verfonte;
  if ckarea.Checked then
    Var1.Insert('�rea de atua��o: ' + #9 + DmDTA.quTcearea.AsString + #13);
  verfonte;

  if cktempo.Checked then
    Var1.Insert('Tempo de experi�ncia comprovada: ' + DmDTA.quTceTempo.AsString + #13);
  Var1.Insert(#13);
  verfonte;



    ///


    // parte do estudante
  Var1.Underline;
  Var1.Insert('ESTUDANTE' + #13);
  verfonte;
  Var1.Insert('Nome: ' + #9 + nomeest + #9);
  Var1.Insert('Data Nascimento: ' + dataest + #13);
  verfonte;
  Var1.Insert('Endere�o: ' + #9 + AnsiUpperCase(endEst) + #13);
  verfonte;
  Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiEst) + #9);
  Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeEst) + #13);
  verfonte;
  Var1.Insert('CEP: ' + #9 + CepEst + #9);
  Var1.Insert('Telefone: ' + #9 + Telest + #13);
  verfonte;
  Var1.Insert('RG: ' + #9 + rgEst + #9);
  Var1.Insert('CPF: ' + #9 + cpfEst + #13);
  verfonte;
  Var1.Insert('CTPS: ' + #9 + ctpEst + #9);
  Var1.Insert('S�rie: ' + #9 + serieEst + #13);
  verfonte;
  if CodEsc = '331' then
    Var1.Insert('Matr�cula: ' + #9 + dmdta.qutcetce_matricula.asstring + #13);
  verfonte;

    {if numMatEsc <> '' then
      Var1.Insert('Matr�cula: ' + #9 + NumMatEsc + #13);}
  Var1.Insert('Curso: ' + #9 + curEst + #13);
  verfonte;
  Var1.Insert('Per�odo/Ano: ' + #9 + perAtu + #13);
  verfonte;
  Var1.Insert(#13);

    // cl�usulas do TCE
  Var1.Font('Arial', 8);

    // Cl�usula 01
  Var1.Bold;
  Var1.Insert('CL�USULA PRIMEIRA: OBJETO' + #13);
//    Var1.Font('Arial', 9);
  Var1.Insert('O presente instrumento tem por objeto assegurar a complementa��o de aprendizagem escolar dentro do ');
  Var1.Insert('ambiente de trabalho, atrav�s de treinamento pr�tico, integra��o social, inicia��o profissional e desenvolvimento pessoal do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE, ');
  Var1.Bold;
  if CODESC = '200' then
    Var1.Insert('em conformidade com as Leis 11.788/2008 e 8666/93 e demais disposi��es legais aplic�veis.' + #13)
  else
    Var1.Insert('em conformidade com a Lei n�. 11.788 de 25/09/2008 e demais disposi��es legais aplic�veis.' + #13);
//    Var1.Font('Arial', 9);
  Var1.Bold;
  Var1.Insert('Par�grafo �nico: ');
  Var1.Bold;
  Var1.Insert('O presente instrumento n�o caracteriza v�nculo empregat�cio de qualquer natureza entre o ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('e a ');
  Var1.Bold;
  if tipopessoa = 'X' then
    Var1.Insert('UNIDADE CONCEDENTE')
  else
    Var1.Insert('PARTE CONCEDENTE');

  Var1.Bold;
  Var1.Insert(', devendo, contudo, ser rigorosamente observado o disposto no art. 3�. da Lei n�. 11.788 de 25/09/2008, sob pena de caracterizar-se o v�nculo, nos termos da lei.   ');

  Var1.Insert(#13);
  Var1.Insert(#13);

    // Cl�usula 02
  Var1.Bold;
  Var1.Insert('CL�USULA SEGUNDA: LOCAL E JORNADA DE EST�GIO' + #13);

  if tipopessoa = 'X' then
    palavra := 'unidade'
  else
    palavra := 'parte';
  if CKESCALA.Checked then
    PERIODO := '';
  Var1.Insert('As atividades de est�gio ser�o realizadas na sede da ' + palavra + ' concedente ' + periodo + '' + dtc + ', perfazendo ');
  Var1.Insert(Stotal + ' horas semanais.');
  Var1.Insert('A jornada de est�gio dever� ser compat�vel com o hor�rio letivo do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('e com o hor�rio de funcionamento da ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE. ' + #13);
  Var1.Bold;
  Var1.Insert('Par�grafo Primeiro: ');
  Var1.Bold;
  Var1.Insert('Caso a ');
  Var1.Bold; // liga
  Var1.Insert('INSTITUI��O DE ENSINO ');
  Var1.Bold; // desliga
  Var1.Insert('adote avalia��es peri�dicas ou finais, a carga hor�ria do est�gio ficar� reduzida � metade durante estes per�odos, desde que condizentes com as datas indicadas no comunicado previsto no item (d) da Cl�usula S�tima infra, a ser apresentado pela ');
  Var1.Bold; // liga
  Var1.Insert('INSTITUI��O DE ENSINO ');
  Var1.Bold; // desliga
  Var1.Insert('no in�cio do per�odo letivo. ' + #13);
  Var1.Bold;
  Var1.Insert('Par�grafo Segundo: ');
  Var1.Bold;
  Var1.Insert('� assegurado ao estagi�rio, sempre que o est�gio tenha dura��o igual ou superior a 1 (um) ano, per�odo de recesso de 30 (trinta) dias remunerado, a ser gozado preferencialmente durante');
  Var1.Insert(' suas f�rias escolares, sendo o per�odo estabelecido de comum acordo entre o ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('e a ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE. ' + #13);
  Var1.Bold;
  Var1.Insert('Par�grafo Terceiro: ');
  Var1.Bold;
  Var1.Insert('Os dias de recesso previstos no par�grafo anterior ser�o concedidos de maneira proporcional, para as hip�teses em que o est�gio tenha dura��o inferior a 1 (um) ano. ');
  Var1.Insert(#13);
  Var1.Insert(#13);
   // if codesc = '200' then
   //   var1.InsertPageBreak;

    // Cl�usula 03
  Var1.Bold;
  Var1.Insert('CL�USULA TERCEIRA: ATIVIDADES' + #13);
  Var1.Insert('O Plano de Est�gio acordado entre as partes abrange as seguintes atividades:' + #13 + #13);

  if at[1] <> '' then
    Var1.Insert('1. ' + at[1] + #13);

  if at[2] <> '' then
    Var1.Insert('2. ' + at[2] + #13);

  if at[3] <> '' then
    Var1.Insert('3. ' + at[3] + #13);

  if at[4] <> '' then
    Var1.Insert('4. ' + at[4] + #13);

  if at[5] <> '' then
    Var1.Insert('5. ' + at[5] + #13);

  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('Par�grafo Primeiro: ');
  Var1.Bold;
  Var1.Insert('As atividades acima relacionadas dever�o proporcionar ao ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('experi�ncia pr�tica em sua forma��o, como forma de complementa��o ao ensino e � aprendizagem, devendo ser ');
  Var1.Insert('compat�veis com o curso por ele escolhido e adequadas � sua proposta pedag�gica. ' + #13);
  Var1.Bold;
  Var1.Insert('Par�grafo Segundo: ');
  Var1.Bold;
  Var1.Insert('As atividades poder�o ser ampliadas, reduzidas, alteradas ou substitu�das de acordo com as necessidades da ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE, ');
  Var1.Bold;
  Var1.Insert('desde que observado o disposto no par�grafo primeiro da presente cl�usula. ' + #13);
  Var1.Insert(#13);

    // Cl�usula 04
  Var1.Bold;
  Var1.Insert('CL�USULA QUARTA: BOLSA-AUX�LIO E AUX�LIO TRANSPORTE ' + #13);

  Var1.Insert('O ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('receber� da ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
  Var1.Bold;
  Var1.Insert('aux�lio transporte, bem como bolsa-aux�lio mensal no valor de ');
  if Bolsa > 0 then
  begin
    Var1.Insert('R$ ' + FormatFloat('#,##0.00', bolsa) + ' (' + exte + ' / ' + lowercase(tipoBolsa) + '), ');
    Var1.Insert('a ser paga a partir do m�s subseq�ente ao do in�cio do est�gio.' + #13);
  end
  else
    Var1.Insert('R$ ________ (SEM REMUNERA��O). ' + #13);

  Var1.Bold;
  Var1.Insert('Par�grafo �nico:');
  Var1.Bold;
  Var1.Insert(' O aux�lio transporte referido no "caput" da presente cl�usula ser� concedido pela Parte Concedente atrav�s da seguinte forma: ');
  if dmdta.quTcevagaAuxTransp.AsString = 'R' then
    Var1.Insert('Recarga no �Cart�o Transporte" fornecido pela URBS � Urbaniza��o de Curitiba � S.A., correspondente ao n�mero de dias em que o ESTUDANTE realizar o est�gio durante o m�s.' + #13 + #13);

  if dmdta.quTcevagaAuxTransp.AsString = 'P' then
    if dmdta.quTcevagaAuxTranspValor.asstring <> '' then
      Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$ ' + formatfloat('###,##0.00', dmdta.quTcevagaAuxTranspValor.value) + '(' + ansilower(pchar(Extenso(dmdta.quTcevagaAuxTranspValor.value))) + '). ' + #13 + #13)
    else
      Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  .' + #13 + #13);

  if dmdta.quTcevagaAuxTransp.AsString = 'T' then
  begin
    Var1.Insert('Meio de locomo��o oferecido pela pr�pria ');
    Var1.Bold;
    Var1.Insert(uppercase(palavra) + ' CONCEDENTE.' + #13 + #13);
    Var1.Bold;
  end;

  if dmdta.quTcevagaAuxTransp.AsString = 'O' then
    Var1.Insert(dmdta.quTcevagaAuxTranspTEXTO.AsString + '.' + #13 + #13);


    // Cl�usula 05
  Var1.Bold;
  Var1.Insert('CL�USULA QUINTA: AGENTE DE INTEGRA��O' + #13);
  Var1.Insert('Conforme faculta o art. 5� da Lei n�. 11.788 de 25/09/2008, as partes elegem como intermediador do processo de est�gio o Agente de Integra��o ');
  Var1.Bold;
  Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, ');
  Var1.Bold;
  Var1.Insert('agente de integra��o declarado de utilidade p�blica, de fins educacionais e sem intuito');
  Var1.Insert(' lucrativo, com sede na cidade de Curitiba, Estado do Paran�, na Avenida Igua�u n�. 2345, ');
  Var1.Insert('1� andar, inscrita no CNPJ/MF sob n�. 02.217.643/0001-17, neste ato representado por seu ');
  Var1.Insert('Diretor-Presidente Rodrigo Kotzias Moscalewski, brasileiro, casado, empres�rio, portador da ');
  Var1.Insert('carteira de identidade RG n�. 3.655.060-0 SSP/PR e inscrito no CPF/MF sob n�. 873.751.419-91.' + #13);

  Var1.Bold;
  Var1.Insert('Par�grafo Primeiro: ');
  Var1.Bold;
  Var1.Insert('Durante a vig�ncia do presente instrumento, o ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('estar� inclu�do na cobertura do Seguro Contra Acidentes Pessoais proporcionado pela ap�lice n�. 0000009 da Unibanco AIG Seguros S/A, sob responsabilidade do ');
  Var1.Bold;
  Var1.Insert('CETEFE. ' + #13);
//    Var1.Font('Arial', 9);
  Var1.Bold;
  Var1.Insert('Par�grafo Segundo: ');
  Var1.Bold;
  Var1.Insert('Em caso viola��o do presente instrumento por qualquer das partes, independentemente do motivo ou raz�o, o ');
  Var1.Bold;
  Var1.Insert('CETEFE ');
  Var1.Bold;
  Var1.Insert('ficar� totalmente livre e desonerado de qualquer responsabilidade por tal descumprimento, nada podendo lhe ser imputado ou exigido, a qualquer t�tulo. ' + #13);
  Var1.Insert(#13);

  Var1.Bold;
  Var1.Insert('CL�USULA SEXTA: OBRIGA��ES DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);

  Var1.Bold;
  Var1.Insert('a) ');
  Var1.Bold;
  Var1.Insert('Proporcionar ao ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('atividades de aprendizagem social, profissional e cultural, pela experi�ncia pr�tica na sua linha de forma��o, com participa��o em situa��es reais de vida e de trabalho, atrav�s de instala��es pr�prias para tanto; ' + #13);

  Var1.Bold;
  Var1.Insert('b) ');
  Var1.Bold;
  Var1.Insert('Enviar � ');
  Var1.Bold;
  Var1.Insert('INSTITUI��O DE ENSINO, ');
  Var1.Bold;
  Var1.Insert('com periodicidade m�xima de 6 (seis) meses, relat�rio de atividades que possibilitem o acompanhamento, supervis�o e avalia��o do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE, ');
  Var1.Bold;
  Var1.Insert('o qual dever� ser por este obrigatoriamente conferido e assinado; ');
  Var1.Insert(#13);

  Var1.Bold;
  Var1.Insert('c) ');
  Var1.Bold;
  Var1.Insert('Por ocasi�o do desligamento do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE, ');
  Var1.Bold;
  Var1.Insert('entregar "Termo de Realiza��o de Est�gio" com indica��o resumida das atividades desenvolvidas, per�odos e avalia��o de desempenho;');

  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('d) ');
  Var1.Bold;
  Var1.Insert('Realizar o pagamento da bolsa-aux�lio ao ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('ou efetuar a transfer�ncia mensal da respectiva import�ncia ao ');
  Var1.Bold;
  Var1.Insert('CETEFE, ');
  Var1.Bold;
  Var1.Insert('para que este efetue o pagamento diretamente ao ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE;');
  Var1.Bold;
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('e) ');
  Var1.Bold;
  Var1.Insert('Respeitar os limites de contrata��o de estagi�rios estabelecidos no artigo 17 da Lei n�. 11.788 de 25/09/2008; ');
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('f) ');
  Var1.Bold;
  Var1.Insert('Comunicar ao ');
  Var1.Bold;
  Var1.Insert('CETEFE, ');
  Var1.Bold;
  Var1.Insert('quaisquer altera��es que venham a ser realizadas no presente instrumento.');
  Var1.Insert(#13);
  if (CODESC = '699') or (CODESC = '54') or (CODESC = '716') then
  begin
    Var1.Bold;
    Var1.Insert('g) ');
    Var1.Bold;
    Var1.Insert('Aplica-se ao estagi�rio a legisla��o relacionada � sa�de e seguran�a no trabalho, sendo sua implementa��o de responsabilidade da ');
    Var1.Bold;
    Var1.Insert('PARTE CONCEDENTE.');
    Var1.Bold;
    Var1.Insert(#13);
  end;
  Var1.Insert(#13);

     // Cl�usula 07
  Var1.Bold;
  Var1.Insert('CL�USULA S�TIMA: OBRIGA��ES DA INSTITUI��O DE ENSINO' + #13);
  Var1.Bold;
  Var1.Insert('a) ');
  Var1.Bold;
  Var1.Insert('Avaliar as instala��es da ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
  Var1.Bold;
  Var1.Insert('do est�gio e a sua adequa��o � forma��o cultural e profissional do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE; ');
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('b) ');
  Var1.Bold;
  Var1.Insert('Exigir do ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('a apresenta��o peri�dica, em prazo n�o superior a 6 (seis) meses, do relat�rio de atividades mencionado no item b da Cl�usula Sexta supra;');
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('c) ');
  Var1.Bold;
  Var1.Insert('Zelar pelo cumprimento do instrumento ora celebrado, reorientando o ');
  Var1.Bold;
  Var1.Insert('ESTUDANTE ');
  Var1.Bold;
  Var1.Insert('para outro local em caso de descumprimento das disposi��es ora estabelecidas;');
  Var1.Insert(#13);
  Var1.Bold;
  Var1.Insert('d) ');
  Var1.Bold;
  Var1.Insert('Comunicar a ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE, ');
  Var1.Bold;
  if (CODESC = '699') or (CODESC = '54') or (CODESC = '716') then
    Var1.Insert('atrav�s do aluno, as datas de realiza��o das avalia��es escolares ou acad�micas.    ')
  else
    Var1.Insert('no in�cio do per�odo letivo, as datas de realiza��o das avalia��es escolares ou acad�micas.   ');
  Var1.Insert(#13);
  Var1.Insert(#13);

    // Cl�usula 08
  Var1.Bold;
  Var1.Insert('CL�USULA OITAVA: OBRIGA��ES DO ESTUDANTE' + #13);
  Var1.Bold;
  Var1.Insert('a) ');
  Var1.Bold;
  Var1.Insert('Cumprir com empenho e interesse o Programa de Est�gio, bem como as normas internas da ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE; ' + #13);
  Var1.Bold;
  Var1.Insert('b) ');
  Var1.Bold;
  Var1.Insert('Fornecer, sempre que necess�rio e dentro do prazo estipulado, informa��es para o acompanhamento e supervis�o do Programa de Est�gio promovido pela ');
  Var1.Bold;
  Var1.Insert('INSTITUI��O DE ENSINO; ' + #13);
  Var1.Bold;
  Var1.Insert('c) ');
  Var1.Bold;
  Var1.Insert('Informar � ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
  Var1.Bold;
  Var1.Insert('eventual conclus�o, abandono ou trancamento de matr�cula do curso; ' + #13);
  Var1.Bold;
  Var1.Insert('d) ');
  Var1.Bold;
  Var1.Insert('Informar � ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
  Var1.Bold;
  Var1.Insert('eventual transfer�ncia de curso ou de Institui��o de Ensino; ' + #13);
  Var1.Bold;
  Var1.Insert('e) ');
  Var1.Bold;
  Var1.Insert('Observar rigorosamente os limites de freq��ncia �s aulas estabelecidos pela ');
  Var1.Bold;
  Var1.Insert('INSTITUI��O DE ENSINO; ' + #13);
  Var1.Bold;
  Var1.Insert('f) ');
  Var1.Bold;
  Var1.Insert('Manter assiduidade e pontualidade junto � ');
  Var1.Bold;
  Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
  Var1.Bold;
  Var1.Insert('durante o programa de est�gio. ' + #13);
  Var1.Insert(#13);


    // Cl�usula 09
  Var1.Bold;
  Var1.Insert('CL�USULA NONA: PRAZO' + #13);
  Var1.Insert('Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + meTceDtIni.Text + ' at� ' + meTceDtFim.text + ', podendo ser prorrogado atrav�s de Termo Aditivo, desde que o prazo total n�o seja superior a 2 (dois) anos.' + #13);
  Var1.Bold;
  Var1.Insert('Par�grafo �nico: ');
  Var1.Bold;
  Var1.Insert('Este instrumento poder� ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante comunica��o pr�via, sem que ');
  Var1.Insert('assista � outra parte direito a qualquer reclama��o. ' + #13);
  Var1.Insert(#13);
    // Cl�usula 09
  Var1.Bold;
  if codesc <> '200' then
  begin
    if codesc = '331' then
      vias := '05 (cinco)'
    else
      vias := '04 (quatro)';
    Var1.Insert('CL�USULA DEZ: FORO' + #13);
    Var1.Insert('Fica eleito o Foro Central da Comarca da Regi�o Metropolitana de Curitiba, Estado do Paran�, para dirimir quaisquer d�vidas ou quest�es oriundas deste instrumento. ' + #13);
    Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em ' + vias + ' vias de igual teor e forma. ' + #13);
    Var1.Insert(#13);
  end
  else
  begin
      //var1.InsertPageBreak;
    Var1.Insert('CL�USULA DEZ: PUBLICA��O' + #13);
    Var1.Insert('A Institui��o de Ensino dar� publicidade a este instrumento em conson�ncia com preceitos legais vigentes. ' + #13);
    Var1.Insert(#13);
    Var1.Bold;
    Var1.Insert('CL�USULA ONZE: RESCIS�O ADMINISTRATIVA' + #13);
    Var1.Insert('O presente conv�nio poder� ser rescindido pela Institui��o de Ensino, em raz�o de interesse p�blico.' + #13);
    Var1.Insert(#13);
    Var1.Bold;
    Var1.Insert('CL�USULA DOZE: FORO' + #13);
    Var1.Insert('Fica eleito o Foro da Justi�a Federal, Se��o Judici�ria de Curitiba, Estado do Paran�, para dirimir quaisquer d�vidas ou quest�es oriundas deste instrumento.' + #13);
    Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em 04 (quatro) vias de igual teor e forma.' + #13);
    Var1.Insert(#13);

  end;

    // Parte final do documento - data e assinaturas
  Var1.CenterPara;
  dtcompleta(false);
  Var1.Insert('Curitiba, ' + datac + '. ' + #13);
  Var1.Insert(#13 + #13 + #13);

    // Situa��o normal - 4 assinaturas
  if CodEsc = '331' then
  begin
    Var1.JustifyPara;
    Var1.Insert(#13);
    Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
    Var1.Insert('                               INSTITUI��O DE ENSINO                                                          REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
    Var1.Insert(#13 + #13 + #13 + #13);
    Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
    Var1.Insert('                              COORDENADOR DE CURSO                                               SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
    Var1.Insert(#13 + #13 + #13 + #13);
    Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
    Var1.Insert('                                           ESTUDANTE                                                                               REPRESENTANTE DO CETEFE' + #13);
    Var1.Insert(#13 + #13 + #13 + #13);
  end
  else
    if CodEsc = '261' then
    begin
      Var1.JustifyPara;
      Var1.Insert(#13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                               INSTITUI��O DE ENSINO                                                          REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                              COORDENADOR DE CURSO                                               SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                                           ESTUDANTE                                                                               REPRESENTANTE DO CETEFE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
    end
    else
    begin
      Var1.JustifyPara;
      Var1.Insert(#13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('              REPRESENTANTE DA INSTITUI��O DE ENSINO                                  REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                   ORIENTADOR DA INSTITUI��O DE ENSINO                              SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                                             ESTUDANTE                                                                                REPRESENTANTE DO CETEFE');
    end;
  Screen.Cursor := crDefault;
  var1.AppShow;
end;

}

