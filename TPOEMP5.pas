unit TPOEMP5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB;

type
  TFOREMP5 = class(TFORMOD1)
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
     tela:integer;
    { Public declarations }
  end;

var
  FOREMP5: TFOREMP5;

implementation

uses TPODTA, TPOFNC, TPOEMP, TPOEMPA;

{$R *.DFM}

procedure TFOREMP5.FormShow(Sender: TObject);
begin
  inherited;
  If DBEdit6.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_enderecocor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_endereco').AsString;
  end;

  If DBEdit4.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_numendcor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_numend').AsString;
  end;

  If DBEdit14.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cjtoendcor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cjto').AsString;
  end;

  If DBEdit2.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cepcor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cep').AsString;
  end;


  If DBEdit8.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_bairrocor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_bairro').AsString;
  end;

  If DBEdit9.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cidadecor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cidade').AsString;
  end;

  If DBEdit1.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_estadocor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_estado').AsString;
  end;

  If DBEdit11.Text = '' then
  begin
    If Not (DmDta.quEmpresa.State in [dsInsert,dsEdit]) Then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_telefonecor').AsString :=
      DmDta.quEmpresa.FieldByName('emp_telefone').AsString;
  end;
end;

procedure TFOREMP5.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREMP5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if tela = 1 then
  FOREMP.btSalvarClick(Sender)
else
  FOREMPA.btSalvarClick(Sender);

  inherited;
end;

procedure TFOREMP5.DBEdit2Exit(Sender: TObject);
var
  municipio: integer;
begin

 if DmDta.quEmpresa.State in [dsedit, dsinsert] then
  begin

    DmDTA.qrypesquisa.Close;
    DmDTA.qrypesquisa.SQL.clear;
    DmDTA.qrypesquisa.SQL.add('select * from tb_logradouros where cep_logradouro =:cep');
    DmDTA.qrypesquisa.ParamByName('cep').asstring := copy(DmDta.quEmpresaemp_cepcor.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepcor.AsString, 6, 3);
    DmDTA.qrypesquisa.Open;
    if DmDTA.qrypesquisa.Eof then
    begin
        dmdta.CadastraCep(copy(DmDta.quEmpresaemp_cepcor.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepcor.AsString, 6, 3));
      DmDTA.qrypesquisa.Close;
      DmDTA.qrypesquisa.SQL.clear;
      DmDTA.qrypesquisa.SQL.add('select * from tb_logradouros where cep_logradouro =:cep');
      DmDTA.qrypesquisa.ParamByName('cep').asstring := copy(DmDta.quEmpresaemp_cepcor.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepcor.AsString, 6, 3);
      DmDTA.qrypesquisa.Open;
    end;

    if not DmDTA.qrypesquisa.Eof then
    begin
//      if trim(DmDta.quEmpresaemp_enderecoenc.AsString) = '' then
        DmDta.quEmpresaemp_enderecocor.AsString := DmDTA.qrypesquisa.fieldbyname('nm_logradouro').asstring;
   //   if trim(DmDta.quEmpresaemp_bairro.AsString) = '' then
        DmDta.quEmpresaemp_bairrocor.AsString := DmDTA.qrypesquisa.fieldbyname('bairro_logradouro').asstring;
      municipio := DmDTA.qrypesquisa.fieldbyname('id_municipio').asinteger;
      DmDTA.qrypesquisa.Close;
      DmDTA.qrypesquisa.SQL.clear;
      DmDTA.qrypesquisa.SQL.add('select a.*, b.sg_estado from tb_municipios A,tb_estados b where id_municipio =:municipio and a.id_estado=b.id_estado ');
      DmDTA.qrypesquisa.ParamByName('municipio').asinteger := municipio;
      DmDTA.qrypesquisa.Open;
//      if trim(DmDta.quEmpresaemp_estado.AsString) = '' then
        DmDta.quEmpresaemp_estadocor.AsString := DmDTA.qrypesquisa.fieldbyname('sg_estado').asstring;
 //     if trim(DmDta.quEmpresaemp_cidade.AsString) = '' then
        DmDta.quEmpresaemp_cidadecor.AsString := DmDTA.qrypesquisa.fieldbyname('nm_municipio').asstring;
    end;
  end;
end;

end.
