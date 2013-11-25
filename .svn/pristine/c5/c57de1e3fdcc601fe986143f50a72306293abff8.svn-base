unit TPOFUNEMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, StdCtrls, DBCtrls, Mask, DB, DBTables, ExtCtrls, Grids, DBGrids,
  ComCtrls, Buttons;

type
  TFORFUNEMP = class(TFORMOD3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORFUNEMP: TFORFUNEMP;

implementation

uses TPODTA;

{$R *.DFM}

procedure TFORFUNEMP.FormCreate(Sender: TObject);
begin
  quPrincipal1 := DmDta.quempfuncao;
  dmdta.dsEmpfuncao.DataSet := quPrincipal1;
  quprincipal1.Open;
end;

procedure TFORFUNEMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quprincipal1.Close; 
  action := cafree;
end;

procedure TFORFUNEMP.FormShow(Sender: TObject);
begin
  estadoNavegando;
  pgPrincipal.ActivePage := tbConsulta;
end;

procedure TFORFUNEMP.btNovoClick(Sender: TObject);
begin
  inherited;
  dmdta.quEmpFuncaoFun_unica.AsString := 'N';

end;

procedure TFORFUNEMP.btSalvarClick(Sender: TObject);
var
  Inserindo: boolean;
begin
  if dmdta.dsEmpfuncao.State in [dsedit, dsinsert] then
  begin
    inserindo := dmdta.dsEmpfuncao.State in [dsinsert];
    dmdta.SalvarRegistro(dmdta.quempfuncao);
    if inserindo then
    begin
      quprincipal1.Close;
      quprincipal1.Open;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

end.

