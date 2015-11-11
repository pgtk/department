object SemesterForm: TSemesterForm
  Left = 192
  Top = 107
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1077#1084#1077#1089#1090#1088
  ClientHeight = 169
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    316
    169)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 162
    Top = 109
    Width = 89
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1077#1084#1077#1089#1090#1088#1072':'
  end
  object Label8: TLabel
    Left = 1
    Top = 109
    Width = 99
    Height = 13
    Caption = #1053#1077#1076#1077#1083#1100' '#1074' '#1089#1077#1084#1077#1089#1090#1088#1077
  end
  object Label9: TLabel
    Left = 1
    Top = 138
    Width = 105
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1053#1077#1076#1077#1083#1100#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072
  end
  object OkBtn: TButton
    Left = 172
    Top = 133
    Width = 68
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 244
    Top = 133
    Width = 70
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object SNumEdit: TSpinEdit
    Left = 264
    Top = 104
    Width = 49
    Height = 22
    MaxValue = 10
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object BGroupBox: TGroupBox
    Left = 0
    Top = 0
    Width = 157
    Height = 97
    Caption = #1053#1072#1095#1072#1083#1086
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 79
      Height = 13
      Caption = #1053#1077#1076#1077#1083#1103' '#1084#1077#1089#1103#1094#1072
    end
    object Label3: TLabel
      Left = 8
      Top = 18
      Width = 33
      Height = 13
      Caption = #1052#1077#1089#1103#1094
    end
    object Label4: TLabel
      Left = 8
      Top = 66
      Width = 18
      Height = 13
      Caption = #1043#1086#1076
    end
    object BWeekEdit: TSpinEdit
      Left = 104
      Top = 39
      Width = 49
      Height = 22
      MaxValue = 5
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = CountWeeks
    end
    object BYearEdit: TSpinEdit
      Left = 104
      Top = 63
      Width = 49
      Height = 22
      MaxValue = 2090
      MinValue = 1990
      TabOrder = 1
      Value = 1990
      OnChange = CountWeeks
    end
    object BMounthEdit: TComboBox
      Left = 48
      Top = 16
      Width = 106
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = CountWeeks
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
  end
  object EGroupBox: TGroupBox
    Left = 159
    Top = 0
    Width = 157
    Height = 97
    Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
    TabOrder = 4
    object Label5: TLabel
      Left = 8
      Top = 42
      Width = 79
      Height = 13
      Caption = #1053#1077#1076#1077#1083#1103' '#1084#1077#1089#1103#1094#1072
    end
    object Label6: TLabel
      Left = 8
      Top = 18
      Width = 33
      Height = 13
      Caption = #1052#1077#1089#1103#1094
    end
    object Label7: TLabel
      Left = 8
      Top = 66
      Width = 18
      Height = 13
      Caption = #1043#1086#1076
    end
    object EWeekEdit: TSpinEdit
      Left = 104
      Top = 39
      Width = 49
      Height = 22
      MaxValue = 5
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = CountWeeks
    end
    object EYearEdit: TSpinEdit
      Left = 104
      Top = 63
      Width = 49
      Height = 22
      MaxValue = 2090
      MinValue = 1990
      TabOrder = 1
      Value = 1990
      OnChange = CountWeeks
    end
    object EMounthEdit: TComboBox
      Left = 48
      Top = 16
      Width = 106
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = CountWeeks
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
  end
  object WeekEdit: TSpinEdit
    Left = 104
    Top = 104
    Width = 49
    Height = 22
    MaxValue = 1000
    MinValue = 1
    TabOrder = 5
    Value = 1
  end
  object WeekWorkEdit: TSpinEdit
    Left = 112
    Top = 133
    Width = 55
    Height = 22
    Anchors = [akLeft, akBottom]
    MaxValue = 1000
    MinValue = 1
    TabOrder = 6
    Value = 1
  end
end
