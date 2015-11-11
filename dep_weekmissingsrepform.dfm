object WeekMissingsRepForm: TWeekMissingsRepForm
  Left = 381
  Top = 211
  Width = 1155
  Height = 480
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
  object WeekMissingsRep: TQuickRep
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
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
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      50
      2100
      50
      2970
      50
      70
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
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 73
      Width = 1078
      Height = 74
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = PageHeaderBand1
      Size.Values = (
        195.791666666667
        2852.20833333333)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = -2
        Top = 0
        Width = 32
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          195.791666666667
          -5.29166666666667
          0
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 24
        Width = 19
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          13.2291666666667
          63.5
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8470
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
      object QRLabel5: TQRLabel
        Left = 26
        Top = 0
        Width = 191
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          195.791666666667
          68.7916666666667
          0
          505.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 86
        Top = 24
        Width = 65
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          227.541666666667
          63.5
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1060'. '#1048'. '#1054'.'
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
      object QRLabel7: TQRLabel
        Left = 213
        Top = 1
        Width = 120
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          193.145833333333
          563.5625
          2.64583333333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel1: TQRLabel
        Left = 215
        Top = 3
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          568.854166666667
          7.9375
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel1'
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
      object QRLabel9: TQRLabel
        Left = 216
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          571.5
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 239
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          632.354166666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 262
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          693.208333333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 285
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          754.0625
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 308
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          814.916666666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 329
        Top = 1
        Width = 120
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          193.145833333333
          870.479166666667
          2.64583333333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel2: TQRLabel
        Left = 331
        Top = 3
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          875.770833333333
          7.9375
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel2'
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
      object QRLabel16: TQRLabel
        Left = 331
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          875.770833333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 354
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          936.625
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 377
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          997.479166666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 400
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1058.33333333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 423
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1119.1875
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 445
        Top = 0
        Width = 120
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          193.145833333333
          1177.39583333333
          0
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel3: TQRLabel
        Left = 447
        Top = 3
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          1182.6875
          7.9375
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel3'
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
      object QRLabel23: TQRLabel
        Left = 447
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1182.6875
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 470
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1243.54166666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 493
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1304.39583333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 516
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1365.25
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 539
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1426.10416666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 561
        Top = 1
        Width = 120
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          193.145833333333
          1484.3125
          2.64583333333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel4: TQRLabel
        Left = 563
        Top = 3
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          1489.60416666667
          7.9375
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel4'
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
      object QRLabel30: TQRLabel
        Left = 563
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1489.60416666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 586
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1550.45833333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 609
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1611.3125
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 632
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1672.16666666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 655
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1733.02083333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 677
        Top = 0
        Width = 120
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          193.145833333333
          1791.22916666667
          0
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel5: TQRLabel
        Left = 679
        Top = 3
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          1796.52083333333
          7.9375
          309.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel5'
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
      object QRLabel37: TQRLabel
        Left = 679
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1796.52083333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 702
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1857.375
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 725
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1918.22916666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 748
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1979.08333333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 771
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2039.9375
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 865
        Top = 0
        Width = 75
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          195.791666666667
          2288.64583333333
          0
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 866
        Top = 3
        Width = 73
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          50.2708333333333
          2291.29166666667
          7.9375
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
      object LMImage: TQRImage
        Left = 869
        Top = 18
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2299.22916666667
          47.625
          63.5)
      end
      object IMImage: TQRImage
        Left = 892
        Top = 18
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2360.08333333333
          47.625
          63.5)
      end
      object AMImage: TQRImage
        Left = 915
        Top = 18
        Width = 25
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2420.9375
          47.625
          66.1458333333333)
      end
      object QRLabel44: TQRLabel
        Left = 952
        Top = 24
        Width = 108
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2518.83333333333
          63.5
          285.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
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
      object QRLabel47: TQRLabel
        Left = 793
        Top = 0
        Width = 74
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          195.791666666667
          2098.14583333333
          0
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DayLabel6: TQRLabel
        Left = 795
        Top = 1
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.9791666666667
          2103.4375
          2.64583333333333
          190.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DayLabel6'
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
      object QRLabel48: TQRLabel
        Left = 796
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2106.08333333333
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 819
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2166.9375
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 842
        Top = 17
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2227.79166666667
          44.9791666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 147
      Width = 1078
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = ColumnHeaderBand1
      Size.Values = (
        31.75
        2852.20833333333)
      BandType = rbDetail
      object QRLabel45: TQRLabel
        Left = -2
        Top = -1
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          44.9791666666667
          -5.29166666666667
          -2.64583333333333
          82.0208333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel45'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = QRLabel45Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 26
        Top = -1
        Width = 191
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          50.2708333333333
          68.7916666666667
          -2.64583333333333
          505.354166666667)
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
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 216
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          571.5
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel53: TQRLabel
        Left = 239
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          632.354166666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel54: TQRLabel
        Left = 262
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          693.208333333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel55: TQRLabel
        Left = 285
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          754.0625
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel56: TQRLabel
        Left = 308
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          814.916666666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel57: TQRLabel
        Left = 331
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          875.770833333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel58: TQRLabel
        Left = 354
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          936.625
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel59: TQRLabel
        Left = 377
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          997.479166666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel60: TQRLabel
        Left = 400
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1058.33333333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel61: TQRLabel
        Left = 423
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1119.1875
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel62: TQRLabel
        Left = 447
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1182.6875
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel63: TQRLabel
        Left = 470
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1243.54166666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel64: TQRLabel
        Left = 493
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1304.39583333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel65: TQRLabel
        Left = 516
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1365.25
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel66: TQRLabel
        Left = 539
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1426.10416666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel67: TQRLabel
        Left = 563
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1489.60416666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel68: TQRLabel
        Left = 586
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1550.45833333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel69: TQRLabel
        Left = 609
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1611.3125
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel70: TQRLabel
        Left = 632
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1672.16666666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel71: TQRLabel
        Left = 655
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1733.02083333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel72: TQRLabel
        Left = 679
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1796.52083333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel73: TQRLabel
        Left = 702
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1857.375
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel74: TQRLabel
        Left = 725
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1918.22916666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel75: TQRLabel
        Left = 748
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          1979.08333333333
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel76: TQRLabel
        Left = 771
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2039.9375
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel77: TQRLabel
        Left = 866
        Top = -2
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2291.29166666667
          -5.29166666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel78: TQRLabel
        Left = 890
        Top = -2
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2354.79166666667
          -5.29166666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel79: TQRLabel
        Left = 914
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2418.29166666667
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 795
        Top = -2
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2103.4375
          -5.29166666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 819
        Top = -2
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2166.9375
          -5.29166666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 843
        Top = -2
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.3333333333333
          2230.4375
          -5.29166666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 159
      Width = 1078
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        145.520833333333
        2852.20833333333)
      BandType = rbSummary
      object QRLabel80: TQRLabel
        Left = -2
        Top = -3
        Width = 32
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          150.8125
          -5.29166666666667
          -7.9375
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel81: TQRLabel
        Left = 25
        Top = -3
        Width = 192
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          150.8125
          66.1458333333333
          -7.9375
          508)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 936
        Top = -3
        Width = 141
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          150.8125
          2476.5
          -7.9375
          373.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel45'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel89: TQRLabel
        Left = 216
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          571.5
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel90: TQRLabel
        Left = 239
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          632.354166666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel91: TQRLabel
        Left = 262
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          693.208333333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel92: TQRLabel
        Left = 285
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          754.0625
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel93: TQRLabel
        Left = 308
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          814.916666666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 331
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          875.770833333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel95: TQRLabel
        Left = 354
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          936.625
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel96: TQRLabel
        Left = 377
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          997.479166666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 400
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1058.33333333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel98: TQRLabel
        Left = 423
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1119.1875
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 447
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1182.6875
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel100: TQRLabel
        Left = 470
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1243.54166666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel101: TQRLabel
        Left = 493
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1304.39583333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel102: TQRLabel
        Left = 516
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1365.25
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel103: TQRLabel
        Left = 539
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1426.10416666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel104: TQRLabel
        Left = 563
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1489.60416666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel105: TQRLabel
        Left = 586
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1550.45833333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel106: TQRLabel
        Left = 609
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1611.3125
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel107: TQRLabel
        Left = 632
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1672.16666666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel108: TQRLabel
        Left = 655
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1733.02083333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel109: TQRLabel
        Left = 679
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1796.52083333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel110: TQRLabel
        Left = 702
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1857.375
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel111: TQRLabel
        Left = 725
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1918.22916666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel112: TQRLabel
        Left = 748
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          1979.08333333333
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel113: TQRLabel
        Left = 771
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2039.9375
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel114: TQRLabel
        Left = 795
        Top = -1
        Width = 25
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2103.4375
          -2.64583333333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel115: TQRLabel
        Left = 819
        Top = -1
        Width = 25
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2166.9375
          -2.64583333333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel116: TQRLabel
        Left = 843
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2230.4375
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel117: TQRLabel
        Left = 36
        Top = 8
        Width = 137
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          95.25
          21.1666666666667
          362.479166666667)
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
      object QRLabel22: TQRLabel
        Left = 866
        Top = -1
        Width = 25
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2291.29166666667
          -2.64583333333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 890
        Top = -1
        Width = 25
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2354.79166666667
          -2.64583333333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 914
        Top = -1
        Width = 24
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          145.520833333333
          2418.29166666667
          -2.64583333333333
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel52'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 1078
      Height = 54
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
        142.875
        2852.20833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 473
        Top = 0
        Width = 132
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1251.47916666667
          0
          349.25)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1042#1045#1044#1054#1052#1054#1057#1058#1068
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
        Left = 502
        Top = 23
        Width = 73
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1328.20833333333
          60.8541666666667
          193.145833333333)
        Alignment = taCenter
        AlignToBand = True
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
        Top = 38
        Width = 65
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          0
          100.541666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
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
  end
end
