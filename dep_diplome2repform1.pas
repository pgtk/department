unit dep_diplome2repform1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TDiplome2RepForm1 = class(TForm)
    DiplomeRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    NumLabel: TQRLabel;
    QRLabel5: TQRLabel;
    RegNumLabel: TQRLabel;
    QRLabel4: TQRLabel;
    FNameLabel: TQRLabel;
    MNameLabel: TQRLabel;
    LNameLabel: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    BirthDateDayLabel: TQRLabel;
    BirthDateMonthLabel: TQRLabel;
    BirthDateYearLabel: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    BirthPlaceLabel: TQRLabel;
    QRLabel13: TQRLabel;
    SchoolNameLabel: TQRLabel;
    KvalificationLabel: TQRLabel;
    QRLabel12: TQRLabel;
    ComissionDayLabel: TQRLabel;
    ComissionMonthLabel: TQRLabel;
    ComissionYearLabel: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel9: TQRLabel;
    SpecialityLabel: TQRLabel;
    QRLabel16: TQRLabel;
    StudyLengthLabel: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    DocumentYearLabel: TQRLabel;
    DocumentSeriaLabel: TQRLabel;
    DocumentNumberLabel: TQRLabel;
    DocumentLabel: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    PagesLabel: TQRLabel;
    QRLabel32: TQRLabel;
    PagesStrLabel: TQRLabel;
    QRLabel34: TQRLabel;
    EducationLabel: TQRLabel;
    TrainingLabel: TQRLabel;
    DublicateLabel: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure SchoolNameLabelPrint(sender: TObject; var Value: String);
    procedure KvalificationLabelPrint(sender: TObject; var Value: String);
    procedure SpecialityLabelPrint(sender: TObject; var Value: String);
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure DublicateLabelPrint(sender: TObject; var Value: String);
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
  Diplome2RepForm1: TDiplome2RepForm1;

implementation

uses dep_main;

{$R *.dfm}

procedure TDiplome2RepForm1.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
if (not isCopy) then
 Value := '';
end;

procedure TDiplome2RepForm1.FormCreate(Sender: TObject);
begin
QRLabel2.Caption := 'Приложение к ДИПЛОМУ'+#$D+
  'о среднем профессиональном образовании';
end;

procedure TDiplome2RepForm1.SchoolNameLabelPrint(sender: TObject;
  var Value: String);

const
strlen = 60; // максимальное кол-во символов на строку

var
x      : integer;
count  : integer;
pos    : integer;
spos   : integer;
newstr : string;
begin
pos := 0;
count := 0;
spos := 1;
for x := 1 to length(Value) do
  begin
  inc(count);
  if (' ' = Value[x]) then
    begin
      if (count < strlen) then
        pos := x
      else
        begin
        newstr := newstr+Copy(Value, spos, pos-spos)+#$D+#$D;
        spos := pos;
        count := 0;
        end;
    end;
  end;
newstr := newstr+Copy(Value, spos, length(Value)-spos+1);
Value := newStr;
end;

procedure TDiplome2RepForm1.KvalificationLabelPrint(sender: TObject;
  var Value: String);
const
strlen = 60; // максимальное кол-во символов на строку

var
x      : integer;
count  : integer;
pos    : integer;
spos   : integer;
newstr : string;
begin
pos := 0;
count := 0;
spos := 1;
for x := 1 to length(Value) do
  begin
  inc(count);
  if (' ' = Value[x]) then
    begin
      if (count < strlen) then
        pos := x
      else
        begin
        newstr := newstr+Copy(Value, spos, pos-spos)+#$D+#$D;
        spos := pos;
        count := 0;
        end;
    end;
  end;
newstr := newstr+Copy(Value, spos, length(Value)-spos+1);
Value := newStr;
end;

procedure TDiplome2RepForm1.SpecialityLabelPrint(sender: TObject;
  var Value: String);
const
strlen = 70; // максимальное кол-во символов на строку

var
x      : integer;
count  : integer;
pos    : integer;
spos   : integer;
newstr : string;
begin
pos := 0;
count := 0;
spos := 1;
for x := 1 to length(Value) do
  begin
  inc(count);
  if (' ' = Value[x]) then
    begin
      if (count < strlen) then
        pos := x
      else
        begin
        newstr := newstr+Copy(Value, spos, pos-spos)+#$D+#$D;
        spos := pos;
        count := 0;
        end;
    end;
  end;
newstr := newstr+Copy(Value, spos, length(Value)-spos+1);
Value := newStr;
end;

procedure TDiplome2RepForm1.EmptyPrint(sender: TObject; var Value: String);
begin
Value := '';
end;

procedure TDiplome2RepForm1.DublicateLabelPrint(sender: TObject;
  var Value: String);
begin
  if (not isDuplicate) then Value := ' ';
end;

end.
