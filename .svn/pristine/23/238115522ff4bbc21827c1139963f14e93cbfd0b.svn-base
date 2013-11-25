unit UnitAtCetefe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CoolTrayIcon, ExtCtrls, ImgList, IBServices, Menus, registry, dateutils,
  DBTables, DB;

type
  THorario = packed record
    Hora: TTime;
    Feito: Boolean;
    Agendado: Boolean;
  end;

  TAtualiza = class(TForm)
    TrayIcon1: TCoolTrayIcon;
    ImageList4: TImageList;
    Timer1: TTimer;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    GravarAgora1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    db_Principal: TDatabase;
    quTA: TQuery;
    quTATce_cod: TIntegerField;
    quTAPrg_cod: TIntegerField;
    quTATpr_dataini: TDateTimeField;
    quTATpr_datafim: TDateTimeField;
    quTAtpr_retorno: TDateTimeField;
    quSituacaoEst: TQuery;
    usTce: TUpdateSQL;
    quTce: TQuery;
    procedure TrayIcon1Startup(Sender: TObject;
      var ShowMainForm: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure GravarAgora1Click(Sender: TObject);
    procedure AtualizaPgtoEstagiario(EstCod, TceCod: Integer);
    procedure FormCreate(Sender: TObject);
  private
    data: tdate;
    Horarios: array[0..23] of THorario;
    status: integer;
    { Private declarations }
  public
    function DoBackup: Boolean;

    { Public declarations }
  end;

var
  Atualiza: TAtualiza;
const
  Dia: array[1..7] of string = ('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado');


implementation

{$R *.dfm}

procedure TAtualiza.TrayIcon1Startup(Sender: TObject;
  var ShowMainForm: Boolean);
var
  reg: TRegistry;
  DiaBackup: Boolean;
  i: integer;

begin
  status := 0;
  ShowMainForm := false;
  data := date;
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if not reg.OpenKey('\Software\ATCetefe', false) then
    begin
    end
    else
    begin
      try
        DiaBackup := reg.ReadBool(Dia[DayOfWeek(date)]);
      except
        DiaBackup := false;
      end;
      if not DiaBackup or not reg.OpenKey('\Software\AtCetefe\Horarios', false) then
      else
      begin
        for i := low(Horarios) to high(Horarios) do
        begin
          Horarios[i].Hora := I;
          Horarios[i].Agendado := reg.ReadBool(formatfloat('00', i) + ':00');
        end;
        Timer1.Enabled := true;
      end;
    end;
  finally
    reg.CloseKey;
  end;

end;

procedure TAtualiza.Timer1Timer(Sender: TObject);
var
  i: integer;
  x: boolean;
begin
  if status = 1 then
  begin
    TrayIcon1.CycleIcons := False;
    TrayIcon1.IconList := nil;
    ImageList1.GetIcon(0, TrayIcon1.Icon);
    status := 0;
  end;
  if date <> data then
  begin
    for i := low(Horarios) to High(Horarios) do
    begin
      Horarios[i].Feito := false;
    end;
    data := date;
  end;

  for i := low(Horarios) to High(Horarios) do
  begin
    if (Horarios[i].Agendado) and (not Horarios[i].Feito) and (Horarios[i].Hora = HourOf(now)) then
    begin
      status := 1;
      TrayIcon1.IconList := ImageList4;
      TrayIcon1.CycleInterval := 100;
      TrayIcon1.CycleIcons := True;
      Timer1.Enabled := false;
      Horarios[i].Feito := true;
      x := DoBackup;
      Timer1.Enabled := true;
      TrayIcon1.IconList := ImageList1;
      TrayIcon1.CycleIcons := False;
      Break;
    end;
  end;
end;

procedure TAtualiza.Sair1Click(Sender: TObject);
begin
  halt;
end;

procedure TAtualiza.GravarAgora1Click(Sender: TObject);
begin
  status := 1;
  TrayIcon1.IconList := ImageList4;
  TrayIcon1.CycleInterval := 0;
  TrayIcon1.CycleIcons := True;
  Timer1.Enabled := false;

  DoBackup;
  Timer1.Enabled := true;
  TrayIcon1.IconList := ImageList1;
  TrayIcon1.CycleIcons := False;

end;

function TAtualiza.DoBackup: Boolean;
var
  reg: TRegistry;
  situacao: string;
begin
  Result := true;
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
   // inserir codigo
    with quTCE do
    begin
      ParamByName('data1').AsDateTime := Date - 30; // 30 dias pra trás
      Open;
      last;
      First;

      while not Eof do
      begin
        Situacao := FieldByName('tce_situacao').Text;

        if (not FieldByName('tce_datares').IsNull) or
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
      // Atualiza a situação dos documentos
        if Situacao <> '7' then
          AtualizaPgtoEstagiario(quTce.FieldByName('Est_cod').Value, quTce.FieldByName('Tce_cod').Value);
        Update;
        Next;
      end;

      if UpdatesPending then
      begin

        ApplyUpdates;
        CommitUpdates;
        Close;
      end;
    end;
   //
  finally
    reg.CloseKey;
    reg.Free;
  end;
end;


procedure TAtualiza.FormCreate(Sender: TObject);
var
  registry: tregistry;
  programa: string;
begin
  programa := application.ExeName;
  registry := tregistry.create;
  try
    Registry.rootkey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', False);
    Registry.Writestring('AtCetefe', programa);
    Registry.Closekey;
  finally
    Registry.free;
  end;
end;

procedure TAtualiza.AtualizaPgtoEstagiario(EstCod, TceCod: Integer);
var
  Pgto: string[2];
begin
  Pgto := '';
  with Tquery.Create(nil) do
  begin
    DatabaseName := 'TalentPool';
    Sql.Clear;
    Sql.Add('select * from Tce where tce_cod = ' + IntToStr(TceCod));
    Open;

    // Só o TCE
    if (not FieldByName('tce_dataret').IsNull) and (not FieldByName('tce_datadec').IsNull) then
      Pgto := '0' // Liberado
    else if (FieldByName('tce_dataret').IsNull) and (FieldByName('tce_datadec').IsNull) then
      Pgto := '3' // Falta TCE e DM
    else if FieldByName('tce_datadec').IsNull then
      Pgto := '1' // Falta DM
    else if FieldByName('tce_dataret').IsNull then
      Pgto := '2'; // Falta TCE

    if FieldByName('tce_situacao').AsInteger > 0 then
    begin
      // TA's
      Sql.Clear;
      Sql.Add('select * from TceAditivo where tce_cod = ' + IntToStr(TceCod));
      Open;

      if not IsEmpty then
      begin
        First;

        // Percorre os TA's
        while not Eof do
        begin
          // Não retornou
          if FieldByName('tpr_retorno').IsNull then
          begin
            if Pgto = '0' then
              Pgto := '4' // Falta só TA
            else if Pgto = '1' then
              Pgto := '6' // Falta DM / Ta
            else if Pgto = '2' then
              Pgto := '5' // Falta TCE / TA
            else if Pgto = '3' then
              Pgto := '7'; // Falta TCE / TA / DM
          end;

          // Se já tiver faltando algum TA, não precisa mais
          if StrToInt(Pgto) < 4 then
            Next
          else
            break;
        end;
      end;
    end;

    // Termos de Alt.
    Close;
    Sql.Clear;
    Sql.Add('select * from TceAlteracao where tce_cod = ' + IntToStr(TceCod));
    Open;

    if not IsEmpty then
    begin
      First;

      // Percorre os TA's
      while not Eof do
      begin
        // Não retornou
        if FieldByName('tal_retorno').IsNull then
        begin
          if Pgto = '0' then
            Pgto := '8' // Falta só T. Alt.
          else if Pgto = '1' then
            Pgto := '9' // Falta DM / T. Alt.
          else if Pgto = '2' then
            Pgto := '10' // Falta TCE / T. Alt.
          else if Pgto = '3' then
            Pgto := '11' // Falta TCE / DM / T. Alt.
          else if Pgto = '4' then
            Pgto := '12' // Falta TA / T. Alt.
          else if Pgto = '5' then
            Pgto := '13' // Falta TCE / TA / T. Alt.
          else if Pgto = '6' then
            Pgto := '14' // Falta DM / TA / T. Alt.
          else if Pgto = '7' then
            Pgto := '15'; // Falta TCE / DM / TA / T. Alt.
        end;

        // Se já tiver faltando algum T. Alt. não precisa mais
        if StrToInt(Pgto) < 8 then
          Next
        else
          break;
      end;
    end;
    Close;
    Sql.Clear;
    Sql.Add('Update Estudante set est_pgtolib = :est_pgtolib where est_cod = ' + IntToStr(EstCod));
    ParamByName('est_pgtolib').AsString := Pgto;
    ExecSql;
    Sql.Clear;
    Sql.Add('Update FolhaPgto set fbo_situacao = :fbo_situacao');
    Sql.Add('where est_cod = ' + IntToStr(EstCod));
    ParamByName('fbo_situacao').AsString := Pgto;
    ExecSql;
    Free;
  end;
end;



end.

