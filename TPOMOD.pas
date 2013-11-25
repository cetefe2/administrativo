{ *********************************************
  Nome da Tela: FormMod
  Função: Modelo p/ telas de cadastro simples
  Tabela no Banco: não aplicável
  Data da Última Alteração: 07/05/01
*********************************************** }

unit TPOMOD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, Db, DBTables, Grids, DBGrids, StdCtrls;

type
  TFORMOD = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    btEnter: TBitBtn;
    quPrincipal: TQuery;
    usPrincipal: TUpdateSQL;
    Panel4: TPanel;
    btNovo: TSpeedButton;
    btExcluir: TSpeedButton;
    btSalvar: TSpeedButton;
    btCancelar: TSpeedButton;
    btFechar: TSpeedButton;
    Panel5: TPanel;
    pgPrincipal: TPageControl;
    tbConsulta: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    cbTipoPesquisa: TComboBox;
    edParametro: TEdit;
    DBGrid1: TDBGrid;
    tbRegistro: TTabSheet;
    Panel3: TPanel;
    Bevel3: TBevel;
    lblInclusao: TLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
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
    // Limpa os campos do registo
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
  FORMOD: TFORMOD;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC;

// Criação do form

procedure TFORMOD.FormCreate(Sender: TObject);
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

procedure TFORMOD.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AbreFechaTabelas(true);
  quPrincipal.Open;
  estadoNavegando;

  Screen.Cursor := crDefault;
end;

// Botoes principais

procedure TFORMOD.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.IncluirRegistro(quPrincipal);
  lblInclusao.Caption := 'Inclusão';
  pgPrincipal.ActivePageIndex := 1;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORMOD.btExcluirClick(Sender: TObject);
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

procedure TFORMOD.btSalvarClick(Sender: TObject);
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

procedure TFORMOD.btCancelarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.CancelarRegistro(quPrincipal);
  LimpaCampos; // Para não travar nenhuma digitação errada
  pgPrincipal.ActivePage := tbConsulta;
  estadoNavegando;
end;

procedure TFORMOD.btFecharClick(Sender: TObject);
begin
  btEnter.SetFocus;
  Close;
end;

// Funções Genéricas

procedure TFORMOD.estadoEditando;
begin
  // Quando o usuário está editando um registro
  // Ocorre quando o botão novo ou editar é clicado

  btNovo.Enabled := false;
  btExcluir.Enabled := false;
  btSalvar.Enabled := true;
  btCancelar.Enabled := true;
  LimpaCampos;
end;

procedure TFORMOD.estadoNavegando;
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

procedure TFORMOD.BuscaPrimeiroUltimo;
begin

end;

procedure TFORMOD.CarregaDados;
begin

end;

procedure TFORMOD.AtualizaDados;
begin

end;

procedure TFORMOD.LimpaCampos;
begin

end;

procedure TFORMOD.InicializaDados;
begin
  if quPrincipal.State <> dsInsert then quPrincipal.Insert;
end;

procedure TFORMOD.AbreFechaTabelas(active: Boolean);
begin

end;

// Fecha o form

procedure TFORMOD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal.Cancel;
  AbreFechaTabelas(false);
  quPrincipal.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORMOD.DBGrid1DblClick(Sender: TObject);
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

procedure TFORMOD.MostraHintForm(Sender: TObject);
begin
  Self.sbPrincipal.SimpleText := Application.Hint;
end;

procedure TFORMOD.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORMOD.cbTipoPesquisaChange(Sender: TObject);
begin
  edParametro.SetFocus;
  LimpaParametros;
end;

procedure TFORMOD.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFORMOD.pgPrincipalChanging(Sender: TObject;
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

procedure TFORMOD.LimpaParametros;
begin

end;

procedure TFORMOD.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (quPrincipal.UpdatesPending) or (quPrincipal.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar as alterações pendentes?') then
      btSalvarClick(sender);
  end;
end;

procedure TFORMOD.edParametroKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterMaiusculo(Key);
end;

procedure TFORMOD.FormActivate(Sender: TObject);
begin
  Application.OnHint := nil;
  Application.OnHint := MostraHintForm;
end;

procedure TFORMOD.FormDeactivate(Sender: TObject);
begin
  Application.OnHint := nil;
end;

end.

