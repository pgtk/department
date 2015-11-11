object ParamForm: TParamForm
  Left = 488
  Top = 141
  Width = 496
  Height = 372
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
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
    488
    345)
  PixelsPerInch = 96
  TextHeight = 13
  object SpecGroupBox: TGroupBox
    Left = 0
    Top = 153
    Width = 488
    Height = 144
    Align = alTop
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    TabOrder = 0
    object SpecGrid: TDBGrid
      Left = 2
      Top = 15
      Width = 484
      Height = 127
      Align = alClient
      DataSource = SpecDataSource
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
          FieldName = 'sp_Key'
          Title.Caption = #1064#1080#1092#1088
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sp_Name'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 398
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 488
    Height = 153
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 88
      Height = 13
      Caption = #1047#1072#1074'. '#1054#1090#1076#1077#1083#1077#1085#1080#1077#1084
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 54
      Height = 13
      Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
    end
    object NameEdit: TEdit
      Left = 8
      Top = 32
      Width = 473
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object MasterEdit: TEdit
      Left = 8
      Top = 72
      Width = 473
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object SecretarEdit: TEdit
      Left = 7
      Top = 120
      Width = 473
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object OkBtn: TButton
    Left = 216
    Top = 312
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object SpecQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Specialities;')
    Left = 8
    Top = 216
  end
  object SpecDataSource: TDataSource
    DataSet = SpecQuery
    Left = 40
    Top = 216
  end
end
