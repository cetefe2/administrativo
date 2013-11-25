unit TPOVAGD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DB;

type
  TFORVAGD = class(TFORMOD1)
    segunda: TGroupBox;
    terca: TGroupBox;
    quarta: TGroupBox;
    quinta: TGroupBox;
    sexta: TGroupBox;
    sabado: TGroupBox;
    domingo: TGroupBox;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    meEntSab1: TMaskEdit;
    meSaiSab1: TMaskEdit;
    meEntSab2: TMaskEdit;
    meSaiSab2: TMaskEdit;
    Label1: TLabel;
    meEntSeg1: TMaskEdit;
    meSaiSeg1: TMaskEdit;
    Label2: TLabel;
    meSaiSeg2: TMaskEdit;
    Label3: TLabel;
    meEntSeg2: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    meentTer1: TMaskEdit;
    meSaiTer1: TMaskEdit;
    Label6: TLabel;
    meSaiTer2: TMaskEdit;
    Label7: TLabel;
    meEntTer2: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    meEntQua1: TMaskEdit;
    meSaiQua1: TMaskEdit;
    Label10: TLabel;
    meSaiQua2: TMaskEdit;
    Label12: TLabel;
    meEntQua2: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    meEntQui1: TMaskEdit;
    meSaiQui1: TMaskEdit;
    Label15: TLabel;
    meSaiQui2: TMaskEdit;
    Label16: TLabel;
    meEntQui2: TMaskEdit;
    Label20: TLabel;
    Label21: TLabel;
    meEntSex1: TMaskEdit;
    meSaiSex1: TMaskEdit;
    Label22: TLabel;
    meSaiSex2: TMaskEdit;
    Label23: TLabel;
    meEntSex2: TMaskEdit;
    Label24: TLabel;
    Label25: TLabel;
    meEntDom1: TMaskEdit;
    meSaiDom1: TMaskEdit;
    Label26: TLabel;
    meSaiDom2: TMaskEdit;
    Label27: TLabel;
    meEntDom2: TMaskEdit;
    Label28: TLabel;
    meIntSeg: TMaskEdit;
    Label29: TLabel;
    Label30: TLabel;
    meIntTer: TMaskEdit;
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
    procedure meSaiQui1Exit(Sender: TObject);
    procedure meSaiSex1Exit(Sender: TObject);
    procedure meSaiSab1Exit(Sender: TObject);
    procedure meSaiDom1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FORVAGD: TFORVAGD;

implementation

{$R *.DFM}

uses TPODTA;

procedure TFORVAGD.btOkClick(Sender: TObject);
begin
  if not (DmDta.quvaga.State in [dsInsert, dsEdit]) then
    DmDta.quvaga.Edit;
  // atualiza as colunas
  // Sábado
  if meIntSab.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterSab').text := '01/01/1900 ' + meIntSab.Text
  else
    DmDta.quvaga.FieldByName('vag_InterSab').text := '';

  if meIntSeg.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterSeg').text := '01/01/1900 ' + meIntSeg.Text
  else
    DmDta.quvaga.FieldByName('vag_InterSeg').text := '';

  if meIntTer.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterTer').text := '01/01/1900 ' + meIntTer.Text
  else
    DmDta.quvaga.FieldByName('vag_InterTer').text := '';

  if meIntQua.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterQua').text := '01/01/1900 ' + meIntQua.Text
  else
    DmDta.quvaga.FieldByName('vag_InterQua').text := '';

  if meIntQui.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterQui').text := '01/01/1900 ' + meIntQui.Text
  else
    DmDta.quvaga.FieldByName('vag_InterQui').text := '';

  if meIntSex.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterSex').text := '01/01/1900 ' + meIntSex.Text
  else
    DmDta.quvaga.FieldByName('vag_InterSex').text := '';

  if meIntDom.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_InterDom').text := '01/01/1900 ' + meIntDom.Text
  else
    DmDta.quvaga.FieldByName('vag_Interdom').text := '';


  if meEntSab1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSabini1').text := '01/01/1900 ' + meEntSab1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSabini1').text := '';
  if meSaiSab1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSabfim1').text := '01/01/1900 ' + meSaiSab1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSabfim1').text := '';
  if meEntSab2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSabini2').text := '01/01/1900 ' + meEntSab2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSabini2').text := '';
  if meSaiSab2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSabfim2').text := '01/01/1900 ' + meSaiSab2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSabfim2').text := '';


  // Domingo
  if meEntDom1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorDomini1').text := '01/01/1900 ' + meEntDom1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorDomini1').text := '';
  if meSaiDom1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorDomfim1').text := '01/01/1900 ' + meSaidom1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorDomfim1').text := '';
  if meEntDom2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorDomini2').text := '01/01/1900 ' + meEntDom2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorDomini2').text := '';
  if meSaiDom2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_Hordomfim2').text := '01/01/1900 ' + meSaiDom2.Text
  else
    DmDta.quvaga.FieldByName('vag_Hordomfim2').text := '';


 // Segunda
  if meEntSeg1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSegini1').text := '01/01/1900 ' + meEntSeg1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSegini1').text := '';
  if meSaiSeg1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSegfim1').text := '01/01/1900 ' + meSaiSeg1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSegfim1').text := '';
  if meEntSeg2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSegini2').text := '01/01/1900 ' + meEntSeg2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSegini2').text := '';
  if meSaiSeg2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSegfim2').text := '01/01/1900 ' + meSaiSeg2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSegfim2').text := '';


  // Terca
  if meEntTer1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorTerini1').text := '01/01/1900 ' + meEntTer1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorTerini1').text := '';
  if meSaiTer1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorTerfim1').text := '01/01/1900 ' + meSaiTer1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorTerfim1').text := '';
  if meEntTer2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorTerini2').text := '01/01/1900 ' + meEntTer2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorTerini2').text := '';
  if meSaiTer2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorTerfim2').text := '01/01/1900 ' + meSaiTer2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorTerfim2').text := '';


  // Quarta
  if meEntQua1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuaini1').text := '01/01/1900 ' + meEntQua1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuaini1').text := '';
  if meSaiQua1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuafim1').text := '01/01/1900 ' + meSaiQua1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuafim1').text := '';
  if meEntQua2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuaini2').text := '01/01/1900 ' + meEntQua2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuaini2').text := '';
  if meSaiQua2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuafim2').text := '01/01/1900 ' + meSaiQua2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuafim2').text := '';


  // Quinta
  if meEntQui1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuiini1').text := '01/01/1900 ' + meEntQui1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuiini1').text := '';
  if meSaiQui1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuifim1').text := '01/01/1900 ' + meSaiQui1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuifim1').text := '';
  if meEntQui2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuiini2').text := '01/01/1900 ' + meEntQui2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuiini2').text := '';
  if meSaiQui2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorQuifim2').text := '01/01/1900 ' + meSaiQui2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorQuifim2').text := '';

 // Sexta
  if meEntSex1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSexini1').text := '01/01/1900 ' + meEntSex1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSexini1').text := '';
  if meSaiSex1.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSexfim1').text := '01/01/1900 ' + meSaiSex1.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSexfim1').text := '';
  if meEntSex2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSexini2').text := '01/01/1900 ' + meEntSex2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSexini2').text := '';
  if meSaiSex2.Text <> '  :  ' then
    DmDta.quvaga.FieldByName('vag_HorSexfim2').text := '01/01/1900 ' + meSaiSex2.Text
  else
    DmDta.quvaga.FieldByName('vag_HorSexfim2').text := '';





  inherited;
end;

procedure TFORVAGD.FormShow(Sender: TObject);
begin
  inherited;
  // Sabado
  if not DmDta.quvaga.FieldByName('vag_HorSabini1').IsNull then
    meEntSab1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSabini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSabfim1').IsNull then
    meSaiSab1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSabfim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSabini2').IsNull then
    meEntSab2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSabini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSabfim2').IsNull then
    meSaiSab2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSabfim2').Value);
  if not DmDta.quvaga.FieldByName('vag_InterSab').IsNull then
    meintSab.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterSab').Value);
  // Segunda
  if not DmDta.quvaga.FieldByName('vag_HorSegini1').IsNull then
    meEntSeg1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSegini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSegfim1').IsNull then
    meSaiSeg1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSegfim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSegini2').IsNull then
    meEntSeg2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSegini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSegfim2').IsNull then
    meSaiSeg2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSegfim2').Value);

  if not DmDta.quvaga.FieldByName('vag_InterSeg').IsNull then
    meintSeg.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterSeg').Value);
  //Terca
  if not DmDta.quvaga.FieldByName('vag_HorTerini1').IsNull then
    meEntTer1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorTerini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorTerfim1').IsNull then
    meSaiTer1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorTerfim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorTerini2').IsNull then
    meEntTer2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorTerini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorTerfim2').IsNull then
    meSaiTer2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorTerfim2').Value);
  if not DmDta.quvaga.FieldByName('vag_InterTer').IsNull then
    meintTer.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterTer').Value);
 //Quarta
  if not DmDta.quvaga.FieldByName('vag_HorQuaini1').IsNull then
    meEntQua1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuaini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuafim1').IsNull then
    meSaiQua1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuafim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuaini2').IsNull then
    meEntQua2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuaini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuafim2').IsNull then
    meSaiQua2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuafim2').Value);
  if not DmDta.quvaga.FieldByName('vag_InterQua').IsNull then
    meintQua.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterQua').Value);

// Quinta
  if not DmDta.quvaga.FieldByName('vag_HorQuiini1').IsNull then
    meEntQui1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuiini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuifim1').IsNull then
    meSaiQui1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuifim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuiini2').IsNull then
    meEntQui2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuiini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorQuifim2').IsNull then
    meSaiQui2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorQuifim2').Value);
  if not DmDta.quvaga.FieldByName('vag_Interqui').IsNull then
    meintQui.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterQui').Value);
// sexta
  if not DmDta.quvaga.FieldByName('vag_HorSexini1').IsNull then
    meEntSex1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSexini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSexfim1').IsNull then
    meSaiSex1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSexfim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSexini2').IsNull then
    meEntSex2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSexini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorSexfim2').IsNull then
    meSaiSex2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorSexfim2').Value);
  if not DmDta.quvaga.FieldByName('vag_InterSex').IsNull then
    meintSex.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterSex').Value);

 //Domingo
  if not DmDta.quvaga.FieldByName('vag_HorDomini1').IsNull then
    meEntDom1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorDomini1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorDomfim1').IsNull then
    meSaiDom1.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorDomfim1').Value);
  if not DmDta.quvaga.FieldByName('vag_HorDomini2').IsNull then
    meEntDom2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorDomini2').Value);
  if not DmDta.quvaga.FieldByName('vag_HorDomfim2').IsNull then
    meSaiDom2.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_HorDomfim2').Value);

  if not DmDta.quvaga.FieldByName('vag_InterDom').IsNull then
    meintDom.Text := FormatDateTime('hh:nn', DmDta.quvaga.FieldByName('vag_InterDom').Value);




end;

procedure TFORVAGD.meSaiSeg1Exit(Sender: TObject);
begin
  inherited;
  if (meEntSeg2.Text <> '  :  ') and (meSaiSeg1.Text <> '  :  ') then
    meIntSeg.Text := timetostr(strtotime(meentSeg2.text) - strtotime(mesaiSeg1.text));
end;

procedure TFORVAGD.meSaiTer1Exit(Sender: TObject);
begin
  inherited;
  if (meEntTer2.Text <> '  :  ') and (meSaiTer1.Text <> '  :  ') then
    meIntTer.Text := timetostr(strtotime(meentter2.text) - strtotime(mesaiTer1.text));
end;

procedure TFORVAGD.meSaiQua1Exit(Sender: TObject);
begin
  inherited;
  if (meEntQua2.Text <> '  :  ') and (meSaiQua1.Text <> '  :  ') then
    meIntQua.Text := timetostr(strtotime(meentQua2.text) - strtotime(mesaiQua1.text));
end;

procedure TFORVAGD.meSaiQui1Exit(Sender: TObject);
begin
  inherited;
  if (meEntqui2.Text <> '  :  ') and (meSaiqui1.Text <> '  :  ') then
    meIntQui.Text := timetostr(strtotime(meentQui2.text) - strtotime(mesaiQui1.text));

end;

procedure TFORVAGD.meSaiSex1Exit(Sender: TObject);
begin
  inherited;
  if (meEntSex2.Text <> '  :  ') and (meSaiSex1.Text <> '  :  ') then
    meIntSex.Text := timetostr(strtotime(meentSex2.text) - strtotime(mesaiSex1.text));
end;

procedure TFORVAGD.meSaiSab1Exit(Sender: TObject);
begin
  inherited;
  if (meEntSab2.Text <> '  :  ') and (meSaiSab1.Text <> '  :  ') then
    meIntSab.Text := timetostr(strtotime(meentSab2.text) - strtotime(mesaiSab1.text));
end;

procedure TFORVAGD.meSaiDom1Exit(Sender: TObject);
begin
  inherited;
  if (meEntDom2.Text <> '  :  ') and (meSaiDom1.Text <> '  :  ') then
    meIntDom.Text := timetostr(strtotime(meentDom2.text) - strtotime(mesaiDom1.text));
end;

end.

