unit TpoContatos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBCtrls, StdCtrls, ExtCtrls, Buttons, DBTables, DBGrids, Mask,
  DB, Grids, ComCtrls;

type
  TFORCONTATOS = class(TFORMOD3)
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RdStatus: TDBRadioGroup;
    Label12: TLabel;
    nb: TNotebook;
    DBEdit16: TDBEdit;
    Label4: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit21: TDBEdit;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit9: TDBEdit;
    quprincipal2: TQuery;
    usprincipal2: TUpdateSQL;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBGrid4: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure RdStatusChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    estudante: string;
    { Public declarations }
  end;

var
  FORCONTATOS: TFORCONTATOS;

implementation

uses TPODTA, TPOVAG, tpocst, tpofnc, TPOAGE;

{$R *.DFM}

procedure TFORCONTATOS.FormCreate(Sender: TObject);
begin
  quPrincipal1 := DmDta.qucontatos;
  dmdta.dsContatos.DataSet := quPrincipal1;

  quPrincipal2 := DmDta.quEstContvaga;
  DmDta.dsEstContVaga.DataSet := quPrincipal2;


end;

procedure TFORCONTATOS.FormShow(Sender: TObject);
begin
  quprincipal1.Close;
  quprincipal1.ParamByName('Estudante').asstring := edit1.Text;
  quprincipal1.Open;
end;

procedure TFORCONTATOS.DBEdit2DblClick(Sender: TObject);
begin
// Address $B60F10
end;

procedure TFORCONTATOS.DBEdit3DblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;
  if FORVAG.F2Codigo <> '' then
  begin
    if DmDta.questcontvaga.Active then
    begin
      if not (DmDta.questcontvaga.State in [dsInsert, dsEdit]) then dmDta.questcontvaga.Edit;
      DmDta.questcontvagavag_cod.Text := FORVAG.F2Codigo;
      DmDta.questcontvagaemp_cod.Value := FORVAG.F2Emp;
    end;
  end;
  FORVAG.Free;
end;

procedure TFORCONTATOS.DBEdit3Exit(Sender: TObject);
begin
  if (DBEdit3.Text <> '') and (quPrincipal2.State = dsInsert) then
  begin
    if quPrincipal2.Active then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit3.text);
        Open;
        if not IsEmpty then
          DmDta.questcontvagaemp_cod.Value := fieldbyname('emp_cod').asinteger;
      end;
    end;
  end;
end;

procedure TFORCONTATOS.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORAGE := TFORAGE.Create(Self);
  Screen.Cursor := crDefault;
  FORAGE.ShowModal;
end;

procedure TFORCONTATOS.DBEdit7Change(Sender: TObject);
begin
  quprincipal2.Close;
  if dbedit7.Text <> '' then
  begin
    quprincipal2.Close;
    quprincipal2.ParamByName('contato').AsString := dmdta.quContatosCont_cod.AsString;
    quprincipal2.Open;
    dbedit3.Enabled := false;
    dbedit2.Enabled := false;
  end;
end;

procedure TFORCONTATOS.RdStatusChange(Sender: TObject);
begin
  nb.ActivePage := 'Default';
  case rdstatus.ItemIndex of
    2: nb.ActivePage := 'Melhorhorario';
    3: nb.ActivePage := 'Recado';
    7: nb.ActivePage := 'ValorMinimo';
    9: nb.ActivePage := 'Retorno';
    10: nb.ActivePage := 'TextoOutros';
    11: nb.ActivePage := 'Agenda';
  end;
end;

procedure TFORCONTATOS.SpeedButton2Click(Sender: TObject);
var
  Editando: boolean;
begin
  if dmdta.quContatos.State in [dsbrowse] then
  begin
    dmdta.quContatos.Edit;
    editando := false;
  end
  else
    editando := true;
  dmdta.quContatosNumeroLigacoes.asinteger := dmdta.quContatosNumeroLigacoes.asinteger + 1;
  if editando = false then
    dmdta.SalvarRegistro(dmdta.quContatos);

end;

procedure TFORCONTATOS.SpeedButton3Click(Sender: TObject);
var
  Editando: boolean;
begin
  if dmdta.quContatosNumeroLigacoes.asinteger > 0 then
  begin
    if dmdta.quContatos.State in [dsbrowse] then
    begin
      dmdta.quContatos.Edit;
      editando := false;
    end
    else
      editando := true;
    dmdta.quContatosNumeroLigacoes.asinteger := dmdta.quContatosNumeroLigacoes.asinteger - 1;
    if editando = false then
      dmdta.SalvarRegistro(dmdta.quContatos);
  end;
end;

procedure TFORCONTATOS.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
// Address $B619D4
end;

procedure TFORCONTATOS.SpeedButton4Click(Sender: TObject);
begin
//
  if (dmdta.qucontatos.state in [dsbrowse]) and
    (dmdta.qucontatos.IsEmpty = false) then
  begin
    DmDta.quEstContVaga.Insert;
    DmDta.quEstContVagacont_cod.AsString := dbedit7.Text;
    dbedit3.Enabled := true;
    dbedit2.Enabled := true;
    dbedit3.SetFocus;
  end;
end;

procedure TFORCONTATOS.SpeedButton10Click(Sender: TObject);
begin
  if (dmdta.qucontatos.state in [dsbrowse]) and
    (dmdta.qucontatos.IsEmpty = false) and
    (dmdta.quEstContVaga.IsEmpty = false) and
    (dmdta.quEstContVaga.state in [dsbrowse]) then
  begin
    DmDta.quEstContVaga.edit;
    dbedit3.Enabled := true;
    dbedit2.Enabled := true;
    dbedit3.SetFocus;
  end;
end;

procedure TFORCONTATOS.SpeedButton11Click(Sender: TObject);
var
  inserindo: boolean;
begin
  if dmdta.quEstContVaga.state in [dsedit, dsinsert] then
  begin
    inserindo := dmdta.quEstContVaga.state in [dsinsert];

    dmdta.SalvarRegistro(dmdta.quEstContVaga);
    dbedit3.Enabled := false;
    dbedit2.Enabled := false;
    if inserindo then
    begin
      quprincipal2.Close;
      quprincipal2.open;
    end;

  end;
end;

procedure TFORCONTATOS.SpeedButton12Click(Sender: TObject);
begin
  dmdta.CancelarRegistro(dmdta.quEstContVaga);
  dbedit3.Enabled := false;
  dbedit2.Enabled := false;
end;

procedure TFORCONTATOS.SpeedButton13Click(Sender: TObject);
begin
  dmdta.ExcluirRegistro(dmdta.quEstContVaga);

end;

procedure TFORCONTATOS.btSalvarClick(Sender: TObject);
var
novo:boolean;
begin
 // inherited;
  if dmdta.qucontatos.State in [dsinsert, dsedit] then
  begin
    if dmdta.qucontatos.State in [dsinsert] then
      novo := true
    else
      novo := false;
    dmdta.SalvarRegistro(dmdta.qucontatos);
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
    if novo then
    begin
      quprincipal1.Close;
      quprincipal1.open;
      quprincipal1.Last;
    end;


  end;
end;

procedure TFORCONTATOS.btExcluirClick(Sender: TObject);
begin
  inherited;
 // dmdta.ExcluirRegistro(dmdta.qucontatos);
end;

procedure TFORCONTATOS.btNovoClick(Sender: TObject);
begin
  inherited;
  dmdta.quContatosest_cod.AsString := edit1.Text;
end;

procedure TFORCONTATOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  quprincipal1.close;
  quprincipal2.close;
  action := cafree;
end;

end.

