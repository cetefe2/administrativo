inherited FOREMP4: TFOREMP4
  Left = 260
  Top = 157
  Caption = 'Endere'#231'o para Encaminhamento'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      Width = 435
      Height = 163
      object Label12: TLabel
        Left = 7
        Top = 22
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere'#231'o'
      end
      object Label14: TLabel
        Left = 26
        Top = 86
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro'
      end
      object Label15: TLabel
        Left = 20
        Top = 116
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade'
      end
      object Label17: TLabel
        Left = 171
        Top = 53
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone'
      end
      object Label22: TLabel
        Left = 16
        Top = 53
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#250'mero'
      end
      object Label23: TLabel
        Left = 101
        Top = 53
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cjto.'
      end
      object Label1: TLabel
        Left = 302
        Top = 53
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP'
      end
      object DBEdit6: TDBEdit
        Left = 58
        Top = 19
        Width = 360
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_enderecoenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 0
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 58
        Top = 82
        Width = 360
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_bairroenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 5
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 58
        Top = 113
        Width = 319
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_cidadeenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 6
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 382
        Top = 112
        Width = 36
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_estadoenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 7
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 200
        Top = 49
        Width = 92
        Height = 21
        DataField = 'emp_telefoneenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 3
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 58
        Top = 50
        Width = 36
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_numendenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 1
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 129
        Top = 50
        Width = 36
        Height = 21
        CharCase = ecUpperCase
        DataField = 'emp_cjtoendenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 2
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 328
        Top = 49
        Width = 91
        Height = 21
        DataField = 'emp_cepenc'
        DataSource = DmDTA.dsEmpresa
        TabOrder = 4
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit6KeyPress
      end
    end
  end
end
