inherited fmStaff: TfmStaff
  Left = 378
  Top = 197
  Caption = 'fmStaff'
  ClientHeight = 243
  ClientWidth = 314
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Width = 37
    Height = 18
    Caption = 'Staff'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbStaff_Id: TLabel [1]
    Left = 152
    Top = 24
    Width = 46
    Height = 13
    Caption = 'Staff_Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbLastName: TLabel [2]
    Left = 144
    Top = 56
    Width = 56
    Height = 13
    Caption = 'LastName'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbFirstName: TLabel [3]
    Left = 144
    Top = 88
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
    Left = 144
    Top = 120
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
  object lbTeam_Id: TLabel [5]
    Left = 152
    Top = 152
    Width = 51
    Height = 13
    Caption = 'Team_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbPost_Id: TLabel [6]
    Left = 160
    Top = 184
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
  inherited tlbNavigationBar: TToolBar
    Left = 10
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
      OnClick = sbDeleteClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 224
    Width = 314
  end
  object dbeStaff_Id: TDBEdit
    Left = 216
    Top = 16
    Width = 57
    Height = 21
    DataField = 'STAFF_ID'
    DataSource = FootbDM.dsStaff
    TabOrder = 2
  end
  object dbeLastName: TDBEdit
    Left = 216
    Top = 48
    Width = 81
    Height = 21
    DataField = 'LASTNAME'
    DataSource = FootbDM.dsStaff
    TabOrder = 3
  end
  object dbeFirstName: TDBEdit
    Left = 216
    Top = 80
    Width = 81
    Height = 21
    DataField = 'FIRSTNAME'
    DataSource = FootbDM.dsStaff
    TabOrder = 4
  end
  object dbeBirth_Date: TDBEdit
    Left = 216
    Top = 112
    Width = 81
    Height = 21
    DataField = 'BIRTH_DATE'
    DataSource = FootbDM.dsStaff
    TabOrder = 5
  end
  object dblcbTeam_Id: TDBLookupComboBox
    Left = 216
    Top = 144
    Width = 81
    Height = 21
    DataField = 'TEAM_ID'
    DataSource = FootbDM.dsStaff
    KeyField = 'TEAM_ID'
    ListField = 'TEAM'
    ListSource = FootbDM.dsTeams
    TabOrder = 6
  end
  object dblcbPost_Id: TDBLookupComboBox
    Left = 216
    Top = 176
    Width = 81
    Height = 21
    DataField = 'POST_ID'
    DataSource = FootbDM.dsStaff
    KeyField = 'POST_ID'
    ListField = 'POST'
    ListSource = FootbDM.dsPosts
    TabOrder = 7
  end
end
