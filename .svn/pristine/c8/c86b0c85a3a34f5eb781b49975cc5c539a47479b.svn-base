unit tposel4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TFORSEL4 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    btAtualizar: TSpeedButton;
    btFechar: TSpeedButton;
    Label1: TLabel;
    edCliente: TEdit;
    sbPrincipal: TStatusBar;
    SpeedButton1: TSpeedButton;
    chkInativos: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    TEXTO: string;
    { Public declarations }
  end;

var
  FORSEL4: TFORSEL4;

implementation

{$R *.dfm}

procedure TFORSEL4.SpeedButton1Click(Sender: TObject);
begin
  with TQuery.Create(nil) do
  begin
    DatabaseName := 'TalentPool';

    TEXTO := 'select distinct Count(inst_cod) total    from instituicao where inst_cod in' +
      ' (select inst_cod from estudante where est_cod in  ';
    if CHKINATIVOS.Checked then
      TEXTO := TEXTO + ' ( select est_cod from tce where  emp_cod in '
    else
      TEXTO := TEXTO + ' ( select est_cod from tce where tce_situacao <> ''7'' and emp_cod in ';
    TEXTO := TEXTO + '(select emp_cod from empresa where emp_nomefantasia like ''%' + edcliente.text + '%'')))';
    Sql.Add(Texto);
    Open;
    showmessage(fieldbyname('total').AsString + ' Ocorrências foram encontradas');
    close;
    free;
  end;
end;

procedure TFORSEL4.btAtualizarClick(Sender: TObject);
begin
  TEXTO := 'select distinct *    from instituicao where inst_cod in' +
    ' (select inst_cod from estudante where est_cod in  ';
  if CHKINATIVOS.Checked then
    TEXTO := TEXTO + ' ( select est_cod from tce where  emp_cod in '
  else
    TEXTO := TEXTO + ' ( select est_cod from tce where tce_situacao <> ''7'' and emp_cod in ';
  TEXTO := TEXTO + '(select emp_cod from empresa where emp_nomefantasia like ''%' + edcliente.text + '%''))) order by Inst_nome';
  modalresult := mrok;
  Close;
end;

procedure TFORSEL4.btFecharClick(Sender: TObject);
begin
  texto := '';
end;

end.

