unit dep_mounthmissreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB;

type
  TMounthMissReportForm = class(TForm)
    MounthMissReport: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    GroupLabel: TQRLabel;
    MounthLabel: TQRLabel;
    MounthMissQuery: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MounthMissReportForm: TMounthMissReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TMounthMissReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(MounthMissQuery.RecNo)+' '+Value
end;

end.
