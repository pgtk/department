object StudyPlansListForm: TStudyPlansListForm
  Left = 1028
  Top = 412
  Width = 606
  Height = 323
  BorderIcons = []
  Caption = #1059#1095#1077#1073#1085#1099#1077' '#1087#1083#1072#1085#1099
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 598
    Height = 257
    Align = alTop
    DataSource = StudyPlansDataSource
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
        FieldName = 'stp_name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 562
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 264
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 76
    Top = 264
    Width = 75
    Height = 25
    Caption = #1055#1088#1072#1074#1082#1072
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 152
    Top = 264
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object CloseBtn: TButton
    Left = 520
    Top = 264
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object DetailsBtn: TButton
    Left = 240
    Top = 264
    Width = 75
    Height = 25
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 5
    OnClick = DetailsBtnClick
  end
  object StudyPlansQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM StudyPlans;')
    Left = 416
    Top = 264
  end
  object StudyPlansDataSource: TDataSource
    DataSet = StudyPlansQuery
    OnDataChange = StudyPlansDataSourceDataChange
    Left = 448
    Top = 264
  end
  object PlansCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 480
    Top = 264
  end
end
