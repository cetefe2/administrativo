unit TPOSTEST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSTEST = class(TForm)
    Bevel1: TBevel;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    GroupBox1: TGroupBox;
    btExportar: TSpeedButton;
    Label3: TLabel;
    btPesquisar: TSpeedButton;
    Label10: TLabel;
    edTotalEstagiarios: TEdit;
    btLimpar: TSpeedButton;
    Label1: TLabel;
    Label11: TLabel;
    rbgSituacao: TRadioGroup;
    cboNivel: TComboBox;
    cboArea: TComboBox;
    cboTurno: TComboBox;
    Label2: TLabel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label4: TLabel;
    edCurCod: TEdit;
    edCurNome: TEdit;
    Label8: TLabel;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    Label7: TLabel;
    Label5: TLabel;
    edAno: TEdit;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure edInstCodDblClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCurCodDblClick(Sender: TObject);
    procedure edCurCodExit(Sender: TObject);
    procedure edCurCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CalculaTotalEstagiarios();
  public
    { Public declarations }
  end;

var
  FORSTEST: TFORSTEST;

implementation

Uses TPODTE, TPOFNC, TPOINS, TPODTA, TPOCUR;

{$R *.DFM}

procedure TFORSTEST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btLimparClick(Sender);
    vk_F6: btExportarClick(Sender);
    vk_F7: btPesquisarClick(Sender);
  end;
end;

procedure TFORSTEST.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSTEST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFORSTEST.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORSTEST.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDte.quTotaisCadastro, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSTEST.btPesquisarClick(Sender: TObject);
begin
  with DmDte.quTotaiscadastro do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select 		C.cur_cod, C.cur_nome, count(e.est_cod) total');
    Sql.Add('from 			Estudante e, Curso c');
    Sql.Add('where 		  e.cur_cod = c.cur_cod');

    // instituição
    If edInstCod.Text <> '' then
      Sql.Add('and e.inst_cod = ' + edInstCod.Text);

    // nível
    If cboNivel.ItemIndex >= 0 then
      Sql.Add('and C.cur_nivel = ''' + cboNivel.Text + '''');

    // área
    If cboArea.ItemIndex >= 0 then
      Sql.Add('and C.cur_area = ''' + cboArea.Text + '''');

    // turno
    If cboTurno.ItemIndex >= 0 then
      Sql.Add('and e.pcu_turno = ' + IntToStr(cboTurno.ItemIndex));

    // Curso
    If edCurCod.Text <> '' then
      Sql.Add('and e.cur_cod = ' + edCurCod.Text);

    // período
    If meDataIni.Text <> '  /  /    ' then
      Sql.Add('and e.est_dtinc >= ''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''');

    If meDataFim.Text <> '  /  /    ' then
      Sql.Add('and e.est_dtinc <= ''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''');

    // ano
    If edAno.Text <> '' then
      Sql.Add('and e.pcu_anoatual = ' + edAno.Text);

    // estagiando
    If rbgSituacao.ItemIndex = 1 then
    begin
      Sql.Add('and e.est_cod in (select est_cod from Tce');
      Sql.Add('where tce_situacao <> ''7'')');
    end

    // não estagiando
    else If rbgSituacao.ItemIndex = 2 then
    begin
      Sql.Add('and e.est_cod not in (select est_cod from Tce');
      Sql.Add('where tce_situacao <> ''7'')');
    end;

    Sql.Add('group by   c.cur_cod, C.cur_nome');
    Sql.Add('order by   C.cur_nome');
    Open;

    CalculaTotalEstagiarios();
  end;
end;

procedure TFORSTEST.FormShow(Sender: TObject);
begin
  with DmDte.quTotaiscadastro do
  begin
    Sql.Clear;
    Sql.Add('select 		C.cur_cod, C.cur_nome, count(e.est_cod) total');
    Sql.Add('from 			Estudante e, Curso c');
    Sql.Add('where 		  e.cur_cod = c.cur_cod');
    Sql.Add('and        e.est_cod = -1');
    Sql.Add('group by   c.cur_cod, C.cur_nome');
    Sql.Add('order by   C.cur_nome');
    Open;
    CalculaTotalEstagiarios();
  end;
end;

procedure TFORSTEST.btLimparClick(Sender: TObject);
begin
  edInstCod.Text        := '';
  edInstNome.Text       := '';
  cboNivel.ItemIndex    := -1;
  cboArea.ItemIndex     := -1;
  cboTurno.ItemIndex    := -1;
  rbgSituacao.ItemIndex := 0;
  FormShow(Sender);
end;

procedure TFORSTEST.CalculaTotalEstagiarios;
var
  Total: Integer;
begin
  total := 0;
  with DmDTE.quTotaisCadastro do
  begin
    DisableControls;
    First;

    while not eof do
    begin
      total := total + FieldbyName('Total').AsInteger;
      next;
    end;

    First;
    enableControls;
  end;

  edTotalEstagiarios.Text := IntToStr(Total);
end;

procedure TFORSTEST.edInstCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORINS        := TFORINS.Create(Self);
  FORINS.F2     := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edInstCod.Text  := FORINS.F2Codigo;
    edInstNome.Text := FORINS.F2Nome;
    SelectNext(ActiveControl,True,True);
  end
  else
  begin
    edInstCod.Text := '';
    edInstNome.Text := '';
  end;
  FORINS.Free;
end;

procedure TFORSTEST.edInstCodExit(Sender: TObject);
begin
  if edInstCod.Text <> '' then
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text))
  else
    edInstNome.Text := '';
end;

procedure TFORSTEST.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_F2 then
    edInstCodDblClick(Sender);
end;

procedure TFORSTEST.edCurCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FORCUR        := TFORCUR.Create(Self);
  FORCUR.F2     := True;
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

  if FORCUR.F2Codigo <> '' then
  begin
    edCurCod.Text  := FORCUR.F2Codigo;
    edCurNome.Text := FORCUR.F2Nome;
    SelectNext(ActiveControl,True,True);
  end
  else
  begin
    edCurCod.Text  := '';
    edCurNome.Text := '';
  end;
  FORCUR.Free;
end;

procedure TFORSTEST.edCurCodExit(Sender: TObject);
begin
  if edCurCod.Text <> '' then
    edCurNome.Text := DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(edCurCod.Text))
  else
    edCurNome.Text := '';
end;

procedure TFORSTEST.edCurCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_F2 then
    edCurCodDblClick(Sender);
end;

end.
