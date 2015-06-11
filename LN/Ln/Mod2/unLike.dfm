object fmLike: TfmLike
  Left = 192
  Top = 119
  Width = 389
  Height = 225
  Caption = 'View Authors [like]'
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
    Width = 381
    Height = 198
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = #1040#1074#1090#1086#1088':'
    end
    object edtAuthor: TEdit
      Left = 48
      Top = 8
      Width = 121
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Text = 'f%'
    end
    object grid: TDBGrid
      Left = 2
      Top = 32
      Width = 377
      Height = 164
      Align = alBottom
      DataSource = dmBooks.dsSPBA
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object btnView: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 23
      Caption = 'View'
      Default = True
      TabOrder = 2
      OnClick = btnViewClick
    end
  end
end
