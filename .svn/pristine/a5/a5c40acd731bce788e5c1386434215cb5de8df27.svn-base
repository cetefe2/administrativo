unit TPOFOR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls,
  Mask, DB, BDE, DBTables;

type
  TFORFOR = class(TFORMOD2)
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    edFornDtInc: TMaskEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    meCnpj: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edFornDtIncExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure meCnpjExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edParametroExit(Sender: TObject);
    procedure edFornDtIncKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    mudaAba: Boolean;
  public
    { Public declarations }
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
  end;

var
  FORFOR: TFORFOR;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC, TPOCST;

procedure TFORFOR.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave  := 'forn_cod';
  nomeCodigo := 'forn_cod';
  nomeNome   := 'forn_nome';
  nomeTabela := 'Fornecedor';

  quPrincipal := DmDta.quFornecedor;
  DmDta.dsFornecedor.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORFOR.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsFornecedor.DataSet := DmDta.quInstituicao;
end;

procedure TFORFOR.AtualizaDados;
begin
  if edFornDtInc.Text <> '  /  /    ' then
    quPrincipal.FieldByName('forn_dtinc').AsString := edFornDtInc.Text;
  quPrincipal.FieldbyName('forn_cnpj').AsString := meCnpj.Text;
end;

procedure TFORFOR.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('forn_cod').Value := 0;
  edFornDtInc.Text   := FormatDateTime('dd/mm/yyyy',Date);
  edFornDtInc.SetFocus;
end;

procedure TFORFOR.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORFOR.CarregaDados;
begin
  inherited;
  if not quPrincipal.FieldByName('forn_dtinc').IsNull then
    edFornDtInc.Text   := quPrincipal.FieldByName('forn_dtinc').AsString;
  if not quPrincipal.FieldbyName('forn_cnpj').IsNull then
    meCnpj.Text := quPrincipal.FieldbyName('forn_cnpj').AsString;
end;

procedure TFORFOR.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('select * from Fornecedor order by forn_cod');
    Open;
    Last;
  end;

  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORFOR.btSalvarClick(Sender: TObject);
var Insere: Boolean;
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if DBEdit3.Text = '' then
    begin
      MSGERRO('Entre com o nome do fornecedor!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
    else if meCnpj.Text = '' then
    begin
      MSGERRO('Entre com o CNPJ do fornecedor');
      meCnpj.SetFocus;
      Salvou := False;
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
end;

procedure TFORFOR.edFornDtIncExit(Sender: TObject);
begin
  inherited;
  if TCustomEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TCustomEdit(Sender).Text) then
    begin
      TCustomEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFORFOR.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFORFOR.meCnpjExit(Sender: TObject);
begin
  inherited;
  {if meCnpj.Text <> '' then
  begin
    if not ValidaCgcCpf(meCnpj.text) then
    begin
      MSGERRO('CNPJ inválido. Informe novo CNPJ ou apague!');
      meCnpj.SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;}
end;

procedure TFORFOR.LimpaCampos;
begin
  inherited;
  edFornDtInc.Clear;
  meCnpj.Clear;
end;

procedure TFORFOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORFOR.edParametroExit(Sender: TObject);
var argumento,ordem:String;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
      begin
         ordem := 'forn_cod';
         argumento := 'forn_cod = ' + edParametro.Text;
         DMDta.montaSql(quPrincipal, '*', 'Fornecedor', argumento, ordem);
         estadoNavegando();
      end;
      1:
      begin
         ordem := 'forn_nome';
         argumento := 'forn_nome like ''%' + edParametro.Text + '%''';
         DMDta.montaSql(quPrincipal, '*', 'Fornecedor', argumento, ordem);
         estadoNavegando();
      end;
    end;
  end;
end;

procedure TFORFOR.edFornDtIncKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then
    quPrincipal.Edit;
end;

procedure TFORFOR.LimpaParametros;
begin
  inherited;
  edParametro.Clear;
end;

end.
