object StudMissForm: TStudMissForm
  Left = 555
  Top = 561
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  ClientHeight = 301
  ClientWidth = 424
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
    424
    301)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 264
    Width = 38
    Height = 13
    Caption = #1053#1077#1076#1077#1083#1103
  end
  object StudGrid: TStringGrid
    Left = 0
    Top = 0
    Width = 424
    Height = 257
    Align = alTop
    ColCount = 3
    DefaultColWidth = 200
    DefaultRowHeight = 15
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColMoving, goEditing, goAlwaysShowEditor]
    TabOrder = 0
    ColWidths = (
      200
      102
      92)
    RowHeights = (
      15
      15)
  end
  object OkBtn: TButton
    Left = 264
    Top = 271
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 344
    Top = 271
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object WeekEdit: TSpinEdit
    Left = 52
    Top = 260
    Width = 61
    Height = 22
    MaxValue = 4
    MinValue = 1
    TabOrder = 3
    Value = 1
    OnChange = Check
  end
end
