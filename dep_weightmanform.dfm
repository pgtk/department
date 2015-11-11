object WeightManForm: TWeightManForm
  Left = 197
  Top = 252
  BorderStyle = bsSingle
  Caption = #1053#1072#1075#1088#1091#1079#1082#1072
  ClientHeight = 367
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    757
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseBtn: TButton
    Left = 682
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 0
  end
  object WeightGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 757
    Height = 329
    Align = alTop
    DataSource = WeightDataSource
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
        FieldName = 'gr_Name'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sb_Name'
        Title.Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_StCount'
        Title.Caption = #1050#1086#1085#1090#1080#1085#1075#1077#1085#1090
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_S1Hours'
        Title.Caption = '1-'#1103' '#1089#1077#1089#1089#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_S2Hours'
        Title.Caption = '2-'#1103' '#1089#1077#1089#1089#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_Checkpoints'
        Title.Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_Course'
        Title.Caption = #1050#1091#1088#1089#1086#1074#1099#1077
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_Exams'
        Title.Caption = #1069#1082#1079#1072#1084#1077#1085#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wg_All'
        Title.Caption = #1042#1089#1077#1075#1086
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_Name'
        Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        Width = 154
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 75
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 150
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = DelBtnClick
  end
  object WeightQuery: TADOQuery
    Active = True
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Weights, Groups, Subjects, Workers '
      'WHERE wg_grcode = gr_pcode '
      'AND wg_sbcode = sb_pcode '
      'AND wg_wkcode = wk_pcode'
      'ORDER BY wg_grcode, wg_wkcode;')
    Left = 232
    Top = 336
  end
  object WeightCommand: TADOCommand
    Parameters = <>
    Left = 320
    Top = 336
  end
  object WeightDataSource: TDataSource
    DataSet = WeightQuery
    Left = 264
    Top = 336
  end
end
