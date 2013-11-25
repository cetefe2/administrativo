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
  private
    { Private declarations }
  public
    { Public declarations }
    Tce: Integer;
    MudaAba, F2: Boolean;
    hr1, hr2, hr3, hr4, hr5, hr6, hr7, hr8, dtc, etotal: String;
    Retorno, Digitou: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure CalcHora();
    procedure LimpaCampos; override;
  end;

var
  FORTAL: TFORTAL;

implementation

Uses TPODTA, TPOTALD, TPOFNC, TPOCST, ComObj, TPOINI;

{$R *.DFM}

procedure TFORTAL.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'tal_vigencia';
  nomeNome   := 'tal_vigencia';
  nomeTabela := 'TceAlteracao';
  Tce        := -1;
  MudaAba    := True;

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

  meTceEmi.Text         := FormatDateTime('dd/mm/yyyy',Date);
  meTceVig.Text         := FormatDateTime('dd/mm/yyyy',Date);

  quPrincipal1.FieldByName('tal_segunda').Value  := '1';
  quPrincipal1.FieldByName('tal_terca').Value    := '1';
  quPrincipal1.FieldByName('tal_quarta').Value   := '1';
  quPrincipal1.FieldByName('tal_quinta').Value   := '1';
  quPrincipal1.FieldByName('tal_sexta').Value    := '1';
  quPrincipal1.FieldByName('tal_sabado').Value   := '0';

  cbTipoBolsa.ItemIndex := 1;
  Digitou               := False;
  Retorno               := True;
  meTceVig.SetFocus;
end;

procedure TFORTAL.FormShow(Sender: TObject);
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

procedure TFORTAL.btSalvarClick(Sender: TObject);
var
  Ret : Boolean;
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

      If MudaAba then
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
    F2Nome   := quPrincipal1.FieldByName('idi_nome').AsString;
    Close;
  end
  else
  begin
    inherited;
  end;
end;

procedure TFORTAL.SetaCodigo(Codigo: Integer);
begin
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
  quPrincipal1.FieldByName('tal_dataemi').text    := meTceEmi.Text;
  quPrincipal1.FieldByName('tal_vigencia').text    := meTceVig.Text;
  quPrincipal1.FieldByName('tal_horarioini1').text := '01/01/1900 ' + meEnt1.Text;
  quPrincipal1.FieldByName('tal_horariofim1').text := '01/01/1900 ' + meSai1.Text;
  if meEnt2.Text <> '  :  ' then
    quPrincipal1.FieldByName('tal_horarioini2').text := '01/01/1900 ' + meEnt2.Text
  else
    quPrincipal1.FieldByName('tal_horarioini2').text := '';
  if meSai2.Text <> '  :  ' then
    quPrincipal1.FieldByName('tal_horariofim2').text := '01/01/1900 ' + meSai2.Text
  else
    quPrincipal1.FieldByName('tal_horariofim2').text := '';
  if meTalDtRet.Text <> '  /  /    ' then
    quPrincipal1.FieldByName('tal_retorno').text   := meTalDtRet.Text
  else
    quPrincipal1.FieldByName('tal_retorno').text   := '';
  quPrincipal1.FieldByName('tal_tipobolsa').text   := IntToStr(cbTipoBolsa.ItemIndex);
end;

procedure TFORTAL.CarregaDados;
begin
  Digitou := False;
  Retorno := False;
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
    Hr1 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horarioIni1').Value)
  else
    Hr1 := '';
  if (not quPrincipal1.FieldByName('tal_horariofim1').IsNull) then
    Hr2 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horariofim1').Value)
  else
    Hr2 := '';
  if (not quPrincipal1.FieldByName('tal_horarioini2').IsNull) then
    Hr3 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horarioIni2').Value)
  else
    Hr3 := '';
  if (not quPrincipal1.FieldByName('tal_horariofim2').IsNull) then
    Hr4 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horariofim2').Value)
  else
    Hr4 := '';
  if (not quPrincipal1.FieldByName('tal_horsabini1').IsNull) then
    Hr5 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabIni1').Value)
  else
    Hr5 := '';
  if (not quPrincipal1.FieldByName('tal_horsabfim1').IsNull) then
    Hr6 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabfim1').Value)
  else
    Hr6 := '';
  if (not quPrincipal1.FieldByName('tal_horsabini2').IsNull) then
    Hr7 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabIni2').Value)
  else
    Hr7 := '';
  if (not quPrincipal1.FieldByName('tal_horsabfim2').IsNull) then
    Hr8 := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabfim2').Value)
  else
    Hr8 := '';

  CalcHora;

  if (not quPrincipal1.FieldByName('tal_tipobolsa').IsNull) and
     (quPrincipal1.FieldByName('tal_tipobolsa').Value <> '') then
    cbTipoBolsa.ItemIndex := quPrincipal1.FieldByName('tal_tipobolsa').AsInteger;
end;

procedure TFORTAL.calchora();
var
  hor :array [1..20] of string;
  h1,h2,h3,h4,h5,h6,h7,h8: TDateTime;
  totDias: Integer;
  tot1: Double;
  DiaInicial, DiaFinal: String;

begin

  If (hr1 = '') and (hr2 = '') then Exit;

  try
    h1:= strtoTime(hr1)*24;
    h2:= strtoTime(hr2)*24;

    if hr3 <> '' then
      h3 := strtoTime(hr3)*24
    else
      h3 := 0;

    if hr4 <> '' then
      h4 := strtoTime(hr4)*24
    else
      h4 := 0;

    if hr5 <> '' then
      h5 := strtoTime(hr5)*24
    else
      h5 := 0;

    if hr6 <> '' then
      h6 := strtoTime(hr6)*24
    else
      h6 := 0;

    if hr7 <> '' then
      h7 := strtoTime(hr7)*24
    else
      h7 := 0;

    if hr8 <> '' then
      h8 := strtoTime(hr8)*24
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

    // Verifica os dias da semana
    TotDias := 30; // valor inicial
    TotDias := TotDias - 8; // desconta domingo e s�bado
    If Not DBCheckBox2.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox3.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox4.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox5.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox6.Checked then
      TotDias := TotDias - 4;

    // dia inicial e final
    If DBCheckBox2.Checked then
    begin
      DiaInicial := 'segunda';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else If DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else If DBCheckbox6.Checked then
        DiaFinal := 'ter�a'
      else
        DiaFinal := 'segunda'
    end
    else If DBCheckBox3.Checked then
    begin
      DiaInicial := 'ter�a';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else If DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else
        DiaFinal := 'ter�a';
    end
    else If DBCheckBox4.Checked then
    begin
      DiaInicial := 'quarta';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else
        DiaFinal := 'quarta';
    end
    else If DBCheckBox5.Checked then
    begin
      DiaInicial := 'quinta';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else
        DiaFinal := 'quinta';
    end
    else
    begin
      DiaInicial := 'sexta';
      DiaFinal   := 'sexta';
    end;

    dtc := hor[1]+hor[2]+hor[3]+hor[4]+hor[5]+' �s '+hor[6]+hor[7]+hor[8]+hor[9]+hor[10];
    if (hr3 <> '') or (hr4 <> '') then
      dtc := dtc + ' e das '+hor[11]+hor[12]+hor[13]+hor[14]+hor[15]+' �s '+hor[16]+hor[17]+hor[18]+hor[19]+hor[20];
    // hor�rio de s�bado
    if (hr5 <> '') or (hr6 <> '') then
    begin
      dtc := dtc + ' de ' + diaInicial + ' � ' + diaFinal +  ', e das ' + hr5 + ' �s ' + hr6;
      if (hr7 <> '') or (hr8 <> '') then
        dtc := dtc + ' e das '+ hr7 + ' �s ' + hr8;
      dtc := dtc + ' aos s�bados';
    end;

    tot1 := ((h2 - h1)+(h4 - h3))*totDias + ((h6-h5)+(h8-h7))*4;
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
        if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
        quPrincipal1.FieldByName('tal_tothoras').Value := Tot1;
      end;
      eTotal := quPrincipal1.FieldByName('tal_tothoras').Text;
    end;

    meEnt1.Text := hr1;
    meSai1.Text := hr2;
    meEnt2.Text := hr3;
    meSai2.Text := hr4;
    Digitou     := False;
  except
  end;
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
    if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;

    if (meEnt1.Text <> '  :  ') and
       (meSai1.Text <> '  :  ') then
    begin
      hr1 := '';hr2 := '';hr3 := '';hr4 := '';
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
    CRM, CRO, CRJ, CREF, CPP, Coren,Conselho, Inst, Emp: String;
    datac :string[37];
    exte,datana: string ;
    endesc,baiesc,cidadeEsc,cgcesc,caresc,telesc,cepesc, nomeesc,RespEsc : string;
    endemp,baiemp,telemp,cidadeEmp,estadoEmp,faxEmp,cepemp,cgcemp,caremp, inscemp,respemp, nomeemp :string;
    curcod,numMatEsc,EstadoEst,cpfEst,cidadeEst,endest,baiest,telest,cepest,rgest,ctpest,curest, nomeEst:string;
    DireEsc,SuperEmp, AreaEst, OrientadorEst: string;
    at: Array [1..5] of string;
    ce,ces,contador:integer;
    uce,dce,superest : string;
    num: integer;
    uni,dez,cen: string;
    centa,unida,dezen,cente, perAtu, turEst, tipobolsa:string;
    CoordEsc, CargoSuperEst, FormSuperEst: String;
    bolsa: Double;
    DataFim: TDateTime;

  procedure completadados;
  var i: Integer;
  begin
    with qContrato do
    begin
      // Busca a dados da vaga
      if DmDta.quTce.FieldByName('tce_tipocont').Value = '0' then
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

      Emp := DmDta.quTceemp_cod.text;
      bolsa := quPrincipal1.FieldByName('tal_novabolsa').Value;
      if quPrincipal1.FieldByName('tal_tipobolsa').Value = '0' then
        tipoBolsa := 'Hora'
      else
        tipoBolsa := 'M�s';

      // busca dados do Estudante
      close;
      sql.clear;
      sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      curest  := fieldbyname('cur_nome').asstring;
      curcod  := fieldbyname('cur_cod').asstring;
      Inst    := fieldByName('inst_cod').asstring;
      peratu  := fieldByName('pcu_anoatual').AsString;
      if fieldByName('pcu_peratual').AsString = '0' then
        perAtu := perAtu + '� ano'
      else
        perAtu := perAtu + '� per�odo';

      case fieldByName('pcu_turno').AsInteger of
        0: turEst := 'manh�';
        1: turEst := 'tarde';
        2: turEst := 'noite';
      end;

      nomeEst := DmDta.quTceest_nome.Text;
      datana := fieldbyname('est_dtnasc').asstring;
      cidadeEst := fieldByName('est_cidade').asstring;
      estadoEst := fieldByName('est_estado').asstring;
      cpfest := fieldbyname('est_cpf').asstring;
      cpfEst := Copy(cpfEst, 1, 3) + '.' + Copy(cpfEst, 4, 3) + '.' + Copy(cpfEst, 7, 3) + '-' + Copy(cpfEst, 10, 2);
      endest := fieldbyname('est_endereco').asstring;
      If fieldbyname('est_numend').Text <> '' then
        endEst := endEst + ' ' + fieldbyname('est_numend').Text;
      If fieldbyname('est_apto').Text <> '' then
        endEst := endEst + ' - APTO. ' + fieldbyname('est_apto').Text;
      If fieldbyname('est_bloco').Text <> '' then
        endEst := endEst + ' - BLOCO ' + fieldbyname('est_bloco').Text;
      baiest := fieldbyname('est_bairro').asstring;
      telest := fieldbyname('est_fone1').asstring;
      cepest := fieldbyname('est_cep').asstring;
      rgest  := fieldbyname('est_rg').asstring;
      ctpest := fieldbyname('est_ctpsnum').asstring + ' S�rie:' + fieldbyname('est_ctpsserie').asstring;

      // busca dados da escola
      close;
      sql.clear;
      sql.add('select i.*, f.ifu_nome, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod where i.inst_cod = ' + Inst);
      open;
      nomeesc := fieldbyname('inst_nome').asstring;
      endesc  := fieldbyname('inst_endereco').asstring;
      If fieldbyname('inst_numend').Text <> '' then
        endesc  := endesc + ' ' + fieldbyname('inst_numend').Text;
      If fieldbyname('inst_sala').Text <> '' then
        endesc  := endesc + ' - SALA ' + fieldbyname('inst_sala').Text;
      baiesc  := fieldbyname('inst_bairro').asstring;
      cidadeEsc := fieldbyname('inst_cidade').asstring;
      cgcesc  := fieldbyname('inst_cnpj').asstring;
      caresc  := fieldbyname('ifu_cargo').asstring;;
      telesc  := fieldbyname('inst_telefone').asstring;
      cepesc  := fieldbyname('inst_cep').asstring;
      respEsc := fieldbyname('ifu_nome').asstring;

      // Coordenador de curso
      If (Inst = '261') or (Inst = '581') or
         (Inst = '186') or (Inst = '137') then
      begin
        close;
        sql.clear;
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + Inst + ' and cur_cod = ' + CurCod);
        open;
        CoordEsc  := fieldbyname('curi_nomecoord').asstring;
        If Inst <> '137' then
          RespEsc := CoordEsc
        else
        begin
          // verifica a �rea do curso
          close;
          sql.clear;
          sql.add('select cur_area from Curso where cur_cod = ' + CurCod);
          Open;

          If FieldByName('cur_area').Text = 'Biol�gicas' then
          begin
            // Humanas -> busca o funcion�rio 2
            close;
            sql.clear;
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 1');
            open;
            RespEsc := FieldByName('ifu_nome').Text;
          end
          else
          begin
            // N�o-Humanas -> busca o funcion�rio 2
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
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + Inst + ' and cur_cod = ' + CurCod);
        open;
        CoordEsc  := fieldbyname('curi_nomecoord').asstring;
        close;
        sql.clear;
        sql.add('select * from InstFuncionario where inst_cod = ' + Inst + ' and func_cod = 2');
        open;
        RespEsc  := fieldbyname('ifu_nome').asstring;
      end
      else If (Inst = '50') then // PUC exige diretor de curso
      begin
        close;
        sql.clear;
        sql.add('select id.idr_nome curi_nomediretor from InstCurso I, InstDiretor ID where i.inst_cod = id.inst_cod and i.curi_diretor = id.dire_cod and i.inst_cod = ' + Inst + ' and cur_cod = ' + CurCod);
        open;
        DireEsc  := fieldbyname('curi_nomediretor').asstring;
      end;

      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e left join Empfuncionario f on e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod where e.emp_cod = ' + Emp);
      open;
      nomeemp := DmDta.quTceemp_nome.Text;
      endemp  := fieldbyname('emp_endereco').asstring;
      If fieldbyname('emp_numend').Text <> '' then
        endemp := endemp + ' ' + fieldbyname('emp_numend').Text;
      If fieldbyname('emp_cjto').Text <> '' then
        endemp := endemp + ' - CJ. ' + fieldbyname('emp_cjto').Text;
      baiemp  := fieldbyname('emp_bairro').asstring;
      cidadeEmp := fieldbyname('emp_cidade').asstring;
      telemp  := fieldbyname('emp_telefone').asstring;
      cepemp  := fieldbyname('emp_cep').asstring;
      cgcemp  := fieldbyname('emp_cnpj').asstring;
      respemp := fieldByName('efu_nome').Asstring;
      caremp  := fieldbyname('efu_cargo').asstring;;
      estadoemp := fieldByName('emp_estado').Asstring;
      inscemp   := fieldbyname('Emp_inscest').Asstring;
      faxemp    := fieldbyname('Emp_fax').AsString;
    end;
  end;

  procedure dtcompleta;
  var
    dt,d,m,a :string;
    da :array[1..8] of string;
    me :array[1..12] of string;
  begin
    me[1]  :='Janeiro';
    me[2]  :='Fevereiro';
    me[3]  :='Mar�o';
    me[4]  :='Abril';
    me[5]  :='Maio';
    me[6]  :='Junho';
    me[7]  :='Julho';
    me[8]  :='Agosto';
    me[9]  :='Setembro';
    me[10] :='Outubro';
    me[11] :='Novembro';
    me[12] :='Dezembro';
    If Inst <> '200' then
      dt := DmDta.quTceAlteracao.FieldByName('tal_dataemi').Text
    else
      dt := FormatDateTime('dd/mm/yyyy',DmDta.quTceAlteracaoTal_vigencia.AsDateTime - 2);
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
    datac := ''+d+' dia(s) do m�s de '+me[strtoint(m)]+' de '+a+'';
  end;

  procedure ImprimeGama;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
  begin
    ValString := FloatToStr(bolsa);
    DiasSemana := '111110';

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
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
    var1.FileOpen(FORINI.Diretorio+'Contrato_gama.doc');

    Var1.CenterPara;
    Var1.font('arial',12);
    Var1.Bold;
    var1.Insert('ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+#13);

    Var1.JustifyPara;

    Var1.font('arial',12);
    Var1.Insert(#9 + 'Termo de Compromisso de Est�gio de Complementa��o Educacional, sem v�nculo empregat�cio, ');
    Var1.Insert('nos termos da Lei n� 6.494, de 07/12/77, regulamentada pelo Decreto n� 87.497, de 18/08/82 e Decreto n� 2.080, de 26/11/96, entre si fazem de um lado.');

    Var1.Insert(#13+#13);

    // empresa
    Var1.Insert(nomeEmp + ', ');
    Var1.Insert(endEmp + ', ');
    Var1.Insert(baiEmp + ', ');
    Var1.Insert(CidadeEmp + '/');
    Var1.Insert(EstadoEmp + ', ');
    Var1.Insert(Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3) + ', ');
    Var1.Insert('(' + Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4) + ', ');
    Var1.Insert('(' + Copy(faxemp,1,2)+') '+Copy(faxemp,3,4)+'-'+Copy(faxemp,7,4) + ', ');
    Var1.Insert(inscemp + ', ');
    Var1.Insert(Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2) + ', ');
    Var1.Insert('doravante denominada ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ');
    Var1.Bold;
    Var1.Insert('Neste ato representado pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, e do outro, o (a) aluno (a) ');

    // estudante
    Var1.Insert(nomeEst + ', ');
    Var1.Insert('portador da C�dula de Identidade ' + rgEst + ', ');
    //Var1.Insert('expedida por ' + + ', ');
    Var1.Insert('e do CPF ' + cpfEst + ', ');
    Var1.Insert('regularmente matriculado(a) no ' + perAtu + ', ');
    Var1.Insert(curEst + ', ');
    Var1.Insert(turEst + ', da ');
    Var1.Bold;
    Var1.Insert('SOCIEDADE UNIVERSIT�RIA GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('mantenedora da ');
    Var1.Bold;
    Var1.Insert('UNIVERSIDADE GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('inscrita no CNPJ sob o n� 33.809.609/0001-65, ');
    Var1.Insert('Inscri��o Municipal n� 00.904.309, acordam e estabelecem ');
    Var1.Insert('entre si as cl�usulas que reger�o este Termo de Compromisso de Est�gio.');

    // Cl�usulas
    Var1.Insert(#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA PRIMEIRA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('acima mencionado(a) por meio deste instrumento e nos termos da Lei n� 6.494, de 07/12/77, ');
    Var1.Insert('regulamentada pelo Decreto n.� 87.497, de 18/08/82, � concedido um est�gio de complementa��o educacional na �rea de ensino de gradua��o.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA SEGUNDA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('ter� a oportunidade de receber nas depend�ncias da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('treinamento pr�tico e aperfei�oamento t�cnico-cultural, durante o hor�rio de ' + dtc + ', ');
    Var1.Insert('com vig�ncia de ' + DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' at� '+FormatDateTime('dd/mm/yyyy',DataFim) +'. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA TERCEIRA:'+#13);
    Var1.Insert('O est�gio n�o cria v�nculo empregat�cio de qualquer natureza, e o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('poder� receber da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('durante o per�odo de est�gio uma bolsa, ou outra forma de contrapresta��o que ');
    Var1.Insert('venha a ser acordada, ressalvado o que dispuser a legisla��o previdenci�ria, conforme art. 4� da Lei n� 6.494/77.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA QUARTA:'+#13);
    Var1.Bold;
    Var1.Insert('O AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('providenciar� seguro para cobertura de acidentes pessoais em favor do(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('durante o per�odo que o aluno(a) estiver nas suas depend�ncias, informando o nome da Companhia Seguradora ');
    Var1.Insert('UNIBANCO AIG SEGUROS S/A. e o n�mero da ap�lice 00000009, ');
    Var1.Insert('conforme art. 8� do Decreto n� 87.497/82, com nova reda��o dada pelo Decreto n� 2.080, de 26/11/96.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA QUINTA:'+#13);
    Var1.Insert('A jornada de atividade de est�gio a ser cumprida pelo(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('dever� compatibilizar-se com o hor�rio escolar e com o hor�rio da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Par�grafo �nico: ');
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Nos per�odos de f�rias escolares, a jornada de est�gio ser� estabelecida de comum acordo entre o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('e a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('sempre com a interveni�ncia ');
    Var1.Bold;
    Var1.Insert('INSTITUI��O DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante Termo Aditivo. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA SEXTA:'+#13);
    Var1.Bold;
    Var1.Insert('O ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('obrigar�, mediante TCE - Termo de Compromisso de Est�gio, a cumprir ');
    Var1.Insert('as condi��es fixadas para o est�gio, bem como as normas de trabalho estabelecidas pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA S�TIMA:'+#13);
    Var1.Insert('Constituem motivos para o cessa��o autom�tica da vig�ncia do presente Termo de Compromisso de Est�gio, ');
    Var1.Insert('a conclus�o, o abandono do curso ou trancamento da matr�cula, bem como o n�o cumprimento das cl�usulas do TCE. '+#13+#13+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA OITAVA:'+#13);
    Var1.Insert('O est�gio objeto deste Termo de Compromisso, poder�, a qualquer momento, ser dado por conclu�do, tanto para o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A), ');
    Var1.Bold;
    Var1.Insert('para a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('e pela ');
    Var1.Bold;
    Var1.Insert('INSTITUI��O DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante den�ncia expressa de uma das partes � outra. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA NONA:'+#13);
    Var1.Bold;
    Var1.Insert('OS(AS) ESTAGI�RIOS(AS) ');
    Var1.Bold;
    Var1.Insert('ser�o selecionados pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('de acordo com os par�metros por ela estabelecidos, ');
    Var1.Insert('na �rea de interesse e aproveitados em atividades relacionadas com os respectivos cursos.' +#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA D�CIMA:'+#13);
    Var1.Insert('O presente Termo de Compromisso de Est�gio entrar� em vigor na data de sua assinatura, por tempo determinado, ');
    Var1.Insert('conforme cl�usula segunda, podendo ser alterado atrav�s de  Termos Aditivos, bem como rescindido, ');
    Var1.Insert('conforme estabelecido na  cl�usula oitava. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA D�CIMA PRIMEIRA:'+#13);
    Var1.Insert('Fica eleito o Foro da Cidade do Rio de Janeiro para dirimir quaisquer ');
    Var1.Insert('d�vidas oriundas do presente Termo de Compromisso de Est�gio.'+#13+#13);

    Var1.Insert(#9 + 'E por estarem as partes justas e acordadas, assinam o presente Termo ');
    Var1.Insert('de Compromisso de Est�gio em 03 (tr�s) vias de igual teor e forma, na presen�a de duas testemunhas abaixo. '+#13+#13);

    Var1.RightPara;
    dtcompleta;
    Var1.Insert('Rio de Janeiro, ' + dataC + '. ');

    Var1.AppShow;
  end;

  procedure Imprime;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
  begin
    // verifica o c�digo da escola, se n�o � UEM
    If Inst = '221' then
    begin
      InputQuery('Est�gio', '�rea de Est�gio', AreaEst);
      AreaEst := AnsiUpperCase(AreaEst);
      InputQuery('Empresa', 'Supervisor na Empresa', SuperEmp);
      SuperEmp := AnsiUpperCase(SuperEmp);
      InputQuery('Institui��o', 'Orientador na Institui��o', OrientadorEst);
      OrientadorEst := AnsiUpperCase(OrientadorEst);
    end;

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

    dtcompleta;

    ValString := FloatToStr(bolsa);

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

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
    If Inst = '200' then
      var1.FileOpen(FORINI.Diretorio+'Contrato_2.doc')
    else
      var1.FileOpen(FORINI.Diretorio+'Contrato_1.doc');

    var1.Insert('                                                        ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+'                                                                              E ACORDO DE COOPERA��O');
    var1.Insert(#13+#13);
    var1.Insert('TCE N�  '+edTceCod.Text);
    var1.Insert(#13+#13);
    var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paran�, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo re');
    var1.Insert('lacionados, firmam esta altera��o do TERMO DE COMPROMISSO E EST�GIO N� '+DmDta.quTceTCE_COD.Text+'. atrav�s ');
    var1.Insert('do agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, CNPJ n.� ');
    var1.Insert('02.217.643/0001-17, de acordo com a Lei n� 6.494/77 e do decreto n� 497/82.');
    var1.Insert(#13+#13);
    var1.Insert(#13+'INSTITUI��O DE ENSINO');
    var1.Insert(#13+'Raz�o Social: '+nomeEsc);
    var1.Insert(#13+'Endere�o: '+endesc);
    var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
    var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcemp,13,2));
    If Inst <> '331' then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: '+caresc);
      If (CurCod = '14') or (CurCod = '15') then
          Var1.Insert(#13+'Coordenador do Curso: Dr(a). '+CoordEsc);
    end
    else
    begin
      var1.Insert(#13+'Representada por: ');
      var1.Insert(#13+'Cargo: COORDENADOR(A) DE CURSO');
    end;
    // Diretor de Curso
    If DireEsc <> ''then
      var1.Insert(#13+'Diretor(a) de Curso: ' + DireEsc);

    // verifica o c�digo da escola, se n�o � UEM
    If Inst = '221' then
      var1.Insert(#13+'Orientador: '+OrientadorEst);

    var1.Insert(#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Raz�o Social: '+ nomeemp);
    var1.Insert(#13+'Endere�o:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: '+caremp);
    If SuperEst <> '' then
    begin
      If (CurCod = '14') or (curcod = '15') then
        var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
      else
        var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);
    end;
    If FormSuperEst <> '' then
      var1.Insert(#13+'Forma��o: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'N� do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'N� do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'N� do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'N� do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'N� do C.R.O.: '+CRO);
    If Inst = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a  INSTITUI��O DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If Inst = '331' then
      Var1.Insert(#13+'N�mero de Matr�cula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endere�o: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Per�odo/Ano: '+peratu);
    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 1� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia ');
    var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
    var1.Insert('plementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e ');
    var1.Insert('desenvolvimento pessoal do Estagi�rio.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 2� - Este Termo de Compromisso de Est�gio ter� vig�ncia de '+DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' at� '+FormatDateTime('dd/mm/yyyy',DataFim)+', ');
    var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes, mediante comunica');
    var1.Insert('��o pr�via ou podendo ser prorrogado atrav�s de Termo Aditivo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 3� - As atividades de est�gio se far�o das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
    var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poder� ser estabelecida entre as partes.');
    If Inst = '200' then // UTFPR
      Var1.Insert('A jornada de atividade em est�gio dever� compatibilizar-se com o hor�rio escolar do estagi�rio e com o hor�rio da Unidade Concedente. ');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 4� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
    var1.Insert('Profiss�o do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    If Inst = '221' then
    begin
      var1.Insert(#13+#13+#13+'�rea de Est�gio: '+AreaEst);
      var1.Insert(#13);
    end
    else
      var1.Insert(#13+#13+#13+#13);
    var1.Insert('1. '+at[1]);
    var1.Insert(#13+'2. '+at[2]);
    var1.Insert(#13+'3. '+at[3]);
    var1.Insert(#13+'4. '+at[4]);
    var1.Insert(#13+'5. '+at[5]);
    var1.Insert(#13+#13+#13);

    if Bolsa > 0 then
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
      var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obriga��o  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
    var1.Insert(#13+#13);
    var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 6� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir  as  normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    If Inst <> '331' then
    begin
      var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
      var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    end
    else
    begin
      var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever� fornecer informa��es � Institui��o de Ensino e ao ');
      var1.Insert('CETEFE para o acompanhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 8� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
    var1.Insert('a interrup��o autom�tica do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 9� - Fica o CETEFE como centralizador do processo de est�gio entre a Unidade Conce');
    var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
    var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 10� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE.');

    If Inst = '331' then
    begin
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('E, Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em 5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                   Coordenador Geral de Est�gio                                                   Coordenador de Curso ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante    ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('                                                    _________________________________________');
      var1.Insert(#13+'                                                                        Representante do CETEFE');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else If Inst = '200' then
    begin
      Var1.Insert(#13+#13);
      var1.Insert('CL�USULA 11� - O presente est�gio n�o acarretar� v�nculo empregat�cio de qualquer natureza, entre o estagi�rio e a Unidade ');
      var1.Insert('Concedente, nos termos do que disp�e o artigo quarto da Lei n.� 6.494/77 e o artigo 82 da Lei n.� 9.934/96 e o artigo sexto do Decreto-Lei n.� 87.497/82'+#13+#13);
      Var1.Insert('CL�USULA 12� - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN� dar� publicidade a este Termo, em conson�ncia com preceitos legais vigentes.' + #13+#13);
      var1.Insert('CL�USULA 13� - Fica eleito o Foro Federal da Cidade de Curitiba para dirimir quaisquer d�vidas ou quest�es jur�dicas ');
      var1.Insert('que se originarem na execu��o deste Termo.' + #13 + #13);
      Var1.Insert('CL�USULA 14� - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN�, em raz�o do interesse p�blico, ficando o ');
      var1.Insert('estagi�rio impossibilitado de desenvolver suas atividades nesta empresa. ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  4 (quatro) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE          ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     _________________________________________           ________________________________________ ');
      var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante                 ');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else
    begin
      If Inst = '50' then
      begin
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                 Diretor de Curso da INSTITUI��O DE ENSINO');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('                                                    _________________________________________');
        var1.Insert(#13+'                                                                        Representante do CETEFE');
        var1.Insert(#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end
      else
      If (CurCod = '14') or (CurCod = '15') then
      begin
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'        Representante da INSTITUI��O DE ENSINO                                          Coordenador de Curso');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                         Supervisor na UNIDADE CONCEDENTE');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'                     Representante do CETEFE                                                                     Estudante');
        var1.Insert(#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end
      else
      begin
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  4 (quatro) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________            ________________________________________ ');
        var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE          ');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     _________________________________________           ________________________________________ ');
        var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante                 ');
        var1.Insert(#13+#13+#13+#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end;
    end;

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure ImprimeUniandrade;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
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

    dtcompleta;

    ValString := FloatToStr(bolsa);

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

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

    var1.Insert('                                                        ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+'                                                                              E ACORDO DE COOPERA��O');
    var1.Insert(#13+#13);
    var1.Insert('TCE N�  '+edTceCod.Text);
    var1.Insert(#13+#13);
    var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paran�, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo re');
    var1.Insert('lacionados, firmam esta altera��o do TERMO DE COMPROMISSO E EST�GIO N� '+DmDta.quTceTCE_COD.Text+'. atrav�s ');
    var1.Insert('do agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, CNPJ n.� ');
    var1.Insert('02.217.643/0001-17, de acordo com a Lei n� 6.494/77 e do decreto n� 497/82.');
    var1.Insert(#13+#13);
    var1.Insert(#13+'INSTITUI��O DE ENSINO');
    var1.Insert(#13+'Raz�o Social: '+nomeEsc);
    var1.Insert(#13+'Endere�o: '+endesc);
    var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
    var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcemp,13,2));
    If Inst = '137' then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: DIRETOR');
      If (CurCod = '14') or (CurCod = '15') then
        var1.Insert(#13+'Coordenador de Curso: Dr(a). '+coordesc)
      else
        var1.Insert(#13+'Coordenador de Curso: '+coordesc);
    end
    else if (Inst = '261') or (Inst = '581') or (Inst = '186') then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: COORDENADOR DE CURSO');
    end
    else if (Inst = '221') then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: PR�-REITOR(A) DE ENSINO');
      var1.Insert(#13+'Orientador: '+CoordEsc);
    end;

    var1.Insert(#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Raz�o Social: '+ nomeemp);
    var1.Insert(#13+'Endere�o:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: ' + caremp);
    If SuperEst <> '' then
    begin
      If (CurCod = '14') or (curcod = '15') then
        var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
      else
        var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);
    end;
    If FormSuperEst <> '' then
      var1.Insert(#13+'Forma��o: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'N� do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'N� do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'N� do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'N� do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'N� do C.R.O.: '+CRO);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a  INSTITUI��O DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    Var1.Insert(#13+'Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endere�o: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Per�odo/Ano: '+peratu);
    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 1� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia ');
    var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
    var1.Insert('plementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e ');
    var1.Insert('desenvolvimento pessoal do Estagi�rio.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 2� - Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' at� ' + FormatDateTime('dd/mm/yyyy',DataFim)+', ');
    var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes, mediante comunica��o ');
    var1.Insert('pr�via ou podendo ser prorrogado atrav�s de Termo Aditivo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 3� - As atividades de est�gio se far�o das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
    var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poder� ser estabelecida entre as partes.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 4� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
    var1.Insert('Profiss�o do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    var1.Insert(#13+#13+#13+#13+#13+#13+#13);
    var1.Insert('1. '+at[1]);
    var1.Insert(#13+'2. '+at[2]);
    var1.Insert(#13+'3. '+at[3]);
    var1.Insert(#13+'4. '+at[4]);
    var1.Insert(#13+'5. '+at[5]);
    var1.Insert(#13+#13+#13);
    if Bolsa > 0 then
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
      var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerar� cumprida essa  obriga��o  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
    var1.Insert(#13+#13);
    var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 6� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever� fornecer informa��es � Institui��o de Ensino e ao ');
    var1.Insert('CETEFE para o acompanhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 8� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
    var1.Insert('a interrup��o autom�tica do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 9� - Fica o CETEFE como centralizador do processo de est�gio entre a Unidade Conce');
    var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
    var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 10� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE.');

    var1.Insert(#13+#13+#13+#13);
    if Inst = '221' then
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                           Pr� Reitoria de Ensino                                                    Orientador de Est�gio da UEM');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'             Representante da Unidade Concedente                       Supervisor de Est�gio da Unidade Concedente');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     _________________________________________           ________________________________________ ');
      var1.Insert(#13+'                       Representante do CETEFE                                                                 Estudante ');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
      If (CurCod = '14') or (CurCod = '15') then
        var1.Insert('6 (seis) ')
      else
        var1.Insert('4 (quatro) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                          Coordenador de Curso na INSTITUI��O DE ENSINO ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE         ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'                                Estudante                                                                                Representante do CETEFE');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end;
    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure ImprimeUTFPR;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
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

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
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

    Var1.CenterPara;
    var1.Insert('ALTERA��O DO TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+'E ACORDO DE COOPERA��O');
    var1.Insert(#13+#13);
    Var1.JustifyPara;
    var1.Insert('TCE N�   '+DmDta.quTceTCE_COD.Text);
    var1.Insert(#13+#13+#13);
    var1.Insert(' Ao(s) '+datac+', na cidade de Curitiba, Paran�, a INSTITUI��O DE ');
    var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, atrav�s de seus repre');
    var1.Insert('sentantes celebram entre si o ACORDO DE COOPERA��O que ');
    Var1.Insert('vigorar� no per�odo entre ' + meTceVig.Text);
    Var1.Insert(' e ' + FormatDateTime('dd/mm/yyyy',DataFim) + ', podendo ser prorrogado atrav�s de termo aditivo, bem como denunciado a ');
    Var1.Insert('qualquer momento entre as partes, mediante comunicado por escrito e 30 (trinta) dias antecedentes, ');
    Var1.Insert('independendo de qualquer notifica��o ou interpela��o judicial. O presente ACORDO DE COOPERA��O ');
    var1.Insert('tem por objetivo formalizar  as condi��es b�sicas para a realiza��o de Est�gio do estudante da Institui��o ');
    var1.Insert('de Ensino junto � Unidade Concedente.');
    var1.Insert(#13);
    var1.Insert(#13+'INSTITUI��O DE ENSINO');
    var1.Insert(#13+'Raz�o Social: '+nomeEsc);
    var1.Insert(#13+'Endere�o: '+endesc);
    var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
    var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+'.'+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcesc,13,2));
    If Inst <> '331' then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: '+caresc);
      If (CurCod = '14') or (CurCod = '15') then
        Var1.Insert(#13+'Coordenador do Curso: Dr(a). '+CoordEsc);
    end
    else
    begin
      var1.Insert(#13+'Representada por: ');
      var1.Insert(#13+'Cargo: COORDENADOR(A) DE CURSO');
    end;
    // verifica o c�digo da escola, se n�o � UEM
    If Inst = '221' then
      var1.Insert(#13+'Orientador: '+OrientadorEst);

    var1.Insert(#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Raz�o Social: '+ nomeemp);
    var1.Insert(#13+'Endere�o:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: '+caremp);
    If SuperEst <> '' then
    begin
      If (CurCod = '14') or (curcod = '15') then
        var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
      else
        var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);
    end;
    If FormSuperEst <> '' then
      var1.Insert(#13+'Forma��o: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'N� do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'N� do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'N� do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'N� do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'N� do C.R.O.: '+CRO);
    If Inst = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUI��O DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If Inst = '331' then
      Var1.Insert(#13+'N�mero de Matr�cula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endere�o: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Per�odo/Ano: '+peratu);

    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);

    //// come�a aqui as cl�usulas

    var1.Insert('CL�USULA 1� - Caber� ao CETEFE, como Agente de Integra��o: ');
    var1.Insert(#13+#13);
    var1.Insert('I) Celebrar e manter Conv�nio de Coopera��o com as Unidades Concedentes;'+#13);
    var1.Insert('II) Cadastrar, convocar e selecionar os estudantes, encaminhando-os �s Unidades Concedentes, de acordo com a necessidade da mesma;'+#13);
    var1.Insert('III) Captar oportunidade de Est�gio junto �s Unidades Concedentes, compatibilizando as atividades de Est�gio e o hor�rio de est�gio com o curso do Estagi�rio;'+#13);
    var1.Insert('IV) Desenvolver atividades de treinamento dos estagi�rios, bem como oferecer cursos, palestras, semin�rios e outras atividades que venham a ');
    var1.Insert('complementar o aprendizado e facilitar o desenvolvimento do Programa de Est�gio;'+#13);
    var1.Insert('V) Realizar intera��o entre as Unidades Concedentes e a Institui��o de Ensino, visando � assinatura do instrumento jur�dico previsto no Art. 5� do Decreto n� 87.497/82;'+#13);
    var1.Insert('VI) Providenciar a assinatura do Termo de Compromisso de Est�gio, entre a Unidade Concedente, o Estudante e a respectiva Institui��o de Ensino, de acordo com ');
    var1.Insert('o � 1�, do Art.6� do Decreto n� 87.497/82;'+#13);
    var1.Insert('VII) Acompanhar o estudante em toda a dura��o do Programa de Est�gio, atrav�s de relat�rios e visitas regulares, tanto ao estudante como ao (s) supervisores ');
    var1.Insert('(es) de est�gio do mesmo;'+#13);
    var1.Insert('VIII) Providenciar toda a documenta��o necess�ria para a efetiva��o do est�gio;'+#13);
    var1.Insert('IX) Providenciar a contrata��o de Seguros Contra Acidentes Pessoais em favor dos Estagi�rios, assumindo os custos correspondentes.'+#13+#13+#13);

    var1.Insert('CL�USULA 2� - Caber� � UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA - CAMPUS CURITIBA, como Institui��o de Ensino:'+#13+#13);
    Var1.Insert('I) Comunicar ao CETEFE, sempre que necess�rio, desist�ncias, trancamento de matricula, conclus�o de curso, bem como outras informa��es �teis ao ');
    Var1.Insert('processo de manuten��o do Programa de Est�gio.'+#13);
    Var1.Insert('II) Comunicar ao CETEFE detalhes sobre o desempenho do estudante sempre que se fizer necess�rio;'+#13);
    Var1.Insert('III) Informar ao CETEFE a rela��o de todos os cursos que mant�m, bem como as condi��es m�nimas exigidas para realiza��o de est�gio em cada curso;'+#13);
    Var1.Insert('IV) Assinar o Termo de compromisso de Est�gio, que se for necess�rio para celebra��o  do est�gio entre o estudante e a Unidade Concedente.'+#13+#13+#13);

    var1.Insert('CL�USULA 3� - Caber� � Unidade Concedente (Empresa):'+#13+#13);
    Var1.Insert('I) Informar ao CETEFE as vagas dispon�veis, identificando a �rea em que existem vagas, bem como das condi��es de realiza��o de est�gio;'+#13);
    Var1.Insert('II) Manter centralizadas as informa��es sobre o est�gio, indicando o respons�vel para tratar das quest�es relativas ao Programa de Est�gio;'+#13);
    Var1.Insert('III) Comunicar ao CETEFE os nomes dos estudantes que ir�o realizar est�gio;'+#13);
    Var1.Insert('IV) Comunicar ao CETEFE detalhes sobre o desempenho do estagi�rio sempre que se fizer necess�rio;'+#13);
    Var1.Insert('V) Celebrar com a Institui��o de Ensino, o Estudante e o Agente de Integra��o o Termo de Compromisso de Est�gio, de acordo com o � 1�, do Art. 6�, ');
    Var1.Insert('do Decreto n� 87.497/82;'+#13);
    Var1.Insert('VI) Informar ao CETEFE a Interrup��o, conclus�o ou eventuais modifica��es do est�gio, bem como outras informa��es de interesse ao desenvolvimento do Programa de Est�gio;'+#13);
    Var1.Insert('VII) Fixar a jornada de atividade do est�gio compatibilizando o hor�rio escolar do estudante com o hor�rio de trabalho da Unidade Concedente;'+#13);
    Var1.Insert('VIII) Efetuar o pagamento da bolsa-aux�lio, quando houver, em plena conformidade com o disposto neste instrumento emitindo e enviando c�pia do recibo ao CETEFE; ou'+#13);
    Var1.Insert('VIII) Repassar ao CETEFE a valor correspondente � bolsa-aux�lio, quando houver, ficando este respons�vel pelo repasse ao estagi�rio.'+#13);
    Var1.Insert('IX) Compete exclusivamente �s Unidades Concedentes disponibilizar, mensalmente, a quantia acordada neste instrumento ao estagi�rio seja qual for a modalidade ');
    Var1.Insert('de pagamento, isentando o CETEFE e a Institui��o de Ensino ora mencionada de quaisquer responsabilidades sobre o pagamento do estagi�rio, ficando, ');
    Var1.Insert('aquele respons�vel t�o somente pelo repasse quando estipulado contratualmente.'+#13+#13+#13);

    Var1.Insert('CL�USULA 4� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia entre o estudante e a Unidade Concedente. ');
    Var1.Insert('O presente Termo visa assegurar a complementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e desenvolvimento pessoal do Estagi�rio.'+#13+#13);

    Var1.Insert('CL�USULA 5� - Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + meTceVig.Text + ' at� ' + FormatDateTime('dd/mm/yyyy',DataFim));
    Var1.Insert(', podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo.'+#13+#13);

    Var1.Insert('CL�USULA 6� - As atividades de est�gio se far�o das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
    var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poder� ser estabelecida entre as partes. A jornada de atividade em est�gio dever� compatibilizar-se com o ');
    Var1.Insert('hor�rio escolar do estagi�rio e com o hor�rio da Unidade Concedente. ');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 7� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
    var1.Insert('Profiss�o do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('1. '+at[1]);
    var1.Insert(#13+'2. '+at[2]);
    var1.Insert(#13+'3. '+at[3]);
    var1.Insert(#13+'4. '+at[4]);
    var1.Insert(#13+'5. '+at[5]);
    var1.Insert(#13+#13+#13);

    if Bolsa > 0 then
    begin
      var1.Insert('CL�USULA 8� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
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
    var1.Insert(#13+#13);
    var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerar� cumprida essa obriga��o por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
    var1.Insert(#13+#13);
    var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 9� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 10� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
    var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 11� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
    var1.Insert('a interrup��o autom�tica do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 12� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
    var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
    var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 13� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE. ');

    Var1.Insert(#13+#13);
    var1.Insert('CL�USULA 14� - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN� dar� publicidade a este Termo, em conson�ncia com preceitos legais vigentes.' + #13+#13);
    var1.Insert('CL�USULA 15� - Fica eleito o Foro da Justi�a Federal, Se��o Judici�ria de Curitiba para dirimir quaisquer d�vidas ou quest�es jur�dicas ');
    var1.Insert('que se originarem na execu��o deste Termo.' + #13 + #13);
    Var1.Insert('CL�USULA 16� - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN�, em raz�o do interesse p�blico, ficando o ');
    var1.Insert('estagi�rio impossibilitado de desenvolver suas atividades nesta empresa. '+#13+#13);

    var1.Insert(#13+#13+#13);
    var1.Insert('E, por assim estarem de acordo, assinam este instrumento em 4 (quatro) vias de igual teor:');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('                                                ________________________________________            ________________________________________');
    var1.Insert(#13+'                                                     Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('                                                _________________________________________           ________________________________________ ');
    var1.Insert(#13+'                                                     Representante da UNIDADE CONCEDENTE                                              Estudante');

    var1.Insert(#13+#13+#13);
    var1.Insert('                                             Testemunhas: '+#13+#13+#13+#13);
    var1.Insert('                                              _________________________________________	________________________________________'+#13);
    Var1.Insert('                                              Nome:	                                              		Nome:'+#13);
    Var1.Insert('                                              RG:			                 			RG:'+#13);
    Var1.Insert('                                              CPF:	                                              			CPF:'+#13+#13+#13);

    var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

begin
  inherited;
  Screen.Cursor := crHourGlass;
  completadados;


  // N�mero de matricula
  If Inst = '749' then
  begin
    ImprimeGama;
  end
  else If Inst = '331' then
  begin
    InputQuery('N� Matr�cula', 'N�mero', NumMatEsc);
    imprime;
  end
  else if curcod = '12' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'PSICOLOGIA';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Psicologia', 'N� do C.R.P.', CPP);
    CPP := AnsiUpperCase(CPP);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if curcod = '14' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'M�DICO';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Medicina', 'N� do C.R.M.', CRM);
    CRM := AnsiUpperCase(CRM);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if curcod = '15' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'CIRURGI�O(A) DENTISTA';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Odontologia', 'N� do C.R.O.', CRO);
    CRO := AnsiUpperCase(CRO);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if curcod = '29' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'ENFERMAGEM';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Enfermagem', 'N� do C.O.R.E.N.', Coren);
    CPP := AnsiUpperCase(CPP);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if curcod = '19' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'EDUCA��O F�SICA';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Educa��o F�sica', 'N� do C.R.E.F.', CREF);
    CREF := AnsiUpperCase(CREF);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if curcod = '9' then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'ASSISTENTE SOCIAL';
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Servi�o Social', 'N� do Conselho', Conselho);
    Conselho := AnsiUpperCase(Conselho);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else If (Pos('JORNALISMO', curEst) > 0) {estagi�rios de jornalismo } then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Jornalismo', 'N� do C.R.J.', CRJ);
    CRJ := AnsiUpperCase(CRJ);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else if (curcod = '31') or (curcod = '50') then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    If (Inst = '137') or (Inst = '261') or
       (Inst = '186') or (Inst = '581') or
       (Inst = '221') then
      imprimeUniAndrade
    else If Inst = '200' then
      imprimeUTFPR
    else
      imprime;
  end
  else If (Inst = '197') or (Inst = '190') or
          (Inst = '24') or (Inst = '49') or
          (Inst = '166') or (Inst = '296') or
          (Inst = '482') or (Inst = '458') or
          (Inst = '401') or (Inst = '50') or
          (Inst = '129') or (Inst = '546') then
  begin
    InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    If (Inst <> '190') then
    begin
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
    end;
    imprime;
  end
  else If (Inst = '137') or (Inst = '261') or
          (Inst = '186') or (Inst = '581') or
          (Inst = '221') then
    ImprimeUniAndrade
  else If Inst = '200' then
    imprimeUTFPR
  else
    imprime;

  Screen.Cursor := crDefault;
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
  with TQuery.Create(Nil) do
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
  if (not (quPrincipal1.State in [dsInsert,dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.meTceVigKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (quPrincipal1.State in [dsInsert,dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.cbTipoBolsaClick(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal1.State in [dsInsert,dsEdit])) then quPrincipal1.Edit;
end;

procedure TFORTAL.meTalDtRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Digitou := True;
  if (not (quPrincipal1.State in [dsInsert,dsEdit])) then quPrincipal1.Edit;
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
    FORTALD       := TFORTALD.Create(Self);
    Screen.Cursor := crDefault;
    FORTALD.ShowModal;

    // recalcula o hor�rio
    if (not quPrincipal1.FieldByName('tal_horsabini1').IsNull) then
      Hr5   := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabini1').Value)
    else
      Hr5   := '';
    if (not quPrincipal1.FieldByName('tal_horsabfim1').IsNull) then
      Hr6   := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabfim1').Value)
    else
      Hr6   := '';
    if (not quPrincipal1.FieldByName('tal_horsabini2').IsNull) then
      Hr7   := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabini2').Value)
    else
      Hr7   := '';
    if (not quPrincipal1.FieldByName('tal_horsabfim2').IsNull) then
      Hr8   := FormatDateTime('hh:nn',quPrincipal1.FieldByName('tal_horsabfim2').Value)
    else
      Hr8   := '';
    // chama rotina que faz o rec�lculo das horas
    Digitou := True;
    CalcHora();
  end;

  MudaAba := True;
end;

procedure TFORTAL.DBCheckBox2Click(Sender: TObject);
begin
  inherited;
  If pgPrincipal.ActivePageIndex = 1 then
  begin
    Digitou := True;
    CalcHora;
  end;
end;

procedure TFORTAL.DBCheckBox7Click(Sender: TObject);
begin
  inherited;
  If pgPrincipal.ActivePageIndex = 1 then
    Digitou := True;
end;

end.