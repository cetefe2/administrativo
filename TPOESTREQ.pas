unit TPOESTREQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TFORESTREQ = class(TFORMOD3)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EstCod: Integer;
    procedure InicializaDados; override;
  end;

var
  FORESTREQ: TFORESTREQ;

implementation

uses TPODTA, TPOREQ;

{$R *.dfm}

procedure TFORESTREQ.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'id_requisito';
  nomeNome := 'requisito';
  nomeTabela := 'tb_estudanterequisito';
  quPrincipal1 := DmDta.quEstudanteRequisito;
  DmDta.dsEstudanteRequisito.DataSet := quPrincipal1;
end;

procedure TFORESTREQ.FormShow(Sender: TObject);
begin
  inherited;
  with quPrincipal1 do
  begin
    Close;
    ParamByName('estudante').AsInteger := EstCod;
    Open;
  end;

end;

procedure TFORESTREQ.InicializaDados;
begin
  inherited;
  DmDta.quEstudanterequisitoEST_COD.AsInteger := EstCod;

end;

procedure TFORESTREQ.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FRMREQ := TFRMREQ.Create(Self);
  FRMREQ.F2 := True;
  Screen.Cursor := crDefault;
  FRMREQ.ShowModal;
  DmDta.Requisitos.close;
  DmDta.requisitos.Open;
  if FRMREQ.F2Codigo <> '' then
  begin

    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then quPrincipal1.Edit;
      quPrincipal1.FieldByName('id_requisito').Text := FRMREQ.F2Codigo;

    end;
    SelectNext(ActiveControl, True, true);
  end;
  FRMREQ.Free;
end;

end.

