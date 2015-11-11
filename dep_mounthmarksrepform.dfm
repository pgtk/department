object MounthMarkReportForm: TMounthMarkReportForm
  Left = 356
  Top = 370
  Width = 831
  Height = 505
  VertScrollBar.Position = 645
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
  object MounthMarkRep: TQuickRep
    Left = 0
    Top = -645
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = MounthMarkRepBeforePrint
    DataSet = MounthMarkQuery
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
      Height = 127
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
        336.020833333333
        2000.25)
      BandType = rbTitle
      object MinistryLabel: TQRLabel
        Left = 237
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
          627.0625
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
        Width = 756
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          0
          42.3333333333333
          2000.25)
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
        Left = 198
        Top = 47
        Width = 359
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          523.875
          124.354166666667
          949.854166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1079#1072' '#1084#1077#1089#1103#1094
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
        Left = 341
        Top = 71
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          902.229166666667
          187.854166666667
          193.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DescLabel'
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
        Top = 91
        Width = 753
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.8958333333333
          0
          240.770833333333
          1992.3125)
        Alignment = taLeftJustify
        AlignToBand = True
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
    end
    object TableHeader: TQRBand
      Left = 19
      Top = 165
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
        Width = 171
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
          452.4375)
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
      object QRLabel7: TQRLabel
        Left = 201
        Top = 0
        Width = 482
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625
          531.8125
          0
          1275.29166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1088#1077#1076#1084#1077#1090#1099
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
      object QRLabel11: TQRLabel
        Left = 39
        Top = 43
        Width = 177
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          103.1875
          113.770833333333
          468.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
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
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object SbImage1: TQRImage
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
      object SbImage2: TQRImage
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
      object SbImage3: TQRImage
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
      object SbImage4: TQRImage
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
      object SbImage5: TQRImage
        Left = 293
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
          775.229166666667
          44.9791666666667
          63.5)
      end
      object SbImage6: TQRImage
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
      object SbImage7: TQRImage
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
      object SbImage8: TQRImage
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
          955.145833333333
          44.9791666666667
          63.5)
      end
      object SbImage9: TQRImage
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
      object SbImage10: TQRImage
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
      object SbImage11: TQRImage
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
      object SbImage12: TQRImage
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
      object SbImage13: TQRImage
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
      object SbImage14: TQRImage
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
      object SbImage15: TQRImage
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
      object SbImage16: TQRImage
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
      object SbImage17: TQRImage
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
      object SbImage21: TQRImage
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
      object SbImage20: TQRImage
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
      object SbImage19: TQRImage
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
      object SbImage18: TQRImage
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
    end
    object TableEnd: TQRBand
      Left = 19
      Top = 278
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
      object SbM2: TQRImage
        Left = 223
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
          590.020833333333
          0
          63.5)
      end
      object SbM1: TQRImage
        Left = 200
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
          529.166666666667
          0
          63.5)
      end
      object SbM3: TQRImage
        Left = 246
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
          650.875
          0
          63.5)
      end
      object SbM4: TQRImage
        Left = 269
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
          711.729166666667
          0
          63.5)
      end
      object SbM6: TQRImage
        Left = 315
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
          833.4375
          0
          63.5)
      end
      object SbM5: TQRImage
        Left = 292
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
          772.583333333333
          0
          63.5)
      end
      object SbM7: TQRImage
        Left = 338
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
          894.291666666667
          0
          63.5)
      end
      object SbM8: TQRImage
        Left = 361
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
          955.145833333333
          0
          63.5)
      end
      object SbM9: TQRImage
        Left = 384
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
          1016
          0
          63.5)
      end
      object SbM10: TQRImage
        Left = 407
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
          1076.85416666667
          0
          63.5)
      end
      object SbM11: TQRImage
        Left = 430
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
          1137.70833333333
          0
          63.5)
      end
      object SbM12: TQRImage
        Left = 453
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
          1198.5625
          0
          63.5)
      end
      object SbM13: TQRImage
        Left = 476
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
          1259.41666666667
          0
          63.5)
      end
      object SbM14: TQRImage
        Left = 499
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
          1320.27083333333
          0
          63.5)
      end
      object SbM15: TQRImage
        Left = 522
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
          1381.125
          0
          63.5)
      end
      object SbM16: TQRImage
        Left = 545
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
          1441.97916666667
          0
          63.5)
      end
      object SbM17: TQRImage
        Left = 568
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
          1502.83333333333
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
        Width = 202
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          222.25
          -2.64583333333333
          -2.64583333333333
          534.458333333333)
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
        Left = 40
        Top = 28
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          74.0833333333333
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
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
      object SbM21: TQRImage
        Left = 660
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
          1746.25
          0
          63.5)
      end
      object SbM20: TQRImage
        Left = 637
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
          1685.39583333333
          0
          63.5)
      end
      object SbM19: TQRImage
        Left = 614
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
          1624.54166666667
          0
          63.5)
      end
      object SbM18: TQRImage
        Left = 591
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
          1563.6875
          0
          63.5)
      end
    end
    object TableDetail: TQRBand
      Left = 19
      Top = 258
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
        Width = 170
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
          449.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MounthMarkQuery
        DataField = 'StName'
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
      object Sb1: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb2: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb3: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb4: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb5: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb6: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb7: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb8: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb9: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb10: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb11: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb17: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb16: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb15: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb14: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb13: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb12: TQRDBText
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
        DataSet = MounthMarkQuery
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
        DataSet = MounthMarkQuery
        DataField = 'smm_All'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = AMTextPrint
        ParentFont = False
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
        DataSet = MounthMarkQuery
        DataField = 'smm_Illegal'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = IMTextPrint
        ParentFont = False
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
        DataSet = MounthMarkQuery
        DataField = 'smm_Legal'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = LMTextPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Sb21: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb20: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb19: TQRDBText
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
        DataSet = MounthMarkQuery
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
      object Sb18: TQRDBText
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
        DataSet = MounthMarkQuery
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
    end
    object QRLabel19: TQRLabel
      Left = 66
      Top = 1075
      Width = 292
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        174.625
        2844.27083333333
        772.583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
  object MounthMarkQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT mkv_StName AS StName, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{D715235D-6B0B-4B62-BA1A-2571DD701CE1}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb1, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{91D14782-E5E9-42EE-9545-EA909BCC3EA0}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb2, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{2206C252-51CF-4791-9DEC-FCA944B0BB9E}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb3, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{0AFBB7AA-4F82-4A88-950F-27881E35C975}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb4, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{03770D7B-F1B9-4651-BA73-19D995A99208}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb5, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{FF601E5C-12D8-4F04-A6FD-4F9EE3519A24}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb6, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{0EB41A7D-E4B1-4F95-9BAA-C9C45194993A}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb7, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{1C5A6DE1-DEAC-4B0E-9663-29D7F534942E}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb8, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{41A56374-AB28-4412-ADEF-7F22CCA9377A}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb9, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{C44EEC6B-774A-4CFD-B700-43BD10FB2446}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb10, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{F8681DDD-5730-43C9-9A91-84BF37788E05}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb11, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{E12AEE29-6EBE-44C4-91BC-3D7D1C907AC2}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb12, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{3CBFA96A-2714-4688-95C3-AE85FE6332E6}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb13, '
      'MAX(CASE mkv_sbcode '
      ' WHEN '#39'{B1EEF63C-D722-4C04-9539-1698C2C399EB}'#39' THEN mkv_Mark'
      ' ELSE 0 END) AS Sb14, '
      'smm_Legal, smm_Illegal, smm_All'
      'FROM MarksView, StMounthMissingsView'
      'WHERE smm_stcode = mkv_stcode '
      
        'AND mkv_mounth = smm_mounth AND mkv_grcode = '#39'{1F33C2E0-D56A-45F' +
        '9-9A57-5B52A9B06389}'#39' AND mkv_Mounth = '#39'9'#39' AND mkv_BYear <= smm_' +
        'Year AND mkv_EYear >= smm_Year'
      ' AND smm_Year = '#39'2006'#39
      ' GROUP BY mkv_StName, smm_Legal, smm_Illegal, smm_All'
      'ORDER BY mkv_StName;')
    Left = 24
    Top = 40
  end
end
