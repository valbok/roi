object frmConnect: TfrmConnect
  Left = 192
  Top = 115
  Width = 310
  Height = 164
  Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 137
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlMain2: TPanel
      Left = 4
      Top = 4
      Width = 290
      Height = 125
      Align = alClient
      BevelInner = bvSpace
      BorderWidth = 2
      TabOrder = 0
      object lblPath: TLabel
        Left = 16
        Top = 8
        Width = 27
        Height = 13
        Caption = #1055#1091#1090#1100':'
      end
      object lbluser: TLabel
        Left = 16
        Top = 32
        Width = 90
        Height = 13
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPass: TLabel
        Left = 16
        Top = 56
        Width = 49
        Height = 13
        Caption = #1055#1072#1088#1086#1083#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ePath: TEdit
        Left = 64
        Top = 8
        Width = 209
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'd:\temp\palina.gdb'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 88
        Width = 145
        Height = 25
        Caption = '&'#1042#1086#1081#1090#1080
        Default = True
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TBitBtn
        Left = 168
        Top = 88
        Width = 107
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object eUser: TEdit
    Left = 120
    Top = 38
    Width = 161
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Admin'
  end
  object ePass: TEdit
    Left = 80
    Top = 64
    Width = 201
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '#'
    TabOrder = 2
    Text = '1'
  end
end
