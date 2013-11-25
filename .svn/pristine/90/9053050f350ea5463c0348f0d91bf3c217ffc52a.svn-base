unit TPOGRUPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TPOMOD2, DB, DBTables, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit, Mask, DBCtrls;

type
  TFORGRUPO = class(TFORMOD2)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Nacionalidade: TDBRadioGroup;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edParametroExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    mudaAba: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORGRUPO: TFORGRUPO;

implementation
uses TPODTA, TPOCST, TPOFNC;
{$R *.dfm}


procedure TFORGRUPO.btExcluirClick(Sender: TObject);
  function VerificaDelecao: Boolean;
  begin
    with TQuery.create(nil) do
    begin
      DatabaseName := DATABASE_NAME;
      Sql.Clear;
      Sql.Add('Select * from empresa where grup_cod = ' + quPrincipal.FieldByName('grup_cod').Text);
      Open;
      Result := IsEmpty;
      Close;
      Free;
    end;
  end;
begin
  if not VerificaDelecao() then
  begin
    MSGAVISO('Não é possível excluir o grupo  pois possui Empresas Cadastradas!');
    exit;
  end;
  inherited;

end;

procedure TFORGRUPO.btNovoClick(Sender: TObject);
var Insere: Boolean;
begin
  inherited;


end;

procedure TFORGRUPO.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  with quPrincipal do
  begin
    Sql.Clear;
    Sql.Add('select * from grupo ');
    Sql.Add('order by');
    Sql.Add('  grup_cod');
    Open;
    Last;
  end;
 // if F2 then
 //   rgSituacao.ItemIndex := 0;
  AbreFechaTabelas(true);
  estadoNavegando;

  cbTipoPesquisa.ItemIndex := 1;
  Screen.Cursor := crDefault;
end;

procedure TFORGRUPO.FormCreate(Sender: TObject);
begin
  inherited;
  nomeChave := 'grup_cod';
  nomeCodigo := 'grup_cod';
  nomeNome := 'grup_nome';
  nomeTabela := 'Grupo';
  quPrincipal := DmDta.quGrupo;
  DmDta.dsInstituicao.DataSet := quPrincipal;
  MudaAba := True;
end;

procedure TFORGRUPO.edParametroExit(Sender: TObject);
var
  argumento, ordem, tabelas, colunas: string;
begin
  inherited;
  if edParametro.Text <> '' then
  begin
    // argumentos iniciais
    colunas := ' * ';
    tabelas := 'grupo ';
    case CbTipoPesquisa.ItemIndex of
      0:
        begin
          ordem := 'e.grup_cod';
          argumento := argumento + ' and grup_cod = ' + edParametro.Text;
        end;
      1:
        begin
          ordem := 'grup_nome';
          argumento := ' ((grup_nome like ''%' + edParametro.Text + '%'') or ' +
            '(grup_fantasia like ''%' + edParametro.Text + '%''))';
        end;
    end;
    DmDta.montaSql(quPrincipal, colunas, tabelas, argumento, ordem);
    estadoNavegando();
  end;
end;

procedure TFORGRUPO.btSalvarClick(Sender: TObject);
begin

  btEnter.SetFocus;
  //if Salvou then
  begin
    if (DBEdit2.Text = '') then
    begin
      MSGERRO('Entre com o nome do Grupo!');
      DBEdit2.SetFocus;
      Salvou := False;
    end


    else
    begin
      // salva o registro
      if quPrincipal.State = dsEdit then
      begin
        try
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;
      end
      else if quPrincipal.State = dsInsert then
      begin
        try
          DMDta.SalvarRegistro(quPrincipal);
        except
          btCancelar.Click; // Cancela Registro
        end;

        // refresh
        quPrincipal.Close;
        quPrincipal.Open;
        quPrincipal.Last;
      end;

      if MudaAba then
      begin
        estadoNavegando;
        pgPrincipal.ActivePage := tbConsulta;

        cbTipoPesquisa.ItemIndex := 1;
        edParametro.Clear;

        if edParametro.CanFocus then edParametro.SetFocus;
      end;
    end;
  end;

end;

end.

