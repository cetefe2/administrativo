unit TPOSEST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask;

type
  TFORSEST = class(TForm)
    Bevel1: TBevel;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    GroupBox1: TGroupBox;
    btExportar: TSpeedButton;
    Label1: TLabel;
    edInstCod: TEdit;
    edInstNome: TEdit;
    Label2: TLabel;
    edCurCod: TEdit;
    edCurNome: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    cboTurno: TComboBox;
    Label5: TLabel;
    cbPerCurInicio: TComboBox;
    edAno: TEdit;
    cbsexo: TComboBox;
    Label9: TLabel;
    Label6: TLabel;
    cbSituacao: TComboBox;
    btPesquisar: TSpeedButton;
    meDataIni: TMaskEdit;
    Label7: TLabel;
    meDataFim: TMaskEdit;
    Label8: TLabel;
    Label10: TLabel;
    edTotalEstagiarios: TEdit;
    btLimpar: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure edInstCodDblClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure edCurCodDblClick(Sender: TObject);
    procedure edCurCodExit(Sender: TObject);
    procedure edCurCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORSEST: TFORSEST;

implementation

Uses TPODTA, TPOFNC, TPORCai, TPORREC, TPOINS, TPOCUR, TPOEST;

{$R *.DFM}

procedure TFORSEST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btExportarClick(Sender);
  end;
end;

procedure TFORSEST.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //DmDta.quConsEstudante.Close;
  Action := caFree;
end;

procedure TFORSEST.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORSEST.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quConsEstudante, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSEST.edInstCodDblClick(Sender: TObject);
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

procedure TFORSEST.edInstCodExit(Sender: TObject);
begin
  if edInstCod.Text <> '' then
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text))
  else
    edInstNome.Text := '';
end;

procedure TFORSEST.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_F2 then
    edInstCodDblClick(Sender);
end;

procedure TFORSEST.btImprimirClick(Sender: TObject);
begin
//
end;

procedure TFORSEST.edCurCodDblClick(Sender: TObject);
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

procedure TFORSEST.edCurCodExit(Sender: TObject);
begin
  if edCurCod.Text <> '' then
    edCurNome.Text := DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(edCurCod.Text))
  else
    edCurNome.Text := '';
end;

procedure TFORSEST.edCurCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_F2 then
    edCurCodDblClick(Sender);
end;

procedure TFORSEST.btPesquisarClick(Sender: TObject);
var
  sWhere: String;
begin
  // filtra a consulta
  If (edInstCod.Text = '') and
     (edCurCod.Text  = '') and
     (edAno.Text     = '') and

     (cbPerCurInicio.ItemIndex = -1) and
     (cboTurno.ItemIndex       = -1) and
     (cbSexo.ItemIndex         = -1) and
     (cbSituacao.ItemIndex     = -1) then
  begin
    MSGERRO('Informe ao menos um critério de pesquisa!');
    Exit;
  end;

  sWhere := ' AND ';

  with DmDta.quConsEstudante do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select e.est_cod, e.est_nome, i.inst_nome, c.cur_nome, e.pcu_anoatual, e.est_situacao,e.pcu_peratual,  ');
    Sql.Add(' est_email,est_fone1,est_fone2,pcu_turno ');
    Sql.Add('from Estudante E, Instituicao I, Curso C');
    Sql.Add('where e.inst_cod = i.inst_cod and c.cur_cod = e.cur_cod');

    If edInstCod.Text <> '' then
    begin
      Sql.Add(sWhere + ' i.Inst_cod = ' + edInstCod.Text);
      sWhere := ' AND ';
    end;

    If edCurCod.Text <> '' then
    begin
      Sql.Add(sWhere + ' c.cur_cod = ' + edCurCod.Text);
      sWhere := ' AND ';
    end;

    If edAno.Text <> '' then
    begin
      Sql.Add(sWhere + ' e.pcu_anoatual = ' + edAno.Text);
      sWhere := ' AND ';
    end;

    If cbPerCurInicio.Text <> '' then
    begin
      Sql.Add(sWhere + ' e.pcu_vestib = ''' + IntToStr(cbPerCurInicio.ItemIndex) + '''');
      sWhere := ' AND ';
    end;

    If cboTurno.Text <> '' then
    begin
      Sql.Add(sWhere + ' e.pcu_turno = ''' + IntToStr(cboTurno.ItemIndex) + '''');
      sWhere := ' AND ';
    end;

    If cbSexo.Text <> '' then
    begin
      If cbSexo.Text = 'Masculino' then
      begin
        Sql.Add(sWhere + ' e.est_sexo = ''M''');
        sWhere := ' AND ';
      end
      else
      begin
        Sql.Add(sWhere + ' e.est_sexo = ''F''');
        sWhere := ' AND ';
      end;
    end;

    if cbSituacao.Text <> '' then
    begin
      If cbSituacao.Text = 'Não Estagiando' then
      begin
        Sql.Add(sWhere + ' e.est_situacao = ''N''');
        sWhere := ' AND ';
      end
      else If cbSituacao.Text = 'Estagiando' then
      begin
        Sql.Add(sWhere + ' e.est_situacao = ''S''');
        sWhere := ' AND ';
      end
      else If cbSituacao.Text = 'Ex-Estagiário' then
      begin
        Sql.Add(sWhere + ' e.est_situacao = ''X''');
        sWhere := ' AND ';
      end;
    end;

    If meDataIni.Text <> '  /  /    ' then
    begin
      Sql.Add(sWhere + ' e.est_dtinc >= ''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataIni.Text)) + '''');
      sWhere := ' AND ';
    end;
    If meDataFim.Text <> '  /  /    ' then
    begin
      Sql.Add(sWhere + ' e.est_dtinc <= ''' + FormatDateTime('dd/mm/yyyy', StrToDate(meDataFim.Text)) + '''');
      sWhere := ' AND ';
    end;

    Sql.Add('order by e.est_nome');

    Open;
    edTotalEstagiarios.Text := IntToStr(RecordCount);
  end;
end;

procedure TFORSEST.FormShow(Sender: TObject);
begin
  with DmDta.quConsEstudante do
  begin
  {  Close;
     Sql.Clear;
    Sql.Add('select e.est_cod, e.est_nome, i.inst_nome, c.cur_nome, e.pcu_anoatual, e.est_situacao,e.pcu_peratual');
    Sql.Add(' est_email,est_fone1,est_fone2,pcu_turno ');
    Sql.Add('from Estudante E, Instituicao I, Curso C');
    Sql.Add('where e.inst_cod = i.inst_cod and c.cur_cod = e.cur_cod');
   // Sql.Clear;
    //Sql.Add('select e.est_cod, e.est_nome, i.inst_nome, c.cur_nome, e.pcu_anoatual, e.est_situacao');
    //Sql.Add('from Estudante E, Instituicao I, Curso C');
    //Sql.Add('where e.inst_cod = i.inst_cod and c.cur_cod = e.cur_cod');
    Sql.Add('and e.est_cod = -1');
    Open;}
  end;
end;

procedure TFORSEST.btLimparClick(Sender: TObject);
begin
  edInstCod.Text  := '';
  edInstNome.Text := '';
  edCurCod.Text  := '';
  edCurNome.Text := '';
  edAno.Text     := '';

  cbPerCurInicio.ItemIndex := -1;
  cboTurno.ItemIndex       := -1;
  cbSexo.ItemIndex         := -1;
  cbSituacao.ItemIndex     := -1;

  meDataIni.Clear;
  meDataFim.Clear;
end;

procedure TFORSEST.DBGrid1DblClick(Sender: TObject);
begin
  FOREST := TFOREST.Create(Application);
  FOREST.EstDeFora := DmDta.quConsEstudanteEST_COD.Value;
  FOREST.ShowModal;
  FOREST.Free;
end;

end.
