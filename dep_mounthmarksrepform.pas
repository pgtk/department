unit dep_mounthmarksrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TMounthMarkReportForm = class(TForm)
    MounthMarkRep: TQuickRep;
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
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel19: TQRLabel;
    MounthMarkQuery: TADOQuery;
    SbImage1: TQRImage;
    SbImage2: TQRImage;
    SbImage3: TQRImage;
    SbImage4: TQRImage;
    SbImage5: TQRImage;
    SbImage6: TQRImage;
    SbImage7: TQRImage;
    SbImage8: TQRImage;
    SbImage9: TQRImage;
    SbImage10: TQRImage;
    SbImage11: TQRImage;
    SbImage12: TQRImage;
    SbImage13: TQRImage;
    SbImage14: TQRImage;
    SbImage15: TQRImage;
    SbImage16: TQRImage;
    SbImage17: TQRImage;
    MLImage: TQRImage;
    MIImage: TQRImage;
    MAImage: TQRImage;
    SbM2: TQRImage;
    SbM1: TQRImage;
    SbM3: TQRImage;
    SbM4: TQRImage;
    SbM6: TQRImage;
    SbM5: TQRImage;
    SbM7: TQRImage;
    SbM8: TQRImage;
    SbM9: TQRImage;
    SbM10: TQRImage;
    SbM11: TQRImage;
    SbM12: TQRImage;
    SbM13: TQRImage;
    SbM14: TQRImage;
    SbM15: TQRImage;
    SbM16: TQRImage;
    SbM17: TQRImage;
    LMAImage: TQRImage;
    IMAImage: TQRImage;
    AMAImage: TQRImage;
    Sb1: TQRDBText;
    Sb2: TQRDBText;
    Sb3: TQRDBText;
    Sb4: TQRDBText;
    Sb5: TQRDBText;
    Sb6: TQRDBText;
    Sb7: TQRDBText;
    Sb8: TQRDBText;
    Sb9: TQRDBText;
    Sb10: TQRDBText;
    Sb11: TQRDBText;
    Sb17: TQRDBText;
    Sb16: TQRDBText;
    Sb15: TQRDBText;
    Sb14: TQRDBText;
    Sb13: TQRDBText;
    Sb12: TQRDBText;
    AMText: TQRDBText;
    IMText: TQRDBText;
    LMText: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    SbImage21: TQRImage;
    SbImage20: TQRImage;
    SbImage19: TQRImage;
    SbImage18: TQRImage;
    Sb21: TQRDBText;
    Sb20: TQRDBText;
    Sb19: TQRDBText;
    Sb18: TQRDBText;
    SbM21: TQRImage;
    SbM20: TQRImage;
    SbM19: TQRImage;
    SbM18: TQRImage;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure SetSelText(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure MounthMarkRepBeforePrint(Sender: TCustomQuickRep;
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
  MounthMarkReportForm: TMounthMarkReportForm;

implementation

uses dep_main;

{$R *.dfm}


procedure TMounthMarkReportForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
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



procedure TMounthMarkReportForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(MounthMarkQuery.RecNo);
end;

procedure TMounthMarkReportForm.StudNameTextPrint(sender: TObject;
var Value: String);
begin
Value := ' '+Value;
end;

procedure TMounthMarkReportForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TMounthMarkReportForm.SetSelText(sender: TObject; var Value: String);
begin
case (StrToIntDef(Value,0)) of
0    :
 begin
 TQRDBText(sender).Font.Style := [];
 TQRDBText(sender).Font.Size := 14;
 Value := '';
 end;
1..3 :
 begin
 TQRDBText(sender).Font.Style := [];
 TQRDBText(sender).Font.Size := 14;
 end;
4..5 :
 begin
 TQRDBText(sender).Font.Style := [fsBold];
 TQRDBText(sender).Font.Size := 14;
 end;
10   :
 begin
 TQRDBText(sender).Font.Style := [];
 TQRDBText(sender).Font.Size := 8;
 Value := 'ó';
 end;
11   :
 begin
 TQRDBText(sender).Font.Style := [];
 TQRDBText(sender).Font.Size := 8;
 Value := 'Î';
 end;
12   :
 begin
 TQRDBText(sender).Font.Style := [];
 TQRDBText(sender).Font.Size := 8;
 Value := 'Í';
 end;

end; // case;
end;

procedure TMounthMarkReportForm.FormCreate(Sender: TObject);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TMounthMarkReportForm.MounthMarkRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
IMAll := 0;
LMAll := 0;
AMAll := 0;
end;

procedure TMounthMarkReportForm.LMTextPrint(sender: TObject; var Value: String);
begin
LMAll := LMAll + StrToIntDef(Value,0);
TextAngle(LMAImage.Canvas,90,16,IntToStr(LMAll));
end;

procedure TMounthMarkReportForm.IMTextPrint(sender: TObject; var Value: String);
begin
IMAll := IMAll + StrToIntDef(Value,0);
TextAngle(IMAImage.Canvas,90,16,IntToStr(IMAll));
end;

procedure TMounthMarkReportForm.AMTextPrint(sender: TObject; var Value: String);
begin
AMAll := AMAll + StrToIntDef(Value,0);
TextAngle(AMAImage.Canvas,90,16,IntToStr(AMAll));
end;

end.
