unit TPOSTCE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Gauges, ComCtrls, DBTables, Db, StdCtrls;

type
  TFORSTCE = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Gauge1: TGauge;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    quTce: TQuery;
    usTce: TUpdateSQL;
    quTA: TQuery;
    quSituacaoEst: TQuery;
    quTATce_cod: TIntegerField;
    quTAPrg_cod: TIntegerField;
    quTATpr_dataini: TDateTimeField;
    quTATpr_datafim: TDateTimeField;
    quTAtpr_retorno: TDateTimeField;
    lblTituloEst: TLabel;
    lblEstudante: TLabel;
    lblTCE: TLabel;
    lblTituloTCE: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORSTCE: TFORSTCE;

implementation

{$R *.DFM}

Uses TPOFNC, TPOCST, TPODTA;

procedure TFORSTCE.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFORSTCE.SpeedButton1Click(Sender: TObject);
var
  situacao: String;
begin
  Screen.Cursor := crHourGlass;
  lblTituloEst.Visible := True;
  lblEstudante.Visible := True;
  lblTituloTce.Visible := True;
  lblTCE.Visible       := True;

  with quTCE do
  begin
    ParamByName('data1').AsDateTime := Date - 30; // 30 dias pra trás
    Open;
    last;
    Gauge1.MinValue := 1;
    Gauge1.MaxValue := RecordCount;
    First;

    while Not Eof do
    begin
      Situacao := FieldByName('tce_situacao').Text;

      if (Not FieldByName('tce_datares').IsNull) or
         (FieldByName('tce_datares').Text <> '') then
      begin
        // Verifica se a data de rescisão já passou
        if FieldByName('tce_datares').Value <= Date then
        begin
          // Muda a situação para "7"
          Edit;
          FieldByName('tce_situacao').Value := '7';
          Situacao := '7';
          Post;
        end
        else
        begin
          // Verifica se tem TA
          with quTA do
          begin
            Close;
            ParamByName('tce_cod').Value := quTce.FieldByName('tce_cod').Value;
            Open;

            Situacao := FieldByName('prg_cod').Text;
            if Situacao = '' then
              Situacao := '0'
            else
            begin
              if FieldByName('tpr_dataini').AsDateTime >= Date then
                Situacao := IntToStr(FieldByName('prg_cod').AsInteger - 1);
            end;
          end;
          Edit;
          FieldByName('tce_situacao').Value := Situacao;
          Post;
        end;
      end
      else
      begin
        // Verifica se tem TA
        with quTA do
        begin
          Close;
          ParamByName('tce_cod').Value := quTce.FieldByName('tce_cod').Value;
          Open;

          Situacao := FieldByName('prg_cod').Text;
          if Situacao = '' then
            Situacao := '0'
          else
          begin
            if FieldByName('tpr_dataini').AsDateTime > Date then
              Situacao := IntToStr(FieldByName('prg_cod').AsInteger - 1);
          end;
        end;
        Edit;
        FieldByName('tce_situacao').Value := Situacao;
        Post;
      end;

      // Atualiza Sit. Estudante
      with quSituacaoEst do
      begin
        Sql.Clear;
        Sql.Add('Update estudante set');
        if Situacao = '7' then
          Sql.Add('est_situacao = ''X''')
        else if quTce.FieldByName('tce_dataini').AsDateTime <= Date then
          Sql.Add('est_situacao = ''S''')
        else
          Sql.Add('est_situacao = ''N''');
        Sql.Add('where est_cod = ' + quTce.FieldByName('est_cod').Text);
        ExecSql;
      end;

      lblEstudante.Caption := quTce.FieldByName('est_cod').AsString;
      lblTCE.Caption       := quTce.FieldByName('tce_cod').AsString;
      Gauge1.Progress      := Gauge1.Progress + 1;

      // Atualiza a situação dos documentos
      if Situacao <> '7' then
        DmDta.AtualizaPgtoEstagiario(quTce.FieldByName('Est_cod').Value, quTce.FieldByName('Tce_cod').Value);

      Update;
      Next;
    end;

    if UpdatesPending then
    begin
      lblTituloEst.Visible := False;
      lblEstudante.Visible := False;
      lblTituloTce.Visible := False;
      lblTCE.Visible       := False;

      ApplyUpdates;
      CommitUpdates;
      Close;
    end;
  end;

  Screen.Cursor := crDefault;
  MSGAVISO('Situação dos TCE''s atualizadas com sucesso!');
  SpeedButton1.Enabled := False;
end;

procedure TFORSTCE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quTce.Close;
  Action := caFree;
end;

procedure TFORSTCE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_F3: SpeedButton1.Click;
    vk_F4: Close;
  end;
end;

end.
