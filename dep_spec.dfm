object SpecManForm: TSpecManForm
  Left = 687
  Top = 556
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 274
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    624
    274)
  PixelsPerInch = 96
  TextHeight = 13
  object SpecDBGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 225
    Align = alTop
    DataSource = SpecDataSource
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
        FieldName = 'sp_Key'
        Title.Caption = #1064#1080#1092#1088
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_Name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_Kvalification'
        Title.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_Specialization'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_ShortName'
        Title.Caption = #1050#1088'. '#1053#1072#1079#1074#1072#1085#1080#1077
        Width = 88
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 232
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 232
    Width = 75
    Height = 25
    Caption = #1055#1088#1072#1074#1082#1072
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object ExitBtn: TButton
    Left = 547
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object GroupBtn: TButton
    Left = 161
    Top = 232
    Width = 75
    Height = 25
    Caption = #1043#1088#1091#1087#1087#1099
    TabOrder = 4
    OnClick = GroupBtnClick
  end
  object ComissionBtn: TButton
    Left = 237
    Top = 232
    Width = 75
    Height = 25
    Caption = #1050#1086#1084#1080#1089#1089#1080#1080
    TabOrder = 5
    OnClick = ComissionBtnClick
  end
  object PlansBtn: TButton
    Left = 312
    Top = 232
    Width = 97
    Height = 25
    Caption = #1059#1095#1077#1073#1085#1099#1077' '#1087#1083#1072#1085#1099
    TabOrder = 6
    OnClick = PlansBtnClick
  end
  object SpecDataSource: TDataSource
    DataSet = SpecQuery
    OnDataChange = SpecDataSourceDataChange
    Left = 8
    Top = 40
  end
  object SpecQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from specialities;')
    Left = 40
    Top = 40
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 72
    Top = 40
  end
end
