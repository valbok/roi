object frmCon: TfrmCon
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Connect'
  ClientHeight = 126
  ClientWidth = 245
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
    Width = 245
    Height = 126
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clSkyBlue
    TabOrder = 2
    object pnlMain2: TPanel
      Left = 4
      Top = 4
      Width = 233
      Height = 114
      Align = alClient
      BevelInner = bvLowered
      BorderWidth = 2
      Color = clCream
      TabOrder = 0
      object lblPath: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Path:'
      end
      object lbluser: TLabel
        Left = 8
        Top = 32
        Width = 25
        Height = 13
        Caption = 'User:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPass: TLabel
        Left = 8
        Top = 56
        Width = 49
        Height = 13
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ePath: TEdit
        Left = 40
        Top = 8
        Width = 179
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'd:\troyanenko.GDB'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 80
        Width = 121
        Height = 25
        Caption = '&'#1042#1086#1081#1090#1080
        Default = True
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TBitBtn
        Left = 136
        Top = 80
        Width = 81
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object eUser: TEdit
    Left = 96
    Top = 38
    Width = 129
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Administrator'
  end
  object ePass: TEdit
    Left = 96
    Top = 62
    Width = 129
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 0
    Text = 'p'
  end
end
