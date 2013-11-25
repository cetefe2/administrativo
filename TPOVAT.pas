unit TPOVAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORVAT = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Vaga: Integer;
    F2: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORVAT: TFORVAT;

implementation

Uses TPODTA, TPOFNC, TPOIDI, TPOCST;

{$R *.DFM}

procedure TFORVAT.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'ati_cod';
  nomeNome   := 'ati_nome';
  nomeTabela := 'VagaAtividade';
  vaga       := -1;

  quPrincipal1 := DmDta.quVagaAtividade;
  DmDta.dsVagaAtividade.DataSet := quPrincipal1;
end;

procedure TFORVAT.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsVagaAtividade.DataSet := DmDta.quVagaAtividade;
end;

procedure TFORVAT.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('vag_cod').Text  := edVagCod.Text;
  quPrincipal1.FieldByName('ati_cod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORVAT.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    ParamByName('vag_cod').AsInteger := Vaga;
    Open;
  end;
  inherited;
end;

procedure TFORVAT.btSalvarClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com a descrição da atividade!');
    DBEdit2.SetFocus;
  end
  else
    inherited;
end;

procedure TFORVAT.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('idi_cod').AsString;
    F2Nome   := quPrincipal1.FieldByName('idi_nome').AsString;
    Close;
  end
  else
    inherited;
end;

procedure TFORVAT.SetaCodigo(Codigo: Integer);
begin
  Vaga := Codigo;
  edVagCod.Text := IntToStr(Vaga);
end;

procedure TFORVAT.AtualizaDados;
begin
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('ati_cod').Value := ultimoRegistro;
  end;
end;

procedure TFORVAT.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(ati_cod) as Maximo,');
    SQL.Add('  min(ati_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  VagaAtividade');
    Sql.Add('where');
    Sql.Add('  vag_cod = ' + edVagCod.Text);
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

procedure TFORVAT.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
