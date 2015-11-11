object SpecForm: TSpecForm
  Left = 1032
  Top = 161
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  ClientHeight = 244
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    386
    244)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 156
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 164
    Width = 79
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
  end
  object Label3: TLabel
    Left = 8
    Top = 90
    Width = 75
    Height = 13
    Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
  end
  object Label5: TLabel
    Left = 9
    Top = 19
    Width = 29
    Height = 13
    Caption = #1064#1080#1092#1088
  end
  object Label4: TLabel
    Left = 184
    Top = 19
    Width = 93
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
  end
  object NameEdit: TEdit
    Left = 8
    Top = 64
    Width = 369
    Height = 21
    TabOrder = 1
  end
  object SpecializationEdit: TEdit
    Left = 8
    Top = 180
    Width = 369
    Height = 21
    TabOrder = 3
    Text = #1053#1077' '#1087#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1085#1072
  end
  object KvalificationEdit: TEdit
    Left = 8
    Top = 106
    Width = 369
    Height = 21
    TabOrder = 2
  end
  object OkBtn: TButton
    Left = 224
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object CancelBtn: TButton
    Left = 304
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 5
  end
  object KeyEdit: TEdit
    Left = 48
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object ShortNameEdit: TEdit
    Left = 288
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 6
  end
  object SpecCheckBox: TCheckBox
    Left = 8
    Top = 136
    Width = 185
    Height = 17
    Caption = #1055#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1085#1072' '#1089#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = SpecCheckBoxClick
  end
  object ActCheckBox: TCheckBox
    Left = 224
    Top = 136
    Width = 153
    Height = 17
    Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1089#1103' '#1085#1072#1073#1086#1088
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
end
