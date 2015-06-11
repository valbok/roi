inherited fmCountries: TfmCountries
  Left = 259
  Top = 207
  Width = 320
  Height = 134
  Caption = 'Countries'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbNavigationBar: TToolBar
    Width = 312
    ButtonWidth = 23
    inherited sbAccept: TToolButton
      OnClick = sbAcceptClick
    end
    inherited sbCancel: TToolButton
      Left = 23
      OnClick = sbCancelClick
    end
    inherited tb1: TToolButton
      Left = 46
    end
    inherited sbDelete: TToolButton
      Left = 54
      OnClick = sbDeleteClick
    end
    inherited sbEdit: TToolButton
      Left = 77
    end
    inherited sbInsert: TToolButton
      Left = 100
    end
    inherited tb2: TToolButton
      Left = 123
    end
    inherited sbBrowse: TToolButton
      Left = 131
    end
    inherited tb3: TToolButton
      Left = 154
    end
    inherited sbFirst: TToolButton
      Left = 162
      OnClick = sbFirstClick
    end
    inherited sbNext: TToolButton
      Left = 185
      OnClick = sbNextClick
    end
    inherited sbPrev: TToolButton
      Left = 208
      OnClick = sbPrevClick
    end
    inherited sbLast: TToolButton
      Left = 231
      OnClick = sbLastClick
    end
    inherited sbFind: TToolButton
      Left = 254
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 88
    Width = 312
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object pnlMain: TPanel [2]
    Left = 0
    Top = 29
    Width = 312
    Height = 59
    Align = alClient
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 2
    object lbCodeCountries: TLabel
      Left = 8
      Top = 8
      Width = 107
      Height = 16
      Caption = 'Code Countries'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNameCountries: TLabel
      Left = 8
      Top = 30
      Width = 111
      Height = 16
      Caption = 'Name Countries'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodeCountries: TDBEdit
      Left = 176
      Top = 8
      Width = 65
      Height = 21
      DataField = 'CODE_COUNTRIES'
      DataSource = dmBooks.dsCountries
      TabOrder = 0
    end
    object dbeNameCountries: TDBEdit
      Left = 120
      Top = 31
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = dmBooks.dsCountries
      TabOrder = 1
    end
    object bA: TBitBtn
      Left = 248
      Top = 8
      Width = 52
      Height = 25
      Caption = 'Authors'
      TabOrder = 2
      OnClick = bAClick
    end
  end
  inherited ilNavigationBar: TImageList
    Left = 136
    Top = 32
  end
end
