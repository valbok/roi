object frmMain: TfrmMain
  Left = 53
  Top = 125
  Width = 630
  Height = 375
  Caption = #1050#1085#1080#1075#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 328
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object gridMain: TDBGrid
      Left = 4
      Top = 41
      Width = 614
      Height = 264
      Align = alClient
      DataSource = DM.dsQryAllKnigi
      PopupMenu = pmManeger
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object StatusBar: TStatusBar
      Left = 4
      Top = 305
      Width = 614
      Height = 19
      Panels = <
        item
          Text = #1050#1085#1080#1075#1080
          Width = 250
        end
        item
          Text = #1054#1090#1082#1083#1102#1095#1077#1085#1086
          Width = 50
        end>
      SimplePanel = False
    end
    object pnlTop: TPanel
      Left = 4
      Top = 4
      Width = 614
      Height = 37
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BorderStyle = bsSingle
      TabOrder = 2
      object sbNew: TSpeedButton
        Left = 4
        Top = 6
        Width = 61
        Height = 22
        Caption = 'New'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FFFFFF0000FFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FF0000FF0000FF
          FFFF0000FFFFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FF0000FF0000FF
          0000FF0000FFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFF000000000000000000FFFFFFFF
          0000FF0000FF0000FF0000FFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFF0000FF0000FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FFFFFF808080FFFFFFFF
          0000FF0000FF0000FF0000FFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFF0000FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000FFFFFFFFFFFFFFFFFF808080FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFC0C0C0FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0808080FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080808080808080808080808080
          8080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbNewClick
      end
      object sbDElete: TSpeedButton
        Left = 66
        Top = 6
        Width = 65
        Height = 22
        Caption = 'Delete'
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777777777777777777777770000007777777770888008077777770888FF088
          07777708888FF888807777088888008880777708888FF08880777708888FF088
          80777708888FF08880777708888FF08880777770888FF8880777777708888880
          7777777770000007777777777777777777777777777777777777}
        OnClick = sbDEleteClick
      end
      object sbPrior: TSpeedButton
        Left = 373
        Top = 6
        Width = 51
        Height = 22
        Caption = 'Prior'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080
          6060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF6060609F2020804040FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6060609F2020FF000080
          4040404040404040404040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF4040409F2020FF0000FF00008020208040408040408040408040408080
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000BF0000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          200000DF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000BF00004040
          40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000DF0000FF0000FF000080
          2020602020400000400000400000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF200000DF0000FF0000804040404040FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000DF000060
          2020404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF200000400000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbPriorClick
      end
      object sbApply: TSpeedButton
        Left = 132
        Top = 6
        Width = 61
        Height = 22
        Caption = 'Apply'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202060606080
          8080808080808080202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF202020606060808080808080808080808080808080808080202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF20202060606080808080808060606040404040
          4040404040404040606060808080202020FFFFFFFFFFFFFFFFFF202020808080
          8080806060605050507070708080808080808080808080806060606060608080
          80202020FFFFFFFFFFFF808080606060404040808080C0C0C0B0B0B080808080
          8080808080808080808080606060606060808080202020FFFFFF202020606060
          B0B0B0B0B0B0C0C0C0B0B0B09090908080808080808080808080808080806060
          60606060808080202020404040808080B0B0B0B0B0B090909080808080808080
          8080606060606060808080808080808080606060606060808080202020808080
          80808080808080808080808060606020205F7F7F7F7F7F7F6060608080808080
          80808080606060202020FFFFFF2020208080808080806060605F2020BF00007F
          003F3F3F7FBFBFBFFFFFFF9F9F9F808080808080808080404040FFFFFFFFFFFF
          20202080808080808020205F7F3F3FBFBFBFEFEFEFDFDFDFDFDFDFEFEFEF9F9F
          9F808080606060202020FFFFFFFFFFFFFFFFFF202020808080808080BFBFBFDF
          DFDFDFDFDFDFDFDFEFEFEFDFDFDF7F7F7F202020000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF202020808080808080B0B0B0AFAFEF9F9FDF7F7F7F2020200000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202080808080
          8080707070202020000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF202020202020000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbApplyClick
      end
      object sbCancel: TSpeedButton
        Left = 194
        Top = 6
        Width = 70
        Height = 22
        Caption = 'Cancel'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
          0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF
          0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFF
          FFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFF0000000000FF0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00
          00000000000000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF00
          00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000FF000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FF0000FF0000FFFF
          FFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000
          00FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFF0000FF
          0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbCancelClick
      end
      object sbEdit: TSpeedButton
        Left = 265
        Top = 6
        Width = 48
        Height = 22
        Caption = 'Edit'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          000000000000000000000000000000000000000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808000808000808000808000808000
          8080008080008080008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          808080FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF0080800080800000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFC0C0C000FFFFC0
          C0C000FFFFC0C0C0008080008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          808080FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF0080800080800000
          00000000000000000000FFFFFFFFFFFF80808000808000808000808000808000
          8080008080008080000000008080000000808080808080000000FFFFFF808080
          008080008080008080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800000000000
          00FFFFFF808080000000808080008080FFFFFFC0C0C000808000808000808000
          8080008080008080008080008080000000FFFFFF808080000000FFFFFF008080
          C0C0C0FFFFFF008080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080
          80FFFFFF808080000000FFFFFFFFFFFF008080008080FFFFFFC0C0C0C0C0C0FF
          FFFFC0C0C0C0C0C0FFFFFFC0C0C0008080008080808080000000FFFFFFFFFFFF
          FFFFFF808080FFFFFF000080000080FFFFFF808000808000FFFFFF8000008000
          00FFFFFF808080000000FFFFFFFFFFFFFFFFFF808080FFFFFF0000FF000080FF
          FFFFFFFF00808000FFFFFFFF0000800000FFFFFF808080000000FFFFFFFFFFFF
          FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FFFFFFFFFFFFFFFFFF80808080000080000080000080
          0000800000800000000000000000000000000000808080000000FFFFFFFFFFFF
          FFFFFF808080800000800000800000800000800000800000C0C0C0000000C0C0
          C0000000808080000000FFFFFFFFFFFFFFFFFF80808080808080808080808080
          8080808080808080808080808080808080808080808080000000}
        OnClick = sbEditClick
      end
      object sbFirst: TSpeedButton
        Left = 324
        Top = 6
        Width = 49
        Height = 22
        Caption = 'First'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00000000FF0000FF0000FF00007F00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF0000FF0000FF
          00007F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00000000FF0000FF0000FF00007F00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFF00000000000000FF0000FF0000FF
          00003F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000003F00007F0000
          000000000000BF0000FF0000FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF000000
          00000000000000BF0000FF0000BF00007F0000BF0000FF0000FF0000FF0000BF
          00FFFFFFFFFFFFFFFFFFFFFFFF000000003F0000BF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          00BF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000BF00003F00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F0000FF0000FF0000FF0000
          FF00007F00007F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00BF00007F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F00FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbFirstClick
      end
      object sbNext: TSpeedButton
        Left = 424
        Top = 6
        Width = 48
        Height = 22
        Caption = 'Next'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF806060606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8040409F2020606060FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404040404040404040404040
          4040804040FF00009F2020606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF808080804040804040804040804040802020FF0000FF00009F20204040
          40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080BF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF404040BF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000DF00
          00200000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40000040000040000060
          2020802020FF0000FF0000DF0000200000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040804040FF0000DF0000200000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40
          4040602020DF0000200000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF400000200000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbNextClick
      end
      object sbLast: TSpeedButton
        Left = 472
        Top = 6
        Width = 49
        Height = 22
        Caption = 'Last'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F0000FF0000FF0000FF00000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          007F0000FF0000FF0000FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F0000FF0000FF0000FF00000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          003F0000FF0000FF0000FF00000000000000FFFFFFFFFFFF000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF0000FF0000FF0000BF0000
          0000000000007F00003F00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00BF0000FF0000FF0000FF0000BF00007F0000BF0000FF0000BF000000
          00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000BF00003F00000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF003F0000BF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000BF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F0000
          7F0000FF0000FF0000FF0000FF00003F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F0000BF00FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF003F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbLastClick
      end
      object sbRefresh: TSpeedButton
        Left = 534
        Top = 6
        Width = 65
        Height = 22
        Caption = 'Refresh'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFF000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF80808000FF0000FF0080808080808080808080808000
          0000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF808080C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0808080000000FFFFFF808080C0C0C0C0C0C00000
          00000000000000FFFFFFFFFFFF808080808080808080808080808080000000FF
          FFFFFFFFFF808080C0C0C0C0C0C0808080808080808080000000FFFFFF808080
          FFFF00FFFF00FFFF00808080000000FFFFFFFFFFFF808080808080808080FFFF
          FFFFFFFF808080000000FFFFFF808080FFFF00FFFF00FFFF00808080000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000FFFFFF808080
          808080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF000000000000000000FFFFFFFFFFFF80808000000080808000FF00
          00FF00808080808080808080808080000000FFFFFF808080C0C0C0C0C0C00000
          00000000808080000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808000
          0000FFFFFF808080C0C0C0C0C0C0808080808080808080FFFFFFFFFFFF808080
          808080808080808080808080000000FFFFFFFFFFFF808080808080808080FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFF00FFFF00FFFF00808080000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
          FFFF00FFFF00FFFF00808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080808080808080808080FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbRefreshClick
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 120
    Top = 40
    object miService: TMenuItem
      Caption = '&'#1057#1077#1088#1074#1080#1089
      object miConnect: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
        ShortCut = 112
        OnClick = miConnectClick
      end
      object miDisconnect: TMenuItem
        Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
        Enabled = False
        ShortCut = 123
        OnClick = miDisconnectClick
      end
      object N1: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 49235
        OnClick = miSaveClick
      end
      object miCancel: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ShortCut = 49242
        OnClick = miCancelClick
      end
    end
    object miSelectMode: TMenuItem
      Caption = #1055#1077#1088#1077#1093#1086#1076
      object miIzdatelstva: TMenuItem
        Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1072
        ShortCut = 49225
        OnClick = miIzdatelstvaClick
      end
      object miKnigi: TMenuItem
        Caption = #1050#1085#1080#1075#1080
        ShortCut = 49227
        OnClick = miKnigiClick
      end
      object miJanri: TMenuItem
        Caption = #1046#1072#1085#1088#1099
        ShortCut = 49226
        OnClick = miJanriClick
      end
      object miAvtori: TMenuItem
        Caption = #1040#1074#1090#1086#1088#1099
        ShortCut = 49217
        OnClick = miAvtoriClick
      end
      object miStrani: TMenuItem
        Caption = #1057#1090#1088#1072#1085#1099
        ShortCut = 49219
        OnClick = miStraniClick
      end
      object miVipusk: TMenuItem
        Caption = #1042#1099#1087#1091#1089#1082
        ShortCut = 49238
        OnClick = miVipuskClick
      end
    end
  end
  object pmManeger: TPopupMenu
    OnPopup = pmManegerPopup
    Left = 208
    Top = 128
    object miMode1: TMenuItem
      Caption = '<Mode1>'
      OnClick = miMode1Click
    end
    object miMode2: TMenuItem
      Caption = '<Mode2>'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miEdit: TMenuItem
      Caption = #1056#1077#1076#1072'&'#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 49221
      OnClick = miEditClick
    end
    object miDelete: TMenuItem
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100
      ShortCut = 16430
      OnClick = miDeleteClick
    end
    object miAdd: TMenuItem
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 118
      OnClick = miAddClick
    end
    object miRefresh: TMenuItem
      Caption = '&'#1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnClick = miRefreshClick
    end
  end
end
