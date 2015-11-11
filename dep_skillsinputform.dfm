object SkillsForm: TSkillsForm
  Left = 758
  Top = 428
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1059#1088#1086#1074#1077#1085#1100' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
  ClientHeight = 120
  ClientWidth = 220
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
  object Label2: TLabel
    Left = 7
    Top = 12
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object Label3: TLabel
    Left = 8
    Top = 37
    Width = 118
    Height = 13
    Caption = #1055#1088#1086#1094#1077#1085#1090' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
  end
  object MounthComboBox: TComboBox
    Left = 72
    Top = 7
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = MounthComboBoxChange
    Items.Strings = (
      #1071#1085#1074#1072#1088#1100
      #1060#1077#1074#1088#1072#1083#1100
      #1052#1072#1088#1090
      #1040#1087#1088#1077#1083#1100
      #1052#1072#1081
      #1048#1102#1085#1100
      #1048#1102#1083#1100
      #1040#1074#1075#1091#1089#1090
      #1057#1077#1085#1090#1103#1073#1088#1100
      #1054#1082#1090#1103#1073#1088#1100
      #1053#1086#1103#1073#1088#1100
      #1044#1077#1082#1072#1073#1088#1100)
  end
  object OkBtn: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 112
    Top = 88
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object LevelEdit: TMaskEdit
    Left = 153
    Top = 32
    Width = 64
    Height = 21
    EditMask = '900.99;1;_'
    MaxLength = 6
    TabOrder = 3
    Text = '   .  '
  end
end
