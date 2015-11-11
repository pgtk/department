object SelectMounthForm: TSelectMounthForm
  Left = 949
  Top = 317
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091
  ClientHeight = 143
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    213
    143)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object Label2: TLabel
    Left = 144
    Top = 16
    Width = 18
    Height = 13
    Caption = #1043#1086#1076
  end
  object MounthComboBox: TComboBox
    Left = 8
    Top = 32
    Width = 129
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
  object YearEdit: TSpinEdit
    Left = 144
    Top = 32
    Width = 57
    Height = 22
    MaxValue = 2090
    MinValue = 1990
    TabOrder = 1
    Value = 1990
  end
  object OkBtn: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 108
    Top = 112
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object AutofillCheckBox: TCheckBox
    Left = 8
    Top = 64
    Width = 193
    Height = 17
    Caption = #1040#1074#1090#1086#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
    TabOrder = 4
    Visible = False
  end
  object GroupCheckBox: TCheckBox
    Left = 8
    Top = 88
    Width = 201
    Height = 17
    Caption = #1055#1077#1095#1072#1090#1100' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081' '#1076#1083#1103' '#1074#1089#1077#1093' '#1075#1088#1091#1087#1087
    TabOrder = 5
  end
end
