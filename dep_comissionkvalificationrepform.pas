unit dep_comissionkvalificationrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TComissionKvalificationReportForm = class(TForm)
    ComissionRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel28: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescLabel: TQRLabel;
    DirectorLabel: TQRLabel;
    MembersLabel: TQRLabel;
    DateLabel: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    MembersSignLabel: TQRLabel;
    QRLabel11: TQRLabel;
    PDirectorSignLabel: TQRLabel;
    QRLabel15: TQRLabel;
    SecretarSignLabel: TQRLabel;
    Query: TADOQuery;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel24: TQRLabel;
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure EMptyPrint(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComissionKvalificationReportForm: TComissionKvalificationReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TComissionKvalificationReportForm.QRLabel18Print(sender: TObject;
  var Value: String);
begin
Value := ' ' + IntToStr(Query.RecNo);
end;

procedure TComissionKvalificationReportForm.EMptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TComissionKvalificationReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' ' + Value;
end;

end.
