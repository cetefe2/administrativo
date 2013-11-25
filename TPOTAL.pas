unit TPOTAL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORTAL = class(TFORMOD3)
    Label1: TLabel;
    edTceCod: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    meTceVig: TMaskEdit;
    Label6: TLabel;
    Label17: TLabel;
    meEnt1: TMaskEdit;
    Label11: TLabel;
    meSai1: TMaskEdit;
    Label18: TLabel;
    meEnt2: TMaskEdit;
    Label19: TLabel;
    meSai2: TMaskEdit;
    Label21: TLabel;
    cbTipoBolsa: TComboBox;
    btImprimir: TSpeedButton;
    qcontrato: TQuery;
    DBEdit2: TDBEdit;
    meTalDtRet: TMaskEdit;
    Label23: TLabel;
    Label8: TLabel;
    meTceEmi: TMaskEdit;
    btSabado: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    qrypesquisa: TQuery;
    Label4: TLabel;
    meIntervalo: TMaskEdit;
    qrySupervisor: TQuery;
    qrySupervisorNome: TStringField;
    qrySupervisorFunc_cod: TIntegerField;
    dssupervisor: TDataSource;
    BitBtn1: TBitBtn;
    rdauxilio: TDBRadioGroup;
    nb: TNotebook;
    Label7: TLabel;
    DBEdit13: TDBEdit;
    Label9: TLabel;
    dbedit14: TDBMemo;
    edsemana: TEdit;
    Label27: TLabel;
    SpeedButton7: TSpeedButton;
    qrySupervisorEmp_cod: TIntegerField;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    cbSuper: TDBLookupComboBox;
    ckEscala: TDBCheckBox;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    ckAtividades: TDBCheckBox;
    CKBOLSA: TDBCheckBox;
    CKJORNADA: TDBCheckBox;
    CKPRAZO: TDBCheckBox;
    SpeedButton10: TSpeedButton;
    rdEscolha: TDBRadioGroup;
    ckf1: TDBCheckBox;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    ckr1: TDBCheckBox;
    ckf2: TDBCheckBox;
    ckr2: TDBCheckBox;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    ckarea: TDBCheckBox;
    cktempo: TDBCheckBox;
    Label41: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label42: TLabel;
    DBEdit26: TDBEdit;
    Label43: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure meEnt1Exit(Sender: TObject);
    procedure meTceAltExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure meEnt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meTceVigKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoBolsaClick(Sender: TObject);
    procedure meTalDtRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSabadoClick(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure CriaCampo(Tabela, campo, chave, condicao: string);
    procedure DBEdit14DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure rdauxilioChange(Sender: TObject);
    procedure cbSuperExit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure pgPrincipalChange(Sender: TObject);
  private
    { Private declarations }
    sTotal: string;
  public
    { Public declarations }
    CodEstudante, Tce: Integer;
    MudaAba, F2: Boolean;
    hr1, hr2, hr3, hr4, hr5, hr6, hr7, hr8, dtc, etotal: string;
    Retorno, Digitou: Boolean;
    periodo: string;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo, Vaga, Estudante: Integer);
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure CalcHora();
    procedure LimpaCampos; override;
  end;

var
  FORTAL: TFORTAL;

implementation

uses TPODTA, TPOTALD, TPOFNC, TPOCST, ComObj, TPOINI, untLibera, TPOTALAT,
  TPOTALOBS, TPOIFU;

{$R *.DFM}

procedure TFORTAL.FormCreate(Sender: TObject);
begin
  inherited;
  DmDTA.criacampo('TCEAlteracao', 'Tal_AuxAlim', 'Tal_COD', ' char(1)');
  DmDTA.criacampo('TCEAlteracao', 'Tal_AuxAlimAntecipa', 'Tal_COD', ' char(1)');
  DmDTA.criacampo('TCEAlteracao', 'Tal_AuxAlimTipo', 'Tal_COD', ' varchar(50)');
  DmDTA.criacampo('TCEAlteracao', 'Tal_AuxAlimtexto', 'Tal_COD', ' varchar(50)');
  DmDTA.criacampo('TCEAlteracao', 'Tal_AuxAlimValor', 'Tal_COD', ' money');

  criacampo('TCEAlteracao', 'Func_cod', 'Tal_COD', ' int ');
  criacampo('TCEAlteracao', 'Tal_Intervalo', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_domingo', 'Tal_COD', ' char(1)');

  criacampo('TCEAlteracao', 'tal_horSabini1', 'TAL_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_horsabfim1', 'TAL_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_horsabini2', 'TAL_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_horSabfim2', 'TAL_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_InterSab', 'TAL_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_horsegini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsegfim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsegini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsegfim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Interseg', 'Tal_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_horterini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horterfim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horterini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horterfim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Interter', 'Tal_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_horquaini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquafim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquaini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquafim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Interqua', 'Tal_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_horquiini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquifim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquiini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horquifim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Interqui', 'Tal_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_horsexini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsexfim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsexini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_horsexfim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Intersex', 'Tal_COD', ' smalldatetime ');

  criacampo('TCEAlteracao', 'Tal_hordomini1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_hordomfim1', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_hordomini2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'Tal_hordomfim2', 'Tal_COD', ' smalldatetime ');
  criacampo('TCEAlteracao', 'tal_Interdom', 'Tal_COD', ' smalldatetime ');
  nomeCodigo := 'tal_vigencia';
  nomeNome := 'tal_vigencia';
  nomeTabela := 'TceAlteracao';
  Tce := -1;

  MudaAba := True;

  quPrincipal1 := DmDta.quTceAlteracao;
  DmDta.dsTceAlteracao.DataSet := quPrincipal1;
  Retorno := False;
end;

procedure TFORTAL.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsTceAlteracao.DataSet := DmDta.quTceAlteracao;
end;

procedure TFORTAL.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('tce_cod').Value := Tce;

  meTceEmi.Text := FormatDateTime('dd/mm/yyyy', Date);
  meTceVig.Text := FormatDateTime('dd/mm/yyyy', Date);

  quPrincipal1.FieldByName('tal_segunda').Value := '1';
  quPrincipal1.FieldByName('tal_terca').Value := '1';
  quPrincipal1.FieldByName('tal_quarta').Value := '1';
  quPrincipal1.FieldByName('tal_quinta').Value := '1';
  quPrincipal1.FieldByName('tal_sexta').Value := '1';
  quPrincipal1.FieldByName('tal_sabado').Value := '0';

  cbTipoBolsa.ItemIndex := 1;
  Digitou := False;
  Retorno := True;
  meTceVig.SetFocus;
end;

procedure TFORTAL.FormShow(Sender: TObject);
begin
  qrysupervisor.Open;
  Screen.Cursor := crHourGlass;
  with quPrincipal1 do
  begin
    ParamByName('tce_cod').AsInteger := Tce;
    Open;
  end;
  inherited;
  Screen.Cursor := crDefault;
end;

procedure TFORTAL.btSalvarClick(Sender: TObject);
var
  Ret: Boolean;
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if meTceVig.Text = '  /  /     ' then
    begin
      MSGERRO('Entre com a data de vig�ncia do TCE!');
      meTceVig.SetFocus;
    end
    else if meEnt1.Text = '  :  ' then
    begin
      MSGERRO('Entre com a entrada 1 do TCE!');
      meEnt1.SetFocus;
    end
    else if meSai1.Text = '  :  ' then
    begin
      MSGERRO('Entre com a sa�da 1 do TCE!');
      meSai1.SetFocus;
    end
    else if DBEdit1.Text = '' then
    begin
      MSGERRO('Entre com o valor da bolsa do TCE!');
      DBEdit1.SetFocus;
    end
    else
    begin
      Ret := Retorno;
      btEnter.SetFocus;

      if quPrincipal1.State in [dsInsert, dsEdit] then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal1);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end;

      if Ret then
        DmDta.AtualizaPgtoEstagiario(DmDta.quTceest_cod.AsInteger, DmDta.quTcetce_cod.AsInteger);

      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;
      end;
    end;
  end;
end;

procedure TFORTAL.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('idi_cod').AsString;
    F2Nome := quPrincipal1.FieldByName('idi_nome').AsString;
    Close;
  end
  else
  begin
    inherited;
    pgPrincipalChange(Sender);
  end;
end;

procedure TFORTAL.SetaCodigo(Codigo, Vaga, Estudante: Integer);
begin
  qrysupervisor.Close;
  codEstudante := estudante;
  if vaga > 0 then
  begin
    qrysupervisor.ParamByName('vaga').asinteger := vaga;
    qrysupervisor.Open;
  end;
  Tce := Codigo;
  edTceCod.Text := IntToStr(Tce);
end;

procedure TFORTAL.AtualizaDados;
begin
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('tal_cod').Value := ultimoRegistro;
  end;
  quPrincipal1.FieldByName('tal_dataemi').text := meTceEmi.Text;
  quPrincipal1.FieldByName('tal_vigencia').text := meTceVig.Text;
  quPrincipal1.FieldByName('tal_horarioini1').text := '01/01/1900 ' + meEnt1.Text;
  quPrincipal1.FieldByName('tal_horariofim1').text := '01/01/1900 ' + meSai1.Text;

  if meIntervalo.Text <> '  :  ' then
    quPrincipal1.FieldByName('tal_Intervalo').text := '01/01/1900 ' + meIntervalo.Text
  else
    quPrincipal1.FieldByName('tal_Intervalo').text := '';

  if meEnt2.Text <> '  :  ' then
    quPrincipal1.FieldByName('tal_horarioini2').text := '01/01/1900 ' + meEnt2.Text
  else
    quPrincipal1.FieldByName('tal_horarioini2').text := '';
  if meSai2.Text <> '  :  ' then
    quPrincipal1.FieldByName('tal_horariofim2').text := '01/01/1900 ' + meSai2.Text
  else
    quPrincipal1.FieldByName('tal_horariofim2').text := '';
  if meTalDtRet.Text <> '  /  /    ' then
    quPrincipal1.FieldByName('tal_retorno').text := meTalDtRet.Text
  else
    quPrincipal1.FieldByName('tal_retorno').text := '';
  quPrincipal1.FieldByName('tal_tipobolsa').text := IntToStr(cbTipoBolsa.ItemIndex);
end;

procedure TFORTAL.CarregaDados;
begin
  Digitou := False;
  Retorno := False;
  if not quPrincipal1.FieldByName('tal_Intervalo').IsNull then
    if Length(quPrincipal1.FieldByName('tal_Intervalo').text) = 10 then
      meIntervalo.Text := '00:00'
    else                       // 00/00/0000 hh:nn:ss
      meIntervalo.Text := copy(quPrincipal1.FieldByName('tal_Intervalo').text, 12,5);

  if not quPrincipal1.FieldByName('tal_dataemi').IsNull then
    meTceEmi.Text := quPrincipal1.FieldByName('tal_dataemi').text;
  if not quPrincipal1.FieldByName('tal_vigencia').IsNull then
    meTceVig.Text := quPrincipal1.FieldByName('tal_vigencia').text;
  if not quPrincipal1.FieldByName('tal_horarioini1').IsNull then
    meEnt1.Text := quPrincipal1.FieldByName('tal_horarioini1').Value;
  if not quPrincipal1.FieldByName('tal_horariofim1').IsNull then
    meSai1.Text := quPrincipal1.FieldByName('tal_horariofim1').Value;
  if not quPrincipal1.FieldByName('tal_horarioini2').IsNull then
    meEnt2.Text := quPrincipal1.FieldByName('tal_horarioini2').Value;
  if not quPrincipal1.FieldByName('tal_horariofim2').IsNull then
    meSai2.Text := quPrincipal1.FieldByName('tal_horariofim2').Value;
  if not quPrincipal1.FieldbyName('tal_retorno').IsNull then
    meTalDtRet.Text := quPrincipal1.FieldbyName('tal_retorno').text;

  if (not quPrincipal1.FieldByName('tal_horarioini1').IsNull) then
    Hr1 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horarioIni1').Value)
  else
    Hr1 := '';
  if (not quPrincipal1.FieldByName('tal_horariofim1').IsNull) then
    Hr2 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horariofim1').Value)
  else
    Hr2 := '';
  if (not quPrincipal1.FieldByName('tal_horarioini2').IsNull) then
    Hr3 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horarioIni2').Value)
  else
    Hr3 := '';
  if (not quPrincipal1.FieldByName('tal_horariofim2').IsNull) then
    Hr4 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horariofim2').Value)
  else
    Hr4 := '';
  if (not quPrincipal1.FieldByName('tal_horsabini1').IsNull) then
    Hr5 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabIni1').Value)
  else
    Hr5 := '';
  if (not quPrincipal1.FieldByName('tal_horsabfim1').IsNull) then
    Hr6 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabfim1').Value)
  else
    Hr6 := '';
  if (not quPrincipal1.FieldByName('tal_horsabini2').IsNull) then
    Hr7 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabIni2').Value)
  else
    Hr7 := '';
  if (not quPrincipal1.FieldByName('tal_horsabfim2').IsNull) then
    Hr8 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabfim2').Value)
  else
    Hr8 := '';

  CalcHora;

  if (not quPrincipal1.FieldByName('tal_tipobolsa').IsNull) and
    (quPrincipal1.FieldByName('tal_tipobolsa').Value <> '') then
    cbTipoBolsa.ItemIndex := quPrincipal1.FieldByName('tal_tipobolsa').AsInteger;
end;


procedure TFORTAL.meEnt1Exit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).text <> '  :  ' then
  begin
    if not Validahora(TMaskEdit(Sender).Text) then
    begin
      TMAskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;

  if Salvou then
  begin
    if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;

    if (meEnt2.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
      meIntervalo.Text := timetostr(strtotime(meent2.text) - strtotime(mesai1.text));

    if (meEnt1.Text <> '  :  ') and
      (meSai1.Text <> '  :  ') then
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
      CalcHora();
    end;
  end;
end;

procedure TFORTAL.meTceAltExit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).text <> '  /  /    ' then
    if not ValidaData(TMaskEdit(Sender).Text) then
      TMAskEdit(Sender).SetFocus;
end;

procedure TFORTAL.btImprimirClick(Sender: TObject);
var var1: variant;
  CRM, CRO, CRJ, CREF, CPP, Coren, Conselho, CodEsc, Emp: string;
  datac: string[37];
  TipoPessoa: string;
  agencia, conta, exte, datana, estadoesc: string;
  respOrientador, carOrientador: string;
  endesc, baiesc, cidadeEsc, cnpjesc, caresc, telesc, cepesc, nomeesc, RespEsc, dataest: string;
  endemp, baiemp, telemp, cidadeEmp, estadoEmp, faxEmp, cepemp, cnpjemp, caremp, inscemp, respemp, nomeemp: string;
  curcod, numMatEsc, EstadoEst, serieEst, cpfEst, cidadeEst, endest, baiest, telest, cepest, rgest, ctpest, curest, nomeEst: string;
  DireEsc, SuperEmp, AreaEst, OrientadorEst: string;
  AreaSuperEst, ExpSuperEst, CoordEsc, SuperEst, CargoSuperEst, FormSuperEst: string;
  at: array[1..5] of string;
  ce, ces, contador: integer;
  uce, dce: string;
  num: integer;
  vias, uni, dez, cen: string;
  centa, unida, dezen, cente, perAtu, turEst, tipobolsa: string;
  bolsa: Double;
  DataFim: TDateTime;



  procedure dtcompleta(dias: boolean);
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
   //   dt := DmDta.quTceAlteracao.FieldByName('tal_dataemi').Text
   // else
    dt := FormatDateTime('dd/mm/yyyy', diasuteis(5,DmDta.quTceAlteracaoTal_vigencia.AsDateTime));
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
  //  datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
    if Dias then
      datac := '' + d + ' dia(s) do m�s de ' + me[strtoint(m)] + ' de ' + a + ''
    else
      datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + ''
  end;

  procedure completadados;
  var i, ValorInt: Integer;
    Valor, ValorCent: Double;
    ValString: string;
    escola, funcionarioescola: integer;
    Empresa, Funcionario: integer;
  begin
    bolsa := DBEdit8.field.Value;
    tipoBolsa := cbTipoBolsa.Text;
    empresa := DmDta.quTceemp_cod.asinteger;
    funcionario := 0;
    dmdta.PegaResponsavel(1, empresa, funcionario);




    with qContrato do
    begin
      // Busca a dados da vaga
      if DmDta.quTce.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        //Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);

        Sql.Add('Select * from talatividade where tce_cod =' + dbedit8.Text + ' and tal_cod = ' + DmDta.quTceAlteracaotal_cod.AsString);
        Open;
        {SuperEst := FieldByName('vag_supervisor').AsString;
        FormSuperEst := FieldByName('vag_formsupervisor').AsString;
        ExpSuperEst := FieldByName('vag_Expsupervisor').AsString;
        AreaSuperEst := FieldByName('vag_Areasupervisor').AsString;
        cargoSuperEst := FieldByName('vag_Cargsupervisor').AsString;}
        {SuperEst := DmDta.BuscaCampo('vaga', 'vag_supervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        FormSuperEst := DmDta.BuscaCampo('vaga', 'vag_formsupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        ExpSuperEst := DmDta.BuscaCampo('vaga', 'vag_expsupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        CargoSuperEst := DmDta.BuscaCampo('vaga', 'vag_cargSupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);
        AreaSuperEst := DmDta.BuscaCampo('vaga', 'vag_Areasupervisor', 'vag_cod', DmDta.quTcevag_cod.asinteger);}

        SuperEst := cbsuper.Text;
        FormSuperEst := DmDta.quTceAlteracaoformacao.AsString;
        ExpSuperEst := DmDta.quTcealteracaoTempo.AsString;
        CargoSuperEst := DmDta.quTceAlteracaoCargo.AsString;
        AreaSuperEst := DmDta.quTceAlteracaoArea.asstring;

        if not IsEmpty then
        begin
          first;
          for i := 1 to 5 do
          begin
            if Eof then break;
            at[i] := FieldByName('ati_talnome').AsString;
            Next;
          end;
        end;
      end;

      Emp := DmDta.quTceemp_cod.text;
      bolsa := DBEdit8.field.Value;
      tipoBolsa := cbTipoBolsa.Text;

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
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
      CodEsc := fieldByName('inst_cod').asstring;
      peratu := fieldByName('pcu_anoatual').AsString;

      escola := strtoint(CodEsc);
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
      sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and ' + inttostr(funcionarioEscola) + ' = f.func_cod where i.inst_cod = ' + CodEsc);
      open;
      CodEsc := fieldbyname('inst_cod').asstring;
      nomeesc := fieldbyname('inst_nome').asstring;
      estadoesc := fieldbyname('inst_estado').asstring;
      endesc := fieldbyname('inst_endereco').asstring;
      if fieldbyname('inst_numend').Text <> '' then
        endesc := endesc + ' ' + fieldbyname('inst_numend').Text;
      if fieldbyname('inst_sala').Text <> '' then
        endesc := endesc + ' - SALA ' + fieldbyname('inst_sala').Text;
      baiesc := fieldbyname('inst_bairro').asstring;
      cidadeEsc := fieldByName('inst_cidade').asstring;
      cnpjesc := fieldbyname('inst_cnpj').asstring;
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
      nomeemp := DmDta.quTceemp_nome.Text;
      telemp := fieldByName('emp_telefone').AsString;
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
        cnpjemp := poemascara(cnpjemp);
      // formata o CNPJ
       { cnpjemp := Copy(cnpjemp, 1, 2) + '.' + Copy(cnpjemp, 3, 3) + '.' + Copy(cnpjemp, 6, 3) + '/' +
          Copy(cnpjemp, 9, 4) + '-' + Copy(cnpjemp, 13, 2);}
      respemp := fieldByName('efu_nome').Asstring;
      estadoemp := fieldByName('emp_estado').Asstring;
      caremp := fieldbyname('efu_cargo').asstring;
      inscemp := fieldbyname('Emp_inscest').Asstring;
      faxemp := fieldbyname('Emp_fax').AsString;
    end;

    // valor da bolsa
    bolsa := DBEdit1.field.Value;
    tipoBolsa := cbTipoBolsa.Text;
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


    // Verifica se n�o tem TA
    with DmDta.quTceAditivo do
    begin
      Close;
      ParamByName('tce_cod').AsInteger := DmDta.quTceTCE_COD.Value;
      Open;

      if IsEmpty then
        DataFim := DmDta.quTce.FieldByName('tce_datafim').AsDateTime
      else
      begin
        Last;
        DataFim := FieldByName('tpr_datafim').AsDateTime;
        Close;
      end;
    end;

    dtcompleta(false);
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

  procedure imprimenovo;
  begin
    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    if codesc = '331' then
       var1.FileNew(FORINI.Diretorio + 'taufpr.dot')
    else
    var1.FileNew(FORINI.Diretorio + 'tapd.dot');
    var1.editbookmark('tipo', 0, 0, 0, 1);

    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert(' OBRIGAT�RIO ')
    else
      var1.Insert(' N�O OBRIGAT�RIO ');

//    var1.editbookmark('numero', 0, 0, 0, 1);
    Var1.Insert('N� ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));

    var1.editbookmark('dia', 0, 0, 0, 1);
    dtcompleta(true);
    Var1.Insert(datac);

    var1.editbookmark('curitiba', 0, 0, 0, 1);
    var1.Insert('CURITIBA');

//


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
    

    var1.editbookmark('vigencia', 0, 0, 0, 1);
    Var1.Insert(meTcevig.Text + ' � ' + dmdta.quTceultimodia.AsString);

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

    if dmdta.quTcealteracaotal_AuxTransp.AsString = 'R' then
      Var1.Insert('Recarga no �Cart�o Transporte" fornecido pela URBS � Urbaniza��o de Curitiba � S.A., correspondente ao n�mero de dias em que o ESTUDANTE realizar o est�gio durante o m�s.');

    if dmdta.quTcealteracaotal_AuxTransp.AsString = 'P' then
      if dmdta.quTcealteracaotal_AuxTranspValor.asstring <> '' then
        Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$ ' + formatfloat('###,##0.00', dmdta.quTcealteracaotal_AuxTranspValor.value) + '(' + ansilower(pchar(Extenso(dmdta.quTcealteracaotal_AuxTranspValor.value))) + '). ')
      else
        Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  .');

    if dmdta.quTcealteracaotal_AuxTransp.AsString = 'T' then
    begin
      Var1.Insert('Meio de locomo��o oferecido pela pr�pria ');
      Var1.Bold;
      Var1.Insert('PARTE CONCEDENTE.');
      Var1.Bold;
    end;

    if dmdta.quTcealteracaotal_AuxTransp.AsString = 'O' then
      Var1.Insert(dmdta.quTcealteracaotal_AuxTranspTEXTO.AsString + '.');


   
    if at[1] <> '' then
    begin
      var1.editbookmark('atividade1', 0, 0, 0, 1);
      Var1.Insert('1. '+at[1]+ #13);
    end;

    if at[2] <> '' then
    begin
      var1.editbookmark('atividade2', 0, 0, 0, 1);
      Var1.Insert('2. '+at[2]+ #13);
    end;

    if at[3] <> '' then
    begin
      var1.editbookmark('atividade3', 0, 0, 0, 1);
      Var1.Insert('3. '+at[3]+ #13);
    end;

    if at[4] <> '' then
    begin
      var1.editbookmark('atividade4', 0, 0, 0, 1);
      Var1.Insert('4. '+at[4]+ #13);
    end;

    if at[5] <> '' then
    begin
      var1.editbookmark('atividade5', 0, 0, 0, 1);
      Var1.Insert('5. '+at[5]+ #13);
    end;

    var1.editbookmark('vias', 0, 0, 0, 1);
    if codesc = '331' then
      Var1.Insert('5 (cinco)')
    else
      Var1.Insert('4(quatro)');


    var1.editbookmark('supervisor', 0, 0, 0, 1);
    Var1.Bold;
    Var1.Insert(cbsuper.Text);
    var1.editbookmark('cargosupervisor', 0, 0, 0, 1);
    Var1.Insert(dmDta.quTcealteracaoCargo.AsString);
    Var1.Bold;
    var1.editbookmark('escolhas', 0, 0, 0, 1);
    if ckf1.Checked then
    begin

      Var1.Insert('Forma��o Acad�mica: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceAlteracaoFormacao.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

 //   var1.editbookmark('registrosupervisor', 0, 0, 0, 1);
    if ckr1.Checked then
    begin
      Var1.Insert('N�mero do registro no Conselho de Fiscaliza��o Profissional: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceAlteracaoregistro.AsString);
      Var1.Bold;
      Var1.insert(#13);
    end;

   // var1.editbookmark('areasupervisor', 0, 0, 0, 1);

    if ckarea.Checked then
    begin
      Var1.Insert('�rea de atua��o: ');
      Var1.Bold;
      Var1.Insert(DmDTA.quTceAlteracaoarea.AsString);
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


    {var1.editbookmark('formacaosupervisor', 0, 0, 0, 1);
    if ckf1.Checked then
      Var1.Insert(DmDTA.quTceAlteracaoFormacao.AsString);

    var1.editbookmark('registrosupervisor', 0, 0, 0, 1);
    if ckr1.Checked then
      Var1.Insert(DmDTA.quTceAlteracaoregistro.AsString);

    var1.editbookmark('areasupervisor', 0, 0, 0, 1);
    if ckarea.Checked then
      Var1.Insert(DmDTA.quTceAlteracaoarea.AsString);

    var1.editbookmark('outraformacao', 0, 0, 0, 1);
    if ckf2.Checked then
      Var1.Insert(DmDTA.quTceAlteracaooutraformacao.AsString);

    if ckr2.Checked then
      var1.insert(' ' + DmDTA.quTceAlteracaoregistro2.AsString);

    var1.editbookmark('temposupervisor', 0, 0, 0, 1);
    if cktempo.Checked then
      Var1.Insert(DmDTA.quTceAlteracaotempo.AsString);

    }



    var1.editbookmark('orientador', 0, 0, 0, 1);
    Var1.Insert(respOrientador);

    var1.editbookmark('formacaoorientador', 0, 0, 0, 1);
    Var1.Insert(carOrientador);


    qrypesquisa.close;
    qrypesquisa.SQL.clear;
    qrypesquisa.SQL.add(' select * from tcerelatorio where tce_cod=:tce and ordem=:ordem ');
    qrypesquisa.ParamByName('tce').asinteger := DmDTA.quTce.fieldbyname('tce_cod').asinteger;
    qrypesquisa.ParamByName('ordem').asinteger := 1;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio1', 0, 0, 0, 1);
      if qrypesquisa.FieldByName('prev_data').value > date then
        Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 2;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio2', 0, 0, 0, 1);
      if qrypesquisa.FieldByName('prev_data').value > date then
        Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 3;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio3', 0, 0, 0, 1);
      if qrypesquisa.FieldByName('prev_data').value > date then
        Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    qrypesquisa.close;
    qrypesquisa.ParamByName('ordem').asinteger := 4;
    qrypesquisa.Open;
    if qrypesquisa.Eof = false then
    begin
      var1.editbookmark('relatorio4', 0, 0, 0, 1);
      if qrypesquisa.FieldByName('prev_data').value > date then
        Var1.Insert(qrypesquisa.FieldByName('prev_data').AsString);
    end;

    Screen.Cursor := crDefault;
    var1.AppShow;
  end;

  procedure Imprime;
  var
    palavra: string;
    clausula: array[1..6] of string;
    controle: integer;
    imprimetudo: boolean;
  begin

    imprimetudo := true;
    if ckatividades.Checked then
      imprimetudo := false;
    if ckbolsa.Checked then
      imprimetudo := false;
    if ckjornada.Checked then
      imprimetudo := false;
    if ckprazo.Checked then
      imprimetudo := false;


    controle := 0;
    Clausula[1] := 'PRIMEIRA';
    Clausula[2] := 'SEGUNDA';
    Clausula[3] := 'TERCEIRA';
    Clausula[4] := 'QUARTA';
    Clausula[5] := 'QUINTA';
    Clausula[6] := 'SEXTA';

    if tipopessoa = 'X' then
      palavra := 'unidade'
    else
      palavra := 'parte';

    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    if CodEsc = '200' then
      var1.FileNew(FORINI.Diretorio + 'tce_mod1UT.dot')
    else
      var1.FileNew(FORINI.Diretorio + 'tce_mod1.dot');
    if CodEsc = '200' then
    begin
      Var1.Font('Arial', 8);
      Var1.Insert(#13 + #13);
      Var1.Insert(#13 + #13);
      Var1.Insert(#13);
    end;

    // Cabe�alho
    Var1.CenterPara;
    Var1.Font('Arial', 11);
    Var1.Bold;
    Var1.Insert('ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO ');
    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert('OBRIGAT�RIO ')
    else
      var1.Insert('N�O OBRIGAT�RIO ');
    Var1.Insert('N� ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));

    Var1.Insert(#13 + #13);
    Var1.Font('Arial', 8);

    // Texto Inicial
    Var1.JustifyPara;
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert('INSTITUI��O DE ENSINO');
    Var1.Bold;
    Var1.Insert(', a ');
    Var1.Bold;
    Var1.Insert('PARTE CONCEDENTE');
    Var1.Bold;
    Var1.Insert(', e o ');
    Var1.Bold;
    Var1.Insert('ESTUDANTE');
    Var1.Bold;
    Var1.Insert(', abaixo relacionados, firmam esta altera��o ao TERMO DE COMPROMISSO E EST�GIO ');
    Var1.Insert('N� ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));
    Var1.Insert(', atrav�s do Agente de Integra��o ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, ');
    Var1.Bold;
    Var1.Insert('agente de integra��o declarado de utilidade p�blica, de fins educacionais e sem intuito ');
    Var1.Insert('lucrativo, com sede na cidade de Curitiba, Estado do Paran�, na Avenida Igua�u n�. 2345, 1� andar, ');
    Var1.Insert('inscrita no CNPJ/MF sob n�. 02.217.643/0001-17, neste ato representado por seu Diretor-Presidente ');
    Var1.Insert('Rodrigo Kotzias Moscalewski, brasileiro, casado, empres�rio, portador da carteira de identidade RG ');
    Var1.Insert('n�. 3.655.060-0 SSP/PR e inscrito no CPF/MF sob n�. 873.751.419-91, conforme faculta a Lei n� 11.778 de 25/09/2008.' + #13);
    Var1.Font('Arial', 11);
    Var1.Insert(#13);
    Var1.Font('Arial', 8);
    // Parte da institui��o de ensino

    Var1.JustifyPara;
    Var1.Underline;
    verfonte;
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
      verfonte;
      Var1.Insert('PARTE CONCEDENTE' + #13);
      verfonte;
      Var1.Insert('Raz�o Social: ' + #9 + nomeemp + #13);
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
      end; }

    end
    else
    begin
      Var1.Underline;
      verfonte;
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

      Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeemp) + #13);
      verfonte;
      Var1.Insert('CEP: ' + #9 + cepemp + #9);
      Var1.Insert('Telefone: ' + #9 + telemp + #13);
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
        Var1.Insert(#13);
        verfonte;
      end
      else
      begin
        Var1.Insert('�rea de atua��o: ' + #9 + AreaSuperEst + #13);
        verfonte;
        Var1.Insert('Tempo de experi�ncia comprovada: ' + ExpSuperEst + #13);
        verfonte;
        Var1.Insert(#13);
        verfonte;
      end;}
    end;

    // supervisor do Est�gio
    verfonte;
    Var1.Insert('Supervisor de Est�gio: ' + #9 + cbsuper.Text + #13);
    verfonte;
    Var1.Insert('Cargo: ' + #9 + DmDTA.quTcealteracaocargo.AsString + #13);
    verfonte;
    if ckf1.Checked then
      Var1.Insert('Forma��o Acad�mica: ' + #9 + DmDTA.quTcealteracaoFormacao.AsString);
    if ckr1.Checked then
    begin
      verfonte;
      if ckf1.Checked then
        Var1.Insert(#9 + 'N� Registro Conselho:' + #9 + DmDTA.quTceAlteracaoregistro.AsString + #13)
      else
        Var1.Insert('N� Registro Conselho:' + #9 + DmDTA.quTceAlteracaoregistro.AsString + #13)
    end
    else
      if ckf1.Checked then
        Var1.Insert(#13);
    verfonte;
    if ckf2.Checked then
      Var1.Insert('Outra Forma��o: ' + #9 + DmDTA.quTceALTERACAOoutraformacao.AsString);
    if ckr2.Checked then
    begin
      verfonte;
      if ckf2.Checked then
        Var1.Insert(#9 + 'N� Registro Conselho:' + #9 + DmDTA.quTceAlteracaoregistro2.AsString + #13)
      else
        Var1.Insert('N� Registro Conselho:' + #9 + DmDTA.quTceAlteracaoregistro2.AsString + #13)
    end
    else
      if ckf2.Checked then
        Var1.Insert(#13);
    verfonte;
    if ckarea.Checked then
      Var1.Insert('�rea de atua��o: ' + #9 + DmDTA.quTceAlteracaoarea.AsString + #13);
    verfonte;

    if cktempo.Checked then
      Var1.Insert('Tempo de experi�ncia comprovada: ' + DmDTA.quTceAlteracaoTempo.AsString + #13);
    Var1.Insert(#13);



    ///
    // parte do estudante
    Var1.Underline;
    verfonte;
    Var1.Insert('ESTUDANTE' + #13);
    verfonte;
    Var1.Insert('Nome: ' + #9 + nomeest + #9);
    Var1.Insert('Data Nascimento: ' + #9 + dataest + #13);
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
    if numMatEsc <> '' then
      Var1.Insert('Matr�cula: ' + #9 + NumMatEsc + #13);
    verfonte;
    Var1.Insert('Curso: ' + #9 + curEst + #13);
    verfonte;
    Var1.Insert('Per�odo/Ano: ' + #9 + perAtu + #13);
    verfonte;

    Var1.Insert(#13);

    // cl�usulas do TCE
    Var1.Font('Arial', 8);

    if imprimetudo then
    begin
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
   // Var1.Bold;
   // Var1.Insert('CETEFE. ' + #13);
      Var1.Insert(#13);
      Var1.Insert(#13);
    // Cl�usula 02
      controle := 1;
      inc(controle);
      Var1.Bold;
      Var1.Insert('CL�USULA ' + clausula[controle] + ': LOCAL E JORNADA DE EST�GIO' + #13);
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


    // Cl�usula 03

      inc(controle);
      Var1.Bold;
      Var1.Insert('CL�USULA ' + clausula[controle] + ': ATIVIDADES' + #13);
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

      inc(controle);
      Var1.Bold;
      Var1.Insert('CL�USULA ' + clausula[controle] + ': BOLSA-AUX�LIO E AUX�LIO TRANSPORTE ' + #13);

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

      if dmdta.quTcealteracaotal_AuxTransp.AsString = 'R' then
        Var1.Insert('Recarga no �Cart�o Transporte" fornecido pela URBS � Urbaniza��o de Curitiba � S.A., correspondente ao n�mero de dias em que o ESTUDANTE realizar o est�gio durante o m�s.' + #13 + #13);

      if dmdta.quTcealteracaotal_AuxTransp.AsString = 'P' then
        if dmdta.quTcealteracaotal_AuxTranspValor.AsString <> '' then
          Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  ' + formatfloat('###,##0.00', dmdta.quTcealteracaotal_AuxTranspValor.value) + '(' + ansilower(pchar(Extenso(dmdta.quTcealteracaotal_AuxTranspValor.value))) + ').' + #13 + #13)
        else
          Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  .' + #13 + #13);

      if dmdta.quTcealteracaotal_AuxTransp.AsString = 'T' then
      begin
        Var1.Insert('Meio de locomo��o oferecido pela pr�pria ');
        Var1.Bold;
        Var1.Insert('PARTE CONCEDENTE;' + #13 + #13);
        Var1.Bold;
      end;
      if dmdta.quTcealteracaotal_AuxTransp.AsString = 'O' then
        Var1.Insert(dmdta.quTcealteracaotal_AuxTranspTEXTO.AsString + #13 + #13);

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
      controle := 9;
      Var1.Bold;

      Var1.Insert('CL�USULA NONA: PRAZO' + #13);
      Var1.Insert('Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + FormatDateTime('dd/mm/yyyy', DmDta.quTceAlteracaoTal_vigencia.AsDateTime) + ' at� ' + FormatDateTime('dd/mm/yyyy', DataFim) + ', podendo ser prorrogado atrav�s de Termo Aditivo, desde que o prazo total n�o seja superior a 2 (dois) anos.' + #13);
      Var1.Bold;
      Var1.Insert('Par�grafo �nico: ');
      Var1.Bold;
      Var1.Insert('Este instrumento poder� ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante comunica��o pr�via, sem que ');
      Var1.Insert('assista � outra parte direito a qualquer reclama��o. ' + #13);
      Var1.Insert(#13);

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
    end
    else
    begin
      // Com Escolha
      if ckjornada.Checked then
      begin
        inc(controle);
        Var1.Bold;
        Var1.Insert('CL�USULA ' + clausula[controle] + ': LOCAL E JORNADA DE EST�GIO' + #13);
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
      end;

    // Cl�usula 03
      if ckatividades.Checked then
      begin
        inc(controle);
        Var1.Bold;
        Var1.Insert('CL�USULA ' + clausula[controle] + ': ATIVIDADES' + #13);
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
      end;
    // Cl�usula 04
      if ckbolsa.Checked then
      begin
        inc(controle);
        Var1.Bold;
        Var1.Insert('CL�USULA ' + clausula[controle] + ': BOLSA-AUX�LIO E AUX�LIO TRANSPORTE ' + #13);

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

        if dmdta.quTcealteracaotal_AuxTransp.AsString = 'R' then
          Var1.Insert('Recarga no �Cart�o Transporte" fornecido pela URBS � Urbaniza��o de Curitiba � S.A., correspondente ao n�mero de dias em que o ESTUDANTE realizar o est�gio durante o m�s.' + #13 + #13);

        if dmdta.quTcealteracaotal_AuxTransp.AsString = 'P' then
          if dmdta.quTcealteracaotal_AuxTranspValor.AsString <> '' then
            Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  ' + formatfloat('###,##0.00', dmdta.quTcealteracaotal_AuxTranspValor.value) + '(' + ansilower(pchar(Extenso(dmdta.quTcealteracaotal_AuxTranspValor.value))) + ').' + #13 + #13)
          else
            Var1.Insert('Aux�lio pecuni�rio no valor mensal de R$  .' + #13 + #13);

        if dmdta.quTcealteracaotal_AuxTransp.AsString = 'T' then
        begin
          Var1.Insert('Meio de locomo��o oferecido pela pr�pria ');
          Var1.Bold;
          Var1.Insert('PARTE CONCEDENTE;' + #13 + #13);
          Var1.Bold;
        end;
        if dmdta.quTcealteracaotal_AuxTransp.AsString = 'O' then
          Var1.Insert(dmdta.quTcealteracaotal_AuxTranspTEXTO.AsString + #13 + #13);

      end;
      if ckprazo.Checked then
      begin
        inc(controle);
        Var1.Bold;
        Var1.Insert('CL�USULA ' + clausula[controle] + ': PRAZO' + #13);
        Var1.Insert('Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + FormatDateTime('dd/mm/yyyy', DmDta.quTceAlteracaoTal_vigencia.AsDateTime) + ' at� ' + FormatDateTime('dd/mm/yyyy', DataFim) + ', podendo ser prorrogado atrav�s de Termo Aditivo, desde que o prazo total n�o seja superior a 2 (dois) anos.' + #13);
        Var1.Bold;
        Var1.Insert('Par�grafo �nico: ');
        Var1.Bold;
        Var1.Insert('Este instrumento poder� ser extinto unilateralmente por qualquer das partes, a qualquer tempo, mediante comunica��o pr�via, sem que ');
        Var1.Insert('assista � outra parte direito a qualquer reclama��o. ' + #13);
        Var1.Insert(#13);
      end;
      inc(controle);
      Var1.Bold;
      Var1.Insert('CL�USULA ' + clausula[controle] + ': DISPOSI��ES' + #13);
      Var1.Insert('Permanecem inalteradas todas as demais disposi��es do Termo de Compromisso de Est�gio, do qual este Termo de Altera��o  passa a fazer parte integrante.' + #13);
      Var1.Insert(#13);
      inc(controle);
      Var1.Bold;
      Var1.Insert('CL�USULA ' + clausula[controle] + ': FORO' + #13);
      if codesc <> '200' then
      begin
        Var1.Insert('Fica eleito o Foro Central da Comarca da Regi�o Metropolitana de Curitiba, Estado do Paran�, para dirimir quaisquer d�vidas ou quest�es oriundas deste instrumento. ' + #13);
        Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em 04 (quatro) vias de igual teor e forma. ' + #13);
        Var1.Insert(#13);
      end
      else
      begin
        Var1.Insert('Fica eleito o Foro da Justi�a Federal, Se��o Judici�ria de Curitiba, Estado do Paran�, para dirimir quaisquer d�vidas ou quest�es oriundas deste instrumento.' + #13);
        Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em 04 (quatro) vias de igual teor e forma.' + #13);
      end;
    end;

    // Parte final do documento - data e assinaturas
    Var1.CenterPara;
    Var1.Insert('Curitiba, ' + datac + '. ' + #13);
    Var1.Insert(#13 + #13 + #13);

    if CodEsc = '331' then
    begin
      Var1.JustifyPara;
      Var1.Insert(#13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('              REPRESENTANTE DA INSTITUI��O DE ENSINO                                     REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                   ORIENTADOR DA INSTITUI��O DE ENSINO                                SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                              COORDENADOR DO CURSO                                                                   REPRESENTANTE DO CETEFE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.CenterPara;
      Var1.Insert('________________________________________________' + #13);
      Var1.CenterPara;
      Var1.Insert('ESTUDANTE');
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



  end;



begin
  inherited;
  CarregaDados;
  completadados;

  // Verifica os dados a serem solicitados, de acordo com a institui��o do estudante

  // N�mero de matricula -> somente para UFPR
  if CodEsc = '331' then
 //   InputQuery('N� Matr�cula', 'N�mero', NumMatEsc);
    numMatEsc := dmdta.qutcetce_matricula.asstring;

{  InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
  SuperEst := AnsiUpperCase(SuperEst);

  if rdEscolha.ItemIndex > 0 then
  begin
    if rdEscolha.ItemIndex = 0 then
      formSuperEst := DmDTA.quTceAlteracaoFormacao.AsString;
    if rdEscolha.ItemIndex = 1 then
      formSuperEst := DmDTA.quTceAlteracaoOutraformacao.AsString;
    if rdEscolha.ItemIndex = 2 then
      formSuperEst := '';
  end;
  if rdEscolha.ItemIndex <> 2 then
  begin
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
  end;
 }
 // InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
//  FormSuperEst := AnsiUpperCase(FormSuperEst);
  resporientador := DmDTA.quTceAlteracaoprofessororientador.AsString;
  InputQuery('Orientador', 'Professor Orientador', respOrientador);
  respOrientador := AnsiUpperCase(respOrientador);
  carOrientador := DmDTA.quTceAlteracaoorientadorCargo.AsString;
  InputQuery('Orientador', 'Forma��o do Orientador de Est�gio', carOrientador);
  carOrientador := AnsiUpperCase(carOrientador);

  hr1 := ''; hr2 := ''; hr3 := ''; hr4 := '';
  if meEnt1.Text <> '  :  ' then
    hr1 := meEnt1.Text;
  if meSai1.Text <> '  :  ' then
    hr2 := meSai1.Text;
  if meEnt2.Text <> '  :  ' then
    hr3 := meEnt2.Text;
  if meSai2.Text <> '  :  ' then
    hr4 := meSai2.Text;

  CalcHora();
  imprimenovo;
 // Imprime; // Chama a rotina que imprime
end;

procedure TFORTAL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F6 then btImprimirClick(Sender);
end;

procedure TFORTAL.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORTAL.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if not DBEdit2.Field.IsNull then
    eTotal := DBEdit2.Text;
end;

procedure TFORTAL.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(tal_cod) as Maximo,');
    SQL.Add('  min(tal_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  TceAlteracao');
    Sql.Add('where');
    Sql.Add('  tce_cod = ' + edTceCod.Text);
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

procedure TFORTAL.LimpaCampos;
begin
  meTceVig.Clear;
  meEnt1.Clear;
  meSai1.Clear;
  meEnt2.Clear;
  meSai2.Clear;
  meTalDtRet.Clear;
end;

procedure TFORTAL.meEnt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Digitou := True;
  if (not (quPrincipal1.State in [dsInsert, dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.meTceVigKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (quPrincipal1.State in [dsInsert, dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.cbTipoBolsaClick(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal1.State in [dsInsert, dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.meTalDtRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Digitou := True;
  if (not (quPrincipal1.State in [dsInsert, dsEdit])) then quPrincipal1.Edit;
  Retorno := True;
end;

procedure TFORTAL.btSabadoClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal1.State in [dsInsert, dsEdit]) then
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
    FORTALD := TFORTALD.Create(Self);
    Screen.Cursor := crDefault;
    FORTALD.domingo.Enabled := DBCheckBox8.Checked;
    FORTALD.segunda.Enabled := DBCheckBox2.Checked;
    FORTALD.terca.Enabled := DBCheckBox3.Checked;
    FORTALD.quarta.Enabled := DBCheckBox4.Checked;
    FORTALD.quinta.Enabled := DBCheckBox5.Checked;
    FORTALD.sexta.Enabled := DBCheckBox6.Checked;
    FORTALD.sabado.Enabled := DBCheckBox7.Checked;
    FORTALD.ShowModal;

    // recalcula o hor�rio
    if (not quPrincipal1.FieldByName('tal_horsabini1').IsNull) then
      Hr5 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabini1').Value)
    else
      Hr5 := '';
    if (not quPrincipal1.FieldByName('tal_horsabfim1').IsNull) then
      Hr6 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabfim1').Value)
    else
      Hr6 := '';
    if (not quPrincipal1.FieldByName('tal_horsabini2').IsNull) then
      Hr7 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabini2').Value)
    else
      Hr7 := '';
    if (not quPrincipal1.FieldByName('tal_horsabfim2').IsNull) then
      Hr8 := FormatDateTime('hh:nn', quPrincipal1.FieldByName('tal_horsabfim2').Value)
    else
      Hr8 := '';
    // chama rotina que faz o rec�lculo das horas
    Digitou := True;
    CalcHora();
  end;

  MudaAba := True;
end;

procedure TFORTAL.DBCheckBox2Click(Sender: TObject);
begin
  inherited;
  if pgPrincipal.ActivePageIndex = 1 then
  begin
    Digitou := True;
    CalcHora;
  end;
end;

procedure TFORTAL.DBCheckBox7Click(Sender: TObject);
begin
  inherited;
  if pgPrincipal.ActivePageIndex = 1 then
    Digitou := True;
end;

procedure TFORTAL.CriaCampo(Tabela, campo, chave, condicao: string);
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


procedure TFORTAL.calchora();
var
  hor: array[1..20] of string;
  hsemana, Acumula, h1, h2, h3, h4, h5, h6, h7, h8: TDateTime;
  totDias: Integer;
  tot1: Double;
  DiaInicial, DiaFinal, horarios: string;
  semana, contador: integer;
  multiplicador: real;
  dias: array[1..7] of string;
  diassemana: integer;

  function Vdia(dia: string): boolean;
  begin

    if ((quPrincipal1.FieldByName('tal_Hor' + dia + 'ini1').asstring <> '') and
      (quPrincipal1.FieldByName('tal_Hor' + dia + 'fim1').asstring <> '')) or
      ((quPrincipal1.FieldByName('tal_Hor' + dia + 'ini2').asstring <> '') and
      (quPrincipal1.FieldByName('tal_Hor' + dia + 'fim2').asstring <> '')) then
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
  Horarios := '';
  if (hr1 = '') and (hr2 = '') then Exit;
  contador := 3;
  multiplicador := 4;
  semana := 0;
  HSemana := 0;
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
    diassemana := 0;
    if DBCheckBox2.Checked then
      inc(diassemana);
    if DBCheckBox3.Checked then
      inc(diassemana);
    if DBCheckBox4.Checked then
      inc(diassemana);
    if DBCheckBox5.Checked then
      inc(diassemana);
    if DBCheckBox6.Checked then
      inc(diassemana);
    if DBCheckBox7.Checked then
      inc(diassemana);
    if DBCheckBox8.Checked then
      inc(diassemana);



    Acumula := 0;
    //SEGUNDA
    if DBCheckBox2.Checked then
    begin
      if vdia('Seg') then
      begin
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegfim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorSegini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorSegfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorSegini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSegfim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerfim1').Value)) * 24;
        dec(semana);

        Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerfim1').Value);

        if quPrincipal1.FieldByName('Tal_HorTerini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorTerfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorTerini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorTerfim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuaini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuafim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuaini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuafim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorQuaini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuaini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorQuafim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuafim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorQuaini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuaini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuafim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuiini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuifim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuiini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuifim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorQuiini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuiini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorQuifim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuifim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorQuiini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuiini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorQuifim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexfim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorSexini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorSexfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorSexini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSexfim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabfim1').Value)) * 24;
        Horarios := Horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabfim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorSabini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorSabfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorSabini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorSabfim2').Value);
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
        h1 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomini1').Value)) * 24;
        h2 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomfim1').Value)) * 24;
        Horarios := horarios + ', das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomini1').Value) +
          ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomfim1').Value);
        dec(semana);

        if quPrincipal1.FieldByName('Tal_HorDomini2').asstring <> '' then
          h3 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomini2').Value)) * 24
        else
          h3 := 0;
        if quPrincipal1.FieldByName('Tal_HorDomfim2').asstring <> '' then
          h4 := strtoTime(FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomfim2').Value)) * 24
        else
          h4 := 0;
        if quPrincipal1.FieldByName('Tal_HorDomini2').asstring <> '' then
          horarios := horarios + ' e das ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomini2').Value) +
            ' �s ' + FormatDateTime('hh:nn', quPrincipal1.FieldByName('Tal_HorDomfim2').Value);
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

    periodo := Diainicial + ' a ' + Diafinal + ' ';
    dtc := '';
    if semana > 0 then
    begin
      dtc := 'das ' + hor[1] + hor[2] + hor[3] + hor[4] + hor[5] + ' �s ' + hor[6] + hor[7] + hor[8] + hor[9] + hor[10];
      if (hr3 <> '') or (hr4 <> '') then
        dtc := dtc + ' e das ' + hor[11] + hor[12] + hor[13] + hor[14] + hor[15] + ' �s ' + hor[16] + hor[17] + hor[18] + hor[19] + hor[20];
    end;
    if ckEscala.Checked then
      dtc := 'durante ' + strzero(diassemana, 2) + ' (' + dias[diassemana] + ') dias da semana, conforme escala, ' + dtc;
    dtc := dtc + ' horas' + horarios;

    // hor�rio de s�bado
    {if (hr5 <> '') or (hr6 <> '') then
    begin
      dtc := dtc + ' de ' + diaInicial + ' � ' + diaFinal + ', e das ' + hr5 + ' �s ' + hr6;
      if (hr7 <> '') or (hr8 <> '') then
        dtc := dtc + ' e das ' + hr7 + ' �s ' + hr8;
      dtc := dtc + ' aos s�bados';
    end;}

    tot1 := arredondar(acumula * 1.1, 2);

    //((h2 - h1) + (h4 - h3)) * totDias + ((h6 - h5) + (h8 - h7)) * 4;
    etotal := FloatToStr(tot1);
    STotal := FloatToStr(arredondar(Hsemana, 2));
    edsemana.Text := Stotal;
    if quPrincipal1.active then
    begin
      if quPrincipal1.State = dsInsert then
      begin
        if Digitou then
          quPrincipal1.FieldByName('tal_tothoras').Value := Tot1;
        eTotal := quPrincipal1.FieldByName('tal_tothoras').Text;
      end
      else
      begin
        if Digitou then
        begin
          if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
          quPrincipal1.FieldByName('tal_tothoras').Value := Tot1;
        end;
        eTotal := quPrincipal1.FieldByName('tal_tothoras').Text;
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




procedure TFORTAL.DBEdit14DblClick(Sender: TObject);
begin
  inherited;
  if frmlibera.showmodal = mrok then
    DBEdit14.readonly := false
  else
    showmessage('Voc� n�o tem Permiss�o para trocar este Status nessa tela!!');

end;

procedure TFORTAL.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not (DmDta.qutcealteracao.State in [dsInsert, dsEdit]) then dmDta.qutceAlteracao.Edit;
  DmDta.quTceAlteracaoTal_Auxtransp.AsString := '';
  rdauxilio.ItemIndex := -1;
  DmDta.quTceAlteracaoTal_Auxtransptexto.AsString := '';
  DmDta.quTceAlteracaoTal_Auxtranspvalor.asstring := '';
end;

procedure TFORTAL.btNovoClick(Sender: TObject);
begin
  inherited;
  DmDta.quTCEAlteracaotal_AuxTransp.Text := DmDta.BuscaCampo('Vaga', 'Vag_AuxTransp', 'Vag_cod', DmDta.quTCEVAg_Cod.asinteger);
  DmDta.quTCEalteracaotal_AuxTranspValor.text := DmDta.BuscaCampo('Vaga', 'Vag_AuxTranspValor', 'Vag_cod', DmDta.quTCEVag_Cod.asinteger);
  DmDta.quTCEAlteracaotal_AuxTransptexto.value := DmDta.BuscaCampo('Vaga', 'Vag_AuxTransptexto', 'Vag_cod', DmDta.quTCEVag_Cod.asinteger);
end;

procedure TFORTAL.rdauxilioChange(Sender: TObject);
begin
  inherited;
  nb.ActivePage := 'Default';
  dbedit13.Enabled := rdauxilio.ItemIndex = 1;
  dbedit14.Enabled := rdauxilio.ItemIndex = 3;
  case rdauxilio.ItemIndex of
    1: nb.ActivePage := 'Valor';
    3: nb.ActivePage := 'outro';
  end;
end;

procedure TFORTAL.cbSuperExit(Sender: TObject);
var
  total: integer;
begin
  inherited;
  if (quPrincipal1.State in [dsInsert, dsEdit]) then
  begin
    DmDta.quTceAlteracaoEmp_cod2.AsInteger := qrysupervisoremp_cod.AsInteger;
    if (CodEstudante > 0) and
      (DmDta.quTceAlteracaoFunc_cod.Asstring <> '') then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;

        Sql.add('select EmpFuncRest.*,Instituicao.inst_nome from EmpFuncRest,Instituicao where  Instituicao.Inst_cod = EmpFuncRest.inst_cod and  emp_cod=' + DmDta.quTceAlteracaoEmp_cod2.AsSTRING + ' and Func_cod = ' + DmDta.quTceAlteracaoFunc_cod.AsString + ' and  Instituicao.inst_cod=' + DmDta.BuscaCampo('Estudante', 'inst_cod', 'Est_cod', codEstudante));
        Open;
        if eof = false then
        begin
          showmessage('A Institui��o de ensino do Estudante possui restri��es quanto a este Supervisor!!');
          DmDta.quTcealteracaoFunc_cod.AsString := '';
          Close;
          Free;
          exit;
        end;
        Close;
        Free;
      end;
    end;
     ////
   { if (DmDta.quTceAlteracaoFunc_cod.Asstring <> '') then
    begin
      with TQuery.Create(nil) do
      begin
        Total := 0;
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.add(' select count(tce_cod) Estagiarios  ');
        Sql.add(' from tce t    where ');
        Sql.add(' t.tce_situacao <> ''7'' and ');
        Sql.add(' t.Func_cod =' + DmDta.quTceAlteracaoFunc_cod.AsString + ' and ');
        Sql.add(' t.emp_cod = ' + DmDta.quTceAlteracaoEmp_cod2.AsSTRING + '  and t.tce_cod not in (select tce_cod from tcealteracao )  ');
        Open;
        total := fieldbyname('Estagiarios').asinteger;
        close;
        Sql.Clear;
        Sql.add(' select func_cod  from ');
        Sql.add(' from tcealteracao  where  tceAlteracao.tce in (select tce from tce t where ');
        Sql.add(' t.tce_situacao <> ''7'' and ');
        Sql.add(' t.Func_cod =' + DmDta.quTcealteracaoFunc_cod.AsString + ' and ');
        Sql.add(' t.emp_cod = ' + DmDta.quTceAlteracaoEmp_cod2.AsSTRING + '   )  order by tal_cod desc ');
        Open;
        if not eof then
        begin
          if fieldbyname('Func_cod').asstring = DmDta.quTcealteracaoFunc_cod.AsString then
            inc(total)
        end;

        if total >= 10 then
        begin
          showmessage('Este Supervisor Possui 10 Estagi�rios Ativos!!');
          if DmDta.quTcealteracao.State in [dsinsert] then
            DmDta.quTcealteracaoFunc_cod.AsString := '';
          Close;
          Free;
          exit;
        end;
        Close;
        Free;
      end;
    end;}

    if (DmDta.quTceAlteracaoFunc_cod.Asstring <> '') then
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

        parambyname('empresa').AsInteger := DmDta.quTceAlteracaoEmp_cod2.AsInteger;
        parambyname('func').AsInteger := DmDta.quTceAlteracaoFunc_cod.asinteger;
        Open;
        total := fieldbyname('t2').asinteger;

        if total >= 10 then
        begin
          showmessage('Este Supervisor Possui 10 Estagi�rios Ativos!!');
          if DmDta.quTceAlteracao.State in [dsinsert] then
            DmDta.quTceALTERACAOFunc_cod.AsString := '';
          Close;
          Free;
          exit;
        end;
        Close;
        Free;
      end;
    end;
    ////

  end;
end;

procedure TFORTAL.SpeedButton7Click(Sender: TObject);
begin
  if DmDta.quTceAlteracao.State in [dsedit, dsinsert] = false then
    if dmdta.quTceAlteracao.IsEmpty = false then
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



procedure TFORTAL.SpeedButton1Click(Sender: TObject);
begin


  MudaAba := False;
  if (quPrincipal1.State in [dsInsert, dsEdit]) then
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
    FORTALAT := TFORTALAT.Create(Self);
    FORTALAT.SetaCodigo(dmdta.quTceTce_cod.AsInteger, DmDta.quTceAlteracaotal_cod.AsInteger);
    Screen.Cursor := crDefault;
    FORTALAT.ShowModal;
  end;
  MudaAba := True;

end;

procedure TFORTAL.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORMTalObs := TFORMTalObs.Create(Self);
  Screen.Cursor := crDefault;
  FORMTalObs.ShowModal;
end;

procedure TFORTAL.DBEdit24DblClick(Sender: TObject);
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
    if DmDta.qutcealteracao.Active then
    begin
      if (DmDta.quTceAlteracao.State in [dsInsert, dsEdit]) then
      begin
        DmDta.quTcealteracao.FieldByName('tAL_orientador').Text := FORIFU.F2Codigo;
        DmDta.quTceAlteracao.FieldByName('inst_cod').Text := inttostr(FORIFU.inst);
      end;
    end;
    SelectNext(ActiveControl, True, true);
  end;
  FORIFU.Free;

end;

procedure TFORTAL.DBEdit24Exit(Sender: TObject);
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

  if (DmDta.quTceAlteracao.State in [dsInsert, dsEdit]) then
  begin
    DmDta.quTceAlteracao.FieldByName('inst_cod').Text := inttostr(escola);
  end;

end;

procedure TFORTAL.pgPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgprincipal.ActivePageIndex = 1 then
    if quPrincipal1.IsEmpty = false then
      quprincipal1.Edit;
end;

end.





procedure TFORTAL.calchora();
var
  hor: array[1..20] of string;
  h1, h2, h3, h4, h5, h6, h7, h8: TDateTime;
  totDias: Integer;
  tot1: Double;
  DiaInicial, DiaFinal: string;

begin

  if (hr1 = '') and (hr2 = '') then Exit;

  try
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

    if hr5 <> '' then
      h5 := strtoTime(hr5) * 24
    else
      h5 := 0;

    if hr6 <> '' then
      h6 := strtoTime(hr6) * 24
    else
      h6 := 0;

    if hr7 <> '' then
      h7 := strtoTime(hr7) * 24
    else
      h7 := 0;

    if hr8 <> '' then
      h8 := strtoTime(hr8) * 24
    else
      h8 := 0;

    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    if h6 < h5 then
      h6 := 24 + h6;
    if h8 < h7 then
      h8 := 24 + h8;

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
    dias[1] := 'um';
    dias[2] := 'dois';
    dias[3] := 'tres';
    dias[4] := 'qatro';
    dias[5] := 'cinco';
    dias[6] := 'seis';
    dias[7] := 'sete';

    if dmdta.qutcealteracaotal_domingo.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_segunda.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_terca.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_quarta.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_quinta.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_Sexta.AsString = '1' then
      inc(diassemana);
    if dmdta.qutcealteracaotal_Sabado.AsString = '1' then
      inc(diassemana);


    // Verifica os dias da semana
    TotDias := 30; // valor inicial
    TotDias := TotDias - 8; // desconta domingo e s�bado
    if not DBCheckBox2.Checked then
      TotDias := TotDias - 4;
    if not DBCheckBox3.Checked then
      TotDias := TotDias - 4;
    if not DBCheckBox4.Checked then
      TotDias := TotDias - 4;
    if not DBCheckBox5.Checked then
      TotDias := TotDias - 4;
    if not DBCheckBox6.Checked then
      TotDias := TotDias - 4;

    // dia inicial e final
    if DBCheckBox2.Checked then
    begin
      DiaInicial := 'segunda';
      if DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else if DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else if DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else if DBCheckbox6.Checked then
        DiaFinal := 'ter�a'
      else
        DiaFinal := 'segunda'
    end
    else if DBCheckBox3.Checked then
    begin
      DiaInicial := 'ter�a';
      if DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else if DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else if DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else
        DiaFinal := 'ter�a';
    end
    else if DBCheckBox4.Checked then
    begin
      DiaInicial := 'quarta';
      if DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else if DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else
        DiaFinal := 'quarta';
    end
    else if DBCheckBox5.Checked then
    begin
      DiaInicial := 'quinta';
      if DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else
        DiaFinal := 'quinta';
    end
    else
    begin
      DiaInicial := 'sexta';
      DiaFinal := 'sexta';
    end;

    dtc := hor[1] + hor[2] + hor[3] + hor[4] + hor[5] + ' �s ' + hor[6] + hor[7] + hor[8] + hor[9] + hor[10];
    if (hr3 <> '') or (hr4 <> '') then
      dtc := dtc + ' e das ' + hor[11] + hor[12] + hor[13] + hor[14] + hor[15] + ' �s ' + hor[16] + hor[17] + hor[18] + hor[19] + hor[20];
    // hor�rio de s�bado
    if (hr5 <> '') or (hr6 <> '') then
    begin
      dtc := dtc + ' de ' + diaInicial + ' � ' + diaFinal + ', e das ' + hr5 + ' �s ' + hr6;
      if (hr7 <> '') or (hr8 <> '') then
        dtc := dtc + ' e das ' + hr7 + ' �s ' + hr8;
      dtc := dtc + ' aos s�bados';
    end;

    tot1 := ((h2 - h1) + (h4 - h3)) * totDias + ((h6 - h5) + (h8 - h7)) * 4;
    etotal := FloatToStr(tot1);

    if quPrincipal1.State = dsInsert then
    begin
      if Digitou then
        quPrincipal1.FieldByName('tal_tothoras').Value := Tot1;
      eTotal := quPrincipal1.FieldByName('tal_tothoras').Text;
    end
    else
    begin
      if Digitou then
      begin
        if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
        quPrincipal1.FieldByName('tal_tothoras').Value := Tot1;
      end;
      eTotal := quPrincipal1.FieldByName('tal_tothoras').Text;
    end;

    meEnt1.Text := hr1;
    meSai1.Text := hr2;
    meEnt2.Text := hr3;
    meSai2.Text := hr4;
    Digitou := False;
  except
  end;
end;



  //*************************************************************//
  // TCE - modelo UTFPR                                          //
  //*************************************************************//

procedure ImprimeUTFPR;
var ValorInt: Integer;
  Valor, ValorCent: Double;
  ValString: string;
  DiasSemana: string;
begin
    // Verifica se n�o tem TA
  with DmDta.quTceAditivo do
  begin
    Close;
    ParamByName('tce_cod').AsInteger := DmDta.quTceTCE_COD.Value;
    Open;

    if IsEmpty then
      DataFim := DmDta.quTce.FieldByName('tce_datafim').AsDateTime
    else
    begin
      Last;
      DataFim := FieldByName('tpr_datafim').AsDateTime;
      Close;
    end;
  end;

  dtCompleta;

  ValString := FloatToStr(bolsa);
  DiasSemana := '111110';

  Valor := StrToFloat(ValString);
  ValorInt := Trunc(Valor);
  ValorCent := (Valor - ValorInt) * 100;

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

  var1 := CreateOleObject('Word.basic');
  var1.FileOpen(FORINI.Diretorio + 'tce_modelo2.doc');

  Var1.CenterPara;
  var1.Insert('ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO');
  var1.Insert(#13 + 'E ACORDO DE COOPERA��O');
  var1.Insert(#13 + #13);
  Var1.JustifyPara;
  var1.Insert('TCE N�   ' + DmDta.quTceTCE_COD.Text);
  var1.Insert(#13 + #13 + #13);
  var1.Insert(' Ao(s) ' + datac + ', na cidade de Curitiba, Paran�, a INSTITUI��O DE ');
  var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, atrav�s de seus repre');
  var1.Insert('sentantes celebram entre si o ACORDO DE COOPERA��O que ');
  Var1.Insert('vigorar� no per�odo entre ' + meTceVig.Text);
  Var1.Insert(' e ' + FormatDateTime('dd/mm/yyyy', DataFim) + ', podendo ser prorrogado atrav�s de termo aditivo, bem como denunciado a ');
  Var1.Insert('qualquer momento entre as partes, mediante comunicado por escrito e 30 (trinta) dias antecedentes, ');
  Var1.Insert('independendo de qualquer notifica��o ou interpela��o judicial. O presente ACORDO DE COOPERA��O ');
  var1.Insert('tem por objetivo formalizar  as condi��es b�sicas para a realiza��o de Est�gio do estudante da Institui��o ');
  var1.Insert('de Ensino junto � Unidade Concedente.');
  var1.Insert(#13);
  var1.Insert(#13 + 'INSTITUI��O DE ENSINO');
  var1.Insert(#13 + 'Raz�o Social: ' + nomeEsc);
  var1.Insert(#13 + 'Endere�o: ' + endesc);
  var1.Insert(#13 + 'Bairro: ' + baiesc + '                Cidade: ' + CidadeEsc);
  var1.Insert(#13 + 'CEP: ' + cepesc + '                Telefone: ' + telesc);
  var1.Insert(#13 + 'CNPJ: ' + cnpjesc);
  if CodEsc <> '331' then
  begin
    var1.Insert(#13 + 'Representada por: ' + respEsc);
    var1.Insert(#13 + 'Cargo: ' + caresc);
    if (CurCod = '14') or (CurCod = '15') then
      Var1.Insert(#13 + 'Coordenador do Curso: Dr(a). ' + CoordEsc);
  end
  else
  begin
    var1.Insert(#13 + 'Representada por: ');
    var1.Insert(#13 + 'Cargo: COORDENADOR(A) DE CURSO');
  end;
    // verifica o c�digo da escola, se n�o � UEM
  if CodEsc = '221' then
    var1.Insert(#13 + 'Orientador: ' + OrientadorEst);

  var1.Insert(#13 + #13);
  var1.Insert('UNIDADE CONCEDENTE');
  var1.Insert(#13 + 'Raz�o Social: ' + nomeemp);
  var1.Insert(#13 + 'Endere�o:' + endemp);
  var1.Insert(#13 + 'Bairro: ' + baiemp + '                Cidade: ' + CidadeEmp);
  var1.Insert(#13 + 'CEP: ' + cepemp + '                Telefone: ' + telemp);
  var1.Insert(#13 + 'CNPJ: ' + cnpjemp);
  var1.Insert(#13 + 'Representada por: ' + respemp);
  var1.Insert(#13 + 'Cargo: ' + caremp);
  if SuperEst <> '' then
  begin
    if (CurCod = '14') or (curcod = '15') then
      var1.Insert(#13 + 'Supervisor de Est�gio: Dr(a). ' + SuperEst)
    else
      var1.Insert(#13 + 'Supervisor de Est�gio: ' + SuperEst);
  end;
  if FormSuperEst <> '' then
    var1.Insert(#13 + 'Forma��o: ' + FormSuperEst);
  if CRJ <> '' then
    var1.Insert(#13 + 'N� do C.R.J.: ' + CRJ);
  if CREF <> '' then
    var1.Insert(#13 + 'N� do C.R.E.F.: ' + CREF);
  if CPP <> '' then
    var1.Insert(#13 + 'N� do C.R.P.: ' + CPP);
  if Conselho <> '' then
    var1.Insert(#13 + 'N� do Conselho: ' + Conselho);
  if Coren <> '' then
    var1.Insert(#13 + 'N� do C.O.R.E.N.: ' + Coren);
  if CRM <> '' then
    var1.Insert(#13 + 'N� do C.R.M.: ' + CRM);
  if CRO <> '' then
    var1.Insert(#13 + 'N� do C.R.O.: ' + CRO);
  if CodEsc = '221' then
    var1.Insert(#13 + 'Supervisor: ' + SuperEmp);

  var1.Insert(#13 + #13);
  var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUI��O DE ENSINO, e o ESTUDANTE:');
  var1.Insert(#13 + 'Estudante: ' + nomeest);
  if CodEsc = '331' then
    Var1.Insert(#13 + 'N�mero de Matr�cula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
  var1.Insert(#13 + 'Endere�o: ' + endest);
  var1.Insert(#13 + 'Bairro: ' + baiest + '                Cidade: ' + CidadeEst);
  var1.Insert(#13 + 'CEP: ' + Copy(cepest, 1, 2) + '.' + Copy(cepest, 3, 3) + '-' + Copy(cepest, 6, 3) + '                Telefone: (' + Copy(telest, 1, 2) + ') ' + Copy(telest, 3, 4) + '-' + Copy(telest, 7, 4));
  var1.Insert(#13 + 'RG: ' + rgest + '                     CPF: ' + CpfEst + '                     CTPS: ' + ctpest);
  var1.Insert(#13 + 'Curso: ' + curest);
  var1.Insert(#13 + 'Per�odo/Ano: ' + peratu);

  var1.Insert(#13 + #13);
  var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
  Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
  var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
  var1.Insert(#13 + #13);

    //// come�a aqui as cl�usulas

  var1.Insert('CL�USULA 1� - Caber� ao CETEFE, como Agente de Integra��o: ');
  var1.Insert(#13 + #13);
  var1.Insert('I) Celebrar e manter Conv�nio de Coopera��o com as Unidades Concedentes;' + #13);
  var1.Insert('II) Cadastrar, convocar e selecionar os estudantes, encaminhando-os �s Unidades Concedentes, de acordo com a necessidade da mesma;' + #13);
  var1.Insert('III) Captar oportunidade de Est�gio junto �s Unidades Concedentes, compatibilizando as atividades de Est�gio e o hor�rio de est�gio com o curso do Estagi�rio;' + #13);
  var1.Insert('IV) Desenvolver atividades de treinamento dos estagi�rios, bem como oferecer cursos, palestras, semin�rios e outras atividades que venham a ');
  var1.Insert('complementar o aprendizado e facilitar o desenvolvimento do Programa de Est�gio;' + #13);
  var1.Insert('V) Realizar intera��o entre as Unidades Concedentes e a Institui��o de Ensino, visando � assinatura do instrumento jur�dico previsto no Art. 5� do Decreto n� 87.497/82;' + #13);
  var1.Insert('VI) Providenciar a assinatura do Termo de Compromisso de Est�gio, entre a Unidade Concedente, o Estudante e a respectiva Institui��o de Ensino, de acordo com ');
  var1.Insert('o � 1�, do Art.6� do Decreto n� 87.497/82;' + #13);
  var1.Insert('VII) Acompanhar o estudante em toda a dura��o do Programa de Est�gio, atrav�s de relat�rios e visitas regulares, tanto ao estudante como ao (s) supervisores ');
  var1.Insert('(es) de est�gio do mesmo;' + #13);
  var1.Insert('VIII) Providenciar toda a documenta��o necess�ria para a efetiva��o do est�gio;' + #13);
  var1.Insert('IX) Providenciar a contrata��o de Seguros Contra Acidentes Pessoais em favor dos Estagi�rios, assumindo os custos correspondentes.' + #13 + #13 + #13);

  var1.Insert('CL�USULA 2� - Caber� � UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA - CAMPUS CURITIBA, como Institui��o de Ensino:' + #13 + #13);
  Var1.Insert('I) Comunicar ao CETEFE, sempre que necess�rio, desist�ncias, trancamento de matricula, conclus�o de curso, bem como outras informa��es �teis ao ');
  Var1.Insert('processo de manuten��o do Programa de Est�gio.' + #13);
  Var1.Insert('II) Comunicar ao CETEFE detalhes sobre o desempenho do estudante sempre que se fizer necess�rio;' + #13);
  Var1.Insert('III) Informar ao CETEFE a rela��o de todos os cursos que mant�m, bem como as condi��es m�nimas exigidas para realiza��o de est�gio em cada curso;' + #13);
  Var1.Insert('IV) Assinar o Termo de compromisso de Est�gio, que se for necess�rio para celebra��o  do est�gio entre o estudante e a Unidade Concedente.' + #13 + #13 + #13);

  var1.Insert('CL�USULA 3� - Caber� � Unidade Concedente (Empresa):' + #13 + #13);
  Var1.Insert('I) Informar ao CETEFE as vagas dispon�veis, identificando a �rea em que existem vagas, bem como das condi��es de realiza��o de est�gio;' + #13);
  Var1.Insert('II) Manter centralizadas as informa��es sobre o est�gio, indicando o respons�vel para tratar das quest�es relativas ao Programa de Est�gio;' + #13);
  Var1.Insert('III) Comunicar ao CETEFE os nomes dos estudantes que ir�o realizar est�gio;' + #13);
  Var1.Insert('IV) Comunicar ao CETEFE detalhes sobre o desempenho do estagi�rio sempre que se fizer necess�rio;' + #13);
  Var1.Insert('V) Celebrar com a Institui��o de Ensino, o Estudante e o Agente de Integra��o o Termo de Compromisso de Est�gio, de acordo com o � 1�, do Art. 6�, ');
  Var1.Insert('do Decreto n� 87.497/82;' + #13);
  Var1.Insert('VI) Informar ao CETEFE a Interrup��o, conclus�o ou eventuais modifica��es do est�gio, bem como outras informa��es de interesse ao desenvolvimento do Programa de Est�gio;' + #13);
  Var1.Insert('VII) Fixar a jornada de atividade do est�gio compatibilizando o hor�rio escolar do estudante com o hor�rio de trabalho da Unidade Concedente;' + #13);
  Var1.Insert('VIII) Efetuar o pagamento da bolsa-aux�lio, quando houver, em plena conformidade com o disposto neste instrumento emitindo e enviando c�pia do recibo ao CETEFE; ou' + #13);
  Var1.Insert('VIII) Repassar ao CETEFE a valor correspondente � bolsa-aux�lio, quando houver, ficando este respons�vel pelo repasse ao estagi�rio.' + #13);
  Var1.Insert('IX) Compete exclusivamente �s Unidades Concedentes disponibilizar, mensalmente, a quantia acordada neste instrumento ao estagi�rio seja qual for a modalidade ');
  Var1.Insert('de pagamento, isentando o CETEFE e a Institui��o de Ensino ora mencionada de quaisquer responsabilidades sobre o pagamento do estagi�rio, ficando, ');
  Var1.Insert('aquele respons�vel t�o somente pelo repasse quando estipulado contratualmente.' + #13 + #13 + #13);

  Var1.Insert('CL�USULA 4� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia entre o estudante e a Unidade Concedente. ');
  Var1.Insert('O presente Termo visa assegurar a complementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e desenvolvimento pessoal do Estagi�rio.' + #13 + #13);

  Var1.Insert('CL�USULA 5� - Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + meTceVig.Text + ' at� ' + FormatDateTime('dd/mm/yyyy', DataFim));
  Var1.Insert(', podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo.' + #13 + #13);

  Var1.Insert('CL�USULA 6� - As atividades de est�gio se far�o das ' + dtc + ',  per');
  var1.Insert('fazendo ' + etotal + ' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
  var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
  var1.Insert('de atividades poder� ser estabelecida entre as partes. A jornada de atividade em est�gio dever� compatibilizar-se com o ');
  Var1.Insert('hor�rio escolar do estagi�rio e com o hor�rio da Unidade Concedente. ');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 7� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
  var1.Insert('Profiss�o do curso do estudante.');
  var1.Insert(#13 + #13);
  var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
  var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
  var1.Insert(#13 + #13 + #13 + #13);
  var1.Insert('1. ' + at[1]);
  var1.Insert(#13 + '2. ' + at[2]);
  var1.Insert(#13 + '3. ' + at[3]);
  var1.Insert(#13 + '4. ' + at[4]);
  var1.Insert(#13 + '5. ' + at[5]);
  var1.Insert(#13 + #13 + #13);

  if Bolsa > 0 then
  begin
    var1.Insert('CL�USULA 8� - A Unidade Concedente remunerar� em R$ ' + FormatFloat('0.00', bolsa) + ' (' + exte + ' / ');
    var1.Insert(tipoBolsa + '), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
    var1.Insert('paga a partir do m�s subseq�ente ao vencimento, mediante a apresenta��o de ');
    var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
    var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
    var1.Insert('outro motivo qualquer.');
  end
  else
  begin
    var1.Insert('CL�USULA 8� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
    var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia  esta que ser� ');
    var1.Insert('paga a partir do m�s subseq�ente ao vencimento, mediante a apresenta��o de ');
    var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
    var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
    var1.Insert('outro motivo qualquer.');
  end;
  var1.Insert(#13 + #13);
  var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
  var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
  var1.Insert('fornecida pelo CETEFE, com o que se considerar� cumprida essa obriga��o por parte da UNIDADE ');
  var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
  var1.Insert(#13 + #13);
  var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
  var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
  var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 9� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
  var1.Insert('internas da Unidade Concedente.');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 10� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
  var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 11� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
  var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
  var1.Insert('a interrup��o autom�tica do referido Termo.');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 12� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
  var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
  var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
  var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 13� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
  var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
  var1.Insert(', sob a responsabilidade do CETEFE. ');

  Var1.Insert(#13 + #13);
  var1.Insert('CL�USULA 14� - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN� dar� publicidade a este Termo, em conson�ncia com preceitos legais vigentes.' + #13 + #13);
  var1.Insert('CL�USULA 15� - Fica eleito o Foro da Justi�a Federal, Se��o Judici�ria de Curitiba para dirimir quaisquer d�vidas ou quest�es jur�dicas ');
  var1.Insert('que se originarem na execu��o deste Termo.' + #13 + #13);
  Var1.Insert('CL�USULA 16� - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN�, em raz�o do interesse p�blico, ficando o ');
  var1.Insert('estagi�rio impossibilitado de desenvolver suas atividades nesta empresa. ' + #13 + #13);

  var1.Insert(#13 + #13 + #13);
  var1.Insert('E, por assim estarem de acordo, assinam este instrumento em 4 (quatro) vias de igual teor:');
  var1.Insert(#13 + #13 + #13 + #13);
  var1.Insert('                                                ________________________________________            ________________________________________');
  var1.Insert(#13 + '                                                     Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE');
  var1.Insert(#13 + #13 + #13 + #13);
  var1.Insert('                                                _________________________________________           ________________________________________ ');
  var1.Insert(#13 + '                                                     Representante da UNIDADE CONCEDENTE                                              Estudante');

  var1.Insert(#13 + #13 + #13);
  var1.Insert('                                             Testemunhas: ' + #13 + #13 + #13 + #13);
  var1.Insert('                                              _________________________________________	________________________________________' + #13);
  Var1.Insert('                                              Nome:	                                              		Nome:' + #13);
  Var1.Insert('                                              RG:			                 			RG:' + #13);
  Var1.Insert('                                              CPF:	                                              			CPF:' + #13 + #13 + #13);

  var1.Insert('   TCE: ' + DmDta.quTceTCE_COD.Text + '  -  Estudante:  ' + DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);

  var1.appshow;
  Screen.Cursor := crDefault;
end;

