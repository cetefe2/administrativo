unit at03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm1 = class(TForm)
    db_Principal: TDatabase;
    qrypesquisa: TQuery;
    Button1: TButton;
    qrypesquisavag_cod: TIntegerField;
    qrypesquisavag_qtde: TIntegerField;
    qrypesquisaVag_qtdepreenc: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    qrypesquisaCandidatos: TIntegerField;
    Button2: TButton;
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
    {qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select count(*) total from estudante where  (cur_cod = 439) ';
    qrypesquisa.open;
    label4.caption := inttostr(qrypesquisa.fieldbyname('total').asinteger);
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'select count(*) total from estudante where  (cur_cod = 1) ';
    qrypesquisa.open;
    label3.caption := inttostr(qrypesquisa.fieldbyname('total').asinteger);}
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if application.messagebox('Deseja realmente Alterar todos os Cursos de [439] para [1]' , 'Alterando Curso dos Alunos',
    MB_YESNO + MB_DEFBUTTON1) = IDYES then
  begin
    qrypesquisa.close;
    qrypesquisa.SQL.Text := 'update      Encaminhamento  set  Encaminhamento.Eva_resultado = 2 ' +
                            ' FROM         Tce, Encaminhamento WHERE  Tce.Vag_cod = Encaminhamento.Vag_cod  and ' +
                            '(Tce.Tce_situacao = 7) AND (Encaminhamento.Eva_resultado = 1) ';
    qrypesquisa.execsql;
    FormActivate(Sender);
    showmessage('Atualização efetivada');
  end;

end;

end.
