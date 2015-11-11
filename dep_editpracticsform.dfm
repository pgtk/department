object EditPracticsForm: TEditPracticsForm
  Left = 224
  Top = 496
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1072#1082#1090#1080#1082#1072
  ClientHeight = 215
  ClientWidth = 291
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
    291
    215)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 3
    Width = 100
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1072#1082#1090#1080#1082#1080
  end
  object Label3: TLabel
    Left = 5
    Top = 47
    Width = 149
    Height = 13
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' ('#1085#1077#1076#1077#1083#1100')'
  end
  object Label4: TLabel
    Left = 56
    Top = 70
    Width = 99
    Height = 13
    Caption = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
  end
  object TitleEdit: TEdit
    Left = 0
    Top = 19
    Width = 289
    Height = 21
    TabOrder = 0
    OnChange = TitleEditChange
  end
  object OkBtn: TButton
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 144
    Top = 184
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object LengthEdit: TEdit
    Left = 168
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object TeachersGroupBox: TGroupBox
    Left = 0
    Top = 88
    Width = 291
    Height = 92
    Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1080
    TabOrder = 4
    object TeachersEdit: TEdit
      Left = 2
      Top = 15
      Width = 285
      Height = 21
      TabOrder = 0
      OnChange = TeachersEditChange
    end
    object Memo1: TMemo
      Left = 2
      Top = 39
      Width = 285
      Height = 48
      Enabled = False
      Lines.Strings = (
        #1042#1074#1077#1076#1080#1090#1077' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1077#1081' '#1074' '#1087#1086#1083#1077', '#1088#1072#1079#1076#1077#1083#1103#1103' '#1080#1093' '#1079#1072#1087#1103#1090#1086#1081', '
        #1085#1072#1087#1088#1080#1084#1077#1088':'
        #1048#1074#1072#1085#1086#1074' '#1040'. '#1045'., '#1055#1077#1090#1088#1086#1074' '#1053'. '#1055'., '#1057#1080#1076#1086#1088#1086#1074' '#1040'. '#1048'.')
      ReadOnly = True
      TabOrder = 1
    end
  end
  object NumberEdit: TSpinEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
end
