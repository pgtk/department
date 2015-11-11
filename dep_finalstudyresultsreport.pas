unit dep_finalstudyresultsreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TFinalStudyResultsReportForm = class(TForm)
    FinalStudyReport: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SchoolNameLabel: TQRLabel;
    QRLabel1: TQRLabel;
    DetailsLabel: TQRLabel;
    QRLabel2: TQRLabel;
    Query: TADOQuery;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    DepartmentLabel: TQRLabel;
    DepartmentMasterLabel: TQRLabel;
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure LeftPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinalStudyResultsReportForm: TFinalStudyResultsReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TFinalStudyResultsReportForm.QRLabel2Print(sender: TObject;
  var Value: String);
begin
Value := #$D+#$D+Value;
end;

procedure TFinalStudyResultsReportForm.LeftPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
