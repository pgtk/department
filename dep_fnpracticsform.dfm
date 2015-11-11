object FnPracticsForm: TFnPracticsForm
  Left = 561
  Top = 160
  Width = 579
  Height = 344
  Caption = #1055#1088#1072#1082#1090#1080#1082#1072' '#1074' '#1074#1099#1087#1080#1089#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object FPkGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 571
    Height = 273
    Align = alTop
    DataSource = FPkDataSource
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
        FieldName = 'fpk_Number'
        Title.Caption = #8470
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fpk_Title'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 389
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fpk_Length'
        Title.Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
        Width = 120
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 280
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 280
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 280
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 496
    Top = 280
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object DetailBtn: TButton
    Left = 232
    Top = 280
    Width = 75
    Height = 25
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 5
    OnClick = DetailBtnClick
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 232
    Top = 232
  end
  object FPkQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FnPractics')
    Left = 264
    Top = 232
  end
  object FPkDataSource: TDataSource
    DataSet = FPkQuery
    OnDataChange = FPkDataSourceDataChange
    Left = 304
    Top = 232
  end
end
