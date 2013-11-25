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
  private
    { Private declarations }
  public
    { Public declarations }
    Tce: Integer;
    F2: Boolean;
    hr1, hr2, hr3, hr4, dtc, etotal: String;
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

Uses TPODTA, TPOFNC, ComObj, TPOCST, TPOINI;

{$R *.DFM}

procedure TFORTAD.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'prg_cod';
  nomeNome   := 'prg_cod';
  nomeTabela := 'TceAditivo';
  Tce        := -1;

  quPrincipal1 := DmDta.quTceAditivo;
  Retorno      := False;
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
  meTceEmi.Text := FormatDateTime('dd/mm/yyyy',Date);
  Retorno := True;
  meTceIni.SetFocus;
end;

procedure TFORTAD.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
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
  Ret : Boolean;

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
    F2Nome   := quPrincipal1.FieldByName('prg_cod').AsString;
    Close;
  end
  else
  begin
    inherited;
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
  quPrincipal1.FieldByName('tpr_dataemi').text    := meTceEmi.Text;
  quPrincipal1.FieldByName('tpr_dataini').text    := meTceIni.Text;
  quPrincipal1.FieldByName('tpr_datafim').text    := meTceFim.Text;
  if meTceRet.Text <> '  /  /    ' then
    quPrincipal1.FieldByName('tpr_retorno').Text  := meTceRet.text
  else
    quPrincipal1.FieldByName('tpr_retorno').Text  := '';
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
  end;
end;

procedure TFORTAD.btImprimirClick(Sender: TObject);
var
  var1: variant;
  CRM, CRO, CRJ, CREF, CPP, Coren, Conselho, Inst, Emp: String;
  datac :string[37];
  exte,datana: string ;
  endesc,baiesc,cidadeEsc,cgcesc,caresc,telesc,cepesc, nomeesc,RespEsc : string;
  endemp,baiemp,cidadeEmp,telemp,cepemp,cgcemp,caremp, respemp, nomeemp :string;
  curcod,estadoest,cpfest,nummatesc,endest,baiest,cidadeEst,telest,cepest,rgest,ctpest,curest, nomeEst:string;
  ce,ces,contador:integer;
  uce,dce : string;
  CoordEsc, SuperEst, CargoSuperEst, FormSuperEst: String;
  SuperEmp, AreaEst, OrientadorEst: string;
  num: integer;
  uni,dez,cen: string;
  centa,unida,dezen,cente, perAtu, tipobolsa:string;
  bolsa: Double;

  procedure completadados;
  begin
    with qContrato do
    begin
      Emp := DmDta.quTceemp_cod.text;
      bolsa := DmDta.quTcetce_bolsa.Value;
      if DmDta.quTceTce_tipobolsa.Value = '0' then
        tipoBolsa := 'Hora'
      else
        tipoBolsa := 'Mês';

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      curest  := fieldbyname('cur_nome').asstring;
      curcod  := fieldbyname('cur_cod').asstring;
      Inst    := fieldByName('inst_cod').asstring;
      peratu  := fieldByName('pcu_anoatual').AsString;
      if fieldByName('pcu_peratual').AsString = '0' then
        perAtu := perAtu + 'º ano'
      else
        perAtu := perAtu + 'º período';
      nomeEst := DmDta.quTceest_nome.Text;
      datana := fieldbyname('est_dtnasc').asstring;
      endest := fieldbyname('est_endereco').asstring;
      If fieldbyname('est_numend').Text <> '' then
        endEst := endEst + ' ' + fieldbyname('est_numend').Text;
      If fieldbyname('est_apto').Text <> '' then
        endEst := endEst + ' - APTO. ' + fieldbyname('est_apto').Text;
      If fieldbyname('est_bloco').Text <> '' then
        endEst := endEst + ' - BLOCO ' + fieldbyname('est_bloco').Text;
      baiest := fieldbyname('est_bairro').asstring;
      cpfest := fieldbyname('est_cpf').asstring;
      cpfEst := Copy(cpfEst, 1, 3) + '.' + Copy(cpfEst, 4, 3) + '.' + Copy(cpfEst, 7, 3) + '-' + Copy(cpfEst, 10, 2);
      cidadeEst := fieldByName('est_cidade').asstring;
      EstadoEst := fieldByName('est_estado').asstring;
      telest := fieldbyname('est_fone1').asstring;
      cepest := fieldbyname('est_cep').asstring;
      rgest  := fieldbyname('est_rg').asstring;
      ctpest := fieldbyname('est_ctpsnum').asstring + ' Série:' + fieldbyname('est_ctpsserie').asstring;

      // busca dados da escola
      close;
      sql.clear;
      sql.add('select i.*, f.ifu_nome, f.ifu_cargo from Instituicao i, Instfuncionario f where i.inst_cod *= f.inst_cod and i.inst_respcomp *= f.func_cod and i.inst_cod = ' + Inst);
      open;
      nomeesc   := fieldbyname('inst_nome').asstring;
      endesc    := fieldbyname('inst_endereco').asstring;
      If fieldbyname('inst_numend').Text <> '' then
        endesc  := endesc + ' ' + fieldbyname('inst_numend').Text;
      If fieldbyname('inst_sala').Text <> '' then
        endesc  := endesc + ' - SALA ' + fieldbyname('inst_sala').Text;
      baiesc    := fieldbyname('inst_bairro').asstring;
      cidadeEsc := fieldByName('inst_cidade').asstring;
      cgcesc    := fieldbyname('inst_cnpj').asstring;
      caresc    := fieldbyname('ifu_cargo').asstring;;
      telesc    := fieldbyname('inst_telefone').asstring;
      cepesc    := fieldbyname('inst_cep').asstring;
      respEsc   := fieldbyname('ifu_nome').asstring;

      // Coordenador de curso
      If  (Inst = '137') or (Inst = '261') or
          (Inst = '186') or (Inst = '581') or
          (Inst = '221') then
      begin
        close;
        sql.clear;
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + Inst + ' and i.cur_cod = ' + CurCod);
        open;
        CoordEsc := fieldbyname('curi_nomecoord').asstring;
        If Inst <> '137' then
          RespEsc := CoordEsc
        else
        begin
          // verifica a área do curso
          close;
          sql.clear;
          sql.add('select cur_area from Curso where cur_cod = ' + CurCod);
          Open;

          If FieldByName('cur_area').Text = 'Biológicas' then
          begin
            // Humanas -> busca o funcionário 2
            close;
            sql.clear;
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 2');
            open;
            RespEsc := FieldByName('ifu_nome').Text;
          end
          else
          begin
            // Não-Humanas -> busca o funcionário 2
            close;
            sql.clear;
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 1');
            open;
            RespEsc := FieldByName('ifu_nome').Text;
          end;
        end;
      end
      else If (Inst = '221') or (CurCod = '14') or (CurCod = '15') then
      begin
        close;
        sql.clear;
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + Inst + ' and i.cur_cod = ' + CurCod);
        open;
        CoordEsc  := fieldbyname('curi_nomecoord').asstring;
        close;
        sql.clear;
        sql.add('select * from InstFuncionario where inst_cod = ' + Inst + ' and func_cod = 1');
        open;
        RespEsc  := fieldbyname('ifu_nome').asstring;
      end;

      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e, Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod and e.emp_cod = ' + Emp);
      open;
      nomeemp := DmDta.quTceemp_nome.Text;
      endemp  := fieldbyname('emp_endereco').asstring;
      If fieldbyname('emp_numend').Text <> '' then
        endemp := endemp + ' ' + fieldbyname('emp_numend').Text;
      If fieldbyname('emp_cjto').Text <> '' then
        endemp := endemp + ' - CJ. ' + fieldbyname('emp_cjto').Text;
      baiemp  := fieldbyname('emp_bairro').asstring;
      cidadeEmp := fieldByName('emp_cidade').asstring;
      telemp  := fieldbyname('emp_telefone').asstring;
      cepemp  := fieldbyname('emp_cep').asstring;
      cgcemp  := fieldbyname('emp_cnpj').asstring;
      respemp := fieldByName('efu_nome').Asstring;
      caremp  := fieldbyname('efu_cargo').asstring;;
    end;
  end;

  procedure Hora;

    procedure calchora();
    var
      hor :array [1..20] of string;
      h1,h2,h3,h4: TDateTime;
      tot1: Double;
    begin
      h1:= strtoTime(hr1)*24;
      h2:= strtoTime(hr2)*24;

      if hr3 <> ''  then
        h3 := strtoTime(hr3)*24
      else
        h3 := 0;

      if hr4 <> '' then
        h4 := strtoTime(hr4)*24
      else
        h4 := 0;

      if h2 < h1 then
        h2 := 24 + h2;
      if h4 < h3 then
        h4 := 24 + h4;

      hor[1]:=hr1[1];
      hor[2]:=hr1[2];
      hor[3]:= ':';
      hor[4]:=hr1[4];
      hor[5]:=hr1[5];
      //
      hor[6]:=hr2[1];
      hor[7]:=hr2[2];
      hor[8]:= ':';
      hor[9]:=hr2[4];
      hor[10]:=hr2[5];
      //
      if hr3 <> '' then
      begin
        hor[11]:=hr3[1];
        hor[12]:=hr3[2];
        hor[13]:= ':';
        hor[14]:=hr3[4];
        hor[15]:=hr3[5];
      end;

      //
      if hr4 <> '' then
      begin
        hor[16]:=hr4[1];
        hor[17]:=hr4[2];
        hor[18]:= ':' ;
        hor[19]:=hr4[4];
        hor[20]:=hr4[5];
      end;

      dtc := hor[1]+hor[2]+hor[3]+hor[4]+hor[5]+' às '+hor[6]+hor[7]+hor[8]+hor[9]+hor[10];
      if (hr3 <> '') or (hr4 <> '') then
        dtc := dtc + ' e das '+hor[11]+hor[12]+hor[13]+hor[14]+hor[15]+' às '+hor[16]+hor[17]+hor[18]+hor[19]+hor[20];

      tot1 := ((h2 - h1)+(h4 - h3))*22;
      etotal := FloatToStr(tot1);
    end;

  begin

    if (not DmDta.quTce.FieldByName('tce_horarioini1').IsNull) then
      Hr1 := FormatDateTime('hh:nn',DmDta.quTce.FieldByName('tce_horarioIni1').Value);
    if (not DmDta.quTce.FieldByName('tce_horariofim1').IsNull) then
      Hr2 := FormatDateTime('hh:nn',DmDta.quTce.FieldByName('tce_horariofim1').Value);
    if (not DmDta.quTce.FieldByName('tce_horarioini2').IsNull) then
      Hr3 := FormatDateTime('hh:nn',DmDta.quTce.FieldByName('tce_horarioIni2').Value);
    if (not DmDta.quTce.FieldByName('tce_horariofim2').IsNull) then
      Hr4 := FormatDateTime('hh:nn',DmDta.quTce.FieldByName('tce_horariofim2').Value);
    CalcHora;

  end;

  procedure dtcompleta(Dias: Boolean);
  var
    dt,d,m,a :string;
    da :array[1..8] of string;
    me :array[1..12] of string;
  begin
    me[1]  :='Janeiro';
    me[2]  :='Fevereiro';
    me[3]  :='Março';
    me[4]  :='Abril';
    me[5]  :='Maio';
    me[6]  :='Junho';
    me[7]  :='Julho';
    me[8]  :='Agosto';
    me[9]  :='Setembro';
    me[10] :='Outubro';
    me[11] :='Novembro';
    me[12] :='Dezembro';
    dt := FormatDateTime('dd/mm/yyyy',Date);
    da[1] :=dt[1];
    da[2] :=dt[2];
    da[3] :=dt[4];
    da[4] :=dt[5];
    da[5] :=dt[7];
    da[6] :=dt[8];
    da[7] :=dt[9];
    da[8] :=dt[10];
    d:= da[1]+da[2];
    m:= da[3]+da[4];
    a:= da[5]+ da[6]+da[7]+da[8];
    if Dias then
      datac := ''+d+' dia(s) do mês de '+me[strtoint(m)]+' de '+a+''
    else
      datac := ''+d+' de '+me[strtoint(m)]+' de '+a+''
  end;

  procedure ImprimeUniandrade;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
  begin
    ValString := FloatToStr(bolsa);

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if Valor > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'Contrato_2.doc');

    var1.Insert('                                                   TERMO ADITIVO DO TERMO DE COMPROMISSO DE ESTÁGIO'+#13);
    var1.Insert('                                                                              E ACORDO DE COOPERAÇÃO'+#13+#13+#13);
    var1.Insert('TA Nº   '+DmDta.quTceTCE_COD.Text+#13+#13);
    var1.Insert('Ao(s) '+datac+', na cidade de Curitiba, Paraná, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo relacionados, ');
    var1.Insert('firmam este aditamento ao TERMO DE COMPROMISSO E ESTÁGIO Nº ' + DmDta.quTceTCE_COD.Text + ', através do agente de integração ');
    var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, CNPJ n.º 02.217.643/0001-17, de acordo com a Lei nº 6.494/77 e do decreto nº 497/82.');
    var1.Insert(#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Razão Social: '+ nomeemp);
    var1.Insert(#13+'Endereço:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: ' + caremp);
    If SuperEst <> '' then
      var1.Insert(#13+'Supervisor de Estágio: '+SuperEst);
    If FormSuperEst <> '' then
      var1.Insert(#13+'Formação: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'Nº do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'Nº do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'Nº do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'Nº do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'Nº do C.O.R.E.N.: '+Coren);

    var1.Insert(#13+#13);
    var1.Insert('ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    Var1.Insert(#13+'Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endereço: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Período/Ano: '+peratu);
    var1.Insert(#13+#13);
    Var1.Insert('CLÁUSULA 1ª - Este Termo Aditivo do Termo de Compromisso de Estágio prorroga até o dia ' + DmDta.quTceAditivoTpr_datafim.Text);
    var1.Insert(' o período de estágio mencionado na cláusula SEGUNDA do referido TCE. '+#13+#13);
    Var1.Insert('CLÁUSULA 2ª - Permanecem inalteradas todas as demais disposições do TCE, do qual este Termo Aditivo passa a fazer parte integrante.');

    var1.Insert(#13+#13+#13+#13);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                          Coordenador de Curso na INSTITUIÇÃO DE ENSINO ');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Insert(#13+'                                Estudante                                                                                Representante do CETEFE');
    var1.Insert(#13+#13+#13+#13+#13);
    var1.Insert('   TA: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst+#13);
    var1.Insert('   Instituição de Ensino: ' + nomeEsc);

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure Imprime;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
  begin
    // verifica o código da escola, se não é UEM
    If Inst = '221' then
    begin
      InputQuery('Estágio', 'Área de Estágio', AreaEst);
      AreaEst := AnsiUpperCase(AreaEst);
      InputQuery('Empresa', 'Supervisor na Empresa', SuperEmp);
      SuperEmp := AnsiUpperCase(SuperEmp);
      InputQuery('Instituição', 'Orientador na Instituição', OrientadorEst);
      OrientadorEst := AnsiUpperCase(OrientadorEst);
    end;

    ValString := FloatToStr(bolsa);
    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if Valor > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'Contrato_1.doc');

    var1.Insert('                                                   TERMO ADITIVO DO TERMO DE COMPROMISSO DE ESTÁGIO'+#13);
    var1.Insert('                                                                              E ACORDO DE COOPERAÇÃO'+#13+#13+#13);
    var1.Insert('TA Nº   '+DmDta.quTceTCE_COD.Text+#13+#13);
    var1.Insert('Ao(s) '+datac+', na cidade de Curitiba, Paraná, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo relacionados, ');
    var1.Insert('firmam este aditamento ao TERMO DE COMPROMISSO E ESTÁGIO Nº ' + DmDta.quTceTCE_COD.Text + ', através do agente de integração ');
    var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, CNPJ n.º 02.217.643/0001-17, de acordo com a Lei nº 6.494/77 e do decreto nº 497/82.');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Razão Social: '+ nomeemp);
    var1.Insert(#13+'Endereço:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: '+caremp);
    If SuperEst <> '' then
    begin
      If (CurCod = '14') or (curcod = '15') then
        var1.Insert(#13+'Supervisor de Estágio: Dr(a). '+SuperEst)
      else
        var1.Insert(#13+'Supervisor de Estágio: '+SuperEst);
    end;
    If FormSuperEst <> '' then
      var1.Insert(#13+'Formação: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'Nº do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'Nº do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'Nº do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'Nº do Conselho: '+Conselho);
    If CRM <> '' then
      var1.Insert(#13+'Nº do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'Nº do C.R.O.: '+CRO);

    If Inst = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If Inst = '331' then
      Var1.Insert(#13+'Número de Matrícula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endereço: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Período/Ano: '+peratu);
    var1.Insert(#13+#13+#13);
    Var1.Insert('CLÁUSULA 1ª - Este Termo Aditivo do Termo de Compromisso de Estágio prorroga até o dia ' + DmDta.quTceAditivoTpr_datafim.Text);
    var1.Insert(' o período de estágio mencionado na cláusula ');
    If Inst <> '200' then
      var1.Insert('SEGUNDA ')
    else
      var1.Insert('QUINTA ');
    var1.Insert('do referido TCE. '+#13+#13);
    Var1.Insert('CLÁUSULA 2ª - Permanecem inalteradas todas as demais disposições do TCE, do qual este Termo Aditivo passa a fazer parte integrante.'+#13+#13);

    If Inst = '331' then
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio  em  5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                   Coordenador Geral de Estágio                                                   Coordenador de Curso ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante    ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('                                                    _________________________________________');
      var1.Insert(#13+'                                                                        Representante do CETEFE');
    end
    else if Inst = '221' then
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio  em  5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                           Pró Reitoria de Ensino                                                    Orientador de Estágio da UEM');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'             Representante da Unidade Concedente                       Supervisor de Estágio da Unidade Concedente');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     _________________________________________           ________________________________________ ');
      var1.Insert(#13+'                       Representante do CETEFE                                                                 Estudante ');
    end
    else
    begin
      If (CurCod = '14') or (CurCod = '15') then
      begin
        var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em ');
        var1.Insert('6 (seis) vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________                       ___________________________________________  ');
        var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                          Coordenador de Curso na INSTITUIÇÃO DE ENSINO ');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________                       ___________________________________________  ');
        var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE         ');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________                       ___________________________________________  ');
        var1.Insert(#13+'                                Estudante                                                                                Representante do CETEFE');
      end
      else
      begin
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em 4 (quatro) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________            ________________________________________ ');
        var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                                Representante do CETEFE');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     _________________________________________           ________________________________________ ');
        var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante');
      end;
    end;

    var1.Insert(#13+#13+#13+#13+#13);
    var1.Insert('   TA: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst+#13);
    var1.Insert('   Instituição de Ensino: ' + nomeEsc);

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

begin
  inherited;
  Screen.Cursor := crHourGlass;
  completadados;
  dtcompleta(True);
  // Hora;

  // Número de matricula
  If Inst = '331' then
  begin
    InputQuery('Nº Matrícula', 'Número', NumMatEsc);
    imprime;
  end
  else if curcod = '12' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'PSICOLOGIA';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Psicologia', 'Nº do C.R.P.', CPP);
    CPP := AnsiUpperCase(CPP);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else if curcod = '14' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'MÉDICO';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Medicina', 'Nº do C.R.M.', CRM);
    CRM := AnsiUpperCase(CRM);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else
      imprime;
  end
  else if curcod = '15' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'CIRURGIÃO(A) DENTISTA';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Odontologia', 'Nº do C.R.O.', CRO);
    CRO := AnsiUpperCase(CRO);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else
      imprime;
  end
  else if curcod = '19' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'EDUCAÇÃO FÍSICA';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Educação Física', 'Nº do C.R.E.F.', CREF);
    CREF := AnsiUpperCase(CREF);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else if curcod = '9' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'ASSISTENTE SOCIAL';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Serviço Social', 'Nº do Conselho', Conselho);
    Conselho := AnsiUpperCase(Conselho);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else if curcod = '29' then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'ENFERMAGEM';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Enfermagem', 'Nº do C.O.R.E.N.', Coren);
    CPP := AnsiUpperCase(CPP);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else If (Pos('JORNALISMO', curEst) > 0) {estagiários de jornalismo } then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Jornalismo', 'Nº do C.R.J.', CRJ);
    CRJ := AnsiUpperCase(CRJ);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else if (curcod = '31') or (curcod = '50') then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    If Inst = '137' then
      imprimeUniAndrade
    else
      imprime;
  end
  else If (Inst = '197') or (Inst = '190') then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    If Inst = '197' then
    begin
      InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
    end;
    imprime;
  end
  else If (Inst = '137') or (Inst = '261') or
          (Inst = '186') or (Inst = '581') or
          (Inst = '221') then
    ImprimeUniandrade
  else
    Imprime;

  Screen.Cursor := crDefault;
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
  with TQuery.Create(Nil) do
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
      UltimoRegistro   := 0;
    end
    else
    begin
      PrimeiroRegistro := FieldByName('Minimo').AsInteger;
      UltimoRegistro   := FieldByName('Maximo').AsInteger;
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
      FieldByName('tce_situacao').Value := IntToStr(Ultimo-1);
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
  if (not (quPrincipal1.State in [dsInsert,dsEdit])) then quPrincipal1.Edit;
end;

end.
