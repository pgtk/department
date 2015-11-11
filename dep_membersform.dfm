object MembersForm: TMembersForm
  Left = 197
  Top = 111
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1086#1089#1090#1072#1074' '#1082#1086#1084#1080#1089#1089#1080#1080
  ClientHeight = 394
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    326
    394)
  PixelsPerInch = 96
  TextHeight = 13
  object AddBtn: TButton
    Left = 0
    Top = 360
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 76
    Top = 360
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 152
    Top = 360
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 250
    Top = 360
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object MembersGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 326
    Height = 353
    Align = alTop
    DataSource = MembersSource
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
        FieldName = 'mem_Name'
        Title.Caption = #1059#1095#1072#1089#1090#1085#1080#1082' '#1082#1086#1084#1080#1089#1089#1080#1080
        Width = 286
        Visible = True
      end>
  end
  object MembersQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROm Members;')
    Left = 8
    Top = 320
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 288
    Top = 320
  end
  object MembersSource: TDataSource
    DataSet = MembersQuery
    Left = 40
    Top = 320
  end
end
