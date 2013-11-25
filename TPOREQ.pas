unit TPOREQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TFRMREQ = class(TFORMOD3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREQ: TFRMREQ;

implementation

uses TPODTA, TPOFNC;

{$R *.dfm}

procedure TFRMREQ.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'id_requisito';
  nomeNome := 'requisito';
  quPrincipal1 := DmDta.qurequisito;
  DmDta.dsrequisito.DataSet := quPrincipal1;
end;

procedure TFRMREQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  quPrincipal1.Cancel;
  AbreFechaTabelas(false);
  quPrincipal1.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFRMREQ.btSalvarClick(Sender: TObject);
var
  Insere: boolean;
begin
  inherited;
   btEnter.SetFocus;
  if Salvou then
  begin
    if quPrincipal1.State in [dsInsert, dsEdit] then
    begin
      try
        IF quPrincipal1.State IN [dsInsert] then
           quprincipal1.FieldByName('id_requisito').asinteger := dmdta.NEW_ID('tb_requisito');

        DMDta.SalvarRegistro(quPrincipal1);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

procedure TFRMREQ.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  with quPrincipal1 do
  begin
    Sql.Clear;
    Sql.Add('Select * from tb_requisito order by id_requisito');
    Open;
    Last;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;
  Screen.Cursor := crDefault;
end;

procedure TFRMREQ.btCancelarClick(Sender: TObject);
begin
  inherited;
 btEnter.SetFocus;
  DmDta.CancelarRegistro(quPrincipal1);
  LimpaCampos; // Para não travar nenhuma digitação errada
  pgPrincipal.ActivePage := tbConsulta;
  estadoNavegando;
end;

procedure TFRMREQ.btExcluirClick(Sender: TObject);
begin
  inherited;
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
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

end.

