object SchoolManForm: TSchoolManForm
  Left = 480
  Top = 117
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1052#1077#1089#1090#1086' '#1086#1073#1091#1095#1077#1085#1080#1103
  ClientHeight = 245
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SchoolGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 464
    Height = 201
    Align = alTop
    DataSource = SchoolDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
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
        FieldName = 'sc_Name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 430
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 208
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 208
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 208
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 390
    Top = 208
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object SchoolQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from schools;')
    Left = 8
    Top = 168
  end
  object SchoolCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 40
    Top = 168
  end
  object SchoolDataSource: TDataSource
    DataSet = SchoolQuery
    OnDataChange = SchoolDataSourceDataChange
    Left = 72
    Top = 168
  end
end
