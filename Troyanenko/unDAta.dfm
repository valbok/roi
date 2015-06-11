object frmData: TfrmData
  Left = 125
  Top = 90
  Width = 570
  Height = 401
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
    Width = 562
    Height = 374
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
      Width = 544
      Height = 356
      Align = alClient
      Color = clWhite
      FixedColor = clCream
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
    object miBy: TMenuItem
      Caption = '<mode1>'
      OnClick = miByClick
    end
    object miBy2: TMenuItem
      Caption = '<mode2>'
      OnClick = miBy2Click
    end
  end
end
