unit dep_examrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TTestReportForm = class(TForm)
    TestRep: TQuickRep;
    PageHeader: TQRBand;
    TableHeader: TQRBand;
    TableEnd: TQRBand;
    TableDetail: TQRBand;
    MinistryLabel: TQRLabel;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    CourseLabel: TQRLabel;
    GroupLabel: TQRLabel;
    SpecLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestReportForm: TTestReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TTestReportForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TTestReportForm.QRLabel1Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TTestReportForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
