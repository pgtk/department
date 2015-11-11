unit dep_langrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls;

type
  TLangReportForm = class(TForm)
    LangRep: TQuickRep;
    LangQuery: TADOQuery;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    TitleLabel: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    DepLabel: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    MinistryLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LangReportForm: TLangReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TLangReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TLangReportForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := DateTimeToStr(Now);
end;

end.
