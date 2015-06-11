inherited fmCity: TfmCity
  Left = 220
  Top = 184
  Caption = 'fmCity'
  ClientHeight = 224
  ClientWidth = 288
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 120
    Width = 43
    Height = 18
    Caption = 'Cities'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbCity: TLabel [1]
    Left = 152
    Top = 96
    Width = 22
    Height = 13
    Caption = 'City'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbCity_Id: TLabel [2]
    Left = 136
    Top = 56
    Width = 41
    Height = 13
    Caption = 'City_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited tlbNavigationBar: TToolBar
    Left = 6
    Top = 28
    Width = 123
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
    inherited sbDelete: TToolButton
      Visible = False
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 205
    Width = 288
  end
  object dbeCity_ID: TDBEdit
    Left = 192
    Top = 48
    Width = 49
    Height = 21
    DataField = 'CITY_ID'
    DataSource = FootbDM.dsCities
    TabOrder = 2
  end
  object dbeCITY: TDBEdit
    Left = 192
    Top = 88
    Width = 89
    Height = 21
    DataField = 'CITY'
    DataSource = FootbDM.dsCities
    TabOrder = 3
  end
end
