unit TPOEMP2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, DBTables, DB,
  Mask;

type
  TFOREMP2 = class(TFORMOD1)
    nbSatistacao: TNotebook;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    edDataContatoInativa: TMaskEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo3: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    edDataContatoAtiva: TMaskEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBRadioGroup3: TDBRadioGroup;
    DBMemo4: TDBMemo;
    DBRadioGroup4: TDBRadioGroup;
    DBMemo5: TDBMemo;
    DBRadioGroup5: TDBRadioGroup;
    DBMemo6: TDBMemo;
    DBRadioGroup6: TDBRadioGroup;
    DBMemo7: TDBMemo;
    DBRadioGroup7: TDBRadioGroup;
    DBMemo8: TDBMemo;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo9: TDBMemo;
    DBRadioGroup8: TDBRadioGroup;
    DBMemo10: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Shape1: TShape;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    tela :integer;
    { Public declarations }
    Ativa: String;
  end;

var
  FOREMP2: TFOREMP2;

implementation

uses TPODTA, TPOFNC, TPOEMP, TPOEMPA;

{$R *.DFM}

procedure TFOREMP2.FormShow(Sender: TObject);
begin
  inherited;
  // Verifica se a empresa está ativa
  If Ativa = 'SIM'  then
  begin
    // Empresa ativa -> página zero
    nbSatistacao.PageIndex := 0;
    if not DMDTA.quEmpresa.FieldByName('emp_datacontato').IsNull then
      edDataContatoAtiva.Text := DMDTA.quEmpresa.FieldByName('emp_datacontato').AsString;
  end
  else
  begin
    // Empresa inativa -> página um
    nbSatistacao.PageIndex := 1;
    if not DMDTA.quEmpresa.FieldByName('emp_datacontato').IsNull then
      edDataContatoInativa.Text := DMDTA.quEmpresa.FieldByName('emp_datacontato').AsString;
  end;
end;

procedure TFOREMP2.btOkClick(Sender: TObject);
begin
  If nbSatistacao.PageIndex = 0 then
  begin
    // ativas -> atualiza a data se ela foi informada
    If edDataContatoAtiva.Text <> '  /  /    ' then
    begin
      If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresa.FieldByName('emp_datacontato').AsString := edDataContatoAtiva.Text
    end;
  end
  else
  begin
    // inativas -> atualiza a data se ela foi informada
    If edDataContatoInativa.Text <> '  /  /    ' then
    begin
      If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) then
        DmDta.quEmpresa.Edit;
      DmDta.quEmpresa.FieldByName('emp_datacontato').AsString := edDataContatoInativa.Text
    end;
  end;
  inherited;
end;

procedure TFOREMP2.DBMemo4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREMP2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if tela = 1 then
  FOREMP.btSalvarClick(Sender)
 else
   FOREMPA.btSalvarClick(Sender);
  inherited;
end;

end.
