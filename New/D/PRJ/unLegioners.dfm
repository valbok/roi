object fmLegioners: TfmLegioners
  Left = 178
  Top = 118
  Width = 433
  Height = 297
  Caption = 'fmLegioners'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 0
    Width = 206
    Height = 16
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1083#1077#1075#1080#1086#1085#1077#1088#1072#1093
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 136
    Width = 77
    Height = 13
    Caption = #1051#1077#1075#1080#1086#1085#1077#1088#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 120
    Width = 153
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1083#1077#1075#1080#1086#1085#1077#1088#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object gTeams: TDBGrid
    Left = 0
    Top = 16
    Width = 425
    Height = 97
    DataSource = FootbDM.dsTeams
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object gPlayers: TDBGrid
    Left = 0
    Top = 157
    Width = 425
    Height = 113
    Align = alBottom
    DataSource = FootbDM.dsqL_by_s
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbeCountp: TDBEdit
    Left = 152
    Top = 120
    Width = 65
    Height = 21
    DataField = 'COUNT'
    DataSource = FootbDM.dsqCL_by_s
    TabOrder = 2
  end
end
