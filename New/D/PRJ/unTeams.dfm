inherited fmTeams: TfmTeams
  Left = 374
  Top = 213
  Caption = 'fmTeams'
  ClientHeight = 223
  ClientWidth = 316
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 104
    Width = 48
    Height = 18
    Caption = 'Teams'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbTeam: TLabel [1]
    Left = 160
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Team'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbCity: TLabel [2]
    Left = 168
    Top = 104
    Width = 22
    Height = 13
    Caption = 'City'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbCountry: TLabel [3]
    Left = 152
    Top = 136
    Width = 45
    Height = 13
    Caption = 'Country'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbStadium: TLabel [4]
    Left = 152
    Top = 168
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
  object lbTeam_Id: TLabel [5]
    Left = 144
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Team_Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited tlbNavigationBar: TToolBar
    Left = 12
    Top = 31
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
  inherited StatusBar1: TStatusBar
    Top = 204
    Width = 316
  end
  object dbeTeam_ID: TDBEdit
    Left = 208
    Top = 32
    Width = 41
    Height = 21
    DataField = 'TEAM_ID'
    DataSource = FootbDM.dsTeams
    TabOrder = 2
  end
  object dbeTeam: TDBEdit
    Left = 208
    Top = 64
    Width = 89
    Height = 21
    DataField = 'TEAM'
    DataSource = FootbDM.dsTeams
    TabOrder = 3
  end
  object dblucbCity_ID: TDBLookupComboBox
    Left = 208
    Top = 96
    Width = 89
    Height = 21
    DataField = 'CITY_ID'
    DataSource = FootbDM.dsTeams
    KeyField = 'CITY_ID'
    ListField = 'CITY'
    ListSource = FootbDM.dsCities
    TabOrder = 4
  end
  object dblucbCountries: TDBLookupComboBox
    Left = 208
    Top = 128
    Width = 89
    Height = 21
    DataField = 'COUNTRY_ID'
    DataSource = FootbDM.dsTeams
    KeyField = 'COUNTRY_ID'
    ListField = 'COUNTRY'
    ListSource = FootbDM.dsCountries
    TabOrder = 5
  end
  object dblucbStadiums: TDBLookupComboBox
    Left = 208
    Top = 160
    Width = 89
    Height = 21
    DataField = 'STADIUM_ID'
    DataSource = FootbDM.dsTeams
    KeyField = 'STADIUM_ID'
    ListField = 'STADIUM'
    ListSource = FootbDM.dsStadiums
    TabOrder = 6
  end
end
