unit dep_contreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB;

type
  TContReportForm = class(TForm)
    ContReport: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    SpecDBText: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ContQuery: TADOQuery;
    QRLabel11: TQRLabel;
    DepLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    SummaryBand1: TQRBand;
    DepartmentMasterLabel: TQRLabel;
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure SpecDBTextPrint(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContReportForm: TContReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TContReportForm.QRLabel3Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TContReportForm.SpecDBTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
TQRDBText(Sender).Font.Style := [];
TQRDBText(Sender).Color := clWhite;
case (ContQuery.RecordCount - ContQuery.RecNo) of
4,3,1,0 : TQRDBText(Sender).Font.Style := [fsBold, fsItalic];
2       : begin
          TQRDBText(Sender).Font.Style := [fsBold];
          TQRDBText(Sender).Color := clYellow;
          end;
end; // case
end;

procedure TContReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
TQRDBText(Sender).Font.Style := [];
TQRDBText(Sender).Color := clWhite;
case (ContQuery.RecordCount - ContQuery.RecNo) of
4,3,1,0 : TQRDBText(Sender).Font.Style := [fsBold, fsItalic];
2       : begin
          TQRDBText(Sender).Font.Style := [fsBold];
          TQRDBText(Sender).Color := clYellow;
          end;
end; // case

end;

procedure TContReportForm.QRDBText5Print(sender: TObject;
  var Value: String);
begin
TQRDBText(Sender).Font.Style := [fsBold];
TQRDBText(Sender).Color := clWhite;
case (ContQuery.RecordCount - ContQuery.RecNo) of
4,3,1,0 : TQRDBText(Sender).Font.Style := [fsBold, fsItalic];
2       : TQRDBText(Sender).Color := clYellow;
end; // case
end;

end.
