object frmConnect: TfrmConnect
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
  ClientHeight = 154
  ClientWidth = 230
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
    Width = 230
    Height = 154
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 2
    object pnlMain2: TPanel
      Left = 4
      Top = 4
      Width = 218
      Height = 142
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      Color = clSilver
      TabOrder = 0
      object lblPath: TLabel
        Left = 16
        Top = 56
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
        Top = 8
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
        Top = 32
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
        Left = 58
        Top = 56
        Width = 145
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'd:\bruchkus.gdb'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 80
        Width = 198
        Height = 25
        Caption = '&'#1042#1086#1081#1090#1080
        Default = True
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TBitBtn
        Left = 8
        Top = 104
        Width = 198
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object eUser: TEdit
    Left = 106
    Top = 15
    Width = 105
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    Text = 'admin'
  end
  object ePass: TEdit
    Left = 66
    Top = 41
    Width = 145
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 1
    Text = '1'
  end
end
