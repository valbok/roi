object frmMain: TfrmMain
  Left = 96
  Top = 163
  Width = 632
  Height = 319
  Caption = 
    #1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1093' '#1092#1072#1081#1083#1086#1074' '#1074' '#1083#1086#1082#1072#1083#1100#1085#1086#1081' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1085#1086#1081' '#1089#1077#1090#1080' '#1072#1082#1072#1076 +
    #1077#1084#1080#1080
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
    Width = 624
    Height = 272
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clWhite
    TabOrder = 0
    object pnlTop: TPanel
      Left = 3
      Top = 3
      Width = 618
      Height = 266
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BorderStyle = bsSingle
      TabOrder = 0
      object pnlL: TPanel
        Left = 2
        Top = 2
        Width = 610
        Height = 258
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvSpace
        TabOrder = 0
        object PageControl: TPageControl
          Left = 2
          Top = 2
          Width = 606
          Height = 254
          ActivePage = tsFiles
          Align = alClient
          TabIndex = 0
          TabOrder = 0
          object tsFiles: TTabSheet
            Caption = #1060#1072#1081#1083#1099
            object pnlF: TPanel
              Left = 0
              Top = 0
              Width = 598
              Height = 226
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              BorderStyle = bsSingle
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object gridFiles: TDBGrid
                Left = 201
                Top = 3
                Width = 390
                Height = 182
                Align = alClient
                DataSource = DM.dsQryFiles
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
              object pnlBot: TPanel
                Left = 3
                Top = 185
                Width = 588
                Height = 34
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvNone
                TabOrder = 1
                object pnlTopF: TPanel
                  Left = 1
                  Top = 1
                  Width = 586
                  Height = 32
                  Align = alClient
                  BevelInner = bvLowered
                  BorderStyle = bsSingle
                  Color = clBtnHighlight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object sbPriorF: TSpeedButton
                    Left = 52
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Prior'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbPriorFClick
                  end
                  object sbFirstF: TSpeedButton
                    Left = 4
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'First'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbFirstFClick
                  end
                  object sbNextF: TSpeedButton
                    Left = 100
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Next'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNextFClick
                  end
                  object sbLastF: TSpeedButton
                    Left = 148
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Last'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbLastFClick
                  end
                  object sbRefreshF: TSpeedButton
                    Left = 444
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Refresh'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbRefreshFClick
                  end
                  object sbEditF: TSpeedButton
                    Left = 388
                    Top = 3
                    Width = 29
                    Height = 22
                    Caption = 'Edit'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbEditFClick
                  end
                  object sbCancelF: TSpeedButton
                    Left = 340
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Cancel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbCancelFClick
                  end
                  object sbApplyF: TSpeedButton
                    Left = 300
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'Apply'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbApplyFClick
                  end
                  object sbDEleteF: TSpeedButton
                    Left = 260
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'Delete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbDEleteFClick
                  end
                  object sbNewF: TSpeedButton
                    Left = 220
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'New'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNewFClick
                  end
                end
              end
              object Panel10: TPanel
                Left = 3
                Top = 3
                Width = 198
                Height = 182
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Panel13: TPanel
                  Left = 0
                  Top = 0
                  Width = 193
                  Height = 182
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label1: TLabel
                    Left = 8
                    Top = 8
                    Width = 22
                    Height = 13
                    Caption = #1050#1086#1076':'
                  end
                  object Label2: TLabel
                    Left = 8
                    Top = 32
                    Width = 61
                    Height = 13
                    Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088':'
                  end
                  object Label3: TLabel
                    Left = 8
                    Top = 56
                    Width = 57
                    Height = 13
                    Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072':'
                  end
                  object Label4: TLabel
                    Left = 8
                    Top = 80
                    Width = 76
                    Height = 13
                    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
                  end
                  object Label5: TLabel
                    Left = 8
                    Top = 104
                    Width = 42
                    Height = 13
                    Caption = #1056#1072#1079#1084#1077#1088':'
                  end
                  object Label7: TLabel
                    Left = 8
                    Top = 152
                    Width = 102
                    Height = 13
                    Caption = #1044#1072#1090#1072' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1080':'
                  end
                  object Label6: TLabel
                    Left = 8
                    Top = 128
                    Width = 80
                    Height = 13
                    Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
                  end
                  object dbeDate_modific: TDBEdit
                    Left = 112
                    Top = 152
                    Width = 81
                    Height = 21
                    DataField = 'DATE_MODIFIC'
                    DataSource = DM.dsQryFiles
                    TabOrder = 0
                  end
                  object dbeDate_create: TDBEdit
                    Left = 112
                    Top = 128
                    Width = 81
                    Height = 21
                    DataField = 'DATE_CREATE'
                    DataSource = DM.dsQryFiles
                    TabOrder = 1
                  end
                  object dbeSize: TDBEdit
                    Left = 96
                    Top = 104
                    Width = 97
                    Height = 21
                    DataField = 'FSIZE'
                    DataSource = DM.dsQryFiles
                    TabOrder = 2
                  end
                  object cbUser: TDBLookupComboBox
                    Left = 96
                    Top = 80
                    Width = 97
                    Height = 21
                    DataField = 'KOD_USER'
                    DataSource = DM.dsQryFiles
                    KeyField = 'KOD'
                    ListField = 'FIRSTNAME;lastname'
                    ListSource = DM.dsQryUsers
                    TabOrder = 3
                  end
                  object cbType: TDBLookupComboBox
                    Left = 72
                    Top = 56
                    Width = 121
                    Height = 21
                    DataField = 'KOD_TYPE'
                    DataSource = DM.dsQryFiles
                    KeyField = 'KOD'
                    ListField = 'NAME'
                    ListSource = DM.dsQqryTypes
                    TabOrder = 4
                  end
                  object cbComp: TDBLookupComboBox
                    Left = 72
                    Top = 32
                    Width = 121
                    Height = 21
                    DataField = 'KOD_COMP'
                    DataSource = DM.dsQryFiles
                    KeyField = 'KOD'
                    ListField = 'NAME'
                    ListSource = DM.dsQryComps
                    TabOrder = 5
                  end
                  object dbeKodF: TDBEdit
                    Left = 144
                    Top = 8
                    Width = 49
                    Height = 21
                    DataField = 'KOD'
                    DataSource = DM.dsQryFiles
                    TabOrder = 6
                  end
                end
              end
            end
          end
          object tsUsers: TTabSheet
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
            ImageIndex = 1
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 598
              Height = 226
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              BorderStyle = bsSingle
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object DBGrid1: TDBGrid
                Left = 201
                Top = 3
                Width = 390
                Height = 183
                Align = alClient
                DataSource = DM.dsQryUsers
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
              object Panel4: TPanel
                Left = 3
                Top = 186
                Width = 588
                Height = 33
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvNone
                TabOrder = 1
                object Panel5: TPanel
                  Left = 1
                  Top = 1
                  Width = 586
                  Height = 31
                  Align = alClient
                  BevelInner = bvLowered
                  BorderStyle = bsSingle
                  Color = clGradientInactiveCaption
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object sbPriorU: TSpeedButton
                    Left = 52
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Prior'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbPriorUClick
                  end
                  object sbFirstU: TSpeedButton
                    Left = 4
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'First'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbFirstUClick
                  end
                  object sbNextU: TSpeedButton
                    Left = 100
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Next'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNextUClick
                  end
                  object sbLastU: TSpeedButton
                    Left = 148
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Last'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbLastUClick
                  end
                  object sbREfreshU: TSpeedButton
                    Left = 444
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Refresh'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbREfreshUClick
                  end
                  object sbEditU: TSpeedButton
                    Left = 388
                    Top = 3
                    Width = 29
                    Height = 22
                    Caption = 'Edit'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbEditUClick
                  end
                  object SBCancelU: TSpeedButton
                    Left = 340
                    Top = 3
                    Width = 45
                    Height = 22
                    Caption = 'Cancel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = SBCancelUClick
                  end
                  object sbApplyU: TSpeedButton
                    Left = 300
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'Apply'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbApplyUClick
                  end
                  object sbDEleteU: TSpeedButton
                    Left = 260
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'Delete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbDEleteUClick
                  end
                  object sbNewU: TSpeedButton
                    Left = 220
                    Top = 3
                    Width = 37
                    Height = 22
                    Caption = 'New'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNewUClick
                  end
                end
              end
              object Panel12: TPanel
                Left = 3
                Top = 3
                Width = 198
                Height = 183
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label8: TLabel
                  Left = 8
                  Top = 8
                  Width = 22
                  Height = 13
                  Caption = #1050#1086#1076':'
                end
                object Label9: TLabel
                  Left = 8
                  Top = 32
                  Width = 52
                  Height = 13
                  Caption = #1060#1072#1084#1080#1083#1080#1103':'
                end
                object Label10: TLabel
                  Left = 8
                  Top = 56
                  Width = 25
                  Height = 13
                  Caption = #1048#1084#1103':'
                end
                object Label11: TLabel
                  Left = 8
                  Top = 80
                  Width = 50
                  Height = 13
                  Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
                end
                object Label12: TLabel
                  Left = 8
                  Top = 104
                  Width = 38
                  Height = 13
                  Caption = #1043#1088#1091#1087#1087#1072':'
                end
                object dbeGroup: TDBEdit
                  Left = 112
                  Top = 104
                  Width = 81
                  Height = 21
                  DataField = 'GROUPA'
                  DataSource = DM.dsQryUsers
                  TabOrder = 0
                end
                object dbeOtch: TDBEdit
                  Left = 64
                  Top = 80
                  Width = 129
                  Height = 21
                  DataField = 'OTCH'
                  DataSource = DM.dsQryUsers
                  TabOrder = 1
                end
                object dbeFirstName: TDBEdit
                  Left = 64
                  Top = 56
                  Width = 129
                  Height = 21
                  DataField = 'FIRSTNAME'
                  DataSource = DM.dsQryUsers
                  TabOrder = 2
                end
                object dbeLastName: TDBEdit
                  Left = 64
                  Top = 32
                  Width = 129
                  Height = 21
                  DataField = 'LASTNAME'
                  DataSource = DM.dsQryUsers
                  TabOrder = 3
                end
                object dbeKodU: TDBEdit
                  Left = 144
                  Top = 8
                  Width = 49
                  Height = 21
                  DataField = 'KOD'
                  DataSource = DM.dsQryUsers
                  TabOrder = 4
                end
              end
            end
          end
          object tsComps: TTabSheet
            Caption = #1050#1086#1084#1087'-'#1099
            ImageIndex = 2
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 598
              Height = 226
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              BorderStyle = bsSingle
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object Panel6: TPanel
                Left = 3
                Top = 187
                Width = 588
                Height = 32
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvNone
                TabOrder = 0
                object Panel7: TPanel
                  Left = 1
                  Top = 1
                  Width = 586
                  Height = 30
                  Align = alClient
                  BevelInner = bvLowered
                  BorderStyle = bsSingle
                  Color = clCream
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object sbPriorC: TSpeedButton
                    Left = 52
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Prior'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbPriorCClick
                  end
                  object sbFirstC: TSpeedButton
                    Left = 4
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'First'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbFirstCClick
                  end
                  object sbNextC: TSpeedButton
                    Left = 100
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Next'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNextCClick
                  end
                  object sbLastC: TSpeedButton
                    Left = 148
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Last'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbLastCClick
                  end
                  object sbRefreshC: TSpeedButton
                    Left = 444
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Refresh'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbRefreshCClick
                  end
                  object sbEditC: TSpeedButton
                    Left = 388
                    Top = 2
                    Width = 29
                    Height = 22
                    Caption = 'Edit'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbEditCClick
                  end
                  object sbCancelC: TSpeedButton
                    Left = 340
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Cancel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbCancelCClick
                  end
                  object sbApplyC: TSpeedButton
                    Left = 300
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'Apply'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbApplyCClick
                  end
                  object sbDEleteC: TSpeedButton
                    Left = 260
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'Delete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbDEleteCClick
                  end
                  object sbNewC: TSpeedButton
                    Left = 220
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'New'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNewCClick
                  end
                end
              end
              object DBGrid2: TDBGrid
                Left = 201
                Top = 3
                Width = 390
                Height = 184
                Align = alClient
                DataSource = DM.dsQryComps
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
              object Panel11: TPanel
                Left = 3
                Top = 3
                Width = 198
                Height = 184
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label13: TLabel
                  Left = 8
                  Top = 8
                  Width = 22
                  Height = 13
                  Caption = #1050#1086#1076':'
                end
                object Label14: TLabel
                  Left = 8
                  Top = 32
                  Width = 53
                  Height = 13
                  Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
                end
                object Label15: TLabel
                  Left = 8
                  Top = 56
                  Width = 53
                  Height = 13
                  Caption = #8470' '#1082#1083#1072#1089#1089#1072':'
                end
                object dbeNum_klass: TDBEdit
                  Left = 104
                  Top = 56
                  Width = 81
                  Height = 21
                  DataField = 'NUM_KLASS'
                  DataSource = DM.dsQryComps
                  TabOrder = 0
                end
                object dbeNameC: TDBEdit
                  Left = 72
                  Top = 32
                  Width = 113
                  Height = 21
                  DataField = 'NAME'
                  DataSource = DM.dsQryComps
                  TabOrder = 1
                end
                object dbeKodC: TDBEdit
                  Left = 136
                  Top = 8
                  Width = 49
                  Height = 21
                  DataField = 'KOD'
                  DataSource = DM.dsQryComps
                  TabOrder = 2
                end
              end
            end
          end
          object tsTypes: TTabSheet
            Caption = #1058#1080#1087#1099' '#1092#1072#1081#1083#1086#1074
            ImageIndex = 3
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 598
              Height = 226
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              BorderStyle = bsSingle
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object Label16: TLabel
                Left = 8
                Top = 8
                Width = 22
                Height = 13
                Caption = #1050#1086#1076':'
              end
              object Label17: TLabel
                Left = 8
                Top = 32
                Width = 53
                Height = 13
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
              end
              object Label19: TLabel
                Left = 8
                Top = 56
                Width = 53
                Height = 13
                Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
              end
              object dbeNameT: TDBEdit
                Left = 72
                Top = 32
                Width = 121
                Height = 21
                DataField = 'NAME'
                DataSource = DM.dsQqryTypes
                TabOrder = 0
              end
              object dbeKodeT: TDBEdit
                Left = 144
                Top = 8
                Width = 49
                Height = 21
                DataField = 'KOD'
                DataSource = DM.dsQqryTypes
                TabOrder = 1
              end
              object dbmDEsc: TDBMemo
                Left = 72
                Top = 56
                Width = 121
                Height = 89
                DataField = 'DESCRIPTION'
                DataSource = DM.dsQqryTypes
                TabOrder = 2
              end
              object DBGrid3: TDBGrid
                Left = 200
                Top = 3
                Width = 391
                Height = 184
                Align = alRight
                DataSource = DM.dsQqryTypes
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
              object Panel8: TPanel
                Left = 3
                Top = 187
                Width = 588
                Height = 32
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvNone
                TabOrder = 4
                object Panel9: TPanel
                  Left = 1
                  Top = 1
                  Width = 586
                  Height = 30
                  Align = alClient
                  BevelInner = bvLowered
                  BorderStyle = bsSingle
                  Color = clMoneyGreen
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object sbPriorT: TSpeedButton
                    Left = 52
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Prior'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbPriorTClick
                  end
                  object sbFirstT: TSpeedButton
                    Left = 4
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'First'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbFirstTClick
                  end
                  object sbNextT: TSpeedButton
                    Left = 100
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Next'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNextTClick
                  end
                  object sbLastT: TSpeedButton
                    Left = 148
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Last'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbLastTClick
                  end
                  object sbRefreshT: TSpeedButton
                    Left = 444
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Refresh'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbRefreshTClick
                  end
                  object sbEditT: TSpeedButton
                    Left = 388
                    Top = 2
                    Width = 29
                    Height = 22
                    Caption = 'Edit'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbEditTClick
                  end
                  object sbCancelT: TSpeedButton
                    Left = 340
                    Top = 2
                    Width = 45
                    Height = 22
                    Caption = 'Cancel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbCancelTClick
                  end
                  object sbApplyT: TSpeedButton
                    Left = 300
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'Apply'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbApplyTClick
                  end
                  object sbDeleteT: TSpeedButton
                    Left = 260
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'Delete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbDeleteTClick
                  end
                  object sbNewT: TSpeedButton
                    Left = 220
                    Top = 2
                    Width = 37
                    Height = 22
                    Caption = 'New'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = sbNewTClick
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 472
    Top = 56
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object miLogin: TMenuItem
        Caption = #1051#1086#1075' '#1048#1053
        OnClick = miLoginClick
      end
      object miLogout: TMenuItem
        Caption = #1051#1086#1075' '#1040#1059#1058
        Enabled = False
        OnClick = miLogoutClick
      end
    end
  end
end
