unit TPOEST6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TFOREST6 = class(TFORMOD3)
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    cbPalPerExp: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure cbPalPerExpClick(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    EstCod: Integer;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure InicializaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    { Public declarations }
  end;

var
  FOREST6: TFOREST6;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFOREST6.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'pal_cod';
  nomeNome   := 'pal_nome';
  nomeTabela := 'PalChave';

  quPrincipal1 := DmDta.quPerPChave;
  DmDta.dsPerPChave.DataSet := quPrincipal1;
end;

procedure TFOREST6.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;
  inherited;
end;

procedure TFOREST6.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsPerPChave.DataSet := DmDta.quPerPChave;
end;

procedure TFOREST6.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('pal_cod').Value := ultimoRegistro;
  end;
  DmDta.quPerPChavePal_perexp.Value := IntToStr(cbPalPerExp.ItemIndex);
end;

procedure TFOREST6.CarregaDados;
begin
  inherited;
  if (not DmDta.quPerPChavepal_perexp.IsNull) and
     (DmDta.quPerPChavepal_perexp.Value <> '') then
    cbPalPerExp.ItemIndex := DmDta.quPerPChavePal_perexp.AsInteger;
end;

procedure TFOREST6.InicializaDados;
begin
  inherited;
  DmDta.quPerPChaveEST_COD.Value := EstCod;
  DBEdit14.SetFocus;
end;

procedure TFOREST6.btSalvarClick(Sender: TObject);
begin
  if DBEdit14.Text = '' then
  begin
    MSGERRO('Entre com a palavra chave do estudante!');
    DBEdit14.SetFocus;
  end
  else if DBEdit16.Text = '' then
  begin
    MSGERRO('Entre com a experência da palavra chave do estudante!');
    DBEdit16.SetFocus;
  end
  else 
    inherited;
end;

procedure TFOREST6.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(pal_cod) as Maximo,');
    SQL.Add('  min(pal_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  PalavraChave');
    SQL.Add('where');
    SQL.Add('  est_cod = :est_cod');
    ParamByName('est_cod').AsInteger := EstCod;
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

procedure TFOREST6.cbPalPerExpClick(Sender: TObject);
begin
  inherited;
  if Not (quPrincipal1.State in [dsInsert,dsEdit]) then
    quPrincipal1.Edit;
end;

procedure TFOREST6.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
