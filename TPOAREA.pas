unit TPOAREA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD, DBTables, DB, ExtCtrls, Grids, DBGrids, StdCtrls,
  ComCtrls, Buttons, Mask, DBCtrls;

type
  TFORAREA = class(TFORMOD)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure edParametroExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Selecao: integer;
    procedure InicializaDados; override;

  end;

var
  FORAREA: TFORAREA;

implementation
uses TPODTA, TPOFNC, TPOCST, untLibera;
{$R *.dfm}

procedure TFORAREA.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('Area_cod').Value := 0;
  DBEdit2.SetFocus;
end;


procedure TFORAREA.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'Area_cod';
  nomeNome := 'Area_nome';
  quPrincipal := DmDta.quAreaEstagio;
  DmDta.dsSelecao.DataSet := quPrincipal;
end;

procedure TFORAREA.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORAREA.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);
end;

procedure TFORAREA.edParametroExit(Sender: TObject);
var argumento, ordem: string;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'Area_cod';
          if edParametro.Text <> '' then
            argumento := 'Area_cod = ' + edParametro.Text;
          DMDta.montaSql(quPrincipal, '*', 'AreaEstagio', argumento, ordem);
          estadoNavegando();
        end;
      1:
        begin
          ordem := 'Area_nome';
          if edParametro.Text <> '' then
            argumento := 'Area_nome like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quPrincipal, '*', 'AreaEstagio', argumento, ordem);
          estadoNavegando();
        end;
    end;
  end;

end;

procedure TFORAREA.btSalvarClick(Sender: TObject);
var
  Insere: boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do Área de Estágio!');
    DBEdit2.SetFocus;
  end
  else
  begin
    Insere := quPrincipal.State = dsInsert;

    inherited;

    // refresh
    if insere then
    begin
      quPrincipal.Close;
      quPrincipal.Open;
      quPrincipal.Last;
    end;
  end;

end;

procedure TFORAREA.btExcluirClick(Sender: TObject);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Add('select Area_cod from Vaga');
    Sql.Add('where Area_cod = ' + quPrincipal.FieldByName('Area_cod').AsString);
    Open;

    if not IsEmpty then
    begin
      MSGAVISO('Existem Vagas com esta Área vinculada. Nao é possível excluí-lo!');
      Exit;
    end;
    Close;
    Free;
  end;
  inherited;
end;

end.


