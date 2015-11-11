unit dep_birthlistreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TBirthListReportForm = class(TForm)
    BirthListReport: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    TypeLabel: TQRLabel;
    DepartmentLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ListQuery: TADOQuery;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    MinistryLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BirthListReportForm: TBirthListReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TBirthListReportForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(ListQuery.RecordCount);
end;

procedure TBirthListReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TBirthListReportForm.QRDBText2Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TBirthListReportForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(ListQuery.RecNo);
end;

procedure TBirthListReportForm.QRLabel8Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
