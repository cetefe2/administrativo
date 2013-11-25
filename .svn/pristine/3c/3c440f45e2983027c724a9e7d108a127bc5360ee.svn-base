unit TPOETQ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFORETQ = class(TFORMOD1)
    Label1: TLabel;
    edLinha: TEdit;
    Label2: TLabel;
    edColuna: TEdit;
    Label3: TLabel;
    edEtiquetas: TEdit;
    Label4: TLabel;
    edNome: TEdit;
    edNomeResp: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edEndereco1: TEdit;
    Label7: TLabel;
    edEndereco2: TEdit;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Linha, Coluna, Etiquetas: Integer;
    nome, nomeResp, End1, End2: String;
    { Public declarations }
  end;

var
  FORETQ: TFORETQ;

implementation

{$R *.DFM}

procedure TFORETQ.btOkClick(Sender: TObject);
begin
  inherited;
  try
    Linha     := StrToInt(edLinha.Text);
    Coluna    := StrToInt(edColuna.Text);
    Etiquetas := StrToInt(edEtiquetas.Text);

    nome     := edNome.Text;
    nomeResp := edNomeResp.Text;
    End1     := edEndereco1.Text;
    End2     := edEndereco2.Text;
  except
    linha     := 0;
    coluna    := 0;
    etiquetas := 0;
  end;
end;

procedure TFORETQ.FormShow(Sender: TObject);
begin
  inherited;
  edNome.Text      := nome;
  edNomeResp.Text  := nomeResp;
  edEndereco1.Text := End1;
  edEndereco2.Text := End2;
end;

end.
