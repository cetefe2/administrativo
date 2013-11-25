unit TPODTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDmDTE = class(TDataModule)
    dsInstCadastro: TDataSource;
    quInstCadastro: TQuery;
    quInstCadastroInstituio: TStringField;
    quInstCadastroCurso: TStringField;
    quInstCadastroNvel: TStringField;
    quInstCadastrorea: TStringField;
    quInstCadastroCadastros: TIntegerField;
    dsInstColocacao: TDataSource;
    quInstColocacao: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    quInstColocacaoColocaes: TIntegerField;
    quTCEAtivos: TQuery;
    dsTCEAtivos: TDataSource;
    quTCEAtivosAno: TIntegerField;
    quTCEAtivosMs: TIntegerField;
    quTCEAtivosEmpresas: TIntegerField;
    quTCEAtivosEstagirios: TIntegerField;
    quResEmpresas: TQuery;
    dsResEmpresas: TDataSource;
    quResEmpresasCdigo: TIntegerField;
    quResEmpresasRamo: TStringField;
    quResEmpresasPorte: TStringField;
    quResEmpresasTipo: TStringField;
    quResEmpresasFuncionrios: TIntegerField;
    quResEmpresasEstagirios: TIntegerField;
    quResEmpresasFaturamento: TFloatField;
    quResEmpresasVagasAbertas: TIntegerField;
    quResEmpresasBolsa: TFloatField;
    dsFichaEstudantes: TDataSource;
    quFichaEstudante: TQuery;
    quFichaEstudanteCdigo: TIntegerField;
    quFichaEstudanteCurso: TStringField;
    quFichaEstudanteNvel: TStringField;
    quFichaEstudanteInstituio: TStringField;
    quFichaEstudanteTurno: TStringField;
    quFichaOport: TQuery;
    dsFichaOport: TDataSource;
    quFichaOportCdigo: TIntegerField;
    quFichaOportCurso: TStringField;
    quFichaOportDurao: TIntegerField;
    quFichaOportEfetiva: TStringField;
    quFichaOportProrroga: TStringField;
    quFichaOportRefPrpria: TStringField;
    quFichaOportValeTransporte: TStringField;
    quFichaOportValeRefeio: TStringField;
    quFichaOportValeAlimentao: TStringField;
    quFichaOportQuantidade: TIntegerField;
    quFichaOportPreenchidas: TIntegerField;
    quFichaOportEntrevistados: TIntegerField;
    quFichaOportEncaminhados: TIntegerField;
    quFichaTCE: TQuery;
    dsFichaTCE: TDataSource;
    quFichaTCECdigo: TIntegerField;
    quFichaTCERamo: TStringField;
    quFichaTCEPorte: TStringField;
    quFichaTCETipo: TStringField;
    quFichaTCEInstituio: TStringField;
    quFichaTCECurso: TStringField;
    quFichaTCEBolsa: TFloatField;
    dsTotaisCadastro: TDataSource;
    quTotaisCadastro: TQuery;
    quTotaisCadastrocur_cod: TIntegerField;
    quTotaisCadastrocur_nome: TStringField;
    quTotaisCadastrototal: TIntegerField;
    dsEstatisticas: TDataSource;
    quEstatisticas: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDTE: TDmDTE;

implementation

uses TPODTA;

{$R *.DFM}

end.

