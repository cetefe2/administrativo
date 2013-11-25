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
      MSGERRO('Entre com a data de vigência do TCE!');
      meTceVig.SetFocus;
    end
    else if meEnt1.Text = '  :  ' then
    begin
      MSGERRO('Entre com a entrada 1 do TCE!');
      meEnt1.SetFocus;
    end
    else if meSai1.Text = '  :  ' then
    begin
      MSGERRO('Entre com a saída 1 do TCE!');
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
    TotDias := TotDias - 8; // desconta domingo e sábado
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
        DiaFinal := 'terça'
      else
        DiaFinal := 'segunda'
    end
    else If DBCheckBox3.Checked then
    begin
      DiaInicial := 'terça';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else If DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else
        DiaFinal := 'terça';
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

    dtc := hor[1]+hor[2]+hor[3]+hor[4]+hor[5]+' às '+hor[6]+hor[7]+hor[8]+hor[9]+hor[10];
    if (hr3 <> '') or (hr4 <> '') then
      dtc := dtc + ' e das '+hor[11]+hor[12]+hor[13]+hor[14]+hor[15]+' às '+hor[16]+hor[17]+hor[18]+hor[19]+hor[20];
    // horário de sábado
    if (hr5 <> '') or (hr6 <> '') then
    begin
      dtc := dtc + ' de ' + diaInicial + ' à ' + diaFinal +  ', e das ' + hr5 + ' às ' + hr6;
      if (hr7 <> '') or (hr8 <> '') then
        dtc := dtc + ' e das '+ hr7 + ' às ' + hr8;
      dtc := dtc + ' aos sábados';
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
        tipoBolsa := 'Mês';

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
        perAtu := perAtu + 'º ano'
      else
        perAtu := perAtu + 'º período';

      case fieldByName('pcu_turno').AsInteger of
        0: turEst := 'manhã';
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
      ctpest := fieldbyname('est_ctpsnum').asstring + ' Série:' + fieldbyname('est_ctpsserie').asstring;

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
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 1');
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
    datac := ''+d+' dia(s) do mês de '+me[strtoint(m)]+' de '+a+'';
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
    var1.Insert('ALTERAÇÃO DO TERMO DE COMPROMISSO DE ESTÁGIO');
    var1.Insert(#13+#13);

    Var1.JustifyPara;

    Var1.font('arial',12);
    Var1.Insert(#9 + 'Termo de Compromisso de Estágio de Complementação Educacional, sem vínculo empregatício, ');
    Var1.Insert('nos termos da Lei nº 6.494, de 07/12/77, regulamentada pelo Decreto nº 87.497, de 18/08/82 e Decreto nº 2.080, de 26/11/96, entre si fazem de um lado.');

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
    Var1.Insert('AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, e do outro, o (a) aluno (a) ');

    // estudante
    Var1.Insert(nomeEst + ', ');
    Var1.Insert('portador da Cédula de Identidade ' + rgEst + ', ');
    //Var1.Insert('expedida por ' + + ', ');
    Var1.Insert('e do CPF ' + cpfEst + ', ');
    Var1.Insert('regularmente matriculado(a) no ' + perAtu + ', ');
    Var1.Insert(curEst + ', ');
    Var1.Insert(turEst + ', da ');
    Var1.Bold;
    Var1.Insert('SOCIEDADE UNIVERSITÁRIA GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('mantenedora da ');
    Var1.Bold;
    Var1.Insert('UNIVERSIDADE GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('inscrita no CNPJ sob o nº 33.809.609/0001-65, ');
    Var1.Insert('Inscrição Municipal nº 00.904.309, acordam e estabelecem ');
    Var1.Insert('entre si as cláusulas que regerão este Termo de Compromisso de Estágio.');

    // Cláusulas
    Var1.Insert(#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA PRIMEIRA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('acima mencionado(a) por meio deste instrumento e nos termos da Lei nº 6.494, de 07/12/77, ');
    Var1.Insert('regulamentada pelo Decreto n.º 87.497, de 18/08/82, é concedido um estágio de complementação educacional na área de ensino de graduação.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA SEGUNDA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('terá a oportunidade de receber nas dependências da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('treinamento prático e aperfeiçoamento técnico-cultural, durante o horário de ' + dtc + ', ');
    Var1.Insert('com vigência de ' + DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' até '+FormatDateTime('dd/mm/yyyy',DataFim) +'. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA TERCEIRA:'+#13);
    Var1.Insert('O estágio não cria vínculo empregatício de qualquer natureza, e o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('poderá receber da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('durante o período de estágio uma bolsa, ou outra forma de contraprestação que ');
    Var1.Insert('venha a ser acordada, ressalvado o que dispuser a legislação previdenciária, conforme art. 4º da Lei nº 6.494/77.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA QUARTA:'+#13);
    Var1.Bold;
    Var1.Insert('O AGENTE DE INTEGRAÇÃO ');
    Var1.Bold;
    Var1.Insert('providenciará seguro para cobertura de acidentes pessoais em favor do(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('durante o período que o aluno(a) estiver nas suas dependências, informando o nome da Companhia Seguradora ');
    Var1.Insert('UNIBANCO AIG SEGUROS S/A. e o número da apólice 00000009, ');
    Var1.Insert('conforme art. 8º do Decreto nº 87.497/82, com nova redação dada pelo Decreto nº 2.080, de 26/11/96.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA QUINTA:'+#13);
    Var1.Insert('A jornada de atividade de estágio a ser cumprida pelo(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('deverá compatibilizar-se com o horário escolar e com o horário da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Parágrafo Único: ');
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Nos períodos de férias escolares, a jornada de estágio será estabelecida de comum acordo entre o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('e a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('sempre com a interveniência ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante Termo Aditivo. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA SEXTA:'+#13);
    Var1.Bold;
    Var1.Insert('O ESTAGIÁRIO(A) ');
    Var1.Bold;
    Var1.Insert('obrigará, mediante TCE - Termo de Compromisso de Estágio, a cumprir ');
    Var1.Insert('as condições fixadas para o estágio, bem como as normas de trabalho estabelecidas pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA SÉTIMA:'+#13);
    Var1.Insert('Constituem motivos para o cessação automática da vigência do presente Termo de Compromisso de Estágio, ');
    Var1.Insert('a conclusão, o abandono do curso ou trancamento da matrícula, bem como o não cumprimento das cláusulas do TCE. '+#13+#13+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA OITAVA:'+#13);
    Var1.Insert('O estágio objeto deste Termo de Compromisso, poderá, a qualquer momento, ser dado por concluído, tanto para o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGIÁRIO(A), ');
    Var1.Bold;
    Var1.Insert('para a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('e pela ');
    Var1.Bold;
    Var1.Insert('INSTITUIÇÃO DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante denúncia expressa de uma das partes à outra. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA NONA:'+#13);
    Var1.Bold;
    Var1.Insert('OS(AS) ESTAGIÁRIOS(AS) ');
    Var1.Bold;
    Var1.Insert('serão selecionados pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('de acordo com os parâmetros por ela estabelecidos, ');
    Var1.Insert('na área de interesse e aproveitados em atividades relacionadas com os respectivos cursos.' +#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA DÉCIMA:'+#13);
    Var1.Insert('O presente Termo de Compromisso de Estágio entrará em vigor na data de sua assinatura, por tempo determinado, ');
    Var1.Insert('conforme cláusula segunda, podendo ser alterado através de  Termos Aditivos, bem como rescindido, ');
    Var1.Insert('conforme estabelecido na  cláusula oitava. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CLÁUSULA DÉCIMA PRIMEIRA:'+#13);
    Var1.Insert('Fica eleito o Foro da Cidade do Rio de Janeiro para dirimir quaisquer ');
    Var1.Insert('dúvidas oriundas do presente Termo de Compromisso de Estágio.'+#13+#13);

    Var1.Insert(#9 + 'E por estarem as partes justas e acordadas, assinam o presente Termo ');
    Var1.Insert('de Compromisso de Estágio em 03 (três) vias de igual teor e forma, na presença de duas testemunhas abaixo. '+#13+#13);

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

    // Verifica se não tem TA
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

    var1.Insert('                                                        ALTERAÇÃO DO TERMO DE COMPROMISSO DE ESTÁGIO');
    var1.Insert(#13+'                                                                              E ACORDO DE COOPERAÇÃO');
    var1.Insert(#13+#13);
    var1.Insert('TCE Nº  '+edTceCod.Text);
    var1.Insert(#13+#13);
    var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paraná, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo re');
    var1.Insert('lacionados, firmam esta alteração do TERMO DE COMPROMISSO E ESTÁGIO Nº '+DmDta.quTceTCE_COD.Text+'. através ');
    var1.Insert('do agente de Integração CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, CNPJ n.º ');
    var1.Insert('02.217.643/0001-17, de acordo com a Lei nº 6.494/77 e do decreto nº 497/82.');
    var1.Insert(#13+#13);
    var1.Insert(#13+'INSTITUIÇÃO DE ENSINO');
    var1.Insert(#13+'Razão Social: '+nomeEsc);
    var1.Insert(#13+'Endereço: '+endesc);
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

    // verifica o código da escola, se não é UEM
    If Inst = '221' then
      var1.Insert(#13+'Orientador: '+OrientadorEst);

    var1.Insert(#13+#13);
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
    If Coren <> '' then
      var1.Insert(#13+'Nº do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'Nº do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'Nº do C.R.O.: '+CRO);
    If Inst = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a  INSTITUIÇÃO DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If Inst = '331' then
      Var1.Insert(#13+'Número de Matrícula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endereço: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Período/Ano: '+peratu);
    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, através do Agente de Integração CETEFE - CENTRO DE TREINAMENTO E FORMACÃO DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE ESTÁGIO, de acordo com a Lei n° 6.494/77 complementada pela Lei nº 8.859/94, pela Lei 8.666/93 e pelo Decreto n° 87.497/82, ');
    var1.Insert('complementado pelo Decreto nº 2.080/96, sob as seguintes condições:');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 1ª - O Termo de compromisso de Estágio não caracteriza a vinculação empregatícia ');
    var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
    var1.Insert('plementação de aprendizagem através de treinamento prático, integração social e ');
    var1.Insert('desenvolvimento pessoal do Estagiário.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 2ª - Este Termo de Compromisso de Estágio terá vigência de '+DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' até '+FormatDateTime('dd/mm/yyyy',DataFim)+', ');
    var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes, mediante comunica');
    var1.Insert('ção prévia ou podendo ser prorrogado através de Termo Aditivo.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 3ª - As atividades de estágio se farão das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada deverá ser compatível com o horário escolar ');
    var1.Insert('do Estudante, sendo que durante as férias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poderá ser estabelecida entre as partes.');
    If Inst = '200' then // UTFPR
      Var1.Insert('A jornada de atividade em estágio deverá compatibilizar-se com o horário escolar do estagiário e com o horário da Unidade Concedente. ');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 4ª - As atividades desenvolvidas deverão ser compatíveis com o Contexto Básico da ');
    var1.Insert('Profissão do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('§ Único - As atividades poderão ser ampliadas, reduzidas, alteradas, substituídas de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    If Inst = '221' then
    begin
      var1.Insert(#13+#13+#13+'Área de Estágio: '+AreaEst);
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
      var1.Insert('CLÁUSULA 5ª - A Unidade Concedente remunerará em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a título de bolsa-auxílio, quantia esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CLÁUSULA 5ª - A Unidade Concedente remunerará em R$ ________ (SEM REMUNERAÇÃO) ');
      var1.Insert('o Estudante, a título de bolsa-auxílio, quantia esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao  vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('§ 1º - A obrigação de pagamento da bolsa-auxílio é de responsabilidade única e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e deverá ser efetuado através de depósito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obrigação  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caberá ao CETEFE repassar o valor da bolsa-auxílio.');
    var1.Insert(#13+#13);
    var1.Insert('§ 2º - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-auxílio diretamente aos estagiários, ficará ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe cópias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Estágio estipulado, através de boleto bancário a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 6ª - O estagiário deverá cumprir o Programa de Estágio, bem como cumprir  as  normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    If Inst <> '331' then
    begin
      var1.Insert('CLÁUSULA 7ª - Sempre que necessário, o estagiário deverá  fornecer informações para o acompa');
      var1.Insert('nhamento e supervisão do Programa de Estágio, dentro do prazo estipulado.');
    end
    else
    begin
      var1.Insert('CLÁUSULA 7ª - Sempre que necessário, o estagiário deverá fornecer informações à Instituição de Ensino e ao ');
      var1.Insert('CETEFE para o acompanhamento e supervisão do Programa de Estágio, dentro do prazo estipulado.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 8ª - Na eventual conclusão, abandono ou trancamento do curso, bem como no não cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Estágio, haverá ');
    var1.Insert('a interrupção automática do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 9ª - Fica o CETEFE como centralizador do processo de estágio entre a Unidade Conce');
    var1.Insert('dente, Instituição de Ensino e o Estudante. Quaisquer alterações que se façam ');
    var1.Insert('necessárias neste Termo de Compromisso de Estágio, o CETEFE deverá ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 10ª - Na vigência do presente Termo, o estagiário estará incluído na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado através da apólice nº 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE.');

    If Inst = '331' then
    begin
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('E, Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em 5 (cinco) ');
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
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else If Inst = '200' then
    begin
      Var1.Insert(#13+#13);
      var1.Insert('CLÁUSULA 11ª - O presente estágio não acarretará vínculo empregatício de qualquer natureza, entre o estagiário e a Unidade ');
      var1.Insert('Concedente, nos termos do que dispõe o artigo quarto da Lei n.º 6.494/77 e o artigo 82 da Lei n.º 9.934/96 e o artigo sexto do Decreto-Lei n.º 87.497/82'+#13+#13);
      Var1.Insert('CLÁUSULA 12ª - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANÁ dará publicidade a este Termo, em consonância com preceitos legais vigentes.' + #13+#13);
      var1.Insert('CLÁUSULA 13ª - Fica eleito o Foro Federal da Cidade de Curitiba para dirimir quaisquer dúvidas ou questões jurídicas ');
      var1.Insert('que se originarem na execução deste Termo.' + #13 + #13);
      Var1.Insert('CLÁUSULA 14ª - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANÁ, em razão do interesse público, ficando o ');
      var1.Insert('estagiário impossibilitado de desenvolver suas atividades nesta empresa. ');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Estágio  em  4 (quatro) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                                Representante do CETEFE          ');
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
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                 Diretor de Curso da INSTITUIÇÃO DE ENSINO');
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
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'        Representante da INSTITUIÇÃO DE ENSINO                                          Coordenador de Curso');
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
        var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Estágio  em  4 (quatro) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________            ________________________________________ ');
        var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                                Representante do CETEFE          ');
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
    // Verifica se não tem TA
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

    var1.Insert('                                                        ALTERAÇÃO DO TERMO DE COMPROMISSO DE ESTÁGIO');
    var1.Insert(#13+'                                                                              E ACORDO DE COOPERAÇÃO');
    var1.Insert(#13+#13);
    var1.Insert('TCE Nº  '+edTceCod.Text);
    var1.Insert(#13+#13);
    var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paraná, a UNIDADE CONCEDENTE e o ESTUDANTE, abaixo re');
    var1.Insert('lacionados, firmam esta alteração do TERMO DE COMPROMISSO E ESTÁGIO Nº '+DmDta.quTceTCE_COD.Text+'. através ');
    var1.Insert('do agente de Integração CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, CNPJ n.º ');
    var1.Insert('02.217.643/0001-17, de acordo com a Lei nº 6.494/77 e do decreto nº 497/82.');
    var1.Insert(#13+#13);
    var1.Insert(#13+'INSTITUIÇÃO DE ENSINO');
    var1.Insert(#13+'Razão Social: '+nomeEsc);
    var1.Insert(#13+'Endereço: '+endesc);
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
      var1.Insert(#13+'Cargo: PRÓ-REITOR(A) DE ENSINO');
      var1.Insert(#13+'Orientador: '+CoordEsc);
    end;

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
    If Coren <> '' then
      var1.Insert(#13+'Nº do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'Nº do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'Nº do C.R.O.: '+CRO);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a  INSTITUIÇÃO DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    Var1.Insert(#13+'Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endereço: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Período/Ano: '+peratu);
    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, através do Agente de Integração CETEFE - CENTRO DE TREINAMENTO E FORMACÃO DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE ESTÁGIO, de acordo com a Lei n° 6.494/77 complementada pela Lei nº 8.859/94, pela Lei 8.666/93 e pelo Decreto n° 87.497/82, ');
    var1.Insert('complementado pelo Decreto nº 2.080/96, sob as seguintes condições:');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 1ª - O Termo de compromisso de Estágio não caracteriza a vinculação empregatícia ');
    var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
    var1.Insert('plementação de aprendizagem através de treinamento prático, integração social e ');
    var1.Insert('desenvolvimento pessoal do Estagiário.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 2ª - Este Termo de Compromisso de Estágio terá vigência de ' + DmDta.quTceAlteracao.FieldByName('tal_vigencia').Text + ' até ' + FormatDateTime('dd/mm/yyyy',DataFim)+', ');
    var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes, mediante comunicação ');
    var1.Insert('prévia ou podendo ser prorrogado através de Termo Aditivo.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 3ª - As atividades de estágio se farão das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada deverá ser compatível com o horário escolar ');
    var1.Insert('do Estudante, sendo que durante as férias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poderá ser estabelecida entre as partes.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 4ª - As atividades desenvolvidas deverão ser compatíveis com o Contexto Básico da ');
    var1.Insert('Profissão do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('§ Único - As atividades poderão ser ampliadas, reduzidas, alteradas, substituídas de acordo ');
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
      var1.Insert('CLÁUSULA 5ª - A Unidade Concedente remunerará em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a título de bolsa-auxílio, quantia esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CLÁUSULA 5ª - A Unidade Concedente remunerará em R$ ________ (SEM REMUNERAÇÃO) ');
      var1.Insert('o Estudante, a título de bolsa-auxílio, quantia esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('§ 1° - A obrigação de pagamento da bolsa-auxílio é de responsabilidade única e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e deverá ser efetuado através de depósito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerará cumprida essa  obrigação  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caberá ao CETEFE repassar o valor da bolsa-auxílio.');
    var1.Insert(#13+#13);
    var1.Insert('§ 2° - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-auxílio diretamente aos estagiários, ficará ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe cópias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Estágio estipulado, através de boleto bancário a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 6ª - O estagiário deverá cumprir o Programa de Estágio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 7ª - Sempre que necessário, o estagiário deverá fornecer informações à Instituição de Ensino e ao ');
    var1.Insert('CETEFE para o acompanhamento e supervisão do Programa de Estágio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 8ª - Na eventual conclusão, abandono ou trancamento do curso, bem como no não cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Estágio, haverá ');
    var1.Insert('a interrupção automática do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 9ª - Fica o CETEFE como centralizador do processo de estágio entre a Unidade Conce');
    var1.Insert('dente, Instituição de Ensino e o Estudante. Quaisquer alterações que se façam ');
    var1.Insert('necessárias neste Termo de Compromisso de Estágio, o CETEFE deverá ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 10ª - Na vigência do presente Termo, o estagiário estará incluído na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado através da apólice nº 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE.');

    var1.Insert(#13+#13+#13+#13);
    if Inst = '221' then
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
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Estágio em ');
      If (CurCod = '14') or (CurCod = '15') then
        var1.Insert('6 (seis) ')
      else
        var1.Insert('4 (quatro) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'         Representante da INSTITUIÇÃO DE ENSINO                          Coordenador de Curso na INSTITUIÇÃO DE ENSINO ');
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
    // Verifica se não tem TA
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
    var1.Insert('ALTERAÇÃO DO TERMO DE COMPROMISSO DE ESTÁGIO');
    var1.Insert(#13+'E ACORDO DE COOPERAÇÃO');
    var1.Insert(#13+#13);
    Var1.JustifyPara;
    var1.Insert('TCE Nº   '+DmDta.quTceTCE_COD.Text);
    var1.Insert(#13+#13+#13);
    var1.Insert(' Ao(s) '+datac+', na cidade de Curitiba, Paraná, a INSTITUIÇÃO DE ');
    var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, através de seus repre');
    var1.Insert('sentantes celebram entre si o ACORDO DE COOPERAÇÃO que ');
    Var1.Insert('vigorará no período entre ' + meTceVig.Text);
    Var1.Insert(' e ' + FormatDateTime('dd/mm/yyyy',DataFim) + ', podendo ser prorrogado através de termo aditivo, bem como denunciado a ');
    Var1.Insert('qualquer momento entre as partes, mediante comunicado por escrito e 30 (trinta) dias antecedentes, ');
    Var1.Insert('independendo de qualquer notificação ou interpelação judicial. O presente ACORDO DE COOPERAÇÃO ');
    var1.Insert('tem por objetivo formalizar  as condições básicas para a realização de Estágio do estudante da Instituição ');
    var1.Insert('de Ensino junto à Unidade Concedente.');
    var1.Insert(#13);
    var1.Insert(#13+'INSTITUIÇÃO DE ENSINO');
    var1.Insert(#13+'Razão Social: '+nomeEsc);
    var1.Insert(#13+'Endereço: '+endesc);
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
    // verifica o código da escola, se não é UEM
    If Inst = '221' then
      var1.Insert(#13+'Orientador: '+OrientadorEst);

    var1.Insert(#13+#13);
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
    If Coren <> '' then
      var1.Insert(#13+'Nº do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'Nº do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'Nº do C.R.O.: '+CRO);
    If Inst = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUIÇÃO DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If Inst = '331' then
      Var1.Insert(#13+'Número de Matrícula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endereço: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Período/Ano: '+peratu);

    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, através do Agente de Integração CETEFE - CENTRO DE TREINAMENTO E FORMACÃO DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE ESTÁGIO, de acordo com a Lei n° 6.494/77 complementada pela Lei nº 8.859/94, pela Lei 8.666/93 e pelo Decreto n° 87.497/82, ');
    var1.Insert('complementado pelo Decreto nº 2.080/96, sob as seguintes condições:');
    var1.Insert(#13+#13);

    //// começa aqui as cláusulas

    var1.Insert('CLÁUSULA 1ª - Caberá ao CETEFE, como Agente de Integração: ');
    var1.Insert(#13+#13);
    var1.Insert('I) Celebrar e manter Convênio de Cooperação com as Unidades Concedentes;'+#13);
    var1.Insert('II) Cadastrar, convocar e selecionar os estudantes, encaminhando-os às Unidades Concedentes, de acordo com a necessidade da mesma;'+#13);
    var1.Insert('III) Captar oportunidade de Estágio junto às Unidades Concedentes, compatibilizando as atividades de Estágio e o horário de estágio com o curso do Estagiário;'+#13);
    var1.Insert('IV) Desenvolver atividades de treinamento dos estagiários, bem como oferecer cursos, palestras, seminários e outras atividades que venham a ');
    var1.Insert('complementar o aprendizado e facilitar o desenvolvimento do Programa de Estágio;'+#13);
    var1.Insert('V) Realizar interação entre as Unidades Concedentes e a Instituição de Ensino, visando à assinatura do instrumento jurídico previsto no Art. 5º do Decreto nº 87.497/82;'+#13);
    var1.Insert('VI) Providenciar a assinatura do Termo de Compromisso de Estágio, entre a Unidade Concedente, o Estudante e a respectiva Instituição de Ensino, de acordo com ');
    var1.Insert('o § 1º, do Art.6º do Decreto nº 87.497/82;'+#13);
    var1.Insert('VII) Acompanhar o estudante em toda a duração do Programa de Estágio, através de relatórios e visitas regulares, tanto ao estudante como ao (s) supervisores ');
    var1.Insert('(es) de estágio do mesmo;'+#13);
    var1.Insert('VIII) Providenciar toda a documentação necessária para a efetivação do estágio;'+#13);
    var1.Insert('IX) Providenciar a contratação de Seguros Contra Acidentes Pessoais em favor dos Estagiários, assumindo os custos correspondentes.'+#13+#13+#13);

    var1.Insert('CLÁUSULA 2ª - Caberá à UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA - CAMPUS CURITIBA, como Instituição de Ensino:'+#13+#13);
    Var1.Insert('I) Comunicar ao CETEFE, sempre que necessário, desistências, trancamento de matricula, conclusão de curso, bem como outras informações úteis ao ');
    Var1.Insert('processo de manutenção do Programa de Estágio.'+#13);
    Var1.Insert('II) Comunicar ao CETEFE detalhes sobre o desempenho do estudante sempre que se fizer necessário;'+#13);
    Var1.Insert('III) Informar ao CETEFE a relação de todos os cursos que mantém, bem como as condições mínimas exigidas para realização de estágio em cada curso;'+#13);
    Var1.Insert('IV) Assinar o Termo de compromisso de Estágio, que se for necessário para celebração  do estágio entre o estudante e a Unidade Concedente.'+#13+#13+#13);

    var1.Insert('CLÁUSULA 3ª - Caberá à Unidade Concedente (Empresa):'+#13+#13);
    Var1.Insert('I) Informar ao CETEFE as vagas disponíveis, identificando a área em que existem vagas, bem como das condições de realização de estágio;'+#13);
    Var1.Insert('II) Manter centralizadas as informações sobre o estágio, indicando o responsável para tratar das questões relativas ao Programa de Estágio;'+#13);
    Var1.Insert('III) Comunicar ao CETEFE os nomes dos estudantes que irão realizar estágio;'+#13);
    Var1.Insert('IV) Comunicar ao CETEFE detalhes sobre o desempenho do estagiário sempre que se fizer necessário;'+#13);
    Var1.Insert('V) Celebrar com a Instituição de Ensino, o Estudante e o Agente de Integração o Termo de Compromisso de Estágio, de acordo com o § 1º, do Art. 6º, ');
    Var1.Insert('do Decreto nº 87.497/82;'+#13);
    Var1.Insert('VI) Informar ao CETEFE a Interrupção, conclusão ou eventuais modificações do estágio, bem como outras informações de interesse ao desenvolvimento do Programa de Estágio;'+#13);
    Var1.Insert('VII) Fixar a jornada de atividade do estágio compatibilizando o horário escolar do estudante com o horário de trabalho da Unidade Concedente;'+#13);
    Var1.Insert('VIII) Efetuar o pagamento da bolsa-auxílio, quando houver, em plena conformidade com o disposto neste instrumento emitindo e enviando cópia do recibo ao CETEFE; ou'+#13);
    Var1.Insert('VIII) Repassar ao CETEFE a valor correspondente à bolsa-auxílio, quando houver, ficando este responsável pelo repasse ao estagiário.'+#13);
    Var1.Insert('IX) Compete exclusivamente às Unidades Concedentes disponibilizar, mensalmente, a quantia acordada neste instrumento ao estagiário seja qual for a modalidade ');
    Var1.Insert('de pagamento, isentando o CETEFE e a Instituição de Ensino ora mencionada de quaisquer responsabilidades sobre o pagamento do estagiário, ficando, ');
    Var1.Insert('aquele responsável tão somente pelo repasse quando estipulado contratualmente.'+#13+#13+#13);

    Var1.Insert('CLÁUSULA 4ª - O Termo de compromisso de Estágio não caracteriza a vinculação empregatícia entre o estudante e a Unidade Concedente. ');
    Var1.Insert('O presente Termo visa assegurar a complementação de aprendizagem através de treinamento prático, integração social e desenvolvimento pessoal do Estagiário.'+#13+#13);

    Var1.Insert('CLÁUSULA 5ª - Este Termo de Compromisso de Estágio terá vigência de ' + meTceVig.Text + ' até ' + FormatDateTime('dd/mm/yyyy',DataFim));
    Var1.Insert(', podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado através de Termo Aditivo.'+#13+#13);

    Var1.Insert('CLÁUSULA 6ª - As atividades de estágio se farão das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada deverá ser compatível com o horário escolar ');
    var1.Insert('do Estudante, sendo que durante as férias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poderá ser estabelecida entre as partes. A jornada de atividade em estágio deverá compatibilizar-se com o ');
    Var1.Insert('horário escolar do estagiário e com o horário da Unidade Concedente. ');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 7ª - As atividades desenvolvidas deverão ser compatíveis com o Contexto Básico da ');
    var1.Insert('Profissão do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('§ Único - As atividades poderão ser ampliadas, reduzidas, alteradas, substituídas de acordo ');
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
      var1.Insert('CLÁUSULA 8ª - A Unidade Concedente remunerará em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a título de bolsa-auxílio, quantia esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CLÁUSULA 8ª - A Unidade Concedente remunerará em R$ ________ (SEM REMUNERAÇÃO) ');
      var1.Insert('o Estudante, a título de bolsa-auxílio, quantia  esta que será ');
      var1.Insert('paga a partir do mês subseqüente ao vencimento, mediante a apresentação de ');
      var1.Insert('comprovante. O valor estabelecido poderá variar segundo a sua freqüência mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('§ 1° - A obrigação de pagamento da bolsa-auxílio é de responsabilidade única e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e deverá ser efetuado através de depósito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerará cumprida essa obrigação por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caberá ao CETEFE repassar o valor da bolsa-auxílio.');
    var1.Insert(#13+#13);
    var1.Insert('§ 2° - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-auxílio diretamente aos estagiários, ficará ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe cópias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Estágio estipulado, através de boleto bancário a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 9ª - O estagiário deverá cumprir o Programa de Estágio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 10ª - Sempre que necessário, o estagiário deverá  fornecer informações para o acompa');
    var1.Insert('nhamento e supervisão do Programa de Estágio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 11ª - Na eventual conclusão, abandono ou trancamento do curso, bem como no não cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Estágio, haverá ');
    var1.Insert('a interrupção automática do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 12ª - Fica o CETEFE como centralizador do processo de estágio entre a  Unidade Conce');
    var1.Insert('dente, Instituição de Ensino e o Estudante. Quaisquer alterações que se façam ');
    var1.Insert('necessárias neste Termo de Compromisso de Estágio, o CETEFE deverá ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 13ª - Na vigência do presente Termo, o estagiário estará incluído na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado através da apólice nº 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE. ');

    Var1.Insert(#13+#13);
    var1.Insert('CLÁUSULA 14ª - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANÁ dará publicidade a este Termo, em consonância com preceitos legais vigentes.' + #13+#13);
    var1.Insert('CLÁUSULA 15ª - Fica eleito o Foro da Justiça Federal, Seção Judiciária de Curitiba para dirimir quaisquer dúvidas ou questões jurídicas ');
    var1.Insert('que se originarem na execução deste Termo.' + #13 + #13);
    Var1.Insert('CLÁUSULA 16ª - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANÁ, em razão do interesse público, ficando o ');
    var1.Insert('estagiário impossibilitado de desenvolver suas atividades nesta empresa. '+#13+#13);

    var1.Insert(#13+#13+#13);
    var1.Insert('E, por assim estarem de acordo, assinam este instrumento em 4 (quatro) vias de igual teor:');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('                                                ________________________________________            ________________________________________');
    var1.Insert(#13+'                                                     Representante da INSTITUIÇÃO DE ENSINO                                Representante do CETEFE');
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


  // Número de matricula
  If Inst = '749' then
  begin
    ImprimeGama;
  end
  else If Inst = '331' then
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
    else If Inst = '200' then
      imprimeUTFPR
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
    else If Inst = '200' then
      imprimeUTFPR
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
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'EDUCAÇÃO FÍSICA';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Educação Física', 'Nº do C.R.E.F.', CREF);
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
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    FormSuperEst := 'ASSISTENTE SOCIAL';
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Serviço Social', 'Nº do Conselho', Conselho);
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
  else If (Pos('JORNALISMO', curEst) > 0) {estagiários de jornalismo } then
  begin
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
    FormSuperEst := AnsiUpperCase(FormSuperEst);
    InputQuery('Jornalismo', 'Nº do C.R.J.', CRJ);
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
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
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
    InputQuery('Supervisor', 'Supervisor de Estágio', SuperEst);
    SuperEst := AnsiUpperCase(SuperEst);
    If (Inst <> '190') then
    begin
      InputQuery('Supervisor', 'Formação do Supervisor de Estágio', FormSuperEst);
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

    // recalcula o horário
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
    // chama rotina que faz o recálculo das horas
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
