object GroupManForm: TGroupManForm
  Left = 217
  Top = 90
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1043#1088#1091#1087#1087#1099
  ClientHeight = 298
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 496
    Height = 249
    Align = alTop
    DataSource = GroupDataSource
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
        FieldName = 'gr_Name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gr_LernLength'
        Title.Caption = #1057#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gr_CreateYear'
        Title.Caption = #1043#1086#1076' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103
        Width = 155
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 256
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 76
    Top = 256
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 152
    Top = 256
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 432
    Top = 256
    Width = 64
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    ModalResult = 1
    TabOrder = 4
  end
  object GroupDataSource: TDataSource
    DataSet = GroupQuery
    Left = 8
    Top = 216
  end
  object GroupQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from groups;')
    Left = 40
    Top = 216
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 72
    Top = 216
  end
end
