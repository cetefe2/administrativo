unit TPOSEL1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, Mask;

type
  TFORSEL1 = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Bevel1: TBevel;
    btAtualizar: TSpeedButton;
    btFechar: TSpeedButton;
    edAno: TEdit;
    edMes: TEdit;
    Label1: TLabel;
    procedure btAtualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edAnoExit(Sender: TObject);
    procedure edMesExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Ano, Mes, dia: Word;
  end;

var
  FORSEL1: TFORSEL1;

implementation

Uses TPOFNC;

{$R *.DFM}

procedure TFORSEL1.FormCreate(Sender: TObject);
begin
  Ano := 0;
  Mes := 0;
end;

procedure TFORSEL1.FormShow(Sender: TObject);
begin
  DecodeDate(Date, Ano, mes, Dia);
  edAno.text := IntToStr(Ano);
  edMes.text := IntToStr(Mes);
end;

procedure TFORSEL1.btAtualizarClick(Sender: TObject);
begin
  try
    Ano := StrToInt(edAno.Text);
    Mes := StrToInt(edMes.Text);
    Close;
  except
    MSGERRO('Ano/Mês inválidos!');
  end;
end;

procedure TFORSEL1.btFecharClick(Sender: TObject);
begin
  Ano := 0;
  Mes := 0;
  Close;
end;

procedure TFORSEL1.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORSEL1.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if Not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFORSEL1.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if Not ValidaMes(edMes.Text) then
    begin
      edMes.SetFocus;
      Exit;
    end;
  end;
end;

end.
