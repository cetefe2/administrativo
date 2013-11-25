unit TPOVREQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, DBCtrls, Mask, wwdblook, Wwdbdlg;

type
  TFORVREQ = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    rdTipo: TDBRadioGroup;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBLookupComboDlg1UserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Vaga: Integer;
    F2: Boolean;
    procedure InicializaDados; override;
    procedure SetaCodigo(Codigo: Integer);
  end;

var
  FORVREQ: TFORVREQ;

implementation

{$R *.dfm}

uses TPODTA, TPOFNC, TPOREQ;

procedure TFORVREQ.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'id_requisito';
  nomeNome := 'requisito';
  nomeTabela := 'tb_vagarequisito';
  vaga := -1;

  quPrincipal1 := DmDta.quVagarequisito;
  DmDta.dsVagaCurso.DataSet := quPrincipal1;
end;

procedure TFORVREQ.SetaCodigo(Codigo: Integer);
begin
  Vaga := Codigo;
  edVagCod.Text := IntToStr(Vaga);
end;

procedure TFORVREQ.InicializaDados;
begin
  inherited;
  quPrincipal1.FieldByName('cod_vaga').Text := EdVagCod.Text;
  DBEdit1.SetFocus;
end;


procedure TFORVREQ.FormShow(Sender: TObject);
begin
  inherited;
  with quPrincipal1 do
  begin
    Close;
    ParamByName('vaga').AsInteger := Vaga;
    Open;
  end;
end;

procedure TFORVREQ.wwDBLookupComboDlg1UserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  inherited;
  inherited;

end;

procedure TFORVREQ.SpeedButton1Click(Sender: TObject);
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

