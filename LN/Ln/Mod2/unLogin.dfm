object fmLogin: TfmLogin
  Left = 188
  Top = 168
  Width = 305
  Height = 143
  Caption = 'Login'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 116
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 125
      Height = 13
      Caption = 'Please Enter User Name'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 121
      Height = 13
      Caption = 'Please Enter Password'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 63
      Height = 13
      Caption = 'Path to DB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtName: TEdit
      Left = 136
      Top = 8
      Width = 153
      Height = 21
      TabOrder = 0
      Text = 'admin'
    end
    object edtPassWord: TEdit
      Left = 136
      Top = 32
      Width = 153
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = '1'
    end
    object btnOk: TButton
      Left = 8
      Top = 80
      Width = 161
      Height = 25
      Caption = 'Enter'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
    end
    object Cencel: TButton
      Left = 176
      Top = 80
      Width = 113
      Height = 25
      Caption = 'Cencel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CencelClick
    end
    object edtPAth: TEdit
      Left = 136
      Top = 56
      Width = 153
      Height = 21
      TabOrder = 4
      Text = 'i:\roi\db.gdb'
    end
  end
end
