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
    BirthDateLabel: TQRLabel;
    BirthDateCaptionLabel: TQRLabel;
    DocumentCaptionLabel: TQRLabel;
    DocumentLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    CaptionLabel: TQRLabel;
    QRLabel53: TQRLabel;
    RegNumLabel: TQRLabel;
    RegNumCommentLabel: TQRLabel;
    GetDateLabel: TQRLabel;
    YearCaptionLabel: TQRLabel;
    DateCommentLabel: TQRLabel;
    ComissionCaptionLabel: TQRLabel;
    ComissionDateCaptionLabel: TQRLabel;
    PrDateLabel: TQRLabel;
    ComissionYearCaptionLabel: TQRLabel;
    KvalificationCaptionLabel: TQRLabel;
    StopStudyLabel1: TQRLabel;
    StartStudyLabel1: TQRLabel;
    TestsCaptionLabel: TQRLabel;
    StudyPlaceLabel1: TQRLabel;
    FormCaptionLabel: TQRLabel;
    SpecialityCommentLabel: TQRLabel;
    SpecialityLabel: TQRLabel;
    PractCaptionLabel: TQRLabel;
    MkLabel1: TQRLabel;
    MkLabel2: TQRLabel;
    MkLabel3: TQRLabel;
    MkLabel4: TQRLabel;
    SbTitle4: TQRLabel;
    SbTitle3: TQRLabel;
    SbTitle2: TQRLabel;
    SbTitle1: TQRLabel;
    ReasonLabel: TQRLabel;
    PredsedCaptionLabel: TQRLabel;
    SekrCaptionLabel: TQRLabel;
    NumberLabel: TQRLabel;
    PlaceLabel: TQRLabel;
    PrNumberLabel: TQRLabel;
    QRLabel2: TQRLabel;
    StartStudyLabel2: TQRLabel;
    StopStudyLabel2: TQRLabel;
    StudyPlaceLabel2: TQRLabel;
    SbTitle5: TQRLabel;
    SbTitle6: TQRLabel;
    SbTitle7: TQRLabel;
    SbTitle8: TQRLabel;
    MkLabel5: TQRLabel;
    MkLabel6: TQRLabel;
    MkLabel7: TQRLabel;
    MkLabel8: TQRLabel;
    SbTitle9: TQRLabel;
    SbTitle10: TQRLabel;
    SbTitle11: TQRLabel;
    SbTitle12: TQRLabel;
    MkLabel9: TQRLabel;
    MkLabel10: TQRLabel;
    MkLabel11: TQRLabel;
    MkLabel12: TQRLabel;
    SbTitle13: TQRLabel;
    SbTitle14: TQRLabel;
    SbTitle15: TQRLabel;
    SbTitle16: TQRLabel;
    MkLabel13: TQRLabel;
    MkLabel14: TQRLabel;
    MkLabel15: TQRLabel;
    MkLabel16: TQRLabel;
    SbTitle17: TQRLabel;
    SbTitle18: TQRLabel;
    SbTitle19: TQRLabel;
    SbTitle20: TQRLabel;
    MkLabel17: TQRLabel;
    MkLabel18: TQRLabel;
    MkLabel19: TQRLabel;
    MkLabel20: TQRLabel;
    SbTitle21: TQRLabel;
    SbTitle22: TQRLabel;
    SbTitle23: TQRLabel;
    SbTitle24: TQRLabel;
    MkLabel21: TQRLabel;
    MkLabel22: TQRLabel;
    MkLabel23: TQRLabel;
    MkLabel24: TQRLabel;
    SbTitle25: TQRLabel;
    SbTitle26: TQRLabel;
    MkLabel25: TQRLabel;
    MkLabel26: TQRLabel;
    HrLabel1: TQRLabel;
    HrLabel2: TQRLabel;
    HrLabel3: TQRLabel;
    HrLabel4: TQRLabel;
    HrLabel5: TQRLabel;
    HrLabel6: TQRLabel;
    HrLabel7: TQRLabel;
    HrLabel8: TQRLabel;
    HrLabel9: TQRLabel;
    HrLabel10: TQRLabel;
    HrLabel11: TQRLabel;
    HrLabel12: TQRLabel;
    HrLabel13: TQRLabel;
    HrLabel14: TQRLabel;
    HrLabel15: TQRLabel;
    HrLabel16: TQRLabel;
    HrLabel17: TQRLabel;
    HrLabel18: TQRLabel;
    HrLabel19: TQRLabel;
    HrLabel20: TQRLabel;
    HrLabel21: TQRLabel;
    HrLabel22: TQRLabel;
    HrLabel23: TQRLabel;
    HrLabel24: TQRLabel;
    HrLabel25: TQRLabel;
    HrLabel26: TQRLabel;
    SbTitle27: TQRLabel;
    SbTitle28: TQRLabel;
    HrLabel27: TQRLabel;
    HrLabel28: TQRLabel;
    MkLabel27: TQRLabel;
    MkLabel28: TQRLabel;
    FormLabel1: TQRLabel;
    FormLabel2: TQRLabel;
    SbTitle29: TQRLabel;
    SbTitle30: TQRLabel;
    SbTitle31: TQRLabel;
    SbTitle32: TQRLabel;
    SbTitle33: TQRLabel;
    SbTitle34: TQRLabel;
    HrLabel34: TQRLabel;
    HrLabel33: TQRLabel;
    HrLabel32: TQRLabel;
    HrLabel31: TQRLabel;
    HrLabel30: TQRLabel;
    HrLabel29: TQRLabel;
    MkLabel29: TQRLabel;
    MkLabel30: TQRLabel;
    MkLabel31: TQRLabel;
    MkLabel32: TQRLabel;
    MkLabel33: TQRLabel;
    MkLabel34: TQRLabel;
    SbTitle35: TQRLabel;
    HrLabel35: TQRLabel;
    MkLabel35: TQRLabel;
    SbTitle38: TQRLabel;
    SbTitle37: TQRLabel;
    SbTitle36: TQRLabel;
    HrLabel38: TQRLabel;
    HrLabel37: TQRLabel;
    HrLabel36: TQRLabel;
    MkLabel36: TQRLabel;
    MkLabel37: TQRLabel;
    MkLabel38: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure MarkPrint(sender: TObject; var Value: String);
    procedure TitlePrint(sender: TObject; var Value: String);
    procedure SchoolLabelPrint(sender: TObject; var Value: String);
    procedure HoursPrint(sender: TObject; var Value: String);
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

uses dep_main, kern;

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
 NN   : Value := 'освобожден(а)';
 NS   : Value := 'не изучал(а)';
 ZC   : Value := 'зачет';
end; // case;
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

procedure TAcademRepForm1.HoursPrint(sender: TObject; var Value: String);
begin
if Value = 'часы' then
  Value := '';
end;

end.
