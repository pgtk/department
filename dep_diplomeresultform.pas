unit dep_diplomeresultform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB;

type
  TDiplomeResultsRepForm = class(TForm)
    DiplomeResultsRep: TQuickRep;
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
    QRLabel17: TQRLabel;
    QRLabel50: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    ComissionLabel: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    Query: TADOQuery;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure MarkPrint(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiplomeResultsRepForm: TDiplomeResultsRepForm;

implementation

uses dep_main, dep_dep;

{$R *.dfm}

procedure TDiplomeResultsRepForm.NumLabelPrint(sender: TObject;
  var Value: String);
begin
Value := IntToStr(Query.RecNo);
end;

procedure TDiplomeResultsRepForm.QRLabel20Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TDiplomeResultsRepForm.QRLabel6Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TDiplomeResultsRepForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TDiplomeResultsRepForm.MarkPrint(sender: TObject;
  var Value: String);
begin
case StrToIntDef(Value, 0) of
 0..2   : Value := '';
 3      : Value := 'Удовлетворительно';
 4      : Value := 'Хорошо';
 5      : Value := 'Отлично';
end; // case
end;

procedure TDiplomeResultsRepForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TDiplomeResultsRepForm.QRDBText2Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TDiplomeResultsRepForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
