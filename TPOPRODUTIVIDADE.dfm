inherited FORPRODUTIVIDADE: TFORPRODUTIVIDADE
  Left = 530
  Top = 202
  Caption = 'Produtividade'
  ClientHeight = 283
  ClientWidth = 356
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 356
    Height = 264
    inherited btOk: TSpeedButton
      Left = 267
      Top = 236
    end
    inherited Panel2: TPanel
      Width = 340
      Height = 225
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Qtde.'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 169
        Top = 57
        Width = 64
        Height = 13
        Caption = 'Entrevistados'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 70
        Height = 13
        Caption = 'Encaminhados'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 58
        Height = 13
        Caption = 'Reprovados'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 258
        Top = 58
        Width = 46
        Height = 13
        Caption = 'Stand_By'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 88
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Cancel.'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 160
        Top = 96
        Width = 51
        Height = 13
        Caption = 'Aprovados'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 260
        Top = 96
        Width = 24
        Height = 13
        Caption = 'Tces'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 192
        Top = 15
        Width = 51
        Height = 13
        Caption = 'Pendentes'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 104
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Agendados'
        FocusControl = DBEdit10
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 69
        Height = 21
        Color = cl3DLight
        DataField = 'Vag_qtde'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 72
        Width = 81
        Height = 21
        Color = cl3DLight
        DataField = 'Entrevistados'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 72
        Width = 81
        Height = 21
        Color = cl3DLight
        DataField = 'Encaminhados'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 112
        Width = 134
        Height = 21
        Color = cl3DLight
        DataField = 'Reprovados'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 258
        Top = 72
        Width = 71
        Height = 21
        Color = cl3DLight
        DataField = 'Stand_By'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 32
        Width = 95
        Height = 21
        Color = cl3DLight
        DataField = 'Canceladas'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 160
        Top = 112
        Width = 89
        Height = 21
        Color = cl3DLight
        DataField = 'Aprovados'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 260
        Top = 112
        Width = 69
        Height = 21
        Color = cl3DLight
        DataField = 'Tces'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 192
        Top = 31
        Width = 134
        Height = 21
        Color = cl3DLight
        DataField = 'Pendentes'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 104
        Top = 72
        Width = 57
        Height = 21
        Color = cl3DLight
        DataField = 'Agendados'
        DataSource = DmDTA.dsVaga
        ReadOnly = True
        TabOrder = 9
      end
      object cbtipo: TcxDBRadioGroup
        Left = 15
        Top = 149
        Anchors = []
        Caption = 'Tipo'
        Ctl3D = False
        DataBinding.DataField = 'Vag_acao'
        DataBinding.DataSource = DmDTA.dsVaga
        ParentCtl3D = False
        Properties.Columns = 2
        Properties.DefaultValue = 'N'
        Properties.Items = <
          item
            Caption = 'Falta &Retorno do Cliente'
            Value = 'R'
          end
          item
            Caption = 'Em &Processo seletivo'
            Value = 'P'
          end
          item
            Caption = 'Falta emiss'#227'o de &TCE '
            Value = 'T'
          end
          item
            Caption = 'Vaga &Fechada '
            Value = 'F'
          end
          item
            Caption = '&Sem an'#225'lise'
            Value = 'S'
          end
          item
            Caption = '&Vaga Permanente'
            Value = 'V'
          end>
        Style.BorderStyle = ebsUltraFlat
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfStandard
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 10
        Height = 73
        Width = 315
      end
      object ckPermanente: TcxDBCheckBox
        Left = 14
        Top = 132
        Caption = 'Permanente'
        DataBinding.DataField = 'Vag_Permanente'
        DataBinding.DataSource = DmDTA.dsVaga
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 11
        Width = 120
      end
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 264
    Width = 356
  end
end
