object StudyPlanDetailsForm: TStudyPlanDetailsForm
  Left = 759
  Top = 311
  Width = 722
  Height = 534
  Caption = #1044#1077#1090#1072#1083#1080' '#1087#1083#1072#1085#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    714
    507)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseBtn: TButton
    Left = 638
    Top = 480
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 714
    Height = 473
    ActivePage = SubjectsTabSheet
    Align = alTop
    TabIndex = 0
    TabOrder = 1
    object SubjectsTabSheet: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
      OnHide = SubjectsTabSheetHide
      OnShow = SubjectsTabSheetShow
      object SubjectsDataGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 706
        Height = 409
        Align = alTop
        DataSource = SubjectsDataSource
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
            FieldName = 'psb_name'
            Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 360
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'psb_shortname'
            Title.Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 238
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sbt_ShortType'
            Title.Caption = #1058#1080#1087
            Width = 69
            Visible = True
          end>
      end
      object AddSubjectBtn: TButton
        Left = 0
        Top = 416
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = AddSubjectBtnClick
      end
      object EditSubjectBtn: TButton
        Left = 75
        Top = 416
        Width = 75
        Height = 25
        Caption = #1055#1088#1072#1074#1082#1072
        TabOrder = 2
        OnClick = EditSubjectBtnClick
      end
      object DelSubjectBtn: TButton
        Left = 160
        Top = 416
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = DelSubjectBtnClick
      end
    end
    object CoursesTabSheet: TTabSheet
      Caption = #1050#1091#1088#1089#1099' '#1080' '#1089#1077#1084#1077#1089#1090#1088#1099
      ImageIndex = 1
      OnHide = CoursesTabSheetHide
      OnShow = CoursesTabSheetShow
      object Splitter1: TSplitter
        Left = 337
        Top = 0
        Width = 5
        Height = 445
        Cursor = crHSplit
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 445
        Align = alLeft
        Caption = #1050#1091#1088#1089#1099
        TabOrder = 0
        object CourseDataGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 333
          Height = 394
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = CourseDataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pcs_number'
              Title.Caption = #1050#1091#1088#1089
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcs_semesters'
              Title.Caption = #1057#1077#1084#1077#1089#1090#1088#1086#1074' '#1074' '#1082#1091#1088#1089#1077
              Width = 156
              Visible = True
            end>
        end
        object AddCourseBtn: TButton
          Left = 5
          Top = 416
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = AddCourseBtnClick
        end
        object EditCourseBtn: TButton
          Left = 80
          Top = 416
          Width = 75
          Height = 25
          Caption = #1055#1088#1072#1074#1082#1072
          TabOrder = 2
          OnClick = EditCourseBtnClick
        end
        object DelCourseBtn: TButton
          Left = 168
          Top = 416
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = DelCourseBtnClick
        end
      end
      object SemesterGroupBox: TGroupBox
        Left = 342
        Top = 0
        Width = 364
        Height = 445
        Align = alClient
        Caption = #1057#1077#1084#1077#1089#1090#1088#1099
        TabOrder = 1
        object SemesterDataGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 360
          Height = 394
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = SemesterDataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'psm_number'
              Title.Caption = #1057#1077#1084#1077#1089#1090#1088
              Width = 187
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'psm_length'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1076#1077#1083#1100
              Width = 136
              Visible = True
            end>
        end
        object AddSemesterBtn: TButton
          Left = 5
          Top = 416
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = AddSemesterBtnClick
        end
        object EditSemesterBtn: TButton
          Left = 80
          Top = 416
          Width = 75
          Height = 25
          Caption = #1055#1088#1072#1074#1082#1072
          TabOrder = 2
          OnClick = EditSemesterBtnClick
        end
        object DelSemesterBtn: TButton
          Left = 168
          Top = 416
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = DelSemesterBtnClick
        end
      end
    end
  end
  object SubjectsQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PlanSubjects, SbTypes'
      'WHERE (sbt_pcode = psb_type);')
    Left = 16
    Top = 72
  end
  object SubjectsDataSource: TDataSource
    DataSet = SubjectsQuery
    OnDataChange = SubjectsDataSourceDataChange
    Left = 48
    Top = 72
  end
  object SQLCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 96
    Top = 32
  end
  object CourseQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pcs_pcode, pcs_number, COUNT(psm_pcode) AS pcs_semesters ' +
        'FROM PlanCourses, PlanSemesters'
      '  WHERE (pcs_pcode = psm_pcscode) GROUP BY pcs_pcode, pcs_number')
    Left = 16
    Top = 120
  end
  object CourseDataSource: TDataSource
    DataSet = CourseQuery
    OnDataChange = CourseDataSourceDataChange
    Left = 48
    Top = 120
  end
  object SemestersQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PlanSemesters;')
    Left = 16
    Top = 168
  end
  object SemesterDataSource: TDataSource
    DataSet = SemestersQuery
    Left = 48
    Top = 168
  end
end
