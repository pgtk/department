object CardForm: TCardForm
  Left = 633
  Top = 285
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
  ClientHeight = 521
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    571
    521)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseBtn: TButton
    Left = 492
    Top = 493
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
    Width = 571
    Height = 489
    ActivePage = SubjSheet
    Align = alTop
    TabIndex = 0
    TabOrder = 1
    object SubjSheet: TTabSheet
      Caption = #1055#1088#1077#1076#1084#1077#1090#1099
      DesignSize = (
        563
        461)
      object CardGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 431
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = CardsSource
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
            FieldName = 'sbt_ShortType'
            Title.Caption = #1064#1080#1092#1088
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1055#1088#1077#1076#1084#1077#1090
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fnm_Hours'
            Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fnm_Mark'
            Title.Caption = #1054#1094#1077#1085#1082#1072
            Width = 53
            Visible = True
          end>
      end
      object AddBtn: TButton
        Left = 0
        Top = 436
        Width = 127
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = AddBtnClick
      end
      object DetailBtn: TButton
        Left = 128
        Top = 436
        Width = 127
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 2
        OnClick = DetailBtnClick
      end
      object DelBtn: TButton
        Left = 256
        Top = 436
        Width = 127
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = DelBtnClick
      end
      object PrintBtn: TButton
        Left = 393
        Top = 436
        Width = 75
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        TabOrder = 4
        OnClick = PrintBtnClick
      end
    end
    object CourseSheet: TTabSheet
      Caption = #1050#1091#1088#1089#1086#1074#1099#1077
      ImageIndex = 1
      DesignSize = (
        563
        461)
      object CourseGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 295
        Align = alTop
        DataSource = CourseSource
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
            FieldName = 'sb_Name'
            Title.Caption = #1055#1088#1077#1076#1084#1077#1090
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cw_Hours'
            Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sm_Number'
            Title.Caption = #1057#1077#1084#1077#1089#1090#1088
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cwm_Mark'
            Title.Caption = #1054#1094#1077#1085#1082#1072
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cwm_theme'
            Title.Caption = #1058#1077#1084#1072
            Width = 183
            Visible = True
          end>
      end
      object ThemeBtn: TButton
        Left = 0
        Top = 436
        Width = 165
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        Caption = #1058#1077#1084#1072' '#1082#1091#1088#1089#1086#1074#1086#1075#1086
        TabOrder = 1
        OnClick = ThemeBtnClick
      end
    end
    object PractSheet: TTabSheet
      Caption = #1055#1088#1072#1082#1090#1080#1082#1072
      ImageIndex = 2
      object PractGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 325
        Align = alClient
        DataSource = PractSource
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
            FieldName = 'fpk_Title'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpk_Length'
            Title.Caption = #1044#1083#1080#1085#1072
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpm_Mark'
            Title.Caption = #1054#1094#1077#1085#1082#1072
            Width = 61
            Visible = True
          end>
      end
    end
  end
  object CardsQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FnMarks, Subjects, SbTypes'
      'WHERE (sb_sbtcode = sbt_pcode) AND (fnm_sbcode = sb_pcode);')
    Left = 344
    Top = 358
  end
  object CardsSource: TDataSource
    DataSet = CardsQuery
    OnDataChange = CardsSourceDataChange
    Left = 376
    Top = 358
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 408
    Top = 358
  end
  object CourseQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT cwm_Mark, sb_Name, sm_Number, cw_Hours, cwm_pcode, cwm_th' +
        'eme'
      'FROM CourseWorks, Semesters, CwMarks, Subjects'
      'WHERE (cw_pcode = cwm_cwcode) AND (cw_sbcode = sb_pcode)'
      'AND (cw_smcode = sm_pcode);')
    Top = 360
  end
  object CourseSource: TDataSource
    DataSet = CourseQuery
    Left = 32
    Top = 360
  end
  object PractSource: TDataSource
    DataSet = PractQuery
    Left = 104
    Top = 360
  end
  object PractQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT fpk_Title, fpm_Mark, fpk_Length '
      'FROM FnPractics, FpMarks'
      'WHERE (fpk_pcode = fpm_fpcode)')
    Left = 72
    Top = 360
  end
end
