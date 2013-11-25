unit TPOSEL2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, Mask;

type
  TFORSEL2 = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    meData: TMaskEdit;
    Bevel1: TBevel;
    btAtualizar: TSpeedButton;
    btFechar: TSpeedButton;
    meData2: TMaskEdit;
    outros: TCheckBox;
    procedure btAtualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data,Datafim: TDateTime;
  end;

var
  FORSEL2: TFORSEL2;

implementation

Uses TPOFNC;

{$R *.DFM}

procedure TFORSEL2.FormCreate(Sender: TObject);
begin
  Data := 0;
end;

procedure TFORSEL2.FormShow(Sender: TObject);
begin
  if Data <> 0 then
    meData.text := FormatDateTime('dd/mm/yyyy',Data);
end;

procedure TFORSEL2.btAtualizarClick(Sender: TObject);
begin
  try
    Data := StrToDate(meData.Text);
    DataFim := StrToDate(meData2.Text);
    modalresult := mrok;
    Close;
  except
    MSGERRO('Data inválida!');
  end;
end;

procedure TFORSEL2.btFecharClick(Sender: TObject);
begin
  Data := 0;
  dataFim := 0;
  Close;
end;

end.
