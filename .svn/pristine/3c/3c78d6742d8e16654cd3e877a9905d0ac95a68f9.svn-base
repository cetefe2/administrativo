unit TPOESTME;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TFORESTME = class(TForm)
    btFechar: TSpeedButton;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    meDataIni: TMaskEdit;
    meDataFim: TMaskEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblEstagiariosIncluidos: TLabel;
    lblEstagiariosExcluidos: TLabel;
    lblDuracaoMedia: TLabel;
    Label3: TLabel;
    procedure meDataFimExit(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORESTME: TFORESTME;

implementation

uses TPODTE;

{$R *.dfm}

procedure TFORESTME.meDataFimExit(Sender: TObject);
begin
  if (meDataIni.Text <> '') and (meDataFim.Text <> '') then
  begin
    with DmDTE.quEstatisticas do
    begin
      close;
      sql.clear;
      sql.add('select 		1 Tipo, count(*) Total');
      sql.add('from 			TCE');
      sql.add('where     tce_dataini between :data1 and :data2');
      ParamByName('data1').AsDateTime := StrToDate(meDataIni.Text);
      ParamByName('data2').AsDateTime := StrToDate(meDataFim.Text);
      Open;
      lblEstagiariosIncluidos.Caption := FormatFloat('0000', FieldByName('Total').AsFloat);

      close;
      sql.clear;
      sql.add('select 		2 Tipo, count(*) Total');
      sql.add('from 			TCE');
      sql.add('where     tce_datares between :data1 and :data2');
      ParamByName('data1').AsDateTime := StrToDate(meDataIni.Text);
      ParamByName('data2').AsDateTime := StrToDate(meDataFim.Text);
      Open;
      lblEstagiariosExcluidos.Caption := FormatFloat('0000', FieldByName('Total').AsFloat);

      close;
      sql.clear;
      sql.add('select 		3 Tipo, avg(datediff(dd, tce_dataini, tce_datares)/30) Total');
      sql.add('from 			TCE');
      sql.add('where     tce_datares between :data1 and :data2');
      ParamByName('data1').AsDateTime := StrToDate(meDataIni.Text);
      ParamByName('data2').AsDateTime := StrToDate(meDataFim.Text);
      Open;
      lblDuracaoMedia.Caption := FormatFloat('0.0', FieldByName('Total').AsFloat);

      Close;
    end;
  end;
end;

procedure TFORESTME.btFecharClick(Sender: TObject);
begin
  Close;
end;

end.
