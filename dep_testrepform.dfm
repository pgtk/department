object TestReportForm: TTestReportForm
  Left = 277
  Top = 322
  Width = 809
  Height = 480
  VertScrollBar.Position = 81
  Caption = #1047#1072#1095#1077#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object TestRep: TQuickRep
    Left = 0
    Top = -81
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = MainForm.StudentsQuery
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      50
      2970
      100
      2100
      150
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageHeader: TQRBand
      Left = 57
      Top = 38
      Width = 718
      Height = 144
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        381
        1899.70833333333)
      BandType = rbTitle
      object MinistryLabel: TQRLabel
        Left = 218
        Top = 0
        Width = 281
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          576.791666666667
          0
          743.479166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1060#1077#1076#1077#1088#1072#1083#1100#1085#1086#1077' '#1072#1075#1077#1085#1089#1090#1074#1086' '#1087#1086' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1102
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SchoolNameLabel: TQRLabel
        Left = 0
        Top = 16
        Width = 719
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          0
          42.3333333333333
          1902.35416666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1054#1059' '#1057#1055#1054' '#1055#1088#1086#1082#1086#1087#1100#1077#1074#1089#1082#1080#1081' '#1075#1086#1088#1085#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1083#1083#1077#1076#1078' '#1080#1084'. '#1042'.'#1055'. '#1056#1086#1084#1072#1085#1086#1074#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 253
        Top = 45
        Width = 212
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          669.395833333333
          119.0625
          560.916666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1047#1072#1095#1077#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object DescLabel: TQRLabel
        Left = 294
        Top = 68
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          777.875
          179.916666666667
          341.3125)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = True
        Caption = 'DescriptionLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SpecLabel: TQRLabel
        Left = 0
        Top = 111
        Width = 716
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          0
          293.6875
          1894.41666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'SpecLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object TimeLabel: TQRLabel
        Left = 322
        Top = 90
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          851.958333333333
          238.125
          193.145833333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = True
        Caption = 'TimeLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object TableHeader: TQRBand
      Left = 57
      Top = 182
      Width = 718
      Height = 85
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        224.895833333333
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 32
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          0
          0
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel1'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 4
        Top = 25
        Width = 25
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          10.5833333333333
          66.1458333333333
          66.1458333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8470' '#1087'/'#1087
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 31
        Top = 0
        Width = 194
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          82.0208333333333
          0
          513.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 35
        Top = 37
        Width = 163
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          92.6041666666667
          97.8958333333333
          431.270833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch1: TQRImage
        Left = 225
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          595.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch2: TQRImage
        Left = 249
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          658.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch3: TQRImage
        Left = 273
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          722.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch4: TQRImage
        Left = 297
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          785.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch5: TQRImage
        Left = 321
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          849.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch6: TQRImage
        Left = 345
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          912.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch7: TQRImage
        Left = 369
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          976.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch8: TQRImage
        Left = 393
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1039.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch9: TQRImage
        Left = 417
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1103.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch10: TQRImage
        Left = 441
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1166.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch11: TQRImage
        Left = 465
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1230.3125
          2.64583333333333
          66.1458333333333)
      end
      object MI: TQRImage
        Left = 633
        Top = 20
        Width = 25
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          174.625
          1674.8125
          52.9166666666667
          66.1458333333333)
      end
      object ML: TQRImage
        Left = 657
        Top = 20
        Width = 25
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          174.625
          1738.3125
          52.9166666666667
          66.1458333333333)
      end
      object MA: TQRImage
        Left = 681
        Top = 20
        Width = 25
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          174.625
          1801.8125
          52.9166666666667
          66.1458333333333)
      end
      object QRLabel24: TQRLabel
        Left = 632
        Top = 0
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1672.16666666667
          0
          193.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1088#1086#1087#1091#1089#1082#1080
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Ch15: TQRImage
        Left = 561
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1484.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch14: TQRImage
        Left = 537
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1420.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch13: TQRImage
        Left = 513
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1357.3125
          2.64583333333333
          66.1458333333333)
      end
      object Ch12: TQRImage
        Left = 489
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1293.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch16: TQRImage
        Left = 585
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1547.8125
          2.64583333333333
          66.1458333333333)
      end
      object Ch17: TQRImage
        Left = 609
        Top = 1
        Width = 25
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          227.541666666667
          1611.3125
          2.64583333333333
          66.1458333333333)
      end
    end
    object TableEnd: TQRBand
      Left = 57
      Top = 287
      Width = 718
      Height = 71
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        187.854166666667
        1899.70833333333)
      BandType = rbSummary
      object QRLabel18: TQRLabel
        Left = 0
        Top = 0
        Width = 225
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          0
          0
          595.3125)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel18'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 13
        Top = 19
        Width = 184
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          34.3958333333333
          50.2708333333333
          486.833333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1086#1076#1087#1080#1089#1080' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 224
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          592.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel32'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 248
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          656.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel33'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 272
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          719.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel34'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 296
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          783.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel35'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 320
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          846.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel36'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 344
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          910.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel37'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 368
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          973.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel38'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 392
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1037.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel39'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 416
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1100.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel40'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 440
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1164.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel41'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 464
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1227.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel42'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 631
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1669.52083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel43'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 655
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1733.02083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel43'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 679
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1796.52083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel43'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 560
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1481.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel42'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 536
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1418.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel41'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 512
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1354.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel40'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 488
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1291.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel39'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 584
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1545.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel41'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 608
        Top = 0
        Width = 25
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          187.854166666667
          1608.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel42'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object TableDetail: TQRBand
      Left = 57
      Top = 267
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = TableHeader
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbDetail
      object NumLabel: TQRLabel
        Left = 0
        Top = 0
        Width = 32
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          0
          0
          84.6666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NumLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = NumLabelPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object StudNameText: TQRDBText
        Left = 31
        Top = 0
        Width = 194
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          82.0208333333333
          0
          513.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MainForm.StudentsQuery
        DataField = 'st_Name'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = StudNameTextPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 224
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          592.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 248
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          656.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 272
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          719.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 296
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          783.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 320
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          846.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 344
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          910.166666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 368
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          973.666666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 392
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1037.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 416
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1100.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 440
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1164.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 464
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1227.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 631
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1669.52083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 655
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1733.02083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 679
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1796.52083333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 560
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1481.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 536
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1418.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 512
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1354.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 488
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1291.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 584
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1545.16666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 608
        Top = 0
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1608.66666666667
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
