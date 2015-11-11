object AcademRepForm1: TAcademRepForm1
  Left = 358
  Top = 241
  Width = 819
  Height = 640
  VertScrollBar.Position = 131
  Caption = 'AcademRepForm1'
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
  object AcademRep1: TQuickRep
    Left = 0
    Top = -131
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
        Top = 44
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
          116.416666666667
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
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
        Font.Height = -12
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
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
        Top = 89
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
          235.479166666667
          891.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1044#1072#1090#1072
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
      object BirthDateCaptionLabel: TQRLabel
        Left = 32
        Top = 89
        Width = 90
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          235.479166666667
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
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
      object DocumentCaptionLabel: TQRLabel
        Left = 32
        Top = 116
        Width = 353
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          84.6666666666667
          306.916666666667
          933.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1044#1086#1082#1091#1084#1077#1085#1090' '#1086' '#1087#1088#1077#1076#1096#1077#1089#1090#1074#1091#1102#1097#1077#1084' '#1091#1088#1086#1074#1085#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103' '#1080' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1088#1077 +
          #1078#1076#1077#1085#1080#1103', '#1077#1075#1086' '#1074#1099#1076#1072#1074#1096#1077#1075#1086':'
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
      object DocumentLabel: TQRLabel
        Left = 32
        Top = 150
        Width = 508
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666667
          84.6666666666667
          396.875
          1344.08333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1080' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object SchoolLabel: TQRLabel
        Left = 549
        Top = 142
        Width = 194
        Height = 91
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          240.770833333333
          1452.5625
          375.708333333333
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = SchoolLabelPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object CaptionLabel: TQRLabel
        Left = 549
        Top = 232
        Width = 194
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1452.5625
          613.833333333333
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1056#1048#1051#1054#1046#1045#1053#1048#1045
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
      object QRLabel53: TQRLabel
        Left = 549
        Top = 253
        Width = 194
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1452.5625
          669.395833333333
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1082' '#1044#1048#1055#1051#1054#1052#1059
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object NumCaptionLabel: TQRLabel
        Left = 569
        Top = 293
        Width = 21
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1505.47916666667
          775.229166666667
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8470
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
      object RegNumLabel: TQRLabel
        Left = 564
        Top = 326
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
          862.541666666667
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
        Top = 345
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
          912.8125
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
        Top = 370
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
          978.958333333333
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
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object YearCaptionLabel: TQRLabel
        Left = 696
        Top = 370
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
          978.958333333333
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
        Top = 389
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
          1029.22916666667
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
      object ComissionCaptionLabel: TQRLabel
        Left = 572
        Top = 431
        Width = 148
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667
          1513.41666666667
          1140.35416666667
          391.583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1056#1077#1096#1077#1085#1080#1077#1084' '#1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1086#1085#1085#1086#1081' '#1082#1086#1084#1080#1089#1089#1080#1080
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ComissionDateCaptionLabel: TQRLabel
        Left = 560
        Top = 508
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
          1344.08333333333
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
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ComissionDateLabel: TQRLabel
        Left = 582
        Top = 508
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
          1344.08333333333
          306.916666666667)
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
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ComissionYearCaptionLabel: TQRLabel
        Left = 696
        Top = 508
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
          1344.08333333333
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
      object KvalificationCaptionLabel: TQRLabel
        Left = 550
        Top = 551
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
          1457.85416666667
          489.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1056#1048#1057#1042#1054#1045#1053#1040' '#1050#1042#1040#1051#1048#1060#1048#1050#1040#1062#1048#1071
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
      object ComeoutCaptionLabel: TQRLabel
        Left = 32
        Top = 296
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
          783.166666666667
          396.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1047#1072#1074#1077#1088#1096#1080#1083'('#1072') '#1086#1073#1091#1095#1077#1085#1080#1077' '#1074
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
      object ComeinCaptionLabel: TQRLabel
        Left = 32
        Top = 228
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
          603.25
          396.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1086#1089#1090#1091#1087#1080#1083'('#1072') '#1074
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
      object TestsResultLabel: TQRLabel
        Left = 228
        Top = 201
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
          531.8125
          825.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1087#1088#1086#1096#1077#1083
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
      object TestsCaptionLabel: TQRLabel
        Left = 32
        Top = 201
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
          531.8125
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1042#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1077' '#1080#1089#1087#1099#1090#1072#1085#1080#1103
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
      object ComeInLabel: TQRLabel
        Left = 181
        Top = 228
        Width = 359
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333
          478.895833333333
          603.25
          949.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1086#1076' '#1080' '#1091#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077
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
      object ComeOutLabel: TQRLabel
        Left = 181
        Top = 296
        Width = 359
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333
          478.895833333333
          783.166666666667
          949.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1043#1086#1076' '#1080' '#1091#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077
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
      object TimeCaptionLabel: TQRLabel
        Left = 32
        Top = 365
        Width = 290
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          965.729166666667
          767.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1053#1086#1088#1084#1072#1090#1080#1074#1085#1099#1081' '#1089#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1087#1086' '#1086#1095#1085#1086#1081' '#1092#1086#1088#1084#1077
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
      object StudyTimeLabel: TQRLabel
        Left = 321
        Top = 365
        Width = 219
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          849.3125
          965.729166666667
          579.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '3 '#1075#1086#1076#1072' 10 '#1084#1077#1089#1103#1094#1077#1074
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
      object SpecialityCommentLabel: TQRLabel
        Left = 32
        Top = 389
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
          1029.22916666667
          272.520833333333)
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
        Font.Style = []
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SpecialityLabel: TQRLabel
        Left = 134
        Top = 389
        Width = 407
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          354.541666666667
          1029.22916666667
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
        Top = 419
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
          1108.60416666667
          272.520833333333)
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
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SpecializationLabel: TQRLabel
        Left = 134
        Top = 419
        Width = 407
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          354.541666666667
          1108.60416666667
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
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CourseWorkCaptionLabel: TQRLabel
        Left = 32
        Top = 441
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
          1166.8125
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1050#1091#1088#1089#1086#1074#1099#1077' '#1087#1088#1086#1077#1082#1090#1099' ('#1088#1072#1073#1086#1090#1099'):'
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
      object CwTitle1: TQRLabel
        Left = 2
        Top = 460
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1217.08333333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwTitle2: TQRLabel
        Left = 2
        Top = 478
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1264.70833333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwTitle3: TQRLabel
        Left = 2
        Top = 496
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1312.33333333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwTitle4: TQRLabel
        Left = 2
        Top = 514
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1359.95833333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PractCaptionLabel: TQRLabel
        Left = 32
        Top = 540
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
          1428.75
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1072#1082#1090#1080#1082#1072':'
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
      object CwMark1: TQRLabel
        Left = 444
        Top = 460
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1217.08333333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwMark2: TQRLabel
        Left = 444
        Top = 478
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1264.70833333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwMark3: TQRLabel
        Left = 444
        Top = 496
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1312.33333333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object CwMark4: TQRLabel
        Left = 444
        Top = 514
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1359.95833333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkMark1: TQRLabel
        Left = 444
        Top = 559
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1479.02083333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkMark2: TQRLabel
        Left = 444
        Top = 577
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1526.64583333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkMark3: TQRLabel
        Left = 444
        Top = 595
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1574.27083333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkMark4: TQRLabel
        Left = 444
        Top = 613
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1621.89583333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkTitle4: TQRLabel
        Left = 2
        Top = 613
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1621.89583333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkTitle3: TQRLabel
        Left = 2
        Top = 595
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1574.27083333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkTitle2: TQRLabel
        Left = 2
        Top = 577
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1526.64583333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object PkTitle1: TQRLabel
        Left = 2
        Top = 559
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          1479.02083333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object KvalificationLabel: TQRLabel
        Left = 550
        Top = 570
        Width = 185
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          1455.20833333333
          1508.125
          489.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1090#1077#1093#1085#1080#1082
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object SpecialityCaptionLabel: TQRLabel
        Left = 564
        Top = 597
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
          1579.5625
          441.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
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
      object FullSpecialityLabel: TQRLabel
        Left = 549
        Top = 621
        Width = 183
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1452.5625
          1643.0625
          484.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1089' '#1082#1086#1076#1086#1084
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
      object DiplomeCommentLabel: TQRLabel
        Left = 549
        Top = 709
        Width = 183
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333
          1452.5625
          1875.89583333333
          484.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1044#1072#1085#1085#1099#1081' '#1076#1080#1087#1083#1086#1084' '#1076#1072#1077#1090' '#1087#1088#1072#1074#1086' '#1085#1072' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1091#1102' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1074' '#1089#1086#1086#1090 +
          #1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1091#1088#1086#1074#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103' '#1080' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1077#1081
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Bookman Old Style'
        Font.Style = [fsItalic]
        OnPrint = PrintCopyTitle
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object DiplomeCaptionLabel: TQRLabel
        Left = 32
        Top = 671
        Width = 353
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1775.35416666667
          933.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1080#1087#1083#1086#1084#1085#1086#1075#1086' '#1087#1088#1086#1077#1082#1090#1072' ('#1088#1072#1073#1086#1090#1099') '#1085#1072' '#1090#1077#1084#1091':'
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
      object DiplomeThemeLabel: TQRLabel
        Left = 2
        Top = 692
        Width = 541
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666667
          5.29166666666667
          1830.91666666667
          1431.39583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1058#1077#1084#1072
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object DiplomeResultCaptionLabel: TQRLabel
        Left = 32
        Top = 733
        Width = 316
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          1939.39583333333
          836.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1079#1072#1097#1080#1090#1099
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
      object DiplomeMark: TQRLabel
        Left = 444
        Top = 733
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          1939.39583333333
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSCaptionLabel: TQRLabel
        Left = 32
        Top = 762
        Width = 361
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.8958333333333
          84.6666666666667
          2016.125
          955.145833333334)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1048#1090#1086#1075#1086#1074#1099#1081' '#1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1099#1081' '#1084#1077#1078#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072#1088#1085#1099#1081' '#1101#1082#1079#1072#1084#1077#1085' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086 +
          #1089#1090#1080
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
      object PredsedCaptionLabel: TQRLabel
        Left = 549
        Top = 768
        Width = 84
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875
          1452.5625
          2032
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1086#1085#1085#1086#1081' '#1082#1086#1084#1080#1089#1089#1080#1080
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
      object ChiefCaptionLabel: TQRLabel
        Left = 549
        Top = 833
        Width = 84
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          1452.5625
          2203.97916666667
          222.25)
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
        Top = 885
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
          2341.5625
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
      object FGOSMark: TQRLabel
        Left = 444
        Top = 799
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          2114.02083333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object FGOSLabel: TQRLabel
        Left = 2
        Top = 799
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          2114.02083333333
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object FinalGOSCaptionLabel: TQRLabel
        Left = 32
        Top = 827
        Width = 265
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          84.6666666666667
          2188.10416666667
          701.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1048#1090#1086#1075#1086#1074#1099#1077' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1101#1082#1079#1072#1084#1077#1085#1099':'
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
      object GOSMark1: TQRLabel
        Left = 444
        Top = 846
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          2238.375
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSTitle1: TQRLabel
        Left = 2
        Top = 846
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          2238.375
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSTitle2: TQRLabel
        Left = 2
        Top = 864
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          2286
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSMark2: TQRLabel
        Left = 444
        Top = 864
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          2286
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSTitle3: TQRLabel
        Left = 2
        Top = 882
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          2333.625
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSMark3: TQRLabel
        Left = 444
        Top = 882
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          2333.625
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSTitle4: TQRLabel
        Left = 2
        Top = 900
        Width = 438
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          2381.25
          1158.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Empty'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = TitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object GOSMark4: TQRLabel
        Left = 444
        Top = 900
        Width = 98
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1174.75
          2381.25
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = MarkPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object NumberLabel: TQRLabel
        Left = 589
        Top = 293
        Width = 129
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1558.39583333333
          775.229166666667
          341.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8470
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
      object PlaceLabel: TQRLabel
        Left = 549
        Top = 119
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
          314.854166666667
          513.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
end
