inherited FORPERFILVAGA: TFORPERFILVAGA
  Left = 589
  Top = 120
  Caption = 'Perfil da Vaga'
  ClientHeight = 353
  ClientWidth = 649
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 649
    Height = 334
    inherited btOk: TSpeedButton
      Left = 561
      Top = 298
    end
    inherited Panel2: TPanel
      Width = 633
      Height = 280
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 130
        Height = 13
        Caption = 'REQUISITOS (Uso Interno)'
        FocusControl = DBMemo1
      end
      object Label2: TLabel
        Left = 32
        Top = 96
        Width = 152
        Height = 13
        Caption = 'REQUISITOS (Para divulga'#231#227'o)'
        FocusControl = DBMemo2
      end
      object Label3: TLabel
        Left = 32
        Top = 184
        Width = 172
        Height = 13
        Caption = 'DATAS DO PROCESSO SELETIVO'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 32
        Top = 232
        Width = 167
        Height = 13
        Caption = 'HOR'#193'RIO, BOLSA E BENEF'#205'CIOS'
        FocusControl = DBEdit2
      end
      object Label5: TLabel
        Left = 32
        Top = 280
        Width = 93
        Height = 13
        Caption = 'Vag_bolsabeneficio'
        FocusControl = DBEdit3
        Visible = False
      end
      object DBMemo1: TDBMemo
        Left = 32
        Top = 32
        Width = 569
        Height = 49
        DataField = 'Vag_ReqInterno'
        DataSource = DmDTA.dsVaga
        TabOrder = 0
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo2: TDBMemo
        Left = 32
        Top = 112
        Width = 569
        Height = 57
        DataField = 'Vag_ReqDivulgacao'
        DataSource = DmDTA.dsVaga
        TabOrder = 1
        OnKeyPress = DBMemo2KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 200
        Width = 569
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Vag_DataProcesso'
        DataSource = DmDTA.dsVaga
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 248
        Width = 569
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Vag_HoraProcesso'
        DataSource = DmDTA.dsVaga
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 304
        Width = 569
        Height = 21
        DataField = 'Vag_bolsabeneficio'
        DataSource = DmDTA.dsVaga
        TabOrder = 4
        Visible = False
      end
    end
    inherited btEnter: TBitBtn
      Left = 72
      Top = 409
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 334
    Width = 649
  end
end
