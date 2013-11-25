unit TPOTROCASENHA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables;

type
  TFORTROCASENHA = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    senhaatual: string;
    { Public declarations }
  end;

var
  FORTROCASENHA: TFORTROCASENHA;

implementation

uses TPODTA, tpocst;

{$R *.DFM}

procedure TFORTROCASENHA.SpeedButton1Click(Sender: TObject);
begin
  if edit1.Text <> edit2.Text then
  begin
    showmessage('Novas Senhas Digitadas não são Iguias. Verifique!');
    Edit1.SetFocus;
    exit;
  end;

  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('update funcionario set func_psw = ''' + edit1.Text + ''' where func_cod =' + dmdta.usuario);
    execsql;
    close;
    free;
  end;

  close;


end;

procedure TFORTROCASENHA.FormShow(Sender: TObject);
begin
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select * from funcionario where func_cod =' + dmdta.usuario);
    Open;
    if eof = false then
      senhaatual := fieldbyname('func_psw').AsString;
    close;
    free;
  end;
end;


procedure TFORTROCASENHA.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFORTROCASENHA.Edit3Exit(Sender: TObject);
begin
  if edit3.Text <> '' then
    if edit3.Text <> senhaatual then
    begin
      showmessage('Senha não confere com a senha Atual. Verifique!');
      edit3.SetFocus;
    end;
end;

procedure TFORTROCASENHA.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
end;

procedure TFORTROCASENHA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.

