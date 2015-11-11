object SubjectSelectForm: TSubjectSelectForm
  Left = 237
  Top = 346
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1077#1076#1084#1077#1090
  ClientHeight = 339
  ClientWidth = 338
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
  object SubjGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 338
    Height = 305
    Align = alTop
    DataSource = SubjDataSource
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
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 296
        Visible = True
      end>
  end
  object OkBtn: TButton
    Left = 80
    Top = 312
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 160
    Top = 312
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object SubjQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Subjects ORDER BY sb_Name;')
    Top = 312
  end
  object SubjDataSource: TDataSource
    DataSet = SubjQuery
    Left = 32
    Top = 312
  end
end
