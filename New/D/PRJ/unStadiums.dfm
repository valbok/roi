inherited fmStadiums: TfmStadiums
  Left = 363
  Top = 213
  Caption = 'fmStadiums'
  ClientHeight = 203
  ClientWidth = 342
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 152
    Width = 69
    Height = 18
    Caption = 'Stadiums'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbStadium_Id: TLabel [1]
    Left = 144
    Top = 40
    Width = 66
    Height = 13
    Caption = 'Stadium_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbStadium: TLabel [2]
    Left = 160
    Top = 72
    Width = 47
    Height = 13
    Caption = 'Stadium'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbCountry_id: TLabel [3]
    Left = 144
    Top = 104
    Width = 64
    Height = 13
    Caption = 'Country_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbMark: TLabel [4]
    Left = 176
    Top = 136
    Width = 29
    Height = 13
    Caption = 'Mark'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited tlbNavigationBar: TToolBar
    Left = 6
    Top = 19
    Width = 125
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
    Top = 184
    Width = 342
  end
  object dbeStadium_Id: TDBEdit
    Left = 224
    Top = 32
    Width = 49
    Height = 21
    DataField = 'STADIUM_ID'
    DataSource = FootbDM.dsStadiums
    TabOrder = 2
  end
  object dbeStadium: TDBEdit
    Left = 224
    Top = 64
    Width = 105
    Height = 21
    DataField = 'STADIUM'
    DataSource = FootbDM.dsStadiums
    TabOrder = 3
  end
  object dblucbCountry_Id: TDBLookupComboBox
    Left = 224
    Top = 96
    Width = 105
    Height = 21
    DataField = 'COUNTRY_ID'
    DataSource = FootbDM.dsStadiums
    KeyField = 'COUNTRY_ID'
    ListField = 'COUNTRY'
    ListSource = FootbDM.dsCountries
    TabOrder = 4
  end
  object dbeMark: TDBEdit
    Left = 224
    Top = 128
    Width = 49
    Height = 21
    DataField = 'MARK'
    DataSource = FootbDM.dsStadiums
    TabOrder = 5
  end
end
