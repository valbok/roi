object frmConnect: TfrmConnect
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Connect to DB'
  ClientHeight = 122
  ClientWidth = 242
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
    Width = 242
    Height = 122
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = clMoneyGreen
    TabOrder = 2
    object pnlMain2: TPanel
      Left = 3
      Top = 3
      Width = 232
      Height = 112
      Align = alClient
      Color = clInactiveBorder
      TabOrder = 0
      object lblPath: TLabel
        Left = 16
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Path:'
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
        Width = 29
        Height = 13
        Caption = 'Login:'
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
        Width = 49
        Height = 13
        Caption = 'Password:'
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
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'c:\gubal.gdb'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 80
        Width = 113
        Height = 25
        Caption = '&Enter'
        Default = True
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TBitBtn
        Left = 128
        Top = 80
        Width = 91
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object eUser: TEdit
    Left = 72
    Top = 38
    Width = 153
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'gubal'
  end
  object ePass: TEdit
    Left = 72
    Top = 64
    Width = 153
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 0
    Text = '1'
  end
end
