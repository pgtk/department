unit dep_academrepform2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TAcademRepForm2 = class(TForm)
    AcademRep2: TQuickRep;
    TitleBand: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Query: TADOQuery;
    QRLabel9: TQRLabel;
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure PrintCopy(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure FrameCopyPrint(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
    { Public declarations }
  end;

var
  AcademRepForm2: TAcademRepForm2;

implementation

uses dep_main, dep_dep;

{$R *.dfm}

procedure TAcademRepForm2.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
if not isCopy then
  with sender as TQRLabel do
  begin
  Frame.DrawTop := false;
  Frame.DrawBottom := false;
  Frame.DrawLeft := false;
  Frame.DrawRight := false;
  end;
end;

procedure TAcademRepForm2.PrintCopy(sender: TObject;
  var Value: String);
begin
if not isCopy then
  Value := '';

end;

procedure TAcademRepForm2.QRDBText3Print(sender: TObject;
  var Value: String);
var
mark : integer;
begin
mark := StrToIntDef(Value,0);
case mark of
 0..2 : Value := '';
 3    : Value := 'удовлетворительно';
 4    : Value := 'хорошо';
 5    : Value := 'отлично';
end; // case;
end;

procedure TAcademRepForm2.FrameCopyPrint(sender: TObject;
  var Value: String);
begin
if not isCopy then
  with sender as TQRDBText do
  begin
  Frame.DrawTop := false;
  Frame.DrawBottom := false;
  Frame.DrawLeft := false;
  Frame.DrawRight := false;
  end;
end;

procedure TAcademRepForm2.QRLabel9Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(Query.RecNo)+'. ';
end;

end.
