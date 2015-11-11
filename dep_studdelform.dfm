object DelStudentForm: TDelStudentForm
  Left = 538
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 251
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    400
    251)
  PixelsPerInch = 96
  TextHeight = 13
  object OkBtn: TButton
    Left = 136
    Top = 216
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 216
    Top = 216
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object AdvGroupBox: TGroupBox
    Left = 0
    Top = 96
    Width = 400
    Height = 112
    Align = alTop
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
    TabOrder = 2
    object NumLabel: TLabel
      Left = 229
      Top = 84
      Width = 79
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
    end
    object ReasonLabel: TLabel
      Left = 8
      Top = 20
      Width = 43
      Height = 13
      Caption = #1055#1088#1080#1095#1080#1085#1072
    end
    object Label1: TLabel
      Left = 8
      Top = 84
      Width = 71
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
    end
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 30
      Height = 13
      Caption = #1058#1077#1082#1089#1090
    end
    object NumEdit: TEdit
      Left = 312
      Top = 78
      Width = 83
      Height = 21
      TabOrder = 0
    end
    object ReasonEdit: TEdit
      Left = 5
      Top = 54
      Width = 390
      Height = 21
      TabOrder = 1
    end
    object DateEdit: TDateTimePicker
      Left = 86
      Top = 78
      Width = 137
      Height = 21
      CalAlignment = dtaLeft
      Date = 38706.6576879861
      Time = 38706.6576879861
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
    object ReasonComboBox: TComboBox
      Left = 56
      Top = 16
      Width = 339
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ReasonComboBoxChange
    end
  end
  object ActionComboBox: TRadioGroup
    Left = 0
    Top = 0
    Width = 400
    Height = 96
    Align = alTop
    Caption = #1057#1090#1091#1076#1077#1085#1090#1072' '#1089#1083#1077#1076#1091#1077#1090
    ItemIndex = 0
    Items.Strings = (
      #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1087#1091#1089#1082
      #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1085#1072' '#1087#1086#1074#1090#1086#1088#1085#1099#1081' '#1082#1091#1088#1089' '#1086#1073#1091#1095#1077#1085#1080#1103
      #1059#1076#1072#1083#1080#1090#1100', '#1082#1072#1082' '#1089#1086#1079#1076#1072#1085#1085#1086#1075#1086' '#1087#1086' '#1086#1096#1080#1073#1082#1077
      #1054#1090#1095#1080#1089#1083#1080#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1087#1088#1080#1082#1072#1079#1072)
    TabOrder = 3
    OnClick = ActionComboBoxClick
  end
end
