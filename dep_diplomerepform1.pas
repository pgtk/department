unit dep_diplomerepform1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TDiplomeRepForm1 = class(TForm)
    DiplomeRep1: TQuickRep;
    TitleBand1: TQRBand;
    FIOCaptionLabel: TQRLabel;
    FIOLabel: TQRLabel;
    CountryCaptionLabel: TQRLabel;
    BirthDateLabel: TQRLabel;
    BirthDateCaptionLabel: TQRLabel;
    DocumentCaptionLabel: TQRLabel;
    DocumentLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    CaptionLabel: TQRLabel;
    QRLabel53: TQRLabel;
    NumCaptionLabel: TQRLabel;
    RegNumLabel: TQRLabel;
    RegNumCommentLabel: TQRLabel;
    DiplomeGetDateLabel: TQRLabel;
    YearCaptionLabel: TQRLabel;
    DateCommentLabel: TQRLabel;
    ComissionCaptionLabel: TQRLabel;
    ComissionDateCaptionLabel: TQRLabel;
    ComissionDateLabel: TQRLabel;
    ComissionYearCaptionLabel: TQRLabel;
    KvalificationCaptionLabel: TQRLabel;
    ComeoutCaptionLabel: TQRLabel;
    ComeinCaptionLabel: TQRLabel;
    TestsResultLabel: TQRLabel;
    TestsCaptionLabel: TQRLabel;
    ComeInLabel: TQRLabel;
    ComeOutLabel: TQRLabel;
    TimeCaptionLabel: TQRLabel;
    StudyTimeLabel: TQRLabel;
    SpecialityCommentLabel: TQRLabel;
    SpecialityLabel: TQRLabel;
    SpecializationCommentLabel: TQRLabel;
    SpecializationLabel: TQRLabel;
    CourseWorkCaptionLabel: TQRLabel;
    PractCaptionLabel: TQRLabel;
    PkTitle1: TQRLabel;
    KvalificationLabel: TQRLabel;
    SpecialityCaptionLabel: TQRLabel;
    FullSpecialityLabel: TQRLabel;
    DiplomeCaptionLabel: TQRLabel;
    DiplomeThemeLabel: TQRLabel;
    DiplomeResultCaptionLabel: TQRLabel;
    DiplomeMark: TQRLabel;
    GOSCaptionLabel: TQRLabel;
    PredsedCaptionLabel: TQRLabel;
    ChiefCaptionLabel: TQRLabel;
    SekrCaptionLabel: TQRLabel;
    FGOSMark: TQRLabel;
    FinalGOSCaptionLabel: TQRLabel;
    GOSTitle1: TQRLabel;
    GOSTitle2: TQRLabel;
    GOSTitle3: TQRLabel;
    GOSTitle4: TQRLabel;
    NumberLabel: TQRLabel;
    PlaceLabel: TQRLabel;
    CwTitle4: TQRLabel;
    PagesCountLabel: TQRLabel;
    PageNumLabel: TQRLabel;
    QRLabel1: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure MarkPrint(sender: TObject; var Value: String);
    procedure TitlePrint(sender: TObject; var Value: String);
    procedure SchoolLabelPrint(sender: TObject; var Value: String);
    procedure DiplomeGetDateLabelPrint(sender: TObject; var Value: String);
    procedure SpecializationLabelPrint(sender: TObject; var Value: String);
    procedure DiplomeThemeLabelPrint(sender: TObject; var Value: String);
    procedure GOSTitle1Print(sender: TObject; var Value: String);
    procedure RegNumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
  AisDuplicate : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
  property isDuplicate: boolean read AisDuplicate write AisDuplicate;
    { Public declarations }
  end;

var
  DiplomeRepForm1: TDiplomeRepForm1;


implementation

uses dep_main, kern;

{$R *.dfm}

procedure TDiplomeRepForm1.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
if ((not isCopy) and (not isDuplicate)) then
 Value := '';
end;

procedure TDiplomeRepForm1.MarkPrint(sender: TObject;
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
if (Value = '') and ((not isCopy) and (not isDuplicate)) then Value := NOPE;
end;

procedure TDiplomeRepForm1.TitlePrint(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then Value := ' ';
end;

procedure TDiplomeRepForm1.SchoolLabelPrint(sender: TObject;
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

procedure TDiplomeRepForm1.DiplomeGetDateLabelPrint(sender: TObject;
  var Value: String);

var
date : string;
x,i  : integer;
year : word;

begin
  try
  date := Value;
  i := 0;
  for x := 1 to length(date) do
    if date[x] = ' ' then i := x;
  if i > 0 then
    date := Copy(date, i+1, length(date)-i);
  year := StrToIntDef(date, 0);
  if (year = 0) or (year < 1950) then
    Value := '';
  except
  Value := '';
  end; // try
end;

procedure TDiplomeRepForm1.SpecializationLabelPrint(sender: TObject;
  var Value: String);
begin
if ('' = Trim(Value)) then
  Value := NOPE;
end;

procedure TDiplomeRepForm1.DiplomeThemeLabelPrint(sender: TObject;
  var Value: String);
begin
if ('' = Trim(Value)) then
  Value := NOPE;
end;

procedure TDiplomeRepForm1.GOSTitle1Print(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then
  Value := NOPE;
end;

procedure TDiplomeRepForm1.RegNumLabelPrint(sender: TObject;
  var Value: String);
begin
if isCopy then Value := '';
end;

procedure TDiplomeRepForm1.QRLabel1Print(sender: TObject;
  var Value: String);
begin
if not isDuplicate then
  Value := ' ';
end;

end.
