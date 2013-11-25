unit TPOSEMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DateUtils,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls, tpocst;

type
  TFORSEMP = class(TForm)
    Bevel1: TBevel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    edTotEst: TEdit;
    edTotResc: TEdit;
    Label4: TLabel;
    btExportar: TSpeedButton;
    cbVestibular: TComboBox;
    Label5: TLabel;
    edCurCod: TEdit;
    edCurNome: TEdit;
    Label6: TLabel;
    cbNivel: TComboBox;
    cbArea: TComboBox;
    cbMenores: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbPeriodo: TComboBox;
    btLimpar: TSpeedButton;
    chkLiberados: TCheckBox;
    EdGrupoCod: TEdit;
    EdGrupoNome: TEdit;
    Label10: TLabel;
    Button1: TButton;
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
    procedure edMesExit(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure cbVestibularChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCurCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCurCodDblClick(Sender: TObject);
    procedure edCurCodExit(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure edAnoEnter(Sender: TObject);
    procedure EdGrupoCodDblClick(Sender: TObject);
    procedure EdGrupoCodExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;

  public
    { Public declarations }
    BB: Boolean;
    Menores: Boolean;
    Medio: Boolean;
    nova: integer;
  end;

var
  FORSEMP: TFORSEMP;

implementation

uses TPOEMP, TPODTA, TPOFNC, TPOREmp, TPOREmp4, QRExport, QRExtra, TPorEMP5,
  TPOCUR, TPOSELEMP, TPOGRUPO;

{$R *.DFM}

procedure TFORSEMP.FormShow(Sender: TObject);
begin

  nova := 0;
  with DmDta.quEstEmp do
  begin
    Close;
    Sql.Clear;

    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, EF.efu_nome emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, 0 Situacao, ');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel,');
    Sql.Add(' (select top 1 tal_dataemi from tcealteracao where tce_cod = t.tce_cod order by tal_cod desc ) DTAlteracao ');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, EmpFuncionario EF, Curso C');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  m.emp_cod = ef.emp_cod and');
    Sql.Add('  m.emp_respcomp = ef.func_cod and');
    Sql.Add('  e.cur_cod = c.cur_cod and');
    Sql.Add('  t.emp_cod = -1');

    Open;
    edTotEst.Text := '0';
    edTotResc.Text := '0';

    if not BB then
    begin
      FieldByName('CpfFormatado').Visible := False;
      FieldByName('est_cidade').Visible := False;
      FieldByName('tce_dataini').Visible := True;
      FieldByName('tce_datafim').Visible := True;
      FieldByName('tpr_dataini').Visible := True;
      FieldByName('tpr_datafim').Visible := True;
    end
    else
    begin
      FieldByName('CpfFormatado').Visible := True;
      FieldByName('est_cidade').Visible := True;
      FieldByName('tce_dataini').Visible := False;
      FieldByName('tce_datafim').Visible := False;
      FieldByName('tpr_dataini').Visible := False;
      FieldByName('tpr_datafim').Visible := False;
    end;
  end;
  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  cbVestibular.ItemIndex := 2;
  edEmpCod.setfocus;
end;

procedure TFORSEMP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORSEMP.btImprimirClick(Sender: TObject);
begin
  if (edEmpCod.Text = '') and (DmDTA.quEstEmp.Active = false) then
  begin
    MSGERRO('Empresa não informada!');
    edEmpCod.SetFocus;
  end
  else
  begin
    if BB then
    begin
      Screen.Cursor := crHourGlass;
      QREmp4 := TQREmp4.Create(Application);
      case cbVestibular.ItemIndex of
        0: QREmp4.QRTitulo.Caption := QREmp4.QRTitulo.Caption + ' - Vestib. Verão';
        1: QREmp4.QRTitulo.Caption := QREmp4.QRTitulo.Caption + ' - Vestib. Inverno';
      end;
      QREmp4.Mes := 'Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text;
      Screen.Cursor := crDefault;
      QREmp4.Preview;
      QREmp4.Free;
    end
    else if Medio then
    begin
      Screen.Cursor := crHourGlass;
      Qremp5 := TQremp5.Create(Application);
      case cbVestibular.ItemIndex of
        0: Qremp5.QRTitulo.Caption := Qremp5.QRTitulo.Caption + ' - Vestib. Verão';
        1: Qremp5.QRTitulo.Caption := Qremp5.QRTitulo.Caption + ' - Vestib. Inverno';
      end;
      Qremp5.Mes := 'Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text;
      Screen.Cursor := crDefault;
      Qremp5.Preview;
      Qremp5.Free;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      QREmp := TQREmp.Create(Application);
      case cbVestibular.ItemIndex of
        0: QREmp.QRTitulo.Caption := QREmp.QRTitulo.Caption + ' - Vestib. Verão';
        1: QREmp.QRTitulo.Caption := QREmp.QRTitulo.Caption + ' - Vestib. Inverno';
      end;
      QREmp.Mes := 'Mês: ' + PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text;
      Screen.Cursor := crDefault;
      QREmp.Preview;
      QREmp.Free;
    end;
  end;
end;

procedure TFORSEMP.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMP.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNExt(ActiveControl, True, True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSEMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quEstEmp.Close;
  Action := caFree;
end;

procedure TFORSEMP.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text))
  else
    edEmpNome.Text := '';
  AbreQuery;
end;

procedure TFORSEMP.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F2: edEmpCodDblClick(Sender);
  end;
end;

procedure TFORSEMP.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORSEMP.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if not ValidaMes(edMes.Text) then
    begin
      edMes.SetFocus;
      Exit;
    end
    else
    begin
      edMes.Text := FormatFloat('00', StrToFloat(edMes.Text));
      AbreQuery;
    end;
  end;
end;

procedure TFORSEMP.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
  end
  else if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
    AbreQuery;
end;

procedure TFORSEMP.AbreQuery;
var
  data1, data2: string;
  empresa, Funcionario, totTotal, TotResc: Integer;
  dtNasc: string;
  Ano, Mes, Dia: Word;
  txtEmpresa, txtFuncionario: string;

  function IncluiTipoEstagiario(): string;
  var
    Retorno: string;
  begin
    case cbVestibular.ItemIndex of
      0: Retorno := 'And e.pcu_vestib = ''0''';
      1: Retorno := 'And e.pcu_vestib = ''1''';
    else
      Retorno := '';
    end;
    Result := Retorno;
  end;

  function IncluiNivel(): string;
  begin
    if cbNivel.text <> '' then
      Result := '  and c.cur_nivel = ''' + cbNivel.Text + '''';
  end;

  function IncluiArea(): string;
  begin
    if cbArea.text <> '' then
      Result := '  and c.cur_area = ''' + cbArea.Text + '''';
  end;

  function IncluiCurso(): string;
  begin
    if edCurCod.text <> '' then
      Result := '  and c.cur_cod = ' + edCurCod.Text;
  end;

  function IncluiMenores(): string;
  begin
    if cbMenores.Checked then
    begin
      Result := '  and e.est_dtnasc > ''' + dtNasc + '''';
    end;
  end;

  function IncluiPeriodo(): string;
  begin
    if cbPeriodo.Text <> '' then
    begin
      case cbPeriodo.ItemIndex of
        0: // manhã
          Result := '  and t.tce_horariofim1 < ''15:00:00'' and t.tce_horariofim2 is null';

        1: // tarde
          Result := '  and t.tce_horarioini1 between ''11:00:00'' and ''18:00:00''';

        2: // noite
          Result := '  and t.tce_horarioini1 > ''17:00:00''';

        3: // integral
          Result := '  and t.tce_horariofim1 < ''13:00:00'' and t.tce_horariofim2 is not null';

      end;
    end;
  end;
begin
  DmDta.quEstEmpEmp_nome.Visible := false;
  if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
  begin
    DecodeDate(Date, Ano, Mes, Dia);
    dtNasc := Strzero(Dia, 2) + '/' + Strzero(Mes, 2) + '/' + IntToStr(Ano - 18);
    totTotal := 0;
    totResc := 0;
    data1 := '01/' + edMes.Text + '/' + edAno.Text;
    data2 := IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
      StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;
    empresa := strtoint(edempcod.text);
    funcionario := 0;
    dmdta.PegaResponsavel(1, empresa, funcionario);

    with DmDta.quEstEmp do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
      Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add('  ,(select max(tal_dataemi) from tcealteracao where tce_cod = t.tce_cod ) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
     // Sql.Add('  e.inst_cod = i.inst_cod and');
     // Sql.Add('  e.cur_cod  = c.cur_cod and');
     // Sql.Add('  t.est_cod = e.est_cod and');
     // Sql.Add('  t.emp_cod = m.emp_cod and');
     // Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
     // Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
     // Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
     // Sql.Add('  t.tce_situacao = ''0'' and');
     // Sql.Add('  t.tce_dataini <= :data2 and');
     // Sql.Add('  t.tce_datafim >= :data1');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.emp_cod = ' + edempCod.Text + ' and');
      Sql.Add('  t.tce_situacao = ''0'' and');
      Sql.Add('  e.cur_cod = c.cur_cod and');
      Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datafim >= :data1');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, a.prg_cod Situacao, ');
      Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, EmpFuncionario EF');
      Sql.Add('where');
      //Sql.Add('  e.inst_cod = i.inst_cod and');
      //Sql.Add('  e.cur_cod  = c.cur_cod and');
      //Sql.Add('  t.tce_cod = a.tce_cod and');
      //Sql.Add('  t.est_cod = e.est_cod and');
      //Sql.Add('  t.emp_cod = m.emp_cod and');
      //Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      //Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      //Sql.Add('  m.emp_cod = ' + edEmpCod.Text + ' and');
      //Sql.Add('  t.tce_situacao <> ''7'' and');
      //Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
      //Sql.Add('  t.tce_situacao <> ''0'' and');
      //Sql.Add('  t.tce_dataini <= :data2 and');
      //Sql.Add('  a.tpr_datafim >= :data1');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  e.cur_cod = c.cur_cod and');
      Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      Sql.Add('  t.emp_cod = ' + edempCod.Text + ' and');
      Sql.Add('  t.tce_situacao <> ''7'' and');
      Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
      Sql.Add('  t.tce_situacao <> ''0'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  a.tpr_datafim >= :data1');

      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
      Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
      //Sql.Add('  e.inst_cod = i.inst_cod and');
      //Sql.Add('  e.cur_cod  = c.cur_cod and');
      //Sql.Add('  t.est_cod = e.est_cod and');
      //Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      //Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      //Sql.Add('  t.emp_cod = m.emp_cod and');
      //Sql.Add('  t.tce_situacao = ''7'' and');
      //Sql.Add('  m.emp_cod = ' + edEmpCod.Text + ' and');
      //Sql.Add('  t.tce_dataini <= :data2 and');
      //Sql.Add('  t.tce_datares >= :data1');
      //Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and tpr_dataini <= :data2)');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  e.cur_cod = c.cur_cod and');
      Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      Sql.Add('  t.emp_cod = ' + edempCod.Text + ' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1');
      Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and ');
      Sql.Add('  tpr_dataini <= :data2)');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, max(a.prg_cod) Situacao, ');
      Sql.Add('  max(a.tce_cod), t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  max(a.tpr_dataini), max(a.tpr_datafim), e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
      //Sql.Add('  e.inst_cod = i.inst_cod and');
      //Sql.Add('  e.cur_cod  = c.cur_cod and');
      //Sql.Add('  t.tce_cod = a.tce_cod and');
      //Sql.Add('  t.est_cod = e.est_cod and');
      //Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      //Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      //Sql.Add('  m.emp_respcomp = ef.func_cod and');
      //Sql.Add('  m.emp_cod = ' + edEmpCod.Text + ' and');
      //Sql.Add('  t.tce_situacao =''7'' and');
      //Sql.Add('  a.tpr_dataini <= :data2 and');
      //Sql.Add('  t.tce_datares >= :data1');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  e.cur_cod = c.cur_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  t.emp_cod = ' + edempCod.text + ' and');
   // Sql.Add('  m.emp_cod = f.emp_cod and');
   // Sql.Add('  m.emp_respcomp = f.func_cod and');
      Sql.Add('  ' + inttostr(empresa) + ' = ef.emp_cod and');
      Sql.Add('  ' + inttostr(funcionario) + ' = ef.func_cod and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1');

      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add('group by');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome,');
      sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, t.tce_dataini, t.tce_datafim, t.tce_situacao, ');
      Sql.Add('  t.tce_datares, e.est_pgtolib, i.inst_nivel');
      Sql.Add('order by');
      Sql.Add(' e.est_nome');
      ParamByName('data1').AsDateTime := StrToDate(data1);
      ParamByName('data2').AsDateTime := StrToDate(data2);
      Open;

      DisableControls;
      First;
      while not Eof do
      begin
        if not FieldByName('tce_datares').IsNull then
        begin
          if FieldByName('tce_datares').AsDateTime < Date then
            TotResc := totResc + 1
          else
            TotTotal := totTotal + 1;
        end
        else
          TotTotal := totTotal + 1;
        Next;
      end;
      First;
      EnableControls;
      edTotEst.Text := IntToStr(TotTotal);
      edTotResc.Text := IntToStr(TotResc);
    end;
  end
  else
    if (edAno.Text <> '') and (edMes.Text <> '') and (edGrupoCod.Text = '') then
    begin
      DecodeDate(Date, Ano, Mes, Dia);
      dtNasc := IntToStr(Mes) + '/' + IntToStr(Dia) + '/' + IntToStr(Ano - 18);
      totTotal := 0;
      totResc := 0;
      data1 := '01/' + edMes.Text + '/' + edAno.Text;

      data2 := IntToStr(RetornaDiasMes(StrToInt(edMes.Text), StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;

      txtEmpresa := ' (SELECT TOP 1 emp_cod from (SELECT top 1 EMP_COD FROM EMPRESPONSAVEL WHERE  inativo = ''N'' and EMP_COD = t.emp_cod  AND FUN_COD = 1  UNION all ' +
        ' SELECT top 1 EMP_COD FROM EMPRESPONSAVEL WHERE inativo = ''N'' and EMP_COD IN (SELECT top 1 EMP_COD FROM EMPFUNCGRUPO WHERE EMP_COD2= t.emp_cod ) AND FUN_COD = 1) EMPRESA  )';
      txtfuncionario := ' (select  top 1 func_cod from  (SELECT  top 1 func_COD FROM EMPRESPONSAVEL WHERE inativo = ''N''  and EMP_COD =t.emp_cod  AND FUN_COD = 1 UNION  all ' +
        ' SELECT top 1 func_COD FROM EMPRESPONSAVEL WHERE  inativo = ''N'' and EMP_COD in   (SELECT top 1  EMP_COD FROM EMPFUNCGRUPO WHERE EMP_COD2= t.emp_cod ) AND FUN_COD = 1) funcionario )';

      with DmDta.quEstEmp do
      begin
        Sql.Clear;
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
        Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add('  ,(select max(tal_dataemi) from tcealteracao where tce_cod = t.tce_cod  ) as DTAlteracao ');
        Sql.Add('from');
        Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
        Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
        Sql.Add('  t.tce_situacao = ''0'' and');
        Sql.Add('  t.tce_dataini <= :data2 and');
        Sql.Add('  t.tce_datafim >= :data1');
        if chkliberados.Checked then
          Sql.Add(' and e.est_pgtolib <> 0 ');
        Sql.Add(IncluiCurso());
        Sql.Add(IncluiNivel());
        Sql.Add(IncluiTipoEstagiario());
        Sql.Add(IncluiArea());
        Sql.Add(IncluiMenores());
        Sql.Add(IncluiPeriodo());
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, a.prg_cod Situacao, ');
        Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
        Sql.Add('from');
        Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, EmpFuncionario EF');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.tce_cod = a.tce_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
        Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
        Sql.Add('  t.tce_situacao <> ''7'' and');
        Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
        Sql.Add('  t.tce_situacao <> ''0'' and');
        Sql.Add('  t.tce_dataini <= :data2 and');
        Sql.Add('  a.tpr_datafim >= :data1');
        if chkliberados.Checked then
          Sql.Add(' and e.est_pgtolib <> 0 ');
        Sql.Add(IncluiCurso());
        Sql.Add(IncluiNivel());
        Sql.Add(IncluiTipoEstagiario());
        Sql.Add(IncluiArea());
        Sql.Add(IncluiMenores());
        Sql.Add(IncluiPeriodo());
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
        Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
        Sql.Add('from');
        Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
        Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  t.tce_situacao = ''7'' and');
        Sql.Add('  t.tce_dataini <= :data2 and');
        Sql.Add('  t.tce_datares >= :data1');
        Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and tpr_dataini <= :data2)');
        if chkliberados.Checked then
          Sql.Add(' and e.est_pgtolib <> 0 ');
        Sql.Add(IncluiCurso());
        Sql.Add(IncluiNivel());
        Sql.Add(IncluiTipoEstagiario());
        Sql.Add(IncluiArea());
        Sql.Add(IncluiMenores());
        Sql.Add(IncluiPeriodo());
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, max(a.prg_cod) Situacao, ');
        Sql.Add('  max(a.tce_cod), t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  max(a.tpr_dataini), max(a.tpr_datafim), e.est_pgtolib, i.inst_nivel');
        Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
        Sql.Add('from');
        Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, Empfuncionario EF');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.tce_cod = a.tce_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
        Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
        Sql.Add('  t.tce_situacao =''7'' and');
        Sql.Add('  a.tpr_dataini <= :data2 and');
        Sql.Add('  t.tce_datares >= :data1');
        if chkliberados.Checked then
          Sql.Add(' and e.est_pgtolib <> 0 ');
        Sql.Add(IncluiCurso());
        Sql.Add(IncluiNivel());
        Sql.Add(IncluiTipoEstagiario());
        Sql.Add(IncluiArea());
        Sql.Add(IncluiMenores());
        Sql.Add('group by');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome,');
        sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, t.tce_dataini, t.tce_datafim, t.tce_situacao, ');
        Sql.Add('  t.tce_datares, e.est_pgtolib, i.inst_nivel');
        Sql.Add('order by');
        Sql.Add('m.emp_nome,e.est_nome');
        ParamByName('data1').AsDateTime := StrToDate(data1);
        ParamByName('data2').AsDateTime := StrToDate(data2);
        DmDta.quEstEmpEmp_nome.Visible := true;
        Open;

        DisableControls;
        First;
        while not Eof do
        begin
          if not FieldByName('tce_datares').IsNull then
          begin
            if FieldByName('tce_datares').AsDateTime < Date then
              TotResc := totResc + 1
            else
              TotTotal := totTotal + 1;
          end
          else
            TotTotal := totTotal + 1;
          Next;
        end;
        First;
        EnableControls;
        edTotEst.Text := IntToStr(TotTotal);
        edTotResc.Text := IntToStr(TotResc);
      end;

    end;

    // por Grupo
  if (edAno.Text <> '') and (edMes.Text <> '') and (edGrupoCod.Text <> '') then
  begin
    DecodeDate(Date, Ano, Mes, Dia);
    dtNasc := IntToStr(Mes) + '/' + IntToStr(Dia) + '/' + IntToStr(Ano - 18);
    totTotal := 0;
    totResc := 0;
    data1 := '01/' + edMes.Text + '/' + edAno.Text;
    data2 := IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
      StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;


    txtEmpresa := ' (SELECT TOP 1 emp_cod from (SELECT top 1 EMP_COD FROM EMPRESPONSAVEL WHERE  inativo = ''N'' and EMP_COD = t.emp_cod  AND FUN_COD = 1  UNION all ' +
      ' SELECT top 1 EMP_COD FROM EMPRESPONSAVEL WHERE inativo = ''N'' and EMP_COD IN (SELECT top 1 EMP_COD FROM EMPFUNCGRUPO WHERE EMP_COD2= t.emp_cod ) AND FUN_COD = 1) EMPRESA  )';
    txtfuncionario := ' (select  top 1 func_cod from  (SELECT  top 1 func_COD FROM EMPRESPONSAVEL WHERE inativo = ''N''  and EMP_COD =t.emp_cod  AND FUN_COD = 1 UNION  all ' +
      ' SELECT top 1 func_COD FROM EMPRESPONSAVEL WHERE  inativo = ''N'' and EMP_COD in   (SELECT top 1  EMP_COD FROM EMPFUNCGRUPO WHERE EMP_COD2= t.emp_cod ) AND FUN_COD = 1) funcionario )';

    with DmDta.quEstEmp do
    begin
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
      Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add('  ,(select max(tal_dataemi) from tcealteracao where tce_cod = t.tce_cod  ) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  e.cur_cod  = c.cur_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  m.grup_cod = ' + edgrupocod.Text + ' and ');
      Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
      Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
      Sql.Add('  t.tce_situacao = ''0'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datafim >= :data1');
      if chkliberados.Checked then
        Sql.Add(' and e.est_pgtolib <> 0 ');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, a.prg_cod Situacao, ');
      Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, EmpFuncionario EF');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  e.cur_cod  = c.cur_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  m.grup_cod = ' + edgrupocod.Text + ' and ');
      Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
      Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
      Sql.Add('  t.tce_situacao <> ''7'' and');
      Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
      Sql.Add('  t.tce_situacao <> ''0'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  a.tpr_datafim >= :data1');
      if chkliberados.Checked then
        Sql.Add(' and e.est_pgtolib <> 0 ');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
      Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  e.cur_cod  = c.cur_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  m.grup_cod = ' + edgrupocod.Text + ' and ');
      Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
      Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1');
      Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and tpr_dataini <= :data2)');
      if chkliberados.Checked then
        Sql.Add(' and e.est_pgtolib <> 0 ');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add(IncluiPeriodo());
      Sql.Add('union');
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome emp_nomerespcomp,');
      sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, max(a.prg_cod) Situacao, ');
      Sql.Add('  max(a.tce_cod), t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
      Sql.Add('  max(a.tpr_dataini), max(a.tpr_datafim), e.est_pgtolib, i.inst_nivel');
      Sql.Add(' ,Convert(DateTime,Null) as DTAlteracao ');
      Sql.Add('from');
      Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, Empfuncionario EF');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  e.cur_cod  = c.cur_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  m.grup_cod = ' + edgrupocod.Text + ' and ');
      Sql.Add('  ' + txtempresa + ' = ef.emp_cod and');
      Sql.Add('  ' + txtfuncionario + ' = ef.func_cod and');
      Sql.Add('  t.tce_situacao =''7'' and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1');
      if chkliberados.Checked then
        Sql.Add(' and e.est_pgtolib <> 0 ');
      Sql.Add(IncluiCurso());
      Sql.Add(IncluiNivel());
      Sql.Add(IncluiTipoEstagiario());
      Sql.Add(IncluiArea());
      Sql.Add(IncluiMenores());
      Sql.Add('group by');
      Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
      Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, ef.efu_nome,');
      sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, t.tce_dataini, t.tce_datafim, t.tce_situacao, ');
      Sql.Add('  t.tce_datares, e.est_pgtolib, i.inst_nivel');
      Sql.Add('order by');
      Sql.Add('m.emp_nome,e.est_nome');
      ParamByName('data1').AsDateTime := StrToDate(data1);
      ParamByName('data2').AsDateTime := StrToDate(data2);
      DmDta.quEstEmpEmp_nome.Visible := true;
      Open;

      DisableControls;
      First;
      while not Eof do
      begin
        if not FieldByName('tce_datares').IsNull then
        begin
          if FieldByName('tce_datares').AsDateTime < Date then
            TotResc := totResc + 1
          else
            TotTotal := totTotal + 1;
        end
        else
          TotTotal := totTotal + 1;
        Next;
      end;
      First;
      EnableControls;
      edTotEst.Text := IntToStr(TotTotal);
      edTotResc.Text := IntToStr(TotResc);
    end;

  end;


end;

procedure TFORSEMP.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  DmDta.quEstEmpemp_nome.Visible := true;
  dmdta.quEstEmpDescSituacao.Visible := true;
  GerarExcel(DmDta.quEstEmp, Caption);
  dmdta.quEstEmpDescSituacao.Visible := false;
  DmDta.quEstEmpemp_nome.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORSEMP.cbVestibularChange(Sender: TObject);
begin
  AbreQuery;
end;

procedure TFORSEMP.FormCreate(Sender: TObject);
begin
  BB := False;
  Menores := False;
  Medio := False;
end;

procedure TFORSEMP.edCurCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edCurCodDblClick(Sender);
end;

procedure TFORSEMP.edCurCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORCUR := TFORCUR.Create(Self);
  FORCUR.F2 := True;
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

  if FORCUR.F2Codigo <> '' then
  begin
    edCurCod.Text := FORCUR.F2Codigo;
    edCurNome.Text := FORCUR.F2Nome;
    SelectNext(ActiveControl, True, true);
  end;

  FORCUR.Free;
end;

procedure TFORSEMP.edCurCodExit(Sender: TObject);
begin
  if edCurCod.Text <> '' then
    edCurNome.Text := DmDTA.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(edCurCod.Text))
  else
    edCurNome.Text := '';
  AbreQuery;
end;

procedure TFORSEMP.btLimparClick(Sender: TObject);
begin
  edEmpCod.Text := '';
  edEmpNome.Text := '';
  edCurCod.Text := '';
  edCurNome.Text := '';
  edAno.Text := '';
  edMes.Text := '';

  cbVestibular.ItemIndex := -1;
  cbNivel.ItemIndex := -1;
  cbArea.ItemIndex := -1;
  cbPeriodo.ItemIndex := -1;
  cbMenores.Checked := False;
end;

procedure TFORSEMP.edAnoEnter(Sender: TObject);
begin
  if nova = 0 then
  begin
    nova := 1;
    edEmpCod.setfocus;
  end;
 { if edempcod.Text = '' then
    edEmpCod.setfocus;}
end;

procedure TFORSEMP.EdGrupoCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORGRUPO := TFORGRUPO.Create(Self);
  FORGRUPO.F2 := True;
  Screen.Cursor := crDefault;
  FORGRUPO.ShowModal;

  if FORGRUPO.F2Codigo <> '' then
  begin
    edGrupoCod.Text := FORGRUPO.F2Codigo;
    edGrupoNome.Text := FORGRUPO.F2Nome;
    SelectNExt(ActiveControl, True, True);
  end
  else
  begin
    edGrupoCod.Text := '';
    edGrupoNome.Text := '';
  end;
  FORGRUPO.Free;
end;

procedure TFORSEMP.EdGrupoCodExit(Sender: TObject);
begin
  if edGrupoCod.Text <> '' then
    edGrupoNome.Text := DmDta.BuscaCampo('Grupo', 'Grup_nome', 'Grup_cod', StrToInt(edGrupoCod.Text))
  else
    edGrupoNome.Text := '';
  AbreQuery;
end;

function FORMATADATA(DATA: TDATE): string;
var
  ANO, MES, DIA: word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  formatadata := Strzero(dia, 2) + '/' + Strzero(mes, 2) + '/' + IntToStr(Ano);

end;

procedure TFORSEMP.Button1Click(Sender: TObject);

var
  Meses: integer;
  data1, data: tdate;
  data2, data3: tdate;
  data4, data5: tdate;
begin
  DmDta.quEstEmp.first;
  data := strtodate('01/' + edMes.Text + '/' + edAno.Text);
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    while DmDta.quEstEmp.eof = false do
    begin
      data1 := dmdta.quEstEmptce_dataini.Value;
      meses := MonthsBetween(dmdta.quEstEmptce_dataini.Value, data);
      while meses >= 12 do
      begin
        data2 := incmonth(data1, 12) - 1;
        if dmdta.Busca('RECESSO', 'EST_COD', 'Est_cod = ' + dmdta.quEstEmpest_cod.asstring + ' and   INICIO = ''' + Formatadata(data1) + ''' AND Final = ''' + formatadata(data2) + ''' ') = false then
        begin
          close;
          sql.Clear;
          sql.Add(' Insert into recesso (Est_cod,inicio,final) values (:Est_cod,:Inicio,:final)');
          parambyname('Est_cod').asstring := dmdta.quEstEmpest_cod.asstring;
          parambyname('inicio').asstring := Formatadata(data1);
          parambyname('Final').asstring := Formatadata(data2);
          execsql;
        end;
        data1 := incmonth(data1, 12);
        meses := meses - 12;
      end;
      DmDta.quEstEmp.Next;
    end;
  end;

end;

end.

