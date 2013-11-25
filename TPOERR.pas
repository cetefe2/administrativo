unit TPOERR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Buttons,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, TPODTA,
  Provider, DBClient, cxCheckBox, Placemnt, cxPC;

type
  TFORERR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtData: TEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    pDados: TDataSetProvider;
    cdsDadosTipo: TStringField;
    cdsDadosest_nome: TStringField;
    cdsDadosDescSituacaoAtual: TStringField;
    cdsDadosDescSituacaoDestino: TStringField;
    cdsDadosSituacaoAtual: TStringField;
    cdsDadosSituacaoDestino: TIntegerField;
    cdsDadostce_datares: TDateTimeField;
    cdsDadostce_cod: TIntegerField;
    cdsDadosemp_nome: TStringField;
    cdsDadosMarcado: TStringField;
    FormStorage1: TFormStorage;
    pcTCE: TcxPageControl;
    tbsTCE: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Marcado: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1tce_cod: TcxGridDBColumn;
    cxGrid1DBTableView1est_nome: TcxGridDBColumn;
    cxGrid1DBTableView1DescSituacaoAtual: TcxGridDBColumn;
    cxGrid1DBTableView1DescSituacaoDestino: TcxGridDBColumn;
    cxGrid1DBTableView1tce_datares: TcxGridDBColumn;
    cxGrid1DBTableView1emp_nome: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel4: TPanel;
    btnMarcarTCE: TSpeedButton;
    btnDesmarcarTCE: TSpeedButton;
    btnAplicarCorrecaoTCE: TSpeedButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnAplicarCorrecaoEstudante: TSpeedButton;
    lblTotalTCE: TLabel;
    lblTotalEstudante: TLabel;
    pEstudante: TDataSetProvider;
    cdsEstudante: TClientDataSet;
    dsEstudante: TDataSource;
    cdsEstudanteest_cod: TIntegerField;
    cdsEstudantetce_cod: TIntegerField;
    cdsEstudanteest_pgtolib_atual: TStringField;
    cdsEstudanteest_pgtolib_novo: TStringField;
    cdsEstudanteest_nome: TStringField;
    cdsEstudanteDescSituacaoAtual: TStringField;
    cdsEstudanteDescSituacaoDestino: TStringField;
    cdsEstudanteemp_nome: TStringField;
    cdsEstudantetce_datares: TDateTimeField;
    cdsEstudanteMarcado: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAplicarCorrecaoTCEClick(Sender: TObject);
    procedure btnMarcarTCEClick(Sender: TObject);
    procedure btnDesmarcarTCEClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAplicarCorrecaoEstudanteClick(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsEstudanteAfterOpen(DataSet: TDataSet);
  private
    procedure AbrirTabelas;
    procedure Marcar(cds: TClientDataSet; bMarcar: boolean);

  public
    { Public declarations }
  end;

var
  FORERR: TFORERR;

implementation

{$R *.dfm}

procedure TFORERR.AbrirTabelas;
begin
  Screen.Cursor := crHourGlass;
  cdsDados.Close;
  cdsDados.Open;

  cdsEstudante.Close;
  if cdsDados.isEmpty then
    cdsEstudante.Open;

  dmDta.quDataAtual.Close;
  dmDta.quDataAtual.Open;

  edtData.Text := FormatDateTime('dd/mm/yyyy', dmDta.quDataAtualDATA_ATUAL.asDateTime);

  cxGrid1DBTableView1.ViewData.Expand(true);
  
  Screen.Cursor := crDefault;
end;

procedure TFORERR.FormShow(Sender: TObject);
begin
  AbrirTabelas;
end;

procedure TFORERR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FORERR := nil;
end;

procedure TFORERR.Marcar(cds: TClientDataSet; bMarcar: boolean);
var
  bookm: TBookmark;
begin
  if cds.IsEmpty then
    exit;

  bookm := cds.GetBookmark;
  cds.DisableControls;
  btnAplicarCorrecaoTCE.Enabled := false;
  btnAplicarCorrecaoEstudante.Enabled := false;
  Screen.Cursor := crHourGlass;
  try
    cds.First;
    while not cds.eof do
    begin
      if bMarcar <> (cds.FieldByName('Marcado').asString = 'S') then
      begin
        cds.Edit;
        if bMarcar then
           cds.FieldByName('Marcado').asString := 'S'
        else
           cds.FieldByName('Marcado').asString := 'N';
        cds.Post;
      end;
      cds.Next;
    end;

  finally
    cds.GotoBookmark(bookm);
    cds.FreeBookmark(bookm);
    cds.EnableControls;
    btnAplicarCorrecaoTCE.Enabled := not cdsDados.isEmpty;
    btnAplicarCorrecaoEstudante.Enabled := not cdsEstudante.isEmpty;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFORERR.btnAplicarCorrecaoTCEClick(Sender: TObject);
begin
  if not cdsDados.Locate('MARCADO', 'S', []) then
  begin
    MessageBox(Handle, 'Nenhum TCE foi selecionado para esta operação!', 'Aviso', MB_OK or MB_ICONWARNING);
    exit;
  end;

  //
  cdsDados.DisableControls;
  btnAplicarCorrecaoTCE.Enabled := false;
  Screen.Cursor := crHourGlass;
  try
    cdsDados.First;
    while not cdsDados.eof do
    begin
      if cdsDadosMarcado.asString = 'S' then
      begin
        dmDTA.quCorrigeSituacaoTCE.ParamByName('P_TCE_COD').asInteger     := cdsDadostce_cod.asInteger;
        dmDTA.quCorrigeSituacaoTCE.ParamByName('P_TCE_SITUACAO').asString := cdsDadosSituacaoDestino.asString;
        dmDTA.quCorrigeSituacaoTCE.ExecSQL;
      end;

      cdsDados.Next;
    end;

    cdsDados.First;
  finally
    cdsDados.EnableControls;
    btnAplicarCorrecaoTCE.Enabled := true;
    Screen.Cursor := crDefault;
  end;


  //

  AbrirTabelas;

  MessageBox(Handle, 'Correções realizadas com sucesso!', 'Aviso', MB_OK or MB_ICONINFORMATION);

  if cdsDados.IsEmpty and cdsEstudante.IsEmpty then
     close;
end;

procedure TFORERR.btnMarcarTCEClick(Sender: TObject);
begin
  Marcar(cdsDados, true);
end;

procedure TFORERR.btnDesmarcarTCEClick(Sender: TObject);
begin
  Marcar(cdsDados,false);
end;

procedure TFORERR.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFORERR.btnAplicarCorrecaoEstudanteClick(Sender: TObject);
begin
  if not cdsDados.isEmpty then
  begin
    MessageBox(Handle, 'Corrija TODAS as situações dos TCE´s antes de aplicar correções nas situações de Estudantes!', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    exit;
  end;

  if not cdsEstudante.Locate('MARCADO', 'S', []) then
  begin
    MessageBox(Handle, 'Nenhum Estudante foi selecionado para esta operação!', 'Aviso', MB_OK or MB_ICONWARNING);
    exit;
  end;

  //
  cdsEstudante.DisableControls;
  btnAplicarCorrecaoEstudante.Enabled := false;
  Screen.Cursor := crHourGlass;
  try
    cdsEstudante.First;
    while not cdsEstudante.eof do
    begin
      if cdsEstudanteMarcado.asString = 'S' then
      begin
        dmDTA.quCorrigeSituacaoEstudante1.ParamByName('P_EST_COD').asInteger     := cdsEstudanteest_cod.asInteger;
        dmDTA.quCorrigeSituacaoEstudante1.ParamByName('P_EST_PGTOLIB').asString := cdsEstudanteest_pgtolib_novo.asString;
        dmDTA.quCorrigeSituacaoEstudante1.ExecSQL;

        dmDTA.quCorrigeSituacaoEstudante2.ParamByName('P_EST_COD').asInteger     := cdsEstudanteest_cod.asInteger;
        dmDTA.quCorrigeSituacaoEstudante2.ParamByName('P_EST_PGTOLIB').asString := cdsEstudanteest_pgtolib_novo.asString;
        dmDTA.quCorrigeSituacaoEstudante2.ExecSQL;
        
      end;

      cdsEstudante.Next;
    end;

    cdsEstudante.First;
  finally
    cdsEstudante.EnableControls;
    btnAplicarCorrecaoEstudante.Enabled := true;
    Screen.Cursor := crDefault;
  end;


  //

  AbrirTabelas;

  MessageBox(Handle, 'Correções realizadas com sucesso!', 'Aviso', MB_OK or MB_ICONINFORMATION);

  if cdsDados.IsEmpty and cdsEstudante.IsEmpty then
     close;
end;

procedure TFORERR.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  lblTotalTCE.Caption := 'Itens Encontrados: ' + IntToStr(DataSet.RecordCount);
  btnAplicarCorrecaoTCE.Enabled := not DataSet.IsEmpty;
end;

procedure TFORERR.SpeedButton2Click(Sender: TObject);
begin
  Marcar(cdsEstudante, true);
end;

procedure TFORERR.SpeedButton3Click(Sender: TObject);
begin
  Marcar(cdsEstudante, False);
end;

procedure TFORERR.cdsEstudanteAfterOpen(DataSet: TDataSet);
begin
  lblTotalEstudante.Caption := 'Itens Encontrados: ' + IntToStr(DataSet.RecordCount);
  btnAplicarCorrecaoEstudante.Enabled := not DataSet.IsEmpty;
end;

end.
