unit TPOENTREL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD3, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, StdCtrls, Mask, DBCtrls, ToolEdit, RXDBCtrl;

type
  TFORENTREL = class(TFORMOD3)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    dtprevisao: TDBDateEdit;
    dtestudante: TDBDateEdit;
    dtsupervisor: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    btFuncao: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnCalcel2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid3: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    usprincipal2: TUpdateSQL;
    quprincipal2: TQuery;
    quprincipal3: TQuery;
    Usprincipal3: TUpdateSQL;
    UpdateSQL1: TUpdateSQL;
    Query1: TQuery;
    Query2: TQuery;
    UpdateSQL2: TUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure quPrincipal1AfterEdit(DataSet: TDataSet);
    procedure quPrincipal1AfterInsert(DataSet: TDataSet);
    procedure DBEdit2Change(Sender: TObject);
    procedure btFuncaoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCalcel2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    Tce: Integer;
    dataestudante, datasupervisor: string;
    { Public declarations }
  end;

var
  FORENTREL: TFORENTREL;

implementation
uses TPODTA, TPOFNC, TPOCST;

{$R *.dfm}

procedure TFORENTREL.FormCreate(Sender: TObject);
begin
  inherited;
  quPrincipal1 := DmDta.quTceRelatorio;
  DmDta.dsTceRelatorio.DataSet := quPrincipal1;
  DmDta.qrypend.close;
  DmDta.qrypend.open;

  quPrincipal2 := DmDta.qutcerelpend1;
  quprincipal2.Close;
  DmDta.dstcerelpend1.DataSet := quPrincipal2;

  quPrincipal3 := DmDta.qutcerelpend2;
  quprincipal3.Close;
  DmDta.dstcerelpend2.DataSet := quPrincipal3;
end;

procedure TFORENTREL.FormShow(Sender: TObject);
begin
  inherited;
  with quPrincipal1 do
  begin
    Close;
    ParamByName('tce_cod').AsInteger := tce;
    Open;
  end;
end;

procedure TFORENTREL.btSalvarClick(Sender: TObject);
var
  proximo: integer;
begin
  if dmdta.qutceRelatorioEst_Data.NewValue <> dmdta.qutceRelatorioEst_Data.OldValue then
  begin
    if dmdta.qutceRelatorioEst_Data.AsString <> '' then
      dmdta.qutceRelatorioUser_aluno.asstring := dmdta.usuario
    else
      dmdta.qutceRelatorioUser_aluno.asstring := '';
  end;
  if dmdta.qutceRelatorioEst_Data.AsString = '' then
    dmdta.qutceRelatorioUser_aluno.asstring := '';

  if dmdta.qutceRelatoriosup_Data.NewValue <> dmdta.qutceRelatoriosup_Data.OldValue then
  begin
    if dmdta.qutceRelatoriosup_Data.AsString <> '' then
      dmdta.qutceRelatorioUser_supervisor.asstring := dmdta.usuario
    else
      dmdta.qutceRelatorioUser_supervisor.asstring := ''
  end;
  if dmdta.qutceRelatoriosup_Data.AsString = '' then
    dmdta.qutceRelatorioUser_supervisor.asstring := '';

  if quprincipal1.FieldByName('prev_data').asstring = '' then
  begin
    showmessage('Entre com a data de entrega do relatório');
    exit;
  end;
  if quprincipal1.State in [dsInsert] then
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select coalesce(max(ordem),0) maximo from tcerelatorio where tce_cod =:tce_cod ');
      ParamByName('tce_cod').AsInteger := tce;
      Open;
      proximo := fieldbyname('maximo').asinteger;
      inc(proximo);
      quprincipal1.FieldByName('ordem').asinteger := proximo;
      close;
      free;
    end;
  end;
  inherited;

end;


procedure TFORENTREL.btNovoClick(Sender: TObject);
begin
  inherited;
  quprincipal1.fieldbyname('tce_cod').asinteger := tce;
end;

procedure TFORENTREL.quPrincipal1AfterEdit(DataSet: TDataSet);
begin
  inherited;
  dataestudante := quprincipal1.fieldbyname('est_data').asstring;
  datasupervisor := quprincipal1.fieldbyname('sup_data').asstring;



end;

procedure TFORENTREL.quPrincipal1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  dataestudante := '';
  datasupervisor := '';
end;

procedure TFORENTREL.DBEdit2Change(Sender: TObject);
begin
  QUPRINCIPAL2.CLOSE;
  QUPRINCIPAL3.CLOSE;
  if quprincipal1.fieldbyname('ORDEM').asstring <> '' then
  begin
    quprincipal2.ParamByName('ordem').AsString := quprincipal1.fieldbyname('ORDEM').asstring;
    quprincipal2.ParamByName('tce').AsString := quprincipal1.fieldbyname('tce_cod').asstring;
    QUPRINCIPAL2.open;

    quprincipal3.ParamByName('ordem').AsString := quprincipal1.fieldbyname('ORDEM').asstring;
    quprincipal3.ParamByName('tce').AsString := quprincipal1.fieldbyname('tce_cod').asstring;
    QUPRINCIPAL3.open;
  end;
end;

procedure TFORENTREL.btFuncaoClick(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.qutceRelatorio.state in [dsbrowse]) and
    (dmdta.qutceRelatorio.IsEmpty = false) then
  begin
    DmDta.qutceRelPend1.Insert;
    DmDta.qutcerelpend1tce.AsString := dbedit1.Text;
    DmDta.qutcerelpend1ordem.AsString := dbedit2.Text;
    DmDta.qutcerelpend1tipo.Asinteger := 1;
    dbgrid2.SetFocus;
    keybd_event(VK_F2, 0, 0, 0);
    keybd_event(VK_F2, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(VK_MENU, 0, 0, 0);
    keybd_event(VK_DOWN, 0, 0, 0);
    keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
  end;
end;

procedure TFORENTREL.SpeedButton1Click(Sender: TObject);
begin
  if (dbedit1.Text <> '') and
    (dmdta.qutceRelatorio.state in [dsbrowse]) and
    (dmdta.qutceRelatorio.IsEmpty = false) then
  begin
    DmDta.qutceRelPend2.Insert;
    DmDta.qutcerelpend2tce.AsString := dbedit1.Text;
    DmDta.qutcerelpend2ordem.AsString := dbedit2.Text;
    DmDta.qutcerelpend2tipo.Asinteger := 2;
    dbgrid3.SetFocus;
    keybd_event(VK_F2, 0, 0, 0);
    keybd_event(VK_F2, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(VK_MENU, 0, 0, 0);
    keybd_event(VK_DOWN, 0, 0, 0);
    keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
  end;

end;

procedure TFORENTREL.SpeedButton3Click(Sender: TObject);
begin

  if quprincipal3.State in [dsinsert, dsedit] then
  begin
    DmDta.salvarRegistro(quprincipal3);
    dbgrid2.SetFocus;
  end;
end;

procedure TFORENTREL.SpeedButton2Click(Sender: TObject);
begin
  if quprincipal2.State in [dsinsert, dsedit] then
    DmDta.salvarRegistro(quprincipal2);

end;

procedure TFORENTREL.SpeedButton8Click(Sender: TObject);
begin
  if (quprincipal2.State in [dsbrowse]) and (quprincipal2.IsEmpty = false) then
  begin
    quprincipal2.Edit;
    dbgrid2.SetFocus;
  end;

end;

procedure TFORENTREL.SpeedButton5Click(Sender: TObject);
begin
  if (quprincipal3.State in [dsbrowse]) and (quprincipal3.IsEmpty = false) then
    quprincipal3.Edit;


end;

procedure TFORENTREL.SpeedButton6Click(Sender: TObject);
begin
  if (quprincipal3.State in [dsbrowse] = false) and (quprincipal3.IsEmpty = false) then
    DmDta.CancelarRegistro(quprincipal3);
end;

procedure TFORENTREL.btnCalcel2Click(Sender: TObject);
begin
  if (quprincipal2.State in [dsbrowse] = false) and (quprincipal2.IsEmpty = false) then
    DmDta.CancelarRegistro(quprincipal2);

end;

procedure TFORENTREL.SpeedButton4Click(Sender: TObject);
begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal2);
    except
    end;
  end;

end;

procedure TFORENTREL.SpeedButton7Click(Sender: TObject);
begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal3);
    except
    end;
  end;

end;

end.

