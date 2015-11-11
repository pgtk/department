unit dep_graduatereportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, StdCtrls;

type
  TGraduateReportForm = class(TForm)
    GraduateReport: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    HeadLabel: TQRLabel;
    DescLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    SchoolLabel: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    Query: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    SummaryBand1: TQRBand;
    DepartmentLabel: TQRLabel;
    DepartmentMasterLabel: TQRLabel;
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GraduateReportForm: TGraduateReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TGraduateReportForm.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TGraduateReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
