unit TPOEST10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db,
  DBTables;

type
  TFOREST10 = class(TFORMOD1)
    DBComboBox4: TDBComboBox;
    Label32: TLabel;
    Label29: TLabel;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREST10: TFOREST10;

implementation

Uses TPODTA, TPOFNC, TPOCST, TPOEST;

{$R *.DFM}

procedure TFOREST10.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREST10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOREST.btSalvarClick(Sender);
  inherited;                   
end;

end.
