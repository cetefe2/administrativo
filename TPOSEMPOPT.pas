unit TPOSEMPOPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORSEMPOPT = class(TForm)
    Bevel1: TBevel;
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    btEmail: TSpeedButton;
    btProcessar: TSpeedButton;
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    mePesqCnpj: TMaskEdit;
    Label2: TLabel;
    cbTipoPesquisa: TComboBox;
    Memo1: TMemo;
    rgStatus: TRadioGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure cboTipoEmpChange(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProcessarClick(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure edParExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure mePesqCnpjExit(Sender: TObject);
    procedure edParKeyPress(Sender: TObject; var Key: Char);
    procedure rgStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    meses: boolean;
  end;

var
  FORSEMPOPT: TFORSEMPOPT;


implementation

uses TPOREmp2, TPODTA, TPOFNC, TPOEML, TPOCST, TPORVER, TPORETQ1, TPOETQ1,
  TPORETQ;

{$R *.DFM}

procedure TFORSEMPOPT.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    vk_F4: Close;

    vk_F6: btEmailClick(Sender);
  end;
end;

procedure TFORSEMPOPT.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORSEMPOPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREmpresa.Close;
  Action := caFree;
end;

procedure TFORSEMPOPT.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMPOPT.cboTipoEmpChange(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORSEMPOPT.btEmailClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GerarExcel(DmDta.QRYOPTEMPRESA, Caption);
  Screen.Cursor := crDefault;
end;

procedure TFORSEMPOPT.FormCreate(Sender: TObject);
begin
  meses := False;
end;

procedure TFORSEMPOPT.btProcessarClick(Sender: TObject);
var
  linha, data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;

begin

 { with DmDta.QryOptEmpresa do
  begin
    Close;
    sql.Clear;
    linha := '';
    sql.Text := 'SELECT  Empresa.Emp_cod,Empresa.Emp_tipo Tipo, Empresa.Emp_nome ,' +
      ' EmpFuncionario.Efu_nome Funcionario, EmpFuncionario.Efu_fone Telefone, ' +
      ' EmpFuncionario.Efu_email Email, EmpFuncionario.Efu_fonecel Celular, EmpFuncionario.Efu_setor Setor, ' +
      ' EmpFuncionario.Efu_cargo Cargo ' +
      ' FROM         Empresa ' +
      '  INNER JOIN ' +
      '  EmpFuncionario ON Empresa.Emp_cod = EmpFuncionario.Emp_cod ';
    {if cbotipoemp.ItemIndex > 0 then
      linha := 'Where  Empresa.Emp_tipo =:tipo ';


    if trim(edit1.Text) <> '' then

        linha := linha + ' and Empresa.Emp_nome >= ''' + edit1.Text + '''';

    if trim(edit2.Text) <> '' then

        linha := linha + ' and Empresa.Emp_nome <= ''' + edit2.Text + ''''
      else
        linha := ' where Empresa.Emp_nome <= ''' + edit2.Text + '''';
    if linha <> '' then
      sql.Text := sql.Text + linha;

    sql.Text := sql.Text + ' ORDER BY Empresa.Emp_nome, EmpFuncionario.Efu_nome ';
    if cbotipoemp.ItemIndex > 0 then
      Params.ParamByName('tipo').asString := cbotipoemp.Items[cboTipoEmp.ItemIndex];

    Open;

  end; }
end;

procedure TFORSEMPOPT.cbTipoPesquisaChange(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8:
      begin
        Notebook1.PageIndex := 0;
        edPar.SetFocus;
      end;
    2: Notebook1.PageIndex := 1;
    3: Notebook1.PageIndex := 2;
    7:
      begin
        Notebook1.PageIndex := 3;
        mePesqCnpj.SetFocus;
      end;
  end;
end;

procedure TFORSEMPOPT.edParExit(Sender: TObject);
var
  ordem, linha, data1, data2: string;
  TotEst: Integer;
  totBolsa, totTaxa: Double;

begin

  with DmDta.QryOptEmpresa do
  begin
    Close;
    sql.Clear;
    linha := '';
    sql.Text := memo1.Text;
   { if cbotipoemp.ItemIndex > 0 then
      linha := 'Where  Empresa.Emp_tipo =:tipo ';}

    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'empresa.emp_cod';
          linha := linha + ' where empresa.emp_cod = ' + edPar.Text;
        end;
      1:
        begin
          ordem := 'empresa.emp_nome';

          linha := linha + ' where ((empresa.emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(empresa.emp_nomefantasia like ''%' + edPar.Text + '%''))'


        end;
      4:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' where empresa.emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' where empresa.emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' and empresa.emp_cidade like ''%' + edPar.Text + '%''';
        end;
      8:
        begin
          ordem := 'empresa.emp_nome';
          linha := linha + ' and empresa.emp_estado = ''' + edPar.Text + '''';
        end;
    end;

    if rgStatus.ItemIndex <> 7 then
      linha := linha + ' and Encaminhamento.Eva_resultado = ' + inttostr(rgstatus.itemindex);


    if linha <> '' then
      sql.Text := sql.Text + linha;

    sql.Text := sql.Text + ' order by ' + ordem + ',Vaga.Vag_cod,Estudante.Est_nome';


    Open;

  end;
end;

procedure TFORSEMPOPT.RadioGroup1Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryOptEmpresa do
  begin
    Close;
    sql.Clear;

    sql.Text := memo1.Text;
    ordem := ' order by empresa.emp_nome';
    case radioGroup1.ItemIndex of
      0: argumento := argumento + ' where empresa.emp_ramo = ''Indústria''';
      1: argumento := argumento + ' where empresa.emp_ramo = ''Comércio''';
      2: argumento := argumento + ' where empresa.emp_ramo = ''Serviços''';
    end;
    if rgStatus.ItemIndex <> 7 then
      argumento := argumento + ' and Encaminhamento.Eva_resultado = ' + inttostr(rgstatus.itemindex);

    sql.Text := sql.Text + argumento + ordem + ',Vaga.Vag_cod,estudante.Est_nome';
    open;
  end
end;

procedure TFORSEMPOPT.RadioGroup2Click(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryOptEmpresa do
  begin
    Close;
    sql.Clear;
    sql.Text := memo1.Text;
    ordem := 'order by empresa.emp_nome';

    case radioGroup2.ItemIndex of
      0: argumento := argumento + ' where empresa.emp_porte = ''Pequeno''';
      1: argumento := argumento + ' where empresa.emp_porte = ''Médio''';
      2: argumento := argumento + ' where empresa.emp_porte = ''Grande''';
      3: argumento := argumento + ' where empresa.emp_porte = ''Multinac.''';
    end;
    if rgStatus.ItemIndex <> 7 then
      argumento := argumento + ' and Encaminhamento.Eva_resultado = ' + inttostr(rgstatus.itemindex);


    sql.Text := sql.Text + argumento + ordem + ',Vaga.Vag_cod,Estudante.est_nome';
    open;
  end;
end;

procedure TFORSEMPOPT.mePesqCnpjExit(Sender: TObject);
var
  ordem, argumento: string;
begin
  with DmDta.QryOptEmpresa do
  begin
    Close;
    sql.Clear;
    sql.Text := memo1.Text;
    ordem := 'order by empresa.emp_nome';
    if mePesqCnpj.Text <> '' then
      argumento := argumento + ' and e.emp_cnpj = ''' + mePesqCnpj.Text + '''';

    if rgStatus.ItemIndex <> 7 then
      argumento := argumento + ' and Encaminhamento.Eva_resultado = ' + inttostr(rgstatus.itemindex);


    sql.Text := sql.Text + argumento + ordem + ',Vaga.Vag_cod,Estudante.Est_nome';
    open;
  end;
end;

procedure TFORSEMPOPT.edParKeyPress(Sender: TObject; var Key: Char);
begin
  if CbTipoPesquisa.ItemIndex = 0 then
    VerificaNumero(key);
end;

procedure TFORSEMPOPT.rgStatusClick(Sender: TObject);
begin
  case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8: edparexit(sender);
    2: RadioGroup1Click(Sender);
    3: RadioGroup2Click(Sender);
    7: mePesqCnpjExit(sender);
  end;

end;

end.

