unit dep_diplomecopyrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TDiplomeCopyRepForm = class(TForm)
    DiplomeCopyRep: TQuickRep;
    TitleBand1: TQRBand;
    FIOLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    QRLabel53: TQRLabel;
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
    KvalificationLabel: TQRLabel;
    SpecialityCaptionLabel: TQRLabel;
    FullSpecialityLabel: TQRLabel;
    PredsedCaptionLabel: TQRLabel;
    ChiefCaptionLabel: TQRLabel;
    SekrCaptionLabel: TQRLabel;
    PlaceLabel: TQRLabel;
    procedure PrintCopyTitle(sender: TObject; var Value: String);
    procedure DiplomeGetDateLabelPrint(sender: TObject; var Value: String);
    procedure CopyPrint(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
    { Private declarations }
  public
  property isCopy : boolean read AisCopy write AisCopy;
    { Public declarations }
  end;

var
  DiplomeCopyRepForm: TDiplomeCopyRepForm;


implementation

uses dep_main, kern;

{$R *.dfm}

procedure TDiplomeCopyRepForm.PrintCopyTitle(sender: TObject;
  var Value: String);
begin
 if not isCopy then
   Value := ' '
 else
   Value := 'Решением '+#$D+'Государственной аттестационной комиссии';
end;

procedure TDiplomeCopyRepForm.DiplomeGetDateLabelPrint(sender: TObject;
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

procedure TDiplomeCopyRepForm.CopyPrint(sender: TObject;
  var Value: String);
begin
if not isCopy then
Value := ' '; 
end;

end.
