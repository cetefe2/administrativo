unit TPOSEMP3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEMP3 = class(TForm)
    Bevel1: TBevel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edAno: TEdit;
    edMes: TEdit;
    edTotEst: TEdit;
    edTotResc: TEdit;
    Label4: TLabel;
    btEmail: TSpeedButton;
    cbVestibular: TComboBox;
    Label5: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEnterClick(Sender: TObject);
    procedure edAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edMesExit(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure cbVestibularChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery;
  public
    { Public declarations }
    BB: Boolean;
    Menores: Boolean;
  end;

var
  FORSEMP3: TFORSEMP3;

implementation

Uses TPOEMP, TPODTA, TPOFNC, TPOREmp, TPOREmp4, QRExport, QRExtra;

{$R *.DFM}

procedure TFORSEMP3.FormShow(Sender: TObject);
begin
  with DmDta.quEstEmp do
  begin
    Close;
    Sql.Clear;

    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, e.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, m.emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade,');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  '''' as tpr_dataini, '''' as tpr_datafim, e.est_pgtolib, i.inst_nivel');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.emp_cod = -1');

    Open;
    edTotEst.Text := '0';
    edTotResc.Text := '0';

    If Not BB Then
    begin
      FieldByName('CpfFormatado').Visible := False;
      FieldByName('est_cidade').Visible   := False;
      FieldByName('tce_dataini').Visible  := True;
      FieldByName('tce_datafim').Visible  := True;
      FieldByName('tpr_dataini').Visible  := True;
      FieldByName('tpr_datafim').Visible  := True;
    end
    else
    begin
      FieldByName('CpfFormatado').Visible := True;
      FieldByName('est_cidade').Visible   := True;
      FieldByName('tce_dataini').Visible  := False;
      FieldByName('tce_datafim').Visible  := False;
      FieldByName('tpr_dataini').Visible  := False;
      FieldByName('tpr_datafim').Visible  := False;
    end;
  end;
  edAno.Text := IntToStr(RetornaValorAno());
  edMes.Text := IntToStr(RetornaValorMes());
  cbVestibular.ItemIndex := 2;
end;

procedure TFORSEMP3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    //vk_F2: edEmpCodDblClick(Sender);
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSEMP3.btImprimirClick(Sender: TObject);
begin
  if edEmpCod.Text = '' then
  begin
    MSGERRO('Empresa não informada!');
    edEmpCod.SetFocus;
  end
  else
  begin
    If Not BB Then
    begin
      Screen.Cursor := crHourGlass;
      QREmp := TQREmp.Create(Application);
      case cbVestibular.ItemIndex of
        0: QREmp.QRTitulo.Caption := QREmp.QRTitulo.Caption + ' - Vestib. Verão';
        1: QREmp.QRTitulo.Caption := QREmp.QRTitulo.Caption + ' - Vestib. Inverno';
      end;
      QREmp.Mes := 'Mês: ' + PreencheZerosEsquerda(edMes.Text,2) + '/' + edAno.Text;
      Screen.Cursor := crDefault;
      QREmp.Preview;
      QREmp.Free;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      QREmp4 := TQREmp4.Create(Application);
      case cbVestibular.ItemIndex of
        0: QREmp4.QRTitulo.Caption := QREmp4.QRTitulo.Caption + ' - Vestib. Verão';
        1: QREmp4.QRTitulo.Caption := QREmp4.QRTitulo.Caption + ' - Vestib. Inverno';
      end;
      QREmp4.Mes := 'Mês: ' + PreencheZerosEsquerda(edMes.Text,2) + '/' + edAno.Text;
      Screen.Cursor := crDefault;
      QREmp4.Preview;
      QREmp4.Free;
    end;
  end;
end;

procedure TFORSEMP3.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMP3.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    edEmpNome.Text := FOREMP.F2Nome;
    SelectNExt(ActiveControl,True,True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;

  DmDta.quEmpresa.Close;
  FOREMP.Free;
end;

procedure TFORSEMP3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quEstEmp.Close;
  Action := caFree;
end;

procedure TFORSEMP3.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
      AbreQuery;
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSEMP3.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F2: edEmpCodDblClick(Sender);
  end;
end;

procedure TFORSEMP3.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMP3.edAnoKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORSEMP3.edMesExit(Sender: TObject);
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
      if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
        AbreQuery;
    end;
  end;

end;

procedure TFORSEMP3.edAnoExit(Sender: TObject);
begin
  if edAno.Text <> '' then
  begin
    if Not ValidaAno(edAno.Text) then
    begin
      edAno.SetFocus;
      Exit;
    end;
  end
  else if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
    AbreQuery;
end;

procedure TFORSEMP3.AbreQuery;
var
   data1, data2: String;
   totTotal, TotResc: Integer;
   dtNasc: String;
   Ano, Mes, Dia: Word;


  Function IncluiTipoEstagiario(): String;
  var
    Retorno: String;
  begin
    case cbVestibular.ItemIndex of
      0: Retorno := 'And e.pcu_vestib = ''0''';
      1: Retorno := 'And e.pcu_vestib = ''1''';
    Else
      Retorno := '';
    end;
    Result := Retorno;
  end;

  function IncluiMenores(): String;
  begin
    If Menores then
    begin
       Result := '  and e.est_dtnasc > #' + dtNasc + '#' +
                 '  and (e.est_cidade LIKE ''%CURITIBA%''' +
                 '  or   e.est_cidade LIKE ''%COLOMBO%'''  +
                 '  or   e.est_cidade LIKE ''%PINHAIS%'''  +
                 '  or   e.est_cidade LIKE ''%FAZENDA%'''  +
                 '  or   e.est_cidade LIKE ''%ARAUCA%'''   +
                 '  or   e.est_cidade LIKE ''%CAMPO LARGO%''' +
                 '  or   e.est_cidade LIKE ''%CAMPO MAGRO%''' +
                 '  or   e.est_cidade LIKE ''%MANDIRITUBA%''' +
                 '  or   e.est_cidade LIKE ''%QUATRO BARRAS%''' +
                 '  or   e.est_cidade LIKE ''%LAPA%'' )';
    end;
  end;

begin

  DecodeDate(Date, Ano, Mes, Dia);
  dtNasc := IntToStr(Dia) + '/' + IntToStr(Mes) + '/' + IntToStr(Ano-18);

  totTotal := 0;
  totResc  := 0;
  data1    := '#' + edMes.Text + '/01/' + edAno.Text + '#';
  data2    := '#' + edMes.Text + '/' + IntToStr(RetornaDiasMes(StrToInt(edMes.Text),
                                 StrToInt(edAno.Text))) + '/' + edAno.Text + '#';

  with DmDta.quEstEmp do
  begin
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, e.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, m.emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade,');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  '''' as tpr_dataini, '''' as tpr_datafim, e.est_pgtolib, i.inst_nivel');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
    Sql.Add('  t.tce_situacao = ''0'' and');
    Sql.Add('  t.tce_dataini < ' + data2 + ' and');
    Sql.Add('  t.tce_datafim > ' + data1);
    Sql.Add(IncluiTipoEstagiario());
    Sql.Add(IncluiMenores());
    Sql.Add('union');
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, e.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, m.emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade,');
    Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel');
    Sql.Add('from');
    Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.tce_cod = a.tce_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
    Sql.Add('  t.tce_situacao <> ''7'' and');
    Sql.Add('  Int(t.tce_situacao) = a.prg_cod and');
    Sql.Add('  t.tce_situacao <> ''0'' and');
    Sql.Add('  a.tpr_dataini < ' + data2+ ' and');
    Sql.Add('  a.tpr_datafim > ' + data1);
    Sql.Add(IncluiTipoEstagiario());
    Sql.Add(IncluiMenores());
    Sql.Add('union');
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, e.inst_nome, e.est_bairro,');
    Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, m.emp_nomerespcomp,');
    sql.add('  e.est_cpf, e.est_cidade,');
    Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
    Sql.Add('  '''' as tpr_dataini, '''' as tpr_datafim, e.est_pgtolib, i.inst_nivel');
    Sql.Add('from');
    Sql.Add('  tce t, estudante e, Empresa m, Instituicao i');
    Sql.Add('where');
    Sql.Add('  e.inst_cod = i.inst_cod and');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.emp_cod = m.emp_cod and');
    Sql.Add('  t.tce_situacao = ''7'' and');
    Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
    Sql.Add('  t.tce_dataini < ' + data2 + ' and');
    Sql.Add('  t.tce_datares > ' + data1);
    Sql.Add(IncluiTipoEstagiario());
    Sql.Add(IncluiMenores());
    Sql.Add('order by');
    Sql.Add('  e.est_nome');
    Open;

    DisableControls;
    First;
    While Not Eof do
    begin
      if Not FieldByName('tce_datares').IsNull then
      begin
        if FieldByName('tce_datares').AsDateTime < Date then
          TotResc := totResc + 1
        else
          TotTotal := totTotal + 1;
      end
      else
        TotTotal := totTotal + 1;
      Next;
    end;
    First;
    EnableControls;
    edTotEst.Text := IntToStr(TotTotal);
    edTotResc.Text := IntToStr(TotResc);
  end;
end;

procedure TFORSEMP3.btEmailClick(Sender: TObject);
var
  F: TextFile;
  fone, linha: String;

begin
  Screen.Cursor := crHourGlass;
  AssignFile(F, 'C:\temp\Relatorio.txt');
  Rewrite(F);

  WriteLn(F, 'CETEFE  -  Estagiários por Empresa  -  Mês: ' + edMes.Text + '/' + edAno.Text);
  case cbVestibular.ItemIndex of
    0: WriteLn(F, 'Vestibular de Verão');
    1: WriteLn(F, 'Vestibular de Inverno');
  end;
  WriteLn(F);
  fone := DmDta.quEstEmpemp_telefone.Text;
  WriteLn(F, 'Empresa: ' + DmDta.quEstEmpemp_nome.Text);
  WriteLn(F, 'Responsável: ' + DmDta.quEstEmpemp_nomerespcomp.Text + '  -  Telefone: ' + '(' + Copy(fone,1,2) + ') ' + Copy(fone,3,4) + '-' + Copy(fone,7,4));
  WriteLn(F);
  If Not BB Then
  begin
    WriteLn(F, PreencheEspacosEsquerda('TCE', 8) + ' ' + PreencheEspacosDireita('Nome', 50) + ' ' + PreencheEspacosDireita('Início', 15) + ' ' +
               PreencheEspacosDireita('Fim', 15) + ' ' + PreencheEspacosDireita('Início Pror.', 15) + ' ' + PreencheEspacosDireita('Fim Pror.', 15) + ' ' +
               PreencheEspacosDireita('Situação Atual', 25) + ' ' + PreencheEspacosDireita('Documentos', 25));
    WriteLn(F, PreencheTracos(8) + ' ' + PreencheTracos(50) + ' ' + PreencheTracos(15) + ' ' + PreencheTracos(15) + ' ' + PreencheTracos(15) + ' ' +
               PreencheTracos(15) + ' ' + PreencheTracos(25) + ' ' + PreencheTracos(25));
  end
  else
  begin
    WriteLn(F, PreencheEspacosEsquerda('TCE', 8) + ' ' + PreencheEspacosDireita('Nome', 50) + ' ' +
               PreencheEspacosDireita('CPFFormatado', 20) + ' ' + PreencheEspacosDireita('Cidade', 40) + ' ' + PreencheEspacosDireita('Situação', 25));
    WriteLn(F, PreencheTracos(8) + ' ' + PreencheTracos(50) + ' ' + PreencheTracos(20) + ' ' + PreencheTracos(40) + ' ' + PreencheTracos(25));
  end;

  with DmDta.quEstEmp do
  begin
    DisableControls;
    First;

    While Not Eof do
    begin
      If Not BB Then
        linha := PreencheEspacosEsquerda(FieldByName('tce_cod').Text, 8) + ' ' +
                 PreencheEspacosDireita(FieldByName('est_nome').Text, 50) + ' ' +
                 PreencheEspacosDireita(FieldByName('tce_Dataini').Text, 15) + ' ' +
                 PreencheEspacosDireita(FieldByName('tce_datafim').Text, 15) + ' ' +
                 PreencheEspacosDireita(FieldByName('tpr_dataini').Text, 15) + ' ' +
                 PreencheEspacosDireita(FieldByName('tpr_datafim').Text, 15) + ' ' +
                 PreencheEspacosDireita(FieldByName('DescSituacao').Text, 25) + ' ' +
                 PreencheEspacosDireita(FieldByName('DescLiberacao').Text, 25)
      else
        linha := PreencheEspacosEsquerda(FieldByName('tce_cod').Text, 8) + ' ' +
                 PreencheEspacosDireita(FieldByName('est_nome').Text, 50) + ' ' +
                 PreencheEspacosDireita(FieldByName('CpfFormatado').Text, 20) + ' ' +
                 PreencheEspacosDireita(FieldByName('est_cidade').Text, 40) + ' ' +
                 PreencheEspacosDireita(FieldByName('DescSituacao').Text, 25);
      WriteLn(F, linha);
      Next;
    end;

    WriteLn(F);
    WritelN(F, 'Total de Ativos: ' + edTotEst.Text + '  -  Total de Rescindidos: ' + edTotResc.Text);
    CloseFile(F);

    First;
    EnableControls;
  end;

  Screen.Cursor := crDefault;
  MSGAviso('Arquivo "C:\Temp\Relatorio.txt" gerado com sucesso!');
end;

procedure TFORSEMP3.cbVestibularChange(Sender: TObject);
begin
  if (edEmpNome.Text <> '') and (edAno.Text <> '') and (edMes.Text <> '') then
    AbreQuery;
end;

procedure TFORSEMP3.FormCreate(Sender: TObject);
begin
  BB      := False;
  Menores := False;
end;

end.
