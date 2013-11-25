unit TPOBCK;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges, Buttons, ExtCtrls, ComCtrls, Db, DBTables, FileCtrl, ZipMstr;

type
  TFORBCK = class(TForm)
    btSalvar: TSpeedButton;
    btFechar: TSpeedButton;
    btRestaurar: TSpeedButton;
    FileListBox1: TFileListBox;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel1: TPanel;
    lblDirBase: TLabel;
    ZipMaster1: TZipMaster;
    OpenDialog1: TOpenDialog;
    procedure btSalvarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btFecharClick(Sender: TObject);
    procedure btRestaurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function  EfetuaBackup: boolean;
    function  EfetuaRestauracao: Boolean;
  public
    { Public declarations }

  end;

const
  nomeArquivo = 'TPool.zip';

var
  FORBCK: TFORBCK;

implementation

Uses TPOFNC, TPOCST;

{$R *.DFM}

procedure TFORBCK.FormCreate(Sender: TObject);
begin
  if MSGSIMNAO('Disquete já inserido na unidade A: ?') then
  begin
    ZipMaster1.ZipFilename := 'A:\' + NomeArquivo;
    ZipMaster1.Load_Zip_Dll;
    ZipMaster1.Load_Unz_Dll;
  end
  else
  begin
    MSGERRO('Insira o disquete e tente novamente. Backup não será efetuado!');
    ZipMaster1.ZipFileName := '';
  end;
end;

procedure TFORBCK.FormShow(Sender: TObject);
begin
  FileListBox1.Directory := DiretorioBase;
  lblDirBase.Caption := DiretorioBase;
  if ZipMaster1.ZipFileName = '' then Close;
end;

procedure TFORBCK.btSalvarClick(Sender: TObject);
var res: Boolean;
begin
  btFechar.Enabled    := False;
  btSalvar.Enabled    := False;
  btRestaurar.Enabled := False;
  Screen.Cursor       := crHourGlass;

  Res := EfetuaBackup();

  Screen.Cursor := crDefault;
  if Res then
    MSGAVISO('Backup de arquivos efetuado com sucesso!')
  else
    MSGAVISO('Insira o disquete na unidade A:!');
  btSalvar.Enabled    := True;
  btRestaurar.Enabled := True;
  btFechar.Enabled    := True;
end;

procedure TFORBCK.btRestaurarClick(Sender: TObject);
var Res: Boolean;
begin
  btFechar.Enabled    := False;
  btSalvar.Enabled    := False;
  btRestaurar.Enabled := False;
  Screen.Cursor       := crHourGlass;

  Res := EfetuaRestauracao();

  Screen.Cursor := crDefault;
  if Res then
    MSGAVISO('Restauração de arquivos efetuada com sucesso!')
  else
    MSGAVISO('Insira o disquete na unidade A:!');
  btSalvar.Enabled    := true;
  btRestaurar.Enabled := true;
  btFechar.Enabled    := true;
end;

procedure TFORBCK.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := btFechar.Enabled;
end;

procedure TFORBCK.btFecharClick(Sender: TObject);
begin
  Close;
end;

function TFORBCK.EfetuaBackup: Boolean;
begin
  Result := False;
  // Inicia o backup
  with ZipMaster1 do
  begin
    FSpecArgs.Clear;
    FSpecArgs.Assign( FileListBox1.Items ); { specify filenames }

    try
      Add;
      Result := True;
    except
    end;
  end;
end;

function TFORBCK.EfetuaRestauracao: Boolean;
begin
  Result := False;
  // Inicia o backup
  with ZipMaster1 do
  begin
    ExtrBaseDir := 'C:\Temp';//DiretorioBase;
    ZipFileName := 'A:\' + nomeArquivo;

    try
      Extract;
      Result := True;
    except
    end;
  end;
end;

procedure TFORBCK.FormDestroy(Sender: TObject);
begin
  ZipMaster1.Unload_Zip_Dll;
  ZipMaster1.Unload_Unz_Dll;
end;

procedure TFORBCK.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case key of
    vk_F4: CLose;
    vk_F5: btSalvarClick(Sender);
    vk_F6: btRestaurarClick(Sender);
  end;
end;

end.
