unit uAtualizaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm1 = class(TForm)
    db_Principal: TDatabase;
    qrypesquisa: TQuery;
    Button1: TButton;
    Memo1: TMemo;
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

procedure TForm1.Button1Click(Sender: TObject);
 begin
  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table tce add tce_EstObrigato char(1) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo já foi criado');
  end;


  {try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table tce add  age_dtEnvio3 smalldatetime ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo   foi criado')
  end;}



  {try
    qrypesquisa.Close;
    qrypesquisa.ExecSQL;
  except
    showmessage('Tabela De Lote ja existe')
  end;}


 { try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table folhapgto add  lot_numero int');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo já existe ')
  end;}

{  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table agenda add  age_dtEnvio2 smalldatetime ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo   foi criado')
  end;

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table agenda add  age_dtEnvio3 smalldatetime ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo   foi criado')
  end;
 }

  {  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table EmpHistorico add  funccetefe_cod int ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Data de Inicio já foi criado')
  end;
exit;
  try
    qrypesquisa.Close;
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Data de Inicio já foi criado')
  end;

  try
    qrypesquisa.Close;

    qrypesquisa.SQL.Text := memo1.Text;
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Data de Inicio já foi criado')
  end;

 }

{

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Encaminhamento add Eva_dataret smalldatetime ');
    qrypesquisa.ExecSQL;
  except
   // showmessage('Campo Período de Pagamento já foi criado');
  end;

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table tce add tce_domingo char(1) ');
    qrypesquisa.ExecSQL;
  except
   // showmessage('Campo Período de Pagamento já foi criado');
  end;}

  {try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Estudante alter COLUMN  est_sitfamiliar  varchar(500) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Período de Pagamento já foi criado');
  end;
  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Estudante alter COLUMN  est_impedimento varchar(500) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Período de Pagamento já foi criado');
  end;

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Estudante alter COLUMN  est_habilidades  varchar(500) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Período de Pagamento já foi criado');
  end;

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Estudante alter COLUMN  est_caracteristicas  varchar(500) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Período de Pagamento já foi criado');
  end;

  try
    qrypesquisa.Close;
    qrypesquisa.SQL.Clear;
    qrypesquisa.SQL.Add('alter table Estudante alter  COLUMN est_porquestagioest  varchar(500) ');
    qrypesquisa.ExecSQL;
  except
    showmessage('Campo Período de Pagamento já foi criado');
  end;  }
  showmessage('Atualizacao efetuada');
  close;

end;

end.

