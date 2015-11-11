object DateLookupForm: TDateLookupForm
  Left = 242
  Top = 106
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #1044#1072#1090#1072
  ClientHeight = 191
  ClientWidth = 190
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Calendar: TMonthCalendar
    Left = 0
    Top = 0
    Width = 191
    Height = 154
    Date = 0.559329236108169
    TabOrder = 0
  end
  object OkBtn: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 96
    Top = 160
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
