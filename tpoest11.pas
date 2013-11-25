unit tpoest11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TFOREST11 = class(TFORMOD3)
    quPrincipal1Vaga: TIntegerField;
    quPrincipal1Empresa: TStringField;
    quPrincipal1Estudante: TStringField;
    quPrincipal1Agenda: TDateTimeField;
    quPrincipal1Setor: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    quPrincipal1Resultado: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    EstCod:integer;
    { Public declarations }
  end;

var
  FOREST11: TFOREST11;

implementation

{$R *.dfm}

procedure TFOREST11.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pgprincipal.ActivePage := tbRegistro;
end;

procedure TFOREST11.FormActivate(Sender: TObject);
begin
  inherited;
quprincipal1.close;
quprincipal1.ParamByName('cod').asinteger := EstCod;
quprincipal1.Open ;
end;

procedure TFOREST11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  quprincipal1.close;
end;

end.
