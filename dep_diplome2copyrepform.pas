unit dep_diplome2copyrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TDiplome2CopyRepForm = class(TForm)
    DiplomeCopyRep: TQuickRep;
    TitleBand1: TQRBand;
    SchoolLabel: TQRLabel;
    QRLabel53: TQRLabel;
    RegNumLabel: TQRLabel;
    RegNumCommentLabel: TQRLabel;
    KvalificationLabel: TQRLabel;
    FullSpecialityLabel: TQRLabel;
    PredsedCaptionLabel: TQRLabel;
    ChiefCaptionLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    FNameLabel: TQRLabel;
    MNameLabel: TQRLabel;
    QRLabel8: TQRLabel;
    GetDateDayLabel: TQRLabel;
    GetDateMonthLabel: TQRLabel;
    GetDateYearLabel: TQRLabel;
    QRLabel9: TQRLabel;
    LNameLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    ComissionDayLabel: TQRLabel;
    ComissionMonthLabel: TQRLabel;
    ComissionYearLabel: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ComissionChifNameLabel: TQRLabel;
    DirectorNameLabel: TQRLabel;
    DublicateLabel: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure DiplomeGetDateLabelPrint(sender: TObject; var Value: String);
    procedure CopyPrint(sender: TObject; var Value: String);
    procedure SchoolLabelPrint(sender: TObject; var Value: String);
    procedure KvalificationLabelPrint(sender: TObject; var Value: String);
    procedure FullSpecialityLabelPrint(sender: TObject; var Value: String);
    procedure DublicateLabelPrint(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
  AisDublicate : boolean;
    { Private declarations }
  public
  property isCopy : boolean read AisCopy write AisCopy;
  property isDuplicate : boolean read AisDublicate write AisDublicate;
    { Public declarations }
  end;

var
  Diplome2CopyRepForm: TDiplome2CopyRepForm;


implementation

uses dep_main, kern;

{$R *.dfm}

procedure TDiplome2CopyRepForm.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
 if not isCopy then
   Value := ' '
 else
   Value := 'Решением '+#$D+'Государственной аттестационной комиссии';
end;

procedure TDiplome2CopyRepForm.DiplomeGetDateLabelPrint(sender: TObject;
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
//  if year = 0 then
//  if year <> CurrentYear then
//    Value := '';
//  except
//  Value := '';
//  end; // try
end;

procedure TDiplome2CopyRepForm.CopyPrint(sender: TObject;
  var Value: String);
begin
if not isCopy then
Value := ' ';
end;

procedure TDiplome2CopyRepForm.SchoolLabelPrint(sender: TObject;
  var Value: String);
const
strlen = 50; // максимальное кол-во символов на строку

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

procedure TDiplome2CopyRepForm.KvalificationLabelPrint(sender: TObject;
  var Value: String);
const
strlen = 50; // максимальное кол-во символов на строку

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

procedure TDiplome2CopyRepForm.FullSpecialityLabelPrint(sender: TObject;
  var Value: String);
const
strlen = 56; // максимальное кол-во символов на строку

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

procedure TDiplome2CopyRepForm.DublicateLabelPrint(sender: TObject;
  var Value: String);
begin
  if (not isDuplicate) then Value := ' ';
end;

end.
