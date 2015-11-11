object SeminarsStudentsForm: TSeminarsStudentsForm
  Left = 215
  Top = 115
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  ClientHeight = 358
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StudentsGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 391
    Height = 313
    Align = alTop
    DataSource = StudentsSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 312
    Top = 328
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
  end
  object Button2: TButton
    Left = 0
    Top = 328
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1075#1088#1091#1087#1087#1099
    TabOrder = 2
  end
  object Button3: TButton
    Left = 122
    Top = 328
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
  end
  object Button4: TButton
    Left = 198
    Top = 328
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
    TabOrder = 4
  end
  object StudentsQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    Left = 352
    Top = 280
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 8
    Top = 280
  end
  object StudentsSource: TDataSource
    DataSet = StudentsQuery
    Left = 320
    Top = 280
  end
end
