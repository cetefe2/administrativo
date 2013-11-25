unit TPOSTW;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBTables, Db, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls,
  Buttons, Mask, DBCtrls;

type
  TFORSTW = class(TFORMOD)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InicializaDados; override;
    procedure LimpaParametros; override;
  end;

var
  FORSTW: TFORSTW;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOCST;

{ TFORSTW }

procedure TFORSTW.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo    := 'stw_cod';
  nomeNome      := 'stw_nome';

  quPrincipal := DmDta.quSoftware;
  DmDta.dsSoftware.DataSet := quPrincipal;
end;

procedure TFORSTW.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with DmDta.quSoftware do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from Software order by stw_cod');
    Open;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;
  Screen.Cursor := crDefault;
  cbTipoPesquisa.ItemIndex := 1;
end;

procedure TFORSTW.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsSoftware.DataSet := DmDta.quSoftware;
end;


procedure TFORSTW.InicializaDados;
begin
  quPrincipal.FieldByName('stw_cod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORSTW.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORSTW.btSalvarClick(Sender: TObject);
var Insere: Boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do software!');
    DBEdit2.SetFocus;
  end
  else
  begin
    Insere := quPrincipal.State = dsInsert;
    inherited;
    If Insere then
    begin
      quPrincipal.Close;
      quPrincipal.Open;
      quPrincipal.Last;
    end;
  end;
end;

procedure TFORSTW.edParametroExit(Sender: TObject);
var argumento, ordem: String;
begin
  if edParametro.Text <> '' then
  begin
    argumento := '';
    ordem     := '';
    case CbTipoPesquisa.ItemIndex of
      0:
      begin
         ordem := 'stw_cod';
         argumento := 'stw_cod = ' + edParametro.Text;
         DMDta.montaSql(quPrincipal, '*', 'software', argumento, ordem);
         estadoNavegando();
      end;
      1:
      begin
         ordem := 'stw_nome';
         argumento := 'stw_nome like ''%' + edParametro.Text + '%''';
         DMDta.montaSql(quPrincipal, '*', 'software', argumento, ordem);
         estadoNavegando();
      end;
    end;
  end;
end;

procedure TFORSTW.LimpaParametros;
begin
  inherited;
  edParametro.clear;
end;

procedure TFORSTW.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
