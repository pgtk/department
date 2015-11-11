object StudentsLookupForm: TStudentsLookupForm
  Left = 385
  Top = 421
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  ClientHeight = 453
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    357
    453)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 35
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 48
    Height = 13
    Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  end
  object OkBtn: TButton
    Left = 8
    Top = 424
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 273
    Top = 424
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object GroupComboBox: TComboBox
    Left = 4
    Top = 40
    Width = 350
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object StudentsListBox: TCheckListBox
    Left = 5
    Top = 88
    Width = 346
    Height = 329
    ItemHeight = 13
    TabOrder = 3
  end
  object Query: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    Left = 88
    Top = 424
  end
end
