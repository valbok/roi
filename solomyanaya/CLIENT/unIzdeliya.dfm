object frmIzdeliya: TfrmIzdeliya
  Left = 193
  Top = 119
  Width = 493
  Height = 454
  Caption = #1048#1079#1076#1077#1083#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 427
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 3
    BorderStyle = bsSingle
    Color = clGray
    TabOrder = 0
    object grid: TDBGrid
      Left = 7
      Top = 7
      Width = 467
      Height = 313
      Align = alClient
      Color = clSilver
      DataSource = DM.dsQall_izdeliya
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object pnlBotom: TPanel
      Left = 7
      Top = 320
      Width = 467
      Height = 96
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvSpace
      BevelWidth = 2
      BorderWidth = 2
      Color = 4079166
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 14
        Height = 13
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 96
        Top = 8
        Width = 79
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 40
        Width = 77
        Height = 13
        Caption = #1050#1086#1076' '#1087#1088#1086#1084#1099#1089#1083#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 144
        Top = 40
        Width = 108
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1084#1099#1089#1083#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 68
        Height = 13
        Caption = #1050#1086#1076' '#1084#1072#1089#1090#1077#1088#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 144
        Top = 64
        Width = 98
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1084#1072#1089#1090#1077#1088#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeID: TDBEdit
        Left = 40
        Top = 8
        Width = 49
        Height = 19
        Color = 14342874
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsQall_izdeliya
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object dbeName: TDBEdit
        Left = 184
        Top = 8
        Width = 193
        Height = 19
        Ctl3D = False
        DataField = 'NAME'
        DataSource = DM.dsQall_izdeliya
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbePromisel_id: TDBEdit
        Left = 96
        Top = 40
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'PROMISEL_ID'
        DataSource = DM.dsQall_izdeliya
        ParentCtl3D = False
        TabOrder = 2
      end
      object dblcbProm_name: TDBLookupComboBox
        Left = 256
        Top = 40
        Width = 121
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DM.dsQAll_promisli
        ParentCtl3D = False
        TabOrder = 3
        OnClick = dblcbProm_nameClick
      end
      object dbeMaster_id: TDBEdit
        Left = 96
        Top = 64
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'MASTER_ID'
        DataSource = DM.dsQall_izdeliya
        ParentCtl3D = False
        TabOrder = 4
      end
      object dblcbFam: TDBLookupComboBox
        Left = 248
        Top = 64
        Width = 129
        Height = 19
        Ctl3D = False
        KeyField = 'ID'
        ListField = 'FAM'
        ListSource = DM.dsQAll_mastera
        ParentCtl3D = False
        TabOrder = 5
        OnClick = dblcbFamClick
      end
    end
  end
end
