inherited FORERE: TFORERE
  Left = 86
  Top = 405
  Caption = 'Respons'#225'veis pela Empresa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      object Label1: TLabel
        Left = 12
        Top = 8
        Width = 88
        Height = 13
        Caption = 'Termo de Contrato'
      end
      object Label2: TLabel
        Left = 12
        Top = 46
        Width = 110
        Height = 13
        Caption = 'Termo de Compromisso'
      end
      object Label3: TLabel
        Left = 12
        Top = 83
        Width = 47
        Height = 13
        Caption = 'Entrevista'
      end
      object Label4: TLabel
        Left = 12
        Top = 121
        Width = 74
        Height = 13
        Caption = #193'rea Financeira'
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 23
        Width = 55
        Height = 21
        Hint = 'Pressione F2 ou duplo click para abrir o funcion'#225'rio'
        Color = clInfoBk
        DataField = 'Emp_respcont'
        DataSource = DmDTA.dsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnDblClick = DBEdit1DblClick
        OnExit = DBEdit1Exit
        OnKeyDown = DBEdit1KeyDown
      end
      object DBEdit4: TDBEdit
        Left = 12
        Top = 60
        Width = 55
        Height = 21
        Hint = 'Pressione F2 ou duplo click para abrir o funcion'#225'rio'
        Color = clInfoBk
        DataField = 'Emp_respcomp'
        DataSource = DmDTA.dsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnDblClick = DBEdit4DblClick
        OnExit = DBEdit4Exit
        OnKeyDown = DBEdit4KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 12
        Top = 98
        Width = 55
        Height = 21
        Hint = 'Pressione F2 ou duplo click para abrir o funcion'#225'rio'
        Color = clInfoBk
        DataField = 'Emp_respent'
        DataSource = DmDTA.dsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnDblClick = DBEdit2DblClick
        OnExit = DBEdit2Exit
        OnKeyDown = DBEdit2KeyDown
      end
      object DBEdit3: TDBEdit
        Left = 12
        Top = 135
        Width = 55
        Height = 21
        Hint = 'Pressione F2 ou duplo click para abrir o funcion'#225'rio'
        Color = clInfoBk
        DataField = 'Emp_respfin'
        DataSource = DmDTA.dsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnDblClick = DBEdit3DblClick
        OnExit = DBEdit3Exit
        OnKeyDown = DBEdit3KeyDown
      end
      object DBEdit5: TDBEdit
        Left = 72
        Top = 23
        Width = 351
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'emp_nomerespcont'
        DataSource = DmDTA.dsEmpresa
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 72
        Top = 60
        Width = 351
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'emp_nomerespcomp'
        DataSource = DmDTA.dsEmpresa
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 72
        Top = 98
        Width = 351
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'emp_nomerespent'
        DataSource = DmDTA.dsEmpresa
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 72
        Top = 135
        Width = 351
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'emp_nomerespfin'
        DataSource = DmDTA.dsEmpresa
        ReadOnly = True
        TabOrder = 7
      end
    end
  end
end
