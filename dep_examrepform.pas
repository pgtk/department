unit dep_examrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls;

type
  TExamReportForm = class(TForm)
    ExamRep: TQuickRep;
    PageHeader: TQRBand;
    TableHeader: TQRBand;
    TableEnd: TQRBand;
    TableDetail: TQRBand;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    DescLabel: TQRLabel;
    SubjectLabel: TQRLabel;
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
    DateTimeLabel: TQRLabel;
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
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    CommentLabel: TQRLabel;
    TeacherLabel: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExamReportForm: TExamReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TExamReportForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TExamReportForm.QRLabel1Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TExamReportForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
