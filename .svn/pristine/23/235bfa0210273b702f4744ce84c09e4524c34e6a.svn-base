unit TPOSEL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, Mask;

type
  TFORSEL = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    meData: TMaskEdit;
    Bevel1: TBevel;
    btAtualizar: TSpeedButton;
    btFechar: TSpeedButton;
    procedure btAtualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data: TDateTime;
  end;

var
  FORSEL: TFORSEL;

implementation

Uses TPOFNC;

{$R *.DFM}

procedure TFORSEL.FormCreate(Sender: TObject);
begin
  Data := 0;
end;

procedure TFORSEL.FormShow(Sender: TObject);
begin
  if Data <> 0 then
    meData.text := FormatDateTime('dd/mm/yyyy',Data);
end;

procedure TFORSEL.btAtualizarClick(Sender: TObject);
begin
  try
    Data := StrToDate(meData.Text);
    Close;
  except
    MSGERRO('Data inválida!');
  end;
end;

procedure TFORSEL.btFecharClick(Sender: TObject);
begin
  Data := 0;
  Close;
end;

end.
