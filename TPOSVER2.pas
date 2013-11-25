unit TPOSVER2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls, QuickRpt,
  DBCGrids;

type
  TFORSVER2 = class(TForm)
    Bevel1: TBevel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    btEnter: TBitBtn;
    btEmail: TSpeedButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox2: TDBCheckBox;
    edAno: TEdit;
    edMes: TEdit;
    Label3: TLabel;
    edBolsa: TEdit;
    Label2: TLabel;
    edCETEFE: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edUFPR: TEdit;
    btCalcular: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edInstCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;
  public
    { Public declarations }
  end;

var
  FORSVER2: TFORSVER2;

implementation

Uses TPODTA, TPOFNC, TPOINS, TPORVER2;

{$R *.DFM}

procedure TFORSVER2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F2: edInstCodDblClick(Sender);
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSVER2.btImprimirClick(Sender: TObject);
begin
  btenter.SetFocus;
  BtCalcular.Click;
  if edInstCod.Text = '' then
  begin
    MSGERRO('Instituição não informada!');
    edInstCod.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRVer2 := TQRVer2.Create(Application);
    QRVer2.TotalBolsa := edBolsa.Text;
    QRVer2.TotalCont  := edCETEFE.Text;
    QRVer2.TotalUFPR  := edUFPR.Text;
    QRVer2.Mes := PreencheZerosEsquerda(edMes.Text, 2) + '/' + edAno.Text;
    Screen.Cursor := crDefault;
    QRVer2.Preview;
    QRVer2.Free;
  end;
end;

procedure TFORSVER2.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSVER2.edInstCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edINStCod.Text  := FORINS.F2Codigo;
    edINStNome.Text := FORINS.F2Nome;
    SelectNExt(ActiveControl,True,True);
  end
  else
  begin
    edINStCod.Text := '';
    edINStNome.Text := '';
  end;
  FORINS.Free;
end;

procedure TFORSVER2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quContUFPR.Close;
  Action := caFree;
end;

procedure TFORSVER2.FormShow(Sender: TObject);
var
  ano, mes, dia: Word;
begin
  DecodeDate(Date, ano, mes, dia);
  edAno.Text := IntTostr(ano);
  edMes.Text := IntToStr(mes);
  edInstCod.Text := '331';
  edInstNome.Text := 'UNIVERSIDADE FEDERAL DO PARANÁ - UFPR';
  edInstCodExit(Sender);
end;

procedure TFORSVER2.edInstCodExit(Sender: TObject);
begin
  if edInstCod.Text <> '' then
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text))
  else
    edInstNome.Text := '';
end;

procedure TFORSVER2.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edInstCodDblClick(Sender);
end;

procedure TFORSVER2.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSVER2.btEmailClick(Sender: TObject);
begin
  edInstCod.setfocus;
  Screen.Cursor := crHourGlass;
  dmdta.quContUFPRCur_nome.Visible := true;
  GerarExcel(DmDta.quContUFPR, Caption);
  dmdta.quContUFPRCur_nome.Visible := false;
  Screen.Cursor := crDefault;
end;

procedure TFORSVER2.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if Not ValidaMes(edMes.Text) then
    begin
      edMes.SetFocus;
      Exit;
    end
    else
    begin
      edMes.Text := FormatFloat('00', StrToFloat(edMes.Text));
      AbreQuery;
    end;
  end;
end;

procedure TFORSVER2.btCalcularClick(Sender: TObject);
var
  TotBolsa, TotCont, TotUFPR: Double;
begin
  btEnter.SetFocus;
  TotBolsa := 0;
  TotCont  := 0;
  TotUFPR  := 0;

  with DmDta.quContUFPR do
  begin
    DisableControls;
    First;
    while Not Eof do
    begin
      If FieldByName('Confirmacao').Value = '1' Then
      begin
        totBolsa := totBolsa + dmdta.quContUFPRtce_Bolsa.AsFloat;
        totcont  := totCont  + dmdta.quContUFPRvalorCont.AsFloat;
        totUFPR  := totUFPR  + dmdta.quContUFPRvalorUFPR.AsFloat;
      end;
      Next;
    end;
    First;
    EnableControls;
  end;

  edBolsa.Text := formatfloat('#,###,##0.00', TotBolsa);
  edCETEFE.Text := formatfloat('#,###,##0.00', TotCont);
  edUFPR.Text := formatfloat('#,###,##0.00', TotUFPR);
end;

procedure TFORSVER2.AbreQuery;
var
  data1, data2: String;
begin
  if (edInstNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
  begin
    data1    := '01/' + edMes.Text + '/' + edAno.Text;
    data2    := IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                   StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;

    with DmDta.qucontUFPR do
    begin
      If UpdatesPending then CancelUpdates;
      Close;
      Sql.Clear;

      // normais

      Sql.Add('select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, 0 tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, t.tce_bolsa, ''1'' as Confirmacao, t.tce_dataini, t.tce_datafim');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, curso c');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao = ''0'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datafim >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''1''');
      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, 0 tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras) as Tce_bolsa, ''1'' as Confirmacao, t.tce_dataini, t.tce_datafim');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, curso c');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao = ''0'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datafim >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''0''');

      // rescindidos - normais

      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, 0 tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras * day(t.tce_datares)/30) as tce_bolsa, ''1'' as Confirmacao, t.tce_dataini, t.tce_datafim');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, curso c');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''0''');
      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, 0 tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * day(t.tce_datares)/30) as tce_bolsa, ''1'' as Confirmacao, t.tce_dataini, t.tce_datafim');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, curso c');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  t.tce_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''1''');

      // rescindidos - aditivos

      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, max(prg_cod) tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras * day(t.tce_datares)/30) as tce_bolsa, ''1'' as Confirmacao, max(a.tpr_dataini), max(a.tpr_datafim)');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, TceAditivo a, curso c');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''0''');
      Sql.Add('group by');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras * day(t.tce_datares)/30)');
      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, max(prg_cod) tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * day(t.tce_datares)/30) as tce_bolsa, ''1'' as Confirmacao, max(a.tpr_dataini), max(a.tpr_datafim)');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, TceAditivo a, curso c');
      Sql.Add('where');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao = ''7'' and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  t.tce_datares >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''1''');
      Sql.Add('group by');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * day(t.tce_datares)/30)');

      // termos aditivos

      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, max(prg_cod) tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, t.tce_bolsa, ''1'' as Confirmacao, max(a.tpr_dataini), max(a.tpr_datafim)');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, TceAditivo a, curso c');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao <> ''0'' and');
      Sql.Add('  t.tce_situacao <> ''7'' and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  a.tpr_datafim >= :data1 and');
      Sql.Add('  t.tce_tipobolsa = ''1''');
      Sql.Add('group by');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, t.tce_bolsa');
      Sql.Add('union select');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, max(prg_cod) tce_situacao, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras) as Tce_bolsa, ''1'' as Confirmacao, max(a.tpr_dataini), max(a.tpr_datafim)');
      Sql.Add('from');
      Sql.Add('  Tce t, estudante e, instituicao i, empresa m, TceAditivo a, curso c');
      Sql.Add('where');
      Sql.Add('  e.inst_cod = i.inst_cod and');
      Sql.Add('  t.est_cod = e.est_cod and');
      Sql.Add('  t.tce_cod = a.tce_cod and');
      Sql.Add('  t.emp_cod = m.emp_cod and');
      Sql.Add('  i.inst_cod = :inst_cod and');
      Sql.Add('  t.tce_situacao <> ''0'' and');
      Sql.Add('  t.tce_situacao <> ''7'' and');
      Sql.Add('  a.tpr_dataini <= :data2 and');
      Sql.Add('  a.tpr_datafim >= :data1 and');
      Sql.Add('  c.cur_cod = e.cur_cod and');
      Sql.Add('  t.tce_tipobolsa = ''0''');
      Sql.Add('group by');
      Sql.Add('  t.tce_cod, e.est_nome, i.inst_nome, m.emp_nome, m.emp_tipotaxa, c.cur_nome,');
      Sql.Add('  m.emp_valortaxa, t.tce_datares, t.tce_tothoras, (t.tce_bolsa * t.tce_tothoras)');

      Sql.Add('order by');
      Sql.Add('  e.est_nome');

      ParamByName('Inst_cod').Text := edInstCod.Text;
      ParamByName('data1').AsDateTime := StrToDate(data1);
      ParamByName('data2').AsDateTime := StrToDate(data2);
      Open;
      btCalcular.Click;
      DBCtrlGrid1.SetFocus;
    end;
  end;
end;

procedure TFORSVER2.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if Not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
  end
  else
    AbreQuery;
end;

end.
