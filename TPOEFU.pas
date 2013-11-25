unit TPOEFU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, cxGraphics, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup;

type
  TFOREFU = class(TFORMOD3)
    Label1: TLabel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label2: TLabel;
    edEmpNome1: TEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBComboBox2: TDBComboBox;
    quprincipal2: TQuery;
    usprincipal2: TUpdateSQL;
    QryInstituicao: TQuery;
    QryInstituicaoInst_Nome: TStringField;
    dsinstituicao: TDataSource;
    QryInstituicaoInst_cod: TIntegerField;
    quprincipal3: TQuery;
    Usprincipal3: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label33: TLabel;
    rdfuncao: TRadioGroup;
    Edit1: TEdit;
    cbfuncoes: TcxComboBox;
    Controle: TListBox;
    qryFilial: TQuery;
    qryFilialemp_cod: TIntegerField;
    qryFilialemp_nome: TStringField;
    qryFilialemp_nomefantasia: TStringField;
    qryFuncao: TQuery;
    qryFuncaofun_Nome: TStringField;
    qryFuncaofun_cod: TIntegerField;
    usprincipal4: TUpdateSQL;
    quprincipal4: TQuery;
    dsFuncoes: TDataSource;
    dsfilial: TDataSource;
    Bevel4: TBevel;
    Label9: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    Pagina: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    btFuncao: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnCalcel2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label21: TLabel;
    SpeedButton8: TSpeedButton;
    Label29: TLabel;
    DBGrid2: TDBGrid;
    cbFuncao2: TcxDBComboBox;
    cbfuncao: TcxDBLookupComboBox;
    cbInativo: TcxDBRadioGroup;
    TabSheet2: TTabSheet;
    Bevel2: TBevel;
    Label20: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label30: TLabel;
    DBGrid3: TDBGrid;
    cbInstituicao: TcxDBLookupComboBox;
    tbfilial: TTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    cbfilial: TcxDBLookupComboBox;
    DBGrid4: TDBGrid;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    Documentos: TDBRadioGroup;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label34: TLabel;
    DBEdit17: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label35: TLabel;
    DBEdit22: TDBEdit;
    Label36: TLabel;
    DBEdit23: TDBEdit;
    Label37: TLabel;
    DBEdit24: TDBEdit;
    Label38: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnCalcel2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure rdfuncaoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btFuncaoClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit25DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
    grupo: string;
  public
    { Public declarations }
    Emp: Integer;
    Emp2: integer;
    EmpNome: string;
    NovaEmp: Boolean;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FOREFU: TFOREFU;

implementation

uses TPODTA, TPOFNC, TPOCST, TPOFORMT;

{$R *.DFM}

procedure TFOREFU.FormCreate(Sender: TObject);
begin
  inherited;

  DmDTA.criacampo('EmpFuncionario', 'efu_formacao', 'func_cod', ' varchar(60)');
  DmDTA.criacampo('EmpFuncionario', 'efu_documentacao', 'func_cod', ' char(1)');
  DmDTA.criacampo('EmpFuncionario', 'efu_area', 'func_cod', ' varchar(60) ');
  DmDTA.criacampo('EmpFuncionario', 'efu_DataExperiencia', 'func_cod', ' smalldatetime ');

  nomeCodigo := 'func_cod';
  nomeNome := 'efu_nome';
  nomeTabela := 'EmpFuncionario';

  quPrincipal1 := DmDta.quEmpFuncionario;
  quprincipal1.Close;
  quprincipal1.SQL.Clear;
  //quprincipal1.SQL.Add('select * from EmpFuncionario where emp_cod = :emp_cod ORDER BY efu_nome ');

  quprincipal1.SQL.Add(' select * from empfuncionario where emp_cod=:emp_cod ');
  quprincipal1.SQL.Add(' union all select * from empfuncionario  ');
  quprincipal1.SQL.Add(' where emp_cod in  (select emp_cod from empfuncgrupo where emp_cod2 =:emp_cod and  empfuncionario.func_cod=func_cod) and ');
  quprincipal1.SQL.Add('  func_cod in (select func_cod from empfuncgrupo where emp_cod2 = :emp_cod and  empfuncionario.func_cod=func_cod)  order by efu_nome ');

  DmDta.dsEmpFuncionario.DataSet := quPrincipal1;

  quPrincipal2 := DmDta.quresponsavel;
  quprincipal2.Close;
  quprincipal2.sql.Clear;
  quprincipal2.sql.Add('SELECT     EmpResponsavel.*, EmpFuncionario.Efu_nome AS Nome ');
  quprincipal2.sql.Add(' FROM     EmpResponsavel INNER JOIN ');
  quprincipal2.sql.Add('  EmpFuncionario ON EmpResponsavel.Emp_cod = EmpFuncionario.Emp_cod AND EmpResponsavel.Func_cod = EmpFuncionario.Func_cod ');
  quprincipal2.sql.Add(' and Empresponsavel.func_cod=:codigo  and  EmpResponsavel.emp_cod =:empresa order by  EmpFuncionario.Efu_nome ');
  quprincipal2.sql.Add(' , EmpResponsavel.Inicio desc ');
  DmDta.dsresponsavel.DataSet := quPrincipal2;
  DmDta.quResponsavelNome.Visible := false;

  quPrincipal3 := DmDta.qurestricao;
  quprincipal3.Close;
  quprincipal3.sql.Clear;
  quprincipal3.sql.Add('SELECT   EmpFuncRest.*, Instituicao.Inst_nome AS Nome ');
  quprincipal3.sql.Add(' FROM    EmpFuncRest INNER JOIN ');
  quprincipal3.sql.Add('  Instituicao ON Instituicao.Inst_cod = EmpFuncRest.Inst_cod ');
  quprincipal3.sql.Add(' and EmpFuncRest.func_cod=:codigo  and  EmpFuncRest.emp_cod =:empresa order by  Instituicao.Inst_nome ');
  DmDta.dsRestricao.DataSet := quPrincipal3;


  //filiais

  quPrincipal4 := DmDta.qufuncgrupo;
  quprincipal4.Close;
  quprincipal4.sql.Clear;
  quprincipal4.sql.Add('SELECT  * from empfuncgrupo  where emp_cod=:empresa and func_cod=:codigo ');
  DmDta.dsfuncgrupo.DataSet := quPrincipal4;


  qryinstituicao.Open;


end;

procedure TFOREFU.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEmpFuncionario.DataSet := DmDta.quEmpFuncionario;
end;

procedure TFOREFU.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('func_cod').Value := ultimoRegistro;
  end;
end;

procedure TFOREFU.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('emp_cod').Text := EdEmpCod.Text;
  quPrincipal1.FieldByName('func_cod').Value := 0;

  DBEdit2.SetFocus;
end;

procedure TFOREFU.BuscaPrimeiroUltimo;
begin
  inherited;

  if not NovaEmp then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(func_cod) as Maximo,');
      SQL.Add('  min(func_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  EmpFuncionario (nolock)');
      SQL.Add('where');
      SQL.Add('  emp_cod = :emp_cod');
      ParamByName('emp_cod').AsInteger := StrToInt(EdEmpCod.Text);
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
    end;
  end;
end;

procedure TFOREFU.FormShow(Sender: TObject);
begin
  emp2 := emp;
  edEmpCod.Text := IntToStr(Emp);
  edEmpNome.Text := EmpNome;
  edEmpNome1.Text := EmpNome;

  qryfuncao.close;
  qryfuncao.open;
  cbfuncoes.ActiveProperties.Items.Clear;
  cbfuncoes.ActiveProperties.Items.Add('Todos');
  controle.Items.clear;
  controle.Items.Add('0');

  while qryfuncao.Eof = false do
  begin
    cbfuncoes.ActiveProperties.Items.Add(qryfuncaofun_nome.AsString);
    controle.Items.Add(qryfuncaofun_cod.AsString);
    qryfuncao.Next;
  end;


  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    close;
    Sql.Clear;
    Sql.add('select grup_cod from Empresa  where   emp_cod=' + IntToStr(Emp));
    open;
    if fieldbyname('grup_cod').asstring <> '' then
      grupo := fieldbyname('grup_cod').asstring
    else
      grupo := '0';
    free;
  end;
  qryfilial.close;
  qryfilial.parambyname('grupo').asstring := grupo;
  qryfilial.parambyname('empresa').asstring := IntToStr(Emp);
  qryfilial.Open;

  qryfuncao.Close;
  qryfuncao.open;
  with quPrincipal1 do
  begin
    Close;
    ParamByName('emp_cod').AsInteger := Emp;
    Open;
  end;

  if NovaEmp then
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro := 0;
  end;

  inherited;
end;

procedure TFOREFU.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFOREFU.btSalvarClick(Sender: TObject);
begin
 if quPrincipal1.State  in [dsedit,dsinsert]  = false then
    exit;
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do funcionário da empresa!');
    DBEdit2.SetFocus;
  end
  else
  begin
   // inherited;
    try
      AtualizaDados;
       // QUPRINCIPAL.Post;
      DMDta.SalvarRegistro(quPrincipal1);

    except
      btCancelar.Click; // Cancela Registro
      MSGERRO('Atenção não foi possível salvar o registro. Informações incompletas!');
      exit;
    end;
    DBEdit1Change(Sender);
    // Atualiza a query de empresa
    {with DmDta.quEmpresa do
    begin
      Close;
      Open;
      Locate('emp_cod', quPrincipal1.FieldByName('emp_cod').AsInteger, []);
    end;}
    if quprincipal2.IsEmpty then
    begin
      pgprincipal.ActivePage := tbregistro;
      btfuncao.Click;
    end;
  end;
end;

procedure TFOREFU.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFOREFU.CarregaDados;
begin
  inherited;
end;

procedure TFOREFU.LimpaCampos;
begin
  inherited;
end;

procedure TFOREFU.edDataKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
end;

procedure TFOREFU.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREFU.DBEdit1Change(Sender: TObject);
begin
//  inherited;
  quprincipal2.close;
  quprincipal3.close;
  quprincipal4.close;

  if dbedit1.Text <> '' then
  begin

    quprincipal2.ParamByName('codigo').asstring := dbedit1.Text;
    quprincipal2.ParamByName('empresa').asstring := edEmpCod.Text;
    quprincipal2.Open;

    quprincipal3.ParamByName('codigo').asstring := dbedit1.Text;
    quprincipal3.ParamByName('empresa').asstring := edEmpCod.Text;
    quprincipal3.Open;

    quprincipal4.ParamByName('codigo').asstring := dbedit1.Text;
    quprincipal4.ParamByName('empresa').asstring := edEmpCod.Text;
    quprincipal4.Open;

  end;
end;

procedure TFOREFU.SpeedButton1Click(Sender: TObject);
begin
 //
  if (dbedit1.Text <> '') and
    (quprincipal1.State in [dsbrowse]) then
  begin
    DmDta.qufuncgrupo.Insert;
    DmDta.qufuncgrupoemp_cod.AsString := dbedit8.Text;
    DmDta.qufuncgrupofunc_cod.AsString := dbedit1.Text;
    cbfilial.enabled := true;
    cbfilial.SetFocus;
  end;

end;

procedure TFOREFU.SpeedButton2Click(Sender: TObject);
begin
  if DmDta.quresponsavel.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      close;
      Sql.Clear;


      Sql.add('select * from Empfuncao  where   fun_cod=' + dmdta.quResponsavelfun_cod.AsString);
      open;
      if fieldbyname('fun_unica').asstring = 'S' then
      begin
        close;
        sql.Clear;
        sql.add('select * from EmpResponsavel where fun_cod=' + dmdta.quResponsavelfun_cod.AsString + '  and inativo  <>  ''S''  and emp_cod = ' + dmdta.quResponsavelEmp_cod.AsString + ' and func_cod <> ' + dmdta.quResponsavelemp_cod.AsString);
        open;
        if eof = false then
        begin
          MSGERRO('ATENÇÃO FUNÇÃO ÚNICA! Já exite um funcionario com essa funçao Ativa!');
          EXIT;
        end;
      end;
    end;
    try
      DMDta.SalvarRegistro(quPrincipal2);
      cbfuncao.Enabled := false;
    except
    end;
  end;
end;

procedure TFOREFU.btnCalcel2Click(Sender: TObject);
begin

  DmDta.CancelarRegistro(quPrincipal2);
  cbfuncao.Enabled := false;
end;

procedure TFOREFU.SpeedButton4Click(Sender: TObject);
begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal2);
    except

    end;
  end;

end;

procedure TFOREFU.rdfuncaoClick(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  // argumentos iniciais
{  select * from EmpFuncionario
where emp_cod = :emp_cod
ORDER BY efu_nome}
  argumento := '';
  if cbfuncoes.ItemIndex > 0 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  fun_cod = ' + controle.Items[cbfuncoes.ItemIndex] + ' and  emp_cod=' + edEmpCod.Text + ')';

  if edit1.Text <> '' then
    argumento := argumento + ' and efu_cargo like ''%' + edit1.Text + '%'' ';

  //argumento := 'emp_cod = ' + edEmpCod.Text;
  quprincipal1.close;
  quprincipal1.sql.clear;

  quprincipal1.SQL.Add(' select * from empfuncionario where emp_cod=:emp_cod ');
  quprincipal1.SQL.Add(argumento);
  quprincipal1.SQL.Add(' union all select * from empfuncionario  ');
  quprincipal1.SQL.Add(' where emp_cod in  (select emp_cod from empfuncgrupo where emp_cod2 =:emp_cod and  empfuncionario.func_cod=func_cod) and ');
  quprincipal1.SQL.Add('  func_cod in (select func_cod from empfuncgrupo where emp_cod2 = :emp_cod and  empfuncionario.func_cod=func_cod) ');
  quprincipal1.SQL.Add(argumento);
  quprincipal1.SQL.Add('  order by efu_nome ');
  quprincipal1.ParamByName('emp_cod').AsString := edEmpCod.Text;
  quprincipal1.Open;

  {colunas := '';
  ordem := '';
  tabelas := '';
  colunas := '* ';
  tabelas := ' EmpFuncionario ';
  {if rdfuncao.ItemIndex = 1 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  funcao = ''Contrato'' and  emp_cod=' + edEmpCod.Text + ')';
  if rdfuncao.ItemIndex = 2 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  funcao = ''Compromisso'' and  emp_cod=' + edEmpCod.Text + ')';
  if rdfuncao.ItemIndex = 3 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  funcao = ''Entrevista'' and  emp_cod=' + edEmpCod.Text + ')';
  if rdfuncao.ItemIndex = 4 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  funcao = ''Financeiro'' and  emp_cod=' + edEmpCod.Text + ')';
  if rdfuncao.ItemIndex = 5 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from empresponsavel where  funcao = ''Informações'' and  emp_cod=' + edEmpCod.Text + ')';


  ordem := 'efu_nome';
  DmDta.MontaSql(quPrincipal1, colunas, tabelas, argumento, ordem);}
  estadoNavegando();

end;

procedure TFOREFU.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if dbedit1.Text <> '' then
  begin
    DmDta.qurestricao.Insert;
    DmDta.qurestricaoemp_cod.AsString := dbedit8.Text;
    DmDta.qurestricaofunc_cod.AsString := dbedit1.Text;
    cbInstituicao.enabled := true;
    cbInstituicao.SetFocus;
  end;

end;

procedure TFOREFU.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if DmDta.qurestricao.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    DMDta.SalvarRegistro(quPrincipal3);
    quPrincipal3.close;
    quPrincipal3.open; ;
  end;


end;

procedure TFOREFU.SpeedButton6Click(Sender: TObject);
begin

  DmDta.CancelarRegistro(quPrincipal3);
  cbinstituicao.Enabled := false;
end;

procedure TFOREFU.SpeedButton7Click(Sender: TObject);
begin

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal3);

    except

    end;
  end;
end;

procedure TFOREFU.btFuncaoClick(Sender: TObject);
begin
  if (dmdta.quempFuncionario.state in [dsbrowse]) and
    (dmdta.quEmpFuncionario.IsEmpty = false) then
  begin
    DmDta.quresponsavel.Insert;
    DmDta.quresponsavelemp_cod.AsString := dbedit8.Text;
    DmDta.quresponsavelfunc_cod.AsString := dbedit1.Text;
    dmdta.quResponsavelInativo.AsString := 'N';
    cbfuncao.Enabled := true;
    cbfuncao.SetFocus;
  end;

end;

procedure TFOREFU.SpeedButton8Click(Sender: TObject);
begin
  if (dmdta.quempFuncionario.state in [dsbrowse]) and
    (dmdta.quEmpFuncionario.IsEmpty = false) and
    (DmDta.quresponsavel.state in [dsbrowse]) and
    (DmDta.quresponsavel.IsEmpty = false) then
  begin
    DmDta.quresponsavel.Edit;
    DmDta.quresponsavelemp_cod.AsString := edEmpCod.Text;
    DmDta.quresponsavelfunc_cod.AsString := dbedit1.Text;
    cbfuncao.Enabled := true;
    cbfuncao.SetFocus;
  end;

end;

procedure TFOREFU.SpeedButton9Click(Sender: TObject);
begin
  if DmDta.qurestricao.state in [dsbrowse] then
  begin
    DMDta.qurestricao.edit;
    cbInstituicao.Enabled := true;
    cbInstituicao.SetFocus;
  end;

end;

procedure TFOREFU.SpeedButton10Click(Sender: TObject);
begin
//
  if (dbedit1.Text <> '') and
    (quprincipal1.State in [dsbrowse]) and
    (quprincipal4.IsEmpty = false) then
  begin
    DmDta.qufuncgrupo.edit;
    cbfilial.enabled := true;
    cbfilial.SetFocus;
  end;
end;

procedure TFOREFU.SpeedButton11Click(Sender: TObject);
begin
//
  if DmDta.qufuncgrupo.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    try
      DMDta.SalvarRegistro(quPrincipal4);
    except
    end;
    quPrincipal4.close;
    quPrincipal4.open;
    cbfilial.enabled := false;
  end;

end;

procedure TFOREFU.SpeedButton12Click(Sender: TObject);
begin
 //
  DmDta.CancelarRegistro(quPrincipal4);
  cbfilial.Enabled := false;
end;

procedure TFOREFU.SpeedButton13Click(Sender: TObject);
begin
//
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal4);
    except

    end;
  end;


end;

procedure TFOREFU.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DmDTA.quEmpFuncionarioemp_cod.AsString <> edempcod.Text then //  se for de outra empresa
    if not (gdSelected in State) then // se a célula não está selecionada
    begin
      DBGrid1.Canvas.Brush.Color := clLime; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end
    else
    begin
      DBGrid1.Canvas.Brush.Color := $00808040; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end;

  if DmDTA.quEmpFuncionarioefu_inativo.AsString = 'S' then // Inativo
    if not (gdSelected in State) then // se a célula não está selecionada
    begin
      DBGrid1.Canvas.Brush.Color := $0096A3FE; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end
    else
    begin
      DBGrid1.Canvas.Brush.Color := clred; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end;
end;

procedure TFOREFU.DBEdit8Change(Sender: TObject);
begin
  if dmdta.quEmpFuncionarioEmp_cod.AsInteger > 0 then
    Emp2 := dmdta.quEmpFuncionarioEmp_cod.AsInteger;
end;

procedure TFOREFU.DBEdit25DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORFORM := tFORFORM.Create(Self);
  FORFORM.F2 := True;
  Screen.Cursor := crDefault;
  FORFORM.ShowModal;

  if FORFORM.F2Codigo <> '' then
  begin
    if DmDTA.quEmpFuncionario.Active then
    begin
      if not (DmDta.quEmpFuncionario.State in [dsInsert, dsEdit]) then dmDta.quEmpFuncionario.Edit;
      DmDta.quEmpfuncionarioForm_cod.Text := FORFORM.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFORM.Free;
end;

procedure TFOREFU.btNovoClick(Sender: TObject);
begin
  inherited;
  if quprincipal2.State in [dsbrowse] = false then
     quprincipal2.Cancel;
  if quprincipal3.State in [dsbrowse] = false then
     quprincipal3.Cancel;
  if quprincipal4.State in [dsbrowse] = false then
     quprincipal4.Cancel;
  quprincipal3.close;
  quprincipal4.close;

  quprincipal2.close;
  quprincipal3.close;
  quprincipal4.close;
end;

end.

