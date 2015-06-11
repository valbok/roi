object frmEditIzgotovitel: TfrmEditIzgotovitel
  Left = 192
  Top = 119
  Width = 309
  Height = 375
  AlphaBlend = True
  Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 99
    Top = 0
    Width = 5
    Height = 348
    Cursor = crHSplit
    Align = alRight
  end
  object pnlMaini: TPanel
    Left = 104
    Top = 0
    Width = 197
    Height = 348
    Align = alRight
    BevelInner = bvRaised
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlMain2i: TPanel
      Left = 6
      Top = 6
      Width = 181
      Height = 332
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 2
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 93
        Height = 13
        Caption = #1082#1086#1076' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1103':'
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 53
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 34
        Height = 13
        Caption = #1040#1076#1088#1077#1089':'
      end
      object Label5: TLabel
        Left = 8
        Top = 80
        Width = 140
        Height = 13
        Caption = #1050#1086#1076' '#1092#1086#1088#1084#1099' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080':'
      end
      object Label6: TLabel
        Left = 8
        Top = 160
        Width = 107
        Height = 13
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1077' '#1083#1080#1094#1086':'
      end
      object Label7: TLabel
        Left = 8
        Top = 200
        Width = 48
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object Label8: TLabel
        Left = 8
        Top = 224
        Width = 31
        Height = 13
        Caption = 'E-mail:'
      end
      object Bevel1: TBevel
        Left = 176
        Top = 8
        Width = 25
        Height = 233
        Shape = bsLeftLine
      end
      object Label4: TLabel
        Left = 8
        Top = 120
        Width = 119
        Height = 13
        Caption = #1060#1086#1088#1084#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080':'
      end
      object dbeID: TDBEdit
        Left = 136
        Top = 8
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 0
      end
      object dbeName: TDBEdit
        Left = 64
        Top = 32
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'NAME'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbeAddress: TDBEdit
        Left = 48
        Top = 56
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'ADDRESS'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 2
      end
      object dbeFace: TDBEdit
        Left = 8
        Top = 176
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'Face'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbeforma_sob_id: TDBEdit
        Left = 120
        Top = 96
        Width = 49
        Height = 19
        Ctl3D = False
        DataField = 'FORMA_SOB_ID'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 4
      end
      object dbeTelephone: TDBEdit
        Left = 64
        Top = 200
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'TELEPHONE'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 5
      end
      object dbeE_mail: TDBEdit
        Left = 48
        Top = 224
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'E_MAIL'
        DataSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 6
      end
      object dbLcbForma: TDBLookupComboBox
        Left = 8
        Top = 136
        Width = 161
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'NAME'
        ListFieldIndex = 1
        ListSource = DM.dsQFormi
        ParentCtl3D = False
        TabOrder = 7
        OnClick = dbLcbFormaClick
      end
    end
  end
end
