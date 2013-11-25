unit TPOIHI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TFORIHI = class(TFORMOD3)
    Label1: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    edEmpCod: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    eddata: TDBDateEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    Inst: Integer;
    InstNome: string;
    NovaInst: Boolean;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORIHI: TFORIHI;

implementation

uses TPODTA, TPOFNC, TPOCST, TPOIFU, TPOFUN;
{$R *.dfm}

procedure TFORIHI.CarregaDados;
begin
  inherited;
end;

procedure TFORIHI.LimpaCampos;
begin
  inherited;
end;

procedure TFORIHI.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    DmDta.quInstHistoricoInst_cod.Text := DmDta.quInstituicaoInst_cod.Text;
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('hist_cod').Value := ultimoRegistro;
  end;

  {if edData.Text <> '  /  /    ' then
    DmDta.quInstHistoricoehi_dthist.AsString := edData.Text
  else
    DmDta.quInstHistoricoehi_dthist.AsString := '';}
end;

procedure TFORIHI.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('inst_cod').Text := edEmpCod.Text;
  quprincipal1.FieldByName('ehi_dthist').value := date;
  //edData.Text  := FormatDateTime('dd/mm/yyyy',Date);
  DBEdit1.SetFocus;
end;

procedure TFORIHI.BuscaPrimeiroUltimo;
begin
  inherited;
  if not NovaInst then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(hist_cod) as Maximo,');
      SQL.Add('  min(hist_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  InstHistorico (nolock)');
      SQL.Add('where');
      SQL.Add('  Inst_cod = :Inst_cod');
      ParamByName('Inst_cod').AsInteger := StrToInt(EdEmpCod.Text);
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

procedure TFORIHI.btSalvarClick(Sender: TObject);
begin
  if edData.Text = '' then
  begin
    MSGERRO('Entre com a data do histórico!');
    DBEdit2.SetFocus;
  end
  else
    if DBEdit2.Text = '' then
    begin
      MSGERRO('Entre com o nome do funcionário do histórico!');
      DBEdit2.SetFocus;
    end
    else
      if DBMemo1.Text = '' then
      begin
        MSGERRO('Entre com a descrição do histórico!');
        DBMemo1.SetFocus;
      end
      else
        inherited;


end;

procedure TFORIHI.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORIHI.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'func_cod';
  nomeNome := 'ifu_nome';
  nomeTabela := 'InstFuncionario';

  quPrincipal1 := DmDta.quInstHistorico;
  DmDta.dsInstHistorico.DataSet := quPrincipal1;

end;

procedure TFORIHI.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> '' then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstHistorico.State in [dsInsert, dsEdit]) then DmDta.quInstHistorico.Edit;
      DmDta.quInstHistoricofunc_nome.Text := DmDta.BuscaCampo2('InstFuncionario', 'ifu_nome', 'Inst_cod', 'func_cod', StrToInt(edEmpCod.Text), StrToInt(DBEdit1.Text));

      if DmDta.quInstHistoricofunc_nome.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit1.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstHistorico.Active then
    begin
      if not (DmDta.quInstHistorico.State in [dsInsert, dsEdit]) then DmDta.quInstHistorico.Edit;
      DmDta.quInstHistoricofunc_nome.Text := '';
    end;
  end;

end;

procedure TFORIHI.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORIFU := TFORIFU.Create(Self);
  FORIFU.Inst := DmDta.quInstituicaoInst_cod.AsInteger;
  FORIFU.F2 := True;
  Screen.Cursor := crDefault;
  FORIFU.ShowModal;
  if FORIFU.F2Codigo <> '' then
  begin
    if DmDta.quInstHistorico.Active then
    begin
      if not (DmDta.quInstHistorico.State in [dsInsert, dsEdit]) then dmDta.quInstHistorico.Edit;
      DmDta.quInstHistoricofunc_cod.Text := FORIFU.F2Codigo;
      DmDta.quInstHistoricofunc_nome.Text := FORIFU.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORIFU.Free;
end;

procedure TFORIHI.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('inst_cod').AsInteger := Inst;
    Open;
  end;
  if NovaInst then
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro := 0;
  end;
  inherited;

end;

procedure TFORIHI.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if DBEdit6.Text <> '' then
  begin
    if DmDta.quInstituicao.Active then
    begin
      if not (DmDta.quInstHistorico.State in [dsInsert, dsEdit]) then DmDta.quInstHistorico.Edit;
      DmDta.quInstHistoricofunc_Cetefe.Text := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', StrToInt(DBEdit6.Text));

      if DmDta.quInstHistoricofunc_cetefe.Text = '' then
      begin
        MSGERRO('Funcionário inexistente. Selecione outro funcionário!');
        DBEdit6.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    if DmDta.quInstHistorico.Active then
    begin
      if not (DmDta.quInstHistorico.State in [dsInsert, dsEdit]) then DmDta.quInstHistorico.Edit;
      DmDta.quInstHistoricofunc_cetefe.Text := '';
    end;
  end;

end;

procedure TFORIHI.DBEdit6DblClick(Sender: TObject);
begin
  inherited;
  inherited;
  Screen.Cursor := crHourGlass;
  FORFUN := TFORFUN.Create(Self);
  FORFUN.tipo := ''; //DmDta.quEmpresaEmp_cod.AsInteger;
  FORFUN.F2 := True;
  Screen.Cursor := crDefault;
  FORFUN.ShowModal;

  if FORFUN.F2Codigo <> '' then
  begin
    if DmDta.quinstHistorico.Active then
    begin
      if not (DmDta.quinstHistorico.State in [dsInsert, dsEdit]) then
        dmDta.quinstHistorico.Edit;
      DmDta.quinstHistoricofunccetefe_cod.AsString := FORFUN.F2Codigo;
      DmDta.quinstHistoricofunc_cetefe.AsString := FORFUN.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFUN.Free;
end;

procedure TFORIHI.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORIHI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  quprincipal1.Close;
end;

end.

