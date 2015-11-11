object MainForm: TMainForm
  Left = 790
  Top = 383
  Width = 785
  Height = 448
  Caption = #1052#1086#1076#1091#1083#1100' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 777
    Height = 29
    Caption = 'MainToolBar'
    TabOrder = 0
    object YearFilterCheckBox: TCheckBox
      Left = 0
      Top = 2
      Width = 105
      Height = 22
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1075#1086#1076#1091
      TabOrder = 0
      OnClick = YearFilterCheckBoxClick
    end
    object YearEdit: TSpinEdit
      Left = 105
      Top = 2
      Width = 56
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnChange = YearEditChange
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 383
    Width = 777
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object PageControl: TPageControl
    Left = 0
    Top = 29
    Width = 777
    Height = 354
    ActivePage = ActiveTabSheet
    Align = alClient
    MultiLine = True
    TabIndex = 0
    TabOrder = 2
    TabPosition = tpBottom
    OnChange = PageControlChange
    object ActiveTabSheet: TTabSheet
      Caption = #1057#1090#1091#1076#1077#1085#1090#1099' '#1080' '#1075#1088#1091#1087#1087#1099
      object Splitter1: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 328
        Cursor = crHSplit
      end
      object StudentsGrid: TDBGrid
        Left = 132
        Top = 0
        Width = 637
        Height = 328
        Align = alClient
        DataSource = StudentsDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        PopupMenu = StudentsPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = ChangeItemClick
        Columns = <
          item
            Expanded = False
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 129
            Visible = True
          end>
      end
      object GroupGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 328
        Align = alLeft
        DataSource = GroupDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = GroupPopupMenu
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = ChangeGroupItemClick
        Columns = <
          item
            Expanded = False
            FieldName = 'gr_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 95
            Visible = True
          end>
      end
    end
    object AddCourseTabSheet: TTabSheet
      Caption = #1055#1086#1074#1090#1086#1088#1085#1099#1081' '#1082#1091#1088#1089
      ImageIndex = 5
      object AddCourseGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 769
        Height = 328
        Align = alClient
        DataSource = AddCourseDataSource
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Name'
            Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
            Width = 559
            Visible = True
          end>
      end
    end
    object AcademTabSheet: TTabSheet
      Caption = #1040#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1087#1091#1089#1082
      ImageIndex = 4
      object AcademGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 769
        Height = 328
        Align = alClient
        DataSource = AcademDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = AcademPopupMenu
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Name'
            Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
            Width = 559
            Visible = True
          end>
      end
    end
    object DeletedTabSheet: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1099#1077' '#1087#1086' '#1087#1088#1080#1082#1072#1079#1091
      ImageIndex = 1
      object DelStudentsGrid: TDBGrid
        Left = 0
        Top = 45
        Width = 769
        Height = 283
        Align = alClient
        DataSource = DelDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = DeletedPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DeletedStudentDetailsMenuItemClick
        Columns = <
          item
            Expanded = False
            FieldName = 'gr_Name'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Name'
            Title.Caption = #1060#1048#1054
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm_Date'
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm_Number'
            Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm_Text'
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
            Width = 224
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 769
        Height = 45
        Align = alTop
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 1
        object FilterCheckBox: TCheckBox
          Left = 8
          Top = 18
          Width = 71
          Height = 17
          Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 0
          OnClick = FilterDeleted
        end
        object FilterEdit: TEdit
          Left = 80
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 1
          OnChange = FilterDeleted
        end
      end
    end
    object ErrorTabSheet: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1099#1077' '#1087#1086' '#1086#1096#1080#1073#1082#1077
      ImageIndex = 2
      object ErGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 769
        Height = 328
        Align = alClient
        DataSource = ErDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = ErPopupMenu
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Name'
            Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
            Width = 559
            Visible = True
          end>
      end
    end
    object ArchiveTabSheet: TTabSheet
      Caption = #1040#1088#1093#1080#1074
      ImageIndex = 3
      object Splitter2: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 328
        Cursor = crHSplit
      end
      object ArGroupGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 328
        Align = alLeft
        DataSource = ArGroupDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        PopupMenu = ArcGrPopupMenu
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
            Width = 92
            Visible = True
          end>
      end
      object ArStudentsGrid: TDBGrid
        Left = 132
        Top = 0
        Width = 637
        Height = 328
        Align = alClient
        DataSource = ArStudentsDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        PopupMenu = ArcPopupMenu
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
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 129
            Visible = True
          end>
      end
    end
    object FindTabSheet: TTabSheet
      Caption = #1055#1086#1080#1089#1082
      ImageIndex = 6
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 769
        Height = 49
        Align = alTop
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        object FNameFilter: TCheckBox
          Left = 8
          Top = 18
          Width = 81
          Height = 17
          Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 0
          OnClick = FindFilter
        end
        object FNameEdit: TEdit
          Left = 88
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 1
          OnChange = FindFilter
        end
        object MNameFilter: TCheckBox
          Left = 232
          Top = 18
          Width = 49
          Height = 17
          Caption = #1048#1084#1103
          TabOrder = 2
          OnClick = FindFilter
        end
        object MNameEdit: TEdit
          Left = 280
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 3
          OnChange = FindFilter
        end
        object LNameFilter: TCheckBox
          Left = 424
          Top = 18
          Width = 81
          Height = 17
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          TabOrder = 4
          OnClick = FindFilter
        end
        object LNameEdit: TEdit
          Left = 496
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 5
          OnChange = FindFilter
        end
      end
      object ResultGrid: TDBGrid
        Left = 0
        Top = 49
        Width = 769
        Height = 279
        Align = alClient
        DataSource = FindDataSource
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
            FieldName = 'gr_Name'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_inYear'
            Title.Caption = #1055#1086#1089#1090#1091#1087#1080#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_OutYear'
            Title.Caption = #1054#1082#1086#1085#1095#1080#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Attributes'
            Title.Caption = #1040#1090#1088#1080#1073#1091#1090#1099
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Address'
            Title.Caption = #1040#1076#1088#1077#1089
            Visible = True
          end>
      end
    end
  end
  object Connection: TADOConnection
    CommandTimeout = 120
    ConnectionString = 'FILE NAME=D:\Delphi\department\connection.udl'
    Provider = 'SQLOLEDB.1'
    Left = 344
  end
  object MainMenu1: TMainMenu
    Left = 168
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Action = ExitAction
        AutoCheck = True
      end
    end
    object N3: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      object N5: TMenuItem
        Action = DepartmentsAction
      end
      object N6: TMenuItem
        Action = SpecAction
      end
    end
    object N8: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N9: TMenuItem
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1080
        object N30: TMenuItem
          Action = MounthReportAction
        end
        object N18: TMenuItem
          Action = MounthMarksReportAction
        end
        object N24: TMenuItem
          Caption = '-'
        end
        object N23: TMenuItem
          Action = MissActionItem
        end
        object N11: TMenuItem
          Action = WeekMissingsAction
        end
        object N41: TMenuItem
          Action = DetailedMounthMissingsRepAction
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object N10: TMenuItem
          Action = TestReportItem
        end
        object N12: TMenuItem
          Action = CompReportAction
        end
        object KvalificationExamItem: TMenuItem
          Action = KvalificationExamReportAction
        end
        object N26: TMenuItem
          Caption = '-'
        end
        object N45: TMenuItem
          Action = DiplomeResultsRepAction
        end
        object N48: TMenuItem
          Action = GOSResultsRepAction
          Caption = #1048#1090#1086#1075#1080' '#1089#1076#1072#1095#1080' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
        end
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object MounthSummary: TMenuItem
        Action = MounthSummaryAction
      end
      object N15: TMenuItem
        Action = SemesterSummaryAction
      end
      object N57: TMenuItem
        Action = SemesterSpecSummaryAction
      end
      object TotalMissingsItem: TMenuItem
        Caption = #1048#1090#1086#1075#1080' '#1087#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1080
        OnClick = TotalMissingsItemClick
      end
      object N49: TMenuItem
        Action = GraduateReportAction
      end
      object AppRepMenuItem: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1085#1072' '#1072#1087#1087#1072#1088#1072#1090#1085#1086#1077
        OnClick = AppRepMenuItemClick
      end
      object N55: TMenuItem
        Action = FinalStudyResultsAction
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object MounthStatistics: TMenuItem
        Caption = #1048#1090#1086#1075#1080' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1082#1091#1088#1072#1090#1086#1088#1091
        OnClick = MounthStatisticsClick
      end
      object N56: TMenuItem
        Caption = '-'
      end
      object N19: TMenuItem
        Caption = #1050#1086#1085#1090#1080#1085#1075#1077#1085#1090
        OnClick = ContReportItem
      end
    end
    object N20: TMenuItem
      Caption = #1057#1087#1080#1089#1082#1080
      object N22: TMenuItem
        Caption = #1057#1080#1088#1086#1090#1099
        OnClick = ParentLessReportItem
      end
      object N28: TMenuItem
        Caption = #1055#1088#1086#1078#1080#1074#1072#1102#1097#1080#1077' '#1074' '#1086#1073#1097#1077#1078#1080#1090#1080#1080
        Hint = #1057#1087#1080#1089#1086#1082' '#1078#1080#1074#1091#1097#1080#1093' '#1074' '#1086#1073#1097#1077#1078#1080#1090#1080#1080
        OnClick = N28Click
      end
      object N33: TMenuItem
        Caption = #1048#1085#1086#1075#1086#1088#1086#1076#1085#1080#1077
        OnClick = N33Click
      end
      object N50: TMenuItem
        Caption = #1055#1077#1088#1074#1086#1082#1091#1088#1089#1085#1080#1082#1080
        OnClick = N50Click
      end
      object N38: TMenuItem
        Caption = #1054#1090#1083#1080#1095#1085#1080#1082#1080
        OnClick = N38Click
      end
      object N53: TMenuItem
        Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
        OnClick = N53Click
      end
      object N52: TMenuItem
        Caption = #1048#1084#1077#1085#1080#1085#1085#1080#1082#1080
        OnClick = N52Click
      end
      object N44: TMenuItem
        Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1093' '#1103#1079#1099#1082#1086#1074
        OnClick = N44Click
      end
      object StudentsDataReportItem: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
        OnClick = StudentsDataReportItemClick
      end
      object N61: TMenuItem
        Action = StipendiaListAction
      end
    end
    object ServiceGroup: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object UpdateItem: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        OnClick = UpdateItemClick
      end
    end
  end
  object GroupDataSource: TDataSource
    DataSet = GroupQuery
    OnDataChange = GroupDataSourceDataChange
    Left = 563
  end
  object GroupQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from groups;')
    Left = 592
  end
  object StudentsDataSource: TDataSource
    DataSet = StudentsQuery
    OnDataChange = StudentsDataSourceDataChange
    Left = 628
  end
  object StudentsQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select st_pcode, st_FName, st_MName, st_LName, st_Name, st_FullN' +
        'ame,'
      
        'st_grcode, st_Attributes from students where st_Attributes = 0 A' +
        'ND st_Name LIKE '#39#1040#1085'%'#39)
    Left = 656
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 329
    ActionBars = <>
    LinkedActionLists = <>
    Left = 372
    object GroupManAction: TAction
      AutoCheck = True
      Caption = #1043#1088#1091#1087#1087#1099
      OnExecute = GroupManActionExecute
    end
    object ExitAction: TAction
      AutoCheck = True
      Caption = #1042#1099#1093#1086#1076
      OnExecute = ExitActionExecute
    end
    object SchoolAction: TAction
      Caption = #1059#1095#1077#1073#1085#1099#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
      OnExecute = SchoolActionExecute
    end
    object DepartmentsAction: TAction
      Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
      OnExecute = DepartmentsActionExecute
    end
    object SpecAction: TAction
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      OnExecute = SpecActionExecute
    end
    object TestReportItem: TAction
      Caption = #1047#1072#1095#1077#1090#1085#1072#1103
      OnExecute = TestReportItemExecute
    end
    object MissActionItem: TAction
      Caption = #1055#1088#1086#1087#1091#1089#1082#1086#1074
      OnExecute = MissActionExecute
    end
    object DiplomeDataEnterAction: TAction
      Caption = #1043#1054#1057#1099' '#1080' '#1076#1080#1087#1083#1086#1084#1080#1088#1086#1074#1072#1085#1080#1077
    end
    object MounthReportAction: TAction
      Caption = #1040#1090#1090#1077#1089#1090#1072#1094#1080#1080' '#1079#1072' '#1084#1077#1089#1103#1094
      OnExecute = MounthReportActionExecute
    end
    object MounthMarksReportAction: TAction
      Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1084#1077#1089#1103#1094
      OnExecute = MarksMounthReportAction
    end
    object CompReportAction: TAction
      Caption = #1057#1074#1086#1076#1085#1072#1103
      OnExecute = CompReportActionExecute
    end
    object WeekMissingsAction: TAction
      Caption = #1059#1095#1077#1090#1072' '#1087#1088#1086#1087#1091#1089#1082#1086#1074' '#1079#1072' '#1085#1077#1076#1077#1083#1102
      OnExecute = WeekMissingsActionExecute
    end
    object SemesterSummaryAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1080' '#1087#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1089#1077#1084#1077#1089#1090#1088
      OnExecute = SemesterSummaryActionExecute
    end
    object MounthSummaryAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1080' '#1087#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1084#1077#1089#1103#1094
      OnExecute = MounthSummaryClick
    end
    object StudentCardAction: TAction
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnExecute = StudentCardActionExecute
    end
    object DetailedMounthMissingsRepAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1087#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1084#1077#1089#1103#1094
      OnExecute = DetailedMounthMissingsRepActionExecute
    end
    object DiplomeResultsRepAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1079#1072#1097#1080#1090#1099' '#1076#1080#1087#1083#1086#1084#1085#1099#1093' '#1087#1088#1086#1077#1082#1090#1086#1074
      OnExecute = DiplomeResultsRepActionExecute
    end
    object GOSResultsRepAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1079#1072#1097#1080#1090#1099' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
      OnExecute = GOSResultsRepActionExecute
    end
    object GraduateReportAction: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1099#1087#1091#1089#1082#1077' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1079#1072' '#1075#1086#1076
      OnExecute = GraduateReportActionExecute
    end
    object ExortListAction: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1075#1088#1091#1087#1087#1099
      OnExecute = ExortListActionExecute
    end
    object FinalStudyResultsAction: TAction
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1080' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      OnExecute = FinalStudyResultsActionExecute
    end
    object SemesterSpecSummaryAction: TAction
      Caption = #1048#1090#1086#1075#1080' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1080' '#1087#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1089#1077#1084#1077#1089#1090#1088' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'...'
      OnExecute = SemesterSpecSummaryActionExecute
    end
    object KvalificationExamReportAction: TAction
      Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
      OnExecute = KvalificationExamReportActionExecute
    end
    object StipendiaListAction: TAction
      Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077' '#1089#1090#1080#1087#1077#1085#1076#1080#1080
      OnExecute = StipendiaListActionExecute
    end
  end
  object GroupPopupMenu: TPopupMenu
    Left = 196
    object MissItem: TMenuItem
      Caption = #1055#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1100
      OnClick = MissItemClick
    end
    object SemestersManItem: TMenuItem
      Caption = #1057#1077#1084#1077#1089#1090#1088#1099
      OnClick = SemestersManItemClick
    end
    object PracticsItem: TMenuItem
      Caption = #1055#1088#1072#1082#1090#1080#1082#1072' '#1074' '#1074#1099#1087#1080#1089#1082#1091'...'
      OnClick = PracticsItemClick
    end
    object N32: TMenuItem
      Caption = '-'
    end
    object N16: TMenuItem
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1080
      object N13: TMenuItem
        Action = WeekMissingsAction
      end
      object N27: TMenuItem
        Action = MissActionItem
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Action = MounthReportAction
      end
      object N37: TMenuItem
        Action = MounthMarksReportAction
      end
      object N42: TMenuItem
        Action = DetailedMounthMissingsRepAction
      end
      object N46: TMenuItem
        Action = DiplomeResultsRepAction
      end
      object N47: TMenuItem
        Action = GOSResultsRepAction
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Action = TestReportItem
      end
      object N4: TMenuItem
        Action = CompReportAction
      end
      object N60: TMenuItem
        Action = KvalificationExamReportAction
      end
    end
    object N51: TMenuItem
      Action = ExortListAction
    end
    object N34: TMenuItem
      Caption = '-'
    end
    object ChangeGroupItem: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ChangeGroupItemClick
    end
    object DeleteGroupItem: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteGroupItemClick
    end
    object N14: TMenuItem
      Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1072#1088#1093#1080#1074
      OnClick = N14Click
    end
  end
  object StudentsPopupMenu: TPopupMenu
    Left = 224
    object ChangeItem: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ChangeItemClick
    end
    object AddItem: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = AddItemClick
    end
    object N58: TMenuItem
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074
      OnClick = N58Click
    end
    object N39: TMenuItem
      Caption = '-'
    end
    object N40: TMenuItem
      Action = StudentCardAction
    end
    object N59: TMenuItem
      Caption = '-'
    end
    object DeleteItem: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' ('#1086#1090#1095#1080#1089#1083#1080#1090#1100')'
      OnClick = DeleteItemClick
    end
  end
  object Command: TADOCommand
    Connection = Connection
    Parameters = <>
    Left = 400
  end
  object DeletedPopupMenu: TPopupMenu
    Left = 252
    object N43: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = DeletedStudentDetailsMenuItemClick
    end
    object N29: TMenuItem
      Caption = '-'
    end
    object CmdDelMenuItem: TMenuItem
      Caption = #1055#1077#1088#1077#1089#1084#1086#1090#1088#1077#1090#1100' '#1087#1088#1080#1095#1080#1085#1091
      OnClick = CmdErMenuItemClick
    end
    object RestoreItem: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = RestoreItemClick
    end
  end
  object DelDataSource: TDataSource
    DataSet = DelQuery
    OnDataChange = DelDataSourceDataChange
    Left = 500
  end
  object DelQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM students, groups, commands '
      'WHERE gr_pcode = st_grcode AND'
      'st_Attributes > 0 AND st_pcode = cm_stcode;')
    Left = 528
  end
  object ErQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from students, groups where gr_pcode = st_grcode and st' +
        '_Attributes = 1;')
    Left = 464
  end
  object ErDataSource: TDataSource
    DataSet = ErQuery
    OnDataChange = ErDataSourceDataChange
    Left = 435
  end
  object ErPopupMenu: TPopupMenu
    Left = 280
    object CmdErMenuItem: TMenuItem
      Caption = #1055#1077#1088#1077#1089#1084#1086#1090#1088#1077#1090#1100' '#1087#1088#1080#1095#1080#1085#1091
      OnClick = CmdErMenuItemClick
    end
    object DeleteErStudentItem: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteErStudentItemClick
    end
    object EraseAllItem: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
      OnClick = EraseAllItemClick
    end
    object RestoreErStudentItem: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = RestoreErStudentItemClick
    end
  end
  object ArGroupQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Groups WHERE (gr_Attributes & 4) > 0;')
    Left = 592
    Top = 32
  end
  object ArStudentsQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT st_pcode, st_FName, st_MName, st_LName, '
      'st_Name, st_FullName, st_BirthDate, st_grcode '
      'FROM Students WHERE (st_Attributes & 4) > 0;')
    Left = 656
    Top = 32
  end
  object ArGroupDataSource: TDataSource
    DataSet = ArGroupQuery
    OnDataChange = ArGroupDataSourceDataChange
    Left = 563
    Top = 32
  end
  object ArStudentsDataSource: TDataSource
    DataSet = ArStudentsQuery
    Left = 628
    Top = 32
  end
  object ArcPopupMenu: TPopupMenu
    Left = 308
    object ArcStudentDetailsMenuitem: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = ArcStudentDetailsMenuitemClick
    end
  end
  object AddCourseQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 592
    Top = 80
  end
  object AcademQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 664
    Top = 80
  end
  object AddCourseDataSource: TDataSource
    DataSet = AddCourseQuery
    Left = 560
    Top = 80
  end
  object AcademDataSource: TDataSource
    DataSet = AcademQuery
    Left = 632
    Top = 80
  end
  object ArcGrPopupMenu: TPopupMenu
    Left = 152
    Top = 80
    object N54: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = N54Click
    end
  end
  object FindQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT gr_Name, st_FName, st_MName, st_LName, st_BirthDate, '
      '  st_inYear, st_OutYear, st_Attributes, '
      '(pl_fullname + st_Address) AS st_Address'
      'FROM Students, Groups, Places'
      'WHERE (st_grcode = gr_pcode) AND (st_plcode = pl_pcode)')
    Left = 16
    Top = 136
  end
  object FindDataSource: TDataSource
    DataSet = FindQuery
    Left = 48
    Top = 136
  end
  object AcademPopupMenu: TPopupMenu
    Left = 196
    Top = 32
    object MenuItem1: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = AcademStudentPropertiesClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = AcademStudentRestoreClick
    end
  end
end
