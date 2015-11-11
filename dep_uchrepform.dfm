object UchReportForm: TUchReportForm
  Left = 193
  Top = 140
  Width = 831
  Height = 505
  Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
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
  object UspRep: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = UspRepBeforePrint
    DataSet = UspQuery
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
        Left = 258
        Top = 0
        Width = 240
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          682.625
          0
          635)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1060#1077#1076#1077#1088#1072#1083#1100#1085#1086#1077' '#1072#1075#1077#1085#1089#1090#1074#1086' '#1087#1086' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1102
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SchoolNameLabel: TQRLabel
        Left = 159
        Top = 16
        Width = 437
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          420.6875
          42.3333333333333
          1156.22916666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1043#1054#1059' '#1057#1055#1054' '#1055#1088#1086#1082#1086#1087#1100#1077#1074#1089#1082#1080#1081' '#1075#1086#1088#1085#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1083#1083#1077#1076#1078' '#1080#1084'. '#1042'.'#1055'. '#1056#1086#1084#1072#1085#1086#1074#1072
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 247
        Top = 32
        Width = 262
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          653.520833333333
          84.6666666666667
          693.208333333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
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
      object CourseLabel: TQRLabel
        Left = 192
        Top = 56
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          508
          148.166666666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CourseLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object GroupLabel: TQRLabel
        Left = 416
        Top = 56
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1100.66666666667
          148.166666666667
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GroupLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SpecLabel: TQRLabel
        Left = 347
        Top = 76
        Width = 62
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          918.104166666667
          201.083333333333
          164.041666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'SpecLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 36
        Top = 56
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          95.25
          148.166666666667
          404.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 89
        Top = 106
        Width = 524
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          235.479166666667
          280.458333333333
          1386.41666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1047#1072' ____________________ '#1084#1077#1089#1103#1094' _______________ '#1091#1095'. '#1075#1086#1076
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
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
        Width = 33
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
          87.3125)
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
        Left = 3
        Top = 29
        Width = 23
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          7.9375
          76.7291666666667
          60.8541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8470' '#1087'/'#1087
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 31
        Top = 0
        Width = 261
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          82.0208333333333
          0
          690.5625)
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
      object QRLabel11: TQRLabel
        Left = 56
        Top = 43
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          113.770833333333
          388.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
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
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ExImage1: TQRImage
        Left = 292
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          772.583333333333
          2.64583333333333
          63.5)
      end
      object ExImage2: TQRImage
        Left = 315
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          833.4375
          2.64583333333333
          63.5)
      end
      object ExImage3: TQRImage
        Left = 338
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          894.291666666667
          2.64583333333333
          63.5)
      end
      object ExImage4: TQRImage
        Left = 361
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          955.145833333333
          2.64583333333333
          63.5)
      end
      object ExImage5: TQRImage
        Left = 384
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1016
          2.64583333333333
          63.5)
      end
      object ExImage6: TQRImage
        Left = 407
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1076.85416666667
          2.64583333333333
          63.5)
      end
      object ExImage7: TQRImage
        Left = 430
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1137.70833333333
          2.64583333333333
          63.5)
      end
      object ExImage8: TQRImage
        Left = 453
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1198.5625
          2.64583333333333
          63.5)
      end
      object ExImage9: TQRImage
        Left = 476
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1259.41666666667
          2.64583333333333
          63.5)
      end
      object ExImage10: TQRImage
        Left = 499
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1320.27083333333
          2.64583333333333
          63.5)
      end
      object ExImage11: TQRImage
        Left = 522
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1381.125
          2.64583333333333
          63.5)
      end
      object ExImage12: TQRImage
        Left = 545
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1441.97916666667
          2.64583333333333
          63.5)
      end
      object ExImage13: TQRImage
        Left = 568
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1502.83333333333
          2.64583333333333
          63.5)
      end
      object ExImage14: TQRImage
        Left = 591
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1563.6875
          2.64583333333333
          63.5)
      end
      object ExImage15: TQRImage
        Left = 614
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1624.54166666667
          2.64583333333333
          63.5)
      end
      object ExImage16: TQRImage
        Left = 637
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1685.39583333333
          2.64583333333333
          63.5)
      end
      object ExImage17: TQRImage
        Left = 660
        Top = 1
        Width = 24
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          248.708333333333
          1746.25
          2.64583333333333
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
      object ExM2: TQRImage
        Left = 314
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
          830.791666666667
          0
          63.5)
      end
      object ExM1: TQRImage
        Left = 291
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
          769.9375
          0
          63.5)
      end
      object ExM3: TQRImage
        Left = 337
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
          891.645833333333
          0
          63.5)
      end
      object ExM4: TQRImage
        Left = 360
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
          952.5
          0
          63.5)
      end
      object ExM6: TQRImage
        Left = 406
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
          1074.20833333333
          0
          63.5)
      end
      object ExM5: TQRImage
        Left = 383
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
          1013.35416666667
          0
          63.5)
      end
      object ExM7: TQRImage
        Left = 429
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
          1135.0625
          0
          63.5)
      end
      object ExM8: TQRImage
        Left = 452
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
          1195.91666666667
          0
          63.5)
      end
      object ExM9: TQRImage
        Left = 475
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
          1256.77083333333
          0
          63.5)
      end
      object ExM10: TQRImage
        Left = 498
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
          1317.625
          0
          63.5)
      end
      object ExM11: TQRImage
        Left = 521
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
          1378.47916666667
          0
          63.5)
      end
      object ExM12: TQRImage
        Left = 544
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
          1439.33333333333
          0
          63.5)
      end
      object ExM13: TQRImage
        Left = 567
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
          1500.1875
          0
          63.5)
      end
      object ExM14: TQRImage
        Left = 590
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
          1561.04166666667
          0
          63.5)
      end
      object ExM15: TQRImage
        Left = 613
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
          1621.89583333333
          0
          63.5)
      end
      object ExM16: TQRImage
        Left = 636
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
          1682.75
          0
          63.5)
      end
      object ExM17: TQRImage
        Left = 659
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
          1743.60416666667
          0
          63.5)
      end
      object LMAImage: TQRImage
        Left = 682
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
          1804.45833333333
          0
          63.5)
      end
      object IMAImage: TQRImage
        Left = 705
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
          1865.3125
          0
          63.5)
      end
      object AMAImage: TQRImage
        Left = 728
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
          1926.16666666667
          0
          68.7916666666667)
      end
      object QRLabel6: TQRLabel
        Left = -1
        Top = -1
        Width = 292
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          216.958333333333
          -2.64583333333333
          -2.64583333333333
          772.583333333333)
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
        Left = 56
        Top = 28
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          74.0833333333333
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
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
        Width = 33
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
          87.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NumLabel'
        Color = clWhite
        OnPrint = NumLabelPrint
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object StudNameText: TQRDBText
        Left = 31
        Top = 0
        Width = 261
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
          690.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'StName'
        OnPrint = StudNameTextPrint
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Ex1: TQRDBText
        Left = 290
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
          767.291666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ex1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex2: TQRDBText
        Left = 313
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
          828.145833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ex2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex3: TQRDBText
        Left = 336
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
          889
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ex3'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex4: TQRDBText
        Left = 359
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
          949.854166666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ex4'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex5: TQRDBText
        Left = 382
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
          1010.70833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ex5'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex6: TQRDBText
        Left = 405
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
          1071.5625
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex7: TQRDBText
        Left = 428
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
          1132.41666666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex8: TQRDBText
        Left = 451
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
          1193.27083333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch3'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex9: TQRDBText
        Left = 474
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
          1254.125
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch4'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex10: TQRDBText
        Left = 497
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
          1314.97916666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch5'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex11: TQRDBText
        Left = 520
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
          1375.83333333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch6'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex17: TQRDBText
        Left = 658
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
          1740.95833333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch12'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex16: TQRDBText
        Left = 635
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
          1680.10416666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch11'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex15: TQRDBText
        Left = 612
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
          1619.25
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch10'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex14: TQRDBText
        Left = 589
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
          1558.39583333333
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch9'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex13: TQRDBText
        Left = 566
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
          1497.54166666667
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch8'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object Ex12: TQRDBText
        Left = 543
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
          1436.6875
          0
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = UspQuery
        DataField = 'Ch7'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = SetSelText
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
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
        DataSet = UspQuery
        DataField = 'stm_All'
        OnPrint = AMTextPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
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
        DataSet = UspQuery
        DataField = 'stm_Illegal'
        OnPrint = IMTextPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
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
        DataSet = UspQuery
        DataField = 'stm_Legal'
        OnPrint = LMTextPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRLabel19: TQRLabel
      Left = 66
      Top = 1075
      Width = 257
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
        679.979166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1047#1072#1074'. '#1086#1090#1076#1077#1083#1077#1085#1080#1077#1084' ____________________'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object UspQuery: TADOQuery
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
