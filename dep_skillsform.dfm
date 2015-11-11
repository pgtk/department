object SkillsManForm: TSkillsManForm
  Left = 513
  Top = 128
  Width = 495
  Height = 298
  Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
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
  object Label1: TLabel
    Left = 376
    Top = 213
    Width = 18
    Height = 13
    Caption = #1043#1086#1076
  end
  object Label2: TLabel
    Left = 183
    Top = 214
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object SkillsGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 487
    Height = 201
    Align = alTop
    DataSource = SkillsDataSource
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
        FieldName = 'gsk_Mounth'
        Title.Caption = #1052#1077#1089#1103#1094
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gsk_Year'
        Title.Caption = #1043#1086#1076
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gsk_Level'
        Title.Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
        Width = 133
        Visible = True
      end>
  end
  object ExitBtn: TButton
    Left = 412
    Top = 240
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 1
  end
  object AddBtn: TButton
    Left = 0
    Top = 240
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 240
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 240
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = DelBtnClick
  end
  object MounthComboBox: TComboBox
    Left = 224
    Top = 208
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = MounthComboBoxChange
    Items.Strings = (
      #1042#1089#1077' '#1084#1077#1089#1103#1094#1099
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
    Left = 400
    Top = 208
    Width = 86
    Height = 22
    MaxValue = 2090
    MinValue = 1990
    TabOrder = 6
    Value = 2005
    OnChange = YearEditChange
  end
  object SkillsQuery: TADOQuery
    Active = True
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from GrSkills;')
    Left = 8
    Top = 136
  end
  object SkillsCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 40
    Top = 136
  end
  object SkillsDataSource: TDataSource
    DataSet = SkillsQuery
    Left = 72
    Top = 136
  end
end
