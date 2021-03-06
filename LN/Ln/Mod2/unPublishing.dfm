inherited fmPublishing: TfmPublishing
  Left = 205
  Top = 195
  Width = 323
  Height = 230
  Caption = 'Publishing'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbNavigationBar: TToolBar
    Width = 315
    ButtonHeight = 23
    inherited sbAccept: TToolButton
      OnClick = sbAcceptClick
    end
    inherited sbCancel: TToolButton
      OnClick = sbCancelClick
    end
    inherited sbDelete: TToolButton
      OnClick = sbDeleteClick
    end
    inherited sbFirst: TToolButton
      OnClick = sbFirstClick
    end
    inherited sbNext: TToolButton
      OnClick = sbNextClick
    end
    inherited sbPrev: TToolButton
      OnClick = sbPrevClick
    end
    inherited sbLast: TToolButton
      OnClick = sbLastClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 184
    Width = 315
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object pnlMain: TPanel [2]
    Left = 0
    Top = 29
    Width = 315
    Height = 155
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 2
    object lbCodePublishing: TLabel
      Left = 8
      Top = 8
      Width = 114
      Height = 16
      Caption = 'Code Publishing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNamePublishing: TLabel
      Left = 8
      Top = 32
      Width = 118
      Height = 16
      Caption = 'Name Publishing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAddress: TLabel
      Left = 8
      Top = 56
      Width = 59
      Height = 16
      Caption = 'Address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTelephone: TLabel
      Left = 8
      Top = 80
      Width = 76
      Height = 16
      Caption = 'Telephone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEmail: TLabel
      Left = 8
      Top = 104
      Width = 45
      Height = 16
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMainEditor: TLabel
      Left = 8
      Top = 128
      Width = 79
      Height = 16
      Caption = 'Main Editor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeMainditor: TDBEdit
      Left = 128
      Top = 128
      Width = 121
      Height = 21
      DataField = 'MAIN_EDITOR'
      DataSource = dmBooks.dsPublishing
      TabOrder = 5
    end
    object dbeEMail: TDBEdit
      Left = 128
      Top = 104
      Width = 121
      Height = 21
      DataField = 'E_MAIL'
      DataSource = dmBooks.dsPublishing
      TabOrder = 4
    end
    object dbeTelephone: TDBEdit
      Left = 128
      Top = 80
      Width = 121
      Height = 21
      DataField = 'TELEPHONE'
      DataSource = dmBooks.dsPublishing
      TabOrder = 3
    end
    object dbeAddress: TDBEdit
      Left = 72
      Top = 56
      Width = 177
      Height = 21
      DataField = 'ADDRESS'
      DataSource = dmBooks.dsPublishing
      TabOrder = 2
    end
    object dbeNamePublishing: TDBEdit
      Left = 128
      Top = 32
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = dmBooks.dsPublishing
      TabOrder = 1
    end
    object dbeCodePublishing: TDBEdit
      Left = 168
      Top = 8
      Width = 81
      Height = 21
      DataField = 'CODE_PUBLISHING'
      DataSource = dmBooks.dsPublishing
      TabOrder = 0
    end
    object bRelese: TBitBtn
      Left = 256
      Top = 8
      Width = 43
      Height = 137
      Caption = 'Relese'
      TabOrder = 6
      OnClick = bReleseClick
    end
  end
  inherited ilNavigationBar: TImageList
    Left = 336
    Top = 16
  end
end
