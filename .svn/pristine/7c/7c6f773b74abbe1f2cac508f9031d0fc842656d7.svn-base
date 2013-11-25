unit TPOTALD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DB;

type
  TFORTALD = class(TFORMOD1)
    segunda: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    meEntSeg1: TMaskEdit;
    meSaiSeg1: TMaskEdit;
    meSaiSeg2: TMaskEdit;
    meEntSeg2: TMaskEdit;
    terca: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    meentTer1: TMaskEdit;
    meSaiTer1: TMaskEdit;
    meSaiTer2: TMaskEdit;
    meEntTer2: TMaskEdit;
    quarta: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    meEntQua1: TMaskEdit;
    meSaiQua1: TMaskEdit;
    meSaiQua2: TMaskEdit;
    meEntQua2: TMaskEdit;
    quinta: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    meEntQui1: TMaskEdit;
    meSaiQui1: TMaskEdit;
    meSaiQui2: TMaskEdit;
    meEntQui2: TMaskEdit;
    sexta: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    meEntSex1: TMaskEdit;
    meSaiSex1: TMaskEdit;
    meSaiSex2: TMaskEdit;
    meEntSex2: TMaskEdit;
    sabado: TGroupBox;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    meEntSab1: TMaskEdit;
    meSaiSab1: TMaskEdit;
    meEntSab2: TMaskEdit;
    meSaiSab2: TMaskEdit;
    domingo: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    meEntDom1: TMaskEdit;
    meSaiDom1: TMaskEdit;
    meSaiDom2: TMaskEdit;
    meEntDom2: TMaskEdit;
    meIntSeg: TMaskEdit;
    Label29: TLabel;
    meIntTer: TMaskEdit;
    Label30: TLabel;
    Label31: TLabel;
    meIntQua: TMaskEdit;
    Label32: TLabel;
    meIntQui: TMaskEdit;
    Label33: TLabel;
    meIntSex: TMaskEdit;
    Label34: TLabel;
    meIntSab: TMaskEdit;
    Label35: TLabel;
    meIntDom: TMaskEdit;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meSaiSeg1Exit(Sender: TObject);
    procedure meSaiTer1Exit(Sender: TObject);
    procedure meSaiQua1Exit(Sender: TObject);
    procedure meSaiSex1Exit(Sender: TObject);
    procedure meSaiSab1Exit(Sender: TObject);
    procedure meSaiDom1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FORTALD: TFORTALD;

implementation

{$R *.DFM}

uses TPODTA;

procedure TFORTALD.btOkClick(Sender: TObject);
begin
  if not (DmDta.quTceAlteracao.State in [dsInsert, dsEdit]) then
    DmDta.quTceAlteracao.Edit;

  // atualiza as colunas
  if meIntSab.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterSab').text := '01/01/1900 ' + meIntSab.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterSab').text := '';

  if meIntSeg.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterSeg').text := '01/01/1900 ' + meIntSeg.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterSeg').text := '';

  if meIntTer.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterTer').text := '01/01/1900 ' + meIntTer.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterTer').text := '';

  if meIntQua.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterQua').text := '01/01/1900 ' + meIntQua.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterQua').text := '';

  if meIntQui.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterQui').text := '01/01/1900 ' + meIntQui.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterQui').text := '';

  if meIntSex.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterSex').text := '01/01/1900 ' + meIntSex.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_InterSex').text := '';

  if meIntDom.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('tal_InterDom').text := '01/01/1900 ' + meIntDom.Text
  else
    DmDta.quTCEAlteracao.FieldByName('tal_Interdom').text := '';




  // Sábado
  if meEntSab1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini1').text := '01/01/1900 ' + meEntSab1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini1').text := '';
  if meSaiSab1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim1').text := '01/01/1900 ' + meSaiSab1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim1').text := '';
  if meEntSab2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini2').text := '01/01/1900 ' + meEntSab2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini2').text := '';
  if meSaiSab2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim2').text := '01/01/1900 ' + meSaiSab2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim2').text := '';


  // Domingo
  if meEntDom1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini1').text := '01/01/1900 ' + meEntDom1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini1').text := '';
  if meSaiDom1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim1').text := '01/01/1900 ' + meSaidom1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim1').text := '';
  if meEntDom2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini2').text := '01/01/1900 ' + meEntDom2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini2').text := '';
  if meSaiDom2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_Hordomfim2').text := '01/01/1900 ' + meSaiDom2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_Hordomfim2').text := '';


 // Segunda
  if meEntSeg1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini1').text := '01/01/1900 ' + meEntSeg1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini1').text := '';
  if meSaiSeg1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim1').text := '01/01/1900 ' + meSaiSeg1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim1').text := '';
  if meEntSeg2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini2').text := '01/01/1900 ' + meEntSeg2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini2').text := '';
  if meSaiSeg2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim2').text := '01/01/1900 ' + meSaiSeg2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim2').text := '';


  // Terca
  if meEntTer1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini1').text := '01/01/1900 ' + meEntTer1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini1').text := '';
  if meSaiTer1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim1').text := '01/01/1900 ' + meSaiTer1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim1').text := '';
  if meEntTer2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini2').text := '01/01/1900 ' + meEntTer2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini2').text := '';
  if meSaiTer2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim2').text := '01/01/1900 ' + meSaiTer2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim2').text := '';


  // Quarta
  if meEntQua1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini1').text := '01/01/1900 ' + meEntQua1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini1').text := '';
  if meSaiQua1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim1').text := '01/01/1900 ' + meSaiQua1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim1').text := '';
  if meEntQua2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini2').text := '01/01/1900 ' + meEntQua2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini2').text := '';
  if meSaiQua2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim2').text := '01/01/1900 ' + meSaiQua2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim2').text := '';


  // Quinta
  if meEntQui1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini1').text := '01/01/1900 ' + meEntQui1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini1').text := '';
  if meSaiQui1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim1').text := '01/01/1900 ' + meSaiQui1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim1').text := '';
  if meEntQui2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini2').text := '01/01/1900 ' + meEntQui2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini2').text := '';
  if meSaiQui2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim2').text := '01/01/1900 ' + meSaiQui2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim2').text := '';

 // Sexta
  if meEntSex1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini1').text := '01/01/1900 ' + meEntSex1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini1').text := '';
  if meSaiSex1.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim1').text := '01/01/1900 ' + meSaiSex1.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim1').text := '';
  if meEntSex2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini2').text := '01/01/1900 ' + meEntSex2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini2').text := '';
  if meSaiSex2.Text <> '  :  ' then
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim2').text := '01/01/1900 ' + meSaiSex2.Text
  else
    DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim2').text := '';




  inherited;
end;

procedure TFORTALD.FormShow(Sender: TObject);
begin
  inherited;
 { if not DmDta.quTceAlteracao.FieldByName('tal_HorSabini1').IsNull then
    meEnt1.Text := FormatDateTime('hh:nn',DmDta.quTceAlteracao.FieldByName('tal_HorSabini1').Value);
  if not DmDta.quTceAlteracao.FieldByName('tal_HorSabfim1').IsNull then
    meSai1.Text := FormatDateTime('hh:nn',DmDta.quTceAlteracao.FieldByName('tal_HorSabfim1').Value);
  if not DmDta.quTceAlteracao.FieldByName('tal_HorSabini2').IsNull then
    meEnt2.Text := FormatDateTime('hh:nn',DmDta.quTceAlteracao.FieldByName('tal_HorSabini2').Value);
  if not DmDta.quTceAlteracao.FieldByName('tal_HorSabfim2').IsNull then
    meSai2.Text := FormatDateTime('hh:nn',DmDta.quTceAlteracao.FieldByName('tal_HorSabfim2').Value);
  }

  if not DmDta.qutcealteracao.FieldByName('tal_InterSab').IsNull then
    meintSab.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterSab').Value);

  if not DmDta.qutcealteracao.FieldByName('tal_InterSeg').IsNull then
    meintSeg.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterSeg').Value);

  if not DmDta.qutcealteracao.FieldByName('tal_InterTer').IsNull then
    meintTer.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterTer').Value);

  if not DmDta.qutcealteracao.FieldByName('tal_InterQua').IsNull then
    meintQua.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterQua').Value);
  if not DmDta.qutcealteracao.FieldByName('tal_Interqui').IsNull then
    meintQui.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterQui').Value);
  if not DmDta.qutcealteracao.FieldByName('tal_InterSex').IsNull then
    meintSex.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterSex').Value);
  if not DmDta.qutcealteracao.FieldByName('tal_InterDom').IsNull then
    meintDom.Text := FormatDateTime('hh:nn', DmDta.qutcealteracao.FieldByName('tal_InterDom').Value);


  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini1').IsNull then
    meEntSab1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim1').IsNull then
    meSaiSab1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini2').IsNull then
    meEntSab2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSabini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim2').IsNull then
    meSaiSab2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSabfim2').Value);
  // Segunda
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini1').IsNull then
    meEntSeg1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim1').IsNull then
    meSaiSeg1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini2').IsNull then
    meEntSeg2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSegini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim2').IsNull then
    meSaiSeg2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSegfim2').Value);
  //Terca
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini1').IsNull then
    meEntTer1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim1').IsNull then
    meSaiTer1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini2').IsNull then
    meEntTer2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorTerini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim2').IsNull then
    meSaiTer2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorTerfim2').Value);
 //Quarta
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini1').IsNull then
    meEntQua1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim1').IsNull then
    meSaiQua1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini2').IsNull then
    meEntQua2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuaini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim2').IsNull then
    meSaiQua2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuafim2').Value);

// Quinta
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini1').IsNull then
    meEntQui1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim1').IsNull then
    meSaiQui1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini2').IsNull then
    meEntQui2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuiini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim2').IsNull then
    meSaiQui2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorQuifim2').Value);
// sexta
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini1').IsNull then
    meEntSex1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim1').IsNull then
    meSaiSex1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini2').IsNull then
    meEntSex2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSexini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim2').IsNull then
    meSaiSex2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorSexfim2').Value);

 //Domingo
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini1').IsNull then
    meEntDom1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim1').IsNull then
    meSaiDom1.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim1').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini2').IsNull then
    meEntDom2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorDomini2').Value);
  if not DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim2').IsNull then
    meSaiDom2.Text := FormatDateTime('hh:nn', DmDta.quTCEAlteracao.FieldByName('Tal_HorDomfim2').Value);







end;

procedure TFORTALD.meSaiSeg1Exit(Sender: TObject);
begin
  inherited;
  if (meEntSeg2.Text <> '  :  ') and (meSaiSeg1.Text <> '  :  ') then
    meIntSeg.Text := timetostr(strtotime(meentSeg2.text) - strtotime(mesaiSeg1.text));

end;

procedure TFORTALD.meSaiTer1Exit(Sender: TObject);
begin
  inherited;
  if (meEntTer2.Text <> '  :  ') and (meSaiTer1.Text <> '  :  ') then
    meIntTer.Text := timetostr(strtotime(meentter2.text) - strtotime(mesaiTer1.text));
end;

procedure TFORTALD.meSaiQua1Exit(Sender: TObject);
begin
  inherited;
  if (meEntQua2.Text <> '  :  ') and (meSaiQua1.Text <> '  :  ') then
    meIntQua.Text := timetostr(strtotime(meentQua2.text) - strtotime(mesaiQua1.text));
end;

procedure TFORTALD.meSaiSex1Exit(Sender: TObject);
begin
  inherited;
  if (meEntqui2.Text <> '  :  ') and (meSaiqui1.Text <> '  :  ') then
    meIntQui.Text := timetostr(strtotime(meentQui2.text) - strtotime(mesaiQui1.text));
end;

procedure TFORTALD.meSaiSab1Exit(Sender: TObject);
begin
  inherited;
  if (meEntSab2.Text <> '  :  ') and (meSaiSab1.Text <> '  :  ') then
    meIntSab.Text := timetostr(strtotime(meentSab2.text) - strtotime(mesaiSab1.text));
end;

procedure TFORTALD.meSaiDom1Exit(Sender: TObject);
begin
  inherited;
  if (meEntDom2.Text <> '  :  ') and (meSaiDom1.Text <> '  :  ') then
    meIntDom.Text := timetostr(strtotime(meentDom2.text) - strtotime(mesaiDom1.text));
end;

end.

