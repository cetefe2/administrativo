inherited FOREST8: TFOREST8
  Left = 146
  Top = 160
  Caption = 'Entrevistas do Estudante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited btNovo: TSpeedButton
        Visible = False
      end
      inherited btExcluir: TSpeedButton
        Visible = False
      end
      inherited btSalvar: TSpeedButton
        Visible = False
      end
      inherited btCancelar: TSpeedButton
        Visible = False
      end
    end
    inherited Panel5: TPanel
      inherited pgPrincipal: TPageControl
        inherited tbConsulta: TTabSheet
          inherited Panel2: TPanel
            inherited DBGrid1: TDBGrid
              Top = 9
              Height = 178
              DataSource = DmDTA.dsEntrevista
            end
          end
        end
        inherited tbRegistro: TTabSheet
          inherited Panel3: TPanel
            object Label1: TLabel
              Left = 26
              Top = 21
              Width = 80
              Height = 13
              Caption = 'Entrevistado Em:'
            end
            object Label2: TLabel
              Left = 21
              Top = 69
              Width = 82
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Oportunidade:'
            end
            object Label3: TLabel
              Left = 52
              Top = 98
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Resultado:'
            end
            object Label4: TLabel
              Left = 46
              Top = 122
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Caption = 'Porque N'#227'o'
            end
            object Label5: TLabel
              Left = 32
              Top = 138
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Caption = 'Encaminhado?'
            end
            object DBEdit1: TDBEdit
              Left = 112
              Top = 18
              Width = 120
              Height = 21
              Color = cl3DLight
              DataField = 'age_data'
              DataSource = DmDTA.dsEntrevista
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 112
              Top = 66
              Width = 57
              Height = 21
              Color = cl3DLight
              DataField = 'vag_cod'
              DataSource = DmDTA.dsEntrevista
              ReadOnly = True
              TabOrder = 1
            end
            object DBCheckBox1: TDBCheckBox
              Left = 142
              Top = 44
              Width = 91
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Encaminhado:'
              Color = clBtnFace
              DataField = 'Encaminhado'
              DataSource = DmDTA.dsEntrevista
              ParentColor = False
              ReadOnly = True
              TabOrder = 2
              ValueChecked = 'Sim'
              ValueUnchecked = 'N'#227'o'
            end
            object DBEdit3: TDBEdit
              Left = 112
              Top = 95
              Width = 120
              Height = 21
              Color = cl3DLight
              DataField = 'Resultado'
              DataSource = DmDTA.dsEntrevista
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit4: TDBEdit
              Left = 176
              Top = 66
              Width = 201
              Height = 21
              Color = cl3DLight
              DataField = 'emp_nome'
              DataSource = DmDTA.dsEntrevista
              ReadOnly = True
              TabOrder = 4
            end
            object MePorque: TMemo
              Left = 112
              Top = 122
              Width = 264
              Height = 50
              Lines.Strings = (
                'MePorque')
              TabOrder = 5
              OnKeyPress = MePorqueKeyPress
            end
            object cbPresenca: TCheckBox
              Left = 55
              Top = 43
              Width = 70
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Presen'#231'a:'
              TabOrder = 6
            end
          end
        end
      end
    end
  end
end
