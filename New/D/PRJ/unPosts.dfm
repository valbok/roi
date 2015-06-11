inherited fmPosts: TfmPosts
  Left = 377
  Top = 211
  Caption = 'fmPosts'
  ClientHeight = 206
  ClientWidth = 297
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 152
    Width = 41
    Height = 18
    Caption = 'Posts'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbPost_Id: TLabel [1]
    Left = 144
    Top = 48
    Width = 44
    Height = 13
    Caption = 'Post_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbPost: TLabel [2]
    Left = 152
    Top = 88
    Width = 25
    Height = 13
    Caption = 'Post'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited tlbNavigationBar: TToolBar
    Left = 9
    Top = 21
    Width = 126
    Color = clSkyBlue
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    inherited sbFirst: TToolButton
      OnClick = sbFirstClick
    end
    inherited sbPrev: TToolButton
      OnClick = sbPrevClick
    end
    inherited sbNext: TToolButton
      OnClick = sbNextClick
    end
    inherited sbLast: TToolButton
      OnClick = sbLastClick
    end
    inherited sbAccept: TToolButton
      OnClick = sbAcceptClick
    end
    inherited sbCancel: TToolButton
      OnClick = sbCancelClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 187
    Width = 297
  end
  object dbePost_ID: TDBEdit
    Left = 200
    Top = 40
    Width = 57
    Height = 21
    DataField = 'POST_ID'
    DataSource = FootbDM.dsPosts
    TabOrder = 2
  end
  object dbePost: TDBEdit
    Left = 200
    Top = 80
    Width = 81
    Height = 21
    DataField = 'POST'
    DataSource = FootbDM.dsPosts
    TabOrder = 3
  end
end
