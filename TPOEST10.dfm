inherited FOREST10: TFOREST10
  Left = 301
  Top = 249
  Caption = 'Informa'#231#245'es Adicionais'
  ClientHeight = 275
  ClientWidth = 323
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 323
    Height = 256
    inherited btOk: TSpeedButton
      Left = 225
      Top = 228
    end
    inherited Panel2: TPanel
      Width = 308
      Height = 220
      object Label32: TLabel
        Left = 306
        Top = 15
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fumante'
        Visible = False
      end
      object Label29: TLabel
        Left = 119
        Top = 193
        Width = 47
        Height = 13
        Caption = 'Tipo CNH'
      end
      object Label1: TLabel
        Left = 15
        Top = 89
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Impedimentos'
      end
      object Label2: TLabel
        Left = 82
        Top = 89
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'para Realizar'
      end
      object Label3: TLabel
        Left = 148
        Top = 90
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tarefas'
      end
      object DBComboBox4: TDBComboBox
        Left = 314
        Top = 28
        Width = 62
        Height = 21
        Style = csDropDownList
        DataField = 'Est_fumante'
        DataSource = DmDTA.dsEstudante
        ItemHeight = 13
        Items.Strings = (
          'S'
          'N'
          '')
        TabOrder = 0
        Visible = False
      end
      object DBMemo2: TDBMemo
        Left = 15
        Top = 104
        Width = 284
        Height = 70
        DataField = 'est_impedimento'
        DataSource = DmDTA.dsEstudante
        TabOrder = 1
        OnKeyPress = DBMemo1KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 252
        Top = 62
        Width = 121
        Height = 21
        DataField = 'est_tipocnh'
        DataSource = DmDTA.dsEstudante
        TabOrder = 2
        Visible = False
        OnKeyPress = DBMemo1KeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 18
        Top = 182
        Width = 95
        Height = 33
        Caption = '[CNH]'
        Columns = 2
        Ctl3D = False
        DataField = 'est_cnhSN'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 15
        Top = 7
        Width = 95
        Height = 33
        Caption = '[Fumante]'
        Columns = 2
        Ctl3D = False
        DataField = 'Est_fumante'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentCtl3D = False
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 15
        Top = 51
        Width = 178
        Height = 33
        Caption = '[Impededido de realizar Tarefas]'
        Columns = 2
        Ctl3D = False
        DataField = 'est_impedidoSN'
        DataSource = DmDTA.dsEstudante
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
      object DBComboBox1: TDBComboBox
        Left = 169
        Top = 188
        Width = 129
        Height = 21
        DataField = 'est_tipocnh'
        DataSource = DmDTA.dsEstudante
        ItemHeight = 13
        Items.Strings = (
          'A - Moto'
          'B - Carro'
          'C - Caminh'#227'o/'#212'nibus '
          'AB - Moto e Carro')
        TabOrder = 6
      end
    end
    inherited btEnter: TBitBtn
      Left = 120
      Top = 530
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 256
    Width = 323
  end
end
