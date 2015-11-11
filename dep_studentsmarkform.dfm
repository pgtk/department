object StudentsMarkForm: TStudentsMarkForm
  Left = 260
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Students'
  ClientHeight = 386
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    380
    386)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 242
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
  object Label2: TLabel
    Left = 1
    Top = 269
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
  object Label3: TLabel
    Left = 1
    Top = 256
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
  object Label4: TLabel
    Left = 1
    Top = 282
    Width = 140
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '13 - '#1047#1072#1095#1077#1090' ('#1073#1077#1079' '#1086#1094#1077#1085#1082#1080')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OkBtn: TButton
    Left = 109
    Top = 355
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 189
    Top = 355
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object StudGrid: TStringGrid
    Left = 0
    Top = 0
    Width = 380
    Height = 235
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 2
    DefaultColWidth = 150
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    TabOrder = 2
    ColWidths = (
      294
      63)
  end
  object MarkGroupBox: TGroupBox
    Left = 2
    Top = 298
    Width = 377
    Height = 50
    Anchors = [akLeft, akBottom]
    Caption = #1042#1099#1089#1090#1072#1074#1080#1090#1100' '#1074#1089#1077#1084
    TabOrder = 3
    DesignSize = (
      377
      50)
    object NABtn: TButton
      Left = 274
      Top = 14
      Width = 97
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1053#1077' '#1072#1090#1090#1077#1089#1090#1086#1074#1072#1085#1099
      TabOrder = 0
      OnClick = NABtnClick
    end
    object Mark3Btn: TButton
      Left = 6
      Top = 16
      Width = 75
      Height = 25
      Caption = '3'
      TabOrder = 1
      OnClick = Mark3BtnClick
    end
    object Mark4Btn: TButton
      Left = 86
      Top = 16
      Width = 75
      Height = 25
      Caption = '4'
      TabOrder = 2
      OnClick = Mark4BtnClick
    end
    object Mark5Btn: TButton
      Left = 166
      Top = 16
      Width = 75
      Height = 25
      Caption = '5'
      TabOrder = 3
      OnClick = Mark5BtnClick
    end
  end
end
