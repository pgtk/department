object SemesterSubjectsForm: TSemesterSubjectsForm
  Left = 770
  Top = 272
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1047#1072#1095#1077#1090#1099' '#1080' '#1101#1082#1079#1072#1084#1077#1085#1099
  ClientHeight = 398
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    712
    398)
  PixelsPerInch = 96
  TextHeight = 13
  object SubjComboBox: TGroupBox
    Left = 0
    Top = 0
    Width = 193
    Height = 398
    Align = alLeft
    Caption = #1055#1088#1077#1076#1084#1077#1090#1099
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 18
      Width = 40
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088
    end
    object SubjGrid: TDBGrid
      Left = 2
      Top = 56
      Width = 189
      Height = 340
      Align = alBottom
      DataSource = SubjDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'sb_Name'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 154
          Visible = True
        end>
    end
    object FilterEdit: TEdit
      Left = 2
      Top = 32
      Width = 187
      Height = 21
      TabOrder = 0
      OnChange = FilterEditChange
    end
  end
  object ExamGroupBox: TGroupBox
    Left = 194
    Top = 176
    Width = 518
    Height = 185
    Anchors = [akLeft, akTop, akRight]
    Caption = #1069#1082#1079#1072#1084#1077#1085#1099
    TabOrder = 2
    DesignSize = (
      518
      185)
    object ExamGrid: TDBGrid
      Left = 2
      Top = 15
      Width = 514
      Height = 139
      Align = alTop
      DataSource = ExDataSource
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
          FieldName = 'ex_Date'
          Title.Caption = #1044#1072#1090#1072' '#1101#1082#1079#1072#1084#1077#1085#1072
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sb_Name'
          Title.Caption = #1055#1088#1077#1076#1084#1077#1090
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ex_Teacher'
          Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ex_Hours'
          Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
          Width = 77
          Visible = True
        end>
    end
    object ExAddBtn: TButton
      Left = 3
      Top = 157
      Width = 40
      Height = 20
      Caption = '>'
      TabOrder = 1
      OnClick = ExAddBtnClick
    end
    object ExDelBtn: TButton
      Left = 454
      Top = 156
      Width = 56
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 5
      OnClick = ExDelBtnClick
    end
    object ExEditBtn: TButton
      Left = 394
      Top = 156
      Width = 60
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = ExEditBtnClick
    end
    object ExReportBtn: TButton
      Left = 194
      Top = 156
      Width = 87
      Height = 25
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1101#1082#1079'.'
      TabOrder = 2
      OnClick = ExReportBtnClick
    end
    object ExCourseBtn: TButton
      Left = 281
      Top = 156
      Width = 99
      Height = 25
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1082#1091#1088#1089'.'
      TabOrder = 3
      OnClick = ExCourseBtnClick
    end
  end
  object CheckpointGroupBox: TGroupBox
    Left = 194
    Top = 0
    Width = 518
    Height = 176
    Anchors = [akLeft, akTop, akRight]
    Caption = #1047#1072#1095#1077#1090#1099
    TabOrder = 1
    DesignSize = (
      518
      176)
    object CheckPointGrid: TDBGrid
      Left = 2
      Top = 15
      Width = 514
      Height = 130
      Align = alTop
      DataSource = ChDataSource
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
          FieldName = 'cp_Date'
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1095#1077#1090#1072
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sb_Name'
          Title.Caption = #1055#1088#1077#1076#1084#1077#1090
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_Teacher'
          Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_Hours'
          Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
          Width = 80
          Visible = True
        end>
    end
    object ChAddBtn: TButton
      Left = 4
      Top = 148
      Width = 40
      Height = 20
      Caption = '>'
      TabOrder = 1
      OnClick = ChAddBtnClick
    end
    object ChDelBtn: TButton
      Left = 457
      Top = 147
      Width = 54
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 4
      OnClick = ChDelBtnClick
    end
    object ChEditBtn: TButton
      Left = 395
      Top = 147
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 3
      OnClick = ChEditBtnClick
    end
    object ChCourseBtn: TButton
      Left = 282
      Top = 147
      Width = 99
      Height = 25
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1082#1091#1088#1089'.'
      TabOrder = 2
      OnClick = ChCourseBtnClick
    end
  end
  object CloseBtn: TButton
    Left = 630
    Top = 367
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 3
  end
  object SubjCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 72
    Top = 352
  end
  object SubjQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Subjects, SbTypes WHERE (sb_sbtcode = sbt_pcode);')
    Left = 40
    Top = 352
  end
  object SubjDataSource: TDataSource
    DataSet = SubjQuery
    OnDataChange = SubjDataSourceDataChange
    Left = 8
    Top = 352
  end
  object ExDataSource: TDataSource
    DataSet = ExQuery
    OnDataChange = ExDataSourceDataChange
    Left = 8
    Top = 224
  end
  object ChDataSource: TDataSource
    DataSet = ChQuery
    OnDataChange = ChDataSourceDataChange
    Left = 8
    Top = 176
  end
  object ExQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Exams, Subjects;')
    Left = 40
    Top = 224
  end
  object ChQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Checkpoints, Subjects;')
    Left = 40
    Top = 176
  end
end
