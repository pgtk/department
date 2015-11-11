object CompReportForm: TCompReportForm
  Left = 379
  Top = 248
  Width = 824
  Height = 528
  Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CompRep: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = CompRepBeforePrint
    DataSet = CompQuery
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
      50
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
      Left = 19
      Top = 38
      Width = 756
      Height = 125
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
        330.729166666667
        2000.25)
      BandType = rbTitle
      object MinistryLabel: TQRLabel
        Left = 255
        Top = 0
        Width = 246
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          674.6875
          0
          650.875)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1060#1077#1076#1077#1088#1072#1083#1100#1085#1086#1077' '#1072#1075#1077#1085#1089#1090#1074#1086' '#1087#1086' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1102
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SchoolNameLabel: TQRLabel
        Left = 0
        Top = 16
        Width = 755
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          0
          42.3333333333333
          1997.60416666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1054#1059' '#1057#1055#1054' '#1055#1088#1086#1082#1086#1087#1100#1077#1074#1089#1082#1080#1081' '#1075#1086#1088#1085#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1083#1083#1077#1076#1078' '#1080#1084'. '#1042'.'#1055'. '#1056#1086#1084#1072#1085#1086#1074#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 277
        Top = 44
        Width = 202
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          732.895833333333
          116.416666666667
          534.458333333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
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
        Left = 345
        Top = 68
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          912.8125
          179.916666666667
          169.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DescLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SpecLabel: TQRLabel
        Left = 0
        Top = 85
        Width = 754
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.1875
          0
          224.895833333333
          1994.95833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'SpecLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object TableHeader: TQRBand
      Left = 19
      Top = 163
      Width = 756
      Height = 93
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
        246.0625
        2000.25)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = -1
        Top = 0
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          -2.64583333333333
          0
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel1'
        Color = clWhite
        OnPrint = QRLabel4Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = -3
        Top = 29
        Width = 26
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          -7.9375
          76.7291666666667
          68.7916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8470' '#1087'/'#1087
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 22
        Top = 0
        Width = 135
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          58.2083333333333
          0
          357.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        OnPrint = QRLabel4Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 155
        Top = 0
        Width = 135
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625
          410.104166666667
          0
          357.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1069#1082#1079#1072#1084#1077#1085#1072#1094#1080#1086#1085#1085#1099#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 289
        Top = 0
        Width = 301
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625
          764.645833333333
          0
          796.395833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1047#1072#1095#1077#1090#1085#1099#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 26
        Top = 43
        Width = 110
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          68.7916666666667
          113.770833333333
          291.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel44: TQRLabel
        Left = 682
        Top = 0
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          50.2708333333333
          1804.45833333333
          0
          187.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1088#1086#1087#1091#1089#1082#1080
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ExImage2: TQRImage
        Left = 178
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          470.958333333333
          44.9791666666667
          63.5)
      end
      object ExImage3: TQRImage
        Left = 201
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          531.8125
          44.9791666666667
          63.5)
      end
      object ExImage4: TQRImage
        Left = 224
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          592.666666666667
          44.9791666666667
          63.5)
      end
      object ExImage5: TQRImage
        Left = 247
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          653.520833333333
          44.9791666666667
          63.5)
      end
      object ExImage6: TQRImage
        Left = 270
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          714.375
          44.9791666666667
          63.5)
      end
      object ChImage1: TQRImage
        Left = 292
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          772.583333333333
          44.9791666666667
          63.5)
      end
      object ChImage2: TQRImage
        Left = 315
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          833.4375
          44.9791666666667
          63.5)
      end
      object ChImage3: TQRImage
        Left = 338
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          894.291666666667
          44.9791666666667
          63.5)
      end
      object ChImage4: TQRImage
        Left = 361
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          955.145833333334
          44.9791666666667
          63.5)
      end
      object ChImage5: TQRImage
        Left = 384
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1016
          44.9791666666667
          63.5)
      end
      object ChImage6: TQRImage
        Left = 407
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1076.85416666667
          44.9791666666667
          63.5)
      end
      object ChImage7: TQRImage
        Left = 430
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1137.70833333333
          44.9791666666667
          63.5)
      end
      object ChImage8: TQRImage
        Left = 453
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1198.5625
          44.9791666666667
          63.5)
      end
      object ChImage9: TQRImage
        Left = 476
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1259.41666666667
          44.9791666666667
          63.5)
      end
      object ChImage10: TQRImage
        Left = 499
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1320.27083333333
          44.9791666666667
          63.5)
      end
      object ChImage11: TQRImage
        Left = 522
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1381.125
          44.9791666666667
          63.5)
      end
      object ChImage12: TQRImage
        Left = 545
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1441.97916666667
          44.9791666666667
          63.5)
      end
      object MLImage: TQRImage
        Left = 683
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1807.10416666667
          44.9791666666667
          63.5)
      end
      object MIImage: TQRImage
        Left = 706
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1867.95833333333
          44.9791666666667
          63.5)
      end
      object MAImage: TQRImage
        Left = 729
        Top = 17
        Width = 25
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1928.8125
          44.9791666666667
          66.1458333333333)
      end
      object OthImage4: TQRImage
        Left = 660
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1746.25
          44.9791666666667
          63.5)
      end
      object OthImage3: TQRImage
        Left = 637
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1685.39583333333
          44.9791666666667
          63.5)
      end
      object OthImage2: TQRImage
        Left = 614
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1624.54166666667
          44.9791666666667
          63.5)
      end
      object OthImage1: TQRImage
        Left = 591
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1563.6875
          44.9791666666667
          63.5)
      end
      object QRLabel9: TQRLabel
        Left = 589
        Top = 0
        Width = 94
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625
          1558.39583333333
          0
          248.708333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1050'.'#1056'.'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ExImage1: TQRImage
        Left = 155
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          410.104166666667
          44.9791666666667
          63.5)
      end
      object ChImage13: TQRImage
        Left = 568
        Top = 17
        Width = 24
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          209.020833333333
          1502.83333333333
          44.9791666666667
          63.5)
      end
    end
    object TableEnd: TQRBand
      Left = 19
      Top = 276
      Width = 756
      Height = 84
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        222.25
        2000.25)
      BandType = rbSummary
      object ExM3: TQRImage
        Left = 201
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          531.8125
          0
          63.5)
      end
      object ExM2: TQRImage
        Left = 178
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          470.958333333333
          0
          63.5)
      end
      object ExM4: TQRImage
        Left = 224
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          592.666666666667
          0
          63.5)
      end
      object ExM5: TQRImage
        Left = 247
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          653.520833333333
          0
          63.5)
      end
      object ChM1: TQRImage
        Left = 293
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          775.229166666667
          0
          63.5)
      end
      object ExM6: TQRImage
        Left = 270
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          714.375
          0
          63.5)
      end
      object ChM2: TQRImage
        Left = 316
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          836.083333333333
          0
          63.5)
      end
      object ChM3: TQRImage
        Left = 339
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          896.9375
          0
          63.5)
      end
      object ChM4: TQRImage
        Left = 362
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          957.791666666667
          0
          63.5)
      end
      object ChM5: TQRImage
        Left = 385
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1018.64583333333
          0
          63.5)
      end
      object ChM6: TQRImage
        Left = 408
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1079.5
          0
          63.5)
      end
      object ChM7: TQRImage
        Left = 431
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1140.35416666667
          0
          63.5)
      end
      object ChM8: TQRImage
        Left = 454
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1201.20833333333
          0
          63.5)
      end
      object ChM9: TQRImage
        Left = 477
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1262.0625
          0
          63.5)
      end
      object ChM10: TQRImage
        Left = 500
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1322.91666666667
          0
          63.5)
      end
      object ChM11: TQRImage
        Left = 523
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1383.77083333333
          0
          63.5)
      end
      object ChM12: TQRImage
        Left = 546
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1444.625
          0
          63.5)
      end
      object LMAImage: TQRImage
        Left = 683
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1807.10416666667
          0
          63.5)
      end
      object IMAImage: TQRImage
        Left = 706
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1867.95833333333
          0
          63.5)
      end
      object AMAImage: TQRImage
        Left = 729
        Top = 0
        Width = 26
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1928.8125
          0
          68.7916666666667)
      end
      object QRLabel6: TQRLabel
        Left = -1
        Top = -1
        Width = 158
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          -2.64583333333333
          -2.64583333333333
          418.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        OnPrint = QRLabel4Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 16
        Top = 28
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          74.0833333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object OthM4: TQRImage
        Left = 661
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1748.89583333333
          0
          63.5)
      end
      object OthM3: TQRImage
        Left = 638
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1688.04166666667
          0
          63.5)
      end
      object OthM2: TQRImage
        Left = 615
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1627.1875
          0
          63.5)
      end
      object OthM1: TQRImage
        Left = 592
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1566.33333333333
          0
          63.5)
      end
      object ExM1: TQRImage
        Left = 155
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          410.104166666667
          0
          63.5)
      end
      object ChM13: TQRImage
        Left = 569
        Top = 0
        Width = 24
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          219.604166666667
          1505.47916666667
          0
          63.5)
      end
    end
    object TableDetail: TQRBand
      Left = 19
      Top = 256
      Width = 756
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
        2000.25)
      BandType = rbDetail
      object NumLabel: TQRLabel
        Left = -1
        Top = 0
        Width = 24
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          -2.64583333333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NumLabel'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = NumLabelPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object StudNameText: TQRDBText
        Left = 22
        Top = 0
        Width = 135
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          58.2083333333333
          0
          357.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'StName'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = StudNameTextPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object Ex2: TQRDBText
        Left = 176
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          465.666666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ex3: TQRDBText
        Left = 199
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          526.520833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex3'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ex4: TQRDBText
        Left = 222
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          587.375
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex4'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ex5: TQRDBText
        Left = 245
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          648.229166666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex5'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ex6: TQRDBText
        Left = 268
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          709.083333333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex6'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch1: TQRDBText
        Left = 291
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          769.9375
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch2: TQRDBText
        Left = 314
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          830.791666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch3: TQRDBText
        Left = 337
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          891.645833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch3'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch4: TQRDBText
        Left = 360
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          952.5
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch4'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch5: TQRDBText
        Left = 383
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1013.35416666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch5'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch6: TQRDBText
        Left = 406
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1074.20833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch6'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch12: TQRDBText
        Left = 544
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1439.33333333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch12'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch11: TQRDBText
        Left = 521
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1378.47916666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch11'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch10: TQRDBText
        Left = 498
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1317.625
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch10'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch9: TQRDBText
        Left = 475
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1256.77083333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch9'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch8: TQRDBText
        Left = 452
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1195.91666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch8'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch7: TQRDBText
        Left = 429
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1135.0625
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch7'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object AMText: TQRDBText
        Left = 727
        Top = 0
        Width = 26
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1923.52083333333
          0
          68.7916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'stm_All'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = AMTextPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object IMText: TQRDBText
        Left = 704
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1862.66666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'stm_Illegal'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = IMTextPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object LMText: TQRDBText
        Left = 681
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1801.8125
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'stm_Legal'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = LMTextPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Oth4: TQRDBText
        Left = 659
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1743.60416666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch12'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Oth3: TQRDBText
        Left = 636
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1682.75
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch11'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Oth2: TQRDBText
        Left = 613
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1621.89583333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch10'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Oth1: TQRDBText
        Left = 590
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1561.04166666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch9'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ex1: TQRDBText
        Left = 155
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          410.104166666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ex1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Ch13: TQRDBText
        Left = 567
        Top = 0
        Width = 24
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.2083333333333
          1500.1875
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = CompQuery
        DataField = 'Ch13'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRLabel19: TQRLabel
      Left = 66
      Top = 1075
      Width = 289
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        174.625
        2844.27083333333
        764.645833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072#1074'. '#1086#1090#1076#1077#1083#1077#1085#1080#1077#1084' ____________________'
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
  object CompQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT exv_Name AS StName, '
      'SUM(CASE exv_sbcode '
      ' WHEN '#39'{BE9A29BF-63C4-42D7-B184-0E2D137DCD61}'#39' THEN exv_Mark'
      ' ELSE 0 END) AS Ex1, '
      'SUM(CASE exv_sbcode '
      ' WHEN '#39'{15BC555D-1A15-4B97-95E7-00A1073814DE}'#39' THEN exv_Mark'
      ' ELSE 0 END) AS Ex2, '
      'SUM(CASE cpv_sbcode '
      ' WHEN '#39'{1F1B917A-4055-423F-8AEE-84659B86F566}'#39' THEN cpv_Mark'
      ' ELSE 0 END) AS Ch1, '
      'SUM(CASE cpv_sbcode '
      ' WHEN '#39'{F198AA3C-207B-4CDD-9C71-F2BB56EEEA49}'#39' THEN cpv_Mark'
      ' ELSE 0 END) AS Ch2, '
      'SUM(CASE cpv_sbcode '
      ' WHEN '#39'{93C21455-9865-4B93-95A8-094696F5354E}'#39' THEN cpv_Mark'
      ' ELSE 0 END) AS Ch3, '
      'stm_Legal, stm_Illegal, stm_All'
      'FROM ExView, CpView, StMissings'
      'WHERE exv_Semester = cpv_Semester AND stm_stcode = exv_stcode '
      'AND exv_grcode = cpv_grcode AND exv_stcode = cpv_stcode '
      
        'AND exv_smcode = stm_smcode AND exv_grcode = '#39'{A8C947DB-6FE1-41C' +
        '5-B622-2B79BC09E124}'#39' AND exv_Semester = '#39'7'#39
      'GROUP BY exv_Name, stm_Legal, stm_Illegal, stm_All, exv_sbcode'
      'ORDER BY exv_Name;'
      '')
    Left = 24
    Top = 40
  end
end
