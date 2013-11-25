unit TPOTAD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORTAD = class(TFORMOD3)
    Label1: TLabel;
    edTceCod: TEdit;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    meTceIni: TMaskEdit;
    meTceFim: TMaskEdit;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    btImprimir: TSpeedButton;
    qcontrato: TQuery;
    Label4: TLabel;
    meTceRet: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    meTceEmi: TMaskEdit;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label30: TLabel;
    cbSuper: TDBLookupComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    dssupervisor: TDataSource;
    qrySupervisor: TQuery;
    qrySupervisorNome: TStringField;
    qrySupervisorFunc_cod: TIntegerField;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    qrySupervisorEmp_cod: TIntegerField;
    SpeedButton10: TSpeedButton;
    rdEscolha: TDBRadioGroup;
    ckf1: TDBCheckBox;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    ckr1: TDBCheckBox;
    ckr2: TDBCheckBox;
    ckf2: TDBCheckBox;
    cktempo: TDBCheckBox;
    ckarea: TDBCheckBox;
    DBEdit24: TDBEdit;
    Label41: TLabel;
    DBEdit25: TDBEdit;
    Label42: TLabel;
    DBEdit26: TDBEdit;
    Label43: TLabel;
    qrypesquisa: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure meTceIniExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btExcluirClick(Sender: TObject);
    procedure meTceRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meTceIniKeyPress(Sender: TObject; var Key: Char);
    procedure cbSuperExit(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure pgPrincipalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tce: Integer;
    F2: Boolean;
    sTotal, hr1, hr2, hr3, hr4, dtc, etotal: string;
    Retorno: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
  end;

var
  FORTAD: TFORTAD;

implementation

uses TPODTA, TPOFNC, ComObj, TPOCST, TPOINI, TPOTPROBS, TPOIFU;

{$R *.DFM}

procedure TFORTAD.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'prg_cod';
  nomeNome := 'prg_cod';
  nomeTabela := 'TceAditivo';
  Tce := -1;

  quPrincipal1 := DmDta.quTceAditivo;
  Retorno := False;
  DmDta.dsTceAditivo.DataSet := quPrincipal1;
end;

procedure TFORTAD.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsTceAditivo.DataSet := DmDta.quTceAditivo;
end;

procedure TFORTAD.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('tce_cod').Value := Tce;
  quPrincipal1.FieldByName('prg_cod').Value := 0;
  meTceEmi.Text := FormatDateTime('dd/mm/yyyy', Date);
  Retorno := True;
  meTceIni.SetFocus;
end;

procedure TFORTAD.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qrysupervisor.close;
  qrysupervisor.ParamByName('vaga').AsInteger := DmDta.quTcevag_cod.asinteger;
  qrysupervisor.Open;
  with quPrincipal1 do
  begin
    ParamByName('tce_cod').AsInteger := Tce;
    Open;
  end;
  inherited;
  Screen.Cursor := crDefault;
end;

procedure TFORTAD.btSalvarClick(Sender: TObject);
var
  Ret: Boolean;

  procedure AtualizaSitTce();
  begin
    with DmDta.quTce do
    begin
      Edit;
      DmDta.quTcetce_situacao.Value := quPrincipal1.FieldByName('prg_cod').AsString;
      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  end;

begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if meTceIni.Text = '  /  /     ' then
    begin
      MSGERRO('Entre com a data de início do TA!');
      meTceIni.SetFocus;
    end
    else if meTceFim.Text = '  /  /     ' then
    begin
      MSGERRO('Entre com a data de término do TA!');
      meTceFim.SetFocus;
    end
    else if StrToDate(meTceIni.Text) > StrToDate(meTceFim.Text)   then
    begin
      MSGERRO('A data de término não deve ser menor que a data de início do TA!');
      meTceFim.SetFocus;
    end
    else
    begin
      btEnter.SetFocus;
      Ret := Retorno;

      if quPrincipal1.State in [dsInsert, dsEdit] then
      begin
        try
          AtualizaDados;

          DMDta.SalvarRegistro(quPrincipal1);
          if (quPrincipal1.FieldByName('tpr_dataini').AsDateTime <= Date) then
            AtualizaSitTce;
          if Ret then
            DmDta.AtualizaPgtoEstagiario(DmDta.quTceest_cod.AsInteger, DmDta.quTcetce_cod.AsInteger);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end;

      estadoNavegando;
      pgPrincipal.ActivePage := tbConsulta;
    end;
  end;
end;

procedure TFORTAD.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('prg_cod').AsString;
    F2Nome := quPrincipal1.FieldByName('prg_cod').AsString;
    Close;
  end
  else
  begin
    inherited;
    pgPrincipalChange(Sender);
  end;
end;

procedure TFORTAD.SetaCodigo(Codigo: Integer);
begin
  Tce := Codigo;
  edTceCod.Text := IntToStr(Tce);
end;

procedure TFORTAD.AtualizaDados;
begin
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('prg_cod').Value := ultimoRegistro;
  end;
  quPrincipal1.FieldByName('tpr_dataemi').text := meTceEmi.Text;
  quPrincipal1.FieldByName('tpr_dataini').text := meTceIni.Text;
  quPrincipal1.FieldByName('tpr_datafim').text := meTceFim.Text;
  if meTceRet.Text <> '  /  /    ' then
    quPrincipal1.FieldByName('tpr_retorno').Text := meTceRet.text
  else
    quPrincipal1.FieldByName('tpr_retorno').Text := '';
end;

procedure TFORTAD.CarregaDados;
begin
  Retorno := False;
  if not quPrincipal1.FieldByName('tpr_dataemi').IsNull then
    meTceEmi.Text := quPrincipal1.FieldByName('tpr_dataemi').text;
  if not quPrincipal1.FieldByName('tpr_dataini').IsNull then
    meTceIni.Text := quPrincipal1.FieldByName('tpr_dataini').text;
  if not quPrincipal1.FieldByName('tpr_datafim').IsNull then
    meTceFim.Text := quPrincipal1.FieldByName('tpr_datafim').text;
  if not quPrincipal1.FieldByName('tpr_retorno').IsNull then
    meTceRet.Text := quPrincipal1.FieldByName('tpr_retorno').Text;
end;

procedure TFORTAD.meTceIniExit(Sender: TObject);
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
    if TMaskEdit(Sender).Name = 'meTceIni' then
      meTceFim.Text := datetostr(IncMonth(strtodate(meTceIni.Text), 6) - 1);
  end;
end;

procedure TFORTAD.btImprimirClick(Sender: TObject);
var
  var1: variant;
  CodEsc, Emp: string;
  datac: string[37];
  agencia, conta, exte, datana: string;
  TipoPessoa: string;
  respOrientador, carOrientador: string;
  direesc, endesc, baiesc, cidadeEsc, cnpjesc, caresc, telesc, cepesc, nomeesc, RespEsc: string;
  endemp, baiemp, cidadeEmp, telemp, cepemp, cnpjemp, caremp, respemp, nomeemp: string;
  serieEst, curcod, turest, estadoest, cpfest, nummatesc, endest, baiest, cidadeEst,
    dataest, estadoesc, telest, cepest, rgest, ctpest, curest, nomeEst: string;
  ce, ces, contador: integer;
  uce, dce: string;
  AreaSuperEst, ExpSuperEst, CoordEsc, SuperEst, CargoSuperEst, FormSuperEst: string;
  inscemp, faxemp, estadoEmp, SuperEmp, AreaEst, OrientadorEst: string;
  num: integer;
  vias, uni, dez, cen: string;
  centa, unida, dezen, cente, perAtu, tipobolsa: string;
  bolsa: Double;


  //*************************************************************//
  // Parte inicial - Busca dos dados para impressão              //
  //*************************************************************//

  procedure completadados;
  var ValorInt: Integer;
    Valor, ValorCent: Double;
    ValString: string;
    Empresa, Funcionario: integer;
    Escola, FuncionarioEscola: integer;
  begin
    empresa := DmDta.quTceemp_cod.asinteger;
    funcionario := 0;
    dmdta.PegaResponsavel(1, empresa, funcionario);


    with qContrato do
    begin
      Emp := DmDta.quTceemp_cod.text;
      bolsa := DmDta.quTceTce_bolsa.Value;
      tipoBolsa := DmDta.quTcetce_tipobolsa.Text;
      if DmDta.quTce.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);
        Open;

        SuperEst := cbsuper.Text;
        FormSuperEst := DmDta.quTceaditivoformacao.AsString;
        ExpSuperEst := DmDta.quTceaditivoTempo.AsString;
        CargoSuperEst := DmDta.quTceAditivoCargo.AsString;
        AreaSuperEst := DmDta.quTceAditivoArea.asstring;

      end;

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      agencia := fieldByName('est_agencia').AsString;
      conta := fieldByName('est_conta').AsString;
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
        perAtu := perAtu + 'º ano'
      else
        perAtu := perAtu + 'º período';

      if fieldByName('pcu_turno').Asstring <> '' then
        case fieldByName('pcu_turno').AsInteger of
          0: turEst := 'manhã';
          1: turEst := 'tarde';
          2: turEst := 'noite';
          3: turEst := 'manhã/tarde';
          4: turEst := 'manhã/noite';
          5: turEst := 'tarde/noite';
        end;

      // busca dados da escola
      close;
      sql.clear;
      //sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod where i.inst_cod = ' + CodEsc);
      sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and ' + inttostr(FuncionarioEscola) + ' = f.func_cod where i.inst_cod = ' + CodEsc);
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
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e left join Empfuncionario f on e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod where e.emp_cod = ' + Emp);
      open;
      Tipopessoa := fieldByName('emp_tipopessoa').AsString;
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
        cnpjemp := poemascara(cnpjemp);
      {  cnpjemp := Copy(cnpjemp, 1, 2) + '.' + Copy(cnpjemp, 3, 3) + '.' + Copy(cnpjemp, 6, 3) + '/' +
          Copy(cnpjemp, 9, 4) + '-' + Copy(cnpjemp, 13, 2);}
      respemp := fieldByName('efu_nome').Asstring;
      estadoemp := fieldByName('emp_estado').Asstring;
      caremp := fieldbyname('efu_cargo').asstring;
      inscemp := fieldbyname('Emp_inscest').Asstring;
      faxemp := fieldbyname('Emp_fax').AsString;
    end;

    ValString := FloatToStr(bolsa);
    Valor := StrToFloat(ValString);
    ValorInt := Trunc(Valor);
    ValorCent := (Valor - ValorInt) * 100;

    // valor por extenso da bolsa auxílio
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

  procedure Hora;

    procedure calchora();
    var
      hor: array[1..20] of string;
      HSemana, h1, h2, h3, h4: TDateTime;
      tot1: Double;
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

      if h2 < h1 then
        h2 := 24 + h2;
      if h4 < h3 then
        h4 := 24 + h4;

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

      dtc := hor[1] + hor[2] + hor[3] + hor[4] + hor[5] + ' às ' + hor[6] + hor[7] + hor[8] + hor[9] + hor[10];
      if (hr3 <> '') or (hr4 <> '') then
        dtc := dtc + ' e das ' + hor[11] + hor[12] + hor[13] + hor[14] + hor[15] + ' às ' + hor[16] + hor[17] + hor[18] + hor[19] + hor[20];

      tot1 := ((h2 - h1) + (h4 - h3)) * 22;
      etotal := FloatToStr(tot1);
    end;

  begin

    if (not DmDta.quTce.FieldByName('tce_horarioini1').IsNull) then
      Hr1 := FormatDateTime('hh:nn', DmDta.quTce.FieldByName('tce_horarioIni1').Value);
    if (not DmDta.quTce.FieldByName('tce_horariofim1').IsNull) then
      Hr2 := FormatDateTime('hh:nn', DmDta.quTce.FieldByName('tce_horariofim1').Value);
    if (not DmDta.quTce.FieldByName('tce_horarioini2').IsNull) then
      Hr3 := FormatDateTime('hh:nn', DmDta.quTce.FieldByName('tce_horarioIni2').Value);
    if (not DmDta.quTce.FieldByName('tce_horariofim2').IsNull) then
      Hr4 := FormatDateTime('hh:nn', DmDta.quTce.FieldByName('tce_horariofim2').Value);
    CalcHora;

  end;

  procedure dtcompleta(Dias: Boolean);
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
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
    dt := FormatDateTime('dd/mm/yyyy', Date);
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

  procedure Imprimenova;
  var
    palavra: string;
  begin
    Screen.Cursor := crHourGlass;
    var1 := CreateOleObject('Word.basic');
    if codesc = '331' then
      var1.FileNew(FORINI.Diretorio + 'tadufpr.dot')
    else
      var1.FileNew(FORINI.Diretorio + 'tadpd.dot');
      
    var1.editbookmark('tipo', 0, 0, 0, 1);

    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert(' OBRIGATÓRIO ')
    else
      var1.Insert(' NÃO OBRIGATÓRIO ');

  //  var1.editbookmark('numero', 0, 0, 0, 1);
    Var1.Insert('Nº ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));
    var1.editbookmark('estudante', 0, 0, 0, 1);
    Var1.Insert(nomeest);
    var1.editbookmark('curso', 0, 0, 0, 1);
    Var1.Insert(curEst);
    var1.editbookmark('ano', 0, 0, 0, 1);
    Var1.Insert(perAtu);

   { var1.editbookmark('turno', 0, 0, 0, 1);
    Var1.Insert(turEst);
    var1.editbookmark('curso2', 0, 0, 0, 1);
    Var1.Insert(curEst);
    var1.editbookmark('ano2', 0, 0, 0, 1);
    Var1.Insert(perAtu);}


    var1.editbookmark('datanascimento', 0, 0, 0, 1);
    Var1.Insert(datana);
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

    var1.editbookmark('pinicio', 0, 0, 0, 1);
    Var1.Insert(meTceIni.Text);

    var1.editbookmark('pfim', 0, 0, 0, 1);
    Var1.Insert(meTcefim.Text);
    var1.editbookmark('data', 0, 0, 0, 1);
    Var1.Insert(datac);
    var1.editbookmark('vias', 0, 0, 0, 1);
    if codesc = '331' then
      Var1.Insert('5 (cinco)')
    else
      Var1.Insert('4 (quatro)');

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
  begin
    if tipopessoa = 'J' then
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

    // Cabeçalho
    Var1.CenterPara;
    Var1.Font('Arial', 11);
    Var1.Bold;
    Var1.Insert('TERMO ADITIVO DO TERMO DE COMPROMISSO DE ESTÁGIO ');
    if dmdta.qutcetce_estobrigato.AsString = '1' then
      var1.Insert('OBRIGATÓRIO ')
    else
      var1.Insert('NÃO OBRIGATÓRIO ');

    Var1.Insert('Nº ' + FormatFloat('000000', DmDta.quTce.FieldByName('tce_cod').AsFloat));
    Var1.Insert(#13 + #13 + #13);

    // Parte da instituição de ensino
    Var1.JustifyPara;
    Var1.Font('Arial', 8);
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO');
    Var1.Bold;
    Var1.Insert(', a ');


    Var1.Bold;
    Var1.Insert(uppercase(palavra) + ' CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('e o ');
    Var1.Bold;
    Var1.Insert('ESTUDANTE');
    Var1.Bold;
    Var1.Insert(', abaixo relacionados, firmam este aditamento ao TERMO DE COMPROMISSO E ESTÁGIO Nº ' + DmDta.quTce.FieldByName('tce_cod').Text);
    Var1.Insert(', através do Agente de Integração ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE,');
    Var1.Bold;
    Var1.Insert(' agente de integração declarado de utilidade pública, de fins educacionais e sem intuito lucrativo,');
    Var1.Insert(' com sede na cidade de Curitiba, Estado do Paraná, na Avenida Iguaçu, nº 2.345, 1º andar,');
    Var1.Insert(' inscrita no CNPJ/MF sob nº 02.217.643/0001-17, neste ato representado por seu');
    Var1.Insert(' Diretor-Presidente Rodrigo Kotzias Moscalewski, brasileiro, casado, empresário,');
    Var1.Insert(' portador da carteira de identidade RG nº. 3.655.060-0 SSP/PR e inscrito');
    Var1.Insert(' no CPF/MF sob nº. 873.751.419-91, conforme faculta a Lei nº 11.778 de 25/09/2008.' + #13);

    Var1.Insert(#13);

    if CodEsc = '200' then
      Var1.Font('Arial', 7)
    else
      Var1.Font('Arial', 8);

    // parte de escola

    Var1.JustifyPara;
    Var1.Underline;
    verfonte;
    Var1.Insert('INSTITUIÇÃO DE ENSINO' + #13);
    verfonte;
    Var1.Insert('Razão Social: ' + #9 + nomeesc + #13);
    verfonte;

    Var1.Insert('Endereço: ' + #9 + AnsiUpperCase(endesc) + #13);
    verfonte;
    Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiesc) + #9);
    Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeEsc) + #13);
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
    Var1.Insert('Formação Acadêmica: ' + #9 + carOrientador + #13);
    verfonte;
    Var1.Insert(#13);
    verfonte;



    // parte da empresa
    if tipopessoa = 'J' then // pessoa Juridica
    begin
      Var1.Underline;
      Var1.Insert('PARTE CONCEDENTE' + #13);
      Var1.Insert('Razão Social: ' + #9 + nomeemp + #13);
      Var1.Insert('Endereço: ' + #9 + AnsiUpperCase(endemp) + #13);
      Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiemp) + #9);
      Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeemp) + #13);
      Var1.Insert('CEP: ' + #9 + AnsiUpperCase(cepemp) + #9);
      Var1.Insert('Telefone: ' + #9 + telemp + #13);
      Var1.Insert('CNPJ: ' + #9 + cnpjemp + #13);
      Var1.Insert('Representada por: ' + #9 + respemp + #13);
      Var1.Insert('Cargo: ' + #9 + caremp + #13);
   // if superest <> '' then
    //  Var1.Insert('Supervisor de Estágio: ' + #9 + SuperEst + #13);
      {if FormSuperEst <> '' then
      begin
        Var1.Insert('Formação Acadêmica: ' + #9 + FormSuperEst + #13);
        Var1.Insert(#13);
      end
      else
      begin
        Var1.Insert('Experiência: ' + #9 + ExpSuperEst + #13);
        Var1.Insert('Cargo: ' + #9 + CargoSuperEst + #13);
        Var1.Insert(#13);
      end;}
    end
    else
    begin
      Var1.Underline;
      Var1.Insert('PARTE CONCEDENTE' + #13);
      Var1.Insert('Profissional Liberal: ' + #9 + nomeemp + #13);
      Var1.Insert('Cargo: ' + #9 + caremp + #13);
      Var1.Insert('CPF: ' + #9 + cnpjemp + #13);
      Var1.Insert('Endereço: ' + #9 + AnsiUpperCase(endemp) + #13);
      Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiemp) + #9);
      Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeemp) + #13);
      Var1.Insert('CEP: ' + #9 + cepemp + #9);
      Var1.Insert('Telefone: ' + #9 + telemp + #13);

      Var1.Insert('Representada por: ' + #9 + respemp + #13);
      Var1.Insert('Cargo: ' + #9 + caremp + #13);
   // if superest <> '' then
      {Var1.Insert('Supervisor de Estágio: ' + #9 + SuperEst + #13);
      if FormSuperEst <> '' then
      begin
        Var1.Insert('Formação Acadêmica: ' + #9 + FormSuperEst + #13);
        Var1.Insert(#13);
      end
      else
      begin
        Var1.Insert('Experiência: ' + #9 + ExpSuperEst + #13);
        Var1.Insert('Cargo: ' + #9 + CargoSuperEst + #13);
        Var1.Insert(#13);
      end;}
    end;
    // supervisor do Estágio

    Var1.Insert('Supervisor de Estágio: ' + #9 + cbsuper.Text + #13);

    Var1.Insert('Cargo: ' + #9 + DmDTA.quTceAditivocargo.AsString + #13);

    if ckf1.Checked then
      Var1.Insert('Formação Acadêmica: ' + #9 + DmDTA.quTceAditivoFormacao.AsString);
    if ckr1.Checked then
    begin
      if ckf1.Checked then
        Var1.Insert(#9 + 'Nº Registro Conselho:' + #9 + DmDTA.quTceAditivoregistro.AsString + #13)
      else
        Var1.Insert('Nº Registro Conselho:' + #9 + DmDTA.quTceAditivoregistro.AsString + #13)
    end
    else
      if ckf1.Checked then
        Var1.Insert(#13);
    if ckf2.Checked then
      Var1.Insert('Outra Formação: ' + #9 + DmDTA.quTceAditivoformacao2.AsString);
    if ckr2.Checked then
    begin
      if ckf2.Checked then
        Var1.Insert(#9 + 'Nº Registro Conselho:' + #9 + DmDTA.quTceAditivoRegistro2.AsString + #13)
      else
        Var1.Insert('Nº Registro Conselho:' + #9 + DmDTA.quTceAditivoRegistro2.AsString + #13)
    end
    else
      if ckf2.Checked then
        Var1.Insert(#13);
    if ckarea.Checked then
      Var1.Insert('Área de atuação: ' + #9 + DmDTA.quTceAditivoArea.AsString + #13);
    if cktempo.Checked then
      Var1.Insert('Tempo de experiência comprovada: ' + DmDTA.quTceAditivoTempo.AsString + #13);
    Var1.Insert(#13);


    // parte do estudante
    Var1.Underline;
    Var1.Insert('ESTUDANTE' + #13);
    Var1.Insert('Nome: ' + #9 + nomeest + #13);
    Var1.Insert('Endereço: ' + #9 + AnsiUpperCase(endEst) + #13);
    Var1.Insert('Bairro: ' + #9 + AnsiUpperCase(baiEst) + #9);
    Var1.Insert('Cidade: ' + #9 + AnsiUpperCase(cidadeEst) + #13);
    Var1.Insert('CEP: ' + #9 + CepEst + #9);
    Var1.Insert('Telefone: ' + #9 + Telest + #13);
    Var1.Insert('RG: ' + #9 + rgEst + #9);
    Var1.Insert('CPF: ' + #9 + cpfEst + #13);
    Var1.Insert('CTPS: ' + #9 + ctpEst + #9);
    Var1.Insert('Série: ' + #9 + serieEst + #13);
    if numMatEsc <> '' then
      Var1.Insert('Matrícula: ' + #9 + NumMatEsc + #13);
    Var1.Insert('Curso: ' + #9 + curEst + #13);
    Var1.Insert('Período/Ano: ' + #9 + perAtu + #13);
    Var1.Insert(#13);

    // cláusulas do TA

    // Cláusula 01
    Var1.Font('Arial', 8);
    Var1.Bold;
    Var1.Insert('CLÁUSULA PRIMEIRA: PRAZO' + #13);
    Var1.Font('Arial', 8);
    Var1.Insert('Este Termo Aditivo do Termo de Compromisso de Estágio prorroga até o dia ' + FormatDateTime('dd/mm/yyyy', quPrincipal1.FieldByName('tpr_datafim').AsDateTime) + ' o período de estágio mencionado na cláusula NONA do Termo de Compromisso de Estágio. ' + #13);
    Var1.Insert(#13);

    // Cláusula 02
    Var1.Bold;
    Var1.Insert('CLÁUSULA SEGUNDA: DISPOSIÇÕES' + #13);
    Var1.Font('Arial', 8);
    Var1.Insert('Permanecem inalteradas todas as demais disposições do Termo de Compromisso de Estágio, do qual este Termo Aditivo passa a fazer parte integrante.' + #13);
    Var1.Insert(#13);


    // Cláusula 03
    Var1.Bold;
    Var1.Insert('CLÁUSULA TERCEIRA: FORO' + #13);
    Var1.Font('Arial', 8);
    Var1.Insert('Fica eleito o Foro Central da Comarca da Região Metropolitana de Curitiba, Estado do Paraná, para dirimir quaisquer dúvidas ou questões oriundas deste instrumento.' + #13);
    Var1.Font('Arial', 8);
    if codesc = '331' then
      vias := '05 (cinco)'
    else
      vias := '04 (quatro)';
    Var1.Insert('E, por assim estarem de acordo, assinam o presente instrumento em ' + vias + ' vias de igual teor e forma. ' + #13);
    Var1.Insert(#13);


    // Parte final do documento - data e assinaturas
    Var1.CenterPara;
    Var1.Insert('Curitiba, ' + datac + '. ' + #13);
    Var1.Insert(#13 + #13 + #13);


    // Assinaturas

    if CodEsc = '331' then
    begin
      Var1.JustifyPara;
      Var1.Insert(#13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('              REPRESENTANTE DA INSTITUIÇÃO DE ENSINO                                  REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
      Var1.Insert(#13 + #13 + #13 + #13);
      Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
      Var1.Insert('                   ORIENTADOR DA INSTITUIÇÃO DE ENSINO                              SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
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
      if CodEsc = '261' then
      begin
        Var1.JustifyPara;
        Var1.Insert(#13);
        Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
        Var1.Insert('                               INSTITUIÇÃO DE ENSINO                                                          REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
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
        Var1.Insert('              REPRESENTANTE DA INSTITUIÇÃO DE ENSINO                                  REPRESENTANTE DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
        Var1.Insert(#13 + #13 + #13 + #13);
        Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
        Var1.Insert('                   ORIENTADOR DA INSTITUIÇÃO DE ENSINO                              SUPERVISOR DE ESTAGIO DA ' + uppercase(palavra) + ' CONCEDENTE' + #13);
        Var1.Insert(#13 + #13 + #13 + #13);
        Var1.Insert('       ________________________________________________                    ________________________________________________' + #13);
        Var1.Insert('                                             ESTUDANTE                                                                                REPRESENTANTE DO CETEFE');
      end;
    Screen.Cursor := crDefault;
    var1.AppShow;
  end;





begin
  inherited;
  // busca os dados para impressão
  completadados;
  dtCompleta(false);


{  InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
  SuperEst := AnsiUpperCase(SuperEst);
  if rdEscolha.ItemIndex > 0 then
  begin
    if rdEscolha.ItemIndex = 0 then
      formSuperEst := DmDTA.quTceaditivoformacao.AsString;
    if rdEscolha.ItemIndex = 1 then
      formSuperEst := DmDTA.quTceaditivoformacao2.AsString;
    if rdEscolha.ItemIndex = 2 then
      formSuperEst := '';
  end;
  if rdEscolha.ItemIndex <> 2 then
  begin
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
  end;}

 // InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
 // FormSuperEst := AnsiUpperCase(FormSuperEst);
  resporientador := DmDTA.quTceAditivoprofessororientador.AsString;
  InputQuery('Orientador', 'Professor Orientador', respOrientador);
  respOrientador := AnsiUpperCase(respOrientador);
  carOrientador := DmDTA.quTceAditivoorientadorCargo.AsString;
  InputQuery('Orientador', 'Formação do Orientador de Estágio', carOrientador);
  carOrientador := AnsiUpperCase(carOrientador);



  Imprimenova;
 // Imprime;
end;

procedure TFORTAD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F6 then btImprimirClick(Sender);
end;

procedure TFORTAD.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(prg_cod) as Maximo,');
    SQL.Add('  min(prg_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  TceAditivo');
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

procedure TFORTAD.LimpaCampos;
begin
  inherited;
  meTceIni.Clear;
  meTceFim.Clear;
  meTceRet.Clear;
end;

procedure TFORTAD.btExcluirClick(Sender: TObject);
var
  Ultimo: Integer;
begin
  BuscaPrimeiroUltimo;
  if quPrincipal1.FieldByName('prg_cod').Value = ultimoRegistro then
  begin
    Ultimo := UltimoRegistro;
    inherited;
    with DmDta.quTce do
    begin
      Edit;
      FieldByName('tce_situacao').Value := IntToStr(Ultimo - 1);
      Post;
      ApplyUpdates;
    end;
  end
  else
    MSGERRO('Só é possível excluir o último registro!');
end;

procedure TFORTAD.meTceRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Retorno := True;
end;

procedure TFORTAD.meTceIniKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (quPrincipal1.State in [dsInsert, dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAD.cbSuperExit(Sender: TObject);
var
  Empresa: integer;
begin
  inherited;
  empresa := qrysupervisoremp_cod.AsInteger;
  DmDta.quTceAditivoEmp_cod2.AsInteger := empresa;
end;

procedure TFORTAD.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORMTprObs := TFORMtprObs.Create(Self);
  Screen.Cursor := crDefault;
  FORMTprObs.ShowModal;
end;

procedure TFORTAD.DBEdit24DblClick(Sender: TObject);
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
    if DmDta.qutceAditivo.Active then
    begin
      if (DmDta.quTceAditivo.State in [dsInsert, dsEdit]) then
      begin
        DmDta.quTceAditivo.FieldByName('tpr_orientador').Text := FORIFU.F2Codigo;
        DmDta.quTceAditivo.FieldByName('inst_cod').Text := inttostr(FORIFU.inst);
      end;
    end;
    SelectNext(ActiveControl, True, true);
  end;
  FORIFU.Free;

end;

procedure TFORTAD.DBEdit24Exit(Sender: TObject);
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
  if (DmDta.quTceAditivo.State in [dsInsert, dsEdit]) then
  begin
    DmDta.quTceAditivo.FieldByName('inst_cod').Text := inttostr(escola);
  end;
end;

procedure TFORTAD.pgPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgprincipal.ActivePageIndex = 1 then
    if quPrincipal1.IsEmpty = false then
      quprincipal1.Edit;
end;

end.

