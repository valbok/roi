inherited fmAuthors: TfmAuthors
  Left = 179
  Top = 192
  Width = 324
  Height = 245
  Caption = 'Authors'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbNavigationBar: TToolBar
    Width = 316
    inherited sbAccept: TToolButton
      OnClick = sbAcceptClick
    end
    inherited sbCancel: TToolButton
      OnClick = sbCancelClick
    end
    inherited sbDelete: TToolButton
      OnClick = sbDeleteClick
    end
    inherited sbFirst: TToolButton
      OnClick = sbFirstClick
    end
    inherited sbNext: TToolButton
      OnClick = sbNextClick
    end
    inherited sbPrev: TToolButton
      OnClick = sbPrevClick
    end
    inherited sbLast: TToolButton
      OnClick = sbLastClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 199
    Width = 316
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
    Width = 316
    Height = 170
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    TabOrder = 2
    object lbCodeCountry: TLabel
      Left = 8
      Top = 104
      Width = 94
      Height = 16
      Caption = 'Code Country'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbPatronymic: TLabel
      Left = 24
      Top = 80
      Width = 78
      Height = 16
      Caption = 'Patronymic'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbName: TLabel
      Left = 56
      Top = 56
      Width = 42
      Height = 16
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSurname: TLabel
      Left = 40
      Top = 32
      Width = 62
      Height = 16
      Caption = 'Surname'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodeAuthors: TLabel
      Left = 8
      Top = 8
      Width = 94
      Height = 16
      Caption = 'Code Authors'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 264
      Top = 8
      Width = 17
      Height = 137
      Shape = bsLeftLine
      Style = bsRaised
    end
    object Label1: TLabel
      Left = 8
      Top = 128
      Width = 98
      Height = 16
      Caption = 'Name Country'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodeCountry: TDBEdit
      Left = 112
      Top = 104
      Width = 145
      Height = 21
      DataField = 'CODE_COUNTRIES'
      DataSource = dmBooks.dsAuthors
      TabOrder = 4
    end
    object dbePatronymic: TDBEdit
      Left = 112
      Top = 80
      Width = 145
      Height = 21
      DataField = 'OTCH'
      DataSource = dmBooks.dsAuthors
      TabOrder = 3
    end
    object dbeCodeAuthors: TDBEdit
      Left = 192
      Top = 8
      Width = 65
      Height = 21
      DataField = 'CODE_AUTHORS'
      DataSource = dmBooks.dsAuthors
      TabOrder = 0
    end
    object dbeName: TDBEdit
      Left = 112
      Top = 56
      Width = 145
      Height = 21
      DataField = 'NAME'
      DataSource = dmBooks.dsAuthors
      TabOrder = 2
    end
    object dbeSurname: TDBEdit
      Left = 112
      Top = 32
      Width = 145
      Height = 21
      DataField = 'FAM'
      DataSource = dmBooks.dsAuthors
      TabOrder = 1
    end
    object dblcbNameC: TDBLookupComboBox
      Left = 112
      Top = 128
      Width = 145
      Height = 21
      KeyField = 'CODE_COUNTRIES'
      ListField = 'NAME'
      ListSource = dmBooks.dsCountries
      TabOrder = 5
      OnClick = dblcbNameCClick
    end
    object bBooks: TBitBtn
      Left = 272
      Top = 8
      Width = 41
      Height = 137
      Caption = #1050#1085#1080#1075#1080
      TabOrder = 6
      OnClick = bBooksClick
    end
  end
  inherited ilNavigationBar: TImageList
    Left = 320
    Top = 0
  end
end
