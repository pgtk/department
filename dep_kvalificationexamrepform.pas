unit dep_kvalificationexamrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TKvalificationExamReportForm = class(TForm)
    Report: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescriptionLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel20: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel34: TQRLabel;
    SummaryBand1: TQRBand;
    Query: TADOQuery;
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
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure EmptyPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KvalificationExamReportForm: TKvalificationExamReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TKvalificationExamReportForm.QRLabel21Print(sender: TObject; var Value: String);
begin
Value := ' ' + IntToStr(Query.RecNo);
end;

procedure TKvalificationExamReportForm.QRDBText1Print(sender: TObject; var Value: String);
begin
Value := ' ' + Value;
end;

procedure TKvalificationExamReportForm.EmptyPrint(sender: TObject; var Value: String);
begin
Value := ' ';
end;

end.
