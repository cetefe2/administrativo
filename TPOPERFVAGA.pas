unit TPOPERFVAGA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFORPERFILVAGA = class(TFORMOD1)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORPERFILVAGA: TFORPERFILVAGA;

implementation
uses TPODTA,TPOFNC;

{$R *.dfm}

procedure TFORPERFILVAGA.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 CaracterMaiusculo(Key);
end;

procedure TFORPERFILVAGA.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 CaracterMaiusculo(Key);
end;

end.
