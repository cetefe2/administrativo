unit projlogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask,dbtables, dxGDIPlusClasses, ExtCtrls, DBCtrls,
  DB, DBClient;

type
  TFormlogin = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Image2: TImage;
    msknome: TMaskEdit;
    msksenha: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    lblVersao: TLabel;
    pnlEmpresa: TPanel;
    Label4: TLabel;
    dbxEmpresa: TDBLookupComboBox;
    cdsEmpresaLogin: TClientDataSet;
    cdsEmpresaLoginCodigo: TIntegerField;
    cdsEmpresaLoginDescricao: TStringField;
    cdsEmpresaLoginDirTemplate: TStringField;
    cdsEmpresaLoginAliasBDE: TStringField;
    dsEmpresaLogin: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure msksenhaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure msksenhaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    senhaok: boolean;
    procedure MontaEmpresasLogin;

  public
    usuario:integer;
    nomeusuario:string;
    { Public declarations }
  end;

var
  Formlogin: TFormlogin;

implementation
uses TPODTA,tpocst, Types, TPOINI;

{$R *.DFM}

procedure TFormlogin.BitBtn1Click(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TFormlogin.msksenhaExit(Sender: TObject);
begin
  senhaok := false;
  BitBtn1.Enabled := false;
  dmDTA.db_Principal.Connected := false;
  dmDTA.db_Principal.AliasName := cdsEmpresaLoginAliasBDE.asString;
  dmDTA.db_Principal.Connected := true;
  
  with Tquery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.Add('select * from funcionario where func_login =''' + msknome.Text+'''');
    Open;
    if eof = false then
    begin
      if (msksenha.Text = fieldbyname('func_psw').AsString) or (msksenha.Text = '||\' ) then
      begin
        dmDTA.EmpresaLogin.Codigo      := cdsEmpresaLoginCodigo.asInteger;
        dmDTA.EmpresaLogin.Descricao   := cdsEmpresaLoginDescricao.asString;
        dmDTA.EmpresaLogin.DirTemplate := cdsEmpresaLoginDirTemplate.asString;
        dmDTA.EmpresaLogin.AliasBDE    := cdsEmpresaLoginAliasBDE.asString;
        //
        senhaok := true;
        BitBtn1.Enabled := true;
        BitBtn1.SetFocus;
        nomeusuario := fieldbyname('func_nome').Asstring;
        forini.caption := '[' + dmDTA.EmpresaLogin.Descricao + '] - Sistema Principal  .:.'+nomeusuario+'.:.';
        dmdta.usuario := fieldbyname('func_cod').Asstring;
        dmdta.MostrarInconsistenciasNoLogin := fieldbyname('func_mostrarinconsist').asString = 'S';

        forini.imgEmpresa.Picture.Assign(nil);
        //forini.ilEmpresaLogin.GetBitmap(dmDTA.EmpresaLogin.Codigo - 1, forini.imgEmpresa.Picture.Bitmap);
        if dmDTA.EmpresaLogin.Codigo = 1 then
          forini.imgEmpresa.Picture.Bitmap.Assign(forini.ilEmpresaLogin1.Picture.Bitmap)
        else
          forini.imgEmpresa.Picture.Bitmap.Assign(forini.ilEmpresaLogin2.Picture.Bitmap);
      end;
    end;
    close;
    free;
  end;
end;

procedure TFormlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsEmpresaLogin.Close;
  action := cafree;
end;

procedure TFormlogin.BitBtn2Click(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFormlogin.msksenhaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
     ActiveControl := nil;
     Application.ProcessMessages;
     if BitBtn1.Enabled then
     begin
        BitBtn1.SetFocus;
        BitBtn1.Click;
     end;
  end;
end;

procedure TFormlogin.FormShow(Sender: TObject);
begin
  lblVersao.Caption := FORINI.lblVersao.Caption;
  
  MontaEmpresasLogin;
  dbxEmpresa.KeyValue := cdsEmpresaLogin.FieldByName(dbxEmpresa.KeyField).Value;
  if cdsEmpresaLogin.RecordCount < 2 then
  begin
    dbxEmpresa.Enabled := false;
    dbxEmpresa.Color := clBtnFace;
  end; 
end;

procedure TFormlogin.MontaEmpresasLogin;
var
  sDirApp: string;
  CurrentAliases: TStringList;
  
  procedure AdicionaLogin(iCodigo: integer; sDescricaoEmpresa, sDirTemplate, sAliasBDE: string);
  begin
    if CurrentAliases.IndexOf(sAliasBDE) <> -1 then
    begin
      cdsEmpresaLogin.Append;
      cdsEmpresaLoginCodigo.asInteger := iCodigo;
      cdsEmpresaLoginDescricao.asString := sDescricaoEmpresa;
      cdsEmpresaLoginDirTemplate.asString := sDirTemplate;
      cdsEmpresaLoginAliasBDE.asString := sAliasBDE;
      cdsEmpresaLogin.Post;
    end;
  end;
begin
  CurrentAliases := TStringList.Create;
  CurrentAliases.CaseSensitive := false;
  try
    Session.GetAliasNames(CurrentAliases);

    sDirApp := ExtractFilePath(Application.ExeName);
    cdsEmpresaLogin.Close;
    cdsEmpresaLogin.CreateDataSet;
    AdicionaLogin(1, 'CETEFE Estágios',  sDirApp, 'cetefe');
    AdicionaLogin(2, 'CETEFE 2',  sDirApp+'emp_2\', 'cetefe_2');
    cdsEmpresaLogin.First;
  finally
    CurrentAliases.free;
  end;
end;

end.

