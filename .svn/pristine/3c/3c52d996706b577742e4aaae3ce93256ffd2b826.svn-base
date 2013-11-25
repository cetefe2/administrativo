unit TPOFAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, DBCtrls, Mask, Menus;

type
  TFORFAT = class(TFORMOD2)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edDtRecebCred: TMaskEdit;
    Label10: TLabel;
    edDtLiber: TMaskEdit;
    DBRadioGroup1: TDBRadioGroup;
    Notebook1: TNotebook;
    edAno: TEdit;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    edMes: TEdit;
    btFolha: TSpeedButton;
    edFatura: TEdit;
    Label14: TLabel;
    edDtRecebFolha: TMaskEdit;
    btFatPrivada: TSpeedButton;
    btFatPublica: TSpeedButton;
    btFatBoleto: TSpeedButton;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    edValor: TEdit;
    Label18: TLabel;
    edTaxa: TEdit;
    btCaixa: TSpeedButton;
    btImpressao: TSpeedButton;
    Label17: TLabel;
    edAno1: TEdit;
    edMes1: TEdit;
    btEmail: TSpeedButton;
    campos: TListBox;
    SpeedButton1: TSpeedButton;
    Qrypesquisa: TQuery;
    PopupMenu1: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DBCheckBox1: TDBCheckBox;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label25: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFolhaClick(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edFaturaExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure btFatPrivadaClick(Sender: TObject);
    procedure btFatPublicaClick(Sender: TObject);
    procedure btFatBoletoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edDtRecebCredExit(Sender: TObject);
    procedure edDtRecebCredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btNovoClick(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edValorExit(Sender: TObject);
    procedure edAno1Exit(Sender: TObject);
    procedure edMes1Exit(Sender: TObject);
    procedure btCaixaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImpressaoClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MarcarTodos1Click(Sender: TObject);
  private
    { Private declarations }
    MudaAba: Boolean;
  public
    { Public declarations }
    DtAntCredito, DtAntLiberacao: TDateTime;
    Credito, Debito: Double;
    procedure InicializaDados; override;
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure CarregaDados; override;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
    function RegistraCaixa: Boolean;
  end;
var
  FORFAT: TFORFAT;
implementation
{$R *.DFM}
uses TPODTA, TPOFNC, TPOCST, TPOEMP, TPOFPG, ComObj, TPORFAT, TPOINI,
  TPOSELEMP;

procedure TFORFAT.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'fat_numero';
  nomeCodigo := 'fat_numero';
  nomeNome := 'emp_cod';
  nomeTabela := 'Fatura';
  quPrincipal := DmDta.quFatura;
  DmDta.dsFatura.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORFAT.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsFatura.DataSet := DmDta.quFatura;
end;

procedure TFORFAT.AtualizaDados;
begin
  inherited;
  if quPrincipal.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    if copy(inttostr(ultimoregistro), 1, 4) = '2007' then
      ultimoregistro := strtoint('2008' + trim(copy(inttostr(ultimoregistro), 5, 5)));
    quPrincipal.FieldByName('fat_numero').Value := ultimoRegistro;
  end;

  if edDtRecebCred.Text <> '  /  /    ' then
    quPrincipal.FieldByName('fat_datareceb1').Text := edDtRecebCred.Text
  else
    quPrincipal.FieldByName('fat_datareceb1').Text := '';
  if edDtRecebFolha.Text <> '  /  /    ' then
    quPrincipal.FieldByName('fat_datareceb2').Text := edDtRecebFolha.Text
  else
    quPrincipal.FieldByName('fat_datareceb2').Text := '';
  if edDtLiber.Text <> '  /  /    ' then
    quPrincipal.FieldByName('fat_datalib').Text := edDtLiber.Text
  else
    quPrincipal.FieldByName('fat_datalib').Text := '';
end;

procedure TFORFAT.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(fat_numero) as Maximo,');
    SQL.Add('  min(fat_numero) as Minimo');
    SQL.Add('from');
    SQL.Add('  Fatura');
    Open;

    if FieldByName('Minimo').IsNull then
    begin
      PrimeiroRegistro := 0;
      UltimoRegistro := 0;
    end
    else
    begin
      PrimeiroRegistro := FieldByName('Minimo').AsInteger;
      UltimoRegistro := FieldByName('Maximo').AsInteger;
    end;

    Close;
    Free;
  end;
end;

procedure TFORFAT.CarregaDados;
var
  tipoPgto: string;
begin
  inherited;
  if not quPrincipal.FieldByName('fat_datareceb1').IsNull then
    edDtRecebCred.Text := quPrincipal.FieldByName('fat_datareceb1').Text;
  if not quPrincipal.FieldByName('fat_datareceb2').IsNull then
    edDtRecebFolha.Text := quPrincipal.FieldByName('fat_datareceb2').Text;
  if not quPrincipal.FieldByName('fat_datalib').IsNull then
    edDtLiber.Text := quPrincipal.FieldByName('fat_datalib').Text;
  tipoPgto := DmDta.BuscaCampo('Empresa', 'emp_tipotaxa', 'emp_cod', quPrincipal.FieldByName('emp_cod').AsInteger);
  if tipoPgto <> '' then
  begin
    case StrToInt(tipoPgto) of
      0: edTaxa.Text := 'R$ 20,00 ou 8%';
      1: edTaxa.Text := 'R$ 25,00 ou 10%';
      2: edTaxa.Text := 'R$ 20,00 ou R$ 25,00';
      3: edTaxa.Text := 'R$ ' +
        FormatFloat('0.00', StrToFloat(DmDta.BuscaCampo('Empresa', 'emp_valortaxa', 'emp_cod', StrToInt(DBEdit4.Text)))) +
          ' / Estagiário';
      4: edTaxa.Text :=
        FormatFloat('0.0', StrToFloat(DmDta.BuscaCampo('Empresa', 'emp_valortaxa', 'emp_cod', StrToInt(DBEdit4.Text)))) +
          ' % por Bolsa / Folha';
    end;
  end;
end;

procedure TFORFAT.InicializaDados;
begin
  inherited;
  quPrincipal.FieldByName('fat_numero').Value := UltimoRegistro + 1;
  quPrincipal.FieldByName('fat_formapgto').Value := '0';
  DtAntCredito := 0;
  DtAntLiberacao := 0;
  Credito := 0;
  Debito := 0;
  DBEdit2.SetFocus;
end;

procedure TFORFAT.LimpaCampos;
begin
  inherited;
  edDtRecebCred.Clear;
  edDtRecebFolha.Clear;
  edDtLiber.Clear;
end;

procedure TFORFAT.DBEdit4DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    if not (DmDta.quFatura.State in [dsInsert, dsEdit]) then dmDta.quFatura.Edit;
    DmDta.quFaturaemp_cod.Text := FOREMP.F2Codigo;
    DmDta.quFaturaemp_nome.Text := FOREMP.F2Nome;
    DmDta.quFaturafat_formapgto.Text := IntToStr(FOREMP.F2Pgto);
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORFAT.DBEdit4Exit(Sender: TObject);
var FormaPgto: string;
  TipoPgto: string;
begin
  inherited;
  if (DBEdit4.Text <> '') then
  begin
    DBEdit5.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(DBEdit4.Text));

    if DBEdit5.Text = '' then
    begin
      MSGERRO('Empresa inexistente. Selecione outra empresa!');
      DBEdit4.SetFocus;
      Salvou := False;
    end
    else
    begin
      Salvou := True;
      try
        formaPgto := DmDta.BuscaCampo('Empresa', 'emp_formapgto', 'emp_cod', StrToInt(DBEdit4.Text));
        if FormaPgto = 'CETEFE' then
          quPrincipal.FieldByName('fat_formapgto').Value := '0'
        else
          quPrincipal.FieldByName('fat_formapgto').Value := '1';

        tipoPgto := DmDta.BuscaCampo('Empresa', 'emp_tipotaxa', 'emp_cod', StrToInt(DBEdit4.Text));
        if tipoPgto <> '' then
        begin
          case StrToInt(tipoPgto) of
            0: edTaxa.Text := 'R$ 20,00 ou 8%';
            1: edTaxa.Text := 'R$ 25,00 ou 10%';
            2: edTaxa.Text := 'R$ 20,00 ou R$ 25,00';
            3: edTaxa.Text := 'R$ ' +
              FormatFloat('0.00', StrToFloat(DmDta.BuscaCampo('Empresa', 'emp_valortaxa', 'emp_cod', StrToInt(DBEdit4.Text)))) +
                ' / Estagiário';
            4: edTaxa.Text :=
              FormatFloat('0.0', StrToFloat(DmDta.BuscaCampo('Empresa', 'emp_valortaxa', 'emp_cod', StrToInt(DBEdit4.Text)))) +
                ' % por Bolsa / Folha';
          end;
        end;
      except
      end;
    end;
  end
  else
    DBEdit5.Text := '';
end;

procedure TFORFAT.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit4DblClick(Sender);
end;

procedure TFORFAT.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DBEDit2.Text <> '' then
    if not ValidaAno(DBEdit2.text) then
      DBEdit2.SetFocus;
end;

procedure TFORFAT.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if DBEDit3.Text <> '' then
    if not ValidaMes(DBEdit3.text) then
      DBEdit3.SetFocus;
end;

procedure TFORFAT.edEmpCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORFAT.edEmpCodExit(Sender: TObject);
var
  argumento, ordem: string;
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    ordem := 'f.fat_numero desc';

    argumento := 'f.emp_cod = e.emp_cod and e.emp_cod = ' + edEmpCod.Text;
    DMDta.montaSql(quPrincipal, 'F.*, e.emp_nome', 'Fatura F, Empresa E', argumento, ordem);
    estadoNavegando();
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORFAT.cbTipoPesquisaChange(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := cbTipoPesquisa.ItemIndex;
  SelectNext(ActiveControl, True, True);
end;

procedure TFORFAT.edAnoExit(Sender: TObject);
var
  argumento, ordem: string;
begin
  inherited;
  if edAno.Text <> '' then
  begin
    if not ValidaAno(edAno.text) then
      edAno.SetFocus
    else if edMes.Text <> '' then
    begin
      ordem := 'f.fat_numero desc';
      argumento := 'f.emp_cod = e.emp_cod and f.fat_ano = ' + edAno.Text + ' and f.fat_mes = ' + edMes.Text;
      DMDta.montaSql(quPrincipal, 'F.*, e.emp_nome', 'Fatura F, Empresa E', argumento, ordem);
      estadoNavegando();
    end;
  end;
end;

procedure TFORFAT.edMesExit(Sender: TObject);
var
  argumento, ordem: string;
begin
  inherited;
  if edMes.Text <> '' then
  begin
    if not ValidaMes(edMes.text) then
      edMes.SetFocus
    else if edAno.Text <> '' then
    begin
      argumento := '';

      ordem := ' f.fat_numero desc ';
      argumento := ' f.emp_cod = e.emp_cod ';
      argumento := argumento + ' and f.fat_ano = ' + edAno.Text + ' and f.fat_mes = ' + edMes.Text;

      DMDta.montaSql(quPrincipal, 'F.*, e.emp_nome', 'Fatura F, Empresa E', argumento, ordem);
      estadoNavegando();
    end;
  end;
end;

procedure TFORFAT.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AbreFechaTabelas(true);
  with quPrincipal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select F.*, e.emp_nome from Fatura F, Empresa E where f.emp_cod = e.emp_cod order by f.fat_numero desc');
    Open;
  end;
  estadoNavegando;
  Screen.Cursor := crDefault;
  cbTipoPesquisa.ItemIndex := 0;
end;

procedure TFORFAT.btFolhaClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    Screen.Cursor := crHourGlass;
    FORFPG := TFORFPG.Create(Self);
    FORFPG.Fat := quPrincipal.FieldByName('fat_numero').AsInteger;
    FORFPG.Ano := quPrincipal.FieldByName('fat_ano').AsInteger;
    FORFPG.Mes := quPrincipal.FieldByName('fat_mes').AsInteger;
    FORFPG.Emp := quPrincipal.FieldByName('emp_cod').AsInteger;
    FORFPG.EmpNome := quPrincipal.FieldByName('emp_nome').AsString;
    Screen.Cursor := crDefault;
    FORFPG.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORFAT.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaNumero(Key);
end;

procedure TFORFAT.edFaturaExit(Sender: TObject);
var
  argumento, ordem: string;
begin
  inherited;
  if edFatura.Text <> '' then
  begin
    ordem := ' f.fat_numero desc ';
    argumento := ' f.emp_cod = e.emp_cod and f.fat_numero = ' + edFatura.Text;

    DMDta.montaSql(quPrincipal, 'F.*, e.emp_nome', 'Fatura F, Empresa E', argumento, ordem);
    estadoNavegando();
  end;
end;

function TFORFAT.RegistraCaixa: Boolean;
var
  UltEntrada, UltLanc: Integer;
  anoC, mesC, diaC, anoL, mesL, diaL: Word;
begin
  Result := False;
  // Crédito
  // Se for alteração, apaga o crédito já existente
  if DtAntCredito > 0 then
  begin
    DecodeDate(DtAntCredito, anoC, mesC, diaC);

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from Entrada where');
      Sql.Add('cai_ano = :cai_ano and cai_mes = :cai_mes and cen_motivo = :cen_motivo');
      Sql.Add('and cen_valor = :cen_valor');
      ParamByName('cai_ano').AsInteger := AnoC;
      ParamByName('cai_mes').AsInteger := MesC;
      ParamByName('cen_motivo').AsString := 'RECEBIMENTO - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
      ParamByName('cen_valor').AsFloat := Credito;
      ExecSql;
      Free;
    end;
  end;

  if (not quPrincipal.FieldByName('fat_datareceb1').IsNull) and
    (not quPrincipal.FieldByName('fat_totgeral').IsNull) then
  begin
    DecodeDate(quPrincipal.FieldByName('fat_datareceb1').AsDateTime, anoC, mesC, diaC);

    // Busca valor anterior de Entrada
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      SQL.Clear;
      SQL.Add('select MAX(cen_cod) as MAXIMO FROM Entrada');
      Sql.Add('where cai_ano = ' + IntToStr(AnoC));
      Sql.Add('and cai_mes = ' + IntToStr(MesC));
      Open;

      if FieldByName('Maximo').IsNull then
        UltEntrada := 1
      else
        UltEntrada := FieldByName('Maximo').AsInteger + 1;
      Close;

      // Insere o crédito
      Sql.Clear;
      Sql.Add('Insert into Entrada');
      Sql.Add('(cai_ano, cai_mes, cen_cod, cen_data, cen_valor, cen_motivo)');
      Sql.Add('values');
      Sql.Add('(:cai_ano, :cai_mes, :cen_cod, :cen_data, :cen_valor, :cen_motivo)');
      ParamByName('cai_ano').AsInteger := AnoC;
      ParamByName('cai_mes').AsInteger := MesC;
      ParamByName('cen_cod').AsInteger := ultEntrada;
      ParamByNAme('cen_data').AsDateTime := quPrincipal.FieldByName('fat_datareceb1').AsDateTime;
      ParamByName('cen_valor').AsFloat := quPrincipal.FieldByName('fat_totgeral').AsFloat;
      ParamByName('cen_motivo').AsString := 'RECEBIMENTO - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
      ExecSql;

      Free;
    end;
    Result := True;
  end;

  // Liberação
  // Se for alteração, apaga o débito já existente
  if DtAntLiberacao > 0 then
  begin
    DecodeDate(DtAntLiberacao, AnoL, MesL, DiaL);

    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from Lancamento where');
      Sql.Add('cai_ano = :cai_ano and cai_mes = :cai_mes and csa_motivo = :csa_motivo');
      Sql.Add('and csa_valor = :csa_valor');
      ParamByName('cai_ano').AsInteger := AnoL;
      ParamByName('cai_mes').AsInteger := MesL;
      ParamByName('csa_motivo').AsString := 'PAGAMENTO PIB - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
      ParamByName('csa_valor').AsFloat := Debito;
      ExecSql;
      Free;
    end;
  end;

  if (not quPrincipal.FieldByName('fat_datalib').IsNull) and
    (not quPrincipal.FieldByName('fat_totliberado').IsNull) then
  begin
    DecodeDate(quPrincipal.FieldByName('fat_datalib').AsDateTime, anoL, mesL, diaL);
    // Busca valor anterior de Lancamento
    with TQuery.Create(nil) do
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
        UltLanc := FieldByName('Maximo').AsInteger + 1;
      Close;

      // Insere o débito
      Sql.Clear;
      Sql.Add('Insert into Lancamento');
      Sql.Add('(cai_ano, cai_mes, csa_cod, csa_data, csa_valor, csa_motivo)');
      Sql.Add('values');
      Sql.Add('(:cai_ano, :cai_mes, :csa_cod, :csa_data, :csa_valor, :csa_motivo)');
      ParamByName('cai_ano').AsInteger := AnoL;
      ParamByName('cai_mes').AsInteger := MesL;
      ParamByName('csa_cod').AsInteger := ultLanc;
      ParamByNAme('csa_data').AsDateTime := quPrincipal.FieldByName('fat_datalib').AsDateTime;
      ParamByName('csa_valor').AsFloat := quPrincipal.FieldByName('fat_totLiberado').AsFloat;
      ParamByName('csa_motivo').AsString := 'PAGAMENTO PIB - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
      ExecSql;

      Free;
    end;
    Result := True;
  end;
end;

procedure TFORFAT.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;

  if Salvou then
  begin
    if DBEdit2.Text = '' then
    begin
      MSGERRO('Entre com o ano da fatura!');
      DBEdit2.SetFocus;
      Salvou := False;
    end
    else if DBEDit3.Text = '' then
    begin
      MSGERRO('Entre com o mês da fatura!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
    else if DBEDit4.Text = '' then
    begin
      MSGERRO('Entre com a empresa da fatura!');
      DBEdit3.SetFocus;
      Salvou := False;
    end
    else
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
        edFatura.Clear;
        if edFatura.CanFocus then edFatura.SetFocus;
      end;
    end;
  end;
end;

procedure TFORFAT.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORFAT.btFatPrivadaClick(Sender: TObject);
var DataC, Exte: string;
  var1: Variant;

  function RetornaValorCerto(valor: string): string;
  begin
    case length(valor) of
      4: valor := '           ' + valor;
      5: valor := '         ' + valor;
      6: valor := '       ' + valor;
      7: valor := '     ' + valor;
      8: valor := '   ' + valor;
    end;
    result := valor;
  end;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'janeiro';
    me[2] := 'fevereiro';
    me[3] := 'março';
    me[4] := 'abril';
    me[5] := 'maio';
    me[6] := 'junho';
    me[7] := 'julho';
    me[8] := 'agosto';
    me[9] := 'setembro';
    me[10] := 'outubro';
    me[11] := 'novembro';
    me[12] := 'dezembro';

    if quPrincipal.FieldByName('fat_datareceb1').AsString <> '' then
    begin
      dt := quPrincipal.FieldByName('fat_datareceb1').asstring;
      //quPrincipal.FieldByName('fat_datareceb2').AsString;
      da[1] := dt[1];
      da[2] := dt[2];
      da[3] := dt[4];
      da[4] := dt[5];
      da[5] := dt[7];
      da[6] := dt[8];
      da[7] := dt[9];
      da[8] := dt[10];
      d := da[1] + da[2];
      m := da[3] + da[4];
      a := da[5] + da[6] + da[7] + da[8];
      datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
    end
    else
      datac := '';
  end;

  procedure Imprime;
  var ValorInt: Integer;
    Valor, ValorCent: Double;
    Recesso, ValString: string;
    tipo: integer;
  begin
    recesso := '';
    tipo := 1;

{    with dmdta.qrypesquisa do
    begin
      close;
      sql.clear;
      sql.add('Select count(*) total from folhapgto where  controle = 1 and  fat_numero = '+dmdta.quFaturafat_numero.AsString );
      open;
      if fieldbyname('total').asinteger > 0 then
         recesso := 'e RECESSO REMUNERADO ';
      close;
    end ;}



    ValString := FloatToStr(quPrincipal.FieldByName('fat_totgeral').AsFloat);

    Valor := StrToFloat(ValString);
    ValorInt := Trunc(Valor);
    ValorCent := (Valor - ValorInt) * 100;

    exte := NumeroExtenso(ValorInt, 1);
    exte := AnsiLowerCase(exte);

    if ValorCent > 0 then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0', Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2));
      end
      else
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2));
      end;
    end;

    var1 := CreateOleObject('Word.basic');

    var1.FileNew(FORINI.Diretorio + 'Fatura0.dot');

    var1.editbookmark('inicio', 0, 0, 0, 1);
    var1.Font('Times New Roman', 12);
    Var1.Insert(#13 + #13 + #13);
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE');
    Var1.Bold;
    Var1.Insert(#13 + 'Fundado em 05/10/1997. Registro nº 3257 no livro "A1" do 3º Ofício de Registro');
    Var1.Insert(#13 + 'De Títulos e Documentos da Comarca de Curitiba. CNPJ 02.217.643/0001-17.');
    Var1.Insert(#13 + 'Av. Iguaçu, 2.345.');
    Var1.Insert(#13 + 'Fone: (41) 3311-8380 - CEP: 80.240-030 - Curitiba/PR.');
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('Times New Roman', 12);
    Var1.bold;
    Var1.Insert('Fatura N. º ' + quPrincipal.FieldByName('fat_numero').Text + '.');
    Var1.Insert(#13 + #13 + #13 + #13);
    var1.Font('Times New Roman', 16);
    Var1.Bold;
    var1.Insert('                                            F A T U R A');
    var1.Insert(#13 + #13);
    var1.Font('Times New Roman', 12);
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert(quPrincipal.FieldByName('emp_nome').AsString);
    Var1.Bold;
    Var1.Insert(' repassou ao CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, a importância de ');
    Var1.Bold;
    Var1.Insert('R$ ' + FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat));
    Var1.Bold;
    Var1.Insert(' (' + exte + ') referente ao PROGRAMA DE ESTÁGIO ' + recesso + 'realizado no mês de ');
    Var1.Insert(AnsiUpperCase(RetornaMes(quPrincipal.FieldByName('fat_mes').AsInteger)) + ' de ' + quPrincipal.FieldByName('fat_ano').AsString);
    Var1.Insert(', conforme Termo de Contrato firmado entre as partes.');
    Var1.Insert(#13 + #13 + #13 + #13 + #13);
    var1.editbookmark('linha1', 0, 0, 0, 1);
    Var1.Font('Times new Roman', 12);
    tipo := 0;
    if dmDTa.quFaturafat_totbolsa.AsCurrency > 0 then
    begin
      tipo := 1;
     // Var1.Insert(#13);
     Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Bolsa-Auxílio');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totbolsa').AsFloat)));
    end;

    if dmDTa.quFaturafat_totcont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuição ao CETEFE');
      Var1.nextcell;
      Var1.Font('Times new Roman', 12);
      Var1.Insert(#13);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totcont').AsFloat)));
    end;

    if dmDTa.quFaturatot_RecInd.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;

      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Recesso Indenizado');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recind').AsFloat)));
    end;

    if dmDTa.quFaturatot_RecIndcont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuicao CETEFE Rec. Ind.');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recindcont').AsFloat)));
    end;

    if dmDTa.quFaturatot_Recesso.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Recesso Remunerado');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recesso').AsFloat)));
    end;

    if dmDTa.quFaturatot_Recessocont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;

      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuicao CETEFE Recesso');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recessocont').AsFloat)));
    end;

    if tipo = 1 then
      Var1.nextcell;
    tipo := 1;
    Var1.Insert(#13);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('Total');
    Var1.nextcell;
    Var1.Insert(#13);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat)));
    //Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recessocont').AsFloat)));




    {Var1.Bold;
    Var1.Insert('Bolsa-Auxílio');
    var1.editbookmark('valor1', 0, 0, 0, 1);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totbolsa').AsFloat)));
    var1.editbookmark('linha2', 0, 0, 0, 1);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert('Contribuição ao CETEFE');
    var1.editbookmark('valor2', 0, 0, 0, 1);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totcont').AsFloat)));


    var1.editbookmark('linha3', 0, 0, 0, 1);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert('Total' + #9);
    var1.editbookmark('valor3', 0, 0, 0, 1);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat)));}
    var1.editbookmark('data', 0, 0, 0, 1);
    Var1.Font('Times new roman', 12);
    Var1.Insert('Curitiba, ' + datac + '.');
    Var1.Insert(#13 + #13 + #13 + #13 + #13);
    Var1.Insert('__________________________'#13);
    Var1.Insert('   Assinatura do Responsável');

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    DtCompleta;
    Imprime;
  end;
  MudaAba := True;
end;

procedure TFORFAT.btFatPublicaClick(Sender: TObject);
var DataC, Exte: string;
  var1: Variant;

  function RetornaValorCerto(valor: string): string;
  begin
    case length(valor) of
      4: valor := '           ' + valor;
      5: valor := '         ' + valor;
      6: valor := '       ' + valor;
      7: valor := '     ' + valor;
      8: valor := '   ' + valor;
    end;
    result := valor;
  end;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'janeiro';
    me[2] := 'fevereiro';
    me[3] := 'março';
    me[4] := 'abril';
    me[5] := 'maio';
    me[6] := 'junho';
    me[7] := 'julho';
    me[8] := 'agosto';
    me[9] := 'setembro';
    me[10] := 'outubro';
    me[11] := 'novembro';
    me[12] := 'dezembro';

    if quPrincipal.FieldByName('fat_datareceb2').AsString <> '' then
    begin
      dt := quPrincipal.FieldByName('fat_datareceb2').AsString;
      da[1] := dt[1];
      da[2] := dt[2];
      da[3] := dt[4];
      da[4] := dt[5];
      da[5] := dt[7];
      da[6] := dt[8];
      da[7] := dt[9];
      da[8] := dt[10];
      d := da[1] + da[2];
      m := da[3] + da[4];
      a := da[5] + da[6] + da[7] + da[8];
      datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
    end
    else
      datac := '';
  end;

  procedure Imprime;
  var
    ValorInt: Integer;
    Valor, ValorCent: Double;
    ValString: string;

  begin
    ValString := FloatToStr(quPrincipal.FieldByName('fat_totgeral').AsFloat);

    Valor := StrToFloat(ValString);
    ValorInt := Trunc(Valor);
    ValorCent := (Valor - ValorInt) * 100;

    exte := NumeroExtenso(ValorInt, 1);
    exte := AnsiLowerCase(exte);

    if ValorCent > 0 then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0', Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2));
      end
      else
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2));
      end;
    end;

    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio + 'Fatura_1.doc');
    Var1.Insert(#13 + #13 + #13);
    var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE');
    Var1.Bold;
    Var1.Insert(#13 + 'Fundado em 05/10/1997. Registro nº 3257 no livro "A1" do 3º Ofício de Registro');
    Var1.Insert(#13 + 'De Títulos e Documentos da Comarca de Curitiba. CNPJ 02.217.643/0001-17.');
    Var1.Insert(#13 + 'Av. Iguaçu, 2.345.');
    Var1.Insert(#13 + 'Fone: (41) 3311-8380 - CEP: 80.240-030 - Curitiba / PR.');
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('Times New Roman', 12);
    Var1.bold;
    Var1.Insert('Fatura N. º ' + quPrincipal.FieldByName('fat_numero').Text + '.');
    Var1.Insert(#13 + #13 + #13 + #13);
    var1.Font('Times New Roman', 16);
    Var1.Bold;
    var1.Insert('                                            F A T U R A');
    var1.Insert(#13 + #13);
    var1.Font('Times New Roman', 12);
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert(quPrincipal.FieldByName('emp_nome').AsString);
    Var1.Bold;
    Var1.Insert(' deve ao CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, a importância de ');
    Var1.Bold;
    Var1.Insert('R$ ' + FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat));
    Var1.Bold;
    Var1.Insert(' (' + exte + ') referente ao PROGRAMA DE ESTÁGIO realizado no mês de ');
    Var1.Insert(AnsiUpperCase(RetornaMes(quPrincipal.FieldByName('fat_mes').AsInteger)) + ' de ' + quPrincipal.FieldByName('fat_ano').AsString);
    Var1.Insert(', conforme Termo de Contrato Firmado entre as partes.');
    Var1.Insert(#13 + #13 + #13 + #13 + #13);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert(#9 + 'Bolsa-Auxílio' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totbolsa').AsFloat)));
    Var1.Insert(#13);
    Var1.Font('Times New Roman', 8);
    var1.Insert(#13);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert(#9 + 'Contribuição ao CETEFE' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totcont').AsFloat)));
    Var1.Insert(#13);
    Var1.Font('Times New Roman', 8);
    var1.Insert(#13);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert(#9 + 'Total' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat)));

    var1.Insert(#13 + #13 + #13 + #13 + 'Solicitamos que a referida verba seja creditada em nome do CETEFE - Centro de Treinamento e Formação de Estudante, na conta corrente número 13.532-1, no Banco do Brasil S/A, Agência 1869-4 - Comendador Araújo.');
    var1.Bold;
    var1.Insert(#13 + #13 + #13 + #13);
    Var1.Insert('Curitiba, ' + datac + '.');
    Var1.Insert(#13 + #13 + #13 + #13 + #13);
    Var1.Insert('__________________________'#13);
    Var1.Insert('   Assinatura do Responsável');

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

begin
  inherited;

  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    DtCompleta;
    Imprime;
  end;
  MudaAba := True;
end;

procedure TFORFAT.btFatBoletoClick(Sender: TObject);
var DataC, Exte: string;
  var1: Variant;

  function RetornaValorCerto(valor: string): string;
  begin
    case length(valor) of
      4: valor := '           ' + valor;
      5: valor := '         ' + valor;
      6: valor := '       ' + valor;
      7: valor := '     ' + valor;
      8: valor := '   ' + valor;
    end;
    result := valor;
  end;

  procedure dtcompleta;
  var
    dt, d, m, a: string;
    da: array[1..8] of string;
    me: array[1..12] of string;
  begin
    me[1] := 'janeiro';
    me[2] := 'fevereiro';
    me[3] := 'março';
    me[4] := 'abril';
    me[5] := 'maio';
    me[6] := 'junho';
    me[7] := 'julho';
    me[8] := 'agosto';
    me[9] := 'setembro';
    me[10] := 'outubro';
    me[11] := 'novembro';
    me[12] := 'dezembro';

    if quPrincipal.FieldByName('fat_datareceb2').AsString <> '' then
    begin
      dt := quPrincipal.FieldByName('fat_datareceb2').AsString;
      da[1] := dt[1];
      da[2] := dt[2];
      da[3] := dt[4];
      da[4] := dt[5];
      da[5] := dt[7];
      da[6] := dt[8];
      da[7] := dt[9];
      da[8] := dt[10];
      d := da[1] + da[2];
      m := da[3] + da[4];
      a := da[5] + da[6] + da[7] + da[8];
      datac := '' + d + ' de ' + me[strtoint(m)] + ' de ' + a + '';
    end
    else
      datac := '';
  end;

  procedure Imprime;
  var tipo,ValorInt: Integer;
    Valor, ValorCent: Double;
    ValString: string;
  begin

    tipo := 0;
    ValString := FloatToStr(quPrincipal.FieldByName('fat_totgeral').AsFloat);

    Valor := StrToFloat(ValString);
    ValorInt := Trunc(Valor);
    ValorCent := (Valor - ValorInt) * 100;

    exte := NumeroExtenso(ValorInt, 1);
    exte := AnsiLowerCase(exte);

    if ValorCent > 0 then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0', Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent), 2));
      end
      else
      begin
        if exte = '' then
          exte := AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2))
        else
          exte := exte + ' e ' + AnsiLowerCase(NumeroExtenso(Trunc(ValorCent) + 1, 2));
      end;
    end;

    var1 := CreateOleObject('Word.basic');
  //  var1.FileOpen(FORINI.Diretorio + 'Fatura_1.doc');
    var1.FileNew(FORINI.Diretorio + 'Fatura0.dot');
    Var1.Insert(#13 + #13 + #13);
    var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE');
    Var1.Bold;
    Var1.Insert(#13 + 'Fundado em 05/10/1997. Registro nº 3257 no livro "A1" do 3º Ofício de Registro');
    Var1.Insert(#13 + 'De Títulos e Documentos da Comarca de Curitiba. CNPJ 02.217.643/0001-17.');
    Var1.Insert(#13 + 'Av. Iguaçu, 2.345.');
    Var1.Insert(#13 + 'Fone: (41) 3311-8380 - CEP: 80.240-030 - Curitiba / PR.');
    Var1.Insert(#13 + #13 + #13);
    Var1.Font('Times New Roman', 12);
    Var1.bold;
    Var1.Insert('Fatura N. º ' + quPrincipal.FieldByName('fat_numero').Text + '.');
    Var1.Insert(#13 + #13 + #13);
    var1.Font('Times New Roman', 16);
    Var1.Bold;
    var1.Insert('                                            F A T U R A');
    var1.Insert(#13 + #13);
    var1.Font('Times New Roman', 12);
    Var1.Insert('A ');
    Var1.Bold;
    Var1.Insert(quPrincipal.FieldByName('emp_nome').AsString);
    Var1.Bold;
    Var1.Insert(' deve ao CETEFE - CENTRO DE TREINAMENTO E FORMAÇÃO DO ESTUDANTE, a importância de ');
    Var1.Bold;
    Var1.Insert('R$ ' + FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat));
    Var1.Bold;
    Var1.Insert(' (' + exte + ') referente ao PROGRAMA DE ESTÁGIO realizado no mês de ');
    Var1.Insert(AnsiUpperCase(RetornaMes(quPrincipal.FieldByName('fat_mes').AsInteger)) + ' de ' + quPrincipal.FieldByName('fat_ano').AsString);
    Var1.Insert(', conforme Termo de Contrato firmado entre as partes.');
    Var1.Insert(#13 + 'A quitação desta FATURA será feita através do pagamento do Boleto Bancário sob nº 0000000000.');
    //Var1.Insert(#13 + #13 + #13 + #13);

    {Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert(#9 + 'Bolsa-Auxílio' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totbolsa').AsFloat)));
    Var1.Insert(#13);
    Var1.Font('Times New Roman', 8);
    var1.Insert(#13);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;
    Var1.Insert(#9 + 'Contribuição ao CETEFE' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totcont').AsFloat)));
    Var1.Insert(#13);
    Var1.Font('Times New Roman', 8);
    var1.Insert(#13);
    Var1.Font('Times New Roman', 12);
    Var1.Bold;

    Var1.Insert(#9 + 'Total' + #9 + 'R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat)) + #13);
    Var1.Insert(#13 + #13 + #13 + #13);
    Var1.Font('Times new roman', 12);}
    var1.editbookmark('linha1', 0, 0, 0, 1);

    Var1.Font('Times new Roman', 12);
    tipo := 0;
    if dmDTa.quFaturafat_totbolsa.AsCurrency > 0 then
    begin
      tipo := 1;
     // Var1.Insert(#13);
     Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Bolsa-Auxílio');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totbolsa').AsFloat)));
    end;

    if dmDTa.quFaturafat_totcont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuição ao CETEFE');
      Var1.nextcell;
      Var1.Font('Times new Roman', 12);
      Var1.Insert(#13);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totcont').AsFloat)));
    end;

    if dmDTa.quFaturatot_RecInd.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;

      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Recesso Indenizado');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recind').AsFloat)));
    end;

    if dmDTa.quFaturatot_RecIndcont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuicao CETEFE Rec. Ind.');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recindcont').AsFloat)));
    end;

    if dmDTa.quFaturatot_Recesso.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Recesso Remunerado');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recesso').AsFloat)));
    end;

    if dmDTa.quFaturatot_Recessocont.AsCurrency > 0 then
    begin
      if tipo = 1 then
      begin
        Var1.nextcell;
        Var1.Insert(#13);
      end;
      tipo := 1;

      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('Contribuicao CETEFE Recesso');
      Var1.nextcell;
      Var1.Insert(#13);
      Var1.Font('Times new Roman', 12);
      Var1.Bold;
      Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('tot_recessocont').AsFloat)));
    end;

    if tipo = 1 then
      Var1.nextcell;
    tipo := 1;
    Var1.Insert(#13);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('Total');
    Var1.nextcell;
    Var1.Insert(#13);
    Var1.Font('Times new Roman', 12);
    Var1.Bold;
    Var1.Insert('R$ ' + RetornaValorCerto(FormatFloat('#,##0.00', quPrincipal.FieldByName('fat_totgeral').AsFloat)));
    var1.editbookmark('mensagem', 0, 0, 0, 1);                                                                       
    var1.Bold;
    var1.Insert('Solicitamos que seja enviado por correspondência ou por fax (nº 3024-3981), cópia do(s) recibo(s) de Pagamento da(s) Bolsa(s) Auxílio do(s) estagiário(s) para controle do CETEFE.');
    var1.Bold;
    //var1.Insert(#13 + #13 + #13 + #13);
    var1.editbookmark('data', 0, 0, 0, 1);
    Var1.Insert('Curitiba, ' + datac + '.');
    Var1.Insert(#13 + #13 + #13 + #13 + #13);
    Var1.Insert('__________________________'#13);
    Var1.Insert('   Assinatura do Responsável');

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

begin
  inherited;

  MudaAba := False;
  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    DtCompleta;
    Imprime;
  end;
  MudaAba := True;
end;

procedure TFORFAT.btExcluirClick(Sender: TObject);

  procedure ExcluiFolhaPgto;
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from FolhaPgto where fat_numero = :fat_numero');
      ParamByName('fat_numero').AsInteger := quPrincipal.FieldByName('fat_numero').AsInteger;
      ExecSql;
      Free;
    end;
  end;

  procedure RegistraCaixaExc;
  var
    anoC, mesC, diaC, anoL, mesL, diaL: Word;
  begin
    // Crédito

    // Apaga o crédito existente se já lançado
    if not quPrincipal.FieldByName('fat_datareceb1').IsNull then
    begin
      DecodeDate(quPrincipal.FieldByName('fat_datareceb1').Value, AnoC, mesC, diaC);
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Add('Delete from Entrada where');
        Sql.Add('cai_ano = :cai_ano and cai_mes = :cai_mes and cen_motivo = :cen_motivo');
        Sql.Add('and cen_valor = :cen_valor');
        ParamByName('cai_ano').AsInteger := AnoC;
        ParamByName('cai_mes').AsInteger := MesC;
        ParamByName('cen_motivo').AsString := 'RECEBIMENTO - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
        ParamByName('cen_valor').AsFloat := Credito;
        ExecSql;
        free;
      end;
    end;

    // Liberação
    // Apaga a liberação existente se já lançada
    if not quPrincipal.FieldByName('fat_datalib').IsNull then
    begin
      DecodeDate(quPrincipal.FieldByName('fat_datalib').Value, AnoL, mesL, diaL);
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Delete from Lancamento where');
        Sql.Add('cai_ano = :cai_ano and cai_mes = :cai_mes and csa_motivo = :csa_motivo');
        Sql.Add('and csa_valor = :csa_valor');
        ParamByName('cai_ano').AsInteger := AnoL;
        ParamByName('cai_mes').AsInteger := MesL;
        ParamByName('csa_motivo').AsString := 'PAGAMENTO PIB - ' + quPrincipal.FieldByName('fat_numero').Text + ' - ' + quPrincipal.FieldByName('emp_nome').Text;
        ParamByName('csa_valor').AsFloat := Debito;
        ExecSql;
        free;
      end;
    end;
  end;

begin
  if quPrincipal.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if not quPrincipal.FieldByName('fat_totgeral').IsNull then
    Credito := quPrincipal.FieldByName('fat_totgeral').Value
  else
    Credito := 0;

  if not quPrincipal.FieldByName('fat_totliberado').IsNull then
    Debito := quPrincipal.FieldByName('fat_totliberado').Value
  else
    Debito := 0;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      RegistraCaixaExc;
      ExcluiFolhaPgto;
      DmDta.ExcluirRegistro(quPrincipal);
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORFAT.edDtRecebCredExit(Sender: TObject);
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

procedure TFORFAT.edDtRecebCredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (quPrincipal.State in [dsInsert, dsEdit]) then quPrincipal.Edit;
end;

procedure TFORFAT.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not quPrincipal.FieldByName('fat_datareceb1').IsNull then
    DtAntCredito := quPrincipal.FieldByName('fat_datareceb1').Value
  else
    DtAntCredito := 0;

  if not quPrincipal.FieldByName('fat_datalib').IsNull then
    DtAntLiberacao := quPrincipal.FieldByName('fat_datalib').Value
  else
    DtAntLiberacao := 0;

  if not quPrincipal.FieldByName('fat_totgeral').IsNull then
    Credito := quPrincipal.FieldByName('fat_totgeral').Value
  else
    Credito := 0;

  if not quPrincipal.FieldByName('fat_totLiberado').IsNull then
    Debito := quPrincipal.FieldByName('fat_totliberado').Value
  else
    Debito := 0;
end;

procedure TFORFAT.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou := True;
end;

procedure TFORFAT.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  quPrincipal.Insert;
  lblInclusao.Caption := 'Inclusão';
  pgPrincipal.ActivePage := tbRegistro;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORFAT.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORFAT.LimpaParametros;
begin
  inherited;
  edFatura.Clear;
  edAno.Clear;
  edMes.Clear;
  edEmpCod.Clear;
  edEmpNome.Clear;
  edAno1.Clear;
  edMes1.Clear;
  edValor.Clear;
end;

procedure TFORFAT.edValorExit(Sender: TObject);
var
  argumento, ordem: string;
  ValStr: string;
  Valor: Double;
begin
  inherited;
  if edValor.Text <> '' then
  begin
    try
      Valor := StrToFloat(edValor.Text);
      Str(Valor: 10: 2, ValStr);
      ordem := 'f.fat_numero desc';
      argumento := 'f.emp_cod = e.emp_cod and f.fat_totbolsa + f.fat_totcont = ' + ValStr;

      if (edAno1.Text <> '') and (edMes1.Text <> '') then
        argumento := argumento + ' and f.fat_ano = ' + edAno1.Text + ' and f.fat_mes = ' + edMes1.Text;

      DMDta.montaSql(quPrincipal, 'f.*, e.emp_nome', 'Fatura F, Empresa E', argumento, ordem);
      edValor.Text := FormatFloat('#,###,##0.00', StrToFloat(edValor.Text));
      estadoNavegando();
    except
      MSGERRO('Valor inválido. Tente novamente!');
      edValor.SetFocus;
    end;
  end;
end;

procedure TFORFAT.edAno1Exit(Sender: TObject);
begin
  inherited;
  if edAno1.Text <> '' then
  begin
    if not ValidaAno(edAno1.text) then
      edAno1.SetFocus;
  end;
end;

procedure TFORFAT.edMes1Exit(Sender: TObject);
begin
  inherited;
  if edMes1.Text <> '' then
  begin
    if not ValidaMes(edMes1.text) then
      edMes1.SetFocus;
  end;
end;

procedure TFORFAT.btCaixaClick(Sender: TObject);
begin
  inherited;
  MudaAba := False;

  if (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar o registro?') then
    begin
      try
        btSalvar.Click;
      except
        btCancelar.Click; // Cancela Registro
      end;
    end
    else
      exit;
  end;

  if Salvou then
  begin
    if RegistraCaixa then
      MSGAVISO('Caixa atualizado com sucesso!');
//    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

procedure TFORFAT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    vk_F6: btCaixa.Click;
    vk_F7: btFolha.Click;
    vk_F8: btFatPrivada.Click;
    vk_F9: btFatPublica.Click;
    vk_F10: btFatBoleto.Click;
  end;
end;

procedure TFORFAT.btImpressaoClick(Sender: TObject);
begin
  inherited;
  if quPrincipal.Isempty then
  begin
    MSGERRO('Não há registros para imprimir!');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  qrFatura := TQRFatura.Create(Self);
  Screen.Cursor := crDefault;
  qrFatura.Preview;
  qrFatura.Free;
end;

procedure TFORFAT.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  campos.Items.Clear;
  campos.Items.Add('Valor Total');
  FORINI.ExportarDadosExcel(DmDTA.quFatura, campos, '', 'Faturas', '');

  Screen.Cursor := crDefault;
end;

procedure TFORFAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  ACTION := CAFREE;
end;

procedure TFORFAT.btFecharClick(Sender: TObject);
begin
  //inherited;
  close;
end;

procedure TFORFAT.SpeedButton1Click(Sender: TObject);
var
  idpessoa, iddocumento, idparcela, x: integer;
  fatura: integer;
begin

  inherited;
  if MSGSIMNAO('Deseja Gerar Documentos no Financeiro do Registros Selecionados?') = false then
    exit;
  fatura := dmdta.quFaturafat_numero.AsInteger;


  dmdta.qufatura.DisableControls;
  dmdta.qufatura.First;
  x := 0;
  while not dmdta.qufatura.eof do
  begin
    if dbgrid1.SelectedRows.CurrentRowSelected then
    begin
      if (dmdta.qufatura.FieldByName('id_documento').AsString = '') and
        (dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency > 0) and
        (dmdta.qufatura.fieldbyname('fat_datareceb1').asstring <> '') then
      begin
        qrypesquisa.Close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.Add('select * from tb_pessoas where emp_cod=:codigo ');
        qrypesquisa.ParamByName('codigo').AsInteger := dmdta.qufatura.fieldbyname('emp_cod').AsInteger;
        qrypesquisa.Open;
        if not qrypesquisa.Eof then
        begin
          idpessoa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;
          QRYPESQUISA.CLOSE;
          QRYPESQUISA.SQL.CLEAR;
          QRYPESQUISA.SQL.ADD('SELECT id_ccRecEmp ,id_pcRecEmp,id_pcBolsaEmp,id_ccBolsaEmp FROM TB_EMPRESA ');
          qrypesquisa.Open;
          if dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency > 0 then
            with TQuery.Create(nil) do
            begin
              DatabaseName := DATABASE_NAME;
              Sql.Add('insert into tb_documentos ');
              sql.add(' (id_documento,id_pessoa,pagrec,documento,id_planocontas,num_parcelas,');
              sql.add('totalavista,total,saldo,id_usuarioincluiu,dta_emissao,dataincluiu,vlr_efetuado,status) values ');
              sql.add(' (:id_documento,:id_pessoa,:pagrec,:documento,:id_planocontas,:num_parcelas, ');
              sql.add(':totalavista,:total,:saldo,:id_usuarioincluiu,:dta_emissao,:dataincluiu,0,1 )');
              IDDOCUMENTO := dmdta.NEW_ID('tb_documentos');
              parambyname('pagrec').asstring := 'R';
              parambyname('documento').asstring := dmdta.qufatura.FieldByName('fat_numero').asstring;
              parambyname('id_documento').asinteger := IDDOCUMENTO;
              parambyname('id_pessoa').asinteger := idpessoa;
              parambyname('id_planocontas').asinteger := qrypesquisa.fieldbyname('id_pcBolsaemp').asinteger;
              parambyname('num_parcelas').asinteger := 1;
              parambyname('id_usuarioincluiu').asinteger := 0;
              parambyname('totalavista').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
              parambyname('total').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
              parambyname('saldo').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
              parambyname('dta_emissao').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
              parambyname('dataincluiu').value := date;
              execsql;
              close;
              free;
            end;

          with TQuery.Create(nil) do
          begin
            DatabaseName := DATABASE_NAME;
            Sql.Add('insert into tb_rateiocc ');
            sql.Add(' (ID_RATEIO, ID_DOCUMENTO, ID_CC, VALOR, PERC  ) values');
            sql.Add(' (:ID_RATEIO, :ID_DOCUMENTO, :ID_CC, :VALOR, 100) ');
            parambyname('id_rateio').asinteger := dmdta.NEW_ID('tb_rateiocc'); ;
            parambyname('id_documento').asinteger := IDDOCUMENTO;
            parambyname('id_cc').asinteger := qrypesquisa.fieldbyname('id_ccBolsaEmp').asinteger;
            parambyname('valor').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
            execsql;
            close;
            free;
          end;

          with TQuery.Create(nil) do
          begin
            idparcela := dmdta.NEW_ID('tb_parcelas');
            DatabaseName := DATABASE_NAME;
            Sql.Add('insert into TB_Parcelas ');
            sql.Add(' (DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO,ID_PARCELAS, NUMPARCELA,SALDO, VLR_PARCELA, VLR_REALIZADO)  values');
            sql.Add(' (:DTA_VENCIMENTO, :DTA_VENCPRORROGADO, :ID_DOCUMENTO,:ID_PARCELAS, :NUMPARCELA,:SALDO,:VLR_PARCELA, :VLR_REALIZADO) ');
            idparcela := dmdta.NEW_ID('tb_parcelas');
            parambyname('DTA_VENCIMENTO').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
            parambyname('DTA_VENCPRORROGADO').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
            parambyname('id_documento').asinteger := IDDOCUMENTO;
            parambyname('id_parcelas').asinteger := idparcela;
            parambyname('numparcela').asinteger := 1;
            parambyname('saldo').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
            parambyname('VLR_PARCELA').ascurrency := dmdta.qufatura.FieldByName('fat_totbolsa').ascurrency;
            parambyname('VLR_REALIZADO').ascurrency := 0;
            execsql;
            close;
            free;
          end;
          with TQuery.Create(nil) do
          begin
            DatabaseName := DATABASE_NAME;
            Sql.Add('update fatura  set id_documento =:documento where fat_numero=:fatura ');
            parambyname('documento').asinteger := iddocumento;
            parambyname('fatura').asinteger := dmdta.qufatura.FieldByName('fat_numero').asinteger;
            execsql;
            close;
            free;
          end;
        end;
      end;

      if (dmdta.qufatura.FieldByName('id_documentoContribuicao').AsString = '') and
        (dmdta.qufatura.FieldByName('fat_totcont').ascurrency > 0) and
        (dmdta.qufatura.fieldbyname('fat_datareceb1').asstring <> '') then
      begin
        qrypesquisa.Close;
        qrypesquisa.SQL.Clear;
        qrypesquisa.SQL.Add('select * from tb_pessoas where emp_cod=:codigo ');
        qrypesquisa.ParamByName('codigo').AsInteger := dmdta.qufatura.fieldbyname('emp_cod').AsInteger;
        qrypesquisa.Open;
        if not qrypesquisa.Eof then
        begin
          idpessoa := qrypesquisa.fieldbyname('id_pessoas').AsInteger;
          QRYPESQUISA.CLOSE;
          QRYPESQUISA.SQL.CLEAR;
          QRYPESQUISA.SQL.ADD('SELECT id_ccRecEmp ,id_pcRecEmp,id_pcBolsaEmp,id_ccBolsaEmp FROM TB_EMPRESA ');
          qrypesquisa.Open;
          if dmdta.qufatura.FieldByName('fat_totcont').ascurrency > 0 then
            with TQuery.Create(nil) do
            begin
              DatabaseName := DATABASE_NAME;
              Sql.Add('insert into tb_documentos ');
              sql.add(' (id_documento,id_pessoa,pagrec,documento,id_planocontas,num_parcelas,');
              sql.add('totalavista,total,saldo,id_usuarioincluiu,dta_emissao,dataincluiu,vlr_efetuado,status) values ');
              sql.add(' (:id_documento,:id_pessoa,:pagrec,:documento,:id_planocontas,:num_parcelas, ');
              sql.add(':totalavista,:total,:saldo,:id_usuarioincluiu,:dta_emissao,:dataincluiu,0,1 )');
              IDDOCUMENTO := dmdta.NEW_ID('tb_documentos');
              parambyname('pagrec').asstring := 'R';
              parambyname('documento').asstring := dmdta.qufatura.FieldByName('fat_numero').asstring;
              parambyname('id_documento').asinteger := IDDOCUMENTO;
              parambyname('id_pessoa').asinteger := idpessoa;
              parambyname('id_planocontas').asinteger := qrypesquisa.fieldbyname('id_pcRecemp').asinteger;
              parambyname('num_parcelas').asinteger := 1;
              parambyname('id_usuarioincluiu').asinteger := 0;
              parambyname('totalavista').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
              parambyname('total').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
              parambyname('saldo').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
              parambyname('dta_emissao').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
              parambyname('dataincluiu').value := date;
              execsql;
              close;
              free;
            end;

          with TQuery.Create(nil) do
          begin
            DatabaseName := DATABASE_NAME;
            Sql.Add('insert into tb_rateiocc ');
            sql.Add(' (ID_RATEIO, ID_DOCUMENTO, ID_CC, VALOR, PERC  ) values');
            sql.Add(' (:ID_RATEIO, :ID_DOCUMENTO, :ID_CC, :VALOR, 100) ');
            parambyname('id_rateio').asinteger := dmdta.NEW_ID('tb_rateiocc'); ;
            parambyname('id_documento').asinteger := IDDOCUMENTO;
            parambyname('id_cc').asinteger := qrypesquisa.fieldbyname('id_ccRecEmp').asinteger;
            parambyname('valor').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
            execsql;
            close;
            free;
          end;

          with TQuery.Create(nil) do
          begin
            idparcela := dmdta.NEW_ID('tb_parcelas');
            DatabaseName := DATABASE_NAME;
            Sql.Add('insert into TB_Parcelas ');
            sql.Add(' (DTA_VENCIMENTO, DTA_VENCPRORROGADO, ID_DOCUMENTO,ID_PARCELAS, NUMPARCELA,SALDO, VLR_PARCELA, VLR_REALIZADO)  values');
            sql.Add(' (:DTA_VENCIMENTO, :DTA_VENCPRORROGADO, :ID_DOCUMENTO,:ID_PARCELAS, :NUMPARCELA,:SALDO,:VLR_PARCELA, :VLR_REALIZADO) ');
            idparcela := dmdta.NEW_ID('tb_parcelas');
            parambyname('DTA_VENCIMENTO').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
            parambyname('DTA_VENCPRORROGADO').value := dmdta.qufatura.fieldbyname('fat_datareceb1').Value;
            parambyname('id_documento').asinteger := IDDOCUMENTO;
            parambyname('id_parcelas').asinteger := idparcela;
            parambyname('numparcela').asinteger := 1;
            parambyname('saldo').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
            parambyname('VLR_PARCELA').ascurrency := dmdta.qufatura.FieldByName('fat_totcont').ascurrency;
            parambyname('VLR_REALIZADO').ascurrency := 0;
            execsql;
            close;
            free;
          end;
          with TQuery.Create(nil) do
          begin
            DatabaseName := DATABASE_NAME;
            Sql.Add('update fatura  set id_documentoContribuicao =:documento where fat_numero=:fatura ');
            parambyname('documento').asinteger := iddocumento;
            parambyname('fatura').asinteger := dmdta.qufatura.FieldByName('fat_numero').asinteger;
            execsql;
            close;
            free;
          end;
        end;
      end;
    end;
    dmdta.qufatura.next;
  end;
  dmdta.qufatura.close;
  dmdta.qufatura.open;
  dmdta.qufatura.EnableControls;
  dmdta.qufatura.Locate('fat_numero', fatura, []);
end;

procedure TFORFAT.MarcarTodos1Click(Sender: TObject);
begin
  inherited;
  with DmDta.qufatura do
  begin
    Screen.Cursor := crHourGlass;
    DisableControls;
    First;
    while not Eof do
    begin
      dbgrid1.SelectedRows.CurrentRowSelected := true;
      Next;
    end;
    enableControls;
    Screen.Cursor := crDefault;
  end;
end;

end.

