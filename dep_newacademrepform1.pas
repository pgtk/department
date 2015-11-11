unit dep_newacademrepform1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TNewAcademRepForm1 = class(TForm)
    NewAcademRep1: TQuickRep;
    TitleBand1: TQRBand;
    FIOCaptionLabel: TQRLabel;
    FIOLabel: TQRLabel;
    CountryCaptionLabel: TQRLabel;
    QRImage1: TQRImage;
    BirthDateLabel: TQRLabel;
    BirthDateCaptionLabel: TQRLabel;
    DocumentCaptionLabel: TQRLabel;
    DocumentLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    CaptionLabel: TQRLabel;
    RegNumLabel: TQRLabel;
    RegNumCommentLabel: TQRLabel;
    DiplomeGetDateLabel: TQRLabel;
    YearCaptionLabel: TQRLabel;
    DateCommentLabel: TQRLabel;
    ComeoutCaptionLabel: TQRLabel;
    ComeinCaptionLabel: TQRLabel;
    TestsResultLabel: TQRLabel;
    TestsCaptionLabel: TQRLabel;
    ComeInLabel: TQRLabel;
    ComeOutLabel: TQRLabel;
    TimeCaptionLabel: TQRLabel;
    StudyFormLabel: TQRLabel;
    SpecialityCommentLabel: TQRLabel;
    SpecialityLabel: TQRLabel;
    SpecializationCommentLabel: TQRLabel;
    SpecializationLabel: TQRLabel;
    CourseWorkCaptionLabel: TQRLabel;
    PractCaptionLabel: TQRLabel;
    PkTitle1: TQRLabel;
    ChiefCaptionLabel: TQRLabel;
    SekrCaptionLabel: TQRLabel;
    PlaceLabel: TQRLabel;
    CwTitle4: TQRLabel;
    PagesCountLabel: TQRLabel;
    PageNumLabel: TQRLabel;
    ReasonLabel: TQRLabel;
    KvalificationCaptionLabel: TQRLabel;
    ComissionCaptionLabel: TQRLabel;
    QRLabel2: TQRLabel;
    PrNumberLabel: TQRLabel;
    ComissionDateCaptionLabel: TQRLabel;
    PrDateLabel: TQRLabel;
    ComissionYearCaptionLabel: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure MarkPrint(sender: TObject; var Value: String);
    procedure TitlePrint(sender: TObject; var Value: String);
    procedure SchoolLabelPrint(sender: TObject; var Value: String);
    procedure DiplomeGetDateLabelPrint(sender: TObject; var Value: String);
    procedure SpecializationLabelPrint(sender: TObject; var Value: String);
    procedure DiplomeThemeLabelPrint(sender: TObject; var Value: String);
    procedure GOSTitle1Print(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
    { Public declarations }
  end;

var
  NewAcademRepForm1: TNewAcademRepForm1;


implementation

uses dep_main, kern;

{$R *.dfm}

procedure TNewAcademRepForm1.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
if (not isCopy) then
 Value := '';
end;

procedure TNewAcademRepForm1.MarkPrint(sender: TObject;
  var Value: String);
var
val : integer;

begin
val := StrToIntDef(Value,0);
case val of
 0..2 : Value := '';
 3    : Value := 'удовлетворительно';
 4    : Value := 'хорошо';
 5    : Value := 'отлично';
end;
if Value = '' then Value := NOPE;
end;

procedure TNewAcademRepForm1.TitlePrint(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then Value := ' ';
end;

procedure TNewAcademRepForm1.SchoolLabelPrint(sender: TObject;
  var Value: String);

//var
//pos : integer;

begin
//pos := AnsiPos(' колледж',Value);
//if pos > 0 then
//  Value[pos] := #$D;
//pos := AnsiPos(' им',Value);
//if pos > 0 then
//  Value[pos] := #$D;
end;

procedure TNewAcademRepForm1.DiplomeGetDateLabelPrint(sender: TObject;
  var Value: String);

//var
//date : string;
//x,i  : integer;
//year : word;

begin
//  try
//  date := Value;
//  i := 0;
//  for x := 1 to length(date) do
//    if date[x] = ' ' then i := x;
//  if i > 0 then
//    date := Copy(date, i+1, length(date)-i);
//  year := StrToIntDef(date, 0);
//  if year <> CurrentYear then
//    Value := '';
//  except
//  Value := '';
//  end; // try
end;

procedure TNewAcademRepForm1.SpecializationLabelPrint(sender: TObject;
  var Value: String);
begin
if ('' = Trim(Value)) then
  Value := NOPE;
end;

procedure TNewAcademRepForm1.DiplomeThemeLabelPrint(sender: TObject;
  var Value: String);
begin
if ('' = Trim(Value)) then
  Value := NOPE;
end;

procedure TNewAcademRepForm1.GOSTitle1Print(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then
  Value := NOPE;
end;

end.
