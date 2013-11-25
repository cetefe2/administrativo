unit TPOSVER1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls,
  DBCGrids;

type
  TFORSVER1 = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    Label2: TLabel;
    edEmpNum: TEdit;
    Label1: TLabel;
    edEstagiarios: TEdit;
    btEmail: TSpeedButton;
    Label3: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    Button1: TButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox2: TDBCheckBox;
    cbTodas: TCheckBox;
    btEtiquetas: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edMesExit(Sender: TObject);
    procedure cbTodasClick(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbreQuery();
  end;

var
  FORSVER1: TFORSVER1;

implementation

Uses TPODTA, TPOFNC, TPOREVE, TPOETQ1, TPORETQ, TPOSVER;

{$R *.DFM}

procedure TFORSVER1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSVER1.btImprimirClick(Sender: TObject);
begin
{
  Screen.Cursor := crHourGlass;
  QREVE := TQREVE.Create(Application);
  Screen.Cursor := crDefault;
  QREVE.Preview;
  QREVE.Free; }

  btenter.SetFocus;
  with DmDTA.quVerEsc1 do
  begin
    DisableControls;
    First;

    // abre a tela de verificações, uma a uma
    while not eof do
    begin
      // verifica se está marcado
      If FieldByName('Etiqueta').AsString = '1' then
      begin
        Screen.Cursor := crHourGlass;
        FORSVER       := TFORSVER.Create(Self);
        FORSVER.ImprimirTodas  := True;
        FORSVER.edInstCod.Text := FieldByName('inst_cod').Text;
        FORSVER.edInstCodExit(nil);
        Screen.Cursor := crDefault;
        FORSVER.ShowModal;         
      end;
      Next;
    end;

    First;
    EnableControls;
  end;
end;

procedure TFORSVER1.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSVER1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quVerEsc1.Close;
  Action := caFree;
end;

procedure TFORSVER1.FormShow(Sender: TObject);
var
  Ano,Mes,Dia: Word;
begin
  Screen.Cursor := crHourGlass;
  DecodeDate(Date, Ano, mes, Dia);
  edAno.text := IntToStr(Ano);
  edMes.text := IntToStr(Mes);

  AbreQuery();
  Screen.Cursor := crDefault;
end;

procedure TFORSVER1.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSVER1.btEmailClick(Sender: TObject);
begin
  btenter.SetFocus;
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quVerEsc1, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSVER1.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if Not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
  end
  else if (edAno.Text <> '') and (edMes.Text <> '') then
    AbreQuery;
end;

procedure TFORSVER1.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORSVER1.edMesExit(Sender: TObject);
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
      if (edAno.Text <> '') and (edMes.Text <> '') then
        AbreQuery;
    end;
  end;
end;

procedure TFORSVER1.AbreQuery();
var
  totEst: Integer;
  data1, data2: String;
begin
{  data1    := '''''01/'+ edMes.Text + '/' + edAno.Text + '''';
  data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                 StrToInt(edAno.Text))) + '/' + edAno.Text + '''';
 }
  data1 := '''01/' + edMes.Text + '/' + edAno.Text + '''';
  data2 := '''' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
      StrToInt(edAno.Text))) + '/' + edMes.Text + '/' + edAno.Text + '''';


  TotEst := 0;
  with DmDta.quVerEsc1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.inst_cod, i.inst_nome, count(e.est_cod) AS Estagiarios,');
    If cbTodas.Checked then
      Sql.Add(' ''1'' As Etiqueta')
    else
      Sql.Add(' ''0'' As Etiqueta');
    Sql.Add('from');
    Sql.Add('  estudante e, Instituicao i');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and e.est_cod in');
    Sql.Add('(select');
    Sql.Add('  est_cod');
    Sql.Add('from');
    Sql.Add('  Tce');
    Sql.Add('where');
    Sql.Add('  tce_cod in');
    Sql.Add('  (select tce_cod from Tce');
    Sql.Add('   where tce_situacao = ''0'' and');
    Sql.Add('   tce_dataini < ' + data2 + ' and');
    Sql.Add('   tce_datafim > ' + data1+ ') or');
    Sql.Add('  tce_cod in');
    Sql.Add('  (select t.tce_cod from TceAditivo TA, Tce t');
    Sql.Add('   where ta.tce_cod = t.tce_cod and');
    Sql.Add('   t.tce_situacao <> ''0'' and');
    Sql.Add('   t.tce_situacao <> ''7'' and');
    Sql.Add('   ta.tpr_dataini < ' + data2+ ' and');
    Sql.Add('   ta.tpr_datafim > ' + data1+ '))');
    Sql.Add('group by');
    Sql.Add('  e.inst_cod, i.inst_nome');
    Sql.Add('order by');
    Sql.Add('  i.inst_nome');
    Open;
    edEmpNum.Text := IntToStr(RecordCount);

    DisableControls;
    while not eof do
    begin
      TotEst := TotEst + FieldByName('Estagiarios').AsInteger;
      Next;
    end;
    First;
    edEstagiarios.Text := IntToStr(TotEst);
    EnableControls;
  end;

end;

procedure TFORSVER1.cbTodasClick(Sender: TObject);
begin
  if (edAno.Text <> '') and (edMes.Text <> '') then
    AbreQuery;
end;

procedure TFORSVER1.btEtiquetasClick(Sender: TObject);
begin
  cbTodas.SetFocus;
  with DmDta.quVerEsc1 do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    DmDta.tbEtiqueta.Open;
    while not Eof do
    begin
      If FieldByName('Etiqueta').AsString = '1' then
      begin
        // Gera Etiqueta
        try
          DmDta.GeraEtiqueta(FieldByName('inst_cod').AsInteger);
        except
          MSGErro('Erro na geração de etiquetas!');
          Exit;
        end;
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
        QRETQ.SetaEtiquetasVE('A/C: Setor de Estágios', FORETQ1.Linha, FORETQ1.Coluna, FORETQ1.Etiquetas);
        QRETQ.Preview;
        QRETQ.tbEtiqueta.Close;
        QRETQ.Free;
      except
        MSGErro('Erro na impressão de etiquetas!');
        QRETQ.Free;
        Exit;
      end;
    end;
    FORETQ1.Free;
    DmDta.tbEtiqueta.Close();
  end;
end;

end.
