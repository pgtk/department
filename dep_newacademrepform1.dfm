object NewAcademRepForm1: TNewAcademRepForm1
  Left = 194
  Top = 327
  Width = 924
  Height = 587
  VertScrollBar.Position = 563
  Caption = 'NewAcademRepForm1'
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
  object NewAcademRep1: TQuickRep
    Left = 0
    Top = -563
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      80
      2970
      20
      2100
      70
      60
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 26
      Top = 8
      Width = 745
      Height = 1085
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        2870.72916666667
        1971.14583333333)
      BandType = rbTitle
      object FIOCaptionLabel: TQRLabel
        Left = 32
        Top = 43
        Width = 161
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          113.770833333333
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object FIOLabel: TQRLabel
        Left = 203
        Top = 43
        Width = 337
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          537.104166666667
          113.770833333333
          891.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object CountryCaptionLabel: TQRLabel
        Left = 584
        Top = 6
        Width = 113
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          1545.16666666667
          15.875
          298.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1056#1054#1057#1057#1048#1049#1057#1050#1040#1071' '#1060#1045#1044#1045#1056#1040#1062#1048#1071
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRImage1: TQRImage
        Left = 588
        Top = 39
        Width = 105
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.4375
          1555.75
          103.1875
          277.8125)
      end
      object BirthDateLabel: TQRLabel
        Left = 203
        Top = 85
        Width = 337
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          537.104166666667
          224.895833333333
          891.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1044#1072#1090#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object BirthDateCaptionLabel: TQRLabel
        Left = 32
        Top = 85
        Width = 95
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          224.895833333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object DocumentCaptionLabel: TQRLabel
        Left = 32
        Top = 112
        Width = 249
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          84.6666666666667
          296.333333333333
          658.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086' '#1087#1088#1077#1076#1096#1077#1089#1090#1074#1091#1102#1097#1077#1084' '#1091#1088#1086#1074#1085#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object DocumentLabel: TQRLabel
        Left = 32
        Top = 146
        Width = 513
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667
          84.6666666666667
          386.291666666667
          1357.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1080' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object SchoolLabel: TQRLabel
        Left = 549
        Top = 145
        Width = 194
        Height = 88
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          232.833333333333
          1452.5625
          383.645833333333
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = SchoolLabelPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CaptionLabel: TQRLabel
        Left = 549
        Top = 232
        Width = 194
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667
          1452.5625
          613.833333333333
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1055#1056#1040#1042#1050#1040' '#1054#1041' '#1059#1057#1055#1045#1042#1040#1045#1052#1054#1057#1058#1048
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object RegNumLabel: TQRLabel
        Left = 564
        Top = 329
        Width = 167
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1492.25
          870.479166666667
          441.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1085#1086#1084#1077#1088
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object RegNumCommentLabel: TQRLabel
        Left = 564
        Top = 348
        Width = 167
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1492.25
          920.75
          441.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '('#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088')'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object DiplomeGetDateLabel: TQRLabel
        Left = 564
        Top = 372
        Width = 133
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1492.25
          984.25
          351.895833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1076#1072#1090#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = DiplomeGetDateLabelPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object YearCaptionLabel: TQRLabel
        Left = 696
        Top = 372
        Width = 35
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1841.5
          984.25
          92.6041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1075#1086#1076#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object DateCommentLabel: TQRLabel
        Left = 564
        Top = 391
        Width = 167
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1492.25
          1034.52083333333
          441.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '('#1076#1072#1090#1072' '#1074#1099#1076#1072#1095#1080')'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ComeoutCaptionLabel: TQRLabel
        Left = 32
        Top = 398
        Width = 193
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1053.04166666667
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1047#1072#1074#1077#1088#1096#1080#1083'('#1072') '#1086#1073#1091#1095#1077#1085#1080#1077' '#1074
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object ComeinCaptionLabel: TQRLabel
        Left = 32
        Top = 280
        Width = 150
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          740.833333333333
          396.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1086#1089#1090#1091#1087#1080#1083'('#1072') '#1074
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object TestsResultLabel: TQRLabel
        Left = 228
        Top = 203
        Width = 312
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          603.25
          537.104166666667
          825.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1087#1088#1086#1096#1077#1083
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object TestsCaptionLabel: TQRLabel
        Left = 32
        Top = 203
        Width = 193
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          537.104166666667
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1042#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1077' '#1080#1089#1087#1099#1090#1072#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ComeInLabel: TQRLabel
        Left = 48
        Top = 298
        Width = 489
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667
          127
          788.458333333333
          1293.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1086#1076' '#1080' '#1091#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ComeOutLabel: TQRLabel
        Left = 48
        Top = 416
        Width = 489
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667
          127
          1100.66666666667
          1293.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1086#1076' '#1080' '#1091#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object TimeCaptionLabel: TQRLabel
        Left = 32
        Top = 546
        Width = 305
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1444.625
          806.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object StudyFormLabel: TQRLabel
        Left = 33
        Top = 570
        Width = 504
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          87.3125
          1508.125
          1333.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1054#1095#1085#1072#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SpecialityCommentLabel: TQRLabel
        Left = 32
        Top = 630
        Width = 103
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1666.875
          272.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object SpecialityLabel: TQRLabel
        Left = 134
        Top = 630
        Width = 407
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333
          354.541666666667
          1666.875
          1076.85416666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SpecializationCommentLabel: TQRLabel
        Left = 32
        Top = 725
        Width = 103
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1918.22916666667
          272.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object SpecializationLabel: TQRLabel
        Left = 134
        Top = 725
        Width = 407
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666667
          354.541666666667
          1918.22916666667
          1076.85416666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = SpecializationLabelPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CourseWorkCaptionLabel: TQRLabel
        Left = 32
        Top = 770
        Width = 509
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          2037.29166666667
          1346.72916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1050#1091#1088#1089#1086#1074#1099#1077' '#1088#1072#1073#1086#1090#1099' ('#1082#1091#1088#1089#1086#1074#1086#1077' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'):'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object PractCaptionLabel: TQRLabel
        Left = 32
        Top = 858
        Width = 509
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          2270.125
          1346.72916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' ('#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1072#1103') '#1087#1088#1072#1082#1090#1080#1082#1072':'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object PkTitle1: TQRLabel
        Left = 32
        Top = 882
        Width = 505
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          2333.625
          1336.14583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1080#1074#1077#1076#1077#1085#1099' '#1085#1072' '#1086#1073#1086#1088#1086#1090#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ChiefCaptionLabel: TQRLabel
        Left = 549
        Top = 817
        Width = 156
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          1452.5625
          2161.64583333333
          412.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object SekrCaptionLabel: TQRLabel
        Left = 548
        Top = 869
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1449.91666666667
          2299.22916666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PlaceLabel: TQRLabel
        Left = 549
        Top = 122
        Width = 194
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1452.5625
          322.791666666667
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
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
      object CwTitle4: TQRLabel
        Left = 32
        Top = 794
        Width = 505
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          2100.79166666667
          1336.14583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1080#1074#1077#1076#1077#1085#1099' '#1085#1072' '#1086#1073#1086#1088#1086#1090#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PagesCountLabel: TQRLabel
        Left = 34
        Top = 1065
        Width = 503
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          89.9583333333333
          2817.8125
          1330.85416666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object PageNumLabel: TQRLabel
        Left = 538
        Top = 1065
        Width = 202
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1423.45833333333
          2817.8125
          534.458333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1051#1080#1089#1090' '#8470' 1'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object ReasonLabel: TQRLabel
        Left = 550
        Top = 575
        Width = 185
        Height = 155
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          410.104166666667
          1455.20833333333
          1521.35416666667
          489.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1090#1077#1093#1085#1080#1082
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
      object KvalificationCaptionLabel: TQRLabel
        Left = 550
        Top = 546
        Width = 185
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1455.20833333333
          1444.625
          489.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
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
      object ComissionCaptionLabel: TQRLabel
        Left = 572
        Top = 431
        Width = 148
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1513.41666666667
          1140.35416666667
          391.583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1056#1048#1050#1040#1047
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 560
        Top = 462
        Width = 23
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1481.66666666667
          1222.375
          60.8541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8470
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PrNumberLabel: TQRLabel
        Left = 582
        Top = 462
        Width = 116
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1539.875
          1222.375
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1085#1086#1084#1077#1088
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ComissionDateCaptionLabel: TQRLabel
        Left = 560
        Top = 493
        Width = 23
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1481.66666666667
          1304.39583333333
          60.8541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1086#1090
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PrDateLabel: TQRLabel
        Left = 582
        Top = 493
        Width = 116
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1539.875
          1304.39583333333
          306.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1076#1072#1090#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ComissionYearCaptionLabel: TQRLabel
        Left = 696
        Top = 493
        Width = 35
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1841.5
          1304.39583333333
          92.6041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1075#1086#1076#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
end
