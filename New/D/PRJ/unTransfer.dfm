inherited fmTransfer: TfmTransfer
  Left = 364
  Top = 189
  Caption = 'fmTransfer'
  ClientHeight = 290
  ClientWidth = 342
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 48
    Top = 8
    Width = 72
    Height = 18
    Caption = 'Transfers'
    Font.Height = -15
    Font.Style = [fsBold, fsItalic, fsUnderline]
  end
  object lbTransfer_Id: TLabel [1]
    Left = 144
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Transfer_Id'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbPlayer_Id: TLabel [2]
    Left = 152
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Player_Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbFrom_Team: TLabel [3]
    Left = 144
    Top = 104
    Width = 68
    Height = 13
    Caption = 'From_Team'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbTo_Team: TLabel [4]
    Left = 160
    Top = 136
    Width = 53
    Height = 13
    Caption = 'To_Team'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbTransfer_Date: TLabel [5]
    Left = 136
    Top = 168
    Width = 82
    Height = 13
    Caption = 'Transfer_Date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbTerm: TLabel [6]
    Left = 184
    Top = 200
    Width = 30
    Height = 13
    Caption = 'Term'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbPrice: TLabel [7]
    Left = 184
    Top = 232
    Width = 28
    Height = 13
    Caption = 'Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited tlbNavigationBar: TToolBar
    Left = 6
    Top = 62
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
    Top = 271
    Width = 342
  end
  object dbeTransfer_Id: TDBEdit
    Left = 224
    Top = 32
    Width = 49
    Height = 21
    DataField = 'TRANSFER_ID'
    DataSource = FootbDM.dsTransfer
    TabOrder = 2
  end
  object dblcbPlayer_Id: TDBLookupComboBox
    Left = 224
    Top = 64
    Width = 105
    Height = 21
    DataField = 'PLAYER_ID'
    DataSource = FootbDM.dsTransfer
    KeyField = 'PLAYER_ID'
    ListField = 'LASTNAME'
    ListSource = FootbDM.dsPlayers
    TabOrder = 3
  end
  object dblcbFrom: TDBLookupComboBox
    Left = 224
    Top = 96
    Width = 105
    Height = 21
    DataField = 'FROM_TEAM'
    DataSource = FootbDM.dsTransfer
    KeyField = 'TEAM_ID'
    ListField = 'TEAM'
    ListSource = FootbDM.dsTeams
    TabOrder = 4
  end
  object dblcbTo: TDBLookupComboBox
    Left = 224
    Top = 128
    Width = 105
    Height = 21
    DataField = 'TO_TEAM'
    DataSource = FootbDM.dsTransfer
    KeyField = 'TEAM_ID'
    ListField = 'TEAM'
    ListSource = FootbDM.dsTeams
    TabOrder = 5
  end
  object dbeTransfer_Date: TDBEdit
    Left = 224
    Top = 160
    Width = 73
    Height = 21
    DataField = 'TRANSFER_DATE'
    DataSource = FootbDM.dsTransfer
    TabOrder = 6
  end
  object dbeTerm: TDBEdit
    Left = 224
    Top = 192
    Width = 49
    Height = 21
    DataField = 'TERM'
    DataSource = FootbDM.dsTransfer
    TabOrder = 7
  end
  object dbePrice: TDBEdit
    Left = 224
    Top = 224
    Width = 73
    Height = 21
    DataField = 'PRICE'
    DataSource = FootbDM.dsTransfer
    TabOrder = 8
  end
end
