object frmData: TfrmData
  Left = 141
  Top = 146
  Width = 544
  Height = 375
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
      Height = 330
      Align = alClient
      Color = 15066597
      FixedColor = clMoneyGreen
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
  end
  object PopupMenu: TPopupMenu
    Left = 192
    Top = 120
    object N1: TMenuItem
      Caption = #1048#1079#1076#1077#1083#1080#1103' '#1084#1072#1089#1090#1077#1088#1072
      OnClick = N1Click
    end
  end
end
