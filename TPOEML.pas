unit TPOEML;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, Outlook8, Mapi, FileCtrl,
  OleServer;

type
  TFOREML = class(TForm)
    Panel1: TPanel;
    btCancelar: TSpeedButton;
    Panel2: TPanel;
    btEnter: TBitBtn;
    StatusBar1: TStatusBar;
    btOk: TSpeedButton;
    MePara: TMemo;
    MeComCopia: TMemo;
    MeComCopiaOculta: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    edPara: TEdit;
    lblEMail: TLabel;
    Label8: TLabel;
    MeArquivos: TListBox;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Label9: TLabel;
    Label2: TLabel;
    edAssunto: TEdit;
    Label3: TLabel;
    MeCorpo: TRichEdit;
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure MeArquivosDblClick(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RegistrarEmail(sAssunto, sPara, sCopiaOculta: string;
      sCorpo: TStrings; sArquivos: TStrings = nil; labelDest: string = '');
  end;

var
  FOREML: TFOREML;
implementation

uses TPOFNC, SendMail;

{$R *.DFM}

function SendEMail(Handle: THandle; Mail: TStrings; var MapiRes: string): Cardinal;
type
  TAttachAccessArray = array[0..0] of TMapiFileDesc;
  PAttachAccessArray = ^TAttachAccessArray;
var
  MapiMessage: TMapiMessage;
  Receip: TMapiRecipDesc;
  Attachments: PAttachAccessArray;
  AttachCount: Integer;
  i1: integer; FileName: string;
  dwRet: Cardinal; MAPI_Session:
  Cardinal; WndList: Pointer;

begin
  Result := MAPI_E_FAILURE;
  dwRet := MapiLogon(Handle, PChar(''), PChar(''), MAPI_LOGON_UI or MAPI_NEW_SESSION, 0, @MAPI_Session);

  if (dwRet <> SUCCESS_SUCCESS) then
  begin
    MessageBox(Handle, PChar('Error while trying to send email'), PChar('Error'), MB_ICONERROR or MB_OK);
  end
  else
  begin
    FillChar(MapiMessage, SizeOf(MapiMessage), #0);
    Attachments := nil;
    FillChar(Receip, SizeOf(Receip), #0);

    if Mail.Values['to'] <> '' then
    begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName := StrNew(PChar(Mail.Values['to']));
      Receip.lpszAddress := StrNew(PChar('SMTP:' + Mail.Values['to']));
      Receip.ulEIDSize := 0;
      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
    end;

    AttachCount := 0;

    for i1 := 0 to MaxInt do
    begin
      if Mail.Values['attachment' + IntToStr(i1)] = '' then
        break;
      Inc(AttachCount);
    end;

    if AttachCount > 0 then
    begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) * AttachCount);
      for i1 := 0 to AttachCount - 1 do
      begin
        FileName := Mail.Values['attachment' + IntToStr(i1)];
        Attachments[i1].ulReserved := 0;
        Attachments[i1].flFlags := 0;
        Attachments[i1].nPosition := ULONG($FFFFFFFF);
        Attachments[i1].lpszPathName := StrNew(PChar(FileName));
        Attachments[i1].lpszFileName := StrNew(PChar(ExtractFileName(FileName)));
        Attachments[i1].lpFileType := nil;
      end;

      MapiMessage.nFileCount := AttachCount;
      MapiMessage.lpFiles := @Attachments^;
    end;

    if Mail.Values['subject'] <> '' then
      MapiMessage.lpszSubject := StrNew(PChar(Mail.Values['subject']));
    if Mail.Values['body'] <> '' then
      MapiMessage.lpszNoteText := StrNew(PChar(Mail.Values['body']));

    WndList := DisableTaskWindows(0);

    try
      // Result := MapiSendMail(MAPI_Session, Handle, MapiMessage, MAPI_DIALOG, 0);
      Result := MapiSendMail(MAPI_Session, 0, MapiMessage, 0, 0);
    finally
      EnableTaskWindows(WndList);
    end;

    for i1 := 0 to AttachCount - 1 do
    begin
      StrDispose(Attachments[i1].lpszPathName);
      StrDispose(Attachments[i1].lpszFileName);
    end;

    if Assigned(MapiMessage.lpszSubject) then
      StrDispose(MapiMessage.lpszSubject);
    if Assigned(MapiMessage.lpszNoteText) then
      StrDispose(MapiMessage.lpszNoteText);
    if Assigned(Receip.lpszAddress) then
      StrDispose(Receip.lpszAddress);
    if Assigned(Receip.lpszName) then
      StrDispose(Receip.lpszName);

    MapiLogOff(MAPI_Session, Handle, 0, 0);
  end;

  case Result of
    MAPI_E_AMBIGUOUS_RECIPIENT: MapiRes := 'A recipient matched more than one of the recipient descriptor structures and MAPI_DIALOG was not set. No message was sent.';
    MAPI_E_ATTACHMENT_NOT_FOUND: MapiRes := 'The specified attachment was not found. No message was sent.';
    MAPI_E_ATTACHMENT_OPEN_FAILURE: MapiRes := 'The specified attachment could not be opened. No message was sent.';
    MAPI_E_BAD_RECIPTYPE: MapiRes := 'The type of a recipient was not MAPI_TO, MAPI_CC, or MAPI_BCC. No message was sent.';
    MAPI_E_FAILURE: MapiRes := 'One or more unspecified errors occurred. No message was sent.';
    MAPI_E_INSUFFICIENT_MEMORY: MapiRes := 'There was insufficient memory to proceed. No message was sent.';
    MAPI_E_INVALID_RECIPS: MapiRes := 'One or more recipients were invalid or did not resolve to any address.';
    MAPI_E_LOGIN_FAILURE: MapiRes := 'There was no default logon, and the user failed to log on successfully when the logon dialog box was displayed. No message was sent.';
    MAPI_E_TEXT_TOO_LARGE: MapiRes := 'The text in the message was too large. No message was sent.';
    MAPI_E_TOO_MANY_FILES: MapiRes := 'There were too many file attachments. No message was sent.';
    MAPI_E_TOO_MANY_RECIPIENTS: MapiRes := 'There were too many recipients. No message was sent.';
    MAPI_E_UNKNOWN_RECIPIENT: MapiRes := 'A recipient did not appear in the address list. No message was sent.';
    MAPI_E_USER_ABORT: MapiRes := 'The user canceled one of the dialog boxes. No message was sent.';
    SUCCESS_SUCCESS: MapiRes := '';
  end;

end;

procedure TFOREML.btOkClick(Sender: TObject);
var
  i: Integer;

begin
  if (edPara.Text = '') then
  begin
    MSGERRO('Preencha o destinatário do e-mail!');
    PageControl1.ActivePageIndex := 0;
    edPara.SetFocus;
    Exit;
  end;

  if (edAssunto.Text = '') then
  begin
    MSGERRO('Preencha o assunto do e-mail!');
    PageControl1.ActivePageIndex := 0;
    edAssunto.SetFocus;
    Exit;
  end;

  if (MeCorpo.Text = '') then
  begin
    MSGERRO('Preencha o corpo do e-mail!');
    PageControl1.ActivePageIndex := 0;
    MeCorpo.SetFocus;
    Exit;
  end;

  // faz o envio do e-mail
  with TMAPIMail.Create(self) do
  begin
    try
      Subject := edAssunto.Text;
      Body := meCorpo.Text;
      Recipients.Add(edPara.Text);
      for i := 0 to MeArquivos.Items.Count - 1 do
        Attachments.Add(MeArquivos.Items[i]);
      EditDialog := True;
      Send;
    finally
      Free;
    end;
  end;
  modalresult := mrOK;
end;

procedure TFOREML.btCancelarClick(Sender: TObject);
begin
  Close;
end;


procedure TFOREML.RegistrarEmail(sAssunto, sPara, sCopiaOculta: string;
  sCorpo: TStrings; sArquivos: TStrings = nil; labelDest: string = '');
begin
  // salva os dados do e-mail
  edAssunto.Text := sAssunto;
  edPara.Text := sPara;
  if sArquivos <> nil then
    MeArquivos.Items := sArquivos;
  MeCorpo.Lines := sCorpo;
  if labelDest <> '' then
    lblEmail.Caption := LabelDest;
end;

procedure TFOREML.FormShow(Sender: TObject);
begin
  // Página principal = 0
  PageControl1.ActivePageIndex := 0;

  // inicializa o drive como (C:)
  DriveComboBox1.Drive := 'C';
  DriveComboBox1Change(Sender);

  // Inicializa a pasta como TPool
  DirectoryListBox1.Directory := DriveComboBox1.Drive + ':\TPool\EMail\';
  DirectoryListBox1Change(Sender);
  edPara.SetFocus;
end;

procedure TFOREML.DriveComboBox1Change(Sender: TObject);
begin
  // carrega a lista de diretórios
  DirectoryListBox1.Drive := DriveComboBox1.Drive;
end;

procedure TFOREML.DirectoryListBox1Change(Sender: TObject);
begin
  // carrega a lista de arquivos
  FileListBox1.Directory := DirectoryListBox1.Directory;
end;

procedure TFOREML.MeArquivosDblClick(Sender: TObject);
begin
  // apaga o arquivo selecionado
  if MeArquivos.Items.Count > 0 then
  begin
    if MeArquivos.ItemIndex >= 0 then
      MeArquivos.Items.Delete(MeArquivos.ItemIndex)
    else
      MeArquivos.Items.Delete(0);
  end;
end;

procedure TFOREML.FileListBox1DblClick(Sender: TObject);
begin
  MeArquivos.Items.Add(FileListBox1.FileName);
end;

procedure TFOREML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

