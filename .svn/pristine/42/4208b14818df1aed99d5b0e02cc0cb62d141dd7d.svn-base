unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FileCtrl, IniFiles;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    FileListBox1: TFileListBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrentDir: String;
    CurrentDirServidor: String;
  end;

const

  CurrentProgram = 'CETEFE.exe';


var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
  IniFile: TIniFile;
  sAppName, Dir, path: string;
  SourceFileDate, TargetFileDate : integer;
  i: Word;

 function AbrirAplicativo(cmd: string): boolean;
 var
   SUInfo: TStartupInfo;
   ProcInfo: TProcessInformation;
 begin
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  SUInfo.cb      := SizeOf(SUInfo);
  SUInfo.dwFlags := STARTF_USESHOWWINDOW;
  SUInfo.wShowWindow := SW_SHOWNORMAL;

  Result := CreateProcess(nil,
                          PChar(cmd),
                          nil,
                          nil,
                          false,
                          CREATE_NEW_CONSOLE or
                          NORMAL_PRIORITY_CLASS,
                          nil,
                          nil,
                          SUInfo,
                          ProcInfo);

  if (Result) then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);

    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
 end;


begin
  try
    // Inicializa o arquivo texto
    IniFile := TIniFile.Create(ExtractFileDir(ParamStr(0))+'\atualiza.ini');

    // Lê os valores do arquivo texto
    CurrentDirServidor := IniFile.ReadString('NORMAL', 'DirServidor', '');
    CurrentDir         := IniFile.ReadString('NORMAL', 'DirCliente',  '');
    IniFile.Free;

    If Not DirectoryExists(CurrentDirServidor) then
    begin
      MessageDlg('O local ' + CurrentDirServidor + ' não está disponível no servidor. Favor verificar!', mtError, [mbOk],0);
      Exit;
    end;

    // Elimina o diretório e cria de novo
    If DirectoryExists(CurrentDir) then
    begin
      {If Not RemoveDir(CurrentDir) then
      begin
        MessageDlg('Apague o diretório ' + CurrentDir +  ' primeiramente!', mtError, [mbOk],0);
        Exit;
      end;}
    end
    else
    CreateDir(CurrentDir);


    Dir  := CurrentDir;
    FileListBox1.Directory := CurrentDirServidor;

    for i := 1 to FileListBox1.Items.Count - 1 do
    begin
      Path := CurrentDirServidor + '\' + FileListBox1.Items[i];
      ListBox1.Items.Clear();
      Screen.Cursor := crHourglass;

      if not DirectoryExists(Copy(Dir, 1, Length(Dir))) then
        MkDir(Copy(Dir, 1, Length(Dir)));

      // Monta nome do arquivo de origem
      sAppName := ExtractFileName(Path);

      // mostra mensagem de carga do programa
      ListBox1.Items.Add('Verificando a Versão da Aplicação. Aguarde ...');
      Application.ProcessMessages;

      // se for um arquivo com DEL, não copia
      If Pos('DEL',Uppercase(sAppName)) > 0 then Continue;
      If Pos('DOX',Uppercase(sAppName)) > 0 then Continue;

      // Verifica se arquivo de origem existe
      if FileExists(Path) then
      begin
        // obtém a idade do arquivo de origem
        SourceFileDate := FileAge(Path);

        // obtém a idade do arquivo de destino
        TargetFileDate := FileAge(Dir + sAppName);

        // se as idades dos arquivos forem diferentes, então copia.
        if SourceFileDate <> TargetFileDate then
        begin
          // mostra mensagem de carga do programa
          ListBox1.Items.Add('Atualizando ' + Path + '. Aguarde ...');
          Application.ProcessMessages;


          //FileSetAttr(PChar(Path), FILE_ATTRIBUTE_NORMAL);
          //FileSetAttr(PChar(Dir + sAppName), FILE_ATTRIBUTE_NORMAL);

          if not CopyFile(PChar(Path), PChar(Dir + sAppName), false) then
          begin
            MessageDlg('Erro na atualização do programa CETEFE. Entre em contato com desenvolvedor!', mtError, [mbOk],0);
            exit;
          end;
        end;
      end
      else
      begin
        MessageDlg('Aplicativo não foi localizado. Entre em contato com o desenvolvedor!', mtError, [mbOk],0);
        exit;
      end;
    end;

    // mostra mensagem de carga do programa
    ListBox1.Items.Add('Ativando ' + CurrentProgram + '. Aguarde ...');
    Application.ProcessMessages;

    // aplicativo
    ShowMessage('Aplicativo atualizado com sucesso!');

  finally
    Screen.Cursor := crDefault;
    ListBox1.Items.Clear();

    Close;
  end;
end;


end.
