unit TPOIFU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, cxControls, cxContainer, cxEdit, cxTextEdit, variants,
  cxMaskEdit, cxDBEdit, cxGraphics, cxGroupBox, cxRadioGroup,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFORIFU = class(TFORMOD3)
    Label1: TLabel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    edInstNome1: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    DBEdit15: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    quprincipal3: TQuery;
    usprincipal2: TUpdateSQL;
    Usprincipal3: TUpdateSQL;
    dsFuncoes: TDataSource;
    qryFuncao: TQuery;
    qryFuncaofun_Nome: TStringField;
    qryFuncaofun_cod: TIntegerField;
    QryCursos: TQuery;
    QryCursosInst_cod: TIntegerField;
    QryCursoscur_nome: TStringField;
    QryCursoscur_nivel: TStringField;
    QryCursosCur_cod: TIntegerField;
    dsCurso: TDataSource;
    quprincipal2: TQuery;
    Pagina: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Label16: TLabel;
    btFuncao: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnCalcel2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label21: TLabel;
    SpeedButton8: TSpeedButton;
    Label29: TLabel;
    DBGrid2: TDBGrid;
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
    cxDBRadioGroup1: TcxDBRadioGroup;
    TabSheet3: TTabSheet;
    Label22: TLabel;
    cbOrientacao: TcxDBLookupComboBox;
    cxDBRadioGroup2: TcxDBRadioGroup;
    Label23: TLabel;
    DBGrid4: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit24: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    quprincipal4: TQuery;
    usprincipal4: TUpdateSQL;
    Bevel4: TBevel;
    GroupBox1: TGroupBox;
    ckCoordenadores: TCheckBox;
    CkOrientadores: TCheckBox;
    Label33: TLabel;
    cbfuncoes: TcxComboBox;
    Controle: TListBox;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure btFuncaoClick(Sender: TObject);
    procedure btnCalcel2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbfuncoesExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit22DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Inst: Integer;
    NovaIns: Boolean;
    InstNome: string;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORIFU: TFORIFU;

implementation

uses TPODTA, TPOFNC, TPOCST, TPOFORMT;

{$R *.DFM}

procedure TFORIFU.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'func_cod';
  nomeNome := 'ifu_nome';
  nomeTabela := 'InstFuncionario';
  quPrincipal1 := DmDta.quInstFuncionario;
  DmDta.dsInstFuncionario.DataSet := quPrincipal1;

  quPrincipal2 := DmDta.quresponsavelInstituicao;
  quprincipal2.Close;
  quprincipal2.sql.Clear;
  quprincipal2.sql.Add('SELECT     InstResponsavel .*, InstFuncionario.Ifu_nome AS Nome ');
  quprincipal2.sql.Add(' FROM     InstResponsavel INNER JOIN ');
  quprincipal2.sql.Add('  InstFuncionario ON InstResponsavel.Inst_cod = InstFuncionario.Inst_cod AND ');
  quprincipal2.sql.Add(' InstResponsavel.Func_cod = InstFuncionario.Func_cod');
  quprincipal2.sql.Add(' and  InstResponsavel.Inst_cod =:Instituicao   and  InstResponsavel.func_cod =:codigo order by  InstFuncionario.Ifu_nome ');
  DmDta.dsresponsavelInstituicao.DataSet := quPrincipal2;
  quPrincipal3 := DmDta.quinstCoordenador2;
  quprincipal3.Close;
  quprincipal3.sql.Clear;
  quprincipal3.sql.Add('SELECT    InstCoordenador2 .*, Curso.cur_nome Curso ');
  quprincipal3.sql.Add('FROM         InstCoordenador2');
  quprincipal3.sql.Add(' INNER JOIN   Curso ON InstCoordenador2.Cur_cod = Curso.cur_cod');
  quprincipal3.sql.Add(' where  InstCoordenador2.Inst_cod =:Instituicao  and  InstCoordenador2.func_cod =:codigo order by  Curso.Cur_nome ');
  DmDta.dsinstCoordenador2.DataSet := quPrincipal3;


  quPrincipal4 := DmDta.quinstOrientador;
  quprincipal4.Close;
  quprincipal4.sql.Clear;
  quprincipal4.sql.Add('SELECT    InstOrientador .*, Curso.cur_nome Curso ');
  quprincipal4.sql.Add('FROM         InstOrientador');
  quprincipal4.sql.Add(' INNER JOIN   Curso ON InstOrientador.Cur_cod = Curso.cur_cod');
  quprincipal4.sql.Add(' where  InstOrientador.Inst_cod =:Instituicao  and  InstOrientador.func_cod =:codigo order by  Curso.Cur_nome ');
  DmDta.dsinstOrientador.DataSet := quPrincipal4;

end;

procedure TFORIFU.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsInstFuncionario.DataSet := DmDta.quInstFuncionario;
end;

procedure TFORIFU.AtualizaDados;
begin
  inherited;

  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('func_cod').Value := ultimoRegistro;
  end;

end;

procedure TFORIFU.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('inst_cod').Text := EdInstCod.Text;
  quPrincipal1.FieldByName('func_cod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORIFU.BuscaPrimeiroUltimo;
begin
  if not NovaIns then
  begin
    with TQuery.Create(nil) do
    begin
      DataBaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(func_cod) as Maximo,');
      SQL.Add('  min(func_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  InstFuncionario');
      SQL.Add('where');
      SQL.Add('  inst_cod = ' + EdInstCod.Text);
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

procedure TFORIFU.FormShow(Sender: TObject);
begin
  edInstCod.Text := IntToStr(Inst);
  edInstNome.Text := InstNome;
  edInstNome1.Text := InstNome;

  with quPrincipal1 do
  begin
    Close;
    ParamByName('inst_cod').AsInteger := Inst;
    Open;
  end;
  with qrycursos do
  begin
    Close;
    ParamByName('instituicao').AsInteger := Inst;
    Open;
  end;
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
  if NovaIns then
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro := 0;
  end;
  inherited;
end;

procedure TFORIFU.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFORIFU.btSalvarClick(Sender: TObject);
var
  i, f: string;

begin
  if quPrincipal1.State in [dsedit, dsinsert] = false then
    exit;
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do funcionário da instituição!');
    DBEdit2.SetFocus;
  end
  else
  begin
    inherited;
    // Atualiza a query de instituição
    i := EdInstCod.Text;
    f := dbedit1.Text;
    quprincipal1.close;
    quprincipal1.open;
    quprincipal1.Locate('inst_cod;func_cod', vararrayof([strtoint(i), strtoint(f)]),[]);
    DBEdit1Change(Sender);

    if quprincipal2.IsEmpty then
    begin
      pgprincipal.ActivePage := tbregistro;
      btfuncao.Click;
    end;
  end;

end;

procedure TFORIFU.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORIFU.DBEdit1Change(Sender: TObject);
begin


  if (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin

    try
      if quprincipal2.State in [dsbrowse] = false then
        quprincipal2.Cancel;

      if quprincipal2.UpdatesPending then
      begin
        quprincipal2.ApplyUpdates;
        quprincipal2.CommitUpdates;
      end;

      if quprincipal2.Active then
        quPrincipal2.close;
    finally
    end;
    try
      if quprincipal3.State in [dsbrowse] = false then
        quprincipal3.Cancel;
      if quprincipal3.UpdatesPending then
      begin
        quprincipal3.ApplyUpdates;
        quprincipal3.CommitUpdates;
      end;

      if quprincipal3.Active then
        quPrincipal3.close;
    finally
    end;

    try
      if quprincipal4.State in [dsbrowse] = false then
        quprincipal4.Cancel;
      if quprincipal4.UpdatesPending then
      begin
        quprincipal4.ApplyUpdates;
        quprincipal4.CommitUpdates;
      end;

      if quprincipal4.Active then
        quPrincipal4.close;
    finally
    end;

    quPrincipal2.parambyname('instituicao').Text := EdInstCod.Text;
    quPrincipal2.parambyname('codigo').text := dbedit1.Text;
    quPrincipal3.parambyname('instituicao').Text := EdInstCod.Text;
    quPrincipal3.parambyname('codigo').text := dbedit1.Text;
    quPrincipal4.parambyname('instituicao').Text := EdInstCod.Text;
    quPrincipal4.parambyname('codigo').text := dbedit1.Text;
    quPrincipal2.open;
    quPrincipal4.open;
    quprincipal3.open;
  end;
end;

procedure TFORIFU.btFuncaoClick(Sender: TObject);
begin

  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quresponsavelInstituicao.Insert;
    DmDta.quresponsavelInstituicaoinst_cod.AsString := dbedit8.Text;
    DmDta.quresponsavelInstituicaofunc_cod.AsString := dbedit1.Text;
    DmDta.quresponsavelInstituicaoinativo.AsString := 'N';
    cbfuncao.Enabled := true;
    cbfuncao.SetFocus;
  end;
end;

procedure TFORIFU.btnCalcel2Click(Sender: TObject);
begin

  if DmDta.quresponsavelInstituicao.state in [dsinsert, dsedit] then
  begin
    DmDta.CancelarRegistro(dmdta.quresponsavelInstituicao);
    cbfuncao.Enabled := false;
  end;
end;

procedure TFORIFU.SpeedButton2Click(Sender: TObject);
begin
  if DmDta.quresponsavelInstituicao.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    if dmdta.quResponsavelInstituicaofun_cod.AsString <> '' then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        close;
        Sql.Clear;
        Sql.add('select * from instfuncao  where   fun_cod=' + dmdta.quResponsavelInstituicaofun_cod.AsString);
        open;
        if fieldbyname('fun_unica').asstring = 'S' then
        begin
          close;
          sql.Clear;
          sql.add('select * from instresponsavel where fun_cod=' + dmdta.quResponsavelInstituicaofun_cod.AsString + '  and inativo  <>  ''S''  and inst_cod = ' + dmdta.quResponsavelInstituicaoinst_cod.AsString + ' and func_cod <> ' + dmdta.quResponsavelInstituicaoinst_cod.AsString);
          open;
          if eof = false then
          begin
            MSGERRO('ATENÇÃO FUNÇÃO ÚNICA! Já exite um funcionario com essa funçao Ativa!');
            EXIT;
          end;
        end;
      end;
      DmDta.salvarRegistro(quprincipal2);
     // (dmdta.quresponsavelInstituicao);
      cbfuncao.Enabled := false;
      //quprincipal2.close;
      //quprincipal2.open;

    end
    else
      MSGERRO('Entre com o uma funcao para o funcionário!');
  end;
end;

procedure TFORIFU.SpeedButton4Click(Sender: TObject);
begin

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal2);
    except
    end;
  end;
end;

procedure TFORIFU.SpeedButton8Click(Sender: TObject);
begin
//  inherited;
  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quresponsavelInstituicao.edit;
    cbfuncao.Enabled := true;
    cbfuncao.SetFocus;
  end;
end;

procedure TFORIFU.SpeedButton3Click(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quinstCoordenador2.Insert;
    DmDta.quinstCoordenador2inst_cod.AsString := dbedit8.Text;
    DmDta.quinstCoordenador2func_cod.AsString := dbedit1.Text;
    DmDta.quinstCoordenador2Ativo.AsString := 'S';
    cbinstituicao.Enabled := true;
    cbinstituicao.SetFocus;
  end;

end;

procedure TFORIFU.SpeedButton9Click(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quinstCoordenador2.edit;
    cbinstituicao.Enabled := true;
    cbinstituicao.SetFocus;
  end;

end;

procedure TFORIFU.SpeedButton5Click(Sender: TObject);
begin
  if DmDta.quinstCoordenador2.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    if dmdta.quinstCoordenador2cur_cod.AsString <> '' then
    begin
      DmDta.salvarRegistro(dmdta.quinstCoordenador2);
      cbinstituicao.Enabled := false;
      quprincipal3.close;
      quprincipal3.open;
    end
    else
      MSGERRO('Entre com o uma funcao para o funcionário!');
  end;



end;

procedure TFORIFU.SpeedButton6Click(Sender: TObject);
begin
  if DmDta.quinstCoordenador2.state in [dsinsert, dsedit] then
  begin
    DmDta.CancelarRegistro(dmdta.quinstCoordenador2);
    cbinstituicao.Enabled := false;
  end;

end;

procedure TFORIFU.SpeedButton7Click(Sender: TObject);
begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal3);
    except
    end;
  end;

end;

procedure TFORIFU.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DmDTA.quinstFuncionarioifu_inativo.AsString = 'S' then // Inativo
    if not (gdSelected in State) then // se a célula não está selecionada
    begin
      DBGrid1.Canvas.Brush.Color := $0096A3FE; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(rect, Column.Field, State); // pinta o texto padrão
    end;


end;

procedure TFORIFU.SpeedButton13Click(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quinstOrientador.Insert;
    DmDta.quinstOrientadorinst_cod.AsString := dbedit8.Text;
    DmDta.quinstOrientadorfunc_cod.AsString := dbedit1.Text;
    DmDta.quinstOrientadorAtivo.AsString := 'S';
    cbOrientacao.Enabled := true;
    cbOrientacao.SetFocus;
  end;


end;

procedure TFORIFU.SpeedButton12Click(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.quInstFuncionario.state in [dsbrowse]) and
    (dmdta.quInstFuncionario.IsEmpty = false) then
  begin
    DmDta.quinstOrientador.edit;
    cborientacao.Enabled := true;
    cborientacao.SetFocus;
  end;

end;

procedure TFORIFU.SpeedButton11Click(Sender: TObject);
begin
  if DmDta.quinstOrientador.state in [dsinsert, dsedit] then
  begin
    SelectNext(ActiveControl, true, true);
    if dmdta.quinstOrientadorCur_cod.AsString <> '' then
    begin
      DmDta.salvarRegistro(dmdta.quinstOrientador);
      cbOrientacao.Enabled := false;
      quprincipal4.close;
      quprincipal4.open;
    end
    else
      MSGERRO('Entre com o uma Curso para o Orientador!');
  end;


end;

procedure TFORIFU.SpeedButton10Click(Sender: TObject);
begin
  if DmDta.quinstOrientador.state in [dsinsert, dsedit] then
  begin
    DmDta.CancelarRegistro(dmdta.quinstOrientador);
    cbOrientacao.Enabled := false;
  end;


end;

procedure TFORIFU.SpeedButton1Click(Sender: TObject);
begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal4);
    except
    end;
  end;

end;

procedure TFORIFU.cbfuncoesExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  argumento := '';
  if cbfuncoes.ItemIndex > 0 then
    argumento := argumento + ' and  Func_cod  in ( select func_cod from instresponsavel where  fun_cod = ' + controle.Items[cbfuncoes.ItemIndex] + ' and  inst_cod=' + edInstCod.Text + ')';
  if ckOrientadores.Checked then
    argumento := argumento + ' and func_cod in (select func_cod from instOrientador where  inst_cod=' + edInstCod.Text + ')';

  if ckCoordenadores.Checked then
    argumento := argumento + ' and func_cod in (select func_cod from instCoordenador2 where  inst_cod=' + edInstCod.Text + ')';


  quprincipal1.close;
  quprincipal1.sql.clear;
  quprincipal1.SQL.Add(' select * from   Instfuncionario where   inst_cod = :inst_cod ');
  quprincipal1.SQL.Add(argumento);
  quprincipal1.SQL.Add('order by   ifu_nome  ');
  quprincipal1.ParamByName('inst_cod').AsInteger := Inst;
  quprincipal1.Open;
end;

procedure TFORIFU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  inst := strtoint(edinstcod.text);
end;

procedure TFORIFU.DBEdit22DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORFORM := tFORFORM.Create(Self);
  FORFORM.F2 := True;
  Screen.Cursor := crDefault;
  FORFORM.ShowModal;

  if FORFORM.F2Codigo <> '' then
  begin
    if DmDTA.quInstFuncionario.Active then
    begin
      if not (DmDta.quInstFuncionario.State in [dsInsert, dsEdit]) then dmDta.quInstFuncionario.Edit;
      DmDta.quInstfuncionarioForm_cod.Text := FORFORM.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFORM.Free;
end;

procedure TFORIFU.btNovoClick(Sender: TObject);
begin
  inherited;
  if quprincipal2.State in [dsbrowse] = false then
    quprincipal2.Cancel;
  if quprincipal3.State in [dsbrowse] = false then
    quprincipal3.Cancel;
  if quprincipal4.State in [dsbrowse] = false then
    quprincipal4.Cancel;
  quprincipal2.close;
  quprincipal3.close;
  quprincipal4.close;
end;

end.

