unit TPOSFPG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSFPG = class(TForm)
    Bevel1: TBevel;
    btImprimir: TSpeedButton;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    cbTipoPesquisa: TComboBox;
    Notebook1: TNotebook;
    edFatura: TEdit;
    edEmpCod: TEdit;
    edEmpNome: TEdit;
    edAno: TEdit;
    edMes: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btEnter: TBitBtn;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    btExportar: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edEmpCodDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edFaturaExit(Sender: TObject);
    procedure edMesExit(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure edEmpCodExit(Sender: TObject);
    procedure edEmpCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORSFPG: TFORSFPG;

implementation

uses TPOEMP, TPODTA, TPOFNC, TPORFPG, TPOSELEMP;

{$R *.DFM}

procedure TFORSFPG.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;
    vk_F2: edEmpCodDblClick(Sender);
    vk_F5: btImprimirClick(Sender);
    vk_F6: btImprimirClick(Sender);
  end;
end;

procedure TFORSFPG.btImprimirClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QRFPG := TQRFPG.Create(Application);
  QRFPG.Fatura := edFatura.Text;
  Screen.Cursor := crDefault;
  QRFPG.Preview;
  QRFPG.Free;
end;

procedure TFORSFPG.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSFPG.edEmpCodDblClick(Sender: TObject);
begin
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
  end
  else
  begin
    edEmpCod.Text := '';
    edEmpNome.Text := '';
  end;
  FOREMP.Free;
end;

procedure TFORSFPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quSFolhaPgto.Close;
  Action := caFree;
end;

procedure TFORSFPG.FormShow(Sender: TObject);
begin
  with DmDta.quSFolhaPgto do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select');
    Sql.Add('  p.*, f.fat_mes, e.emp_nome, f.fat_ano, ef2.efu_nome emp_nomerespcomp,est.est_nome, e.emp_telefone,');
    Sql.Add('  (select count(*) from FolhaPgto where fat_numero = f.fat_numero) as TotEstagiarios,');
    Sql.Add('  (select sum(fbo_valor - fbo_descontos) from FolhaPgto where fat_numero = f.fat_numero)');
    Sql.Add(' as TotBolsa, f.fat_totcont, f.fat_totliberado, f.fat_totbolsa');
    Sql.Add('From folhaPgto p, Fatura f, Empresa e,Empfuncionario ef2,estudante est');
    Sql.Add('where');
    sql.add('e.emp_respcomp  = ef2.func_cod and ');
    Sql.Add('  f.fat_numero = p.fat_numero and');
    Sql.Add('  e.emp_cod = f.emp_cod and');
    Sql.Add('  p.est_cod = est.est_cod and');
    Sql.Add('  f.fat_numero = -1');
    Sql.Add('order by e.emp_nome');
    Open;
  end;
  cbTipoPesquisa.ItemIndex := 0;
end;

procedure TFORSFPG.edFaturaExit(Sender: TObject);
begin
  if edFatura.Text <> '' then
  begin
    with DmDta.quSFolhaPgto do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT     *, F.fat_mes,f.fat_ano, E.Emp_nome, ef2.Efu_nome emp_nomerespcomp, Est.Est_nome, ');
      Sql.Add('     F.fat_totbolsa, F.fat_totcont,F.fat_totliberado, ');
      Sql.Add('  (select count(*) from FolhaPgto where fat_numero = f.fat_numero) as TotEstagiarios,');
      Sql.Add('  (select sum(fbo_valor - fbo_descontos) from FolhaPgto where fat_numero = f.fat_numero)');
      Sql.Add(' as TotBolsa ');
      Sql.Add(' FROM         FolhaPgto INNER JOIN ');
      Sql.Add('       Fatura F ON FolhaPgto.fat_numero = F.fat_numero INNER JOIN ');
      Sql.Add('       Empresa E ON F.emp_cod = E.Emp_cod INNER JOIN ');
      Sql.Add('       Estudante Est ON FolhaPgto.est_cod = Est.est_cod LEFT OUTER JOIN ');
      Sql.Add('       EmpFuncionario ef2 ON E.Emp_respcomp = ef2.Func_cod AND E.Emp_cod = ef2.Emp_cod ');
      Sql.Add('where');
      Sql.Add('  f.fat_numero = ' + edFatura.Text);
      Sql.Add('order by est.Est_nome');
      Open;


      {Sql.Clear;
      Sql.Add('select');
      Sql.Add('  p.*, f.fat_mes, e.emp_nome, f.fat_ano, t.efu_nome emp_nomerespcomp, e.emp_telefone,0 estudante, ');
      Sql.Add('  (select count(*) from FolhaPgto where fat_numero = f.fat_numero) as TotEstagiarios,');
      Sql.Add('  (select sum(fbo_valor - fbo_descontos) from FolhaPgto where fat_numero = f.fat_numero)');
      Sql.Add(' as TotBolsa, f.fat_totcont, f.fat_totliberado, f.fat_totbolsa');
      Sql.Add('From folhaPgto p, Fatura f, Empresa e,empfuncionario T');
      Sql.Add('where');
      Sql.Add('  f.fat_numero = p.fat_numero and');
      Sql.Add('  e.emp_cod = f.emp_cod and');
      Sql.Add('  e.emp_cod = T.emp_cod and');
      Sql.Add('  e.Emp_respcomp = T.Func_cod and');
      Sql.Add('  f.fat_numero = '+edFatura.Text);
      Sql.Add('order by e.emp_nome');}

    end;
  end;
end;

procedure TFORSFPG.edMesExit(Sender: TObject);
begin
  if (edEmpCod.Text <> '') and
    (edAno.Text <> '') and
    (edMes.Text <> '') then
  begin
    with DmDta.quSFolhaPgto do
    begin
      Close;
      {Sql.Clear;
      Sql.Add('Select f.*, a.fat_ano, a.emp_nome, a.fat_mes, e.emp_nomerespcomp, e.emp_telefone,');
      Sql.Add('  (select count(*) from FolhaPgto where fat_numero = f.fat_numero)');
      Sql.Add('as TotEstagiarios,');
      Sql.Add('(select sum(fbo_valor-fbo_descontos) from FolhaPgto where');
      Sql.add('fat_numero = f.fat_numero) as TotBolsa, a.fat_totcont,');
      Sql.add('a.fat_totliberado, a.fat_totbolsa');
      Sql.Add('from FolhaPgto F, Fatura a, Empresa e');
      Sql.Add('Where f.fat_numero = a.fat_numero');
      Sql.Add('and a.emp_cod = ' + edEmpCod.Text);
      Sql.Add('and a.emp_cod = e.emp_cod');
      Sql.Add('and a.fat_ano = ' + edAno.Text);
      Sql.Add('and a.fat_mes = ' + edMes.Text);
      Sql.Add('order by f.est_nome');}

      Sql.Clear;
      Sql.Clear;
      Sql.Add('SELECT     *, F.fat_mes,f.fat_ano, E.Emp_nome, ef2.Efu_nome emp_nomerespcomp, Est.Est_nome, ');
      Sql.Add('     F.fat_totbolsa, F.fat_totcont,F.fat_totliberado, ');
      Sql.Add('  (select count(*) from FolhaPgto where fat_numero = f.fat_numero) as TotEstagiarios,');
      Sql.Add('  (select sum(fbo_valor - fbo_descontos) from FolhaPgto where fat_numero = f.fat_numero)');
      Sql.Add(' as TotBolsa ');
      Sql.Add(' FROM         FolhaPgto INNER JOIN ');
      Sql.Add('       Fatura F ON FolhaPgto.fat_numero = F.fat_numero INNER JOIN ');
      Sql.Add('       Empresa E ON F.emp_cod = E.Emp_cod INNER JOIN ');
      Sql.Add('       Estudante Est ON FolhaPgto.est_cod = Est.est_cod LEFT OUTER JOIN ');
      Sql.Add('       EmpFuncionario ef2 ON E.Emp_respcomp = ef2.Func_cod AND E.Emp_cod = ef2.Emp_cod ');
      Sql.Add('where');
      Sql.Add('  f.emp_cod = ' + edEmpCod.Text);
      Sql.Add(' and f.fat_ano = ' + edAno.Text);
      Sql.Add(' and f.fat_mes = ' + edMes.Text);

      Sql.Add('order by e.emp_nome');
      Open;

      Open;
    end;
  end;
end;

procedure TFORSFPG.cbTipoPesquisaChange(Sender: TObject);
begin
  edFatura.Clear;
  edEmpCod.Clear;
  edEmpNome.Clear;
  edAno.Clear;
  edMes.Clear;
  Notebook1.PageIndex := cbTipoPesquisa.ItemIndex;
  SelectNext(ActiveControl, True, True);
end;

procedure TFORSFPG.btEnterClick(Sender: TObject);
begin
  SelectNext(Activecontrol, True, True);
end;

procedure TFORSFPG.edEmpCodExit(Sender: TObject);
begin
  if edEmpCod.Text <> '' then
    edEmpNome.Text := DmDta.BuscaCampo('Empresa', 'emp_nome', 'emp_cod', StrToInt(edEmpCod.Text))
  else
    edEmpNome.Text := '';
end;

procedure TFORSFPG.edEmpCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then edEmpCodDblClick(Sender);
end;

procedure TFORSFPG.btExportarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.quSFolhaPgto, Caption);
  Screen.Cursor := crDefault;
end;

end.

