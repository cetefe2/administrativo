unit TPOIFU2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORIFU2 = class(TFORMOD3)
    Label1: TLabel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label2: TLabel;
    edInstNome1: TEdit;
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
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Inst: Integer;
    NovaIns: Boolean;
    InstNome: String;

    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORIFU2: TFORIFU2;

implementation

Uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORIFU2.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'dire_cod';
  nomeNome   := 'idr_nome';
  nomeTabela := 'InstDiretor';

  quPrincipal1 := DmDta.quInstDiretor;
  DmDta.dsInstDiretor.DataSet := quPrincipal1;
end;

procedure TFORIFU2.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsInstDiretor.DataSet := DmDta.quInstDiretor;
end;

procedure TFORIFU2.AtualizaDados;
begin
  inherited;
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('dire_cod').Value := ultimoRegistro;
  end;
end;

procedure TFORIFU2.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('inst_cod').Text  := EdInstCod.Text;
  quPrincipal1.FieldByName('dire_cod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORIFU2.BuscaPrimeiroUltimo;
begin
  If Not NovaIns then
  begin
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select');
      SQL.Add('  max(dire_cod) as Maximo,');
      SQL.Add('  min(dire_cod) as Minimo');
      SQL.Add('from');
      SQL.Add('  InstDiretor');
      SQL.Add('where');
      SQL.Add('  inst_cod = ' + EdInstCod.Text);
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
  end
  else
  begin
    PrimeiroRegistro := 0;
    UltimoRegistro   := 0;
  end;
end;

procedure TFORIFU2.FormShow(Sender: TObject);
begin
  edInstCod.Text   := IntToStr(Inst);
  edInstNome.Text  := InstNome;
  edInstNome1.Text := InstNome;

  with quPrincipal1 do
  begin
    Close;
    ParamByName('inst_cod').AsInteger := Inst;
    Open;
  end;
  inherited;
end;

procedure TFORIFU2.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFORIFU2.btSalvarClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do diretor da instituição!');
    DBEdit2.SetFocus;
  end
  else
    inherited;
end;

procedure TFORIFU2.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
