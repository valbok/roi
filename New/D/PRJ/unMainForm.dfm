object Form1: TForm1
  Left = 174
  Top = 95
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 362
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmMainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 0
    Width = 70
    Height = 20
    Caption = #1060#1086#1088#1084#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 256
    Width = 110
    Height = 20
    Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 129
    Height = 233
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clSkyBlue
    TabOrder = 0
    object BCity: TButton
      Left = 14
      Top = 16
      Width = 99
      Height = 25
      Caption = #1043#1086#1088#1086#1076#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BCityClick
    end
    object BCountry: TButton
      Left = 14
      Top = 40
      Width = 99
      Height = 25
      Caption = #1057#1090#1088#1072#1085#1099
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BCountryClick
    end
    object BPlayer: TButton
      Left = 14
      Top = 64
      Width = 99
      Height = 25
      Caption = #1048#1075#1088#1086#1082#1080
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BPlayerClick
    end
    object BPost: TButton
      Left = 14
      Top = 88
      Width = 99
      Height = 25
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BPostClick
    end
    object BStadium: TButton
      Left = 14
      Top = 112
      Width = 99
      Height = 25
      Caption = #1057#1090#1072#1076#1080#1086#1085#1099
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BStadiumClick
    end
    object BStaff: TButton
      Left = 14
      Top = 136
      Width = 99
      Height = 25
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BStaffClick
    end
    object BTeam: TButton
      Left = 14
      Top = 160
      Width = 99
      Height = 25
      Caption = #1050#1086#1084#1072#1085#1076#1099
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BTeamClick
    end
    object BTransfer: TButton
      Left = 14
      Top = 184
      Width = 99
      Height = 25
      Caption = #1058#1088#1072#1085#1089#1092#1077#1088#1099
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BTransferClick
    end
  end
  object Panel2: TPanel
    Left = 132
    Top = 3
    Width = 369
    Height = 359
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 1
    Top = 280
    Width = 129
    Height = 81
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clSkyBlue
    TabOrder = 2
    object BLegioner: TButton
      Left = 14
      Top = 16
      Width = 99
      Height = 25
      Caption = #1051#1077#1075#1080#1086#1085#1077#1088#1099
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BLegionerClick
    end
    object BStadiums: TButton
      Left = 14
      Top = 40
      Width = 99
      Height = 25
      Caption = #1057#1090#1072#1076#1080#1086#1085#1099
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BStadiumsClick
    end
  end
  object mmMainMenu: TMainMenu
    Left = 152
    Top = 8
    object User1: TMenuItem
      Caption = 'User'
      object mmiLogin: TMenuItem
        Caption = 'Login'
        OnClick = mmiLoginClick
      end
      object mmiLogout: TMenuItem
        Caption = 'Logout'
        OnClick = mmiLogoutClick
      end
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
