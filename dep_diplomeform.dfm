object DiplomeForm: TDiplomeForm
  Left = 316
  Top = 503
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1050#1086#1084#1080#1089#1089#1080#1080
  ClientHeight = 333
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    586
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object AddBtn: TButton
    Left = 0
    Top = 296
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 296
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 296
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 509
    Top = 296
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object ComissionGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 586
    Height = 289
    Align = alTop
    DataSource = ComissionSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'com_Date'
        Title.Caption = #1044#1072#1090#1072
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'com_PDirector'
        Title.Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'com_Sekretar'
        Title.Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
        Width = 223
        Visible = True
      end>
  end
  object DetailBtn: TButton
    Left = 240
    Top = 296
    Width = 75
    Height = 25
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 5
    OnClick = DetailBtnClick
  end
  object ReportBtn: TButton
    Left = 316
    Top = 296
    Width = 75
    Height = 25
    Caption = #1055#1088#1086#1090#1086#1082#1086#1083
    TabOrder = 6
    OnClick = ReportBtnClick
  end
  object KvalificationReportBtn: TButton
    Left = 391
    Top = 296
    Width = 75
    Height = 25
    Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100
    TabOrder = 7
    OnClick = KvalificationReportBtnClick
  end
  object ComissionSource: TDataSource
    DataSet = ComissionQuery
    OnDataChange = ComissionSourceDataChange
    Left = 328
    Top = 240
  end
  object ComissionQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Comissions;')
    Left = 360
    Top = 240
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 440
    Top = 240
  end
end
