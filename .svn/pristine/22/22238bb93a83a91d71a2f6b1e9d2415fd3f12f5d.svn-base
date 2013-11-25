unit TPOTALAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, DBCtrls, Mask;

type
  TFORTALAT = class(TFORMOD3)
    Label1: TLabel;
    edTceCod: TEdit;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    edAlteracaoCod: TEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tce,tal: Integer;
    F2: Boolean;

    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo,talcod: Integer);
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
  end;

var
  FORTALAT: TFORTALAT;

implementation

Uses TPODTA, TPOFNC, TPOIDI, TPOCST;

{$R *.DFM}

procedure TFORTALAT.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'ati_talcod';
  nomeNome   := 'ati_talnome';
  nomeTabela := 'TalAtividade';
  tce       := -1;
  tal       := -1;

  quPrincipal1 := DmDta.quTalAtividade;
  DmDta.dsTalAtividade.DataSet := quPrincipal1;
end;

procedure TFORTALAT.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsTalAtividade.DataSet := DmDta.quTalAtividade;
end;

procedure TFORTALAT.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('tce_cod').Text  := edtceCod.Text;
  quPrincipal1.FieldByName('tal_cod').Text  := edAlteracaoCod.Text;
  quPrincipal1.FieldByName('ati_talcod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORTALAT.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    ParamByName('tce_cod').AsInteger := tce;
    ParamByName('tal_cod').AsInteger := tal;
    Open;
  end;
  inherited;
end;

procedure TFORTALAT.btSalvarClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com a descrição da atividade!');
    DBEdit2.SetFocus;
  end
  else
    inherited;
end;

procedure TFORTALAT.DBGrid1DblClick(Sender: TObject);
begin
  if F2 then
  begin
    F2Codigo := quPrincipal1.FieldByName('ati_talcod').AsString;
    F2Nome   := quPrincipal1.FieldByName('ati_talnome').AsString;
    Close;
  end
  else
    inherited;
end;

procedure TFORTALAT.SetaCodigo(Codigo,talcod: Integer);
begin
  tce := Codigo;
  tal := talcod;
  edTceCod.Text := IntToStr(tce);
  edAlteracaocod.text := IntToStr(talcod);
end;

procedure TFORTALAT.AtualizaDados;
begin
  if quPrincipal1.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal1.FieldByName('ati_talcod').Value := ultimoRegistro;
  end;
end;

procedure TFORTALAT.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(ati_talcod) as Maximo,');
    SQL.Add('  min(ati_talcod) as Minimo');
    SQL.Add('from');
    SQL.Add('  TalAtividade');
    Sql.Add('where');
    Sql.Add('  tce_cod = ' + edtceCod.Text);
    Sql.Add(' and  tal_cod = ' + edalteracaoCod.Text);
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

procedure TFORTALAT.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORTALAT.btExcluirClick(Sender: TObject);
begin
 btEnter.SetFocus;
  if quPrincipal1.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal1);
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;

end;

end.
