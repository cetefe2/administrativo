unit TPOSELEMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables;

type
  TFORSELEMP = class(TForm)
    QConsEmp: TQuery;
    QConsEmpemp_cod: TIntegerField;
    QConsEmpemp_nome: TStringField;
    QConsEmpemp_ramo: TStringField;
    dsConsEmp: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    cbTipoPesquisa: TComboBox;
    edParametro: TEdit;
    quPrincipal: TQuery;
    quPrincipalEmp_cod: TIntegerField;
    quPrincipalEmp_nome: TStringField;
    quPrincipalEmp_nomefantasia: TStringField;
    quPrincipalEmp_endereco: TStringField;
    quPrincipalEmp_bairro: TStringField;
    quPrincipalEmp_cidade: TStringField;
    quPrincipalEmp_estado: TStringField;
    quPrincipalEmp_cep: TStringField;
    quPrincipalEmp_cnpj: TStringField;
    quPrincipalEmp_ramo: TStringField;
    quPrincipalemp_tipo: TStringField;
    quPrincipalemp_site: TStringField;
    quPrincipalGrup_Cod: TIntegerField;
    Notebook1: TNotebook;
    edPar: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    mePesqCnpj: TMaskEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edParExit(Sender: TObject);
  private
    { Private declarations }
  public
    F2: Boolean;
    F2Codigo, F2Nome,F2Tipo: String;
    F2Pgto: INTEGER;
    nomeTabela,nomechave,nomeCodigo, nomeNome: String;
    { Public declarations }
  end;

var
  FORSELEMP: TFORSELEMP;

implementation

{$R *.dfm}
uses TPOFNC,TPOCST,TPODTA;

procedure TFORSELEMP.DBGrid1DblClick(Sender: TObject);
begin
  F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
  F2Nome :=   quPrincipal.FieldByName(nomeNome).AsString;
  F2Tipo :=   quPrincipal.FieldByName('emp_tipo').AsString;

  if quPrincipal.FieldByName('emp_formapgto').AsString = 'CETEFE' THEN
     F2Pgto := 0
  ELSE
    F2Pgto := 1;

  Close;
end;

procedure TFORSELEMP.cbTipoPesquisaChange(Sender: TObject);
begin
case cbTipoPesquisa.ItemIndex of
    0, 1, 4, 5, 6, 8,9:
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

procedure TFORSELEMP.FormCreate(Sender: TObject);
begin
  nomeChave := 'emp_cod';
  nomeCodigo := 'emp_cod';
  nomeNome := 'emp_nome';
  nomeTabela := 'Empresa';
end;

procedure TFORSELEMP.edParExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  if edPar.Text <> '' then
  begin
    // argumentos iniciais
    colunas := ' * ';
    tabelas := 'Empresa ';
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'emp_cod';
          argumento := ' emp_cod = ' + edPar.Text;
        end;
      1:
        begin
          ordem := ' emp_nome';
          argumento := ' ((emp_nome like ''%' + edPar.Text + '%'') or ' +
            '(emp_nomefantasia like ''%' + edPar.Text + '%''))';
        end;
      4:
        begin
          ordem := 'emp_nome';
          argumento := '  emp_endereco like ''%' + edPar.Text + '%''';
        end;
      5:
        begin
          ordem := 'emp_nome';
          argumento := ' emp_bairro like ''%' + edPar.Text + '%''';
        end;
      6:
        begin
          ordem := 'emp_nome';
          argumento := '  emp_cidade like ''%' + edPar.Text + '%''';
        end;
      8:
        begin
          ordem := 'emp_nome';
          argumento := ' emp_estado = ''' + edPar.Text + '''';
        end;
      9:
        begin
          ordem := 'emp_nome';
          argumento := ' grup_cod = ''' + edPar.Text + '''';
        end;
    end;
        // abre a query
    DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);

  end;
end;

end.

