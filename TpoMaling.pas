unit TpoMaling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, StdCtrls, Mask, DB,
  DBTables, Grids, DBGrids, Buttons;

type
  TForMailing = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    chkcurso00: TCheckBox;
    chkcurso02: TCheckBox;
    chkcurso03: TCheckBox;
    chkcurso04: TCheckBox;
    chkcurso05: TCheckBox;
    chkcurso06: TCheckBox;
    chkcurso07: TCheckBox;
    chkcurso08: TCheckBox;
    chkcurso09: TCheckBox;
    chkcurso11: TCheckBox;
    chkcurso01: TCheckBox;
    chkcurso10: TCheckBox;
    popCurso: TPopupMenu;
    Marcartodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    GroupBox2: TGroupBox;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    RDEsTurno: TRadioGroup;
    RdEsSituacao: TRadioGroup;
    TabSheet8: TTabSheet;
    GroupBox4: TGroupBox;
    ckCivil00: TCheckBox;
    ckCivil01: TCheckBox;
    ckcivil02: TCheckBox;
    GroupBox3: TGroupBox;
    dtainiNascimento: TDateTimePicker;
    dtaFimNascimento: TDateTimePicker;
    ckNascimento: TCheckBox;
    rdsexo: TRadioGroup;
    ckcivil03: TCheckBox;
    ckcivil04: TCheckBox;
    rdVestibular: TRadioGroup;
    GroupBox5: TGroupBox;
    EDBAIRRO: TEdit;
    GroupBox6: TGroupBox;
    EDNOME: TEdit;
    GroupBox7: TGroupBox;
    dtaIniAtualizacao: TDateTimePicker;
    dtaFimAtualizacao: TDateTimePicker;
    ckAtualizacao: TCheckBox;
    edfilhos: TEdit;
    Label1: TLabel;
    qrypesquisa: TQuery;
    MEstudante: TMemo;
    qryInstituicao: TQuery;
    DTSInstituicao: TDataSource;
    qryCursos: TQuery;
    dtsCurso: TDataSource;
    SpeedButton1: TSpeedButton;
    qrypesquisaEstudante: TStringField;
    qrypesquisaNascimento: TDateTimeField;
    qrypesquisaBairro: TStringField;
    qrypesquisaCivil: TStringField;
    qrypesquisaCodCurso: TIntegerField;
    qrypesquisaInstCod: TIntegerField;
    qrypesquisaInstituicao: TStringField;
    qrypesquisaCurso: TStringField;
    qrypesquisapcu_vestib: TStringField;
    qrypesquisaest_cursoSituacao: TStringField;
    qrypesquisaFilhos: TSmallintField;
    qrypesquisaSexo: TStringField;
    qrypesquisaest_cod: TIntegerField;
    qrypesquisaest_ativo: TStringField;
    qrypesquisaVestibular: TStringField;
    qrypesquisaEmail: TStringField;
    qrypesquisaTurno: TStringField;
    qrypesquisaAtualizacao: TDateTimeField;
    GroupBox8: TGroupBox;
    chkcoor00: TCheckBox;
    chkcoor02: TCheckBox;
    chkcoor03: TCheckBox;
    chkcoor04: TCheckBox;
    chkcoor01: TCheckBox;
    chkcoor05: TCheckBox;
    SpeedButton2: TSpeedButton;
    GroupBox9: TGroupBox;
    TabSheet13: TTabSheet;
    MCoordenador: TMemo;
    qrypesquisa2: TQuery;
    qrypesquisa2inst_cod: TIntegerField;
    qrypesquisa2coord_cod: TIntegerField;
    qrypesquisa2Nome: TStringField;
    qrypesquisa2Curso: TStringField;
    qrypesquisa2Duracao: TIntegerField;
    qrypesquisa2Curi_duracaomax: TIntegerField;
    qrypesquisa2Curi_periodic: TStringField;
    qrypesquisa2Email: TStringField;
    qrypesquisa2Fone: TStringField;
    qrypesquisa2Celular: TStringField;
    qrypesquisa2Instituicao: TStringField;
    qrypesquisa2Turno: TStringField;
    qrypesquisa2Sexo: TStringField;
    rdCoorTurno: TRadioGroup;
    GroupBox15: TGroupBox;
    edcoordenador: TEdit;
    rdSexoCoordenador: TRadioGroup;
    qrypesquisa3: TQuery;
    qrypesquisa3Nome: TStringField;
    qrypesquisa3Endereco: TStringField;
    qrypesquisa3Bairro: TStringField;
    qrypesquisa3Cidade: TStringField;
    qrypesquisa3Estado: TStringField;
    qrypesquisa3Convenio: TStringField;
    qrypesquisa3Compromisso: TStringField;
    qrypesquisa3EmailConvenio: TStringField;
    qrypesquisa3EmailCompromisso: TStringField;
    qrypesquisa3Curso: TStringField;
    qrypesquisa3Nivel: TStringField;
    SpeedButton3: TSpeedButton;
    GroupBox10: TGroupBox;
    ckInst00: TCheckBox;
    ckInst02: TCheckBox;
    ckInst03: TCheckBox;
    ckInst04: TCheckBox;
    ckInst01: TCheckBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    edcompromisso: TEdit;
    GroupBox13: TGroupBox;
    edconvenio: TEdit;
    mensino: TMemo;
    GroupBox14: TGroupBox;
    ckemp00: TCheckBox;
    ckemp02: TCheckBox;
    ckemp03: TCheckBox;
    ckemp04: TCheckBox;
    ckemp01: TCheckBox;
    SpeedButton4: TSpeedButton;
    ckemp07: TCheckBox;
    ckemp08: TCheckBox;
    qryempresa: TQuery;
    dtsEmpresa: TDataSource;
    GroupBox18: TGroupBox;
    Notebook2: TNotebook;
    edpar2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup4: TRadioGroup;
    mePesqCnpj2: TMaskEdit;
    Label4: TLabel;
    cbTipoPesquisa2: TComboBox;
    qrypesquisa4: TQuery;
    mempresa: TMemo;
    qrypesquisa4Nome: TStringField;
    qrypesquisa4Fantasia: TStringField;
    qrypesquisa4Endereco: TStringField;
    qrypesquisa4Bairro: TStringField;
    qrypesquisa4Cidade: TStringField;
    qrypesquisa4Estado: TStringField;
    qrypesquisa4Cep: TStringField;
    qrypesquisa4Fone: TStringField;
    qrypesquisa4CNPJ: TStringField;
    qrypesquisa4Inscest: TStringField;
    qrypesquisa4Contato: TStringField;
    qrypesquisa4Compromisso: TStringField;
    qrypesquisa4Entrevistador: TStringField;
    qrypesquisa4Financeiro: TStringField;
    qrypesquisa4func_nome: TStringField;
    ckemp05: TCheckBox;
    ckemp06: TCheckBox;
    DBGrid3: TDBGrid;
    chkEmpresa: TCheckBox;
    GroupBox19: TGroupBox;
    EdBairro2: TEdit;
    qrypesquisa4Numero: TStringField;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox16: TGroupBox;
    Label3: TLabel;
    cbPesquisaCurso: TComboBox;
    edParametro: TEdit;
    DBGrid2: TDBGrid;
    GroupBox17: TGroupBox;
    Label2: TLabel;
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    mePesqCnpj: TMaskEdit;
    DBGrid1: TDBGrid;
    cbTipoPesquisa: TComboBox;
    listaPessoa: TListBox;
    controlePessoa: TListBox;
    ckExeto: TCheckBox;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    edvaga: TEdit;
    SpeedButton9: TSpeedButton;
    Label5: TLabel;
    cbSit: TComboBox;
    Label6: TLabel;
    chkcurso12: TCheckBox;
    qrypesquisaTelefone: TStringField;
    qrypesquisaCelular: TStringField;
    qrypesquisaRecado: TStringField;
    GroupBox20: TGroupBox;
    eddivulga: TEdit;
    qrypesquisa3Divulga1: TStringField;
    qrypesquisa3EmailDivulga1: TStringField;
    qrypesquisa3Divulga2: TStringField;
    qrypesquisa3EmailDivulga2: TStringField;
    qrypesquisa3Divulga3: TStringField;
    qrypesquisa3EmailDivulga3: TStringField;
    ckInst05: TCheckBox;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    listacurso: TListBox;
    controlecurso: TListBox;
    chkExetoCurso: TCheckBox;
    chkcurso13: TCheckBox;
    qrypesquisaest_Situacao: TStringField;
    qrypesquisaStatus: TStringField;
    chkcurso14: TCheckBox;
    chkcurso15: TCheckBox;
    qrypesquisadat_perfil: TDateTimeField;
    qrypesquisaRecrutador: TStringField;
    qrypesquisaStatusPerfil: TStringField;
    rdSPErfil: TRadioGroup;
    GroupBox21: TGroupBox;
    dtainiperfil: TDateTimePicker;
    ckdataperfil: TCheckBox;
    dtafimperfil: TDateTimePicker;
    GroupBox22: TGroupBox;
    edrecrutador: TEdit;
    chkcurso16: TCheckBox;
    qrypesquisaEst_desempenho: TStringField;
    chkcurso17: TCheckBox;
    GroupBox23: TGroupBox;
    dtaIniInclusao: TDateTimePicker;
    ckInclusao: TCheckBox;
    dtaFimInclusao: TDateTimePicker;
    qrypesquisaInclusao: TDateTimeField;
    qrypesquisaAno: TIntegerField;
    chkcurso18: TCheckBox;
    GroupBox24: TGroupBox;
    ck1: TCheckBox;
    ck2: TCheckBox;
    ck3: TCheckBox;
    ck4: TCheckBox;
    ck5: TCheckBox;
    ck6: TCheckBox;
    procedure edParExit(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbTipoPesquisa2Change(Sender: TObject);
    procedure edpar2Exit(Sender: TObject);
    procedure mePesqCnpj2Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qrypesquisa2FoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrypesquisa2CelularGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrypesquisa4FoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrypesquisa4CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edvagaDblClick(Sender: TObject);
    procedure edvagaExit(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure qrypesquisaTelefoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrypesquisaCelularGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrypesquisaRecadoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure qrypesquisaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForMailing: TForMailing;

implementation

{$R *.dfm}
uses
  TPOCST, TPOFNC, TPODTA, TPOVAG, TPOTRV, TPOTRV2;

procedure TForMailing.edParExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if edPar.Text <> '' then
  begin
    argumento := 'I.inst_cod  *= IF1.Inst_cod and I.inst_respconv *= IF1.func_cod ';

   { 'I.inst_cod      *= IF1.Inst_cod and ' +
      'I.inst_respconv *= IF1.func_cod and ' +
      'I.inst_cod      *= IF2.Inst_cod and ' +
      'I.inst_respcomp *= IF2.func_cod ';}

    tabelas := 'Instituicao I,InstFuncionario IF1';

    colunas := 'I.Inst_cod Codigo,I.Inst_nome Instituicao,I.Inst_endereco Endereco,I.Inst_Cidade Cidade,I.Inst_bairro Bairro,inst_estado Estado,IF1.ifu_nome inst_nomerespconv';

    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'i.inst_cod';
          argumento := argumento + ' and i.inst_cod = ' + edPar.Text;
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
      1:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_nome like ''%' + edPar.Text + '%''';
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
      4:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_endereco like ''%' + edPar.Text + '%''';
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
      5:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_bairro like ''%' + edPar.Text + '%''';
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
      6:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_cidade like ''%' + edPar.Text + '%''';
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
      8:
        begin
          ordem := 'i.inst_nome';
          argumento := argumento + ' and i.inst_estado = ''' + edPar.Text + '''';
          DMDta.montaSql(qryInstituicao, colunas, tabelas, argumento, ordem);

        end;
    end;
  end;

end;

procedure TForMailing.edParametroExit(Sender: TObject);
var argumento, ordem: string;
begin
  if edParametro.Text <> '' then
  begin
    case cbPesquisaCurso.ItemIndex of
      0:
        begin
          ordem := 'cur_cod';
          if edParametro.Text <> '' then
            argumento := 'cur_cod = ' + edParametro.Text;
          DMDta.montaSql(qrycursos, '*', 'Curso', argumento, ordem);

        end;
      1:
        begin
          ordem := 'cur_nome';
          if edParametro.Text <> '' then
            argumento := 'cur_nome like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(qrycursos, '*', 'Curso', argumento, ordem);
        end;
    end;
  end;


end;

procedure TForMailing.SpeedButton1Click(Sender: TObject);
var x, civil: integer;
  triar, linha, curso, instituicao: ansistring;
  filtro: string;
begin
  triar := '';
  if edvaga.Text <> '' then
  begin
    Screen.Cursor := crHourGlass;
    FORTRV2 := TFORTRV2.Create(Self);
    Screen.Cursor := crDefault;
    FORTRV2.edVaga.Text := edvaga.Text;
    FORTRV2.filtro := '';
    FORTRV2.Triagem(StrToInt(edVaga.Text));
    triar := FORTRV2.triar;
    if triar <> '' then
      triar := ' and estudante.est_cod in (' + triar + ') ';
    FORTRV2.close;
  end;

  curso := '';
  instituicao := '';
  qrypesquisa.Close;
  qrypesquisa.SQL.Clear;
  for x := 0 to mestudante.Lines.Count - 1 do
    qrypesquisa.SQL.add(mestudante.Lines[x]);

  if rdesTurno.ItemIndex > 0 then
    qrypesquisa.SQL.Add(' and  Estudante.pcu_turno = ' + inttostr(rdesTurno.ItemIndex - 1));
  if rdesSituacao.ItemIndex > 0 then
    qrypesquisa.SQL.Add(' and  Estudante.est_cursoSituacao = ''' + RdEsSituacao.Items[rdesSituacao.ItemIndex] + '''');

  if cbsit.ItemIndex > 0 then
  begin
    if cbsit.ItemIndex = 1 then
      qrypesquisa.SQL.Add(' and  Estudante.est_situacao = ''S''');
    if cbsit.ItemIndex = 2 then
      qrypesquisa.SQL.Add(' and  Estudante.est_situacao = ''N''');
    if cbsit.ItemIndex = 3 then
      qrypesquisa.SQL.Add(' and  Estudante.est_situacao = ''X''');
    if cbsit.ItemIndex = 4 then
      qrypesquisa.SQL.Add(' and  Estudante.est_situacao IN (''X'',''N'') ');
  end;
  if rdvestibular.ItemIndex > 0 then
    qrypesquisa.SQL.Add(' and  Estudante.pcu_vestibular = ' + inttostr(rdvestibular.ItemIndex - 1));

  if rdsPerfil.ItemIndex > 0 then
  begin
    if rdsPerfil.ItemIndex = 1 then
      qrypesquisa.SQL.Add(' and datediff(day,dat_perfil,getdate()) >= 91 ');
    if rdsPerfil.ItemIndex = 2 then
      qrypesquisa.SQL.Add(' and datediff(day,dat_perfil,getdate()) is null ');
    if rdsPerfil.ItemIndex = 3 then
      qrypesquisa.SQL.Add(' and datediff(day,dat_perfil,getdate()) <  91 ');
  end;

  if rdsexo.ItemIndex > 0 then
    qrypesquisa.SQL.Add(' and  Estudante.est_sexo = ''' + copy(rdsexo.Items[rdsexo.ItemIndex], 1, 1) + ''' ');

  if ednome.Text <> '' then
    qrypesquisa.SQL.Add(' and  Estudante.est_nome like  ''%' + ednome.text + '%'' ');

  if edBAIRRO.Text <> '' then
    qrypesquisa.SQL.Add(' and  Estudante.est_bairro like  ''%' + edbairro.text + '%'' ');

  if edrecrutador.Text <> '' then
    qrypesquisa.SQL.Add(' and  Estudante.est_recrutadora  in (select func_cod from funcionario where  func_nome  like  ''%' + edrecrutador.text + '%'') ');

  if edfilhos.Text <> '' then
    qrypesquisa.SQL.Add(' and  Estudante.est_filhos = ' + edfilhos.Text);

  civil := 0;
  if ckcivil00.Checked then
  begin
    inc(civil);
    qrypesquisa.SQL.Add(' and  (Estudante.Est_estadocivil = ''Solteiro''  ');
  end;

  if ckcivil01.Checked then
  begin
    if civil > 0 then
      qrypesquisa.SQL.Add('  or Estudante.Est_estadocivil = ''Casado''  ')
    else
      qrypesquisa.SQL.Add('  and (Estudante.Est_estadocivil = ''Casado''  ');
    inc(civil);
  end;

  if ckcivil02.Checked then
  begin
    if civil > 0 then
      qrypesquisa.SQL.Add(' or  Estudante.Est_estadocivil = ''Viúvo''  ')
    else
      qrypesquisa.SQL.Add(' and (  Estudante.Est_estadocivil = ''Viúvo''  ');
    inc(civil);
  end;

  if ckcivil03.Checked then
  begin
    if civil > 0 then
      qrypesquisa.SQL.Add(' or  Estudante.Est_estadocivil = ''Divorciado''  ')
    else
      qrypesquisa.SQL.Add(' and  (Estudante.Est_estadocivil = ''Divorciado''  ');
    inc(civil);
  end;
  if ckcivil04.Checked then
  begin
    if civil > 0 then
      qrypesquisa.SQL.Add(' or  Estudante.Est_estadocivil = ''Outros''  ')
    else
      qrypesquisa.SQL.Add(' and  (Estudante.Est_estadocivil = ''Outros''  ');
    inc(civil);
  end;

  if civil > 0 then
    qrypesquisa.SQL.Add(' )');

  if (ck1.Checked) or
    (ck2.Checked) or
    (ck3.Checked) or
    (ck4.Checked) or
    (ck5.Checked) or
    (ck6.Checked) then
  begin
    filtro := '';
    if ck1.Checked then
     filtro := ' and (  Estudante.pcu_anoatual =  ''1''  ';
    if ck2.Checked then
      if filtro = '' then
        filtro := ' and (  Estudante.pcu_anoatual =  ''2''  '
      else
        filtro :=  filtro + ' or  Estudante.pcu_anoatual =  ''2'' ';
    if ck3.Checked then
      if filtro = '' then
        filtro :=' and (  Estudante.pcu_anoatual =  ''3''  '
      else
        filtro := filtro +' or  Estudante.pcu_anoatual =  ''3'' ';
    if ck4.Checked then
      if filtro = '' then
        filtro :=' and (  Estudante.pcu_anoatual =  ''4''  '
      else
        filtro := filtro + ' or  Estudante.pcu_anoatual =  ''4'' ';
    if ck5.Checked then
      if filtro = '' then
        filtro :=' and (  Estudante.pcu_anoatual =  ''5''  '
      else
        filtro := filtro + ' or  Estudante.pcu_anoatual =  ''5'' ';
    if ck6.Checked then
      if filtro = '' then
        filtro :=' and (  Estudante.pcu_anoatual =  ''6''  '
      else
        filtro := filtro + ' or  Estudante.pcu_anoatual =  ''6'' ';
    if filtro <> '' then
      qrypesquisa.SQL.Add(filtro + ' ) ');

  end;


  if (controlecurso.items.count > 0) then
  begin
    for X := 0 to controlecurso.Count - 1 do
      if X < controlecurso.Count - 1 then
        LINHA := LINHA + controlecurso.Items[X] + ','
      else
        LINHA := LINHA + controlecurso.Items[X];

    if chkexetocurso.Checked then
      qrypesquisa.SQL.Add(' and  Estudante.cur_cod  not in (' + linha + ')')
    else
      qrypesquisa.SQL.Add(' and  Estudante.cur_cod  in (' + linha + ')');

   { qrycursos.first;
    while qrycursos.Eof = false do
    begin
      if curso = '' then
        curso := qrycursos.fieldbyname('cur_cod').AsString
      else
        curso := curso + ',' + qrycursos.fieldbyname('cur_cod').AsString;
      qrycursos.Next;
    end;
    qrypesquisa.SQL.Add(' and  Estudante.cur_cod  in (' + curso + ')');}
  end;

 // if (ckfiltraInstituicao.Checked) and (qryInstituicao.IsEmpty = false) then
  if controlepessoa.Items.Count > 0 then
  begin
    linha := '';
    for X := 0 to controlepessoa.Count - 1 do
      if X < controlepessoa.Count - 1 then
        LINHA := LINHA + controlepessoa.Items[X] + ','
      else
        LINHA := LINHA + controlepessoa.Items[X];

    if ckexeto.Checked then
      qrypesquisa.SQL.Add(' and  Estudante.Inst_cod  not in (' + linha + ')')
    else
      qrypesquisa.SQL.Add(' and  Estudante.Inst_cod  in (' + linha + ')');
  end;

  if ckdataperfil.Checked then
    qrypesquisa.SQL.Add(' and  Estudante.dat_perfil  between :inicioperfil and :finalperfil  ');


  if ckinclusao.Checked then
    qrypesquisa.SQL.Add(' and  Estudante.Est_dtinc  between :inicinclusao and :finalinclusao  ');

  if cknascimento.Checked then
    qrypesquisa.SQL.Add(' and  Estudante.Est_dtnasc  between :inicionasc and :finalnasc  ');

  if ckatualizacao.Checked then
    qrypesquisa.SQL.Add(' and  Estudante.est_dtatu  between :inicio and :final   ');
  if triar <> '' then
    qrypesquisa.SQL.add(triar);

  qrypesquisa.SQL.Add(' ORDER BY ESTUDANTE.EST_NOME  ');

  if cknascimento.Checked then
  begin
    qrypesquisa.ParamByName('inicionasc').value := dtaininascimento.Date;
    qrypesquisa.ParamByName('finalnasc').value := dtafimnascimento.Date;
  end;

  if ckatualizacao.Checked then
  begin
    qrypesquisa.ParamByName('inicio').value := dtainiatualizacao.Date;
    qrypesquisa.ParamByName('final').value := dtafimatualizacao.Date;
  end;

  if ckinclusao.Checked then
  begin
    qrypesquisa.ParamByName('inicInclusao').value := dtainiinclusao.Date;
    qrypesquisa.ParamByName('finalinclusao').value := dtafiminclusao.Date;
  end;

  if ckdataperfil.Checked then
  begin
    qrypesquisa.ParamByName('inicioperfil').value := dtainiperfil.Date;
    qrypesquisa.ParamByName('finalperfil').value := dtafimperfil.Date;
  end;

  qrypesquisa.open;
  qrypesquisacurso.Visible := chkcurso00.Checked;
  qrypesquisaturno.Visible := chkcurso01.Checked;
  qrypesquisaInstituicao.Visible := chkcurso02.Checked;
  qrypesquisavestibular.Visible := chkcurso03.Checked;
  qrypesquisaEst_cursoSituacao.Visible := chkcurso04.Checked;
  qrypesquisasexo.Visible := chkcurso05.Checked;
  qrypesquisanascimento.Visible := chkcurso06.Checked;
  qrypesquisacivil.Visible := chkcurso07.Checked;
  qrypesquisafilhos.Visible := chkcurso08.Checked;
  qrypesquisabairro.Visible := chkcurso09.Checked;
  qrypesquisaemail.Visible := chkcurso10.Checked;
  qrypesquisaAtualizacao.Visible := chkcurso11.Checked;
  qrypesquisatelefone.Visible := chkcurso12.Checked;
  qrypesquisacelular.Visible := chkcurso12.Checked;
  qrypesquisadat_perfil.Visible := chkcurso14.Checked;
  qrypesquisarecrutador.Visible := chkcurso15.Checked;
  qrypesquisaStatusPerfil.Visible := chkcurso13.Checked;
  qrypesquisaest_desempenho.Visible := chkcurso16.Checked;
  qrypesquisaInclusao.Visible := chkcurso17.Checked;
  qrypesquisaAno.Visible := chkcurso18.Checked;
  GerarExcel(qrypesquisa, 'Relatório de estudantes');
end;

procedure TForMailing.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8:
      begin
        Notebook1.PageIndex := 0;
        edPar.SetFocus;
      end;
    2: Notebook1.PageIndex := 1;
    3: Notebook1.PageIndex := 2;
    7:
      begin
        Notebook1.PageIndex := 3;
        mePesqCnpj.SetFocus;
      end;
  end;
end;

procedure TForMailing.mePesqCnpjExit(Sender: TObject);
var
  ordem, argumento, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod  *= IF1.Inst_cod and I.inst_respconv *= IF1.func_cod ';
  ordem := 'i.inst_nome';
  tabelas := 'Instituicao I,InstFuncionario IF1';
  colunas := 'I.Inst_cod Codigo,I.Inst_nome Instituicao,I.Inst_endereco Endereco,I.Inst_Cidade Cidade,I.Inst_bairro Bairro,inst_estado Estado,IF1.ifu_nome inst_nomerespconv';
  if mePesqCnpj.Text <> '' then
  begin
    argumento := argumento + ' and i.inst_cnpj = ''' + mePesqCnpj.Text + '''';
    DMDta.montaSql(qryinstituicao, colunas, tabelas, argumento, ordem);
  end;
end;

procedure TForMailing.RadioGroup2Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod  *= IF1.Inst_cod and I.inst_respconv *= IF1.func_cod ';
  ordem := 'i.inst_nome';
  tabelas := 'Instituicao I,InstFuncionario IF1';
  colunas := 'I.Inst_cod Codigo,I.Inst_nome Instituicao,I.Inst_endereco Endereco,I.Inst_Cidade Cidade,I.Inst_bairro Bairro,inst_estado Estado,IF1.ifu_nome inst_nomerespconv';

  case radioGroup2.ItemIndex of
    0: argumento := argumento + ' and i.inst_tipo = ''Municipal''';
    1: argumento := argumento + ' and i.inst_tipo = ''Estadual''';
    2: argumento := argumento + ' and i.inst_tipo = ''Federal''';
    3: argumento := argumento + ' and i.inst_tipo = ''Particular''';
  end;
  dmDta.MontaSQL(qryinstituicao, colunas, tabelas, argumento, ordem);
end;

procedure TForMailing.RadioGroup3Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := 'I.inst_cod  *= IF1.Inst_cod and I.inst_respconv *= IF1.func_cod ';
  ordem := 'i.inst_nome';
  tabelas := 'Instituicao I,InstFuncionario IF1';
  colunas := 'I.Inst_cod Codigo,I.Inst_nome Instituicao,I.Inst_endereco Endereco,I.Inst_Cidade Cidade,I.Inst_bairro Bairro,inst_estado Estado,IF1.ifu_nome inst_nomerespconv';
  case radioGroup2.ItemIndex of
    0: argumento := argumento + ' and i.inst_nivel = ''Médio''';
    1: argumento := argumento + ' and i.inst_nivel = ''Pós-Médio''';
    2: argumento := argumento + ' and i.inst_nivel = ''Superior''';
    3: argumento := argumento + ' and i.inst_nivel = ''Pós-Graduação''';
  end;
  dmDta.MontaSQL(qryinstituicao, colunas, tabelas, argumento, ordem);
end;

procedure TForMailing.SpeedButton2Click(Sender: TObject);
var x, civil: integer;
  linha, curso, instituicao: ansistring;
begin
  curso := '';
  instituicao := '';
  qrypesquisa2.Close;
  qrypesquisa2.SQL.Clear;
  for x := 0 to mcoordenador.Lines.Count - 1 do
    qrypesquisa2.SQL.add(mcoordenador.Lines[x]);
  if rdcoorTurno.ItemIndex > 0 then
    qrypesquisa2.SQL.Add(' and  curi_turno = ' + inttostr(rdcoorTurno.ItemIndex - 1));
  if rdSexoCoordenador.ItemIndex > 0 then
    qrypesquisa2.SQL.Add(' and  instcoordenador.ico_sexo = ''' + copy(rdSexoCoordenador.Items[rdSexoCoordenador.ItemIndex], 1, 1) + ''' ');

  if ednome.Text <> '' then
    qrypesquisa2.SQL.Add(' and  instCoordenador.ico_nome like  ''%' + ednome.text + '%'' ');


  if (controlecurso.items.count > 0) then
  begin
    for X := 0 to controlecurso.Count - 1 do
      if X < controlecurso.Count - 1 then
        LINHA := LINHA + controlecurso.Items[X] + ','
      else
        LINHA := LINHA + controlecurso.Items[X];

    if chkexetocurso.Checked then
      qrypesquisa2.SQL.Add(' and  instcurso.cur_cod  not in (' + linha + ')')
    else
      qrypesquisa2.SQL.Add(' and  instcurso.cur_cod  in (' + linha + ')');
  end;



  if controlepessoa.Items.Count > 0 then
  begin
    linha := '';
    for X := 0 to controlepessoa.Count - 1 do
      if X < controlepessoa.Count - 1 then
        LINHA := LINHA + controlepessoa.Items[X] + ','
      else
        LINHA := LINHA + controlepessoa.Items[X];

    if ckexeto.Checked then
      qrypesquisa2.SQL.Add(' and  instCoordenador.Inst_cod  not in (' + linha + ')')
    else
      qrypesquisa2.SQL.Add(' and  instCoordenador.Inst_cod  in (' + linha + ')');
  end;

  qrypesquisa2.SQL.Add(' ORDER BY InstCoordenador.ico_nome  ');
  qrypesquisa2.open;
  qrypesquisa2curso.Visible := chkcoor00.Checked;
  qrypesquisa2turno.Visible := chkcoor01.Checked;
  qrypesquisa2Instituicao.Visible := chkcoor02.Checked;
  qrypesquisa2fone.Visible := chkcoor03.Checked;
  qrypesquisa2celular.Visible := chkcoor03.Checked;
  qrypesquisa2sexo.Visible := chkcoor04.Checked;
  qrypesquisa2email.Visible := chkcoor05.Checked;
  if qrypesquisa2.Eof = false then
    GerarExcel(qrypesquisa2, 'Relatório de Coordenadores')
  else
    showmessage('Sem resultados para a pesquisa');
end;

procedure TForMailing.SpeedButton3Click(Sender: TObject);
var x, civil: integer;
  linha, curso, instituicao: ansistring;
begin
  qrypesquisa3.Close;
  qrypesquisa3.SQL.Clear;
  for x := 0 to mensino.Lines.Count - 1 do
    qrypesquisa3.SQL.add(mensino.Lines[x]);

  if edBAIRRO.Text <> '' then
    qrypesquisa3.SQL.Add(' and  I.Inst_bairro like  ''%' + edbairro.text + '%'' ');
  if edconvenio.Text <> '' then
    qrypesquisa3.SQL.Add(' and  If1.Ifu_nome like  ''%' + edconvenio.text + '%'' ');
  if edcompromisso.Text <> '' then
    qrypesquisa3.SQL.Add(' and  If2.Ifu_nome like  ''%' + edcompromisso.text + '%'' ');

  if eddivulga.Text <> '' then
    qrypesquisa3.SQL.Add(' and  ( If3.Ifu_nome like  ''%' + eddivulga.text + '%'' or  If4.Ifu_nome like  ''%' + eddivulga.text + '%'' If5.Ifu_nome like  ''%' + eddivulga.text + '%'' ) ');

  if (controlecurso.items.count > 0) then
  begin
    for X := 0 to controlecurso.Count - 1 do
      if X < controlecurso.Count - 1 then
        LINHA := LINHA + controlecurso.Items[X] + ','
      else
        LINHA := LINHA + controlecurso.Items[X];

    if chkexetocurso.Checked then
      qrypesquisa3.SQL.Add(' and  instcurso.cur_cod  not in (' + linha + ')')
    else
      qrypesquisa3.SQL.Add(' and  instcurso.cur_cod  in (' + linha + ')');
  end;


  if controlepessoa.Items.Count > 0 then
  begin
    linha := '';
    for X := 0 to controlepessoa.Count - 1 do
      if X < controlepessoa.Count - 1 then
        LINHA := LINHA + controlepessoa.Items[X] + ','
      else
        LINHA := LINHA + controlepessoa.Items[X];

    if ckexeto.Checked then
      qrypesquisa3.SQL.Add(' and  I.Inst_cod  not in (' + linha + ')')
    else
      qrypesquisa3.SQL.Add(' and  I.Inst_cod  in (' + linha + ')');
  end;

  qrypesquisa3.SQL.Add(' ORDER BY I.Inst_nome   ');
  qrypesquisa3.open;
  qrypesquisa3curso.Visible := ckinst00.Checked;
  qrypesquisa3nivel.Visible := ckinst01.Checked;
  qrypesquisa3convenio.Visible := ckinst02.Checked;
  qrypesquisa3Compromisso.Visible := ckinst03.Checked;
  qrypesquisa3endereco.Visible := ckemp04.Checked;
  qrypesquisa3bairro.Visible := ckemp04.Checked;
  qrypesquisa3cidade.Visible := ckemp04.Checked;
  qrypesquisa3estado.Visible := ckemp04.Checked;

  qrypesquisa3divulga1.Visible := ckemp05.Checked;
  qrypesquisa3divulga2.Visible := ckemp05.Checked;
  qrypesquisa3divulga3.Visible := ckemp05.Checked;

  qrypesquisa3Emaildivulga1.Visible := ckemp05.Checked;
  qrypesquisa3Emaildivulga2.Visible := ckemp05.Checked;
  qrypesquisa3Emaildivulga3.Visible := ckemp05.Checked;


  if qrypesquisa3.Eof = false then
    GerarExcel(qrypesquisa3, 'Relatório de Instituiçoes')
  else
    showmessage('Sem resultados para a pesquisa');
end;

procedure TForMailing.cbTipoPesquisa2Change(Sender: TObject);
begin
  case cbTipoPesquisa2.ItemIndex of
    0, 1, 4, 5, 6, 8:
      begin
        Notebook2.PageIndex := 0;
        edPar2.SetFocus;
      end;
    2: Notebook2.PageIndex := 1;
    3: Notebook2.PageIndex := 2;
    7:
      begin
        Notebook2.PageIndex := 3;
        mePesqCnpj2.SetFocus;
      end;
  end;

end;

procedure TForMailing.edpar2Exit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if edPar2.Text <> '' then
  begin
    // argumentos iniciais
    colunas := 'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco,emp_numend Numero, ' +
      ' Emp_bairro Bairro, Emp_cidade Cidade,  Emp_estado Estado,Emp_cep Cep, ' +
      ' Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , ef1.efu_nome Contato, ' +
      '  ef2.efu_nome Compromisso, ' +
      'ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, ' +
      'f.func_nome';

    tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
      'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

    argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
      'e.emp_respcont  *= ef1.func_cod and ' +
      'e.emp_cod       *= ef2.emp_cod  and ' +
      'e.emp_respcomp  *= ef2.func_cod and ' +
      'e.emp_cod       *= ef3.emp_cod  and ' +
      'e.emp_respent   *= ef3.func_cod and ' +
      'e.emp_cod       *= ef4.emp_cod  and ' +
      'e.emp_respfin   *= ef4.func_cod and ' +
      'e.emp_funccont  *= f.func_cod';

    case CbTipoPesquisa2.ItemIndex of
      0:
        begin
          ordem := 'e.emp_cod';
          argumento := argumento + ' and e.emp_cod = ' + edPar2.Text;
        end;
      1:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and ((e.emp_nome like ''%' + edPar2.Text + '%'') or ' +
            '(e.emp_nomefantasia like ''%' + edPar2.Text + '%''))';
        end;
      4:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_endereco like ''%' + edPar2.Text + '%''';
        end;
      5:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_bairro like ''%' + edPar2.Text + '%''';
        end;
      6:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_cidade like ''%' + edPar2.Text + '%''';
        end;
      8:
        begin
          ordem := 'e.emp_nome';
          argumento := argumento + ' and e.emp_estado = ''' + edPar2.Text + '''';
        end;
    end;

    DmDta.montaSql(qryempresa, colunas, tabelas, argumento, ordem);

  end;

end;

procedure TForMailing.mePesqCnpj2Exit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
  colunas := 'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco, emp_numend Numero, ' +
    ' Emp_bairro Bairro, Emp_cidade Cidade, Emp_estado Estado,Emp_cep Cep, ' +
    ' Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , ef1.efu_nome Contato, ' +
    '  ef2.efu_nome Compromisso, ' +
    'ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';
  ordem := 'e.emp_cod';

  if mePesqCnpj2.Text <> '' then
  begin
    argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj2.Text + '''';

    // abre a query
    DmDta.MontaSql(qryempresa, colunas, tabelas, argumento, ordem);
  end;
end;

procedure TForMailing.RadioGroup1Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  colunas := 'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco, emp_numend Numero, ' +
    ' Emp_bairro Bairro, Emp_cidade Cidade, Emp_estado Estado,Emp_cep Cep, ' +
    ' Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , ef1.efu_nome Contato, ' +
    '  ef2.efu_nome Compromisso, ' +
    'ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';

  ordem := 'e.emp_nome';

  case radioGroup1.ItemIndex of
    0: argumento := argumento + ' and e.emp_ramo = ''Indústria''';
    1: argumento := argumento + ' and e.emp_ramo = ''Comércio''';
    2: argumento := argumento + ' and e.emp_ramo = ''Serviços''';
  end;
  // abre a query
  DmDta.montaSql(qryempresa, colunas, tabelas, argumento, ordem);

end;

procedure TForMailing.RadioGroup4Click(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  colunas := 'Emp_nome Nome, Emp_nomefantasia Fantasia, Emp_endereco Endereco, emp_numend Numero, ' +
    ' Emp_bairro Bairro, Emp_cidade Cidade, Emp_estado Estado,Emp_cep Cep, ' +
    ' Emp_telefone Fone, Emp_cnpj CNPJ, Emp_inscest Inscest , ef1.efu_nome Contato, ' +
    '  ef2.efu_nome Compromisso, ' +
    'ef1.efu_nome Entrevistador, ef4.efu_nome Financeiro, ' +
    'f.func_nome';

  tabelas := 'Empresa e, EmpFuncionario ef1, EmpFuncionario ef2, ' +
    'EmpFuncionario ef3, EmpFuncionario ef4, Funcionario F ';

  argumento := 'e.emp_cod       *= ef1.emp_cod  and ' +
    'e.emp_respcont  *= ef1.func_cod and ' +
    'e.emp_cod       *= ef2.emp_cod  and ' +
    'e.emp_respcomp  *= ef2.func_cod and ' +
    'e.emp_cod       *= ef3.emp_cod  and ' +
    'e.emp_respent   *= ef3.func_cod and ' +
    'e.emp_cod       *= ef4.emp_cod  and ' +
    'e.emp_respfin   *= ef4.func_cod and ' +
    'e.emp_funccont  *= f.func_cod';
  ordem := 'e.emp_nome';

  case radioGroup4.ItemIndex of
    0: argumento := argumento + ' and e.emp_porte = ''Pequeno''';
    1: argumento := argumento + ' and e.emp_porte = ''Médio''';
    2: argumento := argumento + ' and e.emp_porte = ''Grande''';
    3: argumento := argumento + ' and e.emp_porte = ''Multinac.''';
  end;

  // abre a query
  DmDta.montaSql(qryempresa, colunas, tabelas, argumento, ordem);


end;

procedure TForMailing.SpeedButton4Click(Sender: TObject);
var x, civil: integer;
  curso, instituicao: ansistring;
begin
  qrypesquisa4.Close;
  qrypesquisa4.SQL.Clear;
  if (qryempresa.IsEmpty = false) and (chkempresa.Checked) then
    qrypesquisa4.SQL.Text := qryempresa.SQL.Text
  else
  begin
    for x := 0 to mempresa.Lines.Count - 1 do
      qrypesquisa4.SQL.add(mempresa.Lines[x]);
    qrypesquisa4.SQL.Add(' ORDER BY Emp_nome   ');
  end;

  qrypesquisa4.open;
  qrypesquisa4endereco.Visible := ckemp00.Checked;
  qrypesquisa4numero.Visible := ckemp00.Checked;
  qrypesquisa4bairro.Visible := ckemp00.Checked;
  qrypesquisa4fone.Visible := ckemp01.Checked;
  qrypesquisa4Cidade.Visible := ckemp02.Checked;
  qrypesquisa4Estado.Visible := ckemp03.Checked;
  qrypesquisa4contato.Visible := ckemp04.Checked;
  qrypesquisa4compromisso.Visible := ckemp05.Checked;
  qrypesquisa4Entrevistador.Visible := ckemp05.Checked;
  qrypesquisa4Financeiro.Visible := ckemp07.Checked;
  qrypesquisa4cnpj.Visible := ckemp08.Checked;
  qrypesquisa4inscEst.Visible := ckemp08.Checked;

  if qrypesquisa4.Eof = false then
    GerarExcel(qrypesquisa4, 'Relatório de Empresas')
  else
    showmessage('Sem resultados para a pesquisa');
end;

procedure TForMailing.qrypesquisa2FoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisa2fone.AsString, 1, 2) +
    ') ' + Copy(qrypesquisa2fone.AsString, 3, 4) +
    '-' + Copy(qrypesquisa2fone.AsString, 7, 4);
end;

procedure TForMailing.qrypesquisa2CelularGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisa2celular.AsString, 1, 2) +
    ') ' + Copy(qrypesquisa2celular.AsString, 3, 4) +
    '-' + Copy(qrypesquisa2celular.AsString, 7, 4);
end;

procedure TForMailing.qrypesquisa4FoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisa4fone.AsString, 1, 2) +
    ') ' + Copy(qrypesquisa4fone.AsString, 3, 4) +
    '-' + Copy(qrypesquisa4fone.AsString, 7, 4);
end;

procedure TForMailing.qrypesquisa4CNPJGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  cnpj: string;
begin
  cnpj := qrypesquisa4cnpj.AsString;
  if cnpj <> '' then
    text := Copy(cnpj, 1, 2) + '.' + Copy(cnpj, 3, 3) + '.' + Copy(cnpj, 6, 3) + '/' + Copy(cnpj, 9, 4) + '-' + Copy(cnpj, 13, 2);
end;

procedure TForMailing.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edParametroExit(sender);
end;

procedure TForMailing.SpeedButton7Click(Sender: TObject);
begin
  if controlepessoa.Items.IndexOf(qryInstituicao.fieldbyname('codigo').AsString) < 0 then
  begin
    controlepessoa.Items.Add(qryInstituicao.fieldbyname('codigo').AsString);
    listapessoa.Items.Add(qryInstituicao.fieldbyname('Instituicao').AsString);
  end;
end;

procedure TForMailing.SpeedButton6Click(Sender: TObject);
begin
  controlepessoa.Items.Delete(listapessoa.ItemIndex);
  listapessoa.Items.Delete(listapessoa.ItemIndex);
end;

procedure TForMailing.SpeedButton8Click(Sender: TObject);
begin
  qryinstituicao.DisableControls;
  qryinstituicao.First;
  while qryinstituicao.Eof = false do
  begin
    if controlepessoa.Items.IndexOf(qryInstituicao.fieldbyname('codigo').AsString) < 0 then
    begin
      controlepessoa.Items.Add(qryInstituicao.fieldbyname('codigo').AsString);
      listapessoa.Items.Add(qryInstituicao.fieldbyname('Instituicao').AsString);
    end;
    qryinstituicao.next;
  end;
  qryinstituicao.First;
  qryinstituicao.enablecontrols;
end;

procedure TForMailing.edParKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edparexit(sender);
end;

procedure TForMailing.SpeedButton5Click(Sender: TObject);
begin
  controlepessoa.Items.clear;
  listapessoa.Items.clear;
end;

procedure TForMailing.edvagaDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;
  if FORVAG.F2Codigo <> '' then
  begin
    edvaga.Text := FORVAG.F2Codigo;
    SelectNext(ActiveControl, True, True);
  end;
  FORVAG.Free;
end;

procedure TForMailing.edvagaExit(Sender: TObject);
begin
  if edvaga.text <> '' then
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select v.*, e.emp_nome  from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + edvaga.text);
      Sql.Add('and vag_qtde > vag_qtdepreenc and vag_cancelada = ''0''');
      Open;
      if IsEmpty then
      begin
        MSGERRO('Oportunidade inexistente ou já preenchida. Selecione outra oportunidade!');
        edvaga.SetFocus;
      end;
      Close;
      Free;
    end;
end;

procedure TForMailing.SpeedButton9Click(Sender: TObject);
var x, civil: integer;
  filtro, linha, curso, instituicao: ansistring;
begin
  Filtro := '';
  curso := '';
  instituicao := '';

  if rdesTurno.ItemIndex > 0 then
    filtro := ' and  e.pcu_turno = ' + inttostr(rdesTurno.ItemIndex - 1);
  if rdesSituacao.ItemIndex > 0 then
    filtro := filtro + ' and  e.est_cursoSituacao = ''' + RdEsSituacao.Items[rdesSituacao.ItemIndex] + '''';

  if cbsit.ItemIndex > 0 then
  begin
    if cbsit.ItemIndex = 1 then
      filtro := filtro + ' and  e.est_situacao = ''S''';
    if cbsit.ItemIndex = 2 then
      filtro := filtro + ' and  e.est_situacao = ''N''';
    if cbsit.ItemIndex = 3 then
      filtro := filtro + ' and  e.est_situacao = ''X''';
    if cbsit.ItemIndex = 4 then
      filtro := filtro + ' and  e.est_situacao IN (''X'',''N'') ';
  end;

  if rdvestibular.ItemIndex > 0 then
    filtro := filtro + ' and  e.pcu_vestibular = ' + inttostr(rdvestibular.ItemIndex - 1);

  if rdsexo.ItemIndex > 0 then
    filtro := filtro + ' and  e.est_sexo = ''' + copy(rdsexo.Items[rdsexo.ItemIndex], 1, 1) + ''' ';

  if ednome.Text <> '' then
    filtro := filtro + ' and  e.est_nome like  ''%' + ednome.text + '%'' ';

  if edBAIRRO.Text <> '' then
    filtro := filtro + ' and  e.est_bairro like  ''%' + edbairro.text + '%'' ';

  if edfilhos.Text <> '' then
    filtro := filtro + ' and  e.est_filhos = ' + edfilhos.Text;

  civil := 0;
  if ckcivil00.Checked then
  begin
    inc(civil);
    filtro := filtro + ' and  (e.Est_estadocivil = ''Solteiro''  ';
  end;

  if ckcivil01.Checked then
  begin
    if civil > 0 then
      filtro := filtro + '  or e.Est_estadocivil = ''Casado''  '
    else
      filtro := filtro + '  and (e.Est_estadocivil = ''Casado''  ';
    inc(civil);
  end;

  if ckcivil02.Checked then
  begin
    if civil > 0 then
      filtro := filtro + ' or  e.Est_estadocivil = ''Viúvo''  '
    else
      filtro := filtro + ' and (  e.Est_estadocivil = ''Viúvo''  ';
    inc(civil);
  end;

  if ckcivil03.Checked then
  begin
    if civil > 0 then
      filtro := filtro + ' or  e.Est_estadocivil = ''Divorciado''  '
    else
      filtro := filtro + ' and  (e.Est_estadocivil = ''Divorciado''  ';
    inc(civil);
  end;

  if ckcivil04.Checked then
  begin
    if civil > 0 then
      filtro := filtro + ' or  e.Est_estadocivil = ''Outros''  '
    else
      filtro := filtro + ' and  (e.Est_estadocivil = ''Outros''  ';
    inc(civil);
  end;

  if civil > 0 then
    filtro := filtro + ' )';

  if (controlecurso.items.count > 0) then
  begin
    for X := 0 to controlecurso.Count - 1 do
      if X < controlecurso.Count - 1 then
        LINHA := LINHA + controlecurso.Items[X] + ','
      else
        LINHA := LINHA + controlecurso.Items[X];

    if chkexetocurso.Checked then
      filtro := filtro + ' and  e.cur_cod not in (' + linha + ')'
    else
      filtro := filtro + ' and  e.cur_cod  in (' + linha + ')';
  end;

 // if (ckfiltraInstituicao.Checked) and (qryInstituicao.IsEmpty = false) then
  if controlepessoa.Items.Count > 0 then
  begin
    linha := '';
    for X := 0 to controlepessoa.Count - 1 do
      if X < controlepessoa.Count - 1 then
        LINHA := LINHA + controlepessoa.Items[X] + ','
      else
        LINHA := LINHA + controlepessoa.Items[X];

    if ckexeto.Checked then
      filtro := filtro + ' and  e.Inst_cod  not in (' + linha + ')'
    else
      filtro := filtro + ' and  e.Inst_cod  in (' + linha + ')';
  end;

  if cknascimento.Checked then
    filtro := filtro + ' and  e.Est_dtnasc  between ''' + datetostr(dtaininascimento.Date) + ''' and ''' + datetostr(dtafimnascimento.Date) + '''  ';

  if ckatualizacao.Checked then
    filtro := filtro + ' and  e.est_dtatu  between ''' + datetostr(dtainiatualizacao.Date) + ''' and ''' + datetostr(dtafimatualizacao.Date) + '''   ';

  if edvaga.Text = '' then
    exit;
  Screen.Cursor := crHourGlass;
  FORTRV2 := TFORTRV2.Create(Self);
  Screen.Cursor := crDefault;
  FORTRV2.edVaga.Text := edvaga.Text;
  FORTRV2.filtro := filtro;
  FORTRV2.ShowModal;
end;

procedure TForMailing.qrypesquisaTelefoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisatelefone.AsString, 1, 2) +
    ') ' + Copy(qrypesquisatelefone.AsString, 3, 4) +
    '-' + Copy(qrypesquisatelefone.AsString, 7, 4);
end;

procedure TForMailing.qrypesquisaCelularGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisacelular.AsString, 1, 2) +
    ') ' + Copy(qrypesquisacelular.AsString, 3, 4) +
    '-' + Copy(qrypesquisacelular.AsString, 7, 4);
end;

procedure TForMailing.qrypesquisaRecadoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '(' + Copy(qrypesquisarecado.AsString, 1, 2) +
    ') ' + Copy(qrypesquisarecado.AsString, 3, 4) +
    '-' + Copy(qrypesquisarecado.AsString, 7, 4);
end;

procedure TForMailing.SpeedButton10Click(Sender: TObject);
begin
  if controlecurso.Items.IndexOf(qrycursos.fieldbyname('Cur_cod').AsString) < 0 then
  begin
    controlecurso.Items.Add(qrycursos.fieldbyname('Cur_cod').AsString);
    listacurso.Items.Add(qrycursos.fieldbyname('Cur_nome').AsString);
  end;
end;

procedure TForMailing.SpeedButton11Click(Sender: TObject);
begin
  qrycursos.DisableControls;
  qrycursos.First;
  while qrycursos.Eof = false do
  begin
    if controlecurso.Items.IndexOf(qrycursos.fieldbyname('cur_cod').AsString) < 0 then
    begin
      controlecurso.Items.Add(qrycursos.fieldbyname('cur_cod').AsString);
      listacurso.Items.Add(qrycursos.fieldbyname('cur_nome').AsString);
    end;
    qrycursos.next;
  end;
  qrycursos.First;
  qrycursos.enablecontrols;
end;

procedure TForMailing.SpeedButton12Click(Sender: TObject);
begin
  controlecurso.Items.Delete(listacurso.ItemIndex);
  listacurso.Items.Delete(listacurso.ItemIndex);
end;

procedure TForMailing.SpeedButton13Click(Sender: TObject);
begin
  controlecurso.Items.clear;
  listacurso.Items.clear;
end;

procedure TForMailing.qrypesquisaCalcFields(DataSet: TDataSet);
begin
  if qrypesquisaest_situacao.Value = 'S' then
    qrypesquisastatus.Value := 'Estagiando'
  else if qrypesquisaest_situacao.Value = 'N' then
    qrypesquisastatus.Value := 'Não Estagiando'
  else if qrypesquisaest_situacao.Value = 'X' then
    qrypesquisastatus.Value := 'Ex-Estagiário';

end;

end.

