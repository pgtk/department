object DiplomeEditForm: TDiplomeEditForm
  Left = 903
  Top = 242
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1050#1086#1084#1080#1089#1089#1080#1103
  ClientHeight = 350
  ClientWidth = 347
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
    347
    350)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 20
    Width = 112
    Height = 13
    Caption = #1044#1072#1090#1072' '#1089#1073#1086#1088#1072' '#1082#1086#1084#1080#1089#1089#1080#1080
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 67
    Height = 13
    Caption = #1057#1086#1073#1088#1072#1085#1072' '#1076#1083#1103':'
  end
  object OkBtn: TButton
    Left = 88
    Top = 314
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 168
    Top = 314
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object PDFNameEdit: TLabeledEdit
    Left = 8
    Top = 101
    Width = 97
    Height = 21
    EditLabel.Width = 93
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' ('#1060')'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
    OnChange = PDFNameEditChange
  end
  object SekretarEdit: TLabeledEdit
    Left = 8
    Top = 193
    Width = 329
    Height = 21
    EditLabel.Width = 54
    EditLabel.Height = 13
    EditLabel.Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 3
    OnChange = SekretarEditChange
  end
  object DateEdit: TDateTimePicker
    Left = 128
    Top = 13
    Width = 89
    Height = 21
    CalAlignment = dtaLeft
    Date = 38799.5451944444
    Time = 38799.5451944444
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object MembersEdit: TLabeledEdit
    Left = 8
    Top = 149
    Width = 329
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 5
    OnChange = PDFNameEditChange
  end
  object TypeComboBox: TComboBox
    Left = 8
    Top = 56
    Width = 329
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object ProjectGroup: TRadioGroup
    Left = 8
    Top = 224
    Width = 329
    Height = 79
    Caption = #1050#1086#1084#1080#1089#1089#1080#1103' '#1089#1086#1073#1080#1088#1072#1077#1090#1089#1103' '#1087#1086' '#1087#1086#1074#1086#1076#1091':'
    ItemIndex = 0
    Items.Strings = (
      #1057#1076#1072#1095#1080' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
      #1047#1072#1097#1080#1090#1099' '#1076#1080#1087#1083#1086#1084#1085#1086#1075#1086' '#1087#1088#1086#1077#1082#1090#1072' ('#1088#1072#1073#1086#1090#1099')')
    TabOrder = 7
  end
  object PDMNameEdit: TLabeledEdit
    Left = 112
    Top = 101
    Width = 97
    Height = 21
    EditLabel.Width = 90
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' ('#1048')'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 8
    OnChange = PDFNameEditChange
  end
  object PDLNameEdit: TLabeledEdit
    Left = 216
    Top = 101
    Width = 97
    Height = 21
    EditLabel.Width = 90
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' ('#1054')'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 9
    OnChange = PDFNameEditChange
  end
end
