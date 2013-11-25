unit untLibera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmLibera = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    senha: TEdit;
    ok: TBitBtn;
    BitBtn2: TBitBtn;
    procedure senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    chance: integer;
    contrasenha,
      nome: string;
    { Public declarations }
  end;

var
  FrmLibera: TFrmLibera;

implementation

{$R *.dfm}

procedure TFrmLibera.senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if senha.Text = contrasenha then
    begin
      ok.Enabled := true;
      exit;

    end;
    dec(chance);
    label1.caption := inttostr(chance);
    ok.Enabled := false;
    senha.Text := '';
    if chance = 0 then
      close;
  end;
end;

procedure TFrmLibera.FormActivate(Sender: TObject);
begin
  //login.Text := '';
  senha.Text := '';
  nome := '';
  contrasenha := 'asbct32';
  chance := 4;
  //id.Text := '';
  //motivo.Text := '';
  //ednome.text := '';
  ok.Enabled := false;
  //login.SetFocus;
end;

end.
Jceor2008

