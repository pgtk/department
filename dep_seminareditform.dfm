object DetailEditForm: TDetailEditForm
  Left = 220
  Top = 400
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  ClientHeight = 413
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  DesignSize = (
    344
    413)
  PixelsPerInch = 96
  TextHeight = 13
  object OkBtn: TButton
    Left = 99
    Top = 378
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 179
    Top = 378
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object StudentListBox: TCheckListBox
    Left = 0
    Top = 0
    Width = 344
    Height = 369
    Align = alTop
    ItemHeight = 13
    TabOrder = 2
  end
end
