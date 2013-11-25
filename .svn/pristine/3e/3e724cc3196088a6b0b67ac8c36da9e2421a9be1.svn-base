unit TPOSFPP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Gauges, ComCtrls, DBTables, Db, StdCtrls, Grids,
  DBGrids;

type
  TFORSFPP = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Bevel1: TBevel;
    btAtualizar: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dsFolhaPgto: TDataSource;
    quFolhaPgto: TQuery;
    usFolhaPgto: TUpdateSQL;
    quFolhaPgtofat_ano: TSmallintField;
    quFolhaPgtofat_mes: TSmallintField;
    quFolhaPgtoemp_cod: TIntegerField;
    quFolhaPgtoemp_nome: TStringField;
    quFolhaPgtoValTotal: TFloatField;
    quFolhaPgtofat_numero: TIntegerField;
    quFolhaPgtoest_nome: TStringField;
    quFolhaPgtofbo_liberacao: TStringField;
    quFolhaPgtoDescLiberacao: TStringField;
    quFolhaPgtoest_cod: TSmallintField;
    quFolhaPgtofbo_situacao: TStringField;
    quFolhaPgtoDescSituacao: TStringField;
    Label2: TLabel;
    edTotalRetidos: TEdit;
    procedure btFecharClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure quFolhaPgtoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORSFPP: TFORSFPP;

implementation

{$R *.DFM}

Uses TPOFNC, TPOCST, TPODTA, TPOSEL;

procedure TFORSFPP.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSFPP.btAtualizarClick(Sender: TObject);
var
  UltLanc: Integer;
  anoL, mesL, diaL: Word;
  DtAtual: TDateTime;

begin
  if quFolhaPgto.IsEmpty then Exit;

  if quFolhaPgtofbo_liberacao.Value = '1' then
  begin
    MSGERRO('Estudante já liberado(a). Tente novamente!');
    Exit;
  end;

  FORSEL := TFORSEL.Create(Application);
  FORSEL.Data := (Date-1);
  FORSEL.ShowModal;

  if FORSEL.Data > 0 then
  begin
    Screen.Cursor := crHourGlass;
    dtAtual := FORSEL.data;

    DecodeDate(dtAtual,anoL,mesL,diaL);
    // Busca valor anterior de Lancamento
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select MAX(csa_cod) as MAXIMO FROM Lancamento');
      Sql.Add('where cai_ano = ' + IntToStr(AnoL));
      Sql.Add('and cai_mes = ' + IntToStr(MesL));
      Open;

      if FieldByName('Maximo').IsNull then
        UltLanc := 1
      else
        UltLanc := FieldByName('Maximo').AsInteger+1;
      Close;

      Sql.Clear;
      Sql.Add('Insert into Lancamento');
      Sql.Add('(cai_ano, cai_mes, csa_cod, csa_data, csa_valor, csa_motivo)');
      Sql.Add('values');
      Sql.Add('(:cai_ano, :cai_mes, :csa_cod, :csa_data, :csa_valor, :csa_motivo)');
      ParamByName('cai_ano').AsInteger   := AnoL;
      ParamByName('cai_mes').AsInteger   := MesL;
      ParamByName('csa_cod').AsInteger   := ultLanc;
      ParamByNAme('csa_data').AsDateTime := dtAtual;
      ParamByName('csa_valor').AsFloat   := quFolhaPgto.FieldByName('ValTotal').AsFloat;
      ParamByName('csa_motivo').AsString := 'PAGAMENTO PIB - ' + quFolhaPgto.FieldByName('emp_nome').Text;
      ExecSql;
      Free;
    end;

    with quFolhaPgto do
    begin
      Edit;
      FieldByName('fbo_liberacao').Value := '1';
      Post;
      ApplyUpdates;
      CommitUpdates;
    end;

    Screen.Cursor := crDefault;
    MSGAVISO('Pagamento atualizado com sucesso!');
  end;

  FORSEL.Free;
end;


procedure TFORSFPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quFolhaPgto.Close;
  Action := caFree;
end;

procedure TFORSFPP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F3: btAtualizar.Click;
    vk_F4: Close;
  end;
end;

procedure TFORSFPP.FormShow(Sender: TObject);
var
  Total: Double;
begin
  Total := 0;
  with quFolhaPgto do
  begin
    Open;
    DisableControls;
    First;
    While Not Eof do
    begin
      Total := Total + FieldByName('ValTotal').AsFloat;
      Next;
    end;
    First;
    EnableControls;
    edTotalRetidos.Text := FormatFloat('#,###,##0.00', Total);
  end;
end;

procedure TFORSFPP.quFolhaPgtoCalcFields(DataSet: TDataSet);
begin
  case quFolhaPgtofbo_liberacao.AsInteger of
    0: quFolhaPgtoDescLiberacao.Value := 'Não';
    1: quFolhaPgtoDescLiberacao.Value := 'Sim';
  end;

  if (not quFolhaPgtofbo_situacao.IsNull) and
     (quFolhaPgtofbo_situacao.Value <> '') then
    case quFolhaPgtofbo_situacao.AsInteger of
      0: quFolhaPgtoDescSituacao.Value := 'Liberado';
      1: quFolhaPgtoDescSituacao.Value := 'Falta D.M.';
      2: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E.';
      3: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M.';
      4: quFolhaPgtoDescSituacao.Value := 'Falta T.A.';
      5: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A.';
      6: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A.';
      7: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A.';
      8: quFolhaPgtoDescSituacao.Value := 'Falta T.Alt.';
      9: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.Alt.';
     10: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.Alt.';
     11: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.Alt.';
     12: quFolhaPgtoDescSituacao.Value := 'Falta T.A./T.Alt.';
     13: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./T.A./T.Alt.';
     14: quFolhaPgtoDescSituacao.Value := 'Falta D.M./T.A./T.Alt.';
     15: quFolhaPgtoDescSituacao.Value := 'Falta T.C.E./D.M./T.A./T.Alt.';
    end;
end;

end.
