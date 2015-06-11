object fmPersonal: TfmPersonal
  Left = 210
  Top = 154
  Width = 290
  Height = 321
  Caption = 'fmPersonal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmPersonal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 0
    Width = 200
    Height = 16
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1077#1088#1089#1086#1085#1072#1083#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 32
    Width = 59
    Height = 13
    Caption = #1050#1086#1084#1072#1085#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 86
    Height = 13
    Caption = '1) '#1055#1088#1077#1079#1080#1076#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 136
    Width = 106
    Height = 13
    Caption = '2) '#1043#1083#1072#1074#1085'. '#1090#1088#1077#1085#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 0
    Top = 168
    Width = 103
    Height = 13
    Caption = '3) '#1055#1086#1084'. '#1090#1088#1077#1085#1077#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 200
    Width = 66
    Height = 13
    Caption = '4) '#1044#1086#1082#1090#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 232
    Width = 89
    Height = 13
    Caption = '5) '#1052#1072#1089#1089#1072#1078#1080#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 88
    Top = 56
    Width = 75
    Height = 25
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object dbedPr: TDBEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dbedTr: TDBEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object dbedpTr: TDBEdit
    Left = 120
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object dbedDoct: TDBEdit
    Left = 120
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object dbedMass: TDBEdit
    Left = 120
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object mmPersonal: TMainMenu
    Left = 8
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
