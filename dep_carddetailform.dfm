object CardDetailForm: TCardDetailForm
  Left = 501
  Top = 330
  Width = 434
  Height = 467
  BorderIcons = []
  Caption = #1044#1077#1090#1072#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    426
    440)
  PixelsPerInch = 96
  TextHeight = 13
  object Label18: TLabel
    Left = 9
    Top = 267
    Width = 135
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1054#1073#1097#1072#1103' '#1086#1094#1077#1085#1082#1072' '#1079#1072' '#1087#1088#1077#1076#1084#1077#1090
  end
  object Label1: TLabel
    Left = 9
    Top = 358
    Width = 272
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '10 - '#1053#1077' '#1072#1090#1090#1077#1089#1090#1086#1074#1072#1085' '#1087#1086' '#1091#1074#1072#1078#1080#1090#1077#1083#1100#1085#1086#1081' '#1087#1088#1080#1095#1080#1085#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 9
    Top = 372
    Width = 371
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '11 - '#1054#1089#1074#1086#1073#1086#1078#1076#1077#1085' '#1086#1090' '#1076#1072#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1072' ('#1092#1080#1079#1080#1095#1077#1089#1082#1072#1103' '#1082#1091#1083#1100#1090#1091#1088#1072')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 385
    Width = 313
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '12 - '#1053#1077' '#1080#1079#1091#1095#1072#1083' '#1076#1072#1085#1085#1099#1081' '#1087#1088#1077#1076#1084#1077#1090' ('#1080#1085#1086#1089#1090#1088#1072#1085#1085#1099#1081' '#1103#1079#1099#1082')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 292
    Width = 161
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089#1086#1074
  end
  object Label5: TLabel
    Left = 8
    Top = 316
    Width = 143
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1040#1091#1076#1080#1090#1086#1088#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089#1086#1074
  end
  object Label6: TLabel
    Left = 8
    Top = 340
    Width = 173
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1053#1086#1084#1077#1088' '#1087#1088#1077#1076#1084#1077#1090#1072' '#1074' '#1091#1095#1077#1073#1085#1086#1084' '#1087#1083#1072#1085#1077
  end
  object OkBtn: TButton
    Left = 144
    Top = 407
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 224
    Top = 407
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object Sem8GroupBox: TGroupBox
    Left = 0
    Top = 0
    Width = 426
    Height = 217
    Align = alTop
    Caption = #1057#1077#1084#1077#1089#1090#1088#1086#1074#1099#1077' '#1086#1094#1077#1085#1082#1080
    TabOrder = 2
    object Memo: TMemo
      Left = 2
      Top = 15
      Width = 422
      Height = 200
      Align = alClient
      Enabled = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object MarkEdit: TEdit
    Left = 216
    Top = 263
    Width = 56
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 3
  end
  object HoursEdit: TEdit
    Left = 216
    Top = 287
    Width = 56
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 4
  end
  object AHoursEdit: TEdit
    Left = 216
    Top = 311
    Width = 56
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 5
  end
  object NumberEdit: TEdit
    Left = 216
    Top = 335
    Width = 56
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 6
  end
  object otherSchoolCheckBox: TCheckBox
    Left = 8
    Top = 224
    Width = 417
    Height = 17
    Hint = 
      #1042#1082#1083#1102#1095#1080#1090#1077' '#1101#1090#1091' '#1075#1072#1083#1086#1095#1082#1091' '#1077#1089#1083#1080' '#1101#1090#1072' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072' '#1074#1079#1103#1090#1072' '#1080#1079' '#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1086#1081' ' +
      #1089#1087#1088#1072#1074#1082#1080
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072' '#1080#1079#1091#1095#1072#1083#1072#1089#1100' '#1074' '#1076#1088#1091#1075#1086#1084' '#1091#1095#1077#1073#1085#1086#1084' '#1079#1072#1074#1077#1076#1077#1085#1080#1080
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object fakultativeCheckBox: TCheckBox
    Left = 8
    Top = 240
    Width = 417
    Height = 17
    Hint = 
      #1042#1082#1083#1102#1095#1080#1090#1077' '#1101#1090#1091' '#1075#1072#1083#1086#1095#1082#1091' '#1077#1089#1083#1080' '#1101#1090#1072' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072' '#1074#1079#1103#1090#1072' '#1080#1079' '#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1086#1081' ' +
      #1089#1087#1088#1072#1074#1082#1080
    Caption = #1060#1072#1082#1091#1083#1100#1090#1072#1090#1080#1074
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
end
