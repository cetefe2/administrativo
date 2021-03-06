unit TPOTCE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD2, DBTables, Db, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ExtCtrls, Mask, DBCtrls;

type
  TFORTCE = class(TFORMOD2)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cbTipoSelecao: TComboBox;
    Notebook1: TNotebook;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    cbEstEnc: TComboBox;
    Label6: TLabel;
    Notebook2: TNotebook;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    meTceAbert: TMaskEdit;
    meTceDtIni: TMaskEdit;
    meTceDtFim: TMaskEdit;
    Label14: TLabel;
    meTceDtRes: TMaskEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    quEncVaga: TQuery;
    quEncVagaest_cod: TIntegerField;
    quEncVagaest_nome: TStringField;
    quEncVagaeva_resultado: TStringField;
    quEncVagaResultado: TStringField;
    dsEncVaga: TDataSource;
    Notebook3: TNotebook;
    edPar: TEdit;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    btImprimir: TSpeedButton;
    qcontrato: TQuery;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    meEnt1: TMaskEdit;
    meSai1: TMaskEdit;
    meEnt2: TMaskEdit;
    Label19: TLabel;
    meSai2: TMaskEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    cbTipoBolsa: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    edEstCod: TEdit;
    edEstNome: TEdit;
    meTceDtRet: TMaskEdit;
    Label23: TLabel;
    meTceDtDec: TMaskEdit;
    Label24: TLabel;
    DBEdit12: TDBEdit;
    SpeedButton3: TSpeedButton;
    quBuscaAlteracao: TQuery;
    edInstCod: TEdit;
    edInstNome: TEdit;
    meData1: TMaskEdit;
    meData2: TMaskEdit;
    Label25: TLabel;
    btImpressao: TSpeedButton;
    btSabado: TSpeedButton;
    edCurCod: TEdit;
    edCurNome: TEdit;
    Label26: TLabel;
    meTceDtAval: TMaskEdit;
    rgSituacao: TRadioGroup;
    lblAno: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure quEncVagaCalcFields(DataSet: TDataSet);
    procedure cbEstEncChange(Sender: TObject);
    procedure cbTipoSelecaoChange(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure pgPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure meEnt1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure meTceAbertExit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meTceDtResExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure edEstCodExit(Sender: TObject);
    procedure edEstCodDblClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure Notebook1PageChanged(Sender: TObject);
    procedure cbTipoSelecaoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure meTceAbertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure meTceDtRetKeyPress(Sender: TObject; var Key: Char);
    procedure meTceDtRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edInstCodDblClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meData1Exit(Sender: TObject);
    procedure meData2Exit(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
    procedure btSabadoClick(Sender: TObject);
    procedure edCurCodDblClick(Sender: TObject);
    procedure edCurCodExit(Sender: TObject);
    procedure edCurCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgSituacaoClick(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
  private
    { Private declarations }
    MudaAba, Retorno: Boolean;
    dtc, Hr1, Hr2, Hr3, Hr4, Hr5, Hr6, Hr7, Hr8, eTotal: String;
    Digitou: Boolean;


  public
    { Public declarations }
    procedure AtualizaDados; override;
    procedure BuscaPrimeiroUltimo; override;
    procedure InicializaDados; override;
    procedure CarregaDados; override;
    function  BuscaPerfil: Boolean;
    function  VerificaVaga: Boolean;
    procedure LimpaCampos; override;
    procedure LimpaParametros; override;
    procedure CalcHora;
  end;

var
  FORTCE: TFORTCE;

implementation

Uses TPODTA, TPOFNC, TPOVAG, TPOEMP, TPOEST, TPOCST, TPOTAL, TPOTAD, TPOTCED,
     TPOINS, TPORTCE, TPOCUR, ComObj, TPOINI, Math;

{$R *.DFM}

procedure TFORTCE.FormCreate(Sender: TObject);
begin
  inherited;
  Digitou    := False;
  nomeChave  := 'tce_cod';
  nomeCodigo := 'tce_cod';
  nomeNome   := '';
  nomeTabela := 'Tce';

  quPrincipal := DmDta.quTce;
  DmDta.dsTce.DataSet := quPrincipal;
  MudaAba := True;
  Retorno := False;
end;

procedure TFORTCE.FormDestroy(Sender: TObject);
begin
  inherited;
  DmDta.dsTce.DataSet := DmDta.quTce;
end;

procedure TFORTCE.AtualizaDados;
begin
  inherited;
  if quPrincipal.State = dsInsert then
  begin
    BuscaPrimeiroUltimo();
    inc(ultimoRegistro);
    quPrincipal.FieldByName('tce_cod').Value := ultimoRegistro;
  end;

  quPrincipal.FieldByName('tce_data').Value       := meTceAbert.Text;
  quPrincipal.FieldByName('tce_tipocont').Value   := IntToStr(cbTipoSelecao.ItemIndex);
  quPrincipal.FieldByName('tce_estenc').Value     := IntToStr(cbEstEnc.ItemIndex);
  quPrincipal.FieldByName('tce_dataini').text     := meTceDtIni.Text;
  quPrincipal.FieldByName('tce_datafim').text     := meTceDtFim.Text;

  if meTceDtRes.Text <> '  /  /    ' then
  begin
    quPrincipal.FieldByName('tce_datares').text   := meTceDtRes.Text;
    if StrtoDate(meTceDtRes.Text) <= Date then
      quPrincipal.FieldbyName('tce_situacao').Text  := '7';
  end
  else
  begin
    if lblInclusao.Caption = '' then
    begin
      // Verifica TA's existentes
      with TQuery.Create(Nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Add('Select max(prg_cod) as Maximo from TceAditivo where tce_cod = ' + quPrincipal.FieldByName('tce_cod').Text);
        Open;

        quPrincipal.FieldbyName('tce_situacao').Text  := FieldByName('Maximo').AsString;
        if quPrincipal.FieldbyName('tce_situacao').Text = '' then
          quPrincipal.FieldbyName('tce_situacao').Text := '0';

        Close;
        Free;
      end;
    end
    else
      quPrincipal.FieldbyName('tce_situacao').Text := '0';
    quPrincipal.FieldByName('tce_datares').text    := '';
  end;

  if meTceDtRet.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_dataret').text   := meTceDtRet.Text
  else
    quPrincipal.FieldByName('tce_dataret').text   := '';
  if meTceDtDec.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_datadec').text   := meTceDtDec.Text
  else
    quPrincipal.FieldByName('tce_datadec').text   := '';
  if meTceDtAval.Text <> '  /  /    ' then
    quPrincipal.FieldByName('tce_avaliacao').text   := meTceDtAval.Text
  else
    quPrincipal.FieldByName('tce_avaliacao').text   := '';
  if meEnt1.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horarioini1').text := '01/01/1900 ' + meEnt1.Text
  else
    quPrincipal.FieldByName('tce_horarioini1').text := '';
  if meSai1.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horariofim1').text := '01/01/1900 ' + meSai1.Text
  else
    quPrincipal.FieldByName('tce_horariofim1').text := '';
  if meEnt2.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horarioini2').text := '01/01/1900 ' + meEnt2.Text
  else
    quPrincipal.FieldByName('tce_horarioini2').text := '';
  if meSai2.Text <> '  :  ' then
    quPrincipal.FieldByName('tce_horariofim2').text := '01/01/1900 ' + meSai2.Text
  else
    quPrincipal.FieldByName('tce_horariofim2').text := '';
  quPrincipal.FieldByName('tce_tipobolsa').text   := IntToStr(cbTipoBolsa.ItemIndex);
end;

procedure TFORTCE.BuscaPrimeiroUltimo;
begin
  inherited;
  with TQuery.Create(Nil) do
  begin
    DatabaseName := DATABASE_NAME;
    SQL.Clear;
    SQL.Add('select');
    SQL.Add('  max(tce_cod) as Maximo,');
    SQL.Add('  min(tce_cod) as Minimo');
    SQL.Add('from');
    SQL.Add('  Tce');
    Open;

    if FieldByName('Minimo').IsNull then
    begin
      PrimeiroRegistro := 0;
      UltimoRegistro   := 0;
    end
    else
    begin
      PrimeiroRegistro := FieldByName('Minimo').AsInteger;
      UltimoRegistro   := FieldByName('Maximo').AsInteger;
    end;

    Close;
    free;
  end;
end;

procedure TFORTCE.CarregaDados;
begin
  inherited;
  Digitou := False;
  Retorno := False;
  if not quPrincipal.FieldByName('tce_data').IsNull then
    meTceAbert.Text := quPrincipal.FieldByName('tce_data').Value;

  if not quPrincipal.FieldByName('tce_dataini').IsNull then
    meTceDtIni.Text := quPrincipal.FieldByName('tce_dataini').text;
  if not quPrincipal.FieldByName('tce_datafim').IsNull then
    meTceDtFim.Text := quPrincipal.FieldByName('tce_datafim').text;
  if not quPrincipal.FieldByName('tce_avaliacao').IsNull then
    meTceDtAval.Text := quPrincipal.FieldByName('tce_avaliacao').text;
  if not quPrincipal.FieldByName('tce_datares').IsNull then
    meTceDtRes.Text := quPrincipal.FieldByName('tce_datares').text;
  if not quPrincipal.FieldbyName('tce_dataret').IsNull then
    meTceDtRet.Text := quPrincipal.FieldbyName('tce_dataret').text;
  if not quPrincipal.FieldByName('tce_datadec').IsNull then
    meTceDtDec.Text := quPrincipal.FieldByName('tce_datadec').Text;

  if (not quPrincipal.FieldByName('tce_horarioini1').IsNull) then
    Hr1   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horarioini1').Value)
  else
    Hr1   := '';
  if (not quPrincipal.FieldByName('tce_horariofim1').IsNull) then
    Hr2   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horariofim1').Value)
  else
    Hr2   := '';
  if (not quPrincipal.FieldByName('tce_horarioini2').IsNull) then
    Hr3   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horarioini2').Value)
  else
    Hr3   := '';
  if (not quPrincipal.FieldByName('tce_horariofim2').IsNull) then
    Hr4   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horariofim2').Value)
  else
    Hr4   := '';
  if (not quPrincipal.FieldByName('tce_horsabini1').IsNull) then
    Hr5   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabini1').Value)
  else
    Hr5   := '';
  if (not quPrincipal.FieldByName('tce_horsabfim1').IsNull) then
    Hr6   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabfim1').Value)
  else
    Hr6   := '';
  if (not quPrincipal.FieldByName('tce_horsabini2').IsNull) then
    Hr7   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabini2').Value)
  else
    Hr7   := '';
  if (not quPrincipal.FieldByName('tce_horsabfim2').IsNull) then
    Hr8   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabfim2').Value)
  else
    Hr8   := '';

  CalcHora;

  if not quPrincipal.FieldByName('tce_tipocont').IsNull then
  begin
    cbTipoSelecao.ItemIndex := quPrincipal.FieldByName('tce_tipocont').AsInteger;
    if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
    begin
      Notebook1.PageIndex := 0;
    end
    else
    begin
      Notebook1.PageIndex := 1;
      Notebook2.PageIndex := 1;
    end;
  end;

  if not quPrincipal.FieldByName('tce_estenc').IsNull then
  begin
    iF quPrincipal.FieldByName('tce_estenc').AsInteger = 0 THEN
    begin
      with quEncVaga do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select E.*, T.Est_nome from Encaminhamento E, Estudante T where E.vag_cod = :vag_cod and E.est_cod = T.est_cod order by t.est_nome');
        ParamByName('vag_cod').Text := DBEdit3.Text;
        Open;
      end;
    end;

    cbEstEnc.ItemIndex  := quPrincipal.FieldByName('tce_estenc').AsInteger;
    Notebook2.PageIndex := quPrincipal.FieldByName('tce_estenc').AsInteger;
  end;

  if (not quPrincipal.FieldByName('tce_tipobolsa').IsNull) and
     (quPrincipal.FieldByName('tce_tipobolsa').Value <> '') then
    cbTipoBolsa.ItemIndex := quPrincipal.FieldByName('tce_tipobolsa').AsInteger;
end;

procedure TFORTCE.InicializaDados;
begin
  inherited;
  quPrincipal.fieldByName('tce_cod').Value := 0;
  meTceAbert.Text         := FormatDateTime('dd/mm/yyyy',Date);
  cbTipoSelecao.ItemIndex := 0;
  cbEstEnc.ItemIndex      := 0;
  Notebook1.PageIndex     := 0;
  Notebook2.PageIndex     := 0;
  quPrincipal.FieldByName('tce_situacao').Value := '0';
  quPrincipal.FieldByName('tce_seguro').Value   := '0';
  quPrincipal.FieldByName('tce_segunda').Value  := '1';
  quPrincipal.FieldByName('tce_terca').Value    := '1';
  quPrincipal.FieldByName('tce_quarta').Value   := '1';
  quPrincipal.FieldByName('tce_quinta').Value   := '1';
  quPrincipal.FieldByName('tce_sexta').Value    := '1';
  quPrincipal.FieldByName('tce_sabado').Value   := '0';


  cbTipoBolsa.ItemIndex   := 0;
  DBCheckBox1.Checked     := False;
  Digitou                 := False;
  Retorno                 := True;
  meTceAbert.SetFocus;
end;

procedure TFORTCE.quEncVagaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (not quEncVagaEva_resultado.IsNull) and
     (quEncVagaEva_resultado.Value <> '') then
    case quEncVagaEva_resultado.AsInteger of
      0: quEncVagaResultado.Value := 'Em Espera';
      1: quEncVagaResultado.Value := 'Reprovado';
      2: quEncVagaResultado.Value := 'Aprovado';
      3: quEncVagaResultado.Value := 'Desistiu';
    end;
end;

procedure TFORTCE.cbEstEncChange(Sender: TObject);
begin
  inherited;
  Notebook2.PageIndex := cbEstEnc.ItemIndex;
end;

procedure TFORTCE.cbTipoSelecaoChange(Sender: TObject);
begin
  inherited;
  case cbTipoSelecao.ItemIndex of
    0:
    begin
      Notebook1.PageIndex := 0;
    end;
    1:
    begin
      Notebook1.PageIndex := 1;
      if quPrincipal.State in [dsInsert, dsEdit] then
      begin
        quPrincipal.FieldByName('vag_cod').Text  := '';
        quPrincipal.FieldByName('vag_qtde').Text  := '';
        quPrincipal.FieldByName('vag_qtdepreenc').Text  := '';
      end;
      cbEstEnc.ItemIndex   := 1;
      Notebook2.PageIndex  := 1;
    end;
  end;
end;

procedure TFORTCE.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  lblInclusao.Caption := 'Inclus�o';
  DmDta.IncluirRegistro(quPrincipal);
  pgPrincipal.ActivePage := tbRegistro;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORTCE.DBEdit3DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;

  if FORVAG.F2Codigo <> '' then
  begin
    If DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert,dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTcevag_cod.Text         := FORVAG.F2Codigo;
      DmDta.quTcevag_qtde.value       := FORVAG.F2Qtde;
      DmDta.quTcevag_qtdepreenc.value := FORVAG.F2QtdePreenc;
      DmDta.quTceemp_cod.Value        := FORVAG.F2Emp;
      DmDta.quTceemp_nome.Text        := FORVAG.F2EmpNome;
      Hr1 := FORVAG.F2H1;
      Hr2 := FORVAG.F2H2;
      if FORVAG.F2H3 <> '' then
        Hr3 := FORVAG.F2H3;
      if FORVAG.F2H4 <> '' then
        Hr4 := FORVAG.F2H4;
      DmDta.quTcetce_bolsa.Value     := FORVAG.F2VagBolsa;
      if FORVAG.F2TipoBolsa = '1' then
        cbTipoBolsa.ItemIndex := 1
      else
        cbTipoBolsa.ItemIndex := 0;
      if VerificaVaga() then
        SelectNext(ActiveControl, True, True);
    end;
  end;
  FORVAG.Free;
end;

procedure TFORTCE.DBEdit2DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    If DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert,dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTceemp_cod.Text  := FOREMP.F2Codigo;
      DmDta.quTceemp_nome.Text := FOREMP.F2Nome;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREMP.Free;
end;

procedure TFORTCE.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit2.Text <> '') then
  begin
    If quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEemp_nome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(DBEdit2.Text));

      if DmDta.quTCEemp_nome.Text = '' then
      begin
        MSGERRO('Empresa inexistente. Selecione outra empresa!');
        DBEdit2.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;
    end;
  end
  else
  begin
    If quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEemp_nome.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit5DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    If DmDta.quTce.Active then
    begin
      if not (DmDta.quTce.State in [dsInsert,dsEdit]) then dmDta.quTce.Edit;
      DmDta.quTceest_cod.Text  := FOREST.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FOREST.Free;
end;

procedure TFORTCE.DBLookupComboBox1Click(Sender: TObject);
begin
  Salvou := True;
  inherited;


  if quPrincipal.State = dsInsert then
  begin
    if quEncVagaeva_resultado.Value <> '3' then
    begin
      DmDta.quTceEst_Nome.Text := quEncVagaest_nome.Text;

      // Busca situa�ao do perfil
      with DmDta.quEst do
      begin
        Close;
        ParamByName('est_cod').Value := DmDta.quTceEst_cod.Value;
        Open;

        {if not IsEmpty then
        begin
          if FieldByName('est_situacao').Value = 'S' then
            MSGAVISO('Estudante j� estagiando. Favor verificar antes de confirmar!');
        end;

        if not IsEmpty then
        begin
          if FieldByName('est_situacao').Value = 'S' then
          begin
            MSGERRO('Estudante j� estagiando!');
            DBLookupComboBox1.SetFocus;
            Salvou := False;
            Exit;
          end;
        end;}
      end;
    end
    else
    begin
      MSGAVISO('Estudante j� encaminhado. Favor verificar antes de confirmar!');
    end;
  end;
end;

procedure TFORTCE.btSalvarClick(Sender: TObject);
var Insere: Boolean;
    Ret: Boolean;

  procedure AtualizaVaga();
  begin
    with TQuery.Create(Nil) do
    begin
      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc + 1 where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      ExecSql;

      Free;
    end;
  end;

  procedure AtualizaEstEncaminhado();
  begin
    with TQuery.Create(Nil) do
    begin
      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;

      // Seta APROVADO no candidato
      Sql.Clear;
      Sql.Add('Update Encaminhamento set eva_resultado = ''2''');
      Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      Sql.Add('and Est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;

      // Seta REPROVADO nos outros candidatos (que j� nao foram aprovados);
      If DBEdit9.Field.value = DBEdit10.Field.value + 1 then
      begin
        Sql.Clear;
        Sql.Add('Update Encaminhamento set eva_resultado = ''1''');
        Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
        Sql.Add('and Est_cod <> ' + quPrincipal.FieldByname('est_cod').Text);
        Sql.Add('and eva_resultado not in (''2'',''3'')');
        ExecSql;
      end;


      Free;
    end;
  end;

  procedure AtualizaEstagiario(Situacao: String);
  begin
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Estudante set est_situacao = ''' + Situacao + ''' where est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      Free;
    end;
  end;

begin
  btEnter.SetFocus;
  Salvou := True;

  if meTceAbert.Text = '  /  /     ' then
  begin
    MSGERRO('Entre com a data de emiss�o do TCE!');
    meTceAbert.SetFocus;
    Salvou := False;
  end
  else if DBEdit2.Text = '' then
  begin
    MSGERRO('Entre com a empresa do TCE!');
    meTceAbert.SetFocus;
    Salvou := False;
  end
  else if quPRincipal.FieldByNAme('est_cod').IsNull then
  begin
    MSGERRO('Entre com o estudante do TCE!');

    if Notebook2.PageIndex = 0 then
      DbLookupComboBox1.SetFocus
    else
      DBEdit5.SetFocus;

    Salvou := False;
  end
  else if meEnt1.Text = '  :  ' then
  begin
    MSGERRO('Entre com a entrada 1 do TCE!');
    meEnt1.SetFocus;
    Salvou := False;
  end
  else if meSai1.Text = '  :  ' then
  begin
    MSGERRO('Entre com a sa�da 1 do TCE!');
    meSai1.SetFocus;
    Salvou := False;
  end
  else if meTceDtIni.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data de in�cio do TCE!');
    meTceDtIni.SetFocus;
    Salvou := False;
  end
  else if meTceDtFim.Text = '  /  /    ' then
  begin
    MSGERRO('Entre com a data de t�rmino do TCE!');
    meTceDtFim.SetFocus;
    Salvou := False;
  end
  else if (cbTipoSelecao.ItemIndex = 0) and (DBEdit3.Text = '') then
  begin
    MSGERRO('Entre com a vaga correspondente ao TCE!');
    DBEdit3.SetFocus;
    Salvou := False;
  end
  else if (DBEdit8.Text = '') then
  begin
    MSGERRO('Entre com o valor da bolsa do TCE!');
    DBEdit8.SetFocus;
    Salvou := False;
  end
  else
  begin
    Ret := Retorno;
    Insere := QuPrincipal.State = dsInsert;

    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);

        cbTipoPesquisa.ItemIndex := 0;

        if Insere then
        begin
          if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
            Atualizavaga();

          if (quPrincipal.FieldByName('tce_estenc').Value = '0') then
            AtualizaEstEncaminhado();

          AtualizaEstagiario('S');
        end;
        if Ret then
          DmDta.AtualizaPgtoEstagiario(quPrincipal.FieldByName('est_cod').AsInteger,
                                       quPrincipal.FieldByName('tce_cod').AsInteger);

        if (not quPrincipal.FieldByName('tce_datares').IsNull) and
           (quPrincipal.FieldByName('tce_datares').AsDateTime <= Date) then
            AtualizaEstagiario('X');
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;

    if MudaAba then
    begin
      estadoNavegando;
      pgPrincipal.ActivePage := tbConsulta;
    end;
  end;
end;

procedure TFORTCE.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
      Exit;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
    F2Nome   := quPrincipal.FieldByName(nomeNome).AsString;
    Close;
  end;

end;

procedure TFORTCE.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edi��o cancelada!');
      AllowChange := False;
      Exit;
    end;

    EstadoEditando;
    CarregaDados;
  end
  else
  begin
    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      MSGERRO('Salve o registro primeiramente!');
      AllowChange := False;
    end
    else
      EstadoNavegando();

    cbTipoPesquisa.ItemIndex := 0;
    edParametro.Clear;
    if edParametro.CanFocus then edParametro.SetFocus;
  end;
end;

function TFORTCE.BuscaPerfil: Boolean;
begin
  Result := True;
  // Busca situa�ao do perfil
  with DmDta.quEst do
  begin
    Close;
    ParamByName('est_cod').Value := DmDta.quTceEst_cod.Value;
    Open;

    {if not IsEmpty then
    begin
      if FieldByName('est_situacao').Value = 'S' then
        MSGERRO('Estudante j� estagiando. Favor verificar antes de confirmar!');
    end;}
  end;
end;

function TFORTCE.VerificaVaga: Boolean;
begin
  Result := False;

  if quPrincipal.State = dsInsert then
  begin
    if DmDta.quTcevag_qtde.Value = DmDta.quTceVag_qtdepreenc.Value then
    begin
      MSGERRO('Vaga j� preenchida. Selecione outra vaga!');
      DBEdit3.SetFocus;
      Exit;
    end
    else if DmDta.quTcevag_cancelada.Value = '1' then
    begin
      MSGERRO('Vaga cancelada. Selecione outra vaga!');
      DBEdit3.SetFocus;
      Exit;
    end
  end;

  Digitou := True;
  calcHora();
  with quEncVaga do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select E.*, T.est_nome from Encaminhamento E, Estudante T where e.vag_cod = :vag_cod and e.eva_resultado <> 2 and E.est_Cod = t.est_cod order by t.est_nome');
    ParamByName('vag_cod').Text := DBEdit3.Text;
    Open;
  end;

  Digitou := False;
  Result := True;
end;

procedure TFORTCE.cbTipoPesquisaChange(Sender: TObject);
begin
  inherited;
  edPar.Text      := '';
  edEmpNome.Text  := '';
  edEmpCod.Text   := '';
  edInstCod.Text  := '';
  edInstNome.Text := '';
  edCurCod.Text   := '';
  edCurNome.Text  := '';
  meData1.Clear;
  meData2.Clear;

  case cbTipoPesquisa.ItemIndex of
    0:
    begin
      Notebook3.PageIndex := 0;
      edPar.SetFocus;
    end;
    1:
    begin
      Notebook3.PageIndex := 1;
      edEmpCod.SetFocus;
    end;
    2:
    begin
      Notebook3.PageIndex := 2;
      edEstCod.SetFocus;
    end;
    3:
    begin
      Notebook3.PageIndex := 3;
      edInstCod.SetFocus;
    end;
    4:
    begin
      Notebook3.PageIndex := 5;
      edCurCod.SetFocus;
    end;
    5,6,7,8:
    begin
      Notebook3.PageIndex := 4;
      meData1.SetFocus;
    end;
  end;
end;

procedure TFORTCE.edParExit(Sender: TObject);
var
  argumento, ordem: String;
  data1, data2: String;

begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';
  if edPar.Text <> '' then
    argumento := argumento + ' and t.tce_cod = '+edPar.Text;

  // situa��o
  case rgSituacao.ItemIndex of
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
    begin
      argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        // data inicial e final
        data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
        data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                            StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
        argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
      end;
    end;
  end;

  DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                 'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  quPrincipal.Last;
  estadoNavegando();
end;

procedure TFORTCE.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  AbreFechaTabelas(true);
  with quPrincipal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select T.*, E.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome');
    Sql.Add('from Tce T, Vaga V, Estudante E, Empresa m ');
    Sql.Add('where T.vag_cod *= V.vag_cod and T.est_cod = E.est_cod and T.emp_cod = m.emp_cod order by tce_cod');
    Open;
    Last;
  end;
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 0;
  edPar.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFORTCE.btExcluirClick(Sender: TObject);

  procedure AtualizaDetails();
  begin
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Delete from TceAditivo where tce_cod = ' + quPrincipal.FieldByname('tce_cod').Text);
      ExecSql;

      Sql.Clear;
      Sql.Add('Delete from TceAlteracao where tce_cod = ' + quPrincipal.FieldByname('tce_cod').Text);
      ExecSql;

      free;
    end;
  end;

  procedure AtualizaVaga();
  begin
    with TQuery.Create(Nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Vaga set vag_qtdepreenc = vag_qtdepreenc - 1 where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      ExecSql;

      Free;
    end;
  end;

  procedure AtualizaEstEncaminhado();
  begin
    with TQuery.Create(Nil) do
    begin
      // Atualiza o n�mero de vagas preenchidas
      DatabaseName := DATABASE_NAME;

      // seta Reprovado no candidato
      Sql.Clear;
      Sql.Add('Update Encaminhamento set eva_resultado = ''0''');
      Sql.Add('where vag_cod = ' + quPrincipal.FieldByname('vag_cod').Text);
      Sql.Add('and Est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      Free;
    end;
  end;

  procedure AtualizaPerfil();
  begin
    with TQuery.Create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Update Estudante set est_situacao = ''N'' where est_cod = ' + quPrincipal.FieldByname('est_cod').Text);
      ExecSql;
      free;
    end;
  end;

begin
  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      btEnter.SetFocus;
      AtualizaDetails();
      AtualizaPErfil();
      if (quPrincipal.FieldByName('tce_tipocont').Value = '0') then
        Atualizavaga();
      if (quPrincipal.FieldByName('tce_estenc').Value = '0') then
        AtualizaEstEncaminhado();

      DmDta.ExcluirRegistro(quPrincipal);
      estadoNavegando;

      cbTipoPesquisa.ItemIndex := 0;
      Notebook1.PageIndex      := 0;
      edPar.Clear;
      if edPar.CanFocus then edPar.SetFocus;

    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORTCE.btCancelarClick(Sender: TObject);
begin
  inherited;
  cbTipoPesquisa.ItemIndex := 0;
  Notebook3.PageIndex := 0;
  edPar.Clear;
  edPar.Text := quPrincipal.FieldByName('tce_cod').Text;
  if edPar.CanFocus then edPar.SetFocus;
end;

procedure TFORTCE.edEmpCodExit(Sender: TObject);
var argumento, ordem: String;
    data1, data2: String;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    argumento := argumento + ' and t.emp_cod = '+edEmpCod.Text;
  end
  else
    edEmpNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
    begin
      argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        // data inicial e final
        data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
        data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                            StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
        argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
      end;
    end;
  end;

  DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                 'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  estadoNavegando();
end;

procedure TFORTCE.edEmpCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;

  FOREMP.Free;
end;

procedure TFORTCE.LimpaCampos;
begin
  inherited;
  meTceAbert.Clear;
  meTceDtIni.Clear;
  meTceDtFim.Clear;
  meTceDtRes.Clear;
  meTceDtRet.Clear;
  meTceDtDec.Clear;
  meEnt1.Clear;
  meSai1.Clear;
  meEnt2.Clear;
  meSai2.Clear;
  dtc := '';
  Hr1 := ''; Hr2 := ''; Hr3 := ''; Hr4 := '';
  Hr5 := ''; Hr6 := ''; Hr7 := ''; Hr8 := '';
end;

procedure TForTce.calchora();
var
  hor :array [1..20] of string;
  h1,h2,h3,h4,h5,h6,h7,h8: TDateTime;
  totDias: Integer;
  tot1: Double;
  DiaInicial, DiaFinal: String;

begin

  If (hr1 = '') and (hr2 = '') then Exit;

  try
    h1:= strtoTime(hr1)*24;
    h2:= strtoTime(hr2)*24;

    if hr3 <> '' then
      h3 := strtoTime(hr3)*24
    else
      h3 := 0;

    if hr4 <> '' then
      h4 := strtoTime(hr4)*24
    else
      h4 := 0;

    if hr5 <> '' then
      h5 := strtoTime(hr5)*24
    else
      h5 := 0;

    if hr6 <> '' then
      h6 := strtoTime(hr6)*24
    else
      h6 := 0;

    if hr7 <> '' then
      h7 := strtoTime(hr7)*24
    else
      h7 := 0;

    if hr8 <> '' then
      h8 := strtoTime(hr8)*24
    else
      h8 := 0;

    if h2 < h1 then
      h2 := 24 + h2;
    if h4 < h3 then
      h4 := 24 + h4;
    if h6 < h5 then
      h6 := 24 + h6;
    if h8 < h7 then
      h8 := 24 + h8;

    hor[1]:=hr1[1];
    hor[2]:=hr1[2];
    hor[3]:= ':';
    hor[4]:=hr1[4];
    hor[5]:=hr1[5];
    //
    hor[6]:=hr2[1];
    hor[7]:=hr2[2];
    hor[8]:= ':';
    hor[9]:=hr2[4];
    hor[10]:=hr2[5];
    //
    if hr3 <> '' then
    begin
      hor[11]:=hr3[1];
      hor[12]:=hr3[2];
      hor[13]:= ':';
      hor[14]:=hr3[4];
      hor[15]:=hr3[5];
    end;

    //
    if hr4 <> '' then
    begin
      hor[16]:=hr4[1];
      hor[17]:=hr4[2];
      hor[18]:= ':' ;
      hor[19]:=hr4[4];
      hor[20]:=hr4[5];
    end;

    // Verifica os dias da semana
    TotDias := 30; // valor inicial
    TotDias := TotDias - 8; // desconta domingo e s�bado
    If Not DBCheckBox2.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox3.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox4.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox5.Checked then
      TotDias := TotDias - 4;
    If Not DBCheckBox6.Checked then
      TotDias := TotDias - 4;

    // dia inicial e final
    If DBCheckBox2.Checked then
    begin
      DiaInicial := 'segunda';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else If DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else If DBCheckbox6.Checked then
        DiaFinal := 'ter�a'
      else
        DiaFinal := 'segunda'
    end
    else If DBCheckBox3.Checked then
    begin
      DiaInicial := 'ter�a';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else If DBCheckbox4.Checked then
        DiaFinal := 'quarta'
      else
        DiaFinal := 'ter�a';
    end
    else If DBCheckBox4.Checked then
    begin
      DiaInicial := 'quarta';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else If DBCheckbox5.Checked then
        DiaFinal := 'quinta'
      else
        DiaFinal := 'quarta';
    end
    else If DBCheckBox5.Checked then
    begin
      DiaInicial := 'quinta';
      If DBCheckbox6.Checked then
        DiaFinal := 'sexta'
      else
        DiaFinal := 'quinta';
    end
    else
    begin
      DiaInicial := 'sexta';
      DiaFinal   := 'sexta';
    end;

    dtc := hor[1]+hor[2]+hor[3]+hor[4]+hor[5]+' �s '+hor[6]+hor[7]+hor[8]+hor[9]+hor[10];
    if (hr3 <> '') or (hr4 <> '') then
      dtc := dtc + ' e das '+hor[11]+hor[12]+hor[13]+hor[14]+hor[15]+' �s '+hor[16]+hor[17]+hor[18]+hor[19]+hor[20];
    // hor�rio de s�bado
    if (hr5 <> '') or (hr6 <> '') then
    begin
      dtc := dtc + ' de ' + diaInicial + ' � ' + diaFinal +  ', e das ' + hr5 + ' �s ' + hr6;
      if (hr7 <> '') or (hr8 <> '') then
        dtc := dtc + ' e das '+ hr7 + ' �s ' + hr8;
      dtc := dtc + ' aos s�bados';
    end;

    tot1 := ((h2 - h1)+(h4 - h3))*totDias + ((h6-h5)+(h8-h7))*4;
    etotal := FloatToStr(tot1);

    If quPrincipal.active then
    begin
      if quPrincipal.State = dsInsert then
      begin
        If Digitou then
          quPrincipal.FieldByName('tce_tothoras').Value := Tot1;
        eTotal := quPrincipal.FieldByName('tce_tothoras').Text;
      end
      else
      begin
        if Digitou then
        begin
          if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
          quPrincipal.FieldByName('tce_tothoras').Value := Tot1;
        end;
        eTotal := quPrincipal.FieldByName('tce_tothoras').Text;
      end;
    end;

    meEnt1.Text := hr1;
    meSai1.Text := hr2;
    meEnt2.Text := hr3;
    meSai2.Text := hr4;
    Digitou     := False;
  except
  end;
end;

procedure TFORTCE.btImprimirClick(Sender: TObject);
var
  var1: variant;
  CRM, CRO, CRJ, CREF, Coren, CPP, Conselho, Inst, Emp: String;
  datac :string[37];
  exte,datana: string ;
  CodEsc,endesc,baiesc,cidadeEsc,cgcesc,caresc,telesc,cepesc, nomeesc,RespEsc : string;
  inscemp, faxemp, estadoemp, endemp,baiemp,cidadeEmp,telemp,cepemp,cgcemp,caremp, respemp, nomeemp :string;
  NumMatEsc,endest,cpfEst,baiest,cidadeEst,estadoEst,telest,cepest,rgest,ctpest,curcod,curest,nomeEst,turEst:string;
  SuperEmp, AreaEst, OrientadorEst: string;
  at: Array [1..5] of string;
  ce,ces,contador:integer;
  DireEsc, CoordEsc, SuperEst, CargoSuperEst, FormSuperEst: String;
  uce,dce : string;
  num: integer;
  uni,dez,cen: string;
  centa,unida,dezen,cente, perAtu, tipobolsa:string;
  bolsa: Double;

  procedure completadados;
  var i: Integer;
  begin
    with qContrato do
    begin
      // Busca a dados da vaga
      if quPrincipal.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);
        Open;

        if not IsEmpty then
        begin
        first;

          for i := 1 to 5 do
          begin
            if Eof then break;
            at[i] := FieldByName('ati_nome').AsString;
            Next;
          end;
        end;
      end;

      Emp := DmDta.quTceemp_cod.text;
      bolsa := DBEdit8.field.Value;
      tipoBolsa := cbTipoBolsa.Text;

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select e.*, c.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      nomeEst := fieldByName('est_nome').AsString;
      datana := fieldbyname('est_dtnasc').asstring;
      endest := fieldbyname('est_endereco').asstring;
      If fieldbyname('est_numend').Text <> '' then
        endEst := endEst + ' ' + fieldbyname('est_numend').Text;
      If fieldbyname('est_apto').Text <> '' then
        endEst := endEst + ' - APTO. ' + fieldbyname('est_apto').Text;
      If fieldbyname('est_bloco').Text <> '' then
        endEst := endEst + ' - BLOCO ' + fieldbyname('est_bloco').Text;

      baiest := fieldbyname('est_bairro').asstring;
      cidadeEst := fieldByName('est_cidade').asstring;
      estadoEst := fieldByName('est_estado').asstring;
      telest := fieldbyname('est_fone1').asstring;
      cepest := fieldbyname('est_cep').asstring;
      rgest  := fieldbyname('est_rg').asstring;
      cpfest := fieldbyname('est_cpf').asstring;
      cpfEst := Copy(cpfEst, 1, 3) + '.' + Copy(cpfEst, 4, 3) + '.' + Copy(cpfEst, 7, 3) + '-' + Copy(cpfEst, 10, 2);
      ctpest := fieldbyname('est_ctpsnum').asstring + ' S�rie:' + fieldbyname('est_ctpsserie').asstring;
      curCod  := fieldByName('cur_cod').asstring;
      curest  := fieldbyname('cur_nome').asstring;
      Inst    := fieldByName('inst_cod').asstring;
      peratu  := fieldByName('pcu_anoatual').AsString;
      if fieldByName('pcu_peratual').AsString = '0' then
        perAtu := perAtu + '� ano'
      else
        perAtu := perAtu + '� per�odo';

      case fieldByName('pcu_turno').AsInteger of
        0: turEst := 'manh�';
        1: turEst := 'tarde';
        2: turEst := 'noite';
      end;

      // busca dados da escola
      close;
      sql.clear;
      sql.add('select i.*, f.ifu_nome inst_nomerespcomp, f.ifu_cargo from Instituicao i left join Instfuncionario f on i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod where i.inst_cod = ' + Inst);
      open;
      CodEsc    := fieldbyname('inst_cod').asstring;
      nomeesc   := fieldbyname('inst_nome').asstring;
      endesc    := fieldbyname('inst_endereco').asstring;
      If fieldbyname('inst_numend').Text <> '' then
        endesc  := endesc + ' ' + fieldbyname('inst_numend').Text;
      If fieldbyname('inst_sala').Text <> '' then
        endesc  := endesc + ' - SALA ' + fieldbyname('inst_sala').Text;
      baiesc    := fieldbyname('inst_bairro').asstring;
      cidadeEsc := fieldByName('inst_cidade').asstring;
      cgcesc    := fieldbyname('inst_cnpj').asstring;
      caresc    := fieldbyname('ifu_cargo').asstring;;
      telesc    := fieldbyname('inst_telefone').asstring;
      cepesc    := fieldbyname('inst_cep').asstring;
      respEsc   := fieldbyname('inst_nomerespcomp').asstring;

      // Coordenador de curso
      If (CodEsc = '261') or (CodEsc = '581') or
         (CodEsc = '186') or (CodEsc = '137') then
      begin
        close;
        sql.clear;
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + CodEsc + ' and I.cur_cod = ' + CurCod);
        open;
        CoordEsc  := fieldbyname('curi_nomecoord').asstring;
        If CodEsc <> '137' then
          RespEsc := CoordEsc
        else
        begin
          // verifica a �rea do curso
          close;
          sql.clear;
          sql.add('select cur_area from Curso where cur_cod = ' + CurCod);
          Open;

          If FieldByName('cur_area').Text = 'Biol�gicas' then
          begin
            // Humanas -> busca o funcion�rio 2
            close;
            sql.clear;
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 2');
            open;
            RespEsc := FieldByName('ifu_nome').Text;
          end
          else
          begin
            // N�o-Humanas -> busca o funcion�rio 1
            close;
            sql.clear;
            sql.add('select * from Instfuncionario where inst_cod = ' + Inst + ' and func_cod = 1');
            open;
            RespEsc := FieldByName('ifu_nome').Text;
          end;
        end;
      end
      else If (CodEsc = '221') or (CurCod = '14') or (CurCod = '15') then
      begin
        close;
        sql.clear;
        sql.add('select ic.ico_nome curi_nomecoord from InstCurso I, InstCoordenador IC where i.inst_cod = ic.inst_cod and i.curi_coord = ic.coord_cod and i.inst_cod = ' + CodEsc + ' and i.cur_cod = ' + CurCod);
        open;
        CoordEsc  := fieldbyname('curi_nomecoord').asstring;
        close;
        sql.clear;
        sql.add('select * from InstFuncionario where inst_cod = ' + CodEsc + ' and func_cod = 1');
        open;
        RespEsc := fieldbyname('ifu_nome').asstring;
      end
      else If (CodEsc = '50') then // PUC exige diretor de curso
      begin
        close;
        sql.clear;
        sql.add('select id.idr_nome curi_nomediretor from InstCurso I, InstDiretor ID where i.inst_cod = id.dire_cod and i.curi_diretor = id.dire_cod and i.inst_cod = ' + CodEsc + ' and i.cur_cod = ' + CurCod);
        open;
        DireEsc  := fieldbyname('curi_nomediretor').asstring;
      end;


      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e left join Empfuncionario f on e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod where e.emp_cod = ' + Emp);
      open;
      nomeemp   := DmDta.quTceemp_nome.Text;
      endemp    := fieldbyname('emp_endereco').asstring;
      If fieldbyname('emp_numend').Text <> '' then
        endemp  := endemp + ' ' + fieldbyname('emp_numend').Text;
      If fieldbyname('emp_cjto').Text <> '' then
        endemp  := endemp + ' - CJ. ' + fieldbyname('emp_cjto').Text;
      baiemp    := fieldbyname('emp_bairro').asstring;
      cidadeEmp := fieldByName('emp_cidade').asstring;
      telemp    := fieldbyname('emp_telefone').asstring;
      cepemp    := fieldbyname('emp_cep').asstring;
      cgcemp    := fieldbyname('emp_cnpj').asstring;
      respemp   := fieldByName('efu_nome').Asstring;
      estadoemp := fieldByName('emp_estado').Asstring;
      caremp    := fieldbyname('efu_cargo').asstring;
      inscemp   := fieldbyname('Emp_inscest').Asstring;
      faxemp    := fieldbyname('Emp_fax').AsString;
    end;
  end;

  procedure dtcompleta(Dias: Boolean);
  var
    dt,d,m,a :string;
    da :array[1..8] of string;
    me :array[1..12] of string;
  begin
    me[1]  :='Janeiro';
    me[2]  :='Fevereiro';
    me[3]  :='Mar�o';
    me[4]  :='Abril';
    me[5]  :='Maio';
    me[6]  :='Junho';
    me[7]  :='Julho';
    me[8]  :='Agosto';
    me[9]  :='Setembro';
    me[10] :='Outubro';
    me[11] :='Novembro';
    me[12] :='Dezembro';
    If CodEsc <> '200' then
      dt := meTceAbert.Text
    else
      dt := FormatDateTime('dd/mm/yyyy', StrToDate(meTceDtIni.Text) - 2);
    da[1] :=dt[1];
    da[2] :=dt[2];
    da[3] :=dt[4];
    da[4] :=dt[5];
    da[5] :=dt[7];
    da[6] :=dt[8];
    da[7] :=dt[9];
    da[8] :=dt[10];
    d:= da[1]+da[2];
    m:= da[3]+da[4];
    a:= da[5]+ da[6]+da[7]+da[8];
    if Dias then
      datac := ''+d+' dia(s) do m�s de '+me[strtoint(m)]+' de '+a+''
    else
      datac := ''+d+' de '+me[strtoint(m)]+' de '+a+''
  end;

  procedure ImprimeGama;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
  begin
    ValString := FloatToStr(bolsa);
    DiasSemana := '111110';

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'Contrato_gama.doc');

    Var1.CenterPara;
    Var1.font('arial',12);
    Var1.Bold;
    var1.Insert('TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+#13);

    Var1.JustifyPara;

    Var1.font('arial',12);
    Var1.Insert(#9 + 'Termo de Compromisso de Est�gio de Complementa��o Educacional, sem v�nculo empregat�cio, ');
    Var1.Insert('nos termos da Lei n� 6.494, de 07/12/77, regulamentada pelo Decreto n� 87.497, de 18/08/82 e Decreto n� 2.080, de 26/11/96, entre si fazem de um lado.');

    Var1.Insert(#13+#13);

    // empresa
    Var1.Insert(nomeEmp + ', ');
    Var1.Insert(endEmp + ', ');
    Var1.Insert(baiEmp + ', ');
    Var1.Insert(CidadeEmp + '/');
    Var1.Insert(EstadoEmp + ', ');
    Var1.Insert(Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3) + ', ');
    Var1.Insert('(' + Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4) + ', ');
    Var1.Insert('(' + Copy(faxemp,1,2)+') '+Copy(faxemp,3,4)+'-'+Copy(faxemp,7,4) + ', ');
    Var1.Insert(inscemp + ', ');
    Var1.Insert(Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2) + ', ');
    Var1.Insert('doravante denominada ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE; ');
    Var1.Bold;
    Var1.Insert('Neste ato representado pelo ');
    Var1.Bold;
    Var1.Insert('AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('CETEFE - CENTRO DE TREINAMENTO E FORMA��O DO ESTUDANTE, e do outro, o (a) aluno (a) ');

    // estudante
    Var1.Insert(nomeEst + ', ');
    Var1.Insert('portador da C�dula de Identidade ' + rgEst + ', ');
    //Var1.Insert('expedida por ' + + ', ');
    Var1.Insert('e do CPF ' + cpfEst + ', ');
    Var1.Insert('regularmente matriculado(a) no ' + perAtu + ', ');
    Var1.Insert(curEst + ', ');
    Var1.Insert(turEst + ', da ');
    Var1.Bold;
    Var1.Insert('SOCIEDADE UNIVERSIT�RIA GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('mantenedora da ');
    Var1.Bold;
    Var1.Insert('UNIVERSIDADE GAMA FILHO, ');
    Var1.Bold;
    Var1.Insert('inscrita no CNPJ sob o n� 33.809.609/0001-65, ');
    Var1.Insert('Inscri��o Municipal n� 00.904.309, acordam e estabelecem ');
    Var1.Insert('entre si as cl�usulas que reger�o este Termo de Compromisso de Est�gio.');

    // Cl�usulas
    Var1.Insert(#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA PRIMEIRA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('acima mencionado(a) por meio deste instrumento e nos termos da Lei n� 6.494, de 07/12/77, ');
    Var1.Insert('regulamentada pelo Decreto n.� 87.497, de 18/08/82, � concedido um est�gio de complementa��o educacional na �rea de ensino de gradua��o.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA SEGUNDA:'+#13);
    Var1.Bold;
    Var1.Insert('O(A) ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('ter� a oportunidade de receber nas depend�ncias da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('treinamento pr�tico e aperfei�oamento t�cnico-cultural, durante o hor�rio de ' + dtc + ', ');
    Var1.Insert('com vig�ncia de ' + meTceDtIni.Text+' at� '+meTceDtFim.text+'. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA TERCEIRA:'+#13);
    Var1.Insert('O est�gio n�o cria v�nculo empregat�cio de qualquer natureza, e o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('poder� receber da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('durante o per�odo de est�gio uma bolsa, ou outra forma de contrapresta��o que ');
    Var1.Insert('venha a ser acordada, ressalvado o que dispuser a legisla��o previdenci�ria, conforme art. 4� da Lei n� 6.494/77.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA QUARTA:'+#13);
    Var1.Bold;
    Var1.Insert('O AGENTE DE INTEGRA��O ');
    Var1.Bold;
    Var1.Insert('providenciar� seguro para cobertura de acidentes pessoais em favor do(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('durante o per�odo que o aluno(a) estiver nas suas depend�ncias, informando o nome da Companhia Seguradora ');
    Var1.Insert('UNIBANCO AIG SEGUROS S/A. e o n�mero da ap�lice 00000009, ');
    Var1.Insert('conforme art. 8� do Decreto n� 87.497/82, com nova reda��o dada pelo Decreto n� 2.080, de 26/11/96.'+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA QUINTA:'+#13);
    Var1.Insert('A jornada de atividade de est�gio a ser cumprida pelo(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('dever� compatibilizar-se com o hor�rio escolar e com o hor�rio da ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Par�grafo �nico: ');
    Var1.Underline;
    Var1.Italic;
    Var1.Insert('Nos per�odos de f�rias escolares, a jornada de est�gio ser� estabelecida de comum acordo entre o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('e a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('sempre com a interveni�ncia ');
    Var1.Bold;
    Var1.Insert('INSTITUI��O DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante Termo Aditivo. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA SEXTA:'+#13);
    Var1.Bold;
    Var1.Insert('O ESTAGI�RIO(A) ');
    Var1.Bold;
    Var1.Insert('obrigar�, mediante TCE - Termo de Compromisso de Est�gio, a cumprir ');
    Var1.Insert('as condi��es fixadas para o est�gio, bem como as normas de trabalho estabelecidas pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA S�TIMA:'+#13);
    Var1.Insert('Constituem motivos para o cessa��o autom�tica da vig�ncia do presente Termo de Compromisso de Est�gio, ');
    Var1.Insert('a conclus�o, o abandono do curso ou trancamento da matr�cula, bem como o n�o cumprimento das cl�usulas do TCE. '+#13+#13+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA OITAVA:'+#13);
    Var1.Insert('O est�gio objeto deste Termo de Compromisso, poder�, a qualquer momento, ser dado por conclu�do, tanto para o(a) ');
    Var1.Bold;
    Var1.Insert('ESTAGI�RIO(A), ');
    Var1.Bold;
    Var1.Insert('para a ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE ');
    Var1.Bold;
    Var1.Insert('e pela ');
    Var1.Bold;
    Var1.Insert('INSTITUI��O DE ENSINO, ');
    Var1.Bold;
    Var1.Insert('mediante den�ncia expressa de uma das partes � outra. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA NONA:'+#13);
    Var1.Bold;
    Var1.Insert('OS(AS) ESTAGI�RIOS(AS) ');
    Var1.Bold;
    Var1.Insert('ser�o selecionados pela ');
    Var1.Bold;
    Var1.Insert('UNIDADE CONCEDENTE, ');
    Var1.Bold;
    Var1.Insert('de acordo com os par�metros por ela estabelecidos, ');
    Var1.Insert('na �rea de interesse e aproveitados em atividades relacionadas com os respectivos cursos.' +#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA D�CIMA:'+#13);
    Var1.Insert('O presente Termo de Compromisso de Est�gio entrar� em vigor na data de sua assinatura, por tempo determinado, ');
    Var1.Insert('conforme cl�usula segunda, podendo ser alterado atrav�s de  Termos Aditivos, bem como rescindido, ');
    Var1.Insert('conforme estabelecido na  cl�usula oitava. '+#13+#13);
    Var1.Underline;
    Var1.Bold;
    Var1.Insert('CL�USULA D�CIMA PRIMEIRA:'+#13);
    Var1.Insert('Fica eleito o Foro da Cidade do Rio de Janeiro para dirimir quaisquer ');
    Var1.Insert('d�vidas oriundas do presente Termo de Compromisso de Est�gio.'+#13+#13);

    Var1.Insert(#9 + 'E por estarem as partes justas e acordadas, assinam o presente Termo ');
    Var1.Insert('de Compromisso de Est�gio em 03 (tr�s) vias de igual teor e forma, na presen�a de duas testemunhas abaixo. '+#13+#13);

    Var1.RightPara;
    dtCompleta(false);
    Var1.Insert('Rio de Janeiro, ' + dataC + '. ');

    Var1.AppShow;
  end;

  procedure ImprimeUTFPR;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
  begin
    ValString := FloatToStr(bolsa);
    DiasSemana := '111110';

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'Contrato_2.doc');

    Var1.CenterPara;
    var1.Insert('TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+'E ACORDO DE COOPERA��O');
    var1.Insert(#13+#13);
    Var1.JustifyPara;
    var1.Insert('TCE N�   '+DmDta.quTceTCE_COD.Text);
    var1.Insert(#13+#13+#13);
    var1.Insert(' Ao(s) '+datac+', na cidade de Curitiba, Paran�, a INSTITUI��O DE ');
    var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, atrav�s de seus repre');
    var1.Insert('sentantes celebram entre si o ACORDO DE COOPERA��O que ');
    Var1.Insert('vigorar� no per�odo entre ' + FormatDateTime('dd/mm/yyyy', StrToDate(meTceDtIni.Text) - 2));
    Var1.Insert(' e ' + meTceDtFim.Text + ', podendo ser prorrogado atrav�s de termo aditivo, bem como denunciado a ');
    Var1.Insert('qualquer momento entre as partes, mediante comunicado por escrito e 30 (trinta) dias antecedentes, ');
    Var1.Insert('independendo de qualquer notifica��o ou interpela��o judicial. O presente ACORDO DE COOPERA��O ');
    var1.Insert('tem por objetivo formalizar  as condi��es b�sicas para a realiza��o de Est�gio do estudante da Institui��o ');
    var1.Insert('de Ensino junto � Unidade Concedente.');
    var1.Insert(#13);
    var1.Insert(#13+'INSTITUI��O DE ENSINO');
    var1.Insert(#13+'Raz�o Social: '+nomeEsc);
    var1.Insert(#13+'Endere�o: '+endesc);
    var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
    var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+'.'+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcesc,13,2));
    If CodEsc <> '331' then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: '+caresc);
      If (CurCod = '14') or (CurCod = '15') then
        Var1.Insert(#13+'Coordenador do Curso: Dr(a). '+CoordEsc);
    end
    else
    begin
      var1.Insert(#13+'Representada por: ');
      var1.Insert(#13+'Cargo: COORDENADOR(A) DE CURSO');
    end;
    // verifica o c�digo da escola, se n�o � UEM
    If CodEsc = '221' then
      var1.Insert(#13+'Orientador: '+OrientadorEst);

    var1.Insert(#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Raz�o Social: '+ nomeemp);
    var1.Insert(#13+'Endere�o:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: '+caremp);
    If SuperEst <> '' then
    begin
      If (CurCod = '14') or (curcod = '15') then
        var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
      else
        var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);
    end;
    If FormSuperEst <> '' then
      var1.Insert(#13+'Forma��o: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'N� do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'N� do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'N� do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'N� do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'N� do C.R.O.: '+CRO);
    If CodEsc = '221' then
      var1.Insert(#13+'Supervisor: '+SuperEmp);

    var1.Insert(#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUI��O DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    If CodEsc = '331' then
      Var1.Insert(#13+'N�mero de Matr�cula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endere�o: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Per�odo/Ano: '+peratu);

    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);

    //// come�a aqui as cl�usulas

    var1.Insert('CL�USULA 1� - Caber� ao CETEFE, como Agente de Integra��o: ');
    var1.Insert(#13+#13);
    var1.Insert('I) Celebrar e manter Conv�nio de Coopera��o com as Unidades Concedentes;'+#13);
    var1.Insert('II) Cadastrar, convocar e selecionar os estudantes, encaminhando-os �s Unidades Concedentes, de acordo com a necessidade da mesma;'+#13);
    var1.Insert('III) Captar oportunidade de Est�gio junto �s Unidades Concedentes, compatibilizando as atividades de Est�gio e o hor�rio de est�gio com o curso do Estagi�rio;'+#13);
    var1.Insert('IV) Desenvolver atividades de treinamento dos estagi�rios, bem como oferecer cursos, palestras, semin�rios e outras atividades que venham a ');
    var1.Insert('complementar o aprendizado e facilitar o desenvolvimento do Programa de Est�gio;'+#13);
    var1.Insert('V) Realizar intera��o entre as Unidades Concedentes e a Institui��o de Ensino, visando � assinatura do instrumento jur�dico previsto no Art. 5� do Decreto n� 87.497/82;'+#13);
    var1.Insert('VI) Providenciar a assinatura do Termo de Compromisso de Est�gio, entre a Unidade Concedente, o Estudante e a respectiva Institui��o de Ensino, de acordo com ');
    var1.Insert('o � 1�, do Art.6� do Decreto n� 87.497/82;'+#13);
    var1.Insert('VII) Acompanhar o estudante em toda a dura��o do Programa de Est�gio, atrav�s de relat�rios e visitas regulares, tanto ao estudante como ao (s) supervisores ');
    var1.Insert('(es) de est�gio do mesmo;'+#13);
    var1.Insert('VIII) Providenciar toda a documenta��o necess�ria para a efetiva��o do est�gio;'+#13);
    var1.Insert('IX) Providenciar a contrata��o de Seguros Contra Acidentes Pessoais em favor dos Estagi�rios, assumindo os custos correspondentes.'+#13+#13+#13);

    var1.Insert('CL�USULA 2� - Caber� � UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA - CAMPUS CURITIBA, como Institui��o de Ensino:'+#13+#13);
    Var1.Insert('I) Comunicar ao CETEFE, sempre que necess�rio, desist�ncias, trancamento de matricula, conclus�o de curso, bem como outras informa��es �teis ao ');
    Var1.Insert('processo de manuten��o do Programa de Est�gio.'+#13);
    Var1.Insert('II) Comunicar ao CETEFE detalhes sobre o desempenho do estudante sempre que se fizer necess�rio;'+#13);
    Var1.Insert('III) Informar ao CETEFE a rela��o de todos os cursos que mant�m, bem como as condi��es m�nimas exigidas para realiza��o de est�gio em cada curso;'+#13);
    Var1.Insert('IV) Assinar o Termo de compromisso de Est�gio, que se for necess�rio para celebra��o  do est�gio entre o estudante e a Unidade Concedente.'+#13+#13+#13);

    var1.Insert('CL�USULA 3� - Caber� � Unidade Concedente (Empresa):'+#13+#13);
    Var1.Insert('I) Informar ao CETEFE as vagas dispon�veis, identificando a �rea em que existem vagas, bem como das condi��es de realiza��o de est�gio;'+#13);
    Var1.Insert('II) Manter centralizadas as informa��es sobre o est�gio, indicando o respons�vel para tratar das quest�es relativas ao Programa de Est�gio;'+#13);
    Var1.Insert('III) Comunicar ao CETEFE os nomes dos estudantes que ir�o realizar est�gio;'+#13);
    Var1.Insert('IV) Comunicar ao CETEFE detalhes sobre o desempenho do estagi�rio sempre que se fizer necess�rio;'+#13);
    Var1.Insert('V) Celebrar com a Institui��o de Ensino, o Estudante e o Agente de Integra��o o Termo de Compromisso de Est�gio, de acordo com o � 1�, do Art. 6�, ');
    Var1.Insert('do Decreto n� 87.497/82;'+#13);
    Var1.Insert('VI) Informar ao CETEFE a Interrup��o, conclus�o ou eventuais modifica��es do est�gio, bem como outras informa��es de interesse ao desenvolvimento do Programa de Est�gio;'+#13);
    Var1.Insert('VII) Fixar a jornada de atividade do est�gio compatibilizando o hor�rio escolar do estudante com o hor�rio de trabalho da Unidade Concedente;'+#13);
    Var1.Insert('VIII) Efetuar o pagamento da bolsa-aux�lio, quando houver, em plena conformidade com o disposto neste instrumento emitindo e enviando c�pia do recibo ao CETEFE; ou'+#13);
    Var1.Insert('VIII) Repassar ao CETEFE a valor correspondente � bolsa-aux�lio, quando houver, ficando este respons�vel pelo repasse ao estagi�rio.'+#13);
    Var1.Insert('IX) Compete exclusivamente �s Unidades Concedentes disponibilizar, mensalmente, a quantia acordada neste instrumento ao estagi�rio seja qual for a modalidade ');
    Var1.Insert('de pagamento, isentando o CETEFE e a Institui��o de Ensino ora mencionada de quaisquer responsabilidades sobre o pagamento do estagi�rio, ficando, ');
    Var1.Insert('aquele respons�vel t�o somente pelo repasse quando estipulado contratualmente.'+#13+#13+#13);

    Var1.Insert('CL�USULA 4� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia entre o estudante e a Unidade Concedente. ');
    Var1.Insert('O presente Termo visa assegurar a complementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e desenvolvimento pessoal do Estagi�rio.'+#13+#13);

    Var1.Insert('CL�USULA 5� - Este Termo de Compromisso de Est�gio ter� vig�ncia de ' + meTceDtIni.Text + ' at� ' + meTceDtFim.Text);
    Var1.Insert(', podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo.'+#13+#13);

    Var1.Insert('CL�USULA 6� - As atividades de est�gio se far�o das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
    var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poder� ser estabelecida entre as partes. A jornada de atividade em est�gio dever� compatibilizar-se com o ');
    Var1.Insert('hor�rio escolar do estagi�rio e com o hor�rio da Unidade Concedente. ');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 7� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
    var1.Insert('Profiss�o do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    var1.Insert(#13+#13);
    var1.Insert('1. '+at[1]);
    var1.Insert(#13+'2. '+at[2]);
    var1.Insert(#13+'3. '+at[3]);
    var1.Insert(#13+'4. '+at[4]);
    var1.Insert(#13+'5. '+at[5]);
    var1.Insert(#13+#13);

    if Bolsa > 0 then
    begin
      var1.Insert('CL�USULA 8� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao  vencimento,  mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CL�USULA 8� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
      var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia  esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao  vencimento,  mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('�  1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obriga��o  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
    var1.Insert(#13+#13);
    var1.Insert('�  2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 9� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 10� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
    var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 11� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
    var1.Insert('a interrup��o autom�tica do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 12� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
    var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
    var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 13� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE. ');

    Var1.Insert(#13+#13);
    var1.Insert('CL�USULA 14� - A UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN� dar� publicidade a este Termo, em conson�ncia com preceitos legais vigentes.' + #13+#13);
    var1.Insert('CL�USULA 15� - Fica eleito o Foro da Justi�a Federal, Se��o Judici�ria de Curitiba para dirimir quaisquer d�vidas ou quest�es jur�dicas ');
    var1.Insert('que se originarem na execu��o deste Termo.' + #13 + #13);
    Var1.Insert('CL�USULA 16� - Este Termo pode ser rescindido unilateralmente pela UTFPR - UNIVERSIDADE TECNOLOGICA FEDERAL DO PARAN�, em raz�o do interesse p�blico, ficando o ');
    var1.Insert('estagi�rio impossibilitado de desenvolver suas atividades nesta empresa. '+#13+#13);

    var1.Insert('E, por assim estarem de acordo, assinam este instrumento em 4 (quatro) vias de igual teor:');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('                                                ________________________________________            ________________________________________');
    var1.Insert(#13+'                                                     Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE');
    var1.Insert(#13+#13+#13+#13);
    var1.Insert('                                                _________________________________________           ________________________________________ ');
    var1.Insert(#13+'                                                     Representante da UNIDADE CONCEDENTE                                              Estudante');

    var1.Insert(#13+#13+#13);
    var1.Insert('                                             Testemunhas: '+#13+#13+#13+#13);
    var1.Insert('                                              _________________________________________	________________________________________'+#13);
    Var1.Insert('                                              Nome:	                                              		Nome:'+#13);
    Var1.Insert('                                              RG:			                 			RG:'+#13);
    Var1.Insert('                                              CPF:	                                              			CPF:'+#13+#13+#13);

    var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure Imprime;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
  begin
    // verifica o c�digo da escola, se n�o � UEM
    If CodEsc = '221' then
    begin
      InputQuery('Est�gio', '�rea de Est�gio', AreaEst);
      AreaEst := AnsiUpperCase(AreaEst);
      InputQuery('Empresa', 'Supervisor na Empresa', SuperEmp);
      SuperEmp := AnsiUpperCase(SuperEmp);
      InputQuery('Institui��o', 'Orientador na Institui��o', OrientadorEst);
      OrientadorEst := AnsiUpperCase(OrientadorEst);
    end;

    ValString := FloatToStr(bolsa);
    DiasSemana := '111110';

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');

    var1.FileOpen(FORINI.Diretorio+'Contrato_1.doc');

    if CodEsc <> '385' then
    begin
      var1.Insert('                                                                     TERMO DE COMPROMISSO DE EST�GIO');
      var1.Insert(#13+'                                                                              E ACORDO DE COOPERA��O');
      var1.Insert(#13+#13);
      var1.Insert('TCE N�   '+DmDta.quTceTCE_COD.Text);
      var1.Insert(#13+#13+#13);
      var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paran�, a INSTITUI��O DE ');
      var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, atrav�s de seus repre');
      var1.Insert('sentantes celebram entre si o ACORDO DE COOPERA��O que tem por objetivo formalizar  as condi');
      var1.Insert('��es b�sicas para a realiza��o de Est�gio do estudante da Institui��o de Ensino junto � Uni');
      var1.Insert('dade Concedente.');
      var1.Insert(#13);
      var1.Insert(#13+'INSTITUI��O DE ENSINO');
      var1.Insert(#13+'Raz�o Social: '+nomeEsc);
      var1.Insert(#13+'Endere�o: '+endesc);
      var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
      var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
      var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+'.'+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcesc,13,2));
      If CodEsc <> '331' then
      begin
        var1.Insert(#13+'Representada por: '+respEsc);
        var1.Insert(#13+'Cargo: '+caresc);
        If (CurCod = '14') or (CurCod = '15') then
          Var1.Insert(#13+'Coordenador do Curso: Dr(a). '+CoordEsc);
      end
      else
      begin
        var1.Insert(#13+'Representada por: ');
        var1.Insert(#13+'Cargo: COORDENADOR(A) DE CURSO');
      end;
      // Diretor de Curso
      If DireEsc <> ''then
        var1.Insert(#13+'Diretor(a) de Curso: ' + DireEsc);

      // verifica o c�digo da escola, se n�o � UEM
      If CodEsc = '221' then
        var1.Insert(#13+'Orientador: '+OrientadorEst);

      var1.Insert(#13+#13);
      var1.Insert('UNIDADE CONCEDENTE');
      var1.Insert(#13+'Raz�o Social: '+ nomeemp);
      var1.Insert(#13+'Endere�o:'+endemp);
      var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
      var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
      var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
      var1.Insert(#13+'Representada por: '+respemp);
      var1.Insert(#13+'Cargo: '+caremp);
      If SuperEst <> '' then
      begin
        If (CurCod = '14') or (curcod = '15') then
          var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
        else
          var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);
      end;
      If FormSuperEst <> '' then
        var1.Insert(#13+'Forma��o: '+FormSuperEst);
      If CRJ <> '' then
        var1.Insert(#13+'N� do C.R.J.: '+CRJ);
      If CREF <> '' then
        var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
      If CPP <> '' then
        var1.Insert(#13+'N� do C.R.P.: '+CPP);
      If Conselho <> '' then
        var1.Insert(#13+'N� do Conselho: '+Conselho);
      If Coren <> '' then
        var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
      If CRM <> '' then
        var1.Insert(#13+'N� do C.R.M.: '+CRM);
      If CRO <> '' then
        var1.Insert(#13+'N� do C.R.O.: '+CRO);
      If CodEsc = '221' then
        var1.Insert(#13+'Supervisor: '+SuperEmp);

      var1.Insert(#13+#13);
      var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUI��O DE ENSINO, e o ESTUDANTE:');
      var1.Insert(#13+'Estudante: '+nomeest);
      If CodEsc = '331' then
        Var1.Insert(#13+'N�mero de Matr�cula: ' + NumMatEsc + '            Data de Nascimento:' + Datana);
      var1.Insert(#13+'Endere�o: '+endest);
      var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
      var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
      var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
      var1.Insert(#13+'Curso: '+curest);
      var1.Insert(#13+'Per�odo/Ano: '+peratu);
    end
    else
    begin
      var1.Insert('                                                                     TERMO DE COMPROMISSO DE EST�GIO'+#13);
      Var1.Font('arial', 8);
      Var1.Insert('                             (Est�gio Volunt�rio - Nos termos da Lei n� 6.494 de 07/12/1977 e Decreto n� 87.497 de 18/08/1982, que a regulamentou.)');
      var1.Insert(#13+#13+#13+#13);
      Var1.Font('arial', 10);
      var1.Insert('TCE N�   '+DmDta.quTceTCE_COD.Text);
      var1.Insert(#13+#13+#13);
      var1.Insert('ESTUDANTE:');
      var1.Insert(#13+'Estudante: '+nomeest);
      var1.Insert(#13+'Endere�o: '+endest);
      var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
      var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
      var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
      var1.Insert(#13+'Curso: '+curest);
      var1.Insert(#13+'Per�odo/Ano: '+peratu);
      var1.Insert(#13+#13);
      var1.Insert('UNIDADE CONCEDENTE');
      var1.Insert(#13+'Raz�o Social: '+ nomeemp);
      var1.Insert(#13+'Endere�o:'+endemp);
      var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
      var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
      var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
      var1.Insert(#13+'Representada por: '+respemp);
      var1.Insert(#13+'Cargo: '+caremp);
      var1.Insert(#13+#13+'INTERVENIENTE - INSTITUI��O DE ENSINO');
      var1.Insert(#13+'Raz�o Social: '+nomeEsc);
      var1.Insert(#13+'Endere�o: '+endesc);
      var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
      var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
      var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+'.'+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcesc,13,2));
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: '+caresc);
      var1.Insert(#13+#13);
    end;

    var1.Insert(#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);
    if CodEsc = '385' then
    begin
      var1.Insert('CL�USULA 1� - Este Termo de compromisso decorre do conv�nio firmado entre a UNIVERSIDADE ');
      var1.Insert('ESTADUAL DE LONDRINA e a UNIDADE CONCEDENTE em ____/____/____.');
      Var1.Insert(#13+#13);
      var1.Insert('CL�USULA 2� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia ');
      var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar  a com');
      var1.Insert('plementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e ');
      var1.Insert('desenvolvimento  pessoal do Estagi�rio.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 3� - Este Termo de Compromisso de Est�gio ter� vig�ncia de '+meTceDtIni.Text+' at� '+meTceDtFim.text+', ');
      var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo. ');
      var1.Insert(#13+#13);
      if DiasSemana = '111110' then
      begin
        var1.Insert('CL�USULA 4� - As atividades de est�gio se far�o de Segunda a Sexta, das '+dtc+', per');
        var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
        var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
        var1.Insert('de atividades poder� ser estabelecida entre as partes.');
      end
      else if DiasSemana = '111111' then
      begin
        var1.Insert('CL�USULA 4� - As atividades de est�gio se far�o de Segunda a S�bado, das '+dtc+',  per');
        var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
        var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
        var1.Insert('de atividades poder� ser estabelecida entre as partes.');
      end;
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 5� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
      var1.Insert('Profiss�o do curso do estudante.');
      var1.Insert(#13+#13);
      var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
      var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:'+#13+#13);
      var1.Insert('1. '+at[1]);
      var1.Insert(#13+'2. '+at[2]);
      var1.Insert(#13+'3. '+at[3]);
      var1.Insert(#13+'4. '+at[4]);
      var1.Insert(#13+'5. '+at[5]);
      var1.Insert(#13+#13);
      if Bolsa > 0 then
      begin
        var1.Insert('CL�USULA 6� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
        var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
        var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
        var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
        var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
        var1.Insert('outro motivo qualquer.');
      end
      else
      begin
        var1.Insert('CL�USULA 6� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
        var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
        var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
        var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
        var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
        var1.Insert('outro motivo qualquer.');
      end;
      var1.Insert(#13+#13);
      var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
      var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
      var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obriga��o  por parte da UNIDADE ');
      var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
      var1.Insert(#13+#13);
      var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
      var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
      var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 7� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir  as  normas ');
      var1.Insert('internas da Unidade Concedente.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 8� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
      var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 9� - Na eventual conclus�o, abandono ou Trancamento do curso,  bem  como no n�o cum');
      var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
      var1.Insert('a interrup��o autom�tica do referido Termo.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 10� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
      var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
      var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 11� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
      var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
      var1.Insert(', sob a responsabilidade do CETEFE.');
    end
    else
    begin
      var1.Insert('CL�USULA 1� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia ');
      var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
      var1.Insert('plementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e ');
      var1.Insert('desenvolvimento pessoal do Estagi�rio.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 2� - Este Termo de Compromisso de Est�gio ter� vig�ncia de '+meTceDtIni.Text+' at� '+meTceDtFim.text+', ');
      var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 3� - As atividades de est�gio se far�o das '+dtc+',  per');
      var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
      var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
      var1.Insert('de atividades poder� ser estabelecida entre as partes. ');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 4� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
      var1.Insert('Profiss�o do curso do estudante.');
      var1.Insert(#13+#13);
      var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
      var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
      If CodEsc = '221' then
      begin
        var1.Insert(#13+#13+#13+'�rea de Est�gio: '+AreaEst);
        var1.Insert(#13);
      end
      else
        var1.Insert(#13+#13);
      var1.Insert('1. '+at[1]);
      var1.Insert(#13+'2. '+at[2]);
      var1.Insert(#13+'3. '+at[3]);
      var1.Insert(#13+'4. '+at[4]);
      var1.Insert(#13+'5. '+at[5]);
      var1.Insert(#13+#13);
      if Bolsa > 0 then
      begin
        var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
        var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
        var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
        var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
        var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
        var1.Insert('outro motivo qualquer.');
      end
      else
      begin
        var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
        var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que  ser� ');
        var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
        var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
        var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
        var1.Insert('outro motivo qualquer.');
      end;
      var1.Insert(#13+#13);
      var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
      var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
      var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obriga��o  por parte da UNIDADE ');
      var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
      var1.Insert(#13+#13);
      var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
      var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
      var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 6� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
      var1.Insert('internas da Unidade Concedente.');
      var1.Insert(#13+#13);
      If CodEsc <> '331' then
      begin
        var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
        var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
      end
      else
      begin
        var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es � Institui��o de Ensino e ao ');
        var1.Insert('CETEFE para o acompanhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
      end;
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 8� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
      var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
      var1.Insert('a interrup��o autom�tica do referido Termo.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 9� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
      var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
      var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
      var1.Insert(#13+#13);
      var1.Insert('CL�USULA 10� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
      var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
      var1.Insert(', sob a responsabilidade do CETEFE. ');
    end;

    If CodEsc = '331' then
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                   Coordenador Geral de Est�gio                                                   Coordenador de Curso');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante');
      var1.Insert(#13+#13+#13+#13);
      var1.Insert('                                                    _________________________________________');
      var1.Insert(#13+'                                                                        Representante do CETEFE');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else
    begin
      If Inst = '50' then
      begin
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                 Diretor de Curso da INSTITUI��O DE ENSINO');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('                                                    _________________________________________');
        var1.Insert(#13+'                                                                        Representante do CETEFE');
        var1.Insert(#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end
      else if (CurCod = '14') or (CurCod = '15') then
      begin
        var1.Insert(#13+'E, Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
        var1.Insert('6 (seis) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'        Representante da INSTITUI��O DE ENSINO                                          Coordenador de Curso');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                         Supervisor na UNIDADE CONCEDENTE');
        var1.Insert(#13+#13+#13);
        var1.Insert('     ________________________________________             _________________________________________  ');
        var1.Insert(#13+'                     Representante do CETEFE                                                                     Estudante');
        var1.Insert(#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end
      else
      begin
        var1.Insert(#13+#13);
        var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  4 (quatro) ');
        var1.Insert('vias de igual teor:');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     ________________________________________            ________________________________________ ');
        var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                                Representante do CETEFE');
        var1.Insert(#13+#13+#13+#13);
        var1.Insert('     _________________________________________           ________________________________________ ');
        var1.Insert(#13+'          Representante da UNIDADE CONCEDENTE                                              Estudante');
        var1.Insert(#13+#13+#13+#13+#13);
        var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
      end;
    end;

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure ImprimeUniandrade;
  var ValorInt: Integer;
      Valor, ValorCent: Double;
      ValString: String;
      DiasSemana: String;
  begin
    ValString := FloatToStr(bolsa);
    DiasSemana := '111110';

    Valor     := StrToFloat(ValString);
    ValorInt  := Trunc(Valor);
    ValorCent := (Valor-ValorInt)*100;

    if valorInt > 0 then
      exte := NumeroExtenso(ValorInt,1);

    if ValorCent > 0  then
    begin
      if FormatFloat('0', ValorCent) = FormatFloat('0',Trunc(ValorCent)) then
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent),2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent),2);
      end
      else
      begin
        if exte = '' then
          exte := NumeroExtenso(Trunc(ValorCent)+1,2)
        else
          exte := exte + ' E ' + NumeroExtenso(Trunc(ValorCent)+1,2);
      end;
    end;

    var1 := CreateOleObject('Word.basic');

    var1.FileOpen(FORINI.Diretorio+'Contrato_2.doc');


    var1.Insert('                                                                     TERMO DE COMPROMISSO DE EST�GIO');
    var1.Insert(#13+'                                                                              E ACORDO DE COOPERA��O');
    var1.Insert(#13+'                                                                       (EST�GIO CURRICULAR VOLUNT�RIO)');
    var1.Insert(#13+#13);
    var1.Insert('TCE N�   '+DmDta.quTceTCE_COD.Text);
    var1.Insert(#13+#13+#13);
    var1.Insert(' Ao(s) '+datac+                           ', na cidade de Curitiba, Paran�, a INSTITUI��O DE ');
    var1.Insert('ENSINO, abaixo relacionada e a UNIDADE CONCEDENTE, abaixo relacionada, atrav�s de seus repre');
    var1.Insert('sentantes celebram entre si o ACORDO DE COOPERA��O que tem por objetivo formalizar  as condi');
    var1.Insert('��es b�sicas para a realiza��o de Est�gio do estudante da Institui��o de Ensino junto � Uni');
    var1.Insert('dade Concedente.');
    var1.Insert(#13+#13+#13);
    var1.Insert('INSTITUI��O DE ENSINO');
    var1.Insert(#13+'Raz�o Social: '+nomeEsc);
    var1.Insert(#13+'Endere�o: '+endesc);
    var1.Insert(#13+'Bairro: '+baiesc+'                Cidade: '+CidadeEsc);
    var1.Insert(#13+'CEP: '+Copy(cepesc,1,2)+'.'+Copy(cepesc,3,3)+'-'+Copy(cepesc,6,3)+'                Telefone: ('+Copy(telesc,1,2)+') '+Copy(telesc,3,4)+'-'+Copy(telesc,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcesc,1,2)+'.'+Copy(cgcesc,3,3)+'.'+Copy(cgcesc,6,3)+'-'+Copy(cgcesc,9,4)+'-'+Copy(cgcesc,13,2));
    If CodEsc = '137' then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: DIRETOR');
      If (CurCod = '14') or (CurCod = '15') then
        var1.Insert(#13+'Coordenador de Curso: Dr(a). '+coordesc)
      else
        var1.Insert(#13+'Coordenador de Curso: '+coordesc);
    end
    else if (CodEsc = '261') or (CodEsc = '581') or (CodEsc = '186') then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: COORDENADOR DE CURSO');
    end
    else if (CodEsc = '221') then
    begin
      var1.Insert(#13+'Representada por: '+respEsc);
      var1.Insert(#13+'Cargo: PR�-REITOR(A) DE ENSINO');
      var1.Insert(#13+'Orientador: '+CoordEsc);
    end;

    var1.Insert(#13+#13+#13);
    var1.Insert('UNIDADE CONCEDENTE');
    var1.Insert(#13+'Raz�o Social: '+ nomeemp);
    var1.Insert(#13+'Endere�o:'+endemp);
    var1.Insert(#13+'Bairro: '+baiemp+'                Cidade: '+CidadeEmp);
    var1.Insert(#13+'CEP: '+Copy(cepemp,1,2)+'.'+Copy(cepemp,3,3)+'-'+Copy(cepemp,6,3)+'                Telefone: ('+Copy(telemp,1,2)+') '+Copy(telemp,3,4)+'-'+Copy(telemp,7,4));
    var1.Insert(#13+'CNPJ: '+Copy(cgcemp,1,2)+'.'+Copy(cgcemp,3,3)+'.'+Copy(cgcemp,6,3)+'/'+Copy(cgcemp,9,4)+'-'+Copy(cgcemp,13,2));
    var1.Insert(#13+'Representada por: '+respemp);
    var1.Insert(#13+'Cargo: ' + caremp);

    If (CurCod = '14') or (curcod = '15') then
      var1.Insert(#13+'Supervisor de Est�gio: Dr(a). '+SuperEst)
    else If SuperEst <> '' then
      var1.Insert(#13+'Supervisor de Est�gio: '+SuperEst);

    If FormSuperEst <> '' then
      var1.Insert(#13+'Forma��o: '+FormSuperEst);
    If CRJ <> '' then
      var1.Insert(#13+'N� do C.R.J.: '+CRJ);
    If CREF <> '' then
      var1.Insert(#13+'N� do C.R.E.F.: '+CREF);
    If CPP <> '' then
      var1.Insert(#13+'N� do C.R.P.: '+CPP);
    If Conselho <> '' then
      var1.Insert(#13+'N� do Conselho: '+Conselho);
    If Coren <> '' then
      var1.Insert(#13+'N� do C.O.R.E.N.: '+Coren);
    If CRM <> '' then
      var1.Insert(#13+'N� do C.R.M.: '+CRM);
    If CRO <> '' then
      var1.Insert(#13+'N� do C.R.O.: '+CRO);

    var1.Insert(#13+#13+#13);
    var1.Insert('A UNIDADE CONCEDENTE, juntamente com a INSTITUI��O DE ENSINO, e o ESTUDANTE:');
    var1.Insert(#13+'Estudante: '+nomeest);
    Var1.Insert(#13+'Data de Nascimento:' + Datana);
    var1.Insert(#13+'Endere�o: '+endest);
    var1.Insert(#13+'Bairro: '+baiest+'                Cidade: '+CidadeEst);
    var1.Insert(#13+'CEP: '+Copy(cepest,1,2)+'.'+Copy(cepest,3,3)+'-'+Copy(cepest,6,3)+'                Telefone: ('+Copy(telest,1,2)+') '+Copy(telest,3,4)+'-'+Copy(telest,7,4));
    var1.Insert(#13+'RG: '+rgest+'                     CPF: ' + CpfEst + '                     CTPS: '+ctpest);
    var1.Insert(#13+'Curso: '+curest);
    var1.Insert(#13+'Per�odo/Ano: '+peratu);

    var1.Insert(#13+#13+#13);
    var1.Insert('Celebram entre si, atrav�s do Agente de Integra��o CETEFE - CENTRO DE TREINAMENTO E FORMAC�O DO ESTUDANTE, CNPJ 02.217.643/0001-17, ');
    Var1.Insert('o TERMO DE COMPROMISSO DE EST�GIO, de acordo com a Lei n� 6.494/77 complementada pela Lei n� 8.859/94, pela Lei 8.666/93 e pelo Decreto n� 87.497/82, ');
    var1.Insert('complementado pelo Decreto n� 2.080/96, sob as seguintes condi��es:');
    var1.Insert(#13+#13);

    var1.Insert('CL�USULA 1� - O Termo de compromisso de Est�gio n�o caracteriza a vincula��o empregat�cia ');
    var1.Insert('entre o estudante e a Unidade Concedente. O presente Termo visa assegurar a com');
    var1.Insert('plementa��o de aprendizagem atrav�s de treinamento pr�tico, integra��o social e ');
    var1.Insert('desenvolvimento pessoal do Estagi�rio.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 2� - Este Termo de Compromisso de Est�gio ter� vig�ncia de '+meTceDtIni.Text+' at� '+meTceDtFim.text+', ');
    var1.Insert('podendo ser rescindido a qualquer momento por qualquer uma das partes ou podendo ser prorrogado atrav�s de Termo Aditivo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 3� - As atividades de est�gio se far�o das '+dtc+',  per');
    var1.Insert('fazendo '+etotal+' horas mensais. A jornada dever� ser compat�vel com o hor�rio escolar ');
    var1.Insert('do Estudante, sendo que durante as f�rias ou recessos escolares, outra jornada ');
    var1.Insert('de atividades poder� ser estabelecida entre as partes. ');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 4� - As atividades desenvolvidas dever�o ser compat�veis com o Contexto B�sico da ');
    var1.Insert('Profiss�o do curso do estudante.');
    var1.Insert(#13+#13);
    var1.Insert('� �nico - As atividades poder�o ser ampliadas, reduzidas, alteradas, substitu�das de acordo ');
    var1.Insert('com a necessidade, sendo as atividades inicialmente desenvolvidas pelo estudante:');
    var1.Insert(#13+#13);
    var1.Insert('1. '+at[1]);
    var1.Insert(#13+'2. '+at[2]);
    var1.Insert(#13+'3. '+at[3]);
    var1.Insert(#13+'4. '+at[4]);
        var1.Insert(#13+'5. '+at[5]);
    var1.Insert(#13+#13);
    if Bolsa > 0 then
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ '+FormatFloat('0.00', bolsa)+' ('+exte+' / ');
      var1.Insert(tipoBolsa+'), o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end
    else
    begin
      var1.Insert('CL�USULA 5� - A Unidade Concedente remunerar� em R$ ________ (SEM REMUNERA��O) ');
      var1.Insert('o Estudante, a t�tulo de bolsa-aux�lio, quantia esta que ser� ');
      var1.Insert('paga a partir do m�s subseq�ente ao  vencimento, mediante a apresenta��o de ');
      var1.Insert('comprovante. O valor estabelecido poder� variar segundo a sua freq��ncia mensal ');
      var1.Insert('grau de escolaridade, atividades desempenhadas, entendimento entre as partes ou ');
      var1.Insert('outro motivo qualquer.');
    end;
    var1.Insert(#13+#13);
    var1.Insert('� 1� - A obriga��o de pagamento da bolsa-aux�lio � de responsabilidade �nica e exclusiva da UNIDADE ');
    var1.Insert('CONCEDENTE e dever� ser efetuado atrav�s de dep�sito mensal do valor integral na conta corrente ');
    var1.Insert('fornecida pelo CETEFE, com o que se considerara cumprida essa  obriga��o  por parte da UNIDADE ');
    var1.Insert('CONCEDENTE. Efetivado o pagamento caber� ao CETEFE repassar o valor da bolsa-aux�lio.');
    var1.Insert(#13+#13);
    var1.Insert('� 2� - Caso a UNIDADE CONCEDENTE opte pelo pagamento da bolsa-aux�lio diretamente aos estagi�rios, ficar� ');
    var1.Insert('a mesma obrigada a informar tal procedimento ao CETEFE, remetendo-lhe c�pias dos respectivos recibos, bem como ');
    var1.Insert('efetuar o pagamento do valor referente ao custo administrativo do Programa de Est�gio estipulado, atrav�s de boleto banc�rio a ser emitido pelo CETEFE.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 6� - O estagi�rio dever� cumprir o Programa de Est�gio, bem como cumprir as normas ');
    var1.Insert('internas da Unidade Concedente.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 7� - Sempre que necess�rio, o estagi�rio dever�  fornecer informa��es para o acompa');
    var1.Insert('nhamento e supervis�o do Programa de Est�gio, dentro do prazo estipulado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 8� - Na eventual conclus�o, abandono ou trancamento do curso, bem como no n�o cum');
    var1.Insert('primento das normas estabelecidas neste Termo de Compromisso de Est�gio, haver� ');
    var1.Insert('a interrup��o autom�tica do referido Termo.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 9� - Fica o CETEFE como centralizador do processo de est�gio entre a  Unidade Conce');
    var1.Insert('dente, Institui��o de Ensino e o Estudante. Quaisquer altera��es que se fa�am ');
    var1.Insert('necess�rias neste Termo de Compromisso de Est�gio, o CETEFE dever� ser comunicado.');
    var1.Insert(#13+#13);
    var1.Insert('CL�USULA 10� - Na vig�ncia do presente Termo, o estagi�rio estar� inclu�do na cobertura do Se');
    var1.Insert('guro Contra Acidentes Pessoais proporcionado atrav�s da ap�lice n� 00000009 da Companhia Seguradora UNIBANCO AIG SEGUROS S/A.');
    var1.Insert(', sob a responsabilidade do CETEFE. ');

    var1.Insert(#13+#13);
    if CodEsc = '221' then
    begin
      var1.Insert('E,  Por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio  em  5 (cinco) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'                           Pr�-Reitoria de Ensino                                                    Orientador de Est�gio da UEM');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     ________________________________________            ________________________________________ ');
      var1.Insert(#13+'             Representante da Unidade Concedente                       Supervisor de Est�gio da Unidade Concedente');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     _________________________________________           ________________________________________ ');
      var1.Insert(#13+'                       Representante do CETEFE                                                                 Estudante ');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end
    else
    begin
      var1.Insert('E, por assim estarem de acordo, assinam este Termo de Compromisso de Est�gio em ');
      If (CurCod = '14') or (CurCod = '15') then
        var1.Insert('6 (seis) ')
      else
        var1.Insert('4 (quatro) ');
      var1.Insert('vias de igual teor:');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                          Coordenador de Curso na INSTITUI��O DE ENSINO ');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE         ');
      var1.Insert(#13+#13+#13+#13+#13+#13);
      var1.Insert('     ________________________________________                       ___________________________________________  ');
      var1.Insert(#13+'                                Estudante                                                                                Representante do CETEFE');
      var1.Insert(#13+#13+#13+#13+#13);
      var1.Insert('   TCE: '+DmDta.quTceTCE_COD.Text+'  -  Estudante:  '+DmDta.quTceEST_COD.Text + ' ' + nomeEst + '  -  ' + cidadeEst + '/' + estadoEst);
    end;

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
    Screen.Cursor := crHourGlass;
    completadados;
    dtCompleta(true);

    // N�mero de matricula
    If CodEsc = '749' then
    begin
      ImprimeGama;
    end
    else If CodEsc = '331' then
    begin
      InputQuery('N� Matr�cula', 'N�mero', NumMatEsc);
      imprime;
    end
    else if curcod = '12' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'PSICOLOGIA';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Psicologia', 'N� do C.R.P.', CPP);
      CPP := AnsiUpperCase(CPP);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else if curcod = '14' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'M�DICO';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Medicina', 'N� do C.R.M.', CRM);
      CRM := AnsiUpperCase(CRM);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else if curcod = '15' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'CIRURGI�O(A) DENTISTA';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Odontologia', 'N� do C.R.O.', CRO);
      CRO := AnsiUpperCase(CRO);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else if curcod = '29' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'ENFERMAGEM';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Enfermagem', 'N� do C.O.R.E.N.', Coren);
      CPP := AnsiUpperCase(CPP);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else if curcod = '19' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'EDUCA��O F�SICA';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Educa��o F�sica', 'N� do C.R.E.F.', CREF);
      CREF := AnsiUpperCase(CREF);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;

    end
    else if curcod = '9' then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      FormSuperEst := 'ASSISTENTE SOCIAL';
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Servi�o Social', 'N� do Conselho', Conselho);
      Conselho := AnsiUpperCase(Conselho);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else If (Pos('JORNALISMO', curEst) > 0) {estagi�rios de jornalismo } then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      InputQuery('Jornalismo', 'N� do C.R.J.', CRJ);
      CRJ := AnsiUpperCase(CRJ);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;

    end
    else if (curcod = '31') or (curcod = '50') then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
      FormSuperEst := AnsiUpperCase(FormSuperEst);
      If (CodEsc = '137') or (CodEsc = '261') or
         (CodEsc = '186') or (CodEsc = '581') or
         (CodEsc = '221') then
        imprimeUniAndrade
      else If CodEsc = '200' then
        ImprimeUTFPR
      else
        imprime;
    end
    else If (CodEsc = '197') or (CodEsc = '190') or
            (CodEsc = '24') or (CodEsc = '49') or
            (CodEsc = '166') or (CodEsc = '296') or
            (CodEsc = '847') or     // Universidade positivo
            (CodEsc = '186') or     // Fesp
            (CodEsc = '482') or (CodEsc = '458') or
            (CodEsc = '401') or (CodEsc = '50') or
            (CodEsc = '129') or (CodEsc = '546') then
    begin
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      If (CodEsc <> '190') then
      begin
        InputQuery('Supervisor', 'Forma��o do Supervisor de Est�gio', FormSuperEst);
        FormSuperEst := AnsiUpperCase(FormSuperEst);
      end;
      imprime;
    end
    else If (CodEsc = '137') or (CodEsc = '261') or
            (CodEsc = '186') or (CodEsc = '581') or
            (CodEsc = '221') then
      ImprimeUniandrade
    else If CodEsc = '200' then
      ImprimeUTFPR
    else
      imprime;
  end;

  Screen.Cursor := crDefault;
  MudaAba := True;
end;

procedure TFORTCE.meEnt1Exit(Sender: TObject);
begin
  if TMaskEdit(Sender).text <> '  :  ' then
  begin
    if not Validahora(TMaskEdit(Sender).Text) then
    begin
      TMAskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;

  if Salvou then
  begin
    if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;

    if (meEnt1.Text <> '  :  ') and (meSai1.Text <> '  :  ') then
    begin
      hr1 := '';hr2 := '';hr3 := '';hr4 := '';
      if meEnt1.Text <> '  :  ' then
        hr1 := meEnt1.Text;
      if meSai1.Text <> '  :  ' then
        hr2 := meSai1.Text;
      if meEnt2.Text <> '  :  ' then
        hr3 := meEnt2.Text;
      if meSai2.Text <> '  :  ' then
        hr4 := meSai2.Text;
      CalcHora();
    end;
  end;
end;

procedure TFORTCE.SpeedButton1Click(Sender: TObject);
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
    Screen.Cursor   := crHourGlass;
    FORTAL          := TFORTAL.Create(Self);
    FORTAL.SetaCodigo(quPrincipal.FieldByName('tce_cod').AsInteger);
    Screen.Cursor   := crDefault;
    FORTAL.ShowModal;
  end;
  Mudaaba := True;
end;

procedure TFORTCE.meTceAbertExit(Sender: TObject);
begin
  inherited;
  if TMaskEdit(Sender).text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
    begin
      TMAskEdit(Sender).SetFocus;
      Salvou := False;
    end
    else
      Salvou := True;
  end;
end;

procedure TFORTCE.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit2DblClick(sender);
end;

procedure TFORTCE.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit3DblClick(sender);
end;

procedure TFORTCE.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit5DblClick(sender);
end;

procedure TFORTCE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
    vk_F6:  btImprimirClick(Sender);
    vk_F7:  SpeedButton1Click(sender);
    vk_F8:  SpeedButton2Click(sender);
    vk_F9:  SpeedButton3Click(sender);
    vk_F10: btImpressaoClick(sender);
    vk_F11: btSabadoClick(sender);
  end;
end;

procedure TFORTCE.meTceDtResExit(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal.State in [dsInsert,dsEdit])) then quPrincipal.Edit;
  if TMaskEdit(Sender).text <> '  /  /    ' then
  begin
    if not ValidaData(TMaskEdit(Sender).Text) then
      TMAskEdit(Sender).SetFocus
    else
    begin
      // Valida a data digitada, pq pode ser para frente
      if StrToDate(meTceDtRes.Text) <= Date then
        quPrincipal.FieldByName('tce_situacao').Value := '7';
    end;
  end
  else
    quPrincipal.FieldByName('tce_situacao').Value := '0';
end;

procedure TFORTCE.SpeedButton2Click(Sender: TObject);
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
    Screen.Cursor   := crHourGlass;
    FORTAD          := TFORTAD.Create(Self);
    FORTAD.SetaCodigo(quPrincipal.FieldByName('tce_cod').AsInteger);
    Screen.Cursor   := crDefault;
    FORTAD.ShowModal;
  end;
  MudaAba := True;
end;

procedure TFORTCE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  quEncVaga.Close;
  qContrato.Close;
end;

procedure TFORTCE.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit3.Text <> '') and (quPrincipal.State = dsInsert) then
  begin
    If quPrincipal.Active then
    begin
      with TQuery.Create(nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit3.text);
        Open;

        if not IsEmpty then
        begin
          if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
          DmDta.quTcevag_qtde.value       := FieldByName('vag_qtde').Value;
          DmDta.quTcevag_qtdepreenc.value := FieldByName('vag_qtdepreenc').Value;
          DmDta.quTceemp_cod.Value        := FieldByName('emp_cod').Value;
          DmDta.quTceemp_nome.Text        := FieldByName('emp_nome').Value;
          if not FieldByName('vag_horarioini1').IsNull then
            Hr1 := FormatDateTime('hh:nn',FieldByName('vag_horarioini1').Value);
          if not FieldByName('vag_horariofim1').IsNull then
            Hr2 := FormatDateTime('hh:nn',FieldByName('vag_horariofim1').Value);
          if not FieldByName('vag_horarioini2').IsNull then
            Hr3 := FormatDateTime('hh:nn',FieldByName('vag_horarioini2').Value);
          if not FieldByName('vag_horariofim2').IsNull then
            Hr4 := FormatDateTime('hh:nn',FieldByName('vag_horariofim2').Value);
          if not FieldByName('vag_valorbolsa').IsNull then
            DmDta.quTcetce_bolsa.Value     := FieldByName('vag_valorbolsa').Value;
          if FieldByName('vag_tipobolsa').Value = '1' then
            cbTipoBolsa.ItemIndex := 1
          else
            cbTipoBolsa.ItemIndex := 0;

          if not VerificaVaga() then
          begin
            DBEdit3.SetFocus;
            Salvou := False;
          end
          else
            Salvou := True;
        end
        else
        begin
          if FieldByName('emp_nome').Text = '' then
          begin
            MSGERRO('Oportunidade inexistente. Selecione outra oportunidade!');
            DBEdit3.SetFocus;
            Salvou := False;
          end;
        end;

        Close;
        Free;
      end;
    end;
  end
  else if (DBEdit3.Text = '') then
  begin
    If quPrincipal.Active then
    begin
      if not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
      DBEdit9.Text := '';
      DBEdit10.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit5Exit(Sender: TObject);
var Idade, Unidade: String;
begin
  inherited;
  if (DBEdit5.Text <> '') then
  begin
    if quPrincipal.Active then
    begin
      If Not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEest_nome.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit5.Text));

      if DmDta.quTCEEst_nome.Text = '' then
      begin
        MSGERRO('Estudante inexistente. Selecione outro estudante!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
      begin
        Salvou := True;

        try
          RetornaIdade(FormatDateTime('dd/mm/yyyy',FOREST.F2DNasc), Idade, Unidade);

          if StrToInt(Idade) < 16 then
          begin
            MSGAVISO('Estudante menor de 16 anos!');
            DBEdit5.SetFocus;
            Salvou := False;
          end
          else
          begin
            if BuscaPerfil() then
              SelectNext(ActiveControl, True, True);
          end;
        except
        end;
      end;
    end;
  end
  else
  begin
    if (quPrincipal.Active) then
    begin
      If Not (quPrincipal.State in [dsInsert,dsEdit]) then quPrincipal.Edit;
      DmDta.quTCEest_nome.Text := '';
    end;
  end;
end;

procedure TFORTCE.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then Key := ',';
end;

procedure TFORTCE.edEstCodExit(Sender: TObject);
var argumento, ordem: String;
    data1, data2: String;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edEstCod.Text <> '' then
  begin
    edEstNome.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(edEstCod.Text));
    argumento := argumento + ' and t.est_cod = '+edEstCod.Text;
  end
  else
    edEstNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
    begin
      argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        // data inicial e final
        data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
        data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                            StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
        argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
      end;
    end;
  end;

  DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                 'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  estadoNavegando();
end;

procedure TFORTCE.edEstCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    edEstCod.Text  := FOREST.F2Codigo;
    edEstNome.Text := FOREST.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;
  FOREST.Free;
end;

procedure TFORTCE.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if not DBEdit12.Field.IsNull then
    eTotal := DBEdit12.Text;
end;

procedure TFORTCE.Notebook1PageChanged(Sender: TObject);
begin
  inherited;
  if Notebook1.PageIndex = 0 then
    DBEdit4.Width := 278
  else
    DBEdit4.Width := 435;
end;

procedure TFORTCE.cbTipoSelecaoClick(Sender: TObject);
begin
  inherited;
  if (not (quPrincipal.State in [dsInsert,dsEdit])) then quPrincipal.Edit;
end;

procedure TFORTCE.SpeedButton3Click(Sender: TObject);
var var1: variant;
    Inst, Emp: String;
    datac, nomeesc, funcesc, cargesc : string;
    areaemp,caremp, respemp, nomeemp :string;
    at: Array [1..5] of string;
    TemAlteracao: boolean;
    // Parte da altera��o
    Ent1, Sai1, Ent2, Sai2, Vig: String;
    Bolsa: Double;
    CarSuperEst, CoordEsc, SuperEst, Curso: String;

  procedure completadados;
  var i: Integer;
  begin
    with qContrato do
    begin
      // Busca a dados da vaga
      if quPrincipal.FieldByName('tce_tipocont').Value = '0' then
      begin
        Close;
        sql.Clear;
        Sql.Add('Select v.*, a.ati_nome from Vaga v, VagaAtividade a where v.vag_cod = a.vag_cod and v.vag_cod = ' + DmDta.quTcevag_cod.Text);
        Open;

        if not IsEmpty then
        begin
          first;

          for i := 1 to 5 do
          begin
            if Eof then break;
            at[i] := FieldByName('ati_nome').AsString;
            Next;
          end;
        end;
      end;

      Emp := DmDta.quTceemp_cod.Text;

      // busca dados do perfil
      close;
      sql.clear;
      sql.add('select E.*, C.cur_nome from Estudante E, Curso C where e.cur_cod = c.cur_cod and e.est_cod = ' + Dmdta.quTceEst_cod.Text);
      open;
      Inst  := fieldByName('inst_cod').asstring;
      Curso := fieldByName('cur_nome').asstring;

      // busca dados da escola
      close;
      sql.clear;
      sql.add('select i.*, f.ifu_nome ifu_nomerespcomp, f.ifu_cargo from Instituicao i, InstFuncionario F where i.inst_cod = f.inst_cod and i.inst_respcomp = f.func_cod and i.inst_cod = ' + Inst);
      open;
      nomeesc := fieldbyname('inst_nome').asstring;
      If Inst <> '331' then
        funcesc := fieldByName('inst_nomerespcomp').AsString
      else
        funcesc := '';
      cargesc := fieldByName('ifu_cargo').AsString;

      // busca os dados da empresa
      close;
      sql.clear;
      sql.add('select e.*, f.efu_nome, f.efu_cargo from Empresa e, Empfuncionario f where e.emp_cod = f.emp_cod and e.emp_respcomp = f.func_cod and e.emp_cod = ' + Emp);
      open;
      nomeemp   := DmDta.quTceemp_nome.Text;
      areaemp   := fieldByName('emp_ramo').asstring;
      respemp   := fieldByName('efu_nome').Asstring;
      caremp    := fieldbyname('efu_cargo').asstring;;
    end;
  end;

  procedure BuscaAlteracao;
  begin
    with quBuscaAlteracao do
    begin
      ParamByName('tce_cod').AsInteger := DmDta.quTcetce_cod.Value;
      Open;

      TemAlteracao := Not IsEmpty;

      if TemAlteracao then
      begin
        Last;
        Vig   := FieldByName('tal_vigencia').AsString;
        Ent1  := FormatDateTime('hh:nn', FieldByName('tal_horarioini1').Value);
        Sai1  := FormatDateTime('hh:nn', FieldByName('tal_horariofim1').Value);
        If Not FieldByName('tal_horarioini2').IsNull then
          Ent2  := FormatDateTime('hh:nn', FieldByName('tal_horarioini2').Value);
        If Not FieldByName('tal_horariofim2').IsNull then
          Sai2  := FormatDateTime('hh:nn', FieldByName('tal_horariofim2').Value);
        Bolsa := FieldByName('tal_novabolsa').AsFloat;
      end;

      Close;
    end;
  end;

  procedure dtcompleta;
  var
    dt,d,m,a :string;
    da :array[1..8] of string;
    me :array[1..12] of string;
  begin
    me[1]  :='Janeiro';
    me[2]  :='Fevereiro';
    me[3]  :='Mar�o';
    me[4]  :='Abril';
    me[5]  :='Maio';
    me[6]  :='Junho';
    me[7]  :='Julho';
    me[8]  :='Agosto';
    me[9]  :='Setembro';
    me[10] :='Outubro';
    me[11] :='Novembro';
    me[12] :='Dezembro';
    if Not TemAlteracao then
      dt := meTceAbert.Text
    else
      dt := Vig;
    da[1] :=dt[1];
    da[2] :=dt[2];
    da[3] :=dt[4];
    da[4] :=dt[5];
    da[5] :=dt[7];
    da[6] :=dt[8];
    da[7] :=dt[9];
    da[8] :=dt[10];
    d:= da[1]+da[2];
    m:= da[3]+da[4];
    a:= da[5]+ da[6]+da[7]+da[8];
    datac := d+' de '+me[strtoint(m)]+' de '+a+'. ';
  end;

  procedure Imprime;
  begin
    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'PlanoEstagio.doc');

    Var1.NextCell;
    var1.Insert('PLANO DE EST�GIO');
    Var1.NextCell;
    var1.Insert('Curitiba, '+datac);
    Var1.NextCell;
    var1.Insert('Institui��o de Ensino: ');
    Var1.NextCell;
    Var1.Insert(nomeEsc);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Insert('Nome do(a) estagi�rio(a): ');
    Var1.NextCell;
    Var1.Insert(DmDta.quTceest_nome.Text);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Insert('Orientador(a) na Institui��o de Ensino: ');
    Var1.NextCell;
    Var1.Insert(funcesc);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Empresa: ');
    Var1.Bold;
    Var1.Insert(nomeEmp + #13);
    Var1.Insert('�rea de Est�gio: '+AreaEmp+#13);
    Var1.Insert('Nome do(a) Supervisor(a): '+RespEmp+#13);
    Var1.Insert('Forma��o Profissional: '+CarEmp);
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Per�odo de Est�gio: ');
    Var1.Bold;
    // Testa se tem altera��o
    if Not TemAlteracao then
      Var1.Insert(DmDta.quTcetce_dataini.Text + ' at� ' + DmDta.quTcetce_datafim.Text)
    else
      Var1.Insert(Vig + ' at� ' + DmDta.quTcetce_datafim.Text);
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Hor�rio: ');
    Var1.Bold;

    // Testa se tem termo de altera��o emitido
    if Not TemAlteracao then
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if meEnt2.Text <> '  :  ' then
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text + ' / ' +  meEnt2.Text + ' at� ' + meSai2.Text)
      else
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text);
    end
    else
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if Ent2 <> '' then
        Var1.Insert(Ent1 + ' at� ' + Sai1 + ' / ' +  Ent2 + ' at� ' + Sai2)
      else
        Var1.Insert(Ent1 + ' at� ' + Sai1);
    end;

    Var1.NextCell;

    if Inst <> '385' then
    begin
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if Not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa .Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora')
      else
        Var1.Insert(' / M�s');

      Var1.nextCell;
      Var1.Bold;
      Var1.Insert('Demais benef�cios:');
    end
    else
    begin
      Var1.bold;
      var1.Insert('Carga Hor�ria Mensal: ');
      Var1.Bold;
      Var1.Insert(FormatFloat('0.00', DmDta.quTcetce_tothoras.AsFloat));
      Var1.NextCell;
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if Not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa .Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora')
      else
        Var1.Insert(' / M�s');
    end;
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Justificativa: ' );
    Var1.Bold;
    Var1.Insert('Permitir ao estudante desenvolver na pr�tica a teoria adquirida, ');
    Var1.Insert('mensurar suas possibilidades de realiza��o pessoal e profissional, ');
    Var1.Insert('adquirir uma atitude de trabalho sistematizado, desenvolvendo a ');
    Var1.Insert('consci�ncia de produtividade pelo exerc�cio da observa��o, do senso ');
    Var1.Insert('cr�tico e da criatividade, em situa��o real de trabalho.');
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Objetivos do Est�gio: ');
    Var1.Bold;
    Var1.Insert('Construir uma vis�o da empresa, onde se envolva mais conhecimento. ');
    Var1.Insert('Possibilitar um novo padr�o de ensino, onde o supervisor e aluno construam ');
    Var1.Insert('o conhecimento. Desenvolver a��es t�cnicas eficazes de an�lises a partir de ');
    Var1.Insert('projetos de pesquisas, buscando a qualidade na produ��o.');
    Var1.NextCell;
    Var1.NextCell;
    Var1.Bold;
    Var1.Insert('Atividades a Serem Desenvolvidas: ');
    Var1.Bold;

    If (at[1] <> '') and (at[2] = '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
      Var1.Insert(at[1] + '.')
    else If (at[1] <> '') and (at[2] <> '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(' e ' + at[2] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(' e ' + at[3] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(' e ' + at[4] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] <> '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(', ' + at[4]);
      Var1.Insert(' e ' + at[5] + '.');
    end;

    Var1.NextCell;
    If Inst <> '331' then
    begin
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Professor(a) Orientador(a) na I.E.');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Representante do CETEFE');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Estagi�rio(a)');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Unidade Concedente');
    end
    else
    begin
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Comiss�o Orientadora de Est�gio');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Representante do CETEFE');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Representante da UNIDADE CONCEDENTE');
      Var1.NextCell;
      Var1.Insert(#13+#13);
      Var1.Insert('_________________________________'+#13);
      Var1.Insert('Estudante');
    end;

    var1.appshow;
    Screen.Cursor := crDefault;
  end;

  procedure ImprimeUniandrade;
  begin
    var1 := CreateOleObject('Word.basic');
    var1.FileOpen(FORINI.Diretorio+'PlanoEstagio1.doc');
    Var1.CenterPAra;
    Var1.Insert(#13+#13+#13);
    Var1.Font('arial', 13);
    Var1.Bold;
    Var1.Insert('PLANO DE EST�GIO');
    Var1.Insert(#13+#13+#13);
    Var1.Font('arial', 9);
    var1.RightPara;
    var1.Insert('Curitiba, '+datac+#13+#13+#13+#13);
    Var1.JustifyPara;
    Var1.Bold;
    Var1.Insert('Institui��o de Ensino: ');
    Var1.Bold;
    Var1.Insert(nomeEsc+#13+#13+#13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Nome do(a) estagi�rio(a): ');
    Var1.Bold;
    Var1.Insert(DmDta.quTceest_nome.Text+#13+#13+#13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Orientador(a) na Institui��o de Ensino: ');
    Var1.Bold;
    Var1.Insert(CoordEsc +#13);
    Var1.Bold;
    Var1.Insert('Cargo: ');
    Var1.Bold;
    Var1.Insert('COORDENADOR DO CURSO DE ' + curso +#13);
    var1.Insert(#13+#13);
    Var1.Bold;
    Var1.Insert('Empresa: ');
    Var1.Bold;
    Var1.Insert(nomeEmp + #13);
    Var1.Bold;
    Var1.Insert('�rea de Est�gio: ');
    Var1.Bold;
    Var1.Insert(curso+#13);
    Var1.Bold;
    Var1.Insert('Nome do(a) Supervisor(a): ');
    Var1.Bold;
    Var1.Insert(SuperEst+#13);
    Var1.Bold;
    Var1.Insert('Cargo: ');
    Var1.Bold;
    Var1.Insert(CarSuperEst);
    Var1.Bold;
    Var1.Insert(#13+#13+#13);
    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Per�odo de Est�gio: ');
    Var1.Bold;

    // Testa se tem altera��o
    if Not TemAlteracao then
      Var1.Insert(DmDta.quTcetce_dataini.Text + ' at� ' + DmDta.quTcetce_datafim.Text + #9)
    else
      Var1.Insert(Vig + ' at� ' + DmDta.quTcetce_datafim.Text + #9);

    Var1.Bold;
    Var1.Insert('Hor�rio: ');
    Var1.Bold;

    // Testa se tem termo de altera��o emitido
    if Not TemAlteracao then
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if meEnt2.Text <> '  :  ' then
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text + ' / ' +  meEnt2.Text + ' at� ' + meSai2.Text)
      else
        Var1.Insert(meEnt1.Text + ' at� ' + meSai1.Text);
    end
    else
    begin
      // Testa se tem 2 hor�rios ou 4 hor�rios
      if Ent2 <> '' then
        Var1.Insert(Ent1 + ' at� ' + Sai1 + ' / ' +  Ent2 + ' at� ' + Sai2)
      else
        Var1.Insert(Ent1 + ' at� ' + Sai1);
    end;

    Var1.Insert(#13);

    if Inst <> '385' then
    begin
      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if Not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa .Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert(DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora'+#9)
      else
        Var1.Insert(' / M�s'+#9);

      Var1.Insert(#13+#13+#13);
    end
    else
    begin
      Var1.bold;
      var1.Insert('Carga Hor�ria Mensal: ');
      Var1.Bold;

      Var1.Insert(FormatFloat('0.00', DmDta.quTcetce_tothoras.AsFloat) + #9);

      Var1.bold;
      var1.Insert('Bolsa - Aux�lio: ');
      Var1.Bold;

      // Valor da bolsa
      if Not TemAlteracao then
      begin
        if DmDta.quTceTce_Bolsa .Value = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert(DmDta.quTcetce_bolsa.Text);
      end
      else
      begin
        if Bolsa = 0 then
          Var1.Insert('Sem Remunera��o')
        else
          Var1.Insert('R$ ' + FormatFloat('0.00', Bolsa));
      end;

      // Tipo de bolsa
      if cbTipoBolsa.ItemIndex = 0 then
        Var1.Insert(' / Hora'+#9)
      else
        Var1.Insert(' / M�s'+#9);
      Var1.Insert(#13+#13+#13);
    end;

    Var1.Bold;
    Var1.Insert(#13+'Justificativa:'+#13);
    Var1.Insert('Permitir ao estudante desenvolver na pr�tica a teoria adquirida, ');
    Var1.Insert('mensurar suas possibilidades de realiza��o pessoal e profissional, ');
    Var1.Insert('adquirir uma atitude de trabalho sistematizado, desenvolvendo a ');
    Var1.Insert('consci�ncia de produtividade pelo exerc�cio da observa��o, do senso ');
    Var1.Insert('cr�tico e da criatividade, em situa��o real de trabalho.'+#13+#13+#13);

    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Objetivos do Est�gio: ');
    Var1.Bold;
    Var1.Insert('Construir uma vis�o da empresa, onde se envolva mais conhecimento. ');
    Var1.Insert('Possibilitar um novo padr�o de ensino, onde o supervisor e aluno construam ');
    Var1.Insert('o conhecimento. Desenvolver a��es t�cnicas eficazes de an�lises a partir de ');
    Var1.Insert('projetos de pesquisas, buscando a qualidade na produ��o.'+#13+#13+#13);

    Var1.Font('Arial', 4);
    Var1.Insert(#13);
    Var1.Font('Arial', 9);
    Var1.Bold;
    Var1.Insert('Atividades a serem desenvolvidas: ');
    Var1.Bold;

    If (at[1] <> '') and (at[2] = '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
      Var1.Insert(at[1] + '.')
    else If (at[1] <> '') and (at[2] <> '') and (at[3] = '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(' E ' + at[2] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] = '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(' E ' + at[3] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] = '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(' E ' + at[4] + '.');
    end
    else If (at[1] <> '') and (at[2] <> '') and (at[3] <> '') and (at[4] <> '') and (at[5] <> '') then
    begin
      Var1.Insert(at[1]);
      Var1.Insert(', ' + at[2]);
      Var1.Insert(', ' + at[3]);
      Var1.Insert(', ' + at[4]);
      Var1.Insert(' E ' + at[5] + '.');
    end;


    var1.Insert(#13+#13+#13+#13);
    var1.Font('arial',8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial',8);
    var1.Insert(#13+'         Representante da INSTITUI��O DE ENSINO                          Coordenador de Curso na INSTITUI��O DE ENSINO ');
    var1.Insert(#13+#13+#13+#13+#13+#13);
    var1.Font('arial',8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial',8);
    var1.Insert(#13+'         Representante da UNIDADE CONCEDENTE                                      Supervisor na UNIDADE CONCEDENTE         ');
    var1.Insert(#13+#13+#13+#13+#13+#13);
    var1.Font('arial',8);
    var1.Insert('     ________________________________________                       ___________________________________________  ');
    var1.Font('arial',8);
    var1.Insert(#13+'                                Estudante                                                                                Representante do CETEFE');

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
    Screen.Cursor := crHourGlass;
    BuscaAlteracao;
    completadados;
    dtcompleta;
    IF Inst = '137' then
    begin
      InputQuery('Coordenador', 'Coordenador do Curso', CoordEsc);
      CoordEsc := AnsiUpperCase(CoordEsc);
      InputQuery('Supervisor', 'Supervisor de Est�gio', SuperEst);
      SuperEst := AnsiUpperCase(SuperEst);
      InputQuery('Supervisor', 'Cargo do Supervisor de Est�gio', CarSuperEst);
      CarSuperEst := AnsiUpperCase(CarSuperEst);
      imprimeUniandrade;
    end
    else
      imprime;
    Screen.Cursor := crDefault;
  end;
  MudaAba := True;
end;

procedure TFORTCE.meTceAbertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Digitou := True;
  inherited;
  if (not (quPrincipal.State in [dsInsert,dsEdit])) then quPrincipal.Edit;
end;

procedure TFORTCE.DBLookupComboBox1Exit(Sender: TObject);
var DtNasc, idade, unidade: String;
begin
  inherited;
  if (quPrincipal.State in [dsInsert,dsEdit]) then
  begin
    DtNasc := DmDta.BuscaCampo('Estudante', 'est_dtnasc', 'est_cod', quEncVagaEst_cod.AsInteger);

    try
      RetornaIdade(DtNasc, Idade, Unidade);

      if StrToInt(Idade) < 16 then
      begin
        MSGAVISO('Estudante menor de 16 anos!');
        DBEdit5.SetFocus;
        Salvou := False;
      end
      else
      begin
        if BuscaPerfil() then
          SelectNext(ActiveControl, True, True);
      end;
    except
    end;
  end;
end;

procedure TFORTCE.meTceDtRetKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Salvou  := True;
end;

procedure TFORTCE.meTceDtRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Digitou := True;
  if (not (quPrincipal.State in [dsInsert,dsEdit])) then quPrincipal.Edit;
  Retorno := True;
end;

procedure TFORTCE.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORTCE.edEstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edEstCodDblClick(Sender);
end;

procedure TFORTCE.LimpaParametros;
begin
  inherited;
  edPar.Clear;
  edEstCod.Clear;
  edEstNome.Clear;
  edEmpCod.Clear;
  edEmpNome.Clear;
  edInstCod.Clear;
  edInstNome.Clear;
end;

procedure TFORTCE.edInstCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORINS := TFORINS.Create(Self);
  FORINS.F2 := True;
  Screen.Cursor := crDefault;
  FORINS.ShowModal;

  if FORINS.F2Codigo <> '' then
  begin
    edInstCod.Text  := FORINS.F2Codigo;
    edInstNome.Text := FORINS.F2Nome;

    SelectNext(ActiveControl, True, True);
  end;

  FORINS.Free;
end;

procedure TFORTCE.edInstCodExit(Sender: TObject);
var
  ordem, argumento: String;
  data1, data2: String;
begin
  inherited;
  ordem := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edInstCod.Text <> '' then
  begin
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text));
    argumento := argumento + ' and e.inst_cod = ' + edInstCod.Text;
  end
  else
    edInstNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
    begin
      argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        // data inicial e final
        data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
        data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                            StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
        argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
      end;
    end;
  end;

  DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                 'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  estadoNavegando();
end;

procedure TFORTCE.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then edInstCodDblClick(Sender);
end;

procedure TFORTCE.meData1Exit(Sender: TObject);
begin
  inherited;
  If (meData2.Text = '  /  /    ') and (meData1.Text <> '  /  /    ') then
    meData2.Text := meData1.Text;
end;

procedure TFORTCE.meData2Exit(Sender: TObject);
var
  ano,mes,dia: Word;
  ordem,argumento,campo,data: string;
  data1, data2: String;
begin
  inherited;
  If cbTipoPesquisa.ItemIndex = 5 then
    Campo := 't.tce_data'
  else If cbTipoPesquisa.ItemIndex = 6 then
    Campo := 't.tce_dataini'
  else If cbTipoPesquisa.ItemIndex = 7 then
    Campo := 't.tce_datafim'
  else If cbTipoPesquisa.ItemIndex = 8 then
    Campo := 't.tce_datares';

  ordem     := 't.tce_cod';

  if meData1.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData1.Text),ano,mes,dia);
    data      := IntToStr(mes) + '/' + IntToStr(dia) + '/' + IntToStr(ano);
    argumento := campo + ' >= ''' + data + '''';
  end;
  if meData2.Text <> '  /  /    ' then
  begin
    DecodeDate(StrToDate(meData2.Text),ano,mes,dia);
    data      := IntToStr(mes) + '/' + IntToStr(dia) + '/' + IntToStr(ano);
    If argumento <> '' then argumento := argumento + ' and ';
    argumento := argumento + campo + ' <= ''' + data + '''';
  end;

  If (Ordem <> '') and (Argumento <> '') then
  begin
    argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod and ' + argumento;
    // situa��o
    case rgSituacao.ItemIndex of
      0: argumento := argumento + ' and t.tce_situacao = ''0''';
      1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
      2:
      begin
        argumento := argumento + ' and t.tce_situacao = ''7''';
        // data de rescis�o
        if (edAno.Text <> '') and (edMes.Text <> '') then
        begin
          // data inicial e final
          data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
          data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                              StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

          // verifica se j� n�o existe cl�usula where
          argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
        end;
      end;
    end;

    DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                   'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFORTCE.btImpressaoClick(Sender: TObject);
begin
  inherited;
  If quPrincipal.Isempty then
  begin
    MSGERRO('N�o h� registros para imprimir!');
    Exit;
  end;
                     {
  Screen.Cursor := crHourGlass;
  qrTCE := TQRTCE.Create(Self);
  Screen.Cursor := crDefault;
  qrTCE.Preview;
  qrTCE.Free;       }
  GerarExcel(DmDta.quTce, Caption);
end;

procedure TFORTCE.btSabadoClick(Sender: TObject);
begin
  inherited;
  If Not DBCheckBox7.Checked then
  begin
    MSGAVISO('Selecione o s�bado para habilitar essa op��o!');
    Exit;
  end;

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
    FORTCED       := TFORTCED.Create(Self);
    Screen.Cursor := crDefault;
    FORTCED.ShowModal;

    // recalcula o hor�rio
    if (not quPrincipal.FieldByName('tce_horsabini1').IsNull) then
      Hr5   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabini1').Value)
    else
      Hr5   := '';
    if (not quPrincipal.FieldByName('tce_horsabfim1').IsNull) then
      Hr6   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabfim1').Value)
    else
      Hr6   := '';
    if (not quPrincipal.FieldByName('tce_horsabini2').IsNull) then
      Hr7   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabini2').Value)
    else
      Hr7   := '';
    if (not quPrincipal.FieldByName('tce_horsabfim2').IsNull) then
      Hr8   := FormatDateTime('hh:nn',quPrincipal.FieldByName('tce_horsabfim2').Value)
    else
      Hr8   := '';
    // chama rotina que faz o rec�lculo das horas
    Digitou := True;
    CalcHora();
  end;
  MudaAba := True;
end;

procedure TFORTCE.edCurCodDblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FORCUR        := TFORCUR.Create(Self);
  FORCUR.F2     := True;
  Screen.Cursor := crDefault;
  FORCUR.ShowModal;

  if FORCUR.F2Codigo <> '' then
  begin
    edCurCod.Text  := FORCUR.F2Codigo;
    edCurNome.Text := FORCUR.F2Nome;
    SelectNext(ActiveControl, True, True);
  end;

  FORCUR.Free;
end;

procedure TFORTCE.edCurCodExit(Sender: TObject);
var
  ordem,argumento: String;
  data1, data2: String;
begin
  inherited;
  ordem     := 't.tce_cod';
  argumento := 't.vag_cod *= v.vag_cod and t.est_cod = e.est_cod and t.emp_cod = m.emp_cod';

  if edCurCod.Text <> '' then
  begin
    edCurNome.Text := DmDta.BuscaCampo('Curso', 'cur_nome', 'cur_cod', StrToInt(edCurCod.Text));
    argumento := argumento + ' and e.cur_cod = ' + edCurCod.Text;
  end
  else
    edCurNome.Text := '';

  // situa��o
  case rgSituacao.ItemIndex of
    0: argumento := argumento + ' and t.tce_situacao = ''0''';
    1: argumento := argumento + ' and t.tce_situacao in (''1'',''2'',''3'',''4'',''5'',''6'')';
    2:
    begin
      argumento := argumento + ' and t.tce_situacao = ''7''';
      // data de rescis�o
      if (edAno.Text <> '') and (edMes.Text <> '') then
      begin
        // data inicial e final
        data1    := '''' + edMes.Text + '/01/' + edAno.Text + '''';
        data2    := '''' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                            StrToInt(edAno.Text))) + '/' + edAno.Text + '''';

        // verifica se j� n�o existe cl�usula where
        argumento := argumento + ' and t.tce_datares between ' + data1 + ' and ' + data2;
      end;
    end;
  end;

  DMDta.montaSql(quPrincipal,'t.*, e.est_nome, V.vag_qtde, V.vag_qtdepreenc, V.vag_cancelada, m.emp_nome',
                 'Tce T, Vaga V, Estudante E, Empresa M', argumento, ordem);
  estadoNavegando();
end;

procedure TFORTCE.edCurCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = vk_F2 then edCurCodDblClick(sender);
end;

procedure TFORTCE.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  lblAno.Visible := rgSituacao.ItemIndex = 2;
  edAno.Visible  := rgSituacao.ItemIndex = 2;
  edMes.Visible  := rgSituacao.ItemIndex = 2;

  If edAno.Visible then edAno.SetFocus;

  // chama o exit do campo do page de cima
  Case Notebook3.PageIndex of
    0: edParExit(sender);
    1: edEmpCodExit(sender);
    2: edEstCodExit(sender);
    3: edInstCodExit(sender);
    4: edCurCodExit(sender);
    5,6,7,8: meData2Exit(sender);
  end;
end;

procedure TFORTCE.edMesExit(Sender: TObject);
begin
  inherited;
  // chama o exit do campo do page de cima
  Case Notebook3.PageIndex of
    0: edParExit(sender);
    1: edEmpCodExit(sender);
    2: edEstCodExit(sender);
    3: edInstCodExit(sender);
    4: edCurCodExit(sender);
    5,6,7,8: meData2Exit(sender);
  end;
end;

procedure TFORTCE.DBCheckBox2Click(Sender: TObject);
begin
  inherited;
  If pgPrincipal.ActivePageIndex = 1 then
  begin
    Digitou := True;
    CalcHora;
  end;
end;

procedure TFORTCE.DBCheckBox7Click(Sender: TObject);
begin
  inherited;
  If pgPrincipal.ActivePageIndex = 1 then
    Digitou := True;
end;

end.
