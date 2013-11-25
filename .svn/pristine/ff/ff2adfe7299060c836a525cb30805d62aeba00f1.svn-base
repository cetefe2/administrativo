{ *********************************************
  Nome da Tela: FormMod
  Função: Modelo p/ telas de cadastro simples
  Tabela no Banco: não aplicável
  Data da Última Alteração: 07/05/01
*********************************************** }

unit TPOMOD2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, Db, DBTables, Grids, DBGrids, StdCtrls;

type
  TFORMOD2 = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    btNovo: TSpeedButton;
    btFechar: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    Bevel1: TBevel;
    btExcluir: TSpeedButton;
    Bevel2: TBevel;
    pgPrincipal: TPageControl;
    tbConsulta: TTabSheet;
    tbRegistro: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    cbTipoPesquisa: TComboBox;
    edParametro: TEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Bevel3: TBevel;
    btEnter: TBitBtn;
    usPrincipal: TUpdateSQL;
    lblInclusao: TLabel;
    quPrincipal: TQuery;
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btEnterClick(Sender: TObject);
    procedure cbTipoPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edParametroKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  protected
    { Private declarations }
    PrimeiroRegistro, ultimoRegistro: Integer;
    nomeChave, nomeTabela: string;
    Salvou: Boolean;

    procedure estadoNavegando();
    procedure estadoEditando();

    procedure BuscaPrimeiroUltimo(); virtual;

    // Função que abre ou fecha tabelas auxiliares, dependendo do parâmetro passado
    procedure AbreFechaTabelas(active: Boolean); virtual;
    // Carrega dados que não são da tabela original
    procedure CarregaDados; virtual;
    // Inicializa dados ao inserir um registro na tabela
    procedure InicializaDados; virtual;
    // Atualiza dados ao confirmar um registro
    procedure AtualizaDados; virtual;
    // Limpa os campos do registro
    procedure LimpaCampos; virtual;
    // Limpa os parâmetros de entrada
    procedure LimpaParametros; virtual;
  public
    { Public declarations }
    F2: Boolean;
    F2Codigo, F2Nome: string;
    nomeCodigo, nomeNome: string;
    procedure MostraHintForm(Sender: TObject);
  end;

var
  FORMOD2: TFORMOD2;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC;

// Criação do form

procedure TFORMOD2.FormCreate(Sender: TObject);
begin
  Salvou := True;
  UltimoRegistro := -1;
  PrimeiroRegistro := -1;
  F2 := False;
  F2Codigo := '';
  nomeCodigo := '';
  F2Nome := '';
  nomeNome := '';
end;

// Show do form

procedure TFORMOD2.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if not F2 then
    quPrincipal.Open;
  estadoNavegando;

  if edParametro.CanFocus then edParametro.SetFocus;
  Screen.Cursor := crDefault;
end;

// Botoes principais

procedure TFORMOD2.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.IncluirRegistro(quPrincipal);
  lblInclusao.Caption := 'Inclusão';
  pgPrincipal.ActivePage := tbRegistro;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORMOD2.btExcluirClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if quPrincipal.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal);
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORMOD2.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if Salvou then
  begin
    if quPrincipal.State in [dsInsert, dsEdit] then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal);

        cbTipoPesquisa.ItemIndex := 0;
        edParametro.Text := '';
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

procedure TFORMOD2.btCancelarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.CancelarRegistro(quPrincipal);
  LimpaCampos; // Para não travar nenhuma digitação errada
  pgPrincipal.ActivePage := tbConsulta;
  estadoNavegando;
end;

procedure TFORMOD2.btFecharClick(Sender: TObject);
begin
  btEnter.SetFocus;
  Close;
end;

// Botões de navegação

procedure TFORMOD2.btUltimoClick(Sender: TObject);
begin
end;

// Funções Genéricas

procedure TFORMOD2.estadoEditando;
begin
  // Quando o usuário está editando um registro
  // Ocorre quando o botão novo ou editar é clicado

  btNovo.Enabled := false;
  btExcluir.Enabled := false;
  btSalvar.Enabled := true;
  btCancelar.Enabled := true;
  LimpaCampos;
end;

procedure TFORMOD2.estadoNavegando;
begin
  // Quando o usuário está consultando um registro
  // Estado default da tela

  btNovo.Enabled := true;
  btExcluir.Enabled := not quPrincipal.IsEmpty;
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;

  //pgPrincipal.ActivePage := tbConsulta;

  // Carrega os dados do registro
  if not quPrincipal.IsEmpty then
    CarregaDados();
end;

// Funções virtuais

procedure TFORMOD2.BuscaPrimeiroUltimo;
begin

end;

procedure TFORMOD2.CarregaDados;
begin

end;

procedure TFORMOD2.AtualizaDados;
begin

end;

procedure TFORMOD2.LimpaCampos;
begin

end;

procedure TFORMOD2.InicializaDados;
begin
  if quPrincipal.State <> dsInsert then quPrincipal.Insert;
end;

procedure TFORMOD2.AbreFechaTabelas(active: Boolean);
begin

end;

// Fecha o form

procedure TFORMOD2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORMOD2.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
      Exit;
    end;

    lblInclusao.Caption := '';
    pgPrincipal.ActivePageIndex := 1;
    EstadoEditando;
    LimpaCampos;
    CarregaDados;
  end
  else
  begin
    F2Codigo := quPrincipal.FieldByName(nomeCodigo).AsString;
    F2Nome := quPrincipal.FieldByName(nomeNome).AsString;
    Close;
  end;
end;

procedure TFORMOD2.MostraHintForm(Sender: TObject);
begin
  Self.sbPrincipal.SimpleText := Application.Hint;
end;

procedure TFORMOD2.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORMOD2.cbTipoPesquisaChange(Sender: TObject);
begin
  edParametro.SetFocus;
  LimpaParametros;
end;

procedure TFORMOD2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_Insert: if pgPrincipal.ActivePageIndex = 0 then btNovoClick(Sender);
    vk_Delete: if ActiveControl = DBGrid1 then btExcluirClick(Sender);
    vk_F3: if pgPrincipal.ActivePageIndex = 1 then btSalvarClick(Sender);
    vk_F5: if pgPrincipal.ActivePageIndex = 1 then btCancelarClick(Sender);
    vk_F4: Close;
  end;
end;

procedure TFORMOD2.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal.IsEmpty then
    begin
      MSGERRO('Tabela vazia! Edição cancelada!');
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

procedure TFORMOD2.LimpaParametros;
begin

end;

procedure TFORMOD2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (quPrincipal.UpdatesPending) or (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar as alterações pendentes?') then
      btSalvarClick(sender);
  end;
end;

procedure TFORMOD2.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORMOD2.FormActivate(Sender: TObject);
begin
  Application.OnHint := nil;
  Application.OnHint := MostraHintForm;
end;

procedure TFORMOD2.FormDeactivate(Sender: TObject);
begin
  Application.OnHint := nil;
end;

end.

