object WorkerManForm: TWorkerManForm
  Left = 470
  Top = 322
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
  ClientHeight = 313
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 542
    Height = 265
    Align = alTop
    DataSource = WorkDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'wk_FName'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_MName'
        Title.Caption = #1048#1084#1103
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_LName'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 158
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 272
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 272
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 272
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 466
    Top = 272
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    ModalResult = 1
    TabOrder = 4
  end
  object WorkDataSource: TDataSource
    DataSet = WorkQuery
    Left = 8
    Top = 176
  end
  object WorkQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Workers ORDER BY wk_Name;')
    Left = 40
    Top = 176
  end
  object WorkCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 72
    Top = 176
  end
end
