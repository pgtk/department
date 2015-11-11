object AcademDetailsForm: TAcademDetailsForm
  Left = 586
  Top = 340
  Width = 310
  Height = 515
  Caption = #1044#1077#1090#1072#1083#1080
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
    302
    488)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 66
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 86
    Height = 13
    Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 82
    Height = 13
    Caption = #1053#1086#1084#1077#1088'  '#1089#1087#1088#1072#1074#1082#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 126
    Height = 13
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object Label5: TLabel
    Left = 8
    Top = 112
    Width = 38
    Height = 13
    Caption = #1055#1088#1080#1082#1072#1079
  end
  object Label6: TLabel
    Left = 8
    Top = 153
    Width = 104
    Height = 13
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
  end
  object GetReasonLabel: TLabel
    Left = 8
    Top = 409
    Width = 187
    Height = 13
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1087#1086#1074#1090#1086#1088#1085#1086#1081' '#1074#1099#1076#1072#1095#1080' '#1089#1087#1088#1072#1074#1082#1080':'
  end
  object Label10: TLabel
    Left = 8
    Top = 136
    Width = 71
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
  end
  object OkBtn: TButton
    Left = 8
    Top = 459
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 9
  end
  object CancelBtn: TButton
    Left = 214
    Top = 459
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 10
  end
  object FormComboBox: TComboBox
    Left = 152
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = #1086#1095#1085#1072#1103
    Items.Strings = (
      #1086#1095#1085#1072#1103
      #1079#1072#1086#1095#1085#1072#1103)
  end
  object GetDatePicker: TDateTimePicker
    Left = 152
    Top = 8
    Width = 145
    Height = 21
    CalAlignment = dtaLeft
    Date = 39154.5549329051
    Time = 39154.5549329051
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object NumberEdit: TEdit
    Left = 152
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object RegNumberEdit: TEdit
    Left = 152
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object ReasonMemo: TMemo
    Left = 8
    Top = 169
    Width = 289
    Height = 89
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 265
    Width = 289
    Height = 137
    Caption = #1054#1073#1091#1095#1072#1083#1089#1103'('#1083#1072#1089#1100'):'
    TabOrder = 7
    object Label7: TLabel
      Left = 8
      Top = 19
      Width = 6
      Height = 13
      Caption = #1089
    end
    object Label8: TLabel
      Left = 116
      Top = 20
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object Label9: TLabel
      Left = 232
      Top = 21
      Width = 6
      Height = 13
      Caption = #1074
    end
    object StartDatePicker: TDateTimePicker
      Left = 18
      Top = 16
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 39154.5584924769
      Time = 39154.5584924769
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object StopDatePicker: TDateTimePicker
      Left = 136
      Top = 16
      Width = 93
      Height = 21
      CalAlignment = dtaLeft
      Date = 39154.5589483796
      Time = 39154.5589483796
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object PlaceMemo: TMemo
      Left = 5
      Top = 40
      Width = 276
      Height = 91
      TabOrder = 2
    end
  end
  object CmdEdit: TEdit
    Left = 152
    Top = 104
    Width = 144
    Height = 21
    TabOrder = 4
  end
  object GetReasonComboBox: TComboBox
    Left = 8
    Top = 425
    Width = 289
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = #1041#1083#1072#1085#1082' '#1080#1089#1087#1086#1088#1095#1077#1085
    Items.Strings = (
      #1041#1083#1072#1085#1082' '#1080#1089#1087#1086#1088#1095#1077#1085
      #1041#1083#1072#1085#1082' '#1091#1090#1077#1088#1103#1085)
  end
  object CmdDateEdit: TDateTimePicker
    Left = 152
    Top = 128
    Width = 144
    Height = 21
    CalAlignment = dtaLeft
    Date = 39162.4032868519
    Time = 39162.4032868519
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
    OnChange = CmdDateEditChange
  end
end
