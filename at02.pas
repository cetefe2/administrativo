unit at02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm1 = class(TForm)
    db_Principal: TDatabase;
    qrypesquisa: TQuery;
    Button1: TButton;
    label4: TLabel;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select count(*) total from estudante where est_banco = ''Banco do Brasil'' and est_situacao = ''S''';
    qrypesquisa.open;
    label4.caption := inttostr(qrypesquisa.fieldbyname('total').asinteger);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if application.messagebox('Deseja realmente Limpar as contas do Banco do Brasil' , 'Limpando Contas',
    MB_YESNO + MB_DEFBUTTON1) = IDYES then
  begin
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'update estudante set est_banco = null , est_agencia = null,est_tipoconta = null, est_conta = null where est_banco = ''Banco do Brasil'' and est_situacao = ''S''  ';
    qrypesquisa.execsql;
    FormActivate(Sender);
    showmessage('Atualização efetivada');
  end;

end;

end.
