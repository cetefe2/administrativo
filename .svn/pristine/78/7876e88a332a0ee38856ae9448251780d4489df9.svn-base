unit TPOCUR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DB, DBTables, TPOMOD2;

type
  TFORCUR = class(TFORMOD)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    btImpressao: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure btImpressaoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InicializaDados; override;
    procedure LimpaParametros; override;

  end;

var
  FORCUR: TFORCUR;

implementation

uses TPODTA, TPOFNC, TPORCUR, TPORCUR1, TPOCST, untLibera;

{$R *.DFM}

procedure TFORCUR.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo    := 'cur_cod';
  nomeNome      := 'cur_nome';

  quPrincipal := DmDta.quCurso;
  DmDta.dsCurso.DataSet := quPrincipal;
end;

procedure TFORCUR.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsCurso.DataSet := DmDta.quCurso;
end;

procedure TFORCUR.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('cur_cod').Value   := 0;
  DBEdit2.SetFocus;
end;

procedure TFORCUR.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);
end;

procedure TFORCUR.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('Select * from Curso order by cur_cod');
    Open;
    Last;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORCUR.btSalvarClick(Sender: TObject);
var
  Insere: boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do curso!');
    DBEdit2.SetFocus;
  end
  else
  begin
    Insere := quPrincipal.State = dsInsert;

    inherited;

    // refresh
    If insere then
    begin
      quPrincipal.Close;
      quPrincipal.Open;
      quPrincipal.Last;
    end;
  end;
end;

procedure TFORCUR.edParametroExit(Sender: TObject);
var argumento,ordem:String;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
      begin
         ordem := 'cur_cod';
         if edParametro.Text <> '' then
           argumento := 'cur_cod = ' + edParametro.Text;
         DMDta.montaSql(quPrincipal, '*', 'Curso', argumento, ordem);
         estadoNavegando();
      end;
      1:
      begin
         ordem := 'cur_nome';
         if edParametro.Text <> '' then
           argumento := 'cur_nome like ''%' + edParametro.Text + '%''';
         DMDta.montaSql(quPrincipal, '*', 'Curso', argumento, ordem);
         estadoNavegando();
      end;
    end;
  end;
end;

procedure TFORCUR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORCUR.LimpaParametros;
begin
  inherited;
  edParametro.clear;
end;

procedure TFORCUR.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORCUR.edParKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORCUR.btImpressaoClick(Sender: TObject);
begin
  inherited;
  If quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrCUR1 := TqrCUR1.Create(Self);
  Screen.Cursor := crDefault;
  qrCUR1.Preview;
  qrCUR1.Free;

  {Screen.Cursor := crHourGlass;
  qrCUR := TqrCUR.Create(Self);
  qrCUR.quInstCurso.ParamByName('cur_cod').AsInteger := DmDta.quCursoCur_cod.AsInteger;
  qrCUR.qrNomeCurso.Caption := DmDta.quCursoCur_Nome.AsString;
  qrCUR.quInstCurso.Open;
  Screen.Cursor := crDefault;
  qrCUR.Preview;
  qrCUR.quInstCurso.Close;
  qrCUR.Free;}
end;

procedure TFORCUR.btExcluirClick(Sender: TObject);
begin
 if frmlibera.showmodal <> mrok then
  begin
    showmessage('Você não tem Permissão para executar essa tarefa!!');
    exit;
  end;
  // verifica se tem estudantes cadastrados
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Add('select est_cod from Estudante');
    Sql.Add('where cur_cod = ' + quPrincipal.FieldByName('cur_cod').AsString);
    Open;

    If Not IsEmpty then
    begin
      MSGAVISO('Existem estudantes vinculados a este curso. Não é possível excluí-lo!');
      Exit;
    end;

    Close;
    Free;
  end;

  inherited;

end;

procedure TFORCUR.btNovoClick(Sender: TObject);
begin
  if frmlibera.showmodal <> mrok then
  begin
    showmessage('Você não tem Permissão para executar essa tarefa!!');
    exit;
  end;
  inherited;

end;

end.
