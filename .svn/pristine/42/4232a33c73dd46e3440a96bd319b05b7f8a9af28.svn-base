{ *********************************************
  Nome da Tela: FormMod
  Função: Modelo p/ telas de cadastro simples
  Tabela no Banco: não aplicável
  Data da Última Alteração: 07/05/01
*********************************************** }

unit TPOMOD3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, Db, DBTables, Grids, DBGrids, StdCtrls;

type
  TFORMOD3 = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    btEnter: TBitBtn;
    usPrincipal1: TUpdateSQL;
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
    DBGrid1: TDBGrid;
    tbRegistro: TTabSheet;
    Panel3: TPanel;
    Bevel3: TBevel;
    lblInclusao: TLabel;
    quPrincipal1: TQuery;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  protected
    { Private declarations }
    PrimeiroRegistro, ultimoRegistro: Integer;
    nomeTabela: string;

    procedure estadoNavegando();
    procedure estadoEditando();

    procedure BuscaPrimeiroUltimo; virtual;

    // Função que abre ou fecha tabelas auxiliares, dependendo do parâmetro passado
    procedure AbreFechaTabelas(active: Boolean); virtual;
    // Carrega dados que não são da tabela original
    procedure CarregaDados; virtual;
    // Inicializa dados ao inserir um registro na tabela
    procedure InicializaDados; virtual;
    // Atualiza dados ao confirmar um registro
    procedure AtualizaDados; virtual;
    // Verifica o estado dos botões de navegação
    procedure LimpaCampos; virtual;
  public
    { Public declarations }
    Salvou: Boolean;
    F2: Boolean;
    F2Codigo, F2Nome: string;
    nomeCodigo, nomeNome: string;

    procedure MostraHintForm(Sender: TObject);
  end;

var
  FORMOD3: TFORMOD3;

implementation

{$R *.DFM}

uses TPODTA, TPOFNC;

// Criação do form

procedure TFORMOD3.FormCreate(Sender: TObject);
begin
  Salvou := True;
  UltimoRegistro := -1;
  PrimeiroRegistro := -1;
  F2 := False;
  F2Codigo := '';
  nomeCodigo := '';
  nomeTabela := '';
  F2Nome := '';
  nomeNome := '';
end;

// Show do form

procedure TFORMOD3.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AbreFechaTabelas(true);
  estadoNavegando;

  Screen.Cursor := crDefault;
end;

// Botoes principais

procedure TFORMOD3.btNovoClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.IncluirRegistro(quPrincipal1);
  lblInclusao.Caption := 'Inclusão';
  pgPrincipal.ActivePageIndex := 1;
  estadoEditando;
  LimpaCampos;
  InicializaDados;
end;

procedure TFORMOD3.btExcluirClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if quPrincipal1.IsEmpty then
  begin
    MSGERRO('Tabela vazia! Exclusão cancelada!');
    Exit;
  end;

  if MSGSIMNAO('Deseja excluir o registro posicionado?') then
  begin
    try
      DmDta.ExcluirRegistro(quPrincipal1);
      estadoNavegando;
    except
      btCancelar.Click; // Cancela Registro
    end;
  end;
end;

procedure TFORMOD3.btSalvarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  if Salvou then
  begin
    if quPrincipal1.State in [dsInsert, dsEdit] then
    begin
      try
        AtualizaDados;
        DMDta.SalvarRegistro(quPrincipal1);
      except
        btCancelar.Click; // Cancela Registro
      end;
    end;
    estadoNavegando;
    pgPrincipal.ActivePage := tbConsulta;
  end;
end;

procedure TFORMOD3.btCancelarClick(Sender: TObject);
begin
  btEnter.SetFocus;
  DmDta.CancelarRegistro(quPrincipal1);
  LimpaCampos; // Para não travar nenhuma digitação errada
  pgPrincipal.ActivePage := tbConsulta;
  estadoNavegando;
end;

procedure TFORMOD3.btFecharClick(Sender: TObject);
begin
  btEnter.SetFocus;
  Close;
end;

// Funções Genéricas

procedure TFORMOD3.estadoEditando;
begin
  // Quando o usuário está editando um registro
  // Ocorre quando o botão novo ou editar é clicado

  btNovo.Enabled := false;
  btExcluir.Enabled := false;
  btSalvar.Enabled := true;
  btCancelar.Enabled := true;
end;

procedure TFORMOD3.estadoNavegando;
begin
  // Quando o usuário está consultando um registro
  // Estado default da tela

  btNovo.Enabled := true;
  btExcluir.Enabled := not quPrincipal1.IsEmpty;
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;

  pgPrincipal.ActivePage := tbConsulta;

  // Carrega os dados do registro
  CarregaDados();
end;

// Funções virtuais

procedure TFORMOD3.CarregaDados;
begin

end;

procedure TFORMOD3.AtualizaDados;
begin

end;

procedure TFORMOD3.LimpaCampos;
begin

end;

procedure TFORMOD3.InicializaDados;
begin
  if quPrincipal1.State <> dsInsert then quPrincipal1.Append;
end;

procedure TFORMOD3.AbreFechaTabelas(active: Boolean);
begin

end;

// Fecha o form

procedure TFORMOD3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quPrincipal1.Cancel;
  AbreFechaTabelas(false);
  quPrincipal1.Close;
  if not F2 then
    Action := caFree;
end;

procedure TFORMOD3.DBGrid1DblClick(Sender: TObject);
begin
  if not F2 then
  begin
    if quPrincipal1.IsEmpty then
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
    F2Codigo := quPrincipal1.FieldByName(nomeCodigo).AsString;
    F2Nome := quPrincipal1.FieldByName(nomeNome).AsString;
    Close;
  end;
end;

procedure TFORMOD3.MostraHintForm(Sender: TObject);
begin
  Self.sbPrincipal.SimpleText := Application.Hint;
end;

procedure TFORMOD3.btEnterClick(Sender: TObject);
begin
  if ActiveControl = DBGrid1 then
    DBGrid1DblClick(Sender)
  else
    SelectNext(ActiveControl, true, true);
end;

procedure TFORMOD3.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFORMOD3.pgPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PgPrincipal.ActivePageIndex = 0 then
  begin
    if quPrincipal1.IsEmpty then
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
    if quPrincipal1.State in [dsInsert, dsEdit] then
    begin
      MSGERRO('Salve o registro primeiramente!');
      AllowChange := False;
    end
    else
      EstadoNavegando();
  end;
end;

procedure TFORMOD3.BuscaPrimeiroUltimo;
begin

end;

procedure TFORMOD3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (quPrincipal1.UpdatesPending) or (quPrincipal1.State in [dsInsert, dsEdit]) then
  begin
    if MSGSIMNAO('Deseja salvar as alterações pendentes?') then
      btSalvarClick(sender);
  end;
end;

procedure TFORMOD3.FormActivate(Sender: TObject);
begin
  Application.OnHint := nil;
  Application.OnHint := MostraHintForm;
end;

procedure TFORMOD3.FormDeactivate(Sender: TObject);
begin
  Application.OnHint := nil;
end;

end.

