object GroupMissManForm: TGroupMissManForm
  Left = 621
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1087#1091#1089#1082#1080' '#1079#1072' '#1084#1077#1089#1103#1094
  ClientHeight = 340
  ClientWidth = 592
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
  object Label2: TLabel
    Left = 424
    Top = 286
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object MissGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 592
    Height = 273
    Align = alTop
    DataSource = MissDataSource
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
        FieldName = 'gr_Name'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Mounth'
        Title.Caption = #1052#1077#1089#1103#1094
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Year'
        Title.Caption = #1043#1086#1076
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Legal'
        Title.Caption = #1059#1074#1072#1078#1080#1090#1077#1083#1100#1085#1099#1093
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_Illegal'
        Title.Caption = #1053#1077#1091#1074#1072#1078#1080#1090#1077#1083#1100#1085#1099#1093
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gwm_All'
        Title.Caption = #1042#1089#1077#1075#1086
        Width = 86
        Visible = True
      end>
  end
  object DetailBtn: TButton
    Left = 0
    Top = 280
    Width = 75
    Height = 25
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 1
    OnClick = DetailBtnClick
  end
  object ExitBtn: TButton
    Left = 1
    Top = 312
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object MounthComboBox: TComboBox
    Left = 470
    Top = 280
    Width = 121
    Height = 21
    DropDownCount = 13
    ItemHeight = 13
    TabOrder = 3
    OnChange = AcceptFilter
    Items.Strings = (
      #1042#1089#1077
      #1071#1085#1074#1072#1088#1100
      #1060#1077#1074#1088#1072#1083#1100
      #1052#1072#1088#1090
      #1040#1087#1088#1077#1083#1100
      #1052#1072#1081
      #1048#1102#1085#1100
      #1048#1102#1083#1100
      #1040#1074#1075#1091#1089#1090
      #1057#1077#1085#1090#1103#1073#1088#1100
      #1054#1082#1090#1103#1073#1088#1100
      #1053#1086#1103#1073#1088#1100
      #1044#1077#1082#1072#1073#1088#1100)
  end
  object YearEdit: TSpinEdit
    Left = 525
    Top = 305
    Width = 65
    Height = 22
    MaxValue = 2090
    MinValue = 1990
    TabOrder = 4
    Value = 1990
    OnChange = AcceptFilter
  end
  object YearCheckBox: TCheckBox
    Left = 425
    Top = 307
    Width = 89
    Height = 17
    Caption = #1043#1086#1076
    TabOrder = 5
    OnClick = AcceptFilter
  end
  object MissDataSource: TDataSource
    DataSet = MissQuery
    OnDataChange = MissDataSourceDataChange
    Left = 8
    Top = 72
  end
  object MissQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select gr_Name, SUM(gwm_Legal) as gwm_Legal, '
      'SUM(gwm_Illegal) as gwm_Illegal, SUM(gwm_All) as gwm_All,'
      'gwm_Mounth, gwm_Year, gr_pcode '
      'FROM Groups, GrWeekMissings '
      'WHERE gr_pcode = gwm_grcode '
      'GROUP BY gwm_Mounth, gwm_Year, gr_Name, gr_pcode;')
    Left = 40
    Top = 72
  end
end
