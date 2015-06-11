object FLogin: TFLogin
  Left = 165
  Top = 193
  Width = 291
  Height = 201
  Caption = 'FLogin'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblPassword: TLabel
    Left = 16
    Top = 56
    Width = 76
    Height = 16
    Caption = 'Password'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblName: TLabel
    Left = 16
    Top = 16
    Width = 86
    Height = 16
    Caption = 'User Name'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object EdtName: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'SYSDBA'
  end
  object EdtPassword: TEdit
    Left = 104
    Top = 56
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'masterkey'
  end
  object BtnOK: TButton
    Left = 40
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BtnOK'
    Default = True
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtnCancel: TButton
    Left = 144
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BtnCancel'
    TabOrder = 3
    OnClick = BtnCancelClick
  end
end
