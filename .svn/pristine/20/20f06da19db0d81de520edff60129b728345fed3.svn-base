unit TPOEST7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TFOREST7 = class(TFORMOD3)
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit22: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
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
  FOREST7: TFOREST7;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFOREST7.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'cure_cod';
  nomeNome   := 'cure_descricao';
  nomeTabela := 'PerOutrosCursos';

  quPrincipal1 := DmDta.quPerOutCursos;
  DmDta.dsPerOutCursos.DataSet := quPrincipal1;
end;

procedure TFOREST7.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;
  inherited;
end;

procedure TFOREST7.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsPerOutCursos.DataSet := DmDta.quPerOutCursos;
end;

procedure TFOREST7.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('cure_cod').Value := ultimoRegistro;
  end;
end;

procedure TFOREST7.CarregaDados;
begin
  inherited;
end;

procedure TFOREST7.InicializaDados;
begin
  inherited;
  DmDta.quPerOutCursosEST_COD.Value      := EstCod;
  DmDta.quPerOutCursosCure_diploma.Value := '0';
  DBEdit20.SetFocus;
end;

procedure TFOREST7.btSalvarClick(Sender: TObject);
begin
  if DBEdit20.Text = '' then
  begin
    MSGERRO('Entre com a descrição do curso do estudante!');
    DBEdit20.SetFocus;
  end
  else
    inherited;
end;

procedure TFOREST7.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(cure_cod) as Maximo,');
    SQL.Add('  min(cure_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  PerOutrosCursos');
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

procedure TFOREST7.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
