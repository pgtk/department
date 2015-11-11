object RestoreStudentForm: TRestoreStudentForm
  Left = 636
  Top = 140
  Width = 300
  Height = 355
  Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
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
    292
    328)
  PixelsPerInch = 96
  TextHeight = 13
  object OtherGroupCheckBox: TCheckBox
    Left = 7
    Top = 8
    Width = 277
    Height = 17
    Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1074' '#1076#1088#1091#1075#1091#1102' '#1075#1088#1091#1087#1087#1091':'
    TabOrder = 0
    OnClick = OtherGroupCheckBoxClick
  end
  object GroupGrid: TDBGrid
    Left = 2
    Top = 32
    Width = 287
    Height = 249
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = MainForm.GroupDataSource
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
        Width = 235
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 72
    Top = 295
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 152
    Top = 295
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
end
