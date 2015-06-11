object frmEditIzdeliya: TfrmEditIzdeliya
  Left = 160
  Top = 118
  Width = 309
  Height = 326
  Caption = #1048#1079#1076#1077#1083#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 87
    Top = 0
    Width = 5
    Height = 299
    Cursor = crHSplit
    Align = alRight
  end
  object pnlMaini: TPanel
    Left = 92
    Top = 0
    Width = 209
    Height = 299
    Align = alRight
    BevelInner = bvRaised
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlMain2i: TPanel
      Left = 6
      Top = 6
      Width = 193
      Height = 283
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 2
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 66
        Height = 13
        Caption = #1082#1086#1076' '#1080#1079#1076#1077#1083#1080#1103':'
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 25
        Height = 13
        Caption = #1048#1084#1103':'
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = #1082#1086#1076' '#1074#1080#1076#1072':'
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 22
        Height = 13
        Caption = #1042#1080#1076':'
      end
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 105
        Height = 13
        Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
      end
      object Label6: TLabel
        Left = 8
        Top = 128
        Width = 88
        Height = 13
        Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091':'
      end
      object Label7: TLabel
        Left = 8
        Top = 152
        Width = 93
        Height = 13
        Caption = #1082#1086#1076' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1103':'
      end
      object Label8: TLabel
        Left = 8
        Top = 176
        Width = 74
        Height = 13
        Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
      end
      object Bevel1: TBevel
        Left = 176
        Top = 8
        Width = 25
        Height = 201
        Shape = bsLeftLine
      end
      object dbeID: TDBEdit
        Left = 136
        Top = 8
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 0
      end
      object dbeName: TDBEdit
        Left = 48
        Top = 32
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'NAME'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbeVid_id: TDBEdit
        Left = 136
        Top = 56
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'VID_ID'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 2
      end
      object dbeCostForOne: TDBEdit
        Left = 104
        Top = 128
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'COST_FOR_ONE'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbeUnit_izmr: TDBEdit
        Left = 120
        Top = 104
        Width = 49
        Height = 19
        Ctl3D = False
        DataField = 'UNIT_IZMR'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 4
      end
      object dbeIzg_id: TDBEdit
        Left = 104
        Top = 152
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'IZGOTOVITEL_ID'
        DataSource = DM.dsQizdeliya
        ParentCtl3D = False
        TabOrder = 5
      end
      object dbLcbVidName: TDBLookupComboBox
        Left = 48
        Top = 80
        Width = 121
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DM.dsQVidi
        ParentCtl3D = False
        TabOrder = 6
        OnClick = dbLcbVidNameClick
      end
      object dbLcbIzgot: TDBLookupComboBox
        Left = 8
        Top = 192
        Width = 161
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DM.dsQizgotoviteli
        ParentCtl3D = False
        TabOrder = 7
        OnClick = dbLcbIzgotClick
      end
    end
  end
end
