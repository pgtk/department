object CustomLookupForm: TCustomLookupForm
  Left = 433
  Top = 42
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  ClientHeight = 413
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox: TGroupBox
    Left = 0
    Top = 0
    Width = 347
    Height = 377
    Align = alTop
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1075#1088#1091#1087#1087#1091' '#1089#1090#1091#1076#1077#1085#1090#1086#1074':'
    TabOrder = 0
    object ListBox: TCheckListBox
      Left = 2
      Top = 15
      Width = 343
      Height = 360
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBoxClick
    end
  end
  object OkBtn: TButton
    Left = 96
    Top = 384
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 176
    Top = 384
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
