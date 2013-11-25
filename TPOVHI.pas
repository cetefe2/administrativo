unit TPOVHI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TFORVHI = class(TFORMOD3)
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
  private
    { Private declarations }
  public
    { Public declarations }
    Emp: Integer;
    Vag: Integer;
    VagNome: string;
    NovaVag: Boolean;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORVHI: TFORVHI;

implementation

uses TPODTA, TPOFNC, TPOCST, TPOIFU, TPOFUN, TPOEFU;
{$R *.dfm}

procedure TFORVHI.CarregaDados;
begin
  inherited;
end;

procedure TFORVHI.LimpaCampos;
begin
  inherited;
end;

procedure TFORVHI.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    DmDta.quVagHistoricoVag_cod.AsInteger := Vag;
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('hist_cod').Value := ultimoRegistro;
  end;

  {if edData.Text <> '  /  /    ' then
    DmDta.quInstHistoricoehi_dthist.AsString := edData.Text
  else
    DmDta.quInstHistoricoehi_dthist.AsString := '';}
end;

procedure TFORVHI.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('vag_cod').Text := edEmpCod.Text;
  quprincipal1.FieldByName('vhi_dthist').value := date;
  quprincipal1.FieldByName('emp_cod').value := Emp;
  //edData.Text  := FormatDateTime('dd/mm/yyyy',Date);
  DBEdit1.SetFocus;
end;

procedure TFORVHI.BuscaPrimeiroUltimo;
begin
  inherited;
  if not NovaVag then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(hist_cod) as Maximo,');
      SQL.Add('  min(hist_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  VagHistorico (nolock)');
      SQL.Add('where');
      SQL.Add('  Vag_cod = :Vag_cod');
      ParamByName('Vag_cod').AsInteger := StrToInt(EdEmpCod.Text);
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

procedure TFORVHI.btSalvarClick(Sender: TObject);
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
        //dmdta.SalvarRegistro(quprincipal1);


end;

procedure TFORVHI.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORVHI.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'func_cod';
  nomeNome := 'efu_nome';
  nomeTabela := 'EmpFuncionario';

  quPrincipal1 := DmDta.quVagHistorico;
  DmDta.dsVagHistorico.DataSet := quPrincipal1;

end;

procedure TFORVHI.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> '' then
  begin
    if DmDta.quVagHistorico.State in [dsinsert, dsedit] then
    begin
     { if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then DmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunc_nome.Text := DmDta.BuscaCampo2('EmpFuncionario', 'efu_nome', 'emp_cod', 'func_cod', emp, StrToInt(DBEdit1.Text));}

      if DmDta.quVagHistoricofunc_nome.Text = '' then
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
    if DmDta.quVagHistorico.Active then
    begin
      if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then DmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunc_nome.Text := '';
    end;
  end;
end;

procedure TFORVHI.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREFU := TFOREFU.Create(Self);
  FOREFU.Emp := Emp;
  FOREFU.EmpNome := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', emp);
  FOREFU.F2 := True;

  Screen.Cursor := crDefault;
  FOREFU.ShowModal;
  if FOREFU.F2Codigo <> '' then
  begin
    if DmDta.quVagHistorico.Active then
    begin
      if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then dmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunc_cod.Text := FOREFU.F2Codigo;
   //   DmDta.quVagHistoricofunc_nome.Text := FOREFU.F2Nome;
      DmDta.quVagHistoricoemp_cod1.AsInteger := FOREFU.Emp2;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREFU.Free;
end;

procedure TFORVHI.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('vag_cod').AsInteger := Vag;
    Open;
  end;
  if NovaVag then
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro := 0;
  end;
  inherited;

end;

procedure TFORVHI.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if DBEdit6.Text <> '' then
  begin
    if DmDta.quVaga.Active then
    begin
      if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then DmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunc_Cetefe.Text := DmDta.BuscaCampo('Funcionario', 'func_nome', 'func_cod', StrToInt(DBEdit6.Text));

      if DmDta.quVagHistoricofunc_cetefe.Text = '' then
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
    if DmDta.quVagHistorico.Active then
    begin
      if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then DmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunc_cetefe.Text := '';
    end;
  end;

end;

procedure TFORVHI.DBEdit6DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORFUN := TFORFUN.Create(Self);
  FORFUN.tipo := ''; //DmDta.quEmpresaEmp_cod.AsInteger;
  FORFUN.F2 := True;
  Screen.Cursor := crDefault;
  FORFUN.ShowModal;
  if FORFUN.F2Codigo <> '' then
  begin
    if DmDta.quVagHistorico.Active then
    begin
      if not (DmDta.quVagHistorico.State in [dsInsert, dsEdit]) then
        dmDta.quVagHistorico.Edit;
      DmDta.quVagHistoricofunccetefe_cod.AsString := FORFUN.F2Codigo;
      DmDta.quVagHistoricofunc_cetefe.AsString := FORFUN.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORFUN.Free;
end;

procedure TFORVHI.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.

