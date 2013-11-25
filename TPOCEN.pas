unit TPOCEN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, StdCtrls, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, DBCtrls, Mask;

type
  TFORCEN = class(TFORMOD3)
    edAno: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edMes: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    edDtCen: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure edDtCenExit(Sender: TObject);
    procedure edDtCenKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ValorAnterior : Double;
  public
    ano, mes: Integer;
    procedure BuscaPrimeiroUltimo; override;
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    { Public declarations }
  end;

var
  FORCEN: TFORCEN;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORCEN.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('cen_cod').Value := ultimoRegistro;
  end;

  quPrincipal1.FieldByName('cen_data').Text := edDtCen.Text;
end;

procedure TFORCEN.BuscaPrimeiroUltimo;
begin
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select MAX(cen_cod) as MAXIMO, MIN(cen_cod) as MINIMO FROM Entrada');
    Sql.Add('where cai_ano = ' + IntToStr(ano));
    Sql.Add('and cai_mes = ' + IntToStr(Mes));
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
    Free;
  end;
end;

procedure TFORCEN.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'cen_cod';
  nomeNome   := 'cen_data';
  nomeTabela := 'Entrada';

  quPrincipal1 := DmDta.quEntrada;
  DmDta.dsEntrada.DataSet := quPrincipal1;
end;

procedure TFORCEN.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsEntrada.DataSet := DmDta.quEntrada;
end;

procedure TFORCEN.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    ParamByName('cai_ano').AsInteger := Ano;
    ParamByName('cai_mes').AsInteger := Mes;
    Open;
  end;
  inherited;
  edAno.Text := IntToStr(Ano);
  edMes.Text := IntToStr(Mes);
end;

procedure TFORCEN.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('cai_ano').Value  := ano;
  quPrincipal1.FieldByName('cai_mes').Value  := mes;
  if DayOfWeek(Date) = 2 then // Segunda feira
    edDtCen.Text := FormatDateTime('dd/mm/yyyy',Date-3)
  else
    edDtCen.Text := FormatDateTime('dd/mm/yyyy',Date-1);
  valorAnterior := 0;
  edDtCen.SetFocus;
end;

procedure TFORCEN.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ValorAnterior := quPrincipal1.FieldByName('cen_valor').AsFloat;
end;

procedure TFORCEN.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if edDtCen.Text = '  /  /    ' then
    begin
      MSGERRO('Entre com a data da entrada!');
      edDtCen.SetFocus;
      Salvou := False;
    end
    else if DBEdit4.Text = '' then
    begin
      MSGERRO('Entre com o valor da entrada!');
      DBEdit4.SetFocus;
      Salvou := False;
    end
    else
    begin
      if quPrincipal1.State in [dsInsert, dsEdit] then
      begin
        try
          AtualizaDados;
          DMDta.SalvarRegistro(quPrincipal1);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end;

      estadoNavegando;
      pgPrincipal.ActivePage := tbConsulta;
    end;
  end;
end;

procedure TFORCEN.btExcluirClick(Sender: TObject);
begin
  if not quPrincipal1.CachedUpdates then Exit;

  if quPrincipal1.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal1);
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORCEN.btNovoClick(Sender: TObject);
begin
  if not quPrincipal1.CachedUpdates then Exit;
  inherited;
end;

procedure TFORCEN.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORCEN.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
  Salvou := True;
end;

procedure TFORCEN.edDtCenExit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
    begin
      TMaskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFORCEN.CarregaDados;
begin
  if not quPrincipal1.FieldByName('cen_data').IsNull then
    edDtCen.Text := quPrincipal1.FieldByName('cen_data').Text;
end;

procedure TFORCEN.LimpaCampos;
begin
  inherited;
  edDtCen.Clear;
end;

procedure TFORCEN.edDtCenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
end;

procedure TFORCEN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DmDta.quCaixa.Edit;
  DmDta.quCaixa.Post;
end;

end.
