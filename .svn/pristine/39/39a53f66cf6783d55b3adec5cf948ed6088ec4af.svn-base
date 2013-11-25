unit TPOEST4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TFOREST4 = class(TFORMOD3)
    Label6: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    EstCod: Integer;
    procedure InicializaDados; override;
    { Public declarations }
  end;

var
  FOREST4: TFOREST4;

implementation

Uses TPODTA, TPOFNC, TPOSTW;

{$R *.DFM}

procedure TFOREST4.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'stw_cod';
  nomeNome   := 'stw_nome';
  nomeTabela := 'PerSoftware';

  quPrincipal1 := DmDta.quPerSoftware;
  DmDta.dsPerSoftware.DataSet := quPrincipal1;
end;

procedure TFOREST4.FormShow(Sender: TObject);
begin
  with quPrincipal1 do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;
  inherited;
end;

procedure TFOREST4.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsPerSoftware.DataSet := DmDta.quPerSoftware;
end;

procedure TFOREST4.InicializaDados;
begin
  inherited;
  DmDta.quPerSoftwareEST_COD.Value := EstCod;
  DBEdit10.SetFocus;
end;

procedure TFOREST4.btSalvarClick(Sender: TObject);
begin
  if DBEdit10.Text = '' then
  begin
    MSGERRO('Entre com o software do estudante!');
    DBEdit10.SetFocus;
  end
  else
    inherited;
end;

procedure TFOREST4.DBEdit10DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORSTW := TFORSTW.Create(Self);
  FORSTW.F2 := True;
  Screen.Cursor := crDefault;
  FORSTW.ShowModal;

  if FORSTW.F2Codigo <> '' then
  begin
    If DmDta.quPerSoftware.Active then
    begin
      if not (DmDta.quPerSoftware.State in [dsInsert,dsEdit]) then dmDta.quPerSoftware.Edit;
      DmDta.quPerSoftwareStw_cod.Text  := FORSTW.F2Codigo;
      DmDta.quPerSoftwarestw_nome.Text := FORSTW.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORSTW.Free;
end;

procedure TFOREST4.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then DBEdit10DblClick(Sender);
end;

procedure TFOREST4.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit10.Text <> '') then
  begin
    If DmDta.quPerSoftware.Active then
    begin
      if not (DmDta.quPerSoftware.State in [dsInsert,dsEdit]) then DmDta.quPerSoftware.Edit;
      DmDta.quPerSoftwarestw_nome.Text := DmDta.BuscaCampo('Software', 'stw_nome', 'stw_cod', StrToInt(DBEdit10.Text));

      if DmDta.quPerSoftwarestw_nome.Text = '' then
      begin
        MSGERRO('Software inexistente. Selecione outro software!');
        DBEdit10.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    If DmDta.quPerSoftware.Active then
    begin
      if not (DmDta.quPerSoftware.State in [dsInsert,dsEdit]) then DmDta.quPerSoftware.Edit;
      DmDta.quPerSoftwarestw_nome.Text := '';
    end;
  end;
end;

end.
