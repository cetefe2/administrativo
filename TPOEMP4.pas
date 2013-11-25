unit TPOEMP4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB;

type
  TFOREMP4 = class(TFORMOD1)
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label1: TLabel;
    DBEdit11: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    tela: integer;
    { Public declarations }
  end;

var
  FOREMP4: TFOREMP4;

implementation

uses TPODTA, TPOFNC, TPOEMP, TPOEMPA;

{$R *.DFM}

procedure TFOREMP4.FormShow(Sender: TObject);
begin
  inherited;
  if DBEdit6.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_enderecoenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_endereco').AsString;
  end;

  if DBEdit4.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_numendenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_numend').AsString;
  end;

  if DBEdit14.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cjtoendenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cjto').AsString;
  end;

  if DBEdit2.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cepenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cep').AsString;
  end;


  if DBEdit8.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_bairroenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_bairro').AsString;
  end;

  if DBEdit9.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_cidadeenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_cidade').AsString;
  end;

  if DBEdit1.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_estadoenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_estado').AsString;
  end;

  if DBEdit11.Text = '' then
  begin
    if not (DmDta.quEmpresa.State in [dsInsert, dsEdit]) then
      DmDta.quEmpresa.Edit;
    DmDta.quEmpresa.FieldByName('emp_telefoneenc').AsString :=
      DmDta.quEmpresa.FieldByName('emp_telefone').AsString;
  end;
end;

procedure TFOREMP4.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFOREMP4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tela = 1 then
    FOREMP.btSalvarClick(Sender)
  else
    FOREMPA.btSalvarClick(Sender);


  inherited;
end;

procedure TFOREMP4.DBEdit2Exit(Sender: TObject);
var
  municipio: integer;
begin

  if DmDta.quEmpresa.State in [dsedit, dsinsert] then
  begin

    DmDTA.qrypesquisa.Close;
    DmDTA.qrypesquisa.SQL.clear;
    DmDTA.qrypesquisa.SQL.add('select * from tb_logradouros where cep_logradouro =:cep');
    DmDTA.qrypesquisa.ParamByName('cep').asstring := copy(DmDta.quEmpresaemp_cepenc.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepenc.AsString, 6, 3);
    DmDTA.qrypesquisa.Open;
    if DmDTA.qrypesquisa.Eof then
    begin
      dmdta.CadastraCep(copy(DmDta.quEmpresaemp_cepenc.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepenc.AsString, 6, 3));
      DmDTA.qrypesquisa.Close;
      DmDTA.qrypesquisa.SQL.clear;
      DmDTA.qrypesquisa.SQL.add('select * from tb_logradouros where cep_logradouro =:cep');
      DmDTA.qrypesquisa.ParamByName('cep').asstring := copy(DmDta.quEmpresaemp_cepenc.AsString, 1, 5) + '-' + copy(DmDta.quEmpresaemp_cepenc.AsString, 6, 3);
      DmDTA.qrypesquisa.Open;
    end;

    if not DmDTA.qrypesquisa.Eof then
    begin
//      if trim(DmDta.quEmpresaemp_enderecoenc.AsString) = '' then
      DmDta.quEmpresaemp_enderecoenc.AsString := DmDTA.qrypesquisa.fieldbyname('nm_logradouro').asstring;
   //   if trim(DmDta.quEmpresaemp_bairro.AsString) = '' then
      DmDta.quEmpresaemp_bairroenc.AsString := DmDTA.qrypesquisa.fieldbyname('bairro_logradouro').asstring;
      municipio := DmDTA.qrypesquisa.fieldbyname('id_municipio').asinteger;
      DmDTA.qrypesquisa.Close;
      DmDTA.qrypesquisa.SQL.clear;
      DmDTA.qrypesquisa.SQL.add('select a.*, b.sg_estado from tb_municipios A,tb_estados b where id_municipio =:municipio and a.id_estado=b.id_estado ');
      DmDTA.qrypesquisa.ParamByName('municipio').asinteger := municipio;
      DmDTA.qrypesquisa.Open;
//      if trim(DmDta.quEmpresaemp_estado.AsString) = '' then
      DmDta.quEmpresaemp_estadoenc.AsString := DmDTA.qrypesquisa.fieldbyname('sg_estado').asstring;
 //     if trim(DmDta.quEmpresaemp_cidade.AsString) = '' then
      DmDta.quEmpresaemp_cidadeenc.AsString := DmDTA.qrypesquisa.fieldbyname('nm_municipio').asstring;
    end;
  end;
end;

end.

