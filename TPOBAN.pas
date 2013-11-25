unit TPOBAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD, DBTables, DB, ExtCtrls, Grids, DBGrids, StdCtrls,
  ComCtrls, Buttons, Mask, DBCtrls;

type
  TFORBAN = class(TFORMOD)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORBAN: TFORBAN;

implementation
uses TPODTA, TPOFNC;

{$R *.dfm}

procedure TFORBAN.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);

end;

procedure TFORBAN.FormCreate(Sender: TObject);
begin

  inherited;
  nomeCodigo := 'cod_banco';
  nomeNome := 'Banco';

  quPrincipal := DmDta.quBanco;
  DmDta.dsBanco.DataSet := quPrincipal;
end;

procedure TFORBAN.FormDestroy(Sender: TObject);
begin
  inherited;

  DmDta.dsBanco.DataSet := DmDta.quBanco;
end;

procedure TFORBAN.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('Select * from Tb_bancos order by banco');
    Open;
    Last;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;

end;

procedure TFORBAN.btSalvarClick(Sender: TObject);
var
  Insere: boolean;
begin
  if (DBEdit2.Text = '') or ((DBEdit3.Text = '')) then
  begin
    MSGERRO('O Nome do Banco e seu Código São Obrigatórios!');
    DBEdit3.SetFocus;
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

procedure TFORBAN.edParametroExit(Sender: TObject);
var
  argumento, ordem: string;
begin
  case CBTIPOPESQUISA.ItemIndex of
    0: begin
        argumento := 'cod_banco like ''%' + edParametro.Text + '%''';
        ordem := 'cod_banco';
      end;

    1: begin
        argumento := 'banco like ''%' + edParametro.Text + '%''';
        ordem := 'banco';
      end;
    2: begin
        argumento := 'apelido like ''%' + edParametro.Text + '%''';
        ordem := 'apelido';
      end;
  end;

  DMDta.montaSql(quPrincipal, '*', 'TB_BANCOS', argumento, ordem);

  quPrincipal.Last;
  estadoNavegando();

end;

end.

