unit TPOINSTOBS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, StdCtrls, DBCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFORMINSTOBS = class(TFORMOD1)
    Label1: TLabel;
    TextoObservacao: TDBMemo;
    procedure TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMINSTOBS: TFORMINSTOBS;

implementation

uses TPODTA,tpofnc      ;

{$R *.DFM}

procedure TFORMINSTOBS.TextoObservacaoKeyPress(Sender: TObject; var Key: Char);
begin
CaracterMaiusculo(Key);
end;

end.
