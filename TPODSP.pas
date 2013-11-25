unit TPODSP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DB, DBTables, TPOMOD2;

type
  TFORDSP = class(TFORMOD)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InicializaDados; override;
    procedure LimpaParametros; override;
  end;

var
  FORDSP: TFORDSP;

implementation

uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORDSP.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo    := 'dsp_cod';
  nomeNome      := 'dsp_nome';

  quPrincipal := DmDta.quDespesa;
  DmDta.dsDespesa.DataSet := quPrincipal;
end;

procedure TFORDSP.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsDespesa.DataSet := DmDta.quDespesa;
end;

procedure TFORDSP.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('dsp_cod').Value   := 0;
  DBEdit2.SetFocus;
end;

procedure TFORDSP.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);
end;

procedure TFORDSP.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('Select * from Despesa order by dsp_cod');
    Open;
    Last;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORDSP.btSalvarClick(Sender: TObject);
var
  Insere: Boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome da despesa!');
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

procedure TFORDSP.edParametroExit(Sender: TObject);
var argumento,ordem:String;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
      begin
         ordem := 'dsp_cod';
         if edParametro.Text <> '' then
           argumento := 'dsp_cod = ' + edParametro.Text;
         DMDta.montaSql(quPrincipal, '*', 'Despesa', argumento, ordem);
         estadoNavegando();
      end;
      1:
      begin
         ordem := 'dsp_nome';
         if edParametro.Text <> '' then
           argumento := 'dsp_nome like ''%' + edParametro.Text + '%''';
         DMDta.montaSql(quPrincipal, '*', 'Despesa', argumento, ordem);
         estadoNavegando();
      end;
    end;
  end;
end;

procedure TFORDSP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORDSP.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

procedure TFORDSP.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
