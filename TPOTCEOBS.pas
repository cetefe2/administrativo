unit TPOTCEOBS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, StdCtrls, DBCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFORMTceObs = class(TFORMOD1)
    Label1: TLabel;
    TextoObservacao: TDBMemo;
    procedure TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMTceObs: TFORMTceObs;

implementation
uses TPODTA,tpofnc      ;

{$R *.DFM}

procedure TFORMTceObs.TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
begin
 inherited;
  CaracterMaiusculo(Key);
end;

end.
