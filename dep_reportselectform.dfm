object ReportSelectForm: TReportSelectForm
  Left = 837
  Top = 216
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1080#1087' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 112
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    336
    112)
  PixelsPerInch = 96
  TextHeight = 13
  object ParamRadioGroup: TRadioGroup
    Left = 0
    Top = 0
    Width = 336
    Height = 78
    Align = alTop
    Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1080
    Items.Strings = (
      #1054#1090#1095#1077#1090' '#1079#1072' '#1087#1077#1088#1074#1099#1081' '#1089#1077#1084#1077#1089#1090#1088' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1075#1086#1076#1072
      #1054#1090#1095#1077#1090' '#1079#1072' '#1074#1077#1089#1100' '#1091#1095#1077#1073#1085#1099#1081' '#1075#1086#1076)
    TabOrder = 0
  end
  object OkBtn: TButton
    Left = 104
    Top = 82
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 184
    Top = 82
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
