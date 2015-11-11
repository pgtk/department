object AddSubjectForm: TAddSubjectForm
  Left = 1153
  Top = 192
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1076#1084#1077#1090
  ClientHeight = 326
  ClientWidth = 288
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
    288
    326)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 122
    Height = 13
    Caption = #1044#1072#1090#1072' '#1101#1082#1079#1072#1084#1077#1085#1072' ('#1079#1072#1095#1077#1090#1072')'
  end
  object Label2: TLabel
    Left = 8
    Top = 119
    Width = 79
    Height = 13
    Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 8
    Top = 51
    Width = 140
    Height = 13
    Caption = #1057#1077#1084#1077#1089#1090#1088#1086#1074#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
  end
  object Label6: TLabel
    Left = 8
    Top = 75
    Width = 131
    Height = 13
    Caption = #1040#1091#1076#1080#1090#1086#1088#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
  end
  object Label7: TLabel
    Left = 8
    Top = 99
    Width = 152
    Height = 13
    Caption = #1057#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1072#1103' '#1088#1072#1073#1086#1090#1072', '#1095#1072#1089
  end
  object DateEdit: TDateTimePicker
    Left = 192
    Top = 20
    Width = 89
    Height = 21
    CalAlignment = dtaLeft
    Date = 38727.6051436227
    Time = 38727.6051436227
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object TeacherEdit: TEdit
    Left = 8
    Top = 133
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object LookupBtn: TButton
    Left = 247
    Top = 134
    Width = 34
    Height = 21
    Caption = '...'
    TabOrder = 4
    OnClick = LookupBtnClick
  end
  object OkBtn: TButton
    Left = 72
    Top = 294
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 6
  end
  object CancelBtn: TButton
    Left = 152
    Top = 294
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 7
  end
  object HoursEdit: TSpinEdit
    Left = 192
    Top = 43
    Width = 89
    Height = 22
    MaxValue = 999
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 184
    Width = 273
    Height = 99
    Caption = #1050#1091#1088#1089#1086#1074#1086#1081' '#1087#1088#1086#1077#1082#1090
    TabOrder = 5
    object Label5: TLabel
      Left = 9
      Top = 65
      Width = 115
      Height = 13
      Caption = #1059#1095#1077#1073#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
    end
    object Label4: TLabel
      Left = 8
      Top = 39
      Width = 157
      Height = 13
      Caption = #1044#1072#1090#1072' '#1079#1076#1072#1095#1080' '#1082#1091#1088#1089#1086#1074#1086#1075#1086' '#1087#1088#1086#1077#1082#1090#1072
    end
    object CwHoursEdit: TSpinEdit
      Left = 175
      Top = 57
      Width = 90
      Height = 22
      MaxValue = 999
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object CwDateEdit: TDateTimePicker
      Left = 175
      Top = 34
      Width = 90
      Height = 21
      CalAlignment = dtaLeft
      Date = 38821.6010416782
      Time = 38821.6010416782
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object CwCheckBox: TCheckBox
      Left = 4
      Top = 15
      Width = 253
      Height = 17
      Caption = #1050#1091#1088#1089#1086#1074#1086#1081' '#1087#1088#1086#1077#1082#1090' '#1074' '#1101#1090#1086#1084' '#1089#1077#1084#1077#1089#1090#1088#1077
      TabOrder = 0
      OnClick = CwCheckBoxClick
    end
  end
  object AHoursEdit: TSpinEdit
    Left = 191
    Top = 67
    Width = 89
    Height = 22
    MaxValue = 999
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object HomHoursEdit: TSpinEdit
    Left = 191
    Top = 91
    Width = 89
    Height = 22
    MaxValue = 999
    MinValue = 1
    TabOrder = 8
    Value = 1
  end
  object hasMarkCheckBox: TCheckBox
    Left = 8
    Top = 160
    Width = 273
    Height = 17
    Caption = #1055#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1085#1072' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1103' '#1087#1086' '#1080#1090#1086#1075#1072#1084' '#1089#1077#1084#1077#1089#1090#1088#1072
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
end
