inherited fmPlayers: TfmPlayers
  Left = 372
  Top = 147
  Caption = 'fmPlayers'
  ClientHeight = 349
  ClientWidth = 322
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 40
    Top = 8
    Width = 57
    Height = 18
    Caption = 'Players'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbPlayer_Id: TLabel [1]
    Left = 136
    Top = 16
    Width = 55
    Height = 13
    Caption = 'Player_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbLastName: TLabel [2]
    Left = 136
    Top = 48
    Width = 56
    Height = 13
    Caption = 'LastName'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbFirstName: TLabel [3]
    Left = 136
    Top = 80
    Width = 57
    Height = 13
    Caption = 'FirstName'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbBirth_Date: TLabel [4]
    Left = 136
    Top = 112
    Width = 61
    Height = 13
    Caption = 'Birth_Date'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbBirth_Place: TLabel [5]
    Left = 136
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Birth_Place'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbHeight: TLabel [6]
    Left = 136
    Top = 176
    Width = 37
    Height = 13
    Caption = 'Height'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbWeight: TLabel [7]
    Left = 136
    Top = 208
    Width = 40
    Height = 13
    Caption = 'Weight'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbAmplua: TLabel [8]
    Left = 136
    Top = 240
    Width = 43
    Height = 13
    Caption = 'Amplua'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbNumber: TLabel [9]
    Left = 136
    Top = 272
    Width = 44
    Height = 13
    Caption = 'Number'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label6: TLabel [10]
    Left = 136
    Top = 304
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
    Left = 10
    Top = 41
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
  end
  inherited StatusBar1: TStatusBar
    Top = 330
    Width = 322
  end
  object dbePlayer_Id: TDBEdit
    Left = 208
    Top = 8
    Width = 65
    Height = 21
    DataField = 'PLAYER_ID'
    DataSource = FootbDM.dsPlayers
    TabOrder = 2
  end
  object dbeLastName: TDBEdit
    Left = 208
    Top = 40
    Width = 97
    Height = 21
    DataField = 'LASTNAME'
    DataSource = FootbDM.dsPlayers
    TabOrder = 3
  end
  object dbeFirstName: TDBEdit
    Left = 208
    Top = 72
    Width = 97
    Height = 21
    DataField = 'FIRSTNAME'
    DataSource = FootbDM.dsPlayers
    TabOrder = 4
  end
  object dbeBirth_Date: TDBEdit
    Left = 208
    Top = 104
    Width = 57
    Height = 21
    DataField = 'BIRTH_DATE'
    DataSource = FootbDM.dsPlayers
    TabOrder = 5
  end
  object dbeHeight: TDBEdit
    Left = 208
    Top = 168
    Width = 33
    Height = 21
    DataField = 'HEIGHT'
    DataSource = FootbDM.dsPlayers
    TabOrder = 6
  end
  object dbeWeight: TDBEdit
    Left = 208
    Top = 200
    Width = 33
    Height = 21
    DataField = 'WEIGHT'
    DataSource = FootbDM.dsPlayers
    TabOrder = 7
  end
  object dbeAmplua: TDBEdit
    Left = 208
    Top = 232
    Width = 81
    Height = 21
    DataField = 'AMPLUA'
    DataSource = FootbDM.dsPlayers
    TabOrder = 8
  end
  object dbeNumber: TDBEdit
    Left = 208
    Top = 264
    Width = 25
    Height = 21
    DataField = 'NUMBER'
    DataSource = FootbDM.dsPlayers
    TabOrder = 9
  end
  object dblcbTeam_Id: TDBLookupComboBox
    Left = 208
    Top = 296
    Width = 97
    Height = 21
    DataField = 'TEAM_ID'
    DataSource = FootbDM.dsPlayers
    KeyField = 'TEAM_ID'
    ListField = 'TEAM'
    ListSource = FootbDM.dsTeams
    TabOrder = 10
  end
  object dblcbBirthPlace: TDBLookupComboBox
    Left = 208
    Top = 136
    Width = 97
    Height = 21
    DataField = 'BIRTH_PLACE'
    DataSource = FootbDM.dsPlayers
    KeyField = 'COUNTRY_ID'
    ListField = 'COUNTRY'
    ListSource = FootbDM.dsCountries
    TabOrder = 11
  end
end
