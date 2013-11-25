unit TPOFORBEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  db, Dialogs, TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  Grids, DBGrids, DBTables;

type
  TFORBEN = class(TFORMOD1)
    GroupBox4: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    quprincipal2: TQuery;
    usprincipal2: TUpdateSQL;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnCalcel2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    pagina: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton3: TSpeedButton;
    rdauxilio: TDBRadioGroup;
    Button1: TButton;
    nb: TNotebook;
    Label4: TLabel;
    DBEdit35: TDBEdit;
    Label1: TLabel;
    dbedit34: TDBMemo;
    TabSheet2: TTabSheet;
    rdAlimentacao: TDBRadioGroup;
    Button2: TButton;
    nb2: TNotebook;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Rdantecipa: TDBRadioGroup;
    rdPeriodo: TDBRadioGroup;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure rdauxilioChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdAlimentacaoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnCalcel2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit34DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORBEN: TFORBEN;

implementation

uses TPODTA, TPOFNC, TPOCST, untLibera;

{$R *.dfm}

procedure TFORBEN.Button1Click(Sender: TObject);
begin
  inherited;
  if not (DmDta.quVaga.State in [dsInsert, dsEdit]) then dmDta.quVaga.Edit;
  DmDta.quVagavag_Auxtransp.AsString := '';
  rdauxilio.ItemIndex := -1;
  DmDta.quVagaVag_Auxtransptexto.AsString := '';
  DmDta.quVagaVag_Auxtranspvalor.asstring := '';
end;

procedure TFORBEN.rdauxilioChange(Sender: TObject);
begin
  inherited;
  nb.ActivePage := 'default';
  dbedit35.Enabled := rdauxilio.ItemIndex = 1;
  dbedit34.Enabled := rdauxilio.ItemIndex = 3;
  case rdauxilio.ItemIndex of
    1: nb.ActivePage := 'valor';
    3: nb.ActivePage := 'outro';
  end;
  if DmDta.quVaga.State in [dsedit, dsinsert] then
  begin
    if dbedit35.Enabled = false then
      DmDta.quVagaVag_Auxtranspvalor.asstring := '';
    if dbedit34.Enabled = false then
      DmDta.quVagaVag_Auxtransptexto.AsString := '';
  end;
end;

procedure TFORBEN.FormActivate(Sender: TObject);
begin
  inherited;
  nb2.ActivePage := 'Nada';
  case rdalimentacao.ItemIndex of
    0: nb2.ActivePage := 'vale';
    2: nb2.ActivePage := 'auxilio';
  end;
  rdauxilio.Controls[3].Enabled := false;
  dbedit35.Enabled := rdauxilio.ItemIndex = 1;
  dbedit34.Enabled := rdauxilio.ItemIndex = 3;
  nb.ActivePage := 'default';
  case rdauxilio.ItemIndex of
    1: nb.ActivePage := 'valor';
    3: nb.ActivePage := 'outro';
  end;
  if DmDta.quVaga.State in [dsedit, dsinsert] then
  begin
    if dbedit35.Enabled = false then
      DmDta.quVagaVag_Auxtranspvalor.asstring := '';
    if dbedit34.Enabled = false then
      DmDta.quVagaVag_Auxtransptexto.AsString := '';
  end;
end;

procedure TFORBEN.rdAlimentacaoChange(Sender: TObject);
begin
  inherited;
  dbedit1.Enabled := rdAlimentacao.ItemIndex = 0;
  dbedit2.Enabled := rdAlimentacao.ItemIndex = 2;
  rdantecipa.Enabled := rdalimentacao.ItemIndex = 2;
  rdperiodo.Enabled := rdAlimentacao.ItemIndex = 2;
  nb2.ActivePage := 'Nada';
  case rdalimentacao.ItemIndex of
    0: nb2.ActivePage := 'vale';
    2: nb2.ActivePage := 'auxilio';
  end;
  if DmDta.quVaga.State in [dsedit, dsinsert] then
  begin
    if dbedit1.Enabled = false then
      DmDta.quVagaVag_AuxAlimvalor.asstring := '';
    if dbedit2.Enabled = false then
      DmDta.quVagaVag_AuxAlimtexto.AsString := '';
  end;

end;

procedure TFORBEN.FormCreate(Sender: TObject);
begin
  inherited;
  quPrincipal2 := DmDta.quvagaBeneficio;
  quprincipal2.Close;
  quprincipal2.sql.Clear;
  quprincipal2.sql.Add('SELECT  *  from VagaBeneficio ');
  quprincipal2.sql.Add(' where  emp_cod=:empresa and vag_cod=:vaga  ');
  DmDta.dsVagaBeneficio.DataSet := quPrincipal2;
  quprincipal2.ParamByName('vaga').asinteger := dmdta.quVagaVag_cod.AsInteger;
  quprincipal2.ParamByName('empresa').asinteger := dmdta.quVagaemp_cod.AsInteger;
  quprincipal2.open;


end;

procedure TFORBEN.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if DmDta.quVagaBeneficio.State in [dsbrowse] then
  begin
    DmDta.quVagaBeneficio.Insert;
    DmDta.quVagaBeneficioemp_cod.asinteger := dmdta.quVagaemp_cod.AsInteger;
    DmDta.quVagaBeneficioVag_cod.asinteger := dmdta.quVagaVag_cod.AsInteger;
  end;
end;

procedure TFORBEN.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if DmDta.quVagaBeneficio.State in [dsinsert, dsedit] then
    DMDta.SalvarRegistro(quPrincipal2);

end;

procedure TFORBEN.btnCalcel2Click(Sender: TObject);
begin
  inherited;
  DmDta.CancelarRegistro(quPrincipal2);
end;

procedure TFORBEN.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal2);
    except

    end;
  end;

end;

procedure TFORBEN.DBEdit34DblClick(Sender: TObject);
begin
  inherited;
  if frmlibera.showmodal = mrok then
    DBEdit34.readonly := false
  else
    showmessage('Você não tem Permissão para trocar este Status nessa tela!!');
end;

procedure TFORBEN.SpeedButton3Click(Sender: TObject);
begin
  if frmlibera.showmodal <> mrok then
  begin
    showmessage('Você não tem Permissão para executar essa tarefa!!');
    exit;
  end
  else
    rdauxilio.Controls[3].Enabled := true;

end;

procedure TFORBEN.Button2Click(Sender: TObject);
begin
  inherited;
  if not (DmDta.quVaga.State in [dsInsert, dsEdit]) then
    dmDta.quVaga.Edit;
  rdalimentacao.ItemIndex := -1;

end;

procedure TFORBEN.FormShow(Sender: TObject);
begin
  case rdalimentacao.ItemIndex of
    0: nb2.ActivePage := 'vale';
    2: nb2.ActivePage := 'auxilio';
  end;
end;

end.

