unit TPOCAI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD, DBTables, Db, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls,
  Buttons, Mask, DBCtrls, Variants;

type
  TFORCAI = class(TFORMOD)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    edMes: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    MudaAba: Boolean;
    AnoIni, AnoFim, MesIni, MesFim: Integer;

  public
    { Public declarations }
    procedure BuscaPrimeiroUltimo; override;
    procedure InicializaDados(); override;

  end;

var
  FORCAI: TFORCAI;

implementation

{$R *.DFM}

Uses TPODTA, TPOFNC, TPOCSA, TPOCEN, TPORCAI, TPOCST;

procedure TFORCAI.FormCreate(Sender: TObject);
begin
  inherited;
  nomeCodigo := 'cai_ano';
  nomeNome   := 'cai_mes';

  quPrincipal := DmDta.quCaixa;
  DmDta.dsCaixa.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORCAI.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  quPrincipal.Open;
  estadoNavegando;
  Screen.Cursor := crDefault;
  cbTipoPesquisa.ItemIndex := 0;
end;

procedure TFORCAI.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsCaixa.DataSet := DmDta.quCaixa;
end;

procedure TFORCAI.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select MAX(cai_ano*12+cai_mes) as MAXIMO, MIN(cai_ano*12+cai_mes) as MINIMO FROM Caixa');
    Open;

    if FieldByName('Minimo').IsNull then
    begin
      AnoIni := 0;
      MesIni := 0;
      AnoFim := 0;
      MesFim := 0;
    end
    else
    begin
      AnoIni := FieldByName('MINIMO').AsInteger div 12;
      MesIni := FieldByName('MINIMO').AsInteger mod 12;
      AnoFim := FieldByName('MAXIMO').AsInteger div 12;
      MesFim := FieldByName('MAXIMO').AsInteger mod 12;
    end;

    Close;
    Free;
  end;
end;

procedure TFORCAI.InicializaDados;
var ano,mes,dia: Word;
begin
  inherited;
  if AnoIni = 0 then
  begin
    DecodeDate(Date,ano,mes,dia);
    quPrincipal.FieldByName('cai_ano').Value := Ano;
    quPrincipal.FieldByName('cai_mes').Value := Mes;
  end
  else
  begin
    if MesFim = 12 then
    begin
      quPrincipal.FieldByName('cai_ano').Value := AnoFim + 1;
      quPrincipal.FieldByName('cai_mes').Value := 1;
    end
    else
    begin
      quPrincipal.FieldByName('cai_ano').Value := AnoFim;
      quPrincipal.FieldByName('cai_mes').Value := MesFim + 1;
    end;
  end;

  quPrincipal.FieldByName('cai_inicial').Value    := 0;
  quPrincipal.FieldByName('cai_fechamento').Value := '0';
  DbEdit3.SetFocus;
end;

procedure TFORCAI.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit2.ReadOnly := True;
  DBEdit3.ReadOnly := quPrincipal.FieldByName('cai_fechamento').Value = '1';
  DBEdit3.SetFocus;
end;

procedure TFORCAI.btNovoClick(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := False;
  DBEdit2.ReadOnly := False;
  DBEdit3.ReadOnly := False;
  DBEdit1.SetFocus;
end;

procedure TFORCAI.edParametroExit(Sender: TObject);
begin
  if edParametro.Text <> '' then
    if not ValidaAno(edParametro.Text) then
      edParametro.SetFocus;
end;

procedure TFORCAI.edMesExit(Sender: TObject);
begin
  if edMes.Text <> '' then
  begin
    if edParametro.Text = '' then
    begin
      MSGERRO('Entre com o ano!');
      edParametro.SetFocus;
    end
    else
    begin
      if not ValidaMes(edMes.Text) then
        edMes.SetFocus
      else
        quPrincipal.Locate('cai_ano;cai_mes', VarArrayOf([edParametro.Text,edMes.Text]), []);
    end;
  end;
end;

procedure TFORCAI.btSalvarClick(Sender: TObject);
begin
  if quPrincipal.State in [dsInsert, dsEdit] then
  begin
    try
      AtualizaDados;
      DMDta.SalvarRegistro(quPrincipal);

      cbTipoPesquisa.ItemIndex := 0;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;

  if MudaAba then
  begin
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
    edParametro.Clear;
    edMes.Clear;
    if edParametro.CanFocus then edParametro.SetFocus;
  end;

end;

procedure TFORCAI.btCancelarClick(Sender: TObject);
begin
  inherited;
  edParametro.Clear;
  edMes.Clear;
end;

procedure TFORCAI.SpeedButton2Click(Sender: TObject);
begin
  DmDta.quLancamento.CachedUpdates := quPrincipal.FieldByName('cai_fechamento').Value = '0';

  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  Screen.Cursor   := crHourGlass;
  FORCSA          := TFORCSA.Create(Self);
  FORCSA.Ano      := quPrincipal.FieldByName('cai_ano').Value;
  FORCSA.Mes      := quPrincipal.FieldByName('cai_mes').Value;
  Screen.Cursor   := crDefault;
  FORCSA.ShowModal;
  MudaAba := True;
end;

procedure TFORCAI.SpeedButton1Click(Sender: TObject);
begin
  DmDta.quEntrada.CachedUpdates := quPrincipal.FieldByName('cai_fechamento').Value = '0';

  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  Screen.Cursor   := crHourGlass;
  FORCEN          := TFORCEN.Create(Self);
  FORCEN.Ano      := quPrincipal.FieldByName('cai_ano').Value;
  FORCEN.Mes      := quPrincipal.FieldByName('cai_mes').Value;
  Screen.Cursor   := crDefault;
  FORCEN.ShowModal;
  MudaAba := True;
end;

procedure TFORCAI.btExcluirClick(Sender: TObject);

  procedure ExcluiEntradas;
  begin
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from Entrada where cai_ano = :cai_ano and cai_mes = :cai_mes');
      ParamByName('cai_ano').AsInteger := quPrincipal.FieldByName('cai_ano').AsInteger;
      ParamByName('cai_mes').AsInteger := quPrincipal.FieldByName('cai_mes').AsInteger;
      ExecSql;
      Free;
    end;
  end;

  procedure ExcluiSaidas;
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from Lancamento where cai_ano = :cai_ano and cai_mes = :cai_mes');
      ParamByName('cai_ano').AsInteger := quPrincipal.FieldByName('cai_ano').AsInteger;
      ParamByName('cai_mes').AsInteger := quPrincipal.FieldByName('cai_mes').AsInteger;
      ExecSql;
      Free;
    end;
  end;

begin
  if quPrincipal.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      ExcluiEntradas;
      ExcluiSaidas;
      DmDta.ExcluirRegistro(quPrincipal);      
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORCAI.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

end.
