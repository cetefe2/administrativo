unit TPOSEXC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEXC = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    Label1: TLabel;
    btEnter: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btEmail: TSpeedButton;
    GroupBox2: TGroupBox;
    edInstCod: TEdit;
    edInstNome: TEdit;
    GroupBox3: TGroupBox;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure meDataIniExit(Sender: TObject);
    procedure meDataFimExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edInstCodDblClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AbreQuery();
  public
    { Public declarations }
    InUFPR : boolean;
  end;

var
  FORSEXC: TFORSEXC;

implementation

Uses TPODTA, TPOFNC, TPORSegExc, TPORResUFPR, TPOINS, TPOEMP, TPOSELEMP;

{$R *.DFM}

procedure TFORSEXC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btImprimirClick(Sender);
  end;
end;

procedure TFORSEXC.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    If InUFPR then
    begin
      Screen.Cursor := crHourGlass;
      QRResUFPR := TQRResUFPR.Create(Application);
      QRResUFPR.DataIni := meDataIni.Text;
      QRResUFPR.DataFim := meDataFim.Text;
      Screen.Cursor := crDefault;
      QRResUFPR.Preview;
      QRResUFPR.Free;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      QRSegExc := TQRSegExc.Create(Application);
      QRSegExc.DataIni := meDataIni.Text;
      QRSegExc.DataFim := meDataFim.Text;
      Screen.Cursor := crDefault;
      QRSegExc.Preview;
      QRSegExc.Free;
    end

  end;
end;

procedure TFORSEXC.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEXC.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus;
end;

procedure TFORSEXC.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else
      AbreQuery;
  end;
end;

procedure TFORSEXC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quSeguroExc.Close;
  Action := caFree;
end;

procedure TFORSEXC.FormShow(Sender: TObject);
begin
  If InUFPR then
  begin
    edInstCod.Text := '331';
    edInstCodExit(Sender);
  end;

  with DmDta.quSeguroExc do
  begin
    Close;
    {Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome,e.est_rg, e.est_cpf, t.tce_cod, e.est_email, m.emp_nome, ');
    Sql.Add('  t.tce_dataini, t.tce_datares tce_datafim, t.tce_situacao, e.est_dtnasc,');
    Sql.Add('  (select count(*) from Tce where');
    Sql.Add('   tce_datares between :data1 and :data2) as TotEstagiarios');
    Sql.Add('from');
    Sql.Add('  tce t, Estudante e, Empresa m');
    Sql.Add('where');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.tce_datares between :data1 and :data2');
    Sql.Add('order by');
    Sql.Add('  e.est_nome');                                       }
    ParamByName('data1').AsDateTime := StrToDateTIme('01/01/1990');
    ParamByName('data2').AsDateTime := StrToDateTIme('01/01/1990');
    Open;

    If InUFPR then
      Caption := 'Rescindidos da UFPR'
    else
      Caption := 'Excluídos do Seguro';
  end;
end;

procedure TFORSEXC.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSEXC.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  dmdta.quSeguroExcest_conta.Visible := true;
  dmdta.quSeguroExcest_banco.Visible := true;
  dmdta.quSeguroExcest_agencia.Visible := true;
  dmdta.quSeguroExcest_rg.Visible := true;
  GerarExcel(DmDta.quSeguroExc, Caption);
  dmdta.quSeguroExcest_conta.Visible := false;
  dmdta.quSeguroExcest_banco.Visible := false;
  dmdta.quSeguroExcest_agencia.Visible := false;
  dmdta.quSeguroExcest_rg.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORSEXC.FormCreate(Sender: TObject);
begin
  InUFPR := false;
end;

procedure TFORSEXC.edInstCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edInstCod.Text  := FORINS.F2Codigo;
    edInstNome.Text := FORINS.F2Nome;
    SelectNExt(ActiveControl,True,True);
  end
  else
  begin
    edInstCod.Text := '';
    edInstNome.Text := '';
  end;
  FORINS.Free;
end;

procedure TFORSEXC.edInstCodExit(Sender: TObject);
begin
  if edInstCod.Text <> '' then
  begin
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text));
    AbreQuery();
  end
  else
    edInstNome.Text := '';
end;

procedure TFORSEXC.AbreQuery;
begin
  if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
  begin
    with DmDta.quSeguroExc do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select');
      Sql.Add('  e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, m.emp_nome,e.est_conta,e.est_agencia,e.est_banco,e.est_rg, ');
      Sql.Add('  t.tce_dataini, t.tce_datares tce_datafim, t.tce_situacao, e.est_dtnasc,');
      Sql.Add('  (select count(*) from Tce t1, estudante e1 where');
      Sql.Add('   t1.est_cod = e1.est_cod and t1.tce_datares between :data1 and :data2');
      If edInstcod.Text <> '' then
        Sql.Add('  and e1.inst_cod = ' + edInstCod.Text);
      If edEmpcod.Text <> '' then
        Sql.Add('  and t1.emp_cod = ' + edEmpCod.Text);
      Sql.Add(') as TotEstagiarios');
      Sql.Add('from');
      Sql.Add('  tce t, Estudante e, Empresa m');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.tce_datares between :data1 and :data2');
      If edInstcod.Text <> '' then
        Sql.Add('  and e.inst_cod = ' + edInstCod.Text);
      If edEmpcod.Text <> '' then
        Sql.Add('  and t.emp_cod = ' + edEmpCod.Text);
      Sql.Add('order by');
      Sql.Add('  e.est_nome');
      ParamByName('data1').value := StrToDateTime(meDataIni.Text);
      ParamByName('data2').value := StrToDateTime(meDataFim.Text);
      Open;
    end;
  end;
end;

procedure TFORSEXC.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNExt(ActiveControl,True,True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSEXC.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    AbreQuery();
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSEXC.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key = vk_F2 then edInstCodDblClick(Sender);
end;

procedure TFORSEXC.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key = vk_F2 then edEmpCodDblClick(Sender);
end;

end.
