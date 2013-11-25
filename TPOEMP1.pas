unit TPOEMP1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, Buttons, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Db, DBTables;

type
  TFOREMP1 = class(TFORMOD1)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    Label12: TLabel;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo7: TDBMemo;
    pagina: TPageControl;
    p1: TTabSheet;
    p2: TTabSheet;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    Label21: TLabel;
    DBComboBox3: TDBComboBox;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    DBComboBox2: TDBComboBox;
    Label20: TLabel;
    DBComboBox4: TDBComboBox;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    Label25: TLabel;
    DBEdit11: TDBEdit;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    DBEdit20: TDBEdit;
    Label31: TLabel;
    GroupBox4: TGroupBox;
    Label33: TLabel;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit12: TDBEdit;
    Label27: TLabel;
    DBEdit13: TDBEdit;
    Label28: TLabel;
    DBEdit14: TDBEdit;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    Label34: TLabel;
    DBEdit23: TDBEdit;
    Label35: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label36: TLabel;
    DBMemo8: TDBMemo;
    DBMemo9: TDBMemo;
    Label37: TLabel;
    DBComboBox5: TDBComboBox;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit28: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Label45: TLabel;
    DBEdit31: TDBEdit;
    Label46: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit15Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    tela: integer;
    { Public declarations }
  end;

var
  FOREMP1: TFOREMP1;

implementation

uses TPODTA, TPOFNC, TPOEMP, TPOEMPA, tpocst, untLibera;

{$R *.DFM}

procedure TFOREMP1.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREMP1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tela = 1 then
    FOREMP.btSalvarClick(Sender)
  else
    FOREMPA.btSalvarClick(Sender);
  inherited;
end;

procedure TFOREMP1.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
    DmDta.quEmpresa.Edit;

  case DmDta.quEmpresa.FieldByName('Emp_func').AsInteger of
    1..9: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Micro';
    10..100: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Pequena';
    101..500: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Média';
    501..100000: DmDta.quEmpresa.FieldByName('Emp_porte').AsString := 'Grande';
  else
    DmDta.quEmpresa.FieldByName('Emp_porte').AsString := '';
  end;
end;

procedure TFOREMP1.SpeedButton1Click(Sender: TObject);

begin
  inherited;



  with TQuery.Create(nil) do
  begin
    DatabaseName := DATABASE_NAME;
    Sql.Clear;
    Sql.add('update empresa set emp_arqtreino=:pagina  where emp_cod = ' + DmDta.quEmpresa.fieldbyname('Emp_cod').asstring);
    parambyname('pagina').LoadFromFile('c:\PESSOA FÍSICA - PGTO DIRETO.doc', ftBlob);
    execsql;
    Close;
    Free;
  end;

end;

end.

