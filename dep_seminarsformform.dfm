object DetailForm: TDetailForm
  Left = 587
  Top = 513
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1077#1090#1072#1083#1080
  ClientHeight = 347
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    476
    347)
  PixelsPerInch = 96
  TextHeight = 13
  object AddBtn: TButton
    Left = 0
    Top = 310
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = AddBtnClick
  end
  object DelBtn: TButton
    Left = 77
    Top = 310
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 396
    Top = 310
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object SeminarsGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 476
    Height = 297
    Align = alTop
    DataSource = DetailSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'st_FullName'
        Title.Caption = #1057#1090#1091#1076#1077#1085#1090
        Width = 269
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gr_Name'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 165
        Visible = True
      end>
  end
  object DetailSource: TDataSource
    DataSet = DetailQuery
    OnDataChange = DetailSourceDataChange
    Left = 8
    Top = 208
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 408
    Top = 208
  end
  object DetailQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT st_Name, st_pcode, gr_Name FROM Sessions, Students, Group' +
        's '
      'WHERE (ss_stcode = st_pcode) AND (st_grcode = gr_pcode)')
    Left = 40
    Top = 208
  end
end
