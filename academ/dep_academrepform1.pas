unit dep_academrepform1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TAcademRepForm1 = class(TForm)
    AcademRep1: TQuickRep;
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
    CwTitle1: TQRLabel;
    CwTitle2: TQRLabel;
    CwTitle3: TQRLabel;
    CwTitle4: TQRLabel;
    PractCaptionLabel: TQRLabel;
    CwMark1: TQRLabel;
    CwMark2: TQRLabel;
    CwMark3: TQRLabel;
    CwMark4: TQRLabel;
    PkMark1: TQRLabel;
    PkMark2: TQRLabel;
    PkMark3: TQRLabel;
    PkMark4: TQRLabel;
    PkTitle4: TQRLabel;
    PkTitle3: TQRLabel;
    PkTitle2: TQRLabel;
    PkTitle1: TQRLabel;
    KvalificationLabel: TQRLabel;
    SpecialityCaptionLabel: TQRLabel;
    FullSpecialityLabel: TQRLabel;
    DiplomeCommentLabel: TQRLabel;
    DiplomeCaptionLabel: TQRLabel;
    DiplomeThemeLabel: TQRLabel;
    DiplomeResultCaptionLabel: TQRLabel;
    DiplomeMark: TQRLabel;
    GOSCaptionLabel: TQRLabel;
    PredsedCaptionLabel: TQRLabel;
    ChiefCaptionLabel: TQRLabel;
    SekrCaptionLabel: TQRLabel;
    FGOSMark: TQRLabel;
    FGOSLabel: TQRLabel;
    FinalGOSCaptionLabel: TQRLabel;
    GOSMark1: TQRLabel;
    GOSTitle1: TQRLabel;
    GOSTitle2: TQRLabel;
    GOSMark2: TQRLabel;
    GOSTitle3: TQRLabel;
    GOSMark3: TQRLabel;
    GOSTitle4: TQRLabel;
    GOSMark4: TQRLabel;
    NumberLabel: TQRLabel;
    PlaceLabel: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure MarkPrint(sender: TObject; var Value: String);
    procedure TitlePrint(sender: TObject; var Value: String);
    procedure SchoolLabelPrint(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
    { Public declarations }
  end;

var
  AcademRepForm1: TAcademRepForm1;


implementation

uses dep_main;

{$R *.dfm}

procedure TAcademRepForm1.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
if (not isCopy) then
 Value := '';
end;

procedure TAcademRepForm1.MarkPrint(sender: TObject;
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
end;

procedure TAcademRepForm1.TitlePrint(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then Value := '';
end;

procedure TAcademRepForm1.SchoolLabelPrint(sender: TObject;
  var Value: String);

var
pos : integer;

begin
pos := AnsiPos(' колледж',Value);
if pos > 0 then
  Value[pos] := #$D;
pos := AnsiPos(' им',Value);
if pos > 0 then
  Value[pos] := #$D;
end;

end.
