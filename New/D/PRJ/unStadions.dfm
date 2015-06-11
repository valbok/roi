object fmStadions: TfmStadions
  Left = 48
  Top = 97
  Width = 627
  Height = 344
  Caption = 'fmStadions'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmStadions
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 32
    Width = 49
    Height = 13
    Caption = #1057#1090#1088#1072#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 151
    Height = 16
    Caption = #1057#1090#1072#1076#1080#1086#1085#1099' '#1080' '#1086#1094#1077#1085#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 352
    Top = 0
    Width = 168
    Height = 13
    Caption = #1057#1090#1072#1076#1080#1086#1085#1099' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 360
    Top = 16
    Width = 148
    Height = 13
    Caption = #1084#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1093' '#1084#1072#1090#1095#1077#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 0
    Top = 160
    Width = 262
    Height = 13
    Caption = #1050#1086#1084#1072#1085#1076#1099' '#1080#1075#1088#1072#1102#1097#1080#1077' '#1085#1072' '#1090#1077#1082#1091#1097#1077#1084' '#1089#1090#1072#1076#1080#1086#1085#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 256
    Top = 48
    Width = 139
    Height = 13
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1086#1094#1077#1085#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object gStadiums: TDBGrid
    Left = 0
    Top = 56
    Width = 249
    Height = 97
    DataSource = FootbDM.dsqS_by_Strana
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object bResult: TButton
    Left = 440
    Top = 40
    Width = 81
    Height = 25
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = bResultClick
  end
  object dblcCountry: TDBLookupComboBox
    Left = 56
    Top = 32
    Width = 145
    Height = 21
    KeyField = 'COUNTRY_ID'
    ListField = 'COUNTRY'
    ListSource = FootbDM.dsCountries
    TabOrder = 2
  end
  object gTeams: TDBGrid
    Left = 0
    Top = 176
    Width = 249
    Height = 120
    DataSource = FootbDM.dsqT_by_stad
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object gStad_by_mark: TDBGrid
    Left = 256
    Top = 72
    Width = 361
    Height = 225
    DataSource = FootbDM.dsStad_by_mark
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object eMark: TEdit
    Left = 392
    Top = 48
    Width = 41
    Height = 21
    TabOrder = 5
    Text = '5'
  end
  object mmStadions: TMainMenu
    Top = 8
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
