object PractReportForm: TPractReportForm
  Left = 232
  Top = 260
  Width = 785
  Height = 532
  HorzScrollBar.Position = 33
  Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1089#1076#1072#1095#1080' '#1082#1091#1088#1089#1086#1074#1086#1075#1086' '#1087#1088#1086#1077#1082#1090#1072
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
  object PractRep: TQuickRep
    Left = -33
    Top = -16
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
      100
      2970
      100
      2100
      100
      100
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
    object TitleBand: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 177
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
        468.3125
        1899.70833333333)
      BandType = rbTitle
      object SchoolNameLabel: TQRLabel
        Left = 0
        Top = -1
        Width = 716
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          0
          -2.64583333333333
          1894.41666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1043#1054#1059' '#1057#1055#1054' '#1055#1088#1086#1082#1086#1087#1100#1077#1074#1089#1082#1080#1081' '#1075#1086#1088#1085#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1083#1083#1077#1076#1078' '#1080#1084'. '#1042'.'#1055'. '#1056#1086#1084#1072#1085#1086#1074#1072
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 34
        Width = 721
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          0
          89.9583333333333
          1907.64583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1087#1088#1072#1082#1090#1080#1082#1077
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
        Left = 277
        Top = 97
        Width = 163
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          732.895833333333
          256.645833333333
          431.270833333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1043#1088#1091#1087#1087#1072', '#1075#1086#1076', '#1082#1091#1088#1089', '#1089#1077#1084#1077#1089#1090#1088
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object SpecLabel: TQRLabel
        Left = 3
        Top = 114
        Width = 712
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          7.9375
          301.625
          1883.83333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object NameLabel: TQRLabel
        Left = 0
        Top = 56
        Width = 719
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          0
          148.166666666667
          1902.35416666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#1085#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1072#1082#1090#1080#1082#1080')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object TeacherLabel: TQRLabel
        Left = 3
        Top = 146
        Width = 712
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          7.9375
          386.291666666667
          1883.83333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand: TQRBand
      Left = 38
      Top = 257
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = ColumnHeaderBand
      Size.Values = (
        55.5625
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
        OnPrint = NumLabelPrint
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object StudNameText: TQRDBText
        Left = 31
        Top = 0
        Width = 242
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
          640.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MainForm.StudentsQuery
        DataField = 'st_Name'
        OnPrint = StudNameTextPrint
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 272
        Top = 0
        Width = 221
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
          584.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel6Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 491
        Top = 0
        Width = 227
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1299.10416666667
          0
          600.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        OnPrint = QRLabel7Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object ColumnHeaderBand: TQRBand
      Left = 38
      Top = 215
      Width = 718
      Height = 42
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
        111.125
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 32
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          113.770833333333
          0
          0
          84.6666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8470' '#1087'/'#1087
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 31
        Top = 0
        Width = 242
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          113.770833333333
          82.0208333333333
          0
          640.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        OnPrint = QRLabel20Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 272
        Top = 0
        Width = 221
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          113.770833333333
          719.666666666667
          0
          584.729166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel17'
        Color = clWhite
        OnPrint = QRLabel20Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 491
        Top = 0
        Width = 227
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          113.770833333333
          1299.10416666667
          0
          600.604166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel50'
        Color = clWhite
        OnPrint = QRLabel20Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 38
        Top = 13
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          100.541666666667
          34.3958333333333
          595.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 275
        Top = 13
        Width = 213
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          727.604166666667
          34.3958333333333
          563.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1054#1094#1077#1085#1082#1072
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 495
        Top = 13
        Width = 218
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1309.6875
          34.3958333333333
          576.791666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1055#1086#1076#1087#1080#1089#1100
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
