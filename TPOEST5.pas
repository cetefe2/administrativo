unit TPOEST5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TFOREST5 = class(TFORMOD3)
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBMemo3: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
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
  FOREST5: TFOREST5;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFOREST5.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'exp_cod';
  nomeNome   := 'exp_cargo';
  nomeTabela := 'Experiencia';

  quPrincipal1 := DmDta.quExperiencia;
  DmDta.dsExperiencia.DataSet := quPrincipal1;
end;

procedure TFOREST5.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;
  inherited;
end;

procedure TFOREST5.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsExperiencia.DataSet := DmDta.quExperiencia;
end;

procedure TFOREST5.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('exp_cod').Value := ultimoRegistro;
  end;
end;

procedure TFOREST5.CarregaDados;
begin
  inherited;
end;

procedure TFOREST5.InicializaDados;
begin
  inherited;
  DmDta.quExperienciaEST_COD.Value := EstCod;
  DBEdit28.SetFocus;
end;

procedure TFOREST5.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(exp_cod) as Maximo,');
    SQL.Add('  min(exp_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  Experiencia');
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

procedure TFOREST5.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
