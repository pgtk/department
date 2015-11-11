object Diplome2RepForm2: TDiplome2RepForm2
  Left = 314
  Top = 390
  Width = 819
  Height = 441
  Caption = 'Diplome2RepForm2'
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
  object DiplomeRep2: TQuickRep
    Left = 0
    Top = 1
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query
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
      13.2291666666667
      2970
      13.2291666666667
      2100
      26.4583333333333
      26.4583333333333
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 10
      Top = 5
      Width = 774
      Height = 174
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
        460.375
        2047.875)
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 496
        Top = 101
        Width = 89
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          190.5
          1312.33333333333
          267.229166666667
          235.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel4'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = EmptyPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 584
        Top = 101
        Width = 140
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.5
          1545.16666666667
          267.229166666667
          370.416666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel5'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = EmptyPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 40
        Top = 101
        Width = 456
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.5
          105.833333333333
          267.229166666667
          1206.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel6'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = EmptyPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 48
        Top = 125
        Width = 390
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          127
          330.729166666667
          1031.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = Page2Copy
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 504
        Top = 115
        Width = 72
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333
          1333.5
          304.270833333333
          190.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = Page2Copy
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel8: TQRLabel
        Left = 601
        Top = 118
        Width = 89
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1590.14583333333
          312.208333333333
          235.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1086#1094#1077#1085#1082#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = Page2Copy
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 32
        Top = 40
        Width = 697
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          145.520833333333
          84.6666666666667
          105.833333333333
          1844.14583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1047#1072' '#1074#1088#1077#1084#1103' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1089#1076#1072#1083'('#1072') '#1079#1072#1095#1077#1090#1099', '#1101#1082#1079#1072#1084#1077#1085#1099' '#1087#1086' '#1089#1083#1077#1076#1091#1102#1097#1080#1084' '#1076#1080#1089#1094#1080#1087#1083#1080 +
          #1085#1072#1084' ('#1084#1086#1076#1091#1083#1103#1084'), '#1074#1099#1087#1086#1083#1085#1080#1083'('#1072') '#1082#1091#1088#1089#1086#1074#1099#1077' '#1087#1088#1086#1077#1082#1090#1099' ('#1082#1091#1088#1089#1086#1074#1086#1077' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074 +
          #1072#1085#1080#1077'), '#1087#1088#1086#1096#1077#1083'('#1072') '#1091#1095#1077#1073#1085#1091#1102' '#1080' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1091#1102' '#1087#1088#1072#1082#1090#1080#1082#1080', '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074 +
          #1077#1085#1085#1091#1102' ('#1080#1090#1086#1075#1086#1074#1091#1102') '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1102
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = Page2Copy
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 10
      Top = 179
      Width = 774
      Height = 29
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
        76.7291666666667
        2047.875)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 40
        Top = -1
        Width = 458
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          105.833333333333
          -2.64583333333333
          1211.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query
        DataField = 'rp_sbName'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 496
        Top = -1
        Width = 89
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          76.7291666666667
          1312.33333333333
          -2.64583333333333
          235.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query
        DataField = 'rp_Hours'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = FrameCopyPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 587
        Top = -1
        Width = 134
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          1553.10416666667
          -2.64583333333333
          354.541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query
        DataField = 'rp_Mark'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        OnPrint = QRDBText3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 10
      Top = 208
      Width = 774
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        100.541666666667
        2047.875)
      BandType = rbSummary
      object QRMemo: TQRMemo
        Left = 40
        Top = -1
        Width = 681
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.8958333333333
          105.833333333333
          -2.64583333333333
          1801.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
    object PageFooterBand1: TQRBand
      Left = 10
      Top = 246
      Width = 774
      Height = 138
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
        365.125
        2047.875)
      BandType = rbPageFooter
      object PageNumLabel: TQRLabel
        Left = 637
        Top = 67
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1685.39583333333
          177.270833333333
          298.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1052'. '#1055'.'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 32
        Top = -2
        Width = 145
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          84.6666666666667
          -5.29166666666667
          383.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 32
        Top = 62
        Width = 145
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          84.6666666666667
          164.041666666667
          383.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 32
        Top = 89
        Width = 145
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          84.6666666666667
          235.479166666667
          383.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object DirectorLabel: TQRLabel
        Left = 312
        Top = 30
        Width = 273
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          825.5
          79.375
          722.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SecretarLabel: TQRLabel
        Left = 312
        Top = 64
        Width = 273
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          825.5
          169.333333333333
          722.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object GetDateDayLabel: TQRLabel
        Left = 180
        Top = 92
        Width = 50
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          476.25
          243.416666666667
          132.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0000'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GetDateMonthLabel: TQRLabel
        Left = 236
        Top = 92
        Width = 209
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          624.416666666667
          243.416666666667
          552.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0000'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 540
        Top = 90
        Width = 17
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1428.75
          238.125
          44.9791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1075'.'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
      object GetDateYearLabel: TQRLabel
        Left = 448
        Top = 92
        Width = 89
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1185.33333333333
          243.416666666667
          235.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0000'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
  end
  object Query: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'EXEC GetMarksList '#39'4A72A049-68C6-4A24-9B7A-AA1ECE2B88F2'#39)
    Left = 8
    Top = 8
  end
end
