inherited ForInstTCE: TForInstTCE
  Left = 512
  Top = 218
  Caption = 'Procedimentos para o TCE'
  ClientHeight = 197
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 178
    inherited btOk: TSpeedButton
      Top = 144
    end
    inherited Panel2: TPanel
      Height = 132
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
        FocusControl = TextoObservacao
      end
      object TextoObservacao: TDBMemo
        Left = 16
        Top = 24
        Width = 409
        Height = 90
        DataField = 'Inst_TceProcedimento'
        DataSource = DmDTA.dsInstituicao
        TabOrder = 0
        OnKeyPress = TextoObservacaoKeyPress
      end
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 178
  end
end
