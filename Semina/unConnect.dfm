object frmConnect: TfrmConnect
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
  ClientHeight = 129
  ClientWidth = 251
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
    Width = 251
    Height = 129
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 2
    object pnlMain2: TPanel
      Left = 4
      Top = 4
      Width = 239
      Height = 117
      Align = alClient
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 2
      BorderStyle = bsSingle
      Color = clSilver
      TabOrder = 0
      object lblPath: TLabel
        Left = 16
        Top = 8
        Width = 27
        Height = 13
        Caption = #1055#1091#1090#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbluser: TLabel
        Left = 16
        Top = 32
        Width = 76
        Height = 13
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPass: TLabel
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = #1055#1072#1088#1086#1083#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ePath: TEdit
        Left = 64
        Top = 8
        Width = 153
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'i:\roi\semina.gdb'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 80
        Width = 113
        Height = 25
        Caption = '&'#1042#1086#1081#1090#1080
        Default = True
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TBitBtn
        Left = 128
        Top = 80
        Width = 91
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
    Width = 105
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    Text = 'semina'
  end
  object ePass: TEdit
    Left = 80
    Top = 64
    Width = 145
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 1
    Text = '1'
  end
end