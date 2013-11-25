unit TPOCPG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TFORCPG = class(TFORMOD2)
    Label2: TLabel;
    meDataPesq: TMaskEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cbTipoForn: TComboBox;
    cbTipoDesp: TComboBox;
    Notebook1: TNotebook;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Notebook2: TNotebook;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    edFornNome: TEdit;
    edDspNome: TEdit;
    quFornecedor: TQuery;
    quFornecedorforn_cod: TIntegerField;
    quFornecedorforn_nome: TStringField;
    dsFornecedor: TDataSource;
    quDespesa: TQuery;
    quDespesadsp_cod: TIntegerField;
    quDespesadsp_nome: TStringField;
    dsDespesa: TDataSource;
    btCaixa: TSpeedButton;
    quCaixa: TQuery;
    edDtCpg: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meDataPesqExit(Sender: TObject);
    procedure cbTipoFornChange(Sender: TObject);
    procedure cbTipoDespChange(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure btCaixaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edDtCpgExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edDtCpgKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoFornClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InicializaDados(); override;
    procedure AtualizaDados(); override;
    procedure CarregaDados(); override;
    procedure AbreFechaTabelas(Active: Boolean); override;
    procedure LimpaCampos; override;
  end;

var
  FORCPG: TFORCPG;

implementation

{$R *.DFM}

Uses TPODTA, TPOFNC, TPOCST;

procedure TFORCPG.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave  := 'cpg_cod';
  nomeCodigo := 'cpg_cod';
  nomeNome   := 'cpg_cod';
  nomeTabela := 'ContasPagar';

  quPrincipal := DmDta.quContasPagar;
  DmDta.dsContasPagar.DataSet := quPrincipal;
end;

procedure TFORCPG.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsContasPagar.DataSet := DmDta.quContasPagar;
end;

procedure TFORCPG.AbreFechaTabelas(Active: Boolean);
begin
  inherited;
  quFornecedor.Active := Active;
  quDespesa.Active    := Active;
end;

procedure TFORCPG.AtualizaDados;
begin
  quPrincipal.FieldByName('cpg_tipoforn').Value := cbTipoForn.ItemIndex;
  quPrincipal.FieldByName('cpg_tipodesp').Value := cbTipoDesp.ItemIndex;
  quPrincipal.FieldByName('cpg_data').Text := edDtCpg.Text;
end;

procedure TFORCPG.CarregaDados;
begin
  inherited;
  if not quPrincipal.FieldByName('cpg_tipoforn').IsNull then
  begin
    cbTipoForn.ItemIndex := quPrincipal.FieldByName('cpg_tipoforn').AsInteger;
    Notebook1.PageIndex  := quPrincipal.FieldByName('cpg_tipoforn').AsInteger;

    if quPrincipal.FieldByName('cpg_tipoforn').Value = '0' then
      edfornNome.Text := DmDta.BuscaCampo('Fornecedor', 'forn_nome', 'forn_cod', quPrincipal.FieldByName('forn_cod').Value);
  end;

  if not quPrincipal.FieldByName('cpg_tipodesp').IsNull then
  begin
    cbTipoDesp.ItemIndex := quPrincipal.FieldByName('cpg_tipodesp').AsInteger;
    Notebook2.PageIndex  := quPrincipal.FieldByName('cpg_tipodesp').AsInteger;

    if quPrincipal.FieldByName('cpg_tipodesp').Value = '0' then
      edDspNome.Text := DmDta.BuscaCampo('Despesa', 'dsp_nome', 'dsp_cod', quPrincipal.FieldByName('dsp_cod').Value);
  end;

  if not quPrincipal.FieldByName('cpg_data').IsNull then
    edDtCpg.Text := quPrincipal.FieldByName('cpg_data').Text;
end;

procedure TFORCPG.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('cpg_cod').Value        := 0;
  quPrincipal.FieldByName('cpg_lancamento').Value := 'N';
  quPrincipal.FieldByName('cpg_valor').Value      := 0;

  cbTipoForn.ItemIndex := 0;
  cbTipoDesp.ItemIndex := 0;
  Notebook1.PageIndex  := 0;
  Notebook2.PageIndex  := 0;
  edDtCpg.SetFocus;
end;

procedure TFORCPG.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AbreFechaTabelas(true);
  if not F2 then
  begin
    quPrincipal.Open;
    quPrincipal.Last;
  end;
  estadoNavegando;

  Screen.Cursor := crDefault;

  if meDataPesq.CanFocus then meDataPesq.SetFocus;
end;

procedure TFORCPG.meDataPesqExit(Sender: TObject);
begin
  inherited;
  if meDataPesq.Text <> '  /  /    ' then
  begin
    if not ValidaData(meDataPesq.text) then
      meDataPesq.SetFocus
    else
      quPrincipal.Locate('cpg_data', meDataPesq.Text, []);
  end;
end;

procedure TFORCPG.cbTipoFornChange(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := cbTipoForn.ItemIndex;
  case cbTipoForn.ItemIndex of
    0: quPrincipal.FieldByName('cpg_fornecedor').Text := '';
    1: quPrincipal.FieldByName('forn_cod').Text       := '';
  end;
end;

procedure TFORCPG.cbTipoDespChange(Sender: TObject);
begin
  inherited;
  Notebook2.PageIndex := cbTipoDesp.ItemIndex;
  case cbTipoForn.ItemIndex of
    0: quPrincipal.FieldByName('cpg_descricao').Text := '';
    1: quPrincipal.FieldByName('dsp_cod').Text       := '';
  end;
end;

procedure TFORCPG.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  edFornNome.Text := quFornecedorforn_nome.Text;
end;

procedure TFORCPG.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
  edDspNome.Text := quDespesadsp_nome.Text;
end;

procedure TFORCPG.LimpaCampos;
begin
  inherited;
  edDtCpg.Clear;
  edDspNome.Clear;
  edFornNome.Clear;
end;

procedure TFORCPG.btCaixaClick(Sender: TObject);
var
  Ultimo, Ano, Mes, Dia: Word;
begin
  if quPrincipal.IsEmpty then Exit;

  if DmDta.quContasPagarCpg_lancamento.Value = 'S' then
    MSGAVISO('Conta já lançada no caixa. Tente novamente')
  else
  begin
    Screen.Cursor := crHourGlass;
    DecodeDate(Date, ano, mes, dia);
    with quCaixa do
    begin
      // Busca maior saida
      Close;
      Sql.Clear;
      Sql.Add('select max(csa_cod) as Maximo from Lancamento');
      Sql.Add('where cai_ano = ' + IntToSTr(Ano) + ' and cai_mes = ' + IntToStr(Mes));
      Open;

      if FieldByName('Maximo').IsNull then
        Ultimo := 0
      else
        Ultimo := FieldByName('maximo').AsInteger;

      // Lança saída no caixa
      case quPrincipal.FieldByName('cpg_tipodesp').AsInteger of
        0:
        begin
          Close;
          Sql.Clear;
          Sql.Add('Insert into Lancamento');
          Sql.Add('(cai_ano, cai_mes, csa_cod, csa_data, csa_tipodesp, dsp_cod, csa_valor, csa_motivo)');
          Sql.Add('values');
          Sql.Add('(:cai_ano, :cai_mes, :csa_cod, :csa_data, :csa_tipodesp, :dsp_cod, :csa_valor, :csa_motivo)');
          ParamByName('cai_ano').AsInteger     := Ano;
          ParamByName('cai_mes').AsInteger     := Mes;
          ParamByName('csa_cod').AsInteger     := ultimo + 1;
          ParamByName('csa_data').AsDateTime   := Date;
          ParamByName('csa_tipodesp').AsString := '0';
          ParamByName('dsp_cod').AsInteger     := quPrincipal.FieldByName('dsp_cod').AsInteger;
          ParamByName('csa_valor').AsFloat     := quPrincipal.FieldByName('cpg_valor').AsFloat;
          ParamByName('csa_motivo').AsString   := quPrincipal.FieldByName('DESCRICAO').AsString;
          ExecSql;
        end;
        1:
        begin
          Close;
          Sql.Clear;
          Sql.Add('Insert into Lancamento');
          Sql.Add('(cai_ano, cai_mes, csa_cod, csa_data, csa_valor, csa_motivo)');
          Sql.Add('values');
          Sql.Add('(:cai_ano, :cai_mes, :csa_cod, :csa_data, :csa_valor, :csa_motivo)');
          ParamByName('cai_ano').AsInteger   := Ano;
          ParamByName('cai_mes').AsInteger   := Mes;
          ParamByName('csa_cod').AsInteger   := ultimo + 1;
          ParamByName('csa_data').AsDateTime := Date;
          ParamByName('csa_valor').AsFloat   := quPrincipal.FieldByName('cpg_valor').AsFloat;
          ParamByName('csa_motivo').AsString := quPrincipal.FieldByName('DESCRICAO').AsString;
          ExecSql;
        end;
      end;
    end;

    with quPrincipal do
    begin
      Edit;
      FieldByName('cpg_lancamento').Value := 'S';
      Post;
    end;

    MSGAVISO('Conta lançada com sucesso no caixa!');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFORCPG.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F6 then btCaixa.Click;
end;

procedure TFORCPG.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORCPG.edDtCpgExit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).Text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
    begin
      TMaskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFORCPG.btSalvarClick(Sender: TObject);
var
  Insere: Boolean;
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if edDtCpg.Text = '  /  /    ' then
    begin
      MSGERRO('Entre com a data da conta');
      edDtCpg.SetFocus;
      Salvou := False;
    end
    else
    begin
      Insere := quPrincipal.State = dsInsert;
      inherited;
      If Insere then
      begin
        quPrincipal.Close;
        quPrincipal.Open;
        quPrincipal.Last;
      end;
    end;
  end;
end;

procedure TFORCPG.edDtCpgKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
end;

procedure TFORCPG.cbTipoFornClick(Sender: TObject);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
end;

end.
