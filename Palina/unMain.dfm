object frmMain: TfrmMain
  Left = 196
  Top = 117
  Width = 544
  Height = 375
  Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1082#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081' '#1072#1082#1072#1076#1077#1084#1080#1080' v.0.01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 328
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object gridMain: TDBGrid
      Left = 4
      Top = 34
      Width = 528
      Height = 253
      Align = alClient
      DataSource = DM.dsQryAllPrepods
      PopupMenu = pmManeger
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object StatusBar: TStatusBar
      Left = 4
      Top = 305
      Width = 528
      Height = 19
      Panels = <
        item
          Text = #1054#1078#1080#1076#1072#1085#1080#1103' '#1082#1086#1084#1072#1085#1076
          Width = 300
        end
        item
          Text = #1054#1090#1082#1083#1102#1095#1077#1085#1086
          Width = 50
        end>
      SimplePanel = False
    end
    object DBNavMain: TDBNavigator
      Left = 4
      Top = 287
      Width = 528
      Height = 18
      DataSource = DM.dsQryAllPrepods
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object pnlTop: TPanel
      Left = 4
      Top = 4
      Width = 528
      Height = 30
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 1
      TabOrder = 3
      object PageControl: TPageControl
        Left = 3
        Top = 3
        Width = 522
        Height = 24
        ActivePage = tsPrepods
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        object tsPrepods: TTabSheet
          Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
          OnShow = tsPrepodsShow
        end
        object tsIzdaniya: TTabSheet
          Caption = #1048#1079#1076#1072#1085#1080#1103
          ImageIndex = 1
          OnShow = tsIzdaniyaShow
        end
        object tsAvtorstvo: TTabSheet
          Caption = #1040#1074#1090#1086#1088#1089#1090#1074#1086
          ImageIndex = 2
          OnShow = tsAvtorstvoShow
        end
        object tsTypes_izds: TTabSheet
          Caption = #1058#1080#1087#1099' '#1080#1079#1076#1072#1085#1080#1103
          ImageIndex = 3
          OnShow = tsTypes_izdsShow
        end
        object tsNauch_naprav: TTabSheet
          Caption = #1053#1072#1091#1095#1085#1099#1077' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
          ImageIndex = 4
          OnShow = tsNauch_napravShow
        end
        object tsKafedri: TTabSheet
          Caption = #1050#1072#1092#1077#1076#1088#1099
          ImageIndex = 5
          OnShow = tsKafedriShow
        end
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 120
    Top = 40
    object miService: TMenuItem
      Caption = '&'#1057#1077#1088#1074#1080#1089
      object miConnect: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
        ShortCut = 112
        OnClick = miConnectClick
      end
      object miDisconnect: TMenuItem
        Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
        Enabled = False
        ShortCut = 123
        OnClick = miDisconnectClick
      end
      object N1: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
      object miSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 49235
        OnClick = miSaveClick
      end
      object miCancel: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ShortCut = 49242
        OnClick = miCancelClick
      end
    end
  end
  object pmManeger: TPopupMenu
    OnPopup = pmManegerPopup
    Left = 208
    Top = 128
    object miMode1: TMenuItem
      Caption = '<Mode1>'
      OnClick = miMode1Click
    end
    object miMode2: TMenuItem
      Caption = '<Mode2>'
    end
    object miEdit: TMenuItem
      Caption = #1056#1077#1076#1072'&'#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 49221
      OnClick = miEditClick
    end
    object miDelete: TMenuItem
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100
      ShortCut = 16430
      OnClick = miDeleteClick
    end
    object miAdd: TMenuItem
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 118
      OnClick = miAddClick
    end
    object miRefresh: TMenuItem
      Caption = '&'#1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnClick = miRefreshClick
    end
  end
end
