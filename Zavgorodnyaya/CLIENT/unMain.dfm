object frmMain: TfrmMain
  Left = 253
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1074#1075#1086#1088#1086#1076#1085#1103#1103' -'#1040#1090#1077#1083#1100#1077
  ClientHeight = 157
  ClientWidth = 241
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
  object pnlmain: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 157
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object pnlMain2: TPanel
      Left = 4
      Top = 4
      Width = 233
      Height = 149
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clMoneyGreen
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object sbExit: TSpeedButton
        Left = 8
        Top = 106
        Width = 217
        Height = 22
        Caption = #1042#1099#1093#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbExitClick
      end
      object Bevel1: TBevel
        Left = 8
        Top = 4
        Width = 217
        Height = 101
        Style = bsRaised
      end
      object sbIzdeliya: TSpeedButton
        Left = 120
        Top = 32
        Width = 101
        Height = 22
        Caption = #1048#1079#1076#1077#1083#1080#1103
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbIzdeliyaClick
      end
      object sbTkani: TSpeedButton
        Left = 64
        Top = 8
        Width = 101
        Height = 22
        Caption = #1058#1082#1072#1085#1080
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbTkaniClick
      end
      object sbVidi: TSpeedButton
        Left = 16
        Top = 32
        Width = 101
        Height = 22
        BiDiMode = bdLeftToRight
        Caption = #1042#1080#1076#1099' '#1090#1082#1072#1085#1080
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentBiDiMode = False
        OnClick = sbVidiClick
      end
      object sbZakazchiki: TSpeedButton
        Left = 120
        Top = 56
        Width = 101
        Height = 22
        Caption = #1047#1072#1082#1072#1079#1095#1080#1082#1080
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbZakazchikiClick
      end
      object sbRask: TSpeedButton
        Left = 16
        Top = 56
        Width = 101
        Height = 22
        Caption = #1056#1072#1082#1089'. '#1090#1082'.'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbRaskClick
      end
      object sbZakazi: TSpeedButton
        Left = 64
        Top = 80
        Width = 101
        Height = 22
        Caption = #1047#1072#1082#1072#1079#1099
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = sbZakaziClick
      end
      object StatusBar: TStatusBar
        Left = 3
        Top = 130
        Width = 225
        Height = 14
        Color = 15066597
        Panels = <
          item
            Text = #1054#1090#1082#1083#1102#1095#1077#1085#1086
            Width = 50
          end>
        SimplePanel = False
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 184
    Top = 8
    object miService: TMenuItem
      Caption = '&File'
      object miConnect: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
        ShortCut = 120
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
        OnClick = N1Click
      end
    end
  end
end
