object frmConnect: TfrmConnect
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 112
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
    Height = 112
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = clCream
    TabOrder = 2
    object pnlMain2: TPanel
      Left = 3
      Top = 3
      Width = 232
      Height = 102
      Align = alClient
      Color = clInactiveBorder
      TabOrder = 0
      object lblPath: TLabel
        Left = 8
        Top = 48
        Width = 31
        Height = 13
        Caption = 'Path:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbluser: TLabel
        Left = 8
        Top = 5
        Width = 31
        Height = 13
        Caption = 'User:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPass: TLabel
        Left = 8
        Top = 25
        Width = 59
        Height = 13
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ePath: TEdit
        Left = 48
        Top = 45
        Width = 179
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'd:\temp\kalafitskij.gdb'
      end
      object btnOk: TBitBtn
        Left = 8
        Top = 72
        Width = 113
        Height = 25
        Caption = '&Enter'
        Default = True
        ModalResult = 1
        TabOrder = 1
      end
      object btnCancel: TBitBtn
        Left = 128
        Top = 72
        Width = 97
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object eUser: TEdit
    Left = 80
    Top = 6
    Width = 153
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    Text = 'administrator'
  end
  object ePass: TEdit
    Left = 80
    Top = 28
    Width = 153
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 0
    Text = 'p'
  end
end
