unit TPOINS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, Buttons, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Db;

type
  TFORINS1 = class(TFORMOD1)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORINS1: TFORINS1;

implementation

uses TPODTA;

{$R *.DFM}

procedure TFORINS1.btOkClick(Sender: TObject);
begin
  if DmDta.quInstituicao.State in [dsInsert, dsEdit] then
    DmDta.quInstituicao.Post;
  inherited;
end;

end.
