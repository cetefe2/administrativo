unit TPOPROMALUNO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  TFORPROMALUNO = class(TForm)
    btFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    btEnter: TBitBtn;
    btEmail: TSpeedButton;
    btProcessar: TSpeedButton;
    Label2: TLabel;
    Memo1: TMemo;
    cbxCurso: TComboBox;
    Ano: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    CbxSemestre: TComboBox;
    SpeedButton1: TSpeedButton;
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEnterClick(Sender: TObject);
    procedure cboTipoEmpChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    meses: boolean;
  end;

var
  FORPROMALUNO: TFORPROMALUNO;


implementation

uses TPOREmp2, TPODTA, TPOFNC, TPOEML, TPOCST, TPORVER, TPORETQ1, TPOETQ1,
  TPORETQ;

{$R *.DFM}

procedure TFORPROMALUNO.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFORPROMALUNO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDta.quREmpresa.Close;
  Action := caFree;
end;

procedure TFORPROMALUNO.btEnterClick(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORPROMALUNO.cboTipoEmpChange(Sender: TObject);
begin
  SelectNext(ActiveControl, true, true);
end;

procedure TFORPROMALUNO.SpeedButton1Click(Sender: TObject);

begin
  with DmDta.QryPromocao do
  begin
    Close;
    sql.Clear;
    sql.Text := memo1.text +
      'WHERE     (Tce.Tce_situacao < 7)  and Estudante.est_cod = Tce.Est_cod and ' +
      ' Estudante.cur_cod = Curso.cur_cod  and' ;
    sql.Text := sql.Text + '  cur_nivel  = ''' + cbxcurso.Items[cbxcurso.itemindex] + '''';
    sql.Text := sql.Text + ' and est_cursoano = ' + ano.Text;
    if cbxsemestre.ItemIndex > 0 then
      sql.Text := sql.Text + ' and  estcursosemestre = ' + inttostr(cbxsemestre.ItemIndex);
    sql.Text := sql.Text + ' ORDER BY Curso.cur_nivel, Estudante.Est_nome ';
    open;
  end;
end;

procedure TFORPROMALUNO.btEmailClick(Sender: TObject);

begin
  DmDta.QryPromocao.close;
  with DmDta.QryPesquisa do
  begin
    close;
    if cbxcurso.ItemIndex = 0 then
    begin
      sql.text := 'update estudante set est_cursoano = est_cursoano +1, pcu_anoatual = pcu_anoatual + 1 from ' +
        ' Estudante,tce,curso   where  (Tce.Tce_situacao < 7) ' +
        ' and Estudante.est_cod = Tce.Est_cod and ' +
        ' Estudante.cur_cod = Curso.cur_cod and ' +
        ' pcu_anoatual < 3  and';
      sql.Text := sql.Text + '  cur_nivel  = ''' + cbxcurso.Items[cbxcurso.itemindex] + '''';
      sql.Text := sql.Text + ' and est_cursoano = ' + ano.Text;

      execsql;
    end;

    if cbxcurso.ItemIndex = 2 then
    begin
      sql.text := 'update estudante set est_cursoano = est_cursoano +1, pcu_anoatual = pcu_anoatual + 1 from ' +
        ' Estudante,tce,curso   where  (Tce.Tce_situacao < 7) ' +
        ' and Estudante.est_cod = Tce.Est_cod and ' +
        ' Estudante.cur_cod = Curso.cur_cod and ' +
        ' pcu_anoatual < 4 and ';
      sql.Text := sql.Text + '  cur_nivel  = ''' + cbxcurso.Items[cbxcurso.itemindex] + '''';
      sql.Text := sql.Text + ' and est_cursoano = ' + ano.Text;
      execsql;
    end;
    DmDta.QryPromocao.open;

  end;

end;

procedure TFORPROMALUNO.FormActivate(Sender: TObject);
begin
  DmDta.QryPromocao.close;
end;

end.

