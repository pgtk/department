object ComboSelectForm: TComboSelectForm
  Left = 192
  Top = 107
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1077#1084#1077#1089#1090#1088
  ClientHeight = 140
  ClientWidth = 252
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
    252
    140)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 44
    Height = 13
    Caption = #1057#1077#1084#1077#1089#1090#1088
  end
  object OkBtn: TButton
    Left = 40
    Top = 108
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object SelectComboBox: TComboBox
    Left = 8
    Top = 56
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnChange = SelectComboBoxChange
  end
  object CancelBtn: TButton
    Left = 120
    Top = 108
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object AutoFillCheckBox: TCheckBox
    Left = 8
    Top = 87
    Width = 233
    Height = 17
    Caption = #1040#1074#1090#1086#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
    TabOrder = 3
    Visible = False
  end
end
