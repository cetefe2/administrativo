unit TPOEST8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD3, DBTables, Db, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TFOREST8 = class(TFORMOD3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    MePorque: TMemo;
    cbPresenca: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure MePorqueKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    EstCod: Integer;
    { Public declarations }
  end;

var
  FOREST8: TFOREST8;

implementation

uses TPODTA, TPOFNC, TPOCST;

{$R *.DFM}

procedure TFOREST8.FormShow(Sender: TObject);
begin
  quPrincipal1 := DmDta.QuEntrevista;

  with DmDta.QuEntrevista do
  begin
    Close;
    ParamByName('est_cod').AsInteger := EstCod;
    Open;
  end;
  inherited;
end;

procedure TFOREST8.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btSalvar.Visible   := True;
  MePorque.Text      := DmDta.quEntrevistaporque.Text;
  cbPresenca.Checked := DmDta.quEntrevistaPresenca.Text = 'Sim';
  btCancelar.Visible := True;
end;

procedure TFOREST8.btSalvarClick(Sender: TObject);
begin
  // atualiza o campo porquê
  If (Not DBCheckBox1.Checked) and (MePorque.Text <> '') then
  begin
    // grava o campo porque
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Agenda set age_porque' + DmDta.quEntrevistaest.Text);
      Sql.Add(' = ''' + MePorque.Text + '''');
      Sql.Add('where age_data = :age_data');
      Sql.Add('and age_estcod' + DmDta.quEntrevistaest.Text + ' = :est_cod');
      ParamByName('age_data').AsDateTime := DmDta.quEntrevistaage_data.asDateTime;
      ParamByName('est_cod').AsInteger   := DmDta.quEntrevistaest_cod.AsInteger;
      ExecSql;
      Free;
    end;

    // abre e fecha a query
    DmDta.quEntrevista.Close;
    DmDta.quEntrevista.Open;
  end;

  btSalvar.Visible   := False;
  btCancelar.Visible := False;
  pgPrincipal.ActivePageIndex := 0;
end;

procedure TFOREST8.btCancelarClick(Sender: TObject);
begin
  btSalvar.Visible   := False;
  btCancelar.Visible := False;
  pgPrincipal.ActivePageIndex := 0;
end;

procedure TFOREST8.MePorqueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

end.
