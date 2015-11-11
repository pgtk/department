unit dep_uchrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TUchReportForm = class(TForm)
    UspRep: TQuickRep;
    PageHeader: TQRBand;
    TableHeader: TQRBand;
    TableEnd: TQRBand;
    TableDetail: TQRBand;
    MinistryLabel: TQRLabel;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    CourseLabel: TQRLabel;
    GroupLabel: TQRLabel;
    SpecLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel19: TQRLabel;
    UspQuery: TADOQuery;
    ExImage1: TQRImage;
    ExImage2: TQRImage;
    ExImage3: TQRImage;
    ExImage4: TQRImage;
    ExImage5: TQRImage;
    ExImage6: TQRImage;
    ExImage7: TQRImage;
    ExImage8: TQRImage;
    ExImage9: TQRImage;
    ExImage10: TQRImage;
    ExImage11: TQRImage;
    ExImage12: TQRImage;
    ExImage13: TQRImage;
    ExImage14: TQRImage;
    ExImage15: TQRImage;
    ExImage16: TQRImage;
    ExImage17: TQRImage;
    MLImage: TQRImage;
    MIImage: TQRImage;
    MAImage: TQRImage;
    ExM2: TQRImage;
    ExM1: TQRImage;
    ExM3: TQRImage;
    ExM4: TQRImage;
    ExM6: TQRImage;
    ExM5: TQRImage;
    ExM7: TQRImage;
    ExM8: TQRImage;
    ExM9: TQRImage;
    ExM10: TQRImage;
    ExM11: TQRImage;
    ExM12: TQRImage;
    ExM13: TQRImage;
    ExM14: TQRImage;
    ExM15: TQRImage;
    ExM16: TQRImage;
    ExM17: TQRImage;
    LMAImage: TQRImage;
    IMAImage: TQRImage;
    AMAImage: TQRImage;
    Ex1: TQRDBText;
    Ex2: TQRDBText;
    Ex3: TQRDBText;
    Ex4: TQRDBText;
    Ex5: TQRDBText;
    Ex6: TQRDBText;
    Ex7: TQRDBText;
    Ex8: TQRDBText;
    Ex9: TQRDBText;
    Ex10: TQRDBText;
    Ex11: TQRDBText;
    Ex17: TQRDBText;
    Ex16: TQRDBText;
    Ex15: TQRDBText;
    Ex14: TQRDBText;
    Ex13: TQRDBText;
    Ex12: TQRDBText;
    AMText: TQRDBText;
    IMText: TQRDBText;
    LMText: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure SetSelText(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure UspRepBeforePrint(Sender: TCustomQuickRep;
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
  UchReportForm: TUchReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TUchReportForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
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

procedure TUchReportForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(UspQuery.RecNo);
end;

procedure TUchReportForm.StudNameTextPrint(sender: TObject;
var Value: String);
begin
Value := ' '+Value;
end;

procedure TUchReportForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TUchReportForm.SetSelText(sender: TObject; var Value: String);
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
end; // case;
end;

procedure TUchReportForm.FormCreate(Sender: TObject);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TUchReportForm.UspRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TUchReportForm.LMTextPrint(sender: TObject; var Value: String);
begin
LMAll := LMAll + StrToIntDef(Value,0);
TextAngle(LMAImage.Canvas,90,16,IntToStr(LMAll));
end;

procedure TUchReportForm.IMTextPrint(sender: TObject; var Value: String);
begin
IMAll := IMAll + StrToIntDef(Value,0);
TextAngle(IMAImage.Canvas,90,16,IntToStr(IMAll));
end;

procedure TUchReportForm.AMTextPrint(sender: TObject; var Value: String);
begin
AMAll := AMAll + StrToIntDef(Value,0);
TextAngle(AMAImage.Canvas,90,16,IntToStr(AMAll));
end;

end.
