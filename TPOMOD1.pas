unit TPOMOD1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  TFORMOD1 = class(TForm)
    Panel1: TPanel;
    sbPrincipal: TStatusBar;
    Panel2: TPanel;
    btOk: TSpeedButton;
    btEnter: TBitBtn;
    procedure btOkClick(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    Salvou: Boolean;
  public
    { Public declarations }
    F2: Boolean;
    procedure MostraHintForm(Sender: TObject);
  end;

var
  FORMOD1: TFORMOD1;

implementation

{$R *.DFM}

procedure TFORMOD1.FormCreate(Sender: TObject);
begin
  Salvou := True;
  F2 := False;
end;

procedure TFORMOD1.btOkClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if Salvou then
    Close;
end;

procedure TFORMOD1.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORMOD1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_F3: btOkClick(Sender);
  end;
end;

procedure TFORMOD1.MostraHintForm(Sender: TObject);
begin
  Self.sbPrincipal.SimpleText := Application.Hint;
end;

procedure TFORMOD1.FormActivate(Sender: TObject);
begin
  Application.OnHint := nil;
  Application.OnHint := MostraHintForm;
end;

procedure TFORMOD1.FormDeactivate(Sender: TObject);
begin
  Application.OnHint := nil;
end;

procedure TFORMOD1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not F2 then
    Action := caFree;
end;

end.

