unit dep_appcontreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TAppContRepForm = class(TForm)
    AppContRep: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    TitleBand2: TQRBand;
    QRLabel12: TQRLabel;
    ContQuery: TADOQuery;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    DateLabel: TQRLabel;
    SignLabel: TQRLabel;
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppContRepForm: TAppContRepForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TAppContRepForm.QRDBText8Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
