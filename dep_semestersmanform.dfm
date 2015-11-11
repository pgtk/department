object SemestersManForm: TSemestersManForm
  Left = 357
  Top = 469
  Width = 776
  Height = 346
  Caption = #1057#1077#1084#1077#1089#1090#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    768
    319)
  PixelsPerInch = 96
  TextHeight = 13
  object SemestersGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 768
    Height = 273
    Align = alTop
    DataSource = SemestersDataSource
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
        FieldName = 'sm_Number'
        Title.Caption = #1057#1077#1084#1077#1089#1090#1088
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_BWeek'
        Title.Caption = #1053#1077#1076#1077#1083#1103' '#1085#1072#1095#1072#1083#1072
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_BMounth'
        Title.Caption = #1052#1077#1089#1103#1094' '#1085#1072#1095#1072#1083#1072
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_BYear'
        Title.Caption = #1043#1086#1076' '#1085#1072#1095#1072#1083#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_EWeek'
        Title.Caption = #1053#1077#1076#1077#1083#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_EMounth'
        Title.Caption = #1052#1077#1089#1103#1094' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_EYear'
        Title.Caption = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_WeekCount'
        Title.Caption = #1063#1080#1089#1083#1086' '#1085#1077#1076#1077#1083#1100
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sm_WeekWork'
        Title.Caption = #1053#1077#1076#1077#1083#1100#1085#1072#1103' '#1085#1072#1075#1088'.'
        Width = 91
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 280
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 280
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 280
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 701
    Top = 280
    Width = 67
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    ModalResult = 1
    TabOrder = 4
  end
  object ExamBtn: TButton
    Left = 232
    Top = 280
    Width = 113
    Height = 25
    Caption = #1069#1082#1079#1072#1084#1077#1085#1099' '#1080' '#1079#1072#1095#1077#1090#1099
    TabOrder = 5
    OnClick = ExamBtnClick
  end
  object MarkBtn: TButton
    Left = 345
    Top = 280
    Width = 75
    Height = 25
    Caption = #1054#1094#1077#1085#1082#1080
    TabOrder = 6
    OnClick = MarkBtnClick
  end
  object PractBtn: TButton
    Left = 420
    Top = 280
    Width = 75
    Height = 25
    Caption = #1055#1088#1072#1082#1090#1080#1082#1072
    TabOrder = 7
    OnClick = PractBtnClick
  end
  object SemestersCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 56
    Top = 240
  end
  object SemestersQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from semesters;')
    Left = 88
    Top = 240
  end
  object SemestersDataSource: TDataSource
    DataSet = SemestersQuery
    OnDataChange = SemestersDataSourceDataChange
    Left = 120
    Top = 240
  end
end
