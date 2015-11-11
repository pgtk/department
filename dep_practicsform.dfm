object PracticsForm: TPracticsForm
  Left = 551
  Top = 468
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1072#1082#1090#1080#1082#1072
  ClientHeight = 349
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    478
    349)
  PixelsPerInch = 96
  TextHeight = 13
  object ExitBtn: TButton
    Left = 402
    Top = 320
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object AddBtn: TButton
    Left = 0
    Top = 294
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 294
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 294
    Width = 87
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object PracticsGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 478
    Height = 289
    Align = alTop
    DataSource = PracticsSource
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
        FieldName = 'pk_Title'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pk_Teachers'
        Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1080
        Width = 268
        Visible = True
      end>
  end
  object DetailBtn: TButton
    Left = 0
    Top = 320
    Width = 113
    Height = 25
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 5
    OnClick = DetailBtnClick
  end
  object RepBtn: TButton
    Left = 113
    Top = 320
    Width = 124
    Height = 25
    Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100
    TabOrder = 6
    OnClick = RepBtnClick
  end
  object PracticsQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Practics;')
    Left = 344
    Top = 248
  end
  object PracticsCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 8
    Top = 240
  end
  object PracticsSource: TDataSource
    DataSet = PracticsQuery
    OnDataChange = PracticsSourceDataChange
    Left = 312
    Top = 248
  end
end
