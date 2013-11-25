unit UntIntervalo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFrmIntervalo = class(TForm)
    inicio: TDateTimePicker;
    Final: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    filtro: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIntervalo: TFrmIntervalo;

implementation

{$R *.dfm}

end.
