unit TPOAGE1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TPOMOD1, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, DBTables;

type
  TFORAGE1 = class(TFORMOD1)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    DBComboBox4: TDBComboBox;
    Label3: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox6: TDBComboBox;
    DBEdit16: TDBEdit;
    btCancelar: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    procedure btOkClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure DBEdit12DblClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure btEnc1Click(Sender: TObject);
    procedure btEnc2Click(Sender: TObject);
    procedure btEnc3Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORAGE1: TFORAGE1;

implementation

Uses TPODTA, TPOEST, TPOFNC, TPOVAG, TPOENC, TPOCST;

{$R *.DFM}

procedure TFORAGE1.btOkClick(Sender: TObject);
begin
  // atualiza o registro
  btEnter.SetFocus;
  If DmDta.quAgenda.State in [dsInsert,dsEdit] then
    DmDta.SalvarRegistro(DmDta.quAgenda);
  Close;
end;

procedure TFORAGE1.DBEdit2DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then dmDta.quAgenda.Edit;
      DmDta.quAgendaage_estcod1.Text  := FOREST.F2Codigo;
    end;

    SelectNext(ActiveControl, True, True);
  end;

  FOREST.Free;
end;

procedure TFORAGE1.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit2.Text <> '') then
  begin
    if (DmDta.quAgenda.State in [dsInsert,dsEdit]) then
    begin
     // DmDta.quAgendaage_estnome1.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit2.Text));
     DmDta.quAgendaage_nome1.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit2.Text));

     { if DmDta.quAgendaage_Estnome1.Text = '' then
      begin
        MSGERRO('Estudante inexistente. Selecione outro estudante!');

        DBEdit2.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;}
    end;
  end;
end;

procedure TFORAGE1.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit2DblClick(sender);
end;

procedure TFORAGE1.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DBEdit2.Text := '';
end;

procedure TFORAGE1.DBEdit4DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then dmDta.quAgenda.Edit;
    DmDta.quAgendaage_estcod2.Text  := FOREST.F2Codigo;

    SelectNext(ActiveControl, True, True);
  end;

  FOREST.Free;
end;

procedure TFORAGE1.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit4.Text <> '') then
  begin
    if (DmDta.quAgenda.State in [dsInsert,dsEdit]) then
    begin
    //  DmDta.quAgendaage_estnome2.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit4.Text));
     DmDta.quAgendaage_nome2.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit4.Text));
     { if DmDta.quAgendaage_Estnome2.Text = '' then
      begin
        MSGERRO('Estudante inexistente. Selecione outro estudante!');

        DBEdit4.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;}
    end;
  end;
end;

procedure TFORAGE1.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit4DblClick(sender);
end;

procedure TFORAGE1.DBEdit6DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  FOREST := TFOREST.Create(Self);
  FOREST.F2 := True;
  Screen.Cursor := crDefault;
  FOREST.ShowModal;

  if FOREST.F2Codigo <> '' then
  begin
    if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then dmDta.quAgenda.Edit;
    DmDta.quAgendaage_estcod3.Text  := FOREST.F2Codigo;

    SelectNext(ActiveControl, True, True);
  end;

  FOREST.Free;
end;

procedure TFORAGE1.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit6.Text <> '') then
  begin
    if (DmDta.quAgenda.State in [dsInsert,dsEdit]) then
    begin
      DmDta.quAgendaage_nome3.Text := DmDta.BuscaCampo('Estudante', 'est_nome', 'est_cod', StrToInt(DBEdit6.Text));

     { if DmDta.quAgendaage_Estnome3.Text = '' then
      begin
        MSGERRO('Estudante inexistente. Selecione outro estudante!');

        DBEdit6.SetFocus;
        Salvou := False;
      end
      else
        Salvou := True;}
    end;
  end;
end;

procedure TFORAGE1.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit6DblClick(sender);
end;

procedure TFORAGE1.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit8DblClick(sender);
end;

procedure TFORAGE1.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit12DblClick(sender);
end;

procedure TFORAGE1.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then DBEdit10DblClick(sender);
end;

procedure TFORAGE1.DBEdit8DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;

  if FORVAG.F2Codigo <> '' then
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DmDta.quAgendaage_vagcod1.Text  := FORVAG.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORVAG.Free;
end;

procedure TFORAGE1.DBEdit12DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;

  if FORVAG.F2Codigo <> '' then
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DmDta.quAgendaage_vagcod2.Text  := FORVAG.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORVAG.Free;
end;

procedure TFORAGE1.DBEdit10DblClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor   := crHourGlass;
  FORVAG := TFORVAG.Create(Self);
  FORVAG.F2 := True;
  Screen.Cursor := crDefault;
  FORVAG.ShowModal;

  if FORVAG.F2Codigo <> '' then
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DmDta.quAgendaage_vagcod3.Text  := FORVAG.F2Codigo;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FORVAG.Free;
end;

procedure TFORAGE1.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit8.Text <> '') then
  begin
    If DmDta.quAgenda.Active then
    begin
      with TQuery.Create(Nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome  from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit8.text);
        Sql.Add('and vag_qtde > vag_qtdepreenc and vag_cancelada = ''0''');
        Open;

        if not IsEmpty then
        begin
          if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
          DmDta.quAgendaempresa1.value       := FieldByName('emp_nome').Value;
          DmDta.quAgendasetor1.value         := FieldByName('vag_setor').Value;
        end
        else
        begin
          MSGERRO('Oportunidade inexistente ou já preenchida. Selecione outra oportunidade!');
          DBEdit8.SetFocus;
        end;
        Close;
        Free;
      end;
    end;
  end
  else
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DBEdit9.Text  := '';
      DBEdit14.Text := '';
    end;
  end;
end;

procedure TFORAGE1.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit12.Text <> '') then
  begin
    If DmDta.quAgenda.Active then
    begin
      with TQuery.Create(Nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome  from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit12.text);
        Sql.Add('and vag_qtde > vag_qtdepreenc and vag_cancelada = ''0''');
        Open;

        if not IsEmpty then
        begin
          if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
          DmDta.quAgendaempresa2.value       := FieldByName('emp_nome').Value;
          DmDta.quAgendasetor2.value         := FieldByName('vag_setor').Value;
        end
        else
        begin
          MSGERRO('Oportunidade inexistente ou já preenchida. Selecione outra oportunidade!');
          DBEdit12.SetFocus;
        end;
        Close;
        Free;
      end;
    end;
  end
  else
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DBEdit13.Text := '';
      DBEdit15.Text := '';
    end;
  end;
end;

procedure TFORAGE1.DBEdit10Exit(Sender: TObject);
begin
  inherited;
   if (DBEdit10.Text <> '') then
  begin
    If DmDta.quAgenda.Active then
    begin
      with TQuery.Create(Nil) do
      begin
        DatabaseName := DATABASE_NAME;
        Sql.Clear;
        Sql.Add('Select v.*, e.emp_nome  from Vaga V, Empresa E where v.emp_cod = e.emp_cod and v.vag_cod = ' + DBEdit10.text);
        Sql.Add('and vag_qtde > vag_qtdepreenc  and vag_cancelada = ''0''');
        Open;

        if not IsEmpty then
        begin
          if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
          DmDta.quAgendaempresa3.value       := FieldByName('emp_nome').Value;
          DmDta.quAgendasetor3.value         := FieldByName('vag_setor').Value;
        end
        else
        begin
          MSGERRO('Oportunidade inexistente ou já preenchida. Selecione outra oportunidade!');
          DBEdit10.SetFocus;
        end;
        Close;
        Free;
      end;
    end;
  end
  else
  begin
    If DmDta.quAgenda.Active then
    begin
      if not (DmDta.quAgenda.State in [dsInsert,dsEdit]) then DmDta.quAgenda.Edit;
      DBEdit11.Text := '';
      DBEdit16.Text := '';
    end;
  end;
end;

procedure TFORAGE1.btEnc1Click(Sender: TObject);
begin
  inherited;
  If (DBEdit8.Text = '') or (DBEdit3.Text = '' ) then
  begin
    MSGERRO('Selecione o estudante e a vaga para efetuar o encaminhamento!');
    Exit;
  end;

  if (DmDta.quAgenda.State in [dsInsert, dsEdit]) then
    DmDta.quAgenda.post;

  // abre a vaga e encaminha o estudante
  with DmDta.quVaga do
  begin
    If Active then Close;
    Sql.Text := 'select v.*, e.emp_nome from Vaga V, Empresa E where E.emp_cod = V.emp_cod and v.vag_cod = ' + DBEdit8.Text;
    Open;

    Screen.Cursor   := crHourGlass;
    FORENC          := TFORENC.Create(Self);
    Screen.Cursor   := crDefault;

    // cria o encaminhamento para o estudante
    If DBEdit2.Text <> '' then
      FORENC.EncaminharEntrevista(DBEdit2.Field.Value, DBEdit3.Text, DmDta.quAgendaage_data.AsDateTime)
    else
      FORENC.EncaminharEntrevista(0, DBEdit3.Text, DmDta.quAgendaage_data.AsDateTime);

    FORENC.ShowModal;

    Close;
  end;
end;

procedure TFORAGE1.btEnc2Click(Sender: TObject);
begin
  inherited;
  If (DBEdit12.Text = '') or (DBEdit5.Text = '' ) then
  begin
    MSGERRO('Selecione o estudante e a vaga para efetuar o encaminhamento!');
    Exit;
  end;

  if (DmDta.quAgenda.State in [dsInsert, dsEdit]) then
    DmDta.quAgenda.post;

  // abre a vaga e encaminha o estudante
  with DmDta.quVaga do
  begin
    If Active then Close;
    Sql.Text := 'select v.*, e.emp_nome from Vaga V, Empresa E where E.emp_cod = V.emp_cod and v.vag_cod = ' + DBEdit12.Text;
    Open;

    Screen.Cursor   := crHourGlass;
    FORENC          := TFORENC.Create(Self);
    Screen.Cursor   := crDefault;

    // cria o encaminhamento para o estudante
    If DBEdit4.Text <> '' then
      FORENC.EncaminharEntrevista(DBEdit4.Field.Value, DBEdit5.Text, DmDta.quAgendaage_data.AsDateTime)
    else
      FORENC.EncaminharEntrevista(0, DBEdit5.Text, DmDta.quAgendaage_data.AsDateTime);

    FORENC.ShowModal;

    Close;
  end;
end;

procedure TFORAGE1.btEnc3Click(Sender: TObject);
begin
  inherited;
  If (DBEdit10.Text = '') or (DBEdit7.Text = '' ) then
  begin
    MSGERRO('Selecione o estudante e a vaga para efetuar o encaminhamento!');
    Exit;
  end;

  if (DmDta.quAgenda.State in [dsInsert, dsEdit]) then
    DmDta.quAgenda.post;

  // abre a vaga e encaminha o estudante
  with DmDta.quVaga do
  begin
    If Active then Close;
    Sql.Text := 'select v.*, e.emp_nome from Vaga V, Empresa E where E.emp_cod = V.emp_cod and v.vag_cod = ' + DBEdit10.Text;
    Open;

    Screen.Cursor   := crHourGlass;
    FORENC          := TFORENC.Create(Self);
    Screen.Cursor   := crDefault;

    // cria o encaminhamento para o estudante
    If DBEdit6.Text <> '' then
      FORENC.EncaminharEntrevista(DBEdit6.Field.Value, DBEdit7.Text, DmDta.quAgendaage_data.AsDateTime)
    else
      FORENC.EncaminharEntrevista(0, DBEdit7.Text, DmDta.quAgendaage_data.AsDateTime);

    FORENC.ShowModal;
    Close;
  end;
end;

procedure TFORAGE1.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  CaracterMaiusculo(Key);
end;

procedure TFORAGE1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = VK_F4 then btCancelarClick(Sender);
end;

procedure TFORAGE1.btCancelarClick(Sender: TObject);
begin
  // atualiza o registro
  btEnter.SetFocus;
  If DmDta.quAgenda.State in [dsInsert,dsEdit] then
    DmDta.CancelarRegistro(DmDta.quAgenda);
  Close;
end;

end.
