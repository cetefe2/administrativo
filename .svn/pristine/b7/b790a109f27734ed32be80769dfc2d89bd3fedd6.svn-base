unit TPOEST2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db,
  DBTables, ToolEdit, RXDBCtrl, cxGraphics, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFOREST2 = class(TFORMOD1)
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    btImprimirLaudo: TSpeedButton;
    quLaudoPrincipal: TQuery;
    quEntrevistas: TQuery;
    quEntrevistasage_data: TDateTimeField;
    quEntrevistasEncaminhado: TStringField;
    quEntrevistaseva_resultado: TStringField;
    quEntrevistasResultado: TStringField;
    quEntrevistasvag_cod: TIntegerField;
    quEntrevistasPresenca: TStringField;
    quEntrevistasemp_nome: TStringField;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo3: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    quLaudoPrincipalemp_nome: TStringField;
    quLaudoPrincipalvag_setor: TStringField;
    quLaudoPrincipalvag_dataabertura: TDateTimeField;
    quLaudoPrincipalvag_qtde: TIntegerField;
    quLaudoPrincipalvag_cod: TIntegerField;
    quLaudoPrincipaleva_dataenc: TDateTimeField;
    quLaudoPrincipalvag_respselecao: TStringField;
    quEntrevistasporque: TStringField;
    quEntrevistasvag_respselecao: TStringField;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    Label7: TLabel;
    dsfunc: TDataSource;
    qryfunc: TQuery;
    qryfuncfunc_cod: TIntegerField;
    qryfuncfunc_nome: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label6: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btImprimirLaudoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREST2: TFOREST2;

implementation

Uses TPODTA, TPOFNC, ComObj, TPOCST, TPOEST, TPOINI;

{$R *.DFM}

procedure TFOREST2.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREST2.btImprimirLaudoClick(Sender: TObject);
var
  var1: variant;
  idade, unidade: String;
  sResponsavel, telefone1, telefone2, telefone3 : String;
  i: Word;
begin
  // salva o registro
  btEnter.setfocus;
  // Verificar   joilson    ok 22/10/2007
  Screen.Cursor := crHourGlass;
  var1 := CreateOleObject('Word.basic');
  var1.Filenew(FORINI.Diretorio+'laudo.dot');

  // abertura da query
  with quLaudoPrincipal do
  begin
    Close;
    Sql.Clear;
    sql.Add('select');
    sql.Add('  m.emp_nome, v.vag_setor, v.vag_dataabertura, v.vag_qtde,');
    sql.Add('	 v.vag_cod, n.eva_dataenc, v.vag_respselecao');
    sql.Add('from');
    sql.Add('  empresa m (nolock), Encaminhamento n (nolock), Vaga v (nolock)');
    sql.Add('where');
    sql.Add('  n.est_cod     = :est_cod       and');
    sql.Add('  v.vag_cod 		 = n.vag_cod		  and');
    sql.Add('  v.emp_cod 		 = m.emp_cod 		  and');
    sql.Add('	 n.eva_dataenc = (select max(eva_dataenc) from Encaminhamento where est_cod = :est_cod)');
    sql.Add('order by');
    sql.Add('  v.vag_dataabertura desc');

    ParamByName('est_cod').Value := DmDta.quEstudante.FieldByName('est_cod').value;
    Open;

    // cálculo da idade
    RetornaIdade(DmDta.quEstudante.fieldByName('est_dtnasc').Text,Idade,unidade);

    // telefones
    telefone1 := DmDta.quEstudante.FieldByName('est_fone1').AsString;
    If Telefone1 <> '' then
      telefone1 := '(' + Copy(Telefone1,1,2) + ') ' + Copy(Telefone1,3,4) + '-' + Copy(Telefone1,7,4);

    telefone2 := DmDta.quEstudante.FieldByName('est_fone2').AsString;
    If Telefone2 <> '' then
      telefone2 := '(' + Copy(Telefone2,1,2) + ') ' + Copy(Telefone2,3,4) + '-' + Copy(Telefone2,7,4);

    telefone3 := DmDta.quEstudante.FieldByName('est_recado').AsString;
    If Telefone3 <> '' then
      telefone3 := '(' + Copy(Telefone3,1,2) + ') ' + Copy(Telefone3,3,4) + '-' + Copy(Telefone3,7,4);

    // inicio da impressão do laudo - Word
    var1.NextCell;
    var1.Insert(FieldByName('emp_nome').AsString);
    var1.NextCell;

    var1.NextCell;
    If Not FieldByName('vag_dataabertura').IsNull then
      var1.Insert(FormatDateTime('dd/mm/yyyy', FieldByName('vag_dataabertura').asDateTime))
    else
      var1.Insert('');
    var1.NextCell;

    var1.NextCell;
    If Not FieldByName('eva_dataenc').IsNull then
      var1.Insert(FormatDateTime('dd/mm/yyyy', FieldByName('eva_dataenc').asDateTime))
    else
      var1.Insert('');
    var1.NextCell;

    var1.NextCell;
    var1.Insert(FieldByName('vag_setor').AsString);
    var1.NextCell;

    var1.NextCell;
    If Not FieldByName('vag_qtde').IsNull then
      var1.Insert(FieldByName('vag_qtde').asString)
    else
      var1.Insert('');
    var1.NextCell;

    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_nome').AsString);
    var1.NextCell;

    var1.NextCell;
    var1.Insert(Idade);
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_estadocivil').AsString = 'Casado' then
      var1.Insert('(X) Casado    (  ) Solteiro    (  ) Outros')
    else If DmDta.quEstudante.FieldByName('est_estadocivil').AsString = 'Solteiro' then
      var1.Insert('(  ) Casado    (X) Solteiro    (  ) Outros')
    else If Not DmDta.quEstudante.FieldByName('est_estadocivil').IsNull then
      var1.Insert('(  ) Casado    (  ) Solteiro    (X) Outros')
    else
      var1.Insert('(  ) Casado    (  ) Solteiro    (  ) Outros');
    var1.NextCell;

    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_filhos').AsString);
    var1.NextCell;

    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('cur_nome').AsString);
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('pcu_anoatual').AsString <> '' then
      var1.Insert(DmDta.quEstudante.FieldByName('pcu_anoatual').AsString + 'º');
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('pcu_vestib').AsString = '0' then
      var1.Insert('(X) Verão    (  ) Inverno')
    else If Not DmDta.quEstudante.FieldByName('pcu_vestib').IsNull then
      var1.Insert('(  ) Verão    (X) Inverno')
    else
      var1.Insert('(  ) Verão    (  ) Inverno');
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '0' then
      var1.Insert('(X) Manhã    (  ) Tarde    (  ) Noite')
    else If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '1' then
      var1.Insert('(  ) Manhã    (X) Tarde    (  ) Noite')
    else If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '2' then
      var1.Insert('(  ) Manhã    (  ) Tarde    (X) Noite')
    else If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '3' then
      var1.Insert('(X) Manhã    (X) Tarde    (  ) Noite')
    else If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '4' then
      var1.Insert('(X) Manhã    (  ) Tarde    (X) Noite')
    else If DmDta.quEstudante.FieldByName('pcu_turno').AsString = '5' then
      var1.Insert('(  ) Manhã    (X) Tarde    (X) Noite')
    else
      var1.Insert('(  ) Manhã    (  ) Tarde    (  ) Noite');

    var1.NextCell;

    var1.NextCell;
    var1.Insert(telefone1);
    var1.NextCell;

    var1.NextCell;
    var1.Insert(telefone2);
    var1.NextCell;

    var1.NextCell;
    var1.Insert(telefone3);
    var1.NextCell;

    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_nomerecado').AsString);
    var1.NextCell;

    var1.NextCell;
    var1.NextCell;
    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_porqueestagio').AsString);
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_faccomunicacao').AsString = '0' then
      var1.Insert('(X) Muito Boa    (  ) Boa    (  ) Razoável')
    else if DmDta.quEstudante.FieldByName('est_faccomunicacao').AsString = '1' then
      var1.Insert('(  ) Muito Boa    (X) Boa    (  ) Razoável')
    else if Not DmDta.quEstudante.FieldByName('est_faccomunicacao').IsNull then
      var1.Insert('(  ) Muito Boa    (  ) Boa    (X) Razoável')
    else
      var1.Insert('(  ) Muito Boa    (  ) Boa    (  ) Razoável');
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_vocabulario').AsString = '0' then
      var1.Insert('(X) Muito Bom    (  ) Bom    (  ) Razoável')
    else if DmDta.quEstudante.FieldByName('est_vocabulario').AsString = '1' then
      var1.Insert('(  ) Muito Bom    (X) Bom    (  ) Razoável')
    else if Not DmDta.quEstudante.FieldByName('est_vocabulario').IsNull then
      var1.Insert('(  ) Muito Bom    (  ) Bom    (X) Razoável')
    else
      var1.Insert('(  ) Muito Bom    (  ) Bom    (  ) Razoável');

    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_rotinas').AsString = '0' then
      var1.Insert('(X) Sim    (  ) Não')
    else If Not DmDta.quEstudante.FieldByName('est_rotinas').IsNull then
      var1.Insert('(  ) Sim    (X) Não')
    else
      var1.Insert('(  ) Sim    (  ) Não');
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_apresentacao').AsString = '0' then
      var1.Insert('(X) Tranqüila    (  ) Inquieta')
    else If Not DmDta.quEstudante.FieldByName('est_apresentacao').IsNull then
      var1.Insert('(  ) Tranqüila    (X) Inquieta')
    else
      var1.Insert('(  ) Tranqüila    (  ) Inquieta');
    var1.NextCell;

    var1.NextCell;
    If DmDta.quEstudante.FieldByName('est_factrabalho').AsString = '0' then
      var1.Insert('(X) Em Equipe    (  ) Sozinho')
    else If Not DmDta.quEstudante.FieldByName('est_factrabalho').IsNull then
      var1.Insert('(  ) Em Equipe    (X) Sozinho')
    else
      var1.Insert('(  ) Em Equipe    (  ) Sozinho');
    var1.NextCell;

    var1.NextCell;
    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_perfilpessoal').AsString);
    var1.NextCell;

    var1.NextCell;
    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_sitfamiliar').AsString);
    var1.NextCell;

    var1.NextCell;
    var1.NextCell;
    var1.Insert(DmDta.quEstudante.FieldByName('est_areasexp').AsString);
    var1.NextCell;
    var1.NextCell;
    var1.NextCell;
  end;

  // abre os outros comparecimentos
  with quEntrevistas do
  begin
    Close;
    ParamByName('est_cod').asInteger := DmDta.quEstudante.FieldByName('est_cod').aSInteger;
    ParamByName('vag_cod').asInteger := quLaudoPrincipal.FieldByName('vag_cod').aSInteger;
    Open;
    sResponsavel := quLaudoPrincipal.FieldByName('vag_respselecao').text;
    If sResponsavel = '' then
      sResponsavel := quEntrevistas.FieldByName('vag_respselecao').text;

    while not eof do
    begin
      var1.NextCell;
      var1.Insert(FieldByName('emp_nome').AsString);
      var1.NextCell;

      var1.NextCell;
      var1.Insert(FormatDateTime('dd/mm/yyyy', FieldByName('age_data').asDateTime));
      var1.NextCell;

      var1.NextCell;
      If FieldByName('Presenca').AsString = 'Sim' then
        var1.Insert('(  ) Sim    (X) Não')
      else If Not FieldByName('Presenca').IsNull then
        var1.Insert('(X) Sim    (  ) Não')
      else
        var1.Insert('(  ) Sim    (  ) Não');
      var1.NextCell;


      var1.NextCell;
      If FieldByName('Encaminhado').AsString = 'Sim' then
        var1.Insert('(X) Sim    (  ) Não')
      else
        var1.Insert('(  ) Sim    (X) Não');
      var1.NextCell;

      {var1.NextCell;
      var1.Insert(FieldByName('porque').AsString);
      var1.NextCell;}
      Next;
    end;

    // preenche os outros brancos (faltou e encaminhado)
    for i := RecordCount + 1 to 6 do
    begin
      var1.NextCell;
      var1.NextCell;
      var1.NextCell;
      var1.NextCell;
      var1.NextCell;
      var1.Insert('(  ) Sim    (  ) Não');
      var1.NextCell;
      var1.NextCell;
      var1.Insert('(  ) Sim    (  ) Não');
      var1.NextCell;
      //var1.NextCell;
      //var1.NextCell;
    end;
  end;

  // responsável pela seleção
  var1.NextCell;
  var1.Insert('____________________________________________________'+#13);
  Var1.Insert(sResponsavel);

  quEntrevistas.Close;
  quLaudoPrincipal.Close;

  Screen.Cursor := crDefault;
  var1.appshow;
end;

procedure TFOREST2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOREST.btSalvarClick(Sender);
  inherited;
end;

end.
