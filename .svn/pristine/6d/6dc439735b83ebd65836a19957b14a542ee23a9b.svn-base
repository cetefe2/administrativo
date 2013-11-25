unit TPOMAN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFORMAN = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    btEnter: TBitBtn;
    Label1: TLabel;
    Animate1: TAnimate;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMAN: TFORMAN;

implementation

Uses TPOFNC, TPODTA, ComObj, TPOCST, TPOINI;

{$R *.DFM}

procedure TFORMAN.SpeedButton1Click(Sender: TObject);
var
  dao: OLEVariant;
begin
 try
    Screen.Cursor := crHourGlass;
    DmDta.db_Principal.Connected := False;
    Animate1.Active := True;

    // Cria o objeto OLE
    dao := CreateOleObject('DAO.DBEngine.36');
    // Compacta e corrige o banco de dados
    dao.CompactDatabase(FORINI.DiretorioBase + 'BancoDados.mdb',FORINI.DiretorioBase + 'BancoDados1.mdb');
    // Substitui o BancoDados
    DeleteFile(FORINI.DiretorioBase + 'BancoDados.mdb');
    RenameFile(FORINI.DiretorioBase + 'BancoDados1.mdb',FORINI.DiretorioBase + 'BancoDados.mdb');

    DmDta.db_Principal.Connected := True;
    Screen.Cursor := crDefault;
    MSGAVISO('Reparação concluída com sucesso!');
    Animate1.Active := False;
    Close;
  except
    Screen.Cursor := crDefault;
    MSGERRO('Erros na reparação da base de dados. Tente novamente mais tarde!');
    Animate1.Active := False;
    Close;
  end;
end;

procedure TFORMAN.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
