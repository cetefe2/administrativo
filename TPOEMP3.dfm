inherited FOREMP3: TFOREMP3
  Left = 635
  Top = 25
  Caption = 'Pagamento da Empresa'
  ClientHeight = 343
  ClientWidth = 407
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 407
    Height = 324
    inherited btOk: TSpeedButton
      Left = 319
      Top = 295
    end
    inherited Panel2: TPanel
      Width = 386
      Height = 286
      object PageControl1: TPageControl
        Left = 8
        Top = 8
        Width = 369
        Height = 273
        ActivePage = TabSheet1
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados Pgto'
          object Label2: TLabel
            Left = 9
            Top = 11
            Width = 88
            Height = 13
            Caption = 'Dia de Pagamento'
          end
          object Label1: TLabel
            Left = 106
            Top = 11
            Width = 63
            Height = 13
            Caption = 'Per'#237'odo Pgto'
            FocusControl = DBEdit2
          end
          object Label3: TLabel
            Left = 14
            Top = 225
            Width = 22
            Height = 13
            Caption = 'Obs:'
            FocusControl = DBEdit3
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 211
            Top = 8
            Width = 145
            Height = 42
            Caption = 'Forma de Pagamento'
            Columns = 2
            DataField = 'emp_formapgto'
            DataSource = DmDTA.dsEmpresa
            Items.Strings = (
              'CETEFE'
              'Pr'#243'pria')
            TabOrder = 0
            OnChange = DBRadioGroup1Change
          end
          object DBEdit1: TDBEdit
            Left = 10
            Top = 26
            Width = 88
            Height = 21
            CharCase = ecUpperCase
            DataField = 'emp_dtpgto'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 1
            OnChange = DBRadioGroup1Change
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 10
            Top = 52
            Width = 338
            Height = 166
            Caption = 'Tipo de Contribui'#231#227'o'
            DataField = 'emp_tipotaxa'
            DataSource = DmDTA.dsEmpresa
            Items.Strings = (
              'R$ 30,00 ou 10%'
              'R$ 23,42 ou 9,5%'
              'R$ 25,00 ou 10%'
              'R$ 40,00 ou 10%'
              'R$ / Estagi'#225'rio'
              '% da Bolsa '
              '% da Folha')
            TabOrder = 3
            Values.Strings = (
              '0'
              '5'
              '1'
              '2'
              '3'
              '4'
              '6')
            OnClick = DBRadioGroup2Click
          end
          object edValor: TEdit
            Left = 158
            Top = 151
            Width = 88
            Height = 21
            Color = cl3DLight
            ReadOnly = True
            TabOrder = 5
            OnKeyPress = edValorKeyPress
          end
          object edPorc: TEdit
            Left = 158
            Top = 192
            Width = 88
            Height = 21
            Color = cl3DLight
            ReadOnly = True
            TabOrder = 6
            OnKeyPress = edValorKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 105
            Top = 26
            Width = 102
            Height = 21
            DataField = 'Emp_periodopgto'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 46
            Top = 221
            Width = 300
            Height = 21
            DataField = 'Emp_periodopgtoobs'
            DataSource = DmDTA.dsEmpresa
            TabOrder = 4
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Descri'#231#227'o'
          ImageIndex = 1
          object DBMemo1: TDBMemo
            Left = 7
            Top = 7
            Width = 345
            Height = 190
            TabStop = False
            Color = clWhite
            DataField = 'emp_descpgto'
            DataSource = DmDTA.dsEmpresa
            ReadOnly = True
            TabOrder = 0
            OnKeyPress = DBMemo1KeyPress
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Aux'#237'lio Transporte'
          ImageIndex = 2
          object rdauxilio: TDBRadioGroup
            Left = 8
            Top = -1
            Width = 346
            Height = 238
            Caption = 'Tipo de Aux'#237'lio Transporte'
            DataField = 'Emp_AuxTransp'
            DataSource = DmDTA.dsEmpresa
            Items.Strings = (
              'RECARGA URBS'
              'AUX'#205'LIO PECUNI'#193'RIO Valor:'
              'TRANSPORTE OFERECIDO PELA EMPRESA'
              'OUTRO BENEF'#205'CIO ')
            TabOrder = 0
            Values.Strings = (
              'R'
              'P'
              'T'
              'O')
            OnChange = rdauxilioChange
          end
          object Button1: TButton
            Left = 502
            Top = 196
            Width = 37
            Height = 25
            Hint = 'Limpa Op'#231#245'es de Aux'#237'lio transporte'
            Caption = 'Nenhum'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object DBEdit35: TDBEdit
            Left = 179
            Top = 83
            Width = 73
            Height = 21
            DataField = 'Emp_AuxTranspValor'
            DataSource = DmDTA.dsEmpresa
            Enabled = False
            TabOrder = 2
          end
          object DBEdit34: TDBEdit
            Left = 32
            Top = 212
            Width = 316
            Height = 21
            DataField = 'Emp_AuxTransPTexto'
            DataSource = DmDTA.dsEmpresa
            Enabled = False
            ReadOnly = True
            TabOrder = 3
            OnDblClick = DBEdit34DblClick
          end
          object Button2: TButton
            Left = 275
            Top = 6
            Width = 75
            Height = 25
            Hint = 'Limpa Op'#231#245'es de Aux'#237'lio transporte'
            Caption = 'Nenhum'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = Button2Click
          end
        end
      end
    end
    inherited btEnter: TBitBtn
      Top = 359
    end
  end
  inherited sbPrincipal: TStatusBar
    Top = 324
    Width = 407
  end
end
