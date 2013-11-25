unit TPOSEMP2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEMP2 = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    cboTipoEmp: TComboBox;
    Label3: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edEmpNum: TEdit;
    edEstagiarios: TEdit;
    cbRescindido: TCheckBox;
    btEmail: TSpeedButton;
    cbEnderecos: TCheckBox;
    btEtiquetas: TSpeedButton;
    Label5: TLabel;
    edBolsa: TEdit;
    edTaxa: TEdit;
    Label6: TLabel;
    btProcessar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btExportarParaWeb: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure cboTipoEmpChange(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    meses: boolean;
  end;

var
  FORSEMP2: TFORSEMP2;


implementation

uses TPOREmp2, TPODTA, TPOFNC, TPOEML, TPOCST, TPORVER, TPORETQ1, TPOETQ1,
  TPORETQ;

{$R *.DFM}

procedure TFORSEMP2.FormShow(Sender: TObject);
begin
  with DmDta.quREmpresa do
  begin
    Close;
    Params.ParamByName('tipo').asString := IntToStr(cboTipoEmp.ItemIndex);
    Params.ParamByName('data1').AsDateTime := 0;
    Params.ParamByName('data2').AsDateTime := 0;
    if cbRescindido.Checked then
      Params.ParamByName('rescindidos').AsString := '1'
    else
      Params.ParamByName('rescindidos').AsString := '0';
    Open;
  end;
  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  if meses then Caption := Caption + ' - 24 meses';
end;

procedure TFORSEMP2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEmailClick(Sender);
  end;
end;

procedure TFORSEMP2.btImprimirClick(Sender: TObject);
begin
  if cbEnderecos.Checked then
  begin
    with DmDta.quREmpresa do
    begin
      Screen.Cursor := crHourGlass;
      DisableControls;
      First;
      while not Eof do
      begin
        // Gera Etiqueta
        try
          DmDta.GeraEtiquetaEmp(FieldByName('emp_cod').AsInteger);
        except
          MSGErro('Erro na geração de etiquetas!');
          QRVer.Free;
          Exit;
        end;
        Next;
      end;
      First;
      EnableControls;

      try
        DmDta.tbEtiqueta.Open;
        QRETQ1 := TQREtq1.Create(Application);
        Screen.Cursor := crDefault;
        QRETQ1.Preview;
        case cboTipoemp.ItemIndex of
          0: QRETQ1.QRTitulo.Caption := QRETQ1.QRTitulo.Caption + ' - Pgto CETEFE';
          1: QRETQ1.QRTitulo.Caption := QRETQ1.QRTitulo.Caption + ' - Pgto Próprio';
          2: QRETQ1.QRTitulo.Caption := QRETQ1.QRTitulo.Caption + ' - Órgãos Públicos';
          3: QRETQ1.QRTitulo.Caption := QRETQ1.QRTitulo.Caption + ' - Empresas Privadas';
        end;

        QRETQ1.Free;

        with DmDta.tbEtiqueta do
        begin
          First;
          while not Eof do
            Delete;
          Close;
        end;
      except
        MSGERRO('Etiquetas não geradas com sucesso!');
      end;
      Screen.Cursor := crDefault;
    end;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QREmp2 := TQREmp2.Create(Application);
    case cboTipoemp.ItemIndex of
      0: QREmp2.QRTitulo.Caption := QREmp2.QRTitulo.Caption + ' - Pgto CETEFE';
      1: QREmp2.QRTitulo.Caption := QREmp2.QRTitulo.Caption + ' - Pgto Próprio';
      2: QREmp2.QRTitulo.Caption := QREmp2.QRTitulo.Caption + ' - Órgãos Públicos';
      3: QREmp2.QRTitulo.Caption := QREmp2.QRTitulo.Caption + ' - Empresas Privadas';
    end;
    Screen.Cursor := crDefault;
    if tcomponent(sender).tag = 1 then
    begin
      qremp2.QRLabel2.enabled := false;
      qremp2.QRDBText2.enabled := false;
      qremp2.QRExpr2.enabled := false;

    end;
    QREmp2.Preview;
    QREmp2.Free;


  end;
end;

procedure TFORSEMP2.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMP2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREmpresa.Close;
  Action := caFree;
end;

procedure TFORSEMP2.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP2.cboTipoEmpChange(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP2.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quREmpresa, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSEMP2.btEtiquetasClick(Sender: TObject);
begin
  with DmDta.quREmpresa do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    DmDta.tbEtiqueta.Open;
    while not Eof do
    begin
      // Gera Etiqueta
      try
        DmDta.GeraEtiquetaEmp(FieldByName('emp_cod').AsInteger);
      except
        MSGErro('Erro na geração de etiquetas!');
        Exit;
      end;
      Next;
    end;
    First;
    EnableControls;

    // Chama a impressão das etiquetas
    Screen.Cursor := crHourGlass;
    FORETQ1 := TFORETQ1.Create(Self);
    FORETQ1.F2 := True;
    FORETQ1.bEtiquetas := False;
    Screen.Cursor := crDefault;
    FORETQ1.ShowModal;

    if (FORETQ1.Linha <> 0) and (FORETQ1.Coluna <> 0) and (FORETQ1.Etiquetas <> 0) then
    begin
      try
        QRETQ := TQREtq.Create(Application);
        QRETQ.SetaEtiquetasVE('A/C: Recursos Humanos', FORETQ1.Linha, FORETQ1.Coluna, FORETQ1.Etiquetas);
        QRETQ.Preview;
        QRETQ.tbEtiqueta.Close;
        QRETQ.Free;
      except
        MSGErro('Erro na impressão de etiquetas!');
        Exit;
      end;
    end;
    FORETQ1.Free;

    DmDta.tbEtiqueta.Close();
  end;
end;

procedure TFORSEMP2.FormCreate(Sender: TObject);
begin
  meses := False;
end;

procedure TFORSEMP2.btProcessarClick(Sender: TObject);
var
  data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;
begin
  if Meses then
    data1 := '01/' + edMes.Text + '/' + IntToStr(StrToInt(edAno.Text) - 2)
  else
    data1 := '01/' + edMes.Text + '/' + edAno.Text;
  data2 := IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
    StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text;
  totEst := 0;
  totBolsa := 0;
  totTaxa := 0;

  with DmDta.quREmpresa do
  begin
    Close;
    Params.ParamByName('tipo').asString := IntToStr(cboTipoEmp.ItemIndex);
    Params.ParamByName('data1').AsDateTime := StrToDateTime(data1);
    Params.ParamByName('data2').AsDateTime := StrToDateTime(data2);
    if cbRescindido.Checked then
      Params.ParamByName('rescindidos').AsString := '1'
    else
      Params.ParamByName('rescindidos').AsString := '0';

    Open;
    edEmpNum.Text := IntToStr(RecordCount);
    DisableControls;
    while not eof do
    begin
      TotEst := TotEst + FieldByName('estagiarios').AsInteger;
      TotBolsa := TotBolsa + FieldByName('bolsa').AsFloat;
      TotTaxa := TotTaxa + FieldByName('Taxa').AsFloat;
      Next;
    end;
    First;
    edEstagiarios.Text := IntToStr(TotEst);
    edBolsa.Text := FormatFloat('#,###,##0.00', totBolsa);
    edTaxa.Text := FormatFloat('#,###,##0.00', totTaxa);
    EnableControls;
  end;
end;

end.

