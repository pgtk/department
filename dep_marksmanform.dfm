object MarksManForm: TMarksManForm
  Left = 1001
  Top = 387
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1054#1094#1077#1085#1082#1080
  ClientHeight = 381
  ClientWidth = 477
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
    477
    381)
  PixelsPerInch = 96
  TextHeight = 13
  object MarksPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 477
    Height = 335
    ActivePage = MnSheet
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabIndex = 0
    TabOrder = 0
    object MnSheet: TTabSheet
      Caption = #1047#1072' '#1084#1077#1089#1103#1094
      ImageIndex = 2
      DesignSize = (
        469
        307)
      object Label1: TLabel
        Left = 176
        Top = 274
        Width = 18
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1043#1086#1076
      end
      object Label2: TLabel
        Left = 312
        Top = 275
        Width = 33
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1052#1077#1089#1103#1094
      end
      object MnGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 261
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = MnDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = MDetailBtnClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 364
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mk_Mounth'
            Title.Caption = #1052#1077#1089#1103#1094
            Visible = True
          end>
      end
      object MnAddBtn: TButton
        Left = 0
        Top = 272
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = MnAddBtnClick
      end
      object MDetailBtn: TButton
        Left = 80
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 2
        OnClick = MDetailBtnClick
      end
      object MounthComboBox: TComboBox
        Left = 352
        Top = 268
        Width = 113
        Height = 21
        Anchors = [akLeft, akBottom]
        ItemHeight = 13
        TabOrder = 3
        OnChange = DateChange
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
        Left = 200
        Top = 268
        Width = 81
        Height = 22
        Anchors = [akLeft, akBottom]
        MaxValue = 2900
        MinValue = 1900
        TabOrder = 4
        Value = 1900
        OnChange = DateChange
      end
    end
    object CpSheet: TTabSheet
      Caption = #1047#1072#1095#1077#1090#1099
      ImageIndex = 1
      DesignSize = (
        469
        307)
      object CpGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 261
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = CpDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = CDetailBtnClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cp_Teacher'
            Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cp_Hours'
            Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
            Width = 60
            Visible = True
          end>
      end
      object CDetailBtn: TButton
        Left = 0
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 1
        OnClick = CDetailBtnClick
      end
    end
    object ExSheet: TTabSheet
      Caption = #1069#1082#1079#1072#1084#1077#1085#1099
      DesignSize = (
        469
        307)
      object ExamGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 261
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = ExDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = EDetailBtnClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ex_Teacher'
            Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ex_Hours'
            Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
            Width = 60
            Visible = True
          end>
      end
      object EDetailBtn: TButton
        Left = 0
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 1
        OnClick = EDetailBtnClick
      end
    end
    object CwSheet: TTabSheet
      Caption = #1050#1091#1088#1089#1086#1074#1099#1077
      ImageIndex = 3
      DesignSize = (
        469
        307)
      object CwGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 261
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = CwSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = CwDetailBtnClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cw_Teacher'
            Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cw_Hours'
            Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
            Width = 61
            Visible = True
          end>
      end
      object CwDetailBtn: TButton
        Left = 0
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 1
        OnClick = CwDetailBtnClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1043#1086#1089'. '#1101#1082#1079#1072#1084#1077#1085#1099
      ImageIndex = 4
      DesignSize = (
        469
        307)
      object GOSGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 261
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = GOSSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GOSDetailBtnClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 427
            Visible = True
          end>
      end
      object GOSAddBtn: TButton
        Left = 0
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = GOSAddBtnClick
      end
      object GOSDetailBtn: TButton
        Left = 80
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 2
        OnClick = GOSDetailBtnClick
      end
      object GOSDelBtn: TButton
        Left = 160
        Top = 268
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = GOSDelBtnClick
      end
    end
  end
  object OkBtn: TButton
    Left = 208
    Top = 350
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object ExQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Exams, Subjects WHERE ex_sbcode = sb_pcode;')
    Left = 16
    Top = 160
  end
  object CpQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Checkpoints, Subjects WHERE cp_sbcode = sb_pcode;')
    Left = 16
    Top = 192
  end
  object ExDataSource: TDataSource
    DataSet = ExQuery
    OnDataChange = ExDataSourceDataChange
    Left = 48
    Top = 160
  end
  object CpDataSource: TDataSource
    DataSet = CpQuery
    OnDataChange = CpDataSourceDataChange
    Left = 48
    Top = 192
  end
  object MnQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(mk_Mark) AS mk_Mark, mk_Mounth, mk_smcode, sb_Name '
      'FROM Marks, Subjects WHERE mk_sbcode = sb_pcode'
      'GROUP BY mk_Mounth, mk_smcode, sb_Name;')
    Left = 16
    Top = 96
  end
  object MnDataSource: TDataSource
    DataSet = MnQuery
    OnDataChange = MnDataSourceDataChange
    Left = 48
    Top = 96
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 96
    Top = 64
  end
  object CwSource: TDataSource
    DataSet = CwQuery
    OnDataChange = CwSourceDataChange
    Left = 48
    Top = 128
  end
  object CwQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CourseWorks, Subjects WHERE cw_sbcode = sb_pcode;')
    Left = 16
    Top = 128
  end
  object GOSQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT sb_Name, sb_pcode '
      'FROM GOSMarks, Subjects '
      'WHERE gsm_sbcode = sb_pcode')
    Left = 16
    Top = 64
  end
  object GOSSource: TDataSource
    DataSet = GOSQuery
    OnDataChange = GOSSourceDataChange
    Left = 48
    Top = 64
  end
end
