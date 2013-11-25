unit TPOETQ1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFORETQ1 = class(TFORMOD1)
    Label1: TLabel;
    edLinha: TEdit;
    Label2: TLabel;
    edColuna: TEdit;
    lblEtiquetas: TLabel;
    edEtiquetas: TEdit;
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Linha, Coluna, Etiquetas: Integer;
    bEtiquetas: Boolean;
    { Public declarations }
  end;

var
  FORETQ1: TFORETQ1;

implementation

{$R *.DFM}

procedure TFORETQ1.btOkClick(Sender: TObject);
begin
  inherited;
  try
    Linha     := StrToInt(edLinha.Text);
    Coluna    := StrToInt(edColuna.Text);
    Etiquetas := StrToInt(edEtiquetas.Text);
  except
    linha     := 0;
    coluna    := 0;
    etiquetas := 0;
  end;
end;

procedure TFORETQ1.FormCreate(Sender: TObject);
begin
  inherited;
  bEtiquetas := true;
end;

procedure TFORETQ1.FormShow(Sender: TObject);
begin
  inherited;
  lblEtiquetas.Visible := bEtiquetas;
  edEtiquetas.Visible  := bEtiquetas;
end;

end.
