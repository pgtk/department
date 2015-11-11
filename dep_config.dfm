object ConfigForm: TConfigForm
  Left = 597
  Top = 214
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configure your client'
  ClientHeight = 298
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 103
    Height = 13
    Caption = #1059#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077':'
  end
  object Label2: TLabel
    Left = 0
    Top = 136
    Width = 58
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object Label3: TLabel
    Left = 338
    Top = 8
    Width = 152
    Height = 13
    Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
  end
  object OkBtn: TButton
    Left = 8
    Top = 264
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 86
    Top = 264
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object SchoolGrid: TDBGrid
    Left = 0
    Top = 24
    Width = 337
    Height = 105
    DataSource = SchoolDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sc_ShortName'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object DepGrid: TDBGrid
    Left = 0
    Top = 152
    Width = 337
    Height = 105
    DataSource = DepDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dp_Name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object PlaceGrid: TDBGrid
    Left = 340
    Top = 24
    Width = 281
    Height = 233
    DataSource = PlaceDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
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
        FieldName = 'pl_FullName'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 237
        Visible = True
      end>
  end
  object SchoolDataSource: TDataSource
    DataSet = SchoolQuery
    OnDataChange = SchoolDataSourceDataChange
    Left = 8
    Top = 96
  end
  object SchoolQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from schools;')
    Left = 40
    Top = 96
  end
  object DepQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from departments')
    Left = 40
    Top = 224
  end
  object DepDataSource: TDataSource
    DataSet = DepQuery
    OnDataChange = DepDataSourceDataChange
    Left = 8
    Top = 224
  end
  object PlaceDataSource: TDataSource
    DataSet = PlaceQuery
    OnDataChange = PlaceDataSourceDataChange
    Left = 352
    Top = 96
  end
  object PlaceQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Places ORDER BY pl_hit DESC;')
    Left = 384
    Top = 96
  end
end
