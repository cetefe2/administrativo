unit TPOTPROBS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, StdCtrls, DBCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFORMTPRObs = class(TFORMOD1)
    Label1: TLabel;
    TextoObservacao: TDBMemo;
    procedure TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMTPRObs: TFORMTPRObs;

implementation
uses TPODTA,tpofnc      ;

{$R *.DFM}

procedure TFORMTPRObs.TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
begin
 inherited;
  CaracterMaiusculo(Key);
end;

end.
