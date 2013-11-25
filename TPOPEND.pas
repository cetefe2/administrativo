unit TPOPEND;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TFORPEND = class(TFORMOD3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORPEND: TFORPEND;

implementation
uses TPODTA, tpofnc;
{$R *.dfm}

procedure TFORPEND.FormCreate(Sender: TObject);
begin
  quPrincipal1 := DmDta.qupendencias;
  dmdta.dspendencias.DataSet := quPrincipal1;
  quprincipal1.Open;

end;

procedure TFORPEND.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quprincipal1.Close;
  action := cafree;

end;

procedure TFORPEND.FormShow(Sender: TObject);
begin
  estadoNavegando;
  pgPrincipal.ActivePage := tbConsulta;

end;

procedure TFORPEND.btSalvarClick(Sender: TObject);
var
  Insere: boolean;
begin
  if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com o nome do Forma de Tratamento!');
    DBEdit2.SetFocus;
  end
  else
  begin
    Insere := quPrincipal1.State = dsInsert;
    if quPrincipal1.State in [dsInsert, dsEdit] then
    begin
      try
        DMDta.SalvarRegistro(quPrincipal1);
        if insere then
        begin
          quPrincipal1.close;
          quprincipal1.Open;
           quPrincipal1.Last; 
        end;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

end.

