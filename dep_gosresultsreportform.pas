unit dep_gosresultsreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB;

type
  TGOSResultsRepForm = class(TForm)
    GOSResultsRep: TQuickRep;
    TitleBand: TQRBand;
    MinistryLabel: TQRLabel;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    DescLabel: TQRLabel;
    SpecLabel: TQRLabel;
    DetailBand: TQRBand;
    ColumnHeaderBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel50: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    Query: TADOQuery;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GOSResultsRepForm: TGOSResultsRepForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TGOSResultsRepForm.NumLabelPrint(sender: TObject;
  var Value: String);
begin
Value := IntToStr(Query.RecNo);
end;

procedure TGOSResultsRepForm.QRLabel20Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TGOSResultsRepForm.QRLabel6Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TGOSResultsRepForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TGOSResultsRepForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TGOSResultsRepForm.QRDBText2Print(sender: TObject;
  var Value: String);
begin
case StrToIntDef(Value, 0) of
  0,2  : Value := '';
  3    : Value := 'Удовлетворительно';
  4    : Value := 'Хорошо';
  5    : Value := 'Отлично';
end;
end;

end.
