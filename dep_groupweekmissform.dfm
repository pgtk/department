object GroupWeekMissForm: TGroupWeekMissForm
  Left = 862
  Top = 249
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1087#1091#1089#1082#1080' '#1079#1072' '#1085#1077#1076#1077#1083#1102' '#1087#1086' '#1075#1088#1091#1087#1087#1077
  ClientHeight = 268
  ClientWidth = 387
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
    387
    268)
  PixelsPerInch = 96
  TextHeight = 13
  object WeekGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 387
    Height = 225
    Align = alTop
    DataSource = WeekDataSource
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
        FieldName = 'gr_Name'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Week'
        Title.Caption = #1053#1077#1076#1077#1083#1103
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Legal'
        Title.Caption = #1059#1074#1072#1078#1080#1090#1077#1083#1100#1085#1099#1093
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Illegal'
        Title.Caption = #1053#1077#1091#1074#1072#1078#1080#1090#1077#1083#1100#1085#1099#1093
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_All'
        Title.Caption = #1042#1089#1077#1075#1086
        Width = 41
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 311
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    ModalResult = 1
    TabOrder = 4
  end
  object WeekCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 40
    Top = 40
  end
  object WeekQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Groups, GrWeekMissings '
      'WHERE gr_pcode = gwm_grcode;')
    Left = 72
    Top = 40
  end
  object WeekDataSource: TDataSource
    DataSet = WeekQuery
    OnDataChange = WeekDataSourceDataChange
    Left = 8
    Top = 40
  end
end
