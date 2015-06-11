inherited fmCountry: TfmCountry
  Left = 367
  Top = 216
  Caption = 'fmCountry'
  ClientHeight = 213
  ClientWidth = 329
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbCountry_Id: TLabel [0]
    Left = 144
    Top = 48
    Width = 64
    Height = 13
    Caption = 'Country_Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbCountry: TLabel [1]
    Left = 160
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Country'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited Label1: TLabel
    Left = 136
    Width = 62
    Caption = 'Countries'
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  inherited tlbNavigationBar: TToolBar
    Left = 15
    Top = 24
    Width = 122
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
  object dbeCountry_ID: TDBEdit [4]
    Left = 224
    Top = 40
    Width = 57
    Height = 21
    DataField = 'COUNTRY_ID'
    DataSource = FootbDM.dsCountries
    TabOrder = 2
  end
  object dbeCountry: TDBEdit [5]
    Left = 224
    Top = 80
    Width = 97
    Height = 21
    DataField = 'COUNTRY'
    DataSource = FootbDM.dsCountries
    TabOrder = 3
  end
  inherited StatusBar1: TStatusBar
    Top = 194
    Width = 329
  end
end
