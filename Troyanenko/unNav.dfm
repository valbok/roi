object frmNav: TfrmNav
  Left = 139
  Top = 137
  Width = 544
  Height = 88
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
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object sbPrior: TSpeedButton
      Left = 52
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Prior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbPriorClick
    end
    object sbFirst: TSpeedButton
      Left = 4
      Top = 6
      Width = 45
      Height = 22
      Caption = 'First'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbFirstClick
    end
    object sbNext: TSpeedButton
      Left = 100
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Next'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbNextClick
    end
    object sbLast: TSpeedButton
      Left = 148
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Last'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbLastClick
    end
    object sbRefresh: TSpeedButton
      Left = 452
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbRefreshClick
    end
    object sbEdit: TSpeedButton
      Left = 388
      Top = 6
      Width = 29
      Height = 22
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbEditClick
    end
    object sbCancel: TSpeedButton
      Left = 340
      Top = 6
      Width = 45
      Height = 22
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbCancelClick
    end
    object sbApply: TSpeedButton
      Left = 300
      Top = 6
      Width = 37
      Height = 22
      Caption = 'Apply'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbApplyClick
    end
    object sbDElete: TSpeedButton
      Left = 260
      Top = 6
      Width = 37
      Height = 22
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbDEleteClick
    end
    object sbNew: TSpeedButton
      Left = 220
      Top = 6
      Width = 37
      Height = 22
      Caption = 'New'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbNewClick
    end
  end
end
