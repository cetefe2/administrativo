program AtualizaBanco;

uses
  Forms,
  uAtualizaBanco in 'uAtualizaBanco.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
