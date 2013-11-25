unit TPOIDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBTables, Db, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls,
  Buttons, Mask, DBCtrls;

type
  TFORIDI = class(TFORMOD)
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
  FORIDI: TFORIDI;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOCST;

{ TFORINI }

procedure TFORIDI.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'idi_cod';
  nomeNome := 'idi_nome';

  quPrincipal := DmDta.quIdioma;
  DmDta.dsIdioma.DataSet := quPrincipal;
end;

procedure TFORIDI.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with DmDta.quIdioma do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from Idioma order by idi_cod');
    Open;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;
  Screen.Cursor := crDefault;
  cbTipoPesquisa.ItemIndex := 1;
end;

procedure TFORIDI.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsIdioma.DataSet := DmDta.quIdioma;
end;

procedure TFORIDI.InicializaDados;
begin
  quPrincipal.FieldByName('idi_cod').Value := 0;
  DBEdit2.SetFocus;
end;

procedure TFORIDI.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORIDI.btSalvarClick(Sender: TObject);
var Insere: boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do idioma!');
    DBEdit2.SetFocus;
  end
  else
  begin
    Insere := quPrincipal.State = dsInsert;
    inherited;
    if Insere then
    begin
      quPrincipal.Close;
      quPrincipal.Open;
      quPrincipal.Last;
    end;
  end;
end;

procedure TFORIDI.edParametroExit(Sender: TObject);
var argumento, ordem: string;
begin
  if edParametro.Text <> '' then
  begin
    argumento := '';
    ordem := '';
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'idi_cod';
          argumento := 'idi_cod = ' + edParametro.Text;
          DMDta.montaSql(quPrincipal, '*', 'idioma', argumento, ordem);
          estadoNavegando();
        end;
      1:
        begin
          ordem := 'idi_nome';
          argumento := 'idi_nome like ''%' + edParametro.Text + '%''';
          DMDta.montaSql(quPrincipal, '*', 'idioma', argumento, ordem);
          estadoNavegando();
        end;
    end;
  end;
end;

procedure TFORIDI.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFORIDI.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.

