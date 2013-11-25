unit TPOFUN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DB, DBTables, TPOMOD2, ToolEdit, RXDBCtrl;

type
  TFORFUN = class(TFORMOD)
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBCheckBox2: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo: String;

    procedure InicializaDados; override;
    procedure LimpaParametros; override;
  end;

var
  FORFUN: TFORFUN;

implementation

uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORFUN.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo    := 'func_cod';
  nomeNome      := 'func_nome';

  quPrincipal := DmDta.quFuncionario;
  DmDta.dsFuncionario.DataSet := quPrincipal;
end;

procedure TFORFUN.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsFuncionario.DataSet := DmDta.quFuncionario;
end;

procedure TFORFUN.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('func_cod').Value   := 0;
  quPrincipal.FieldByName('func_ativo').Value := 'S';
  DBEdit2.SetFocus;
end;

procedure TFORFUN.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbTipoPesquisa.ItemIndex = 0 then VerificaNumero(key);
end;

procedure TFORFUN.FormShow(Sender: TObject);
var
linha:string;
begin
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('Select * from Funcionario');
    linha := '';
    If Tipo <> '' then
      linha := 'where func_tipo = ''' + tipo + '''';
   //   Sql.Add('where func_tipo = ''' + tipo + '''')


    If F2 then
      if linha <> '' then
         linha := linha + 'and func_ativo = ''S'''
      else
         linha := ' where func_ativo = ''S''';
         //Sql.Add('and func_ativo = ''S''')

    if linha <> '' then
    Sql.Add(linha);
    Sql.Add('order by func_cod');
    Open;
    Last;
  end;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORFUN.edParametroExit(Sender: TObject);
var argumento,ordem:String;
begin
  if edParametro.Text <> '' then
  begin
    case CbTipoPesquisa.ItemIndex of
      0:
      begin
         ordem := 'func_cod';
         if edParametro.Text <> '' then
           argumento := 'func_cod = ' + edParametro.Text;
         DMDta.montaSql(quPrincipal, '*', 'Funcionario', argumento, ordem);
         estadoNavegando();
      end;
      1:
      begin
         ordem := 'func_nome';
         if edParametro.Text <> '' then
           argumento := 'func_nome like ''%' + edParametro.Text + '%''';
         DMDta.montaSql(quPrincipal, '*', 'Funcionario', argumento, ordem);
         estadoNavegando();
      end;
    end;
  end;
end;

procedure TFORFUN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORFUN.LimpaParametros;
begin
  inherited;
  edParametro.clear;
end;

procedure TFORFUN.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORFUN.edParKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORFUN.btSalvarClick(Sender: TObject);
var Insere: boolean;
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

procedure TFORFUN.btNovoClick(Sender: TObject);
var
linha:string;
begin
  inherited;
  
end;

procedure TFORFUN.DBEdit11Exit(Sender: TObject);
var
linha:string;
begin
  inherited;
 if DmDta.quFuncionario.State in [dsedit,dsinsert] then
  begin
    linha := sonumero(dmdta.qufuncionariofunc_cpf.AsString);
    if length(linha) = 11 then
    begin
      dmdta.qufuncionariofunc_cpf.AsString := copy(linha, 1, 3) + '.' + copy(linha, 4, 3) + '.' + copy(linha, 7, 3) + '-' + copy(linha, 10, 2);
    end;
  end;
end;

end.
