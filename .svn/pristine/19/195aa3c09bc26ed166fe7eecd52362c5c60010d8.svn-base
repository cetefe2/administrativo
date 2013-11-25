unit TPOSPEMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSPEMP = class(TForm)
    Bevel1: TBevel;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    Label1: TLabel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    edAno1: TEdit;
    edMes1: TEdit;
    edAno2: TEdit;
    edMes2: TEdit;
    btEnter: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    edTotBolsa: TEdit;
    edTotCont: TEdit;
    btEmail: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edAno1KeyPress(Sender: TObject; var Key: Char);
    procedure edAno1Exit(Sender: TObject);
    procedure edMes1Exit(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORSPEMP: TFORSPEMP;

implementation

Uses TPOEMP, TPODTA, TPOFNC, TPORPEmp;

{$R *.DFM}

procedure TFORSPEMP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F4: Close;
    vk_F2: edEmpCodDblClick(Sender);
    vk_F5: btImprimirClick(Sender);
    vk_F6: btEMailClick(Sender);
  end;
end;

procedure TFORSPEMP.btImprimirClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QRPEmp := TQRPEmp.Create(Application);
  QRPEmp.Empresa := edEmpNome.Text;
  Screen.Cursor := crDefault;
  QRPEmp.Preview;
  QRPEmp.Free;
end;

procedure TFORSPEMP.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSPEMP.edEmpCodDblClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FOREMP := TFOREMP.Create(Self);
  FOREMP.F2 := True;
  Screen.Cursor := crDefault;
  FOREMP.ShowModal;

  if FOREMP.F2Codigo <> '' then
  begin
    edEmpCod.Text  := FOREMP.F2Codigo;
    SelectNext(ActiveControl,True,True);
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSPEMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quSPgto.Close;
  Action := caFree;
end;

procedure TFORSPEMP.FormShow(Sender: TObject);
begin
  with DmDta.quSPgto do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select (select emp_nome from empresa where emp_cod=fatura.emp_cod) Empresa, ');
    Sql.Add('  *');
    Sql.Add('from');
    Sql.Add('  Fatura');
    Sql.Add('where');
    Sql.Add('  fat_numero = -1');
    Open;
  end;
end;

procedure TFORSPEMP.edAno1KeyPress(Sender: TObject; var Key: Char);
begin
  VerificaNumero(Key);
end;

procedure TFORSPEMP.edAno1Exit(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    if not ValidaAno(TEdit(Sender).text) then
      TEdit(Sender).SetFocus;
end;

procedure TFORSPEMP.edMes1Exit(Sender: TObject);
var argumento : String;
    Bolsa, Cont: Double;
begin
  if TEdit(Sender).Text <> '' then
  begin
    if not ValidaMes(TEdit(Sender).text) then
      TEdit(Sender).SetFocus;
  end;

  with DmDta.quSPgto do
  begin
    argumento := '';
    Close;
    Sql.clear;
    Sql.Add('select (select emp_nome from empresa where emp_cod=fatura.emp_cod) Empresa,');
    Sql.Add('  *');
    Sql.Add('from');
    Sql.Add('  Fatura');

    if (EdEmpCod.Text <> '') then
      argumento := 'emp_cod = ' + edEmpCod.Text;

    if (EdAno1.Text <> '') and (EdMes1.Text <> '') then
    begin
      if argumento = '' then
        argumento := '(fat_ano * 12 + fat_mes) >= ' + IntToStr(StrToInt(edAno1.Text) * 12 + StrToInt(EdMes1.Text))
      else
        argumento := argumento + ' and (fat_ano * 12 + fat_mes) >= ' + IntToStr(StrToInt(edAno1.Text) * 12 + StrToInt(EdMes1.Text));
    end;

    if (EdAno2.Text <> '') and (EdMes2.Text <> '') then
    begin
      if argumento = '' then
        argumento := '(fat_ano * 12 + fat_mes) <= ' + IntToStr(StrToInt(edAno2.Text) * 12 + StrToInt(EdMes2.Text))
      else
        argumento := argumento + ' and (fat_ano * 12 + fat_mes) <= ' + IntToStr(StrToInt(edAno2.Text) * 12 + StrToInt(EdMes2.Text));
    end;

    Sql.Add('where ' + Argumento);
    Sql.Add('order by fat_numero desc');
    Open;

    if Not IsEmpty then
    begin
      First;
      Bolsa := 0;
      Cont  := 0;

      While Not Eof do
      begin
        Bolsa := Bolsa + FieldByName('fat_totbolsa').AsFloat;
        Cont  := Cont  + FieldByName('fat_totcont').AsFloat;
        Next;
      end;
      First;

      edTotBolsa.Text := 'R$ ' + FormatFloat('#,###,##0.00', bolsa);
      edTotCont.Text  := 'R$ ' + FormatFloat('#,###,##0.00', Cont);
    end;
  end;
end;

procedure TFORSPEMP.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);
end;

procedure TFORSPEMP.edEmpCodExit(Sender: TObject);
var
    Bolsa, Cont: Double;
    data1, data2: String;
begin

  data1    := '01/' + IntToStr(RetornaValorMes()) + '/' + IntToStr(RetornaValorAno());
  data2    := IntToStr(RetornaDiasMes(RetornaValorMes(),
              RetornaValorAno())) + '/' + IntToStr(RetornaValorMes()) + '/' + IntToStr(RetornaValorAno());

  if (edEmpCod.Text <> '') then
  begin
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text));

    if edEmpNome.Text = '' then
    begin
      MSGERRO('Empresa inexistente. Selecione outra empresa!');
      edEmpCod.SetFocus;
    end
    else
    begin
      with DmDta.quEstEmp do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, 0 Situacao, ');
        Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add('from');
        Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, EmpFuncionario F');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  m.emp_cod = f.emp_cod and');
        Sql.Add('  m.emp_respcomp = f.func_cod and');
        Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
        Sql.Add('  t.tce_situacao = ''0'' and');
        Sql.Add('  t.tce_dataini <= :data2 and');
        Sql.Add('  t.tce_datafim >= :data1');
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, a.prg_cod Situacao, ');
        Sql.Add('  a.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  a.tpr_dataini, a.tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add('from');
        Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, empFuncionario F');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.tce_cod = a.tce_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  m.emp_cod = f.emp_cod and');
        Sql.Add('  m.emp_respcomp = f.func_cod and');
        Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
        Sql.Add('  t.tce_situacao <> ''7'' and');
        Sql.Add('  Convert(Int, t.tce_situacao) = a.prg_cod and');
        Sql.Add('  t.tce_situacao <> ''0'' and');
        Sql.Add('  a.tpr_dataini <= :data2 and');
        Sql.Add('  a.tpr_datafim >= :data1');
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, 0 Situacao, ');
        Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  Convert(DateTime,Null) as tpr_dataini, Convert(DateTime,Null) as tpr_datafim, e.est_pgtolib, i.inst_nivel');
        Sql.Add('from');
        Sql.Add('  tce t, estudante e, Empresa m, Instituicao i, Curso C, EmpFuncionario F');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  t.tce_situacao = ''7'' and');
        Sql.Add('  m.emp_cod = f.emp_cod and');
        Sql.Add('  m.emp_respcomp = f.func_cod and');
        Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
        Sql.Add('  t.tce_dataini <= :data2 and');
        Sql.Add('  t.tce_datares >= :data1');
        Sql.Add('  and not exists (select * from TceAditivo where tce_cod = t.tce_cod and ');
        Sql.Add('  tpr_dataini <= :data2)');
        Sql.Add('union');
        Sql.Add('select');
        Sql.Add('  e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome emp_nomerespcomp,');
        sql.add('  e.est_cpf, e.est_cidade, c.cur_nome, max(a.prg_cod) Situacao, ');
        Sql.Add('  t.tce_cod, t.tce_dataini, t.tce_datafim, t.tce_situacao, t.tce_datares,');
        Sql.Add('  max(a.tpr_dataini), max(a.tpr_datafim), e.est_pgtolib, i.inst_nivel');
        Sql.Add('from');
        Sql.Add('  tceAditivo a, estudante e, Empresa m, Tce t, Instituicao i, Curso C, empFuncionario F');
        Sql.Add('where');
        Sql.Add('  e.inst_cod = i.inst_cod and');
        Sql.Add('  e.cur_cod  = c.cur_cod and');
        Sql.Add('  t.tce_cod = a.tce_cod and');
        Sql.Add('  m.emp_cod = f.emp_cod and');
        Sql.Add('  m.emp_respcomp = f.func_cod and');
        Sql.Add('  t.est_cod = e.est_cod and');
        Sql.Add('  t.emp_cod = m.emp_cod and');
        Sql.Add('  t.emp_cod = ' + edEmpCod.Text + ' and');
        Sql.Add('  t.tce_situacao =''7'' and');
        Sql.Add('  a.tpr_dataini <= :data2');
        Sql.Add('  and t.tce_datares >= :data1');
        Sql.Add('group by');
        Sql.Add('  t.tce_cod, e.est_cod, e.est_nome, e.est_endereco, e.est_dtnasc, i.inst_nome, e.est_bairro,');
        Sql.Add('  e.est_fone1, m.emp_cod, m.emp_nome, m.emp_telefone, f.efu_nome,');
        sql.add('  e.est_cpf, e.est_cidade,c.cur_nome, a.tce_cod, t.tce_dataini, t.tce_datafim, ');
        Sql.Add('  t.tce_situacao, t.tce_datares, e.est_pgtolib, i.inst_nivel');
        Sql.Add('order by');
        Sql.Add('  e.est_nome');
        ParamByName('data1').AsDateTime := StrToDate(data1);
        ParamByName('data2').AsDateTime := StrToDate(data2);
        Open;
      end;

      with DmDta.quSPgto do
      begin
        Close;
        Sql.clear;
        Sql.Add('select (select emp_nome from empresa where emp_cod=fatura.emp_cod) Empresa,');
        Sql.Add('  *');
        Sql.Add('from');
        Sql.Add('  Fatura');
        Sql.Add('where emp_cod = ' + edEmpCod.Text);
        Sql.Add('order by fat_numero desc');
        Open;

        if Not IsEmpty then
        begin
          First;
          Bolsa := 0;
          Cont  := 0;
          DisableControls;

          While Not Eof do
          begin
            Bolsa := Bolsa + FieldByName('fat_totbolsa').AsFloat;
            Cont  := Cont  + FieldByName('fat_totcont').AsFloat;
            Next;
          end;
          First;
          EnableControls;

          edTotBolsa.Text := 'R$ ' + FormatFloat('#,###,##0.00', bolsa);
          edTotCont.Text  := 'R$ ' + FormatFloat('#,###,##0.00', Cont);
        end;
      end;
    end;
  end
  else
    edEmpNome.Text := '';
end;

procedure TFORSPEMP.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORSPEMP.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quSPgto, Caption);
  Screen.Cursor := crDefault;
end;

end.
