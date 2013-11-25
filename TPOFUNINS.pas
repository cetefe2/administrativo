unit TPOFUNINS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, StdCtrls, DBCtrls, Mask, DB, DBTables, ExtCtrls, Grids, DBGrids,
  ComCtrls, Buttons;

type
  TFORFUNINS = class(TFORMOD3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORFUNINS: TFORFUNINS;

implementation

uses TPODTA;

{$R *.DFM}

procedure TFORFUNINS.FormCreate(Sender: TObject);
begin
  quPrincipal1 := DmDta.quInstFuncao;
  dmdta.dsInstFuncao.DataSet := quPrincipal1;
  quprincipal1.Open;
end;

procedure TFORFUNINS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFORFUNINS.btSalvarClick(Sender: TObject);
var
  Inserindo: boolean;
begin
  if dmdta.dsInstFuncao.State in [dsedit, dsinsert] then
  begin
    inserindo := dmdta.dsInstFuncao.State in [dsinsert];
    dmdta.SalvarRegistro(dmdta.quInstFuncao);
    if inserindo then
    begin
      quprincipal1.Close;
      quprincipal1.Open;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

procedure TFORFUNINS.FormShow(Sender: TObject);
begin
  estadoNavegando;
  pgPrincipal.ActivePage := tbConsulta;
end;

procedure TFORFUNINS.btNovoClick(Sender: TObject);
begin
  inherited;
  dmdta.quInstFuncaoFun_unica.AsString := 'N';
end;

end.

