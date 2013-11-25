unit TPOEST9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Db,
  DBTables;

type
  TFOREST9 = class(TFORMOD1)
    quLaudoPrincipal: TQuery;
    quLaudoPrincipalIdade: TIntegerField;
    quEntrevistas: TQuery;
    quEntrevistasage_data: TDateTimeField;
    quEntrevistasEncaminhado: TStringField;
    quEntrevistaseva_resultado: TStringField;
    quEntrevistasResultado: TStringField;
    quEntrevistasvag_cod: TIntegerField;
    quEntrevistasPresenca: TStringField;
    quEntrevistasemp_nome: TStringField;
    quLaudoPrincipalEst_cod: TIntegerField;
    quLaudoPrincipalEst_dtinc: TDateTimeField;
    quLaudoPrincipalEst_nome: TStringField;
    quLaudoPrincipalEst_dtnasc: TDateTimeField;
    quLaudoPrincipalEst_rg: TStringField;
    quLaudoPrincipalEst_cpf: TStringField;
    quLaudoPrincipalEst_sexo: TStringField;
    quLaudoPrincipalEst_endereco: TStringField;
    quLaudoPrincipalEst_bairro: TStringField;
    quLaudoPrincipalEst_cidade: TStringField;
    quLaudoPrincipalEst_estado: TStringField;
    quLaudoPrincipalEst_cep: TStringField;
    quLaudoPrincipalEst_ctpsnum: TStringField;
    quLaudoPrincipalEst_ctpsserie: TStringField;
    quLaudoPrincipalEst_email: TStringField;
    quLaudoPrincipalEst_fone1: TStringField;
    quLaudoPrincipalEst_fone2: TStringField;
    quLaudoPrincipalEst_recado: TStringField;
    quLaudoPrincipalEst_nomerecado: TStringField;
    quLaudoPrincipalEst_estadocivil: TStringField;
    quLaudoPrincipalEst_fumante: TStringField;
    quLaudoPrincipalEst_religiao: TStringField;
    quLaudoPrincipalEst_observacao: TStringField;
    quLaudoPrincipalest_salinicial: TFloatField;
    quLaudoPrincipalest_salfinal: TFloatField;
    quLaudoPrincipalest_digitacao: TStringField;
    quLaudoPrincipalest_locomocao: TStringField;
    quLaudoPrincipalest_diasdisp: TStringField;
    quLaudoPrincipalest_periodo: TStringField;
    quLaudoPrincipalest_horarioini: TDateTimeField;
    quLaudoPrincipalest_horariofim: TDateTimeField;
    quLaudoPrincipalest_resumo: TStringField;
    quLaudoPrincipalest_outras: TStringField;
    quLaudoPrincipalest_situacao: TStringField;
    quLaudoPrincipalinst_cod: TIntegerField;
    quLaudoPrincipalinst_nome: TStringField;
    quLaudoPrincipalcur_cod: TIntegerField;
    quLaudoPrincipalcur_nome: TStringField;
    quLaudoPrincipalpcu_vestib: TStringField;
    quLaudoPrincipalpcu_anoatual: TIntegerField;
    quLaudoPrincipalpcu_peratual: TStringField;
    quLaudoPrincipalpcu_turno: TStringField;
    quLaudoPrincipalest_pgtolib: TStringField;
    quLaudoPrincipalest_banco: TStringField;
    quLaudoPrincipalest_agencia: TStringField;
    quLaudoPrincipalest_conta: TStringField;
    quLaudoPrincipalest_perfilpessoal: TStringField;
    quLaudoPrincipalest_porqueestagio: TStringField;
    quLaudoPrincipalest_areasexp: TStringField;
    quLaudoPrincipalest_apresentacao: TStringField;
    quLaudoPrincipalest_faccomunicacao: TStringField;
    quLaudoPrincipalest_vocabulario: TStringField;
    quLaudoPrincipalest_factrabalho: TStringField;
    quLaudoPrincipalest_rotinas: TStringField;
    quLaudoPrincipalest_filhos: TSmallintField;
    quLaudoPrincipalest_numend: TStringField;
    quLaudoPrincipalest_apto: TStringField;
    quLaudoPrincipalest_bloco: TStringField;
    quLaudoPrincipalest_dtatu: TDateTimeField;
    quLaudoPrincipalest_sitfamiliar: TStringField;
    quLaudoPrincipalemp_nome: TStringField;
    quLaudoPrincipalvag_setor: TStringField;
    quLaudoPrincipalvag_dataabertura: TDateTimeField;
    quLaudoPrincipalvag_qtde: TIntegerField;
    quLaudoPrincipalvag_cod: TIntegerField;
    quLaudoPrincipaleva_dataenc: TDateTimeField;
    quLaudoPrincipalvag_respselecao: TStringField;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    DBMemo4: TDBMemo;
    Label2: TLabel;
    Label4: TLabel;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOREST9: TFOREST9;

implementation

Uses TPODTA, TPOFNC, TPOCST, TPOEST;

{$R *.DFM}

procedure TFOREST9.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREST9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOREST.btSalvarClick(Sender);
  inherited;  
end;

end.
