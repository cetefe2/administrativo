unit TPORESC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFORRESC = class(TFORMOD1)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    edEMailDestinatario: TEdit;
    Label4: TLabel;
    edGestorEstagiario: TEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    edNomeDestinatario: TEdit;
    btCancelar: TSpeedButton;
    procedure edNomeDestinatarioKeyPress(Sender: TObject; var Key: Char);
    procedure edEMailDestinatarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORRESC: TFORRESC;

implementation

uses TPODTA, TPOFNC;

{$R *.DFM}

procedure TFORRESC.edNomeDestinatarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORRESC.edEMailDestinatarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  CaracterMinusculo(Key);
end;

procedure TFORRESC.FormShow(Sender: TObject);
begin
  inherited;
  edNomeDestinatario.Text := DmDTA.quEstResc.FieldByName('emp_nomerespent').text;
  edEMailDestinatario.Text := DmDTA.quEstResc.FieldByName('email').text;
end;

procedure TFORRESC.btCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFORRESC.btOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

end.
