object frmManeger: TfrmManeger
  Left = 204
  Top = 149
  Width = 544
  Height = 375
  Caption = 'Maneger'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 328
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    Color = clMoneyGreen
    TabOrder = 0
    object gridMain: TDBGrid
      Left = 4
      Top = 31
      Width = 528
      Height = 275
      Align = alClient
      Color = clBtnHighlight
      FixedColor = clCream
      PopupMenu = pmManeger
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object DBNavMain: TDBNavigator
      Left = 4
      Top = 306
      Width = 528
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object pnlTop: TPanel
      Left = 4
      Top = 4
      Width = 528
      Height = 27
      Align = alTop
      BevelOuter = bvLowered
      BorderWidth = 1
      Color = clActiveBorder
      TabOrder = 2
      object PageControl: TPageControl
        Left = 2
        Top = 2
        Width = 524
        Height = 23
        ActivePage = tsPotrebiteli
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        object tsPotrebiteli: TTabSheet
          Caption = 'Potrebiteli'
          OnShow = tsPotrebiteliShow
        end
        object tsTovari: TTabSheet
          Caption = 'Tovari'
          ImageIndex = 1
          OnShow = tsTovariShow
        end
        object tsNakladnie: TTabSheet
          Caption = 'Nakladnie'
          ImageIndex = 2
          OnShow = tsNakladnieShow
        end
        object tsPostavka: TTabSheet
          Caption = 'Postavki'
          ImageIndex = 3
          OnShow = tsPostavkaShow
        end
      end
    end
  end
  object pmManeger: TPopupMenu
    Left = 208
    Top = 128
    object miDelete: TMenuItem
      Caption = '&Delete'
      OnClick = miDeleteClick
    end
    object miRefresh: TMenuItem
      Caption = '&Refresh'
      OnClick = miRefreshClick
    end
  end
  object MainMenu: TMainMenu
    Left = 152
    Top = 64
    object miService: TMenuItem
      Caption = '&Service'
      object miSave: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = miSaveClick
      end
      object miCancel: TMenuItem
        Caption = 'Cancel'
        ShortCut = 16474
        OnClick = miCancelClick
      end
    end
  end
end
