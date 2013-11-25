unit TPOCSA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, StdCtrls, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, DBCtrls, Mask;

type
  TFORCSA = class(TFORMOD3)
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
    Label7: TLabel;
    edDspNome: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    quDespesa: TQuery;
    quDespesadsp_cod: TIntegerField;
    quDespesadsp_nome: TStringField;
    dsDespesa: TDataSource;
    edDtCsa: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure edDtCsaExit(Sender: TObject);
    procedure edDtCsaKeyPress(Sender: TObject; var Key: Char);
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
    procedure AbreFechaTabelas(Active: Boolean); override;
    procedure LimpaCampos; override;
    { Public declarations }
  end;

var
  FORCSA: TFORCSA;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORCSA.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('csa_cod').Value := ultimoRegistro;
  end;

  quPrincipal1.FieldByName('csa_data').Text := edDtCsa.Text;
end;

procedure TFORCSA.BuscaPrimeiroUltimo;
begin
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select MAX(csa_cod) as MAXIMO, MIN(csa_cod) as MINIMO FROM Lancamento');
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

procedure TFORCSA.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'csa_cod';
  nomeNome   := 'csa_data';
  nomeTabela := 'Lancamento';

  quPrincipal1 := DmDta.quLancamento;
  DmDta.dsLancamento.DataSet := quPrincipal1;
end;

procedure TFORCSA.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsLancamento.DataSet := DmDta.quLancamento;
end;

procedure TFORCSA.FormShow(Sender: TObject);
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

procedure TFORCSA.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('cai_ano').Value  := ano;
  quPrincipal1.FieldByName('cai_mes').Value  := mes;
  if DayOfWeek(Date) = 2 then // Segunda feira
    edDtCsa.Text := FormatDateTime('dd/mm/yyyy',Date-3)
  else
    edDtCsa.Text := FormatDateTime('dd/mm/yyyy',Date-1);
  valorAnterior := 0;
  edDtCsa.SetFocus;
end;

procedure TFORCSA.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ValorAnterior := quPrincipal1.FieldByName('csa_valor').AsFloat;
end;

procedure TFORCSA.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if edDtCsa.Text = '  /  /    ' then
    begin
      MSGERRO('Entre com a data da saída!');
      edDtCsa.SetFocus;
      Salvou := False;
    end
    else if DBEdit4.Text = '' then
    begin
      MSGERRO('Entre com o valor da saída!');
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

procedure TFORCSA.btExcluirClick(Sender: TObject);
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

procedure TFORCSA.btNovoClick(Sender: TObject);
begin
  if not quPrincipal1.CachedUpdates then Exit;
  inherited;
end;

procedure TFORCSA.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORCSA.CarregaDados;
begin
  if not quPrincipal1.FieldByName('csa_data').IsNull then
    edDtCsa.Text := quPrincipal1.FieldByName('csa_data').Text;
end;

procedure TFORCSA.AbreFechaTabelas(Active: Boolean);
begin
  quDespesa.Active := Active;
end;

procedure TFORCSA.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  edDspNome.Text := quDespesadsp_nome.Text;
end;

procedure TFORCSA.LimpaCampos;
begin
  edDspNome.Text  := '';
  edDtCsa.Clear;
end;

procedure TFORCSA.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
  Salvou := True;
end;

procedure TFORCSA.edDtCsaExit(Sender: TObject);
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

procedure TFORCSA.edDtCsaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (quPrincipal1.State in [dsInsert,dsEdit]) then quPrincipal1.Edit;
end;

procedure TFORCSA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DmDta.quCaixa.Edit;
  DmDta.quCaixa.Post;
end;

end.
