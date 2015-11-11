unit dep_listreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TListReportForm = class(TForm)
    ListReport: TQuickRep;
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
    SchoolLabel: TQRLabel;
    DepartmentMasterLabel: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListReportForm: TListReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TListReportForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(ListQuery.RecordCount);
end;

procedure TListReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TListReportForm.QRDBText2Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TListReportForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(ListQuery.RecNo);
end;

end.
