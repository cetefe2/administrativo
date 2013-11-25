unit TPOSExc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEXC1 = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    Label1: TLabel;
    btEnter: TBitBtn;
    btEmail: TSpeedButton;
    GroupBox2: TGroupBox;
    edInstCod: TEdit;
    edInstNome: TEdit;
    GroupBox3: TGroupBox;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure meDataIniExit(Sender: TObject);
    procedure meDataFimExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure edInstCodExit(Sender: TObject);
    procedure edInstCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edInstCodDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    PorEmpresa: Boolean;
    sEMailEmpresa: String;
  end;

var
  FORSEXC1: TFORSEXC1;

implementation

Uses TPODTA, TPOFNC, TPORSegExc, TPORResUFPR, TPOINS, TPORSegExc1, TPOEMP,
  TPOEML;

{$R *.DFM}

procedure TFORSEXC1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEmailClick(Sender);
  end;
end;

procedure TFORSEXC1.btImprimirClick(Sender: TObject);
begin
  if (meDataIni.Text = '  /  /    ') or (meDataFim.Text = '  /  /    ') then
  begin
    MSGERRO('Período não informado!');
    meDataIni.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    QRSegExc1 := TQRSegExc1.Create(Application);
    QRSegExc1.DataIni := meDataIni.Text;
    QRSegExc1.DataFim := meDataFim.Text;
    Screen.Cursor := crDefault;
    QRSegExc1.Preview;
    QRSegExc1.Free;
  end;
end;

procedure TFORSEXC1.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEXC1.meDataIniExit(Sender: TObject);
begin
  if meDataIni.Text <> '  /  /    ' then
    if not validadata(meDataIni.Text) then
      meDataIni.SetFocus;
end;

procedure TFORSEXC1.meDataFimExit(Sender: TObject);
begin
  if meDataFim.Text <> '  /  /    ' then
  begin
    if not validadata(meDataFim.Text) then
      meDataFim.SetFocus
    else
    begin
      if (meDataIni.Text <> '  /  /    ') and (meDataFim.Text <> '  /  /    ') then
      begin
        with DmDta.quSeguroExc do
        begin
          Close;
          Sql.Clear;
          Sql.Add('select');
          Sql.Add('  e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, ');
          Sql.Add('  t.tce_dataini, t.tce_datafim, t.tce_situacao, e.est_dtnasc, 0 TotEstagiarios');
           Sql.Add('from');
          Sql.Add('  tce t, Estudante e');
          Sql.Add('where');
          Sql.Add('  t.est_cod = e.est_cod and');
          Sql.Add('  t.tce_datafim between :data1 and :data2 and');
          Sql.Add('  t.tce_situacao = ''0''');
          If edEmpCod.Text <> '' then
            Sql.Add('  and t.emp_cod = ' + edEmpCod.Text);
          If edInstCod.Text <> '' then
            Sql.Add('  and e.inst_cod = ' + edInstCod.Text);

          Sql.Add('union');
          Sql.Add('select');
          Sql.Add('  e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email,');
          Sql.Add('  t.tpr_dataini, t.tpr_datafim, tce.tce_situacao, e.est_dtnasc, 0 TotEstagiarios');
          Sql.Add('from');
          Sql.Add('  tce, tceAditivo t, Estudante e');
          Sql.Add('where');
          Sql.Add('  tce.est_cod = e.est_cod and');
          Sql.Add('  t.tce_cod = tce.tce_cod and');
          Sql.Add('  t.tpr_datafim between :data1 and :data2 and');
          Sql.Add('  tce.tce_situacao <> ''7'' and');
          Sql.Add('  tce.tce_situacao <> ''0''');
          If edEmpCod.Text <> '' then
            Sql.Add('  and tce.emp_cod = ' + edEmpCod.Text);
          If edInstCod.Text <> '' then
            Sql.Add('  and e.inst_cod = ' + edInstCod.Text);


          Sql.Add('order by');
          Sql.Add('  e.est_nome');
          ParamByName('data1').value := StrToDateTime(meDataIni.Text);
          ParamByName('data2').value := StrToDateTime(meDataFim.Text);
          Open;
        end;
      end;
    end;
  end;
end;

procedure TFORSEXC1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quSeguroExc.Close;
  Action := caFree;
end;

procedure TFORSEXC1.FormShow(Sender: TObject);
begin
  edInstCod.Text := '331'; // código da UFPR
  edInstCodExit(Sender);

  // posiciona a tela
  If PorEmpresa then
  begin
    DBGrid1.Top       := 115;
    DBGrid1.Height    := 172;
    GroupBox3.Visible := True;
  end
  else
  begin
    DBGrid1.Top       := 62;
    DBGrid1.Height    := 224;
    GroupBox3.Visible := False;
  end;

  with DmDta.quSeguroExc do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  e.est_cod, e.est_nome, e.est_cpf, t.tce_cod, e.est_email, ');
    Sql.Add('  t.tce_dataini, t.tce_datafim, t.tce_situacao, e.est_dtnasc,');
    Sql.Add('  (select count(*) from Tce where');
    Sql.Add('   tce_datares between :data1 and :data2) as TotEstagiarios');
    Sql.Add('from');
    Sql.Add('  tce t, Estudante e');
    Sql.Add('where');
    Sql.Add('  t.est_cod = e.est_cod and');
    Sql.Add('  t.tce_datares between :data1 and :data2');
    Sql.Add('  and e.inst_cod = ' + edInstCod.Text);
    Sql.Add('order by');
    Sql.Add('  e.est_nome');
    ParamByName('data1').AsDateTime := StrToDateTIme('01/01/1990');
    ParamByName('data2').AsDateTime := StrToDateTIme('01/01/1990');
    Open;
  end;
end;

procedure TFORSEXC1.btEnterClick(Sender: TObject);
begin
  SelectNExt(ActiveControl,True,True);
end;

procedure TFORSEXC1.btEmailClick(Sender: TObject);
var
  F: TextFile;
  linha: String;
  sCopiaOculta, sPara: String;
  sArquivos:    TStringList;

begin
  AssignFile(F, 'C:\TPool\Lista.txt');
  Rewrite(F);
  WriteLn(F, 'CETEFE  -  Avaliação de Desempenho');
  WriteLn(F, 'Período: ' + meDataIni.Text + ' a ' + meDataFim.Text);
  WriteLn(F);
  WriteLn(F, PreencheEspacosEsquerda('TCE', 9) + ' ' + PreencheEspacosDireita('Nome', 50) + ' ' + PreencheEspacosDireita('Início', 13) +
             ' ' + PreencheEspacosDireita('Fim', 13) + ' ' + PreencheEspacosDireita('Data Nasc.', 13) + ' '  + PreencheEspacosDireita('CPF', 20));
  WriteLn(F, PreencheTracos(9) + ' ' + PreencheTracos(50) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(13) + ' ' + PreencheTracos(20));

  with DmDta.quSeguroExc do
  begin
    DisableControls;
    First;

    While Not Eof do
    begin
      linha := PreencheEspacosEsquerda(FieldByName('tce_cod').Text, 9) + ' ' +
               PreencheEspacosDireita(FieldByName('est_nome').Text, 50) + ' ' +
               PreencheEspacosDireita(FieldByName('tce_dataini').Text, 13) + ' ' +
               PreencheEspacosDireita(FieldByName('tce_datafim').Text, 13) + ' ' +
               PreencheEspacosDireita(FieldByName('est_dtnasc').Text, 13) + ' ' +
               PreencheEspacosDireita(FieldByName('cpfFormatado').Text, 20);

      WriteLn(F, linha);
      Next;
    end;

    WriteLn(F);
    CloseFile(F);

    First;
    EnableControls;
  end;

  sCopiaOculta := '';
  sPara        := '';
  sArquivos    := TStringList.Create();

  Screen.Cursor := crHourGlass;

  // verifica o tipo de e-mail
  If PorEmpresa then
  begin
    sPara        := sEMailEmpresa;
    // anexos
    sArquivos.Add('C:\TPool\RelEmpresa.doc');
    sArquivos.Add('C:\TPool\Lista.txt');
  end
  else
  begin
    // Monta o cópia oculta
    with DmDta.quSeguroExc do
    begin
      DisableControls;
      First;

      While Not Eof do
      begin
        If FieldByName('est_email').Text <> '' then
          sCopiaOculta := sCopiaOculta + FieldByName('est_email').Text + '; ';
        Next;
      end;

      First;
      EnableControls;
    end;
    // anexos
    sArquivos.Add('C:\TPool\RelEstagiario.doc');
  end;

  FOREML        := TFOREML.Create(Self);
  FOREML.RegistrarEmail(sPara, sCopiaOculta, sArquivos);
  Screen.Cursor := crDefault;
  FOREML.ShowModal;
end;

procedure TFORSEXC1.edInstCodExit(Sender: TObject);
begin
  inherited;
  if edInstCod.Text <> '' then
    edInstNome.Text := DmDta.BuscaCampo('Instituicao', 'inst_nome', 'inst_cod', StrToInt(edInstCod.Text))
  else
    edInstNome.Text := '';
end;

procedure TFORSEXC1.edInstCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edInstCodDblClick(Sender);
end;

procedure TFORSEXC1.edInstCodDblClick(Sender: TObject);
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

procedure TFORSEXC1.FormCreate(Sender: TObject);
begin
  PorEmpresa := False;
end;

procedure TFORSEXC1.edEmpCodDblClick(Sender: TObject);
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

    SelectNext(ActiveControl, True, True);
  end;

  FOREMP.Free;
end;

procedure TFORSEXC1.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));
    sEMailEmpresa  := DmDta.BuscaCampo('Empresa', 'emp_email', 'emp_cod', StrToInt(edEmpCod.Text));
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSEXC1.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

end.
