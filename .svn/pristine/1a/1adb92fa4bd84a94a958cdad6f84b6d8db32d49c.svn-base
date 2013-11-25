unit TPOEOB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFOREOB = class(TFORMOD1)
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREOB: TFOREOB;

implementation

Uses TPOENC, TPODTA, TPOFNC;

{$R *.DFM}

procedure TFOREOB.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
