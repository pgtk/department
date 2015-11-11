unit dep_coursereportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TCourseReportForm = class(TForm)
    CourseRep: TQuickRep;
    TitleBand: TQRBand;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    DescLabel: TQRLabel;
    SpecLabel: TQRLabel;
    DetailBand: TQRBand;
    ColumnHeaderBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel50: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    SubjectLabel: TQRLabel;
    TeacherLabel: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CourseReportForm: TCourseReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TCourseReportForm.NumLabelPrint(sender: TObject;
  var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TCourseReportForm.QRLabel20Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TCourseReportForm.QRLabel6Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TCourseReportForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TCourseReportForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
