unit dep_svodvedrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TCompReportForm = class(TForm)
    CompRep: TQuickRep;
    PageHeader: TQRBand;
    TableHeader: TQRBand;
    TableEnd: TQRBand;
    TableDetail: TQRBand;
    MinistryLabel: TQRLabel;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    DescLabel: TQRLabel;
    SpecLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel19: TQRLabel;
    CompQuery: TADOQuery;
    ExImage2: TQRImage;
    ExImage3: TQRImage;
    ExImage4: TQRImage;
    ExImage5: TQRImage;
    ExImage6: TQRImage;
    ChImage1: TQRImage;
    ChImage2: TQRImage;
    ChImage3: TQRImage;
    ChImage4: TQRImage;
    ChImage5: TQRImage;
    ChImage6: TQRImage;
    ChImage7: TQRImage;
    ChImage8: TQRImage;
    ChImage9: TQRImage;
    ChImage10: TQRImage;
    ChImage11: TQRImage;
    ChImage12: TQRImage;
    MLImage: TQRImage;
    MIImage: TQRImage;
    MAImage: TQRImage;
    ExM3: TQRImage;
    ExM2: TQRImage;
    ExM4: TQRImage;
    ExM5: TQRImage;
    ChM1: TQRImage;
    ExM6: TQRImage;
    ChM2: TQRImage;
    ChM3: TQRImage;
    ChM4: TQRImage;
    ChM5: TQRImage;
    ChM6: TQRImage;
    ChM7: TQRImage;
    ChM8: TQRImage;
    ChM9: TQRImage;
    ChM10: TQRImage;
    ChM11: TQRImage;
    ChM12: TQRImage;
    LMAImage: TQRImage;
    IMAImage: TQRImage;
    AMAImage: TQRImage;
    Ex2: TQRDBText;
    Ex3: TQRDBText;
    Ex4: TQRDBText;
    Ex5: TQRDBText;
    Ex6: TQRDBText;
    Ch1: TQRDBText;
    Ch2: TQRDBText;
    Ch3: TQRDBText;
    Ch4: TQRDBText;
    Ch5: TQRDBText;
    Ch6: TQRDBText;
    Ch12: TQRDBText;
    Ch11: TQRDBText;
    Ch10: TQRDBText;
    Ch9: TQRDBText;
    Ch8: TQRDBText;
    Ch7: TQRDBText;
    AMText: TQRDBText;
    IMText: TQRDBText;
    LMText: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    OthImage4: TQRImage;
    OthImage3: TQRImage;
    OthImage2: TQRImage;
    OthImage1: TQRImage;
    QRLabel9: TQRLabel;
    Oth4: TQRDBText;
    Oth3: TQRDBText;
    Oth2: TQRDBText;
    Oth1: TQRDBText;
    OthM4: TQRImage;
    OthM3: TQRImage;
    OthM2: TQRImage;
    OthM1: TQRImage;
    Ex1: TQRDBText;
    ExM1: TQRImage;
    ExImage1: TQRImage;
    ChImage13: TQRImage;
    Ch13: TQRDBText;
    ChM13: TQRImage;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure SetSelText(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure CompRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure LMTextPrint(sender: TObject; var Value: String);
    procedure IMTextPrint(sender: TObject; var Value: String);
    procedure AMTextPrint(sender: TObject; var Value: String);
  private
    IMAll : integer;
    LMAll : integer;
    AMAll : integer;
    { Private declarations }
  public
  procedure TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
    { Public declarations }
  end;

var
  CompReportForm: TCompReportForm;

implementation

uses dep_main;

{$R *.dfm}


procedure TCompReportForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
var
LogFont : TLOGFONT;
size    : integer;
x       : integer;
pos     : integer;

begin
size := 10;
pos := 0;
width := c.ClipRect.Bottom - c.ClipRect.Top;
height := c.ClipRect.Right - c.ClipRect.Left;
if s >= 10 then size := s;
c.Brush.Style := bsSolid;
c.Font.Style := [];
GetObject(c.Font.Handle, SizeOf(LOGFONT), @LogFont);
LogFont.lfHeight := size;
LogFont.lfEscapement := angle*10 ;
LogFont.lfOrientation := angle*10;
LogFont.lfCharSet := DEFAULT_CHARSET;
LogFont.lfFaceName := 'Arial';
c.FillRect(c.ClipRect);
c.Font.Handle := CreateFontIndirect(LogFont);
if c.TextWidth(text) > width then
 for x := 1 to length(text) do
  if ((text[x] = ' ') or (text[x] = '-')) and
  (c.TextWidth(Copy(text,1,x)) <= width) then
     pos := x;
if pos > 0 then
begin
c.TextOut(1,c.ClipRect.Bottom-5,Copy(text,1,pos));
c.TextOut(c.TextHeight(text),c.ClipRect.Bottom-5,Copy(text,pos,length(text)-pos+1));
end else
c.TextOut(1,c.ClipRect.Bottom-5,text);
end;



procedure TCompReportForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(CompQuery.RecNo);
end;

procedure TCompReportForm.StudNameTextPrint(sender: TObject;
var Value: String);
begin
Value := ' '+Value;
end;

procedure TCompReportForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TCompReportForm.SetSelText(sender: TObject; var Value: String);
begin
case (StrToIntDef(Value,0)) of
0    :
 begin
 TQRDBText(sender).Font.Style := [];
 Value := '';
 end;
1..3 :
 begin
 TQRDBText(sender).Font.Style := [];
 end;
4..5 :
 begin
 TQRDBText(sender).Font.Style := [fsBold];
 end;
11 :
 begin
 TQRDBText(sender).Font.Style := [];
 Value := 'Î';
 end;
12 :
 begin
 TQRDBText(sender).Font.Style := [];
 Value := 'Í';
 end;
end; // case;
end;

procedure TCompReportForm.FormCreate(Sender: TObject);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TCompReportForm.CompRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TCompReportForm.LMTextPrint(sender: TObject; var Value: String);
begin
LMAll := LMAll + StrToIntDef(Value,0);
TextAngle(LMAImage.Canvas,90,16,IntToStr(LMAll));
end;

procedure TCompReportForm.IMTextPrint(sender: TObject; var Value: String);
begin
IMAll := IMAll + StrToIntDef(Value,0);
TextAngle(IMAImage.Canvas,90,16,IntToStr(IMAll));
end;

procedure TCompReportForm.AMTextPrint(sender: TObject; var Value: String);
begin
AMAll := AMAll + StrToIntDef(Value,0);
TextAngle(AMAImage.Canvas,90,16,IntToStr(AMAll));
end;

end.
