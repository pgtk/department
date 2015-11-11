object WorkForm: TWorkForm
  Left = 648
  Top = 519
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
  ClientHeight = 175
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object FNameEdit: TLabeledEdit
    Left = 8
    Top = 24
    Width = 233
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 0
  end
  object MNameEdit: TLabeledEdit
    Left = 8
    Top = 64
    Width = 233
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1084#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 1
  end
  object LNameEdit: TLabeledEdit
    Left = 8
    Top = 104
    Width = 233
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
  end
  object OkBtn: TButton
    Left = 56
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object CancelBtn: TButton
    Left = 136
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
end
