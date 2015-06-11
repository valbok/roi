object DbNavStatForm: TDbNavStatForm
  Left = 229
  Top = 141
  BorderStyle = bsDialog
  Caption = 'DbNavStatForm'
  ClientHeight = 404
  ClientWidth = 530
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    530
    404)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 0
    Width = 35
    Height = 16
    Caption = 'Panel'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object tlbNavigationBar: TToolBar
    Left = 34
    Top = 40
    Width = 119
    Height = 157
    Align = alNone
    Anchors = [akRight, akBottom]
    BorderWidth = 2
    ButtonHeight = 24
    ButtonWidth = 55
    Caption = 'tlbNavigationBar'
    Color = clBtnHighlight
    EdgeOuter = esRaised
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object sbFirst: TToolButton
      Left = 0
      Top = 2
      Hint = 'First'
      Caption = 'First'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
    end
    object sbPrev: TToolButton
      Left = 55
      Top = 2
      Hint = 'Prev'
      AllowAllUp = True
      Caption = 'Prev'
      Grouped = True
      ImageIndex = 9
      ParentShowHint = False
      Wrap = True
      ShowHint = True
    end
    object sbNext: TToolButton
      Left = 0
      Top = 26
      Hint = 'Next'
      Caption = 'Next'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
    end
    object sbLast: TToolButton
      Left = 55
      Top = 26
      Hint = 'Last'
      Caption = 'Last'
      ImageIndex = 10
      ParentShowHint = False
      Wrap = True
      ShowHint = True
    end
    object sbAccept: TToolButton
      Left = 0
      Top = 50
      Hint = 'Accept'
      Caption = 'Accept'
      DragKind = dkDock
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
    end
    object sbCancel: TToolButton
      Left = 55
      Top = 50
      Hint = 'Cancel'
      Caption = 'Cancel'
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
    end
    object sbBrowse: TToolButton
      Left = 0
      Top = 74
      Hint = 'Browse'
      Caption = 'Browse'
      Grouped = True
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBrowseClick
    end
    object sbEdit: TToolButton
      Left = 55
      Top = 74
      Hint = 'Edit'
      Caption = 'Edit'
      ImageIndex = 3
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = sbEditClick
    end
    object sbInsert: TToolButton
      Left = 0
      Top = 98
      Hint = 'Insert'
      Caption = 'Insert'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = sbInsertClick
    end
    object sbDelete: TToolButton
      Left = 55
      Top = 98
      Hint = 'Delete'
      Caption = 'Delete'
      ImageIndex = 2
      ParentShowHint = False
      Wrap = True
      ShowHint = True
    end
    object Button1: TButton
      Left = 0
      Top = 122
      Width = 55
      Height = 24
      Caption = 'Exit'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 385
    Width = 530
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
end
