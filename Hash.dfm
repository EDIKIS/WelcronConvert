object Hash_frm: THash_frm
  Left = 473
  Top = 233
  Width = 394
  Height = 563
  Caption = 'Hash_frm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 12
    Caption = #50896#48376#47928#51088#50676
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 66
    Height = 12
    Caption = 'SHA1 '#50516#54840#54868
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 60
    Height = 12
    Caption = 'MD5 '#50516#54840#54868
  end
  object Edt_Original: TEdit
    Left = 16
    Top = 32
    Width = 345
    Height = 20
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
  end
  object Edt_SHA1: TEdit
    Left = 16
    Top = 80
    Width = 345
    Height = 20
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edt_MD5: TEdit
    Left = 16
    Top = 128
    Width = 345
    Height = 20
    ImeName = 'Microsoft IME 2010'
    TabOrder = 3
  end
  object SHA1: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    Left = 160
    Top = 8
  end
  object MD5: TDCP_md5
    Id = 16
    Algorithm = 'MD5'
    HashSize = 128
    Left = 192
    Top = 8
  end
end
