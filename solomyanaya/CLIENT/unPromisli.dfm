object frmPromisli: TfrmPromisli
  Left = 192
  Top = 119
  Width = 544
  Height = 375
  Caption = #1055#1088#1086#1084#1099#1089#1083#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 3
    BorderStyle = bsSingle
    Color = clGray
    TabOrder = 0
    object grid: TDBGrid
      Left = 7
      Top = 7
      Width = 518
      Height = 297
      Align = alClient
      Color = clSilver
      DataSource = DM.dsQAll_promisli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object pnlBotom: TPanel
      Left = 7
      Top = 304
      Width = 518
      Height = 33
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvSpace
      BevelWidth = 2
      BorderWidth = 2
      Color = 4079166
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 14
        Height = 13
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 96
        Top = 8
        Width = 79
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeID: TDBEdit
        Left = 40
        Top = 8
        Width = 49
        Height = 19
        Color = 14342874
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsQAll_promisli
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object dbeName: TDBEdit
        Left = 184
        Top = 8
        Width = 193
        Height = 19
        Ctl3D = False
        DataField = 'NAME'
        DataSource = DM.dsQAll_promisli
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 248
    Top = 160
    object N1: TMenuItem
      Caption = #1048#1079#1076#1077#1083#1080#1103' '#1087#1088#1086#1084#1099#1089#1083#1072
      OnClick = N1Click
    end
  end
end
