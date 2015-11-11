object PkMembersForm: TPkMembersForm
  Left = 206
  Top = 326
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1080
  ClientHeight = 328
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MembersGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 362
    Height = 289
    Align = alTop
    DataSource = MembersSource
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
        FieldName = 'pkm_Name'
        Title.Caption = #1060#1048#1054' '#1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
        Width = 321
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 296
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 296
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 296
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 287
    Top = 296
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object MembersSource: TDataSource
    DataSet = MembersQuery
    Left = 224
    Top = 256
  end
  object MembersCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 8
    Top = 256
  end
  object MembersQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PkMembers;')
    Left = 256
    Top = 256
  end
end
