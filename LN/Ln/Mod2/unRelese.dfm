inherited fmRelese: TfmRelese
  Left = 215
  Top = 138
  Width = 321
  Height = 213
  Caption = 'Relese'
  Color = clActiveBorder
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbNavigationBar: TToolBar
    Width = 313
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
    Top = 167
    Width = 313
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
    Width = 313
    Height = 138
    Align = alClient
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 2
    object lbNameBooks: TLabel
      Left = 8
      Top = 32
      Width = 82
      Height = 18
      Caption = 'Code  Books'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbQuantityCopies: TLabel
      Left = 8
      Top = 56
      Width = 111
      Height = 18
      Caption = 'Quantity Copies'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbCodePublishing: TLabel
      Left = 8
      Top = 80
      Width = 109
      Height = 18
      Caption = 'Code Publishing'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbCodeParty: TLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 18
      Caption = 'Code Party'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbDateRelese: TLabel
      Left = 8
      Top = 104
      Width = 89
      Height = 18
      Caption = 'Date Release'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object dbeCodePatry: TDBEdit
      Left = 160
      Top = 8
      Width = 57
      Height = 21
      DataField = 'CODE_RELESE'
      DataSource = dmBooks.dsRelese
      TabOrder = 0
    end
    object dbeQuantity: TDBEdit
      Left = 120
      Top = 56
      Width = 97
      Height = 21
      DataField = 'QUANTITY'
      DataSource = dmBooks.dsRelese
      TabOrder = 1
    end
    object dbeDateRelese: TDBEdit
      Left = 120
      Top = 104
      Width = 97
      Height = 21
      DataField = 'DATE_RELESE'
      DataSource = dmBooks.dsRelese
      TabOrder = 2
    end
    object DBECode_book: TDBEdit
      Left = 96
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODE_BOOK'
      DataSource = dmBooks.dsRelese
      TabOrder = 3
    end
    object DBECode_publ: TDBEdit
      Left = 120
      Top = 80
      Width = 97
      Height = 21
      DataField = 'CODE_PUBLISHING'
      DataSource = dmBooks.dsRelese
      TabOrder = 4
    end
  end
  inherited ilNavigationBar: TImageList
    Left = 344
    Top = 0
  end
end
