object frmNav: TfrmNav
  Left = 192
  Top = 119
  Width = 544
  Height = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopF: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 36
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderStyle = bsSingle
    Color = 15000804
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object sbNew: TSpeedButton
      Left = 4
      Top = 6
      Width = 37
      Height = 22
      Caption = 'New'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbNewClick
    end
    object sbDElete: TSpeedButton
      Left = 44
      Top = 6
      Width = 37
      Height = 22
      Caption = 'Delete'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbDEleteClick
    end
    object sbPrior: TSpeedButton
      Left = 260
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Prior   <'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbPriorClick
    end
    object sbApply: TSpeedButton
      Left = 84
      Top = 6
      Width = 37
      Height = 22
      Caption = 'Apply'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbApplyClick
    end
    object sbCancel: TSpeedButton
      Left = 124
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Cancel'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbCancelClick
    end
    object sbEdit: TSpeedButton
      Left = 172
      Top = 6
      Width = 29
      Height = 22
      Caption = 'Edit'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbEditClick
    end
    object sbFirst: TSpeedButton
      Left = 212
      Top = 6
      Width = 45
      Height = 22
      Caption = '|<   First'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbFirstClick
    end
    object sbNext: TSpeedButton
      Left = 308
      Top = 6
      Width = 45
      Height = 22
      Caption = '>   Next'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbNextClick
    end
    object sbLast: TSpeedButton
      Left = 356
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Last   >|'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbLastClick
    end
    object sbRefresh: TSpeedButton
      Left = 412
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Refresh'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbRefreshClick
    end
  end
end
