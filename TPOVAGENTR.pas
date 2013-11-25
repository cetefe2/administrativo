unit TPOVAGENTR;

interface

uses
  {Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, StdCtrls, DB, DBTables, ExtCtrls, Grids, DBGrids,
  ComCtrls, Buttons, Mask, DBCtrls;}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, DBCtrls, Mask;

type
  TFORVAGENTR = class(TFORMOD3)
    Label1: TLabel;
    edVagCod: TEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    edEmpresa: TEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Vaga, Emp: Integer;
    MudaAba, F2: Boolean;
    procedure SetaCodigo(Codigo, Empresa: Integer);
    { Public declarations }
  end;

var
  FORVAGENTR: TFORVAGENTR;

implementation
uses TPODTA, TPOFNC, TPOEFU;
{$R *.dfm}

{ TFORVAGSUP }

procedure TFORVAGENTR.SetaCodigo(Codigo, Empresa: Integer);
begin

  Vaga := Codigo;
  Emp := Empresa;
  edVagCod.Text := IntToStr(Vaga);
  edempresa.Text := IntToStr(Emp);
end;

procedure TFORVAGENTR.FormCreate(Sender: TObject);
begin
  inherited;
  vaga := -1;
  quPrincipal1 := DmDta.quEntrevistadorVaga;
  DmDta.dsEntrevistadorVaga.DataSet := quPrincipal1;
end;

procedure TFORVAGENTR.FormActivate(Sender: TObject);
begin
  inherited;
  quprincipal1.close;
  quprincipal1.ParamByName('vaga').AsInteger := vaga;
  quprincipal1.Active := true;
end;

procedure TFORVAGENTR.btNovoClick(Sender: TObject);
begin
  inherited;
  DmDta.quEntrevistadorVagaEmp_cod.AsInteger := strtoint(edEmpresa.Text);
  DmDta.quEntrevistadorvagaVag_cod.AsInteger := strtoint(edVagCod.Text);
end;

procedure TFORVAGENTR.btSalvarClick(Sender: TObject);
begin
  if quPrincipal1.State in [dsEdit, dsinsert] then
  begin
    try
      DMDta.SalvarRegistro(DmDta.quEntrevistadorVaga);
      pgPrincipal.ActivePage := tbConsulta;
      quprincipal1.Close;
      quprincipal1.Open;
      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;
      end;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end
end;

procedure TFORVAGENTR.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;
  Screen.Cursor := crHourGlass;
  FOREFU := TFOREFU.Create(Self);
  FOREFU.Emp := strtoint(edempresa.Text);
  FOREFU.EmpNome := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edempresa.Text));
  FOREFU.F2 := True;
  Screen.Cursor := crDefault;
  FOREFU.ShowModal;

  if FOREFU.F2Codigo <> '' then
  begin
    if quPrincipal1.Active then
    begin
      if not (quPrincipal1.State in [dsInsert, dsEdit]) then
        quPrincipal1.Edit;
      quPrincipal1.FieldByName('func_cod').Text := FOREFU.F2Codigo;
      quPrincipal1.FieldByName('EMP_cod').Text := INTTOSTR(FOREFU.EMP2);

    end;
    SelectNext(ActiveControl, True, true);
  end;

  FOREFU.Free;
  MudaAba := true;
end;

procedure TFORVAGENTR.btCancelarClick(Sender: TObject);
begin
  inherited;
  if MudaAba then
  begin
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

end.

