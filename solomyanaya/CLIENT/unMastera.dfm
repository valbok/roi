object frmMastera: TfrmMastera
  Left = 192
  Top = 119
  Width = 544
  Height = 375
  Caption = #1052#1040#1089#1090#1077#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 3
    BorderStyle = bsSingle
    Color = clGray
    TabOrder = 0
    object grid: TDBGrid
      Left = 7
      Top = 7
      Width = 518
      Height = 217
      Align = alClient
      Color = clSilver
      DataSource = DM.dsQAll_mastera
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object pnlBotom: TPanel
      Left = 7
      Top = 224
      Width = 518
      Height = 113
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvSpace
      BevelWidth = 2
      BorderWidth = 2
      Color = 4079166
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 14
        Height = 13
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 52
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 56
        Width = 25
        Height = 13
        Caption = #1048#1084#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 50
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 192
        Top = 8
        Width = 34
        Height = 13
        Caption = #1040#1076#1088#1077#1089':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 192
        Top = 32
        Width = 82
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 192
        Top = 56
        Width = 99
        Height = 13
        Caption = #1050#1086#1076' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 192
        Top = 80
        Width = 78
        Height = 13
        Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeID: TDBEdit
        Left = 128
        Top = 8
        Width = 49
        Height = 19
        Color = 14342874
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object dbeFam: TDBEdit
        Left = 72
        Top = 32
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'FAM'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbeName: TDBEdit
        Left = 72
        Top = 56
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'NAME'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 2
      end
      object dbeOtch: TDBEdit
        Left = 72
        Top = 80
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'OTCH'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbeAddress: TDBEdit
        Left = 232
        Top = 8
        Width = 129
        Height = 19
        Ctl3D = False
        DataField = 'ADDRESS'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 4
      end
      object dbeDAT: TDBEdit
        Left = 280
        Top = 32
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'DAT'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 5
      end
      object dbeKvalifik_id: TDBEdit
        Left = 296
        Top = 56
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'KVALIFIK_ID'
        DataSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 6
      end
      object dblcbKvalifik: TDBLookupComboBox
        Left = 272
        Top = 80
        Width = 89
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DM.dsQAll_kvalifik
        ParentCtl3D = False
        TabOrder = 7
        OnClick = dblcbKvalifikClick
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 192
    Top = 120
    object N1: TMenuItem
      Caption = #1048#1079#1076#1077#1083#1080#1103' '#1084#1072#1089#1090#1077#1088#1072
      OnClick = N1Click
    end
  end
end
