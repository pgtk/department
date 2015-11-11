unit dep_mounthrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TMounthRepForm = class(TForm)
    MounthRep: TQuickRep;
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
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel19: TQRLabel;
    Image1: TQRImage;
    Image2: TQRImage;
    Image3: TQRImage;
    Image4: TQRImage;
    Image5: TQRImage;
    Image6: TQRImage;
    Image7: TQRImage;
    Image8: TQRImage;
    Image9: TQRImage;
    Image10: TQRImage;
    Image11: TQRImage;
    Image12: TQRImage;
    Image13: TQRImage;
    Image14: TQRImage;
    Image15: TQRImage;
    Image16: TQRImage;
    Image17: TQRImage;
    MLImage: TQRImage;
    MIImage: TQRImage;
    MAImage: TQRImage;
    ExM2: TQRImage;
    ExM1: TQRImage;
    ExM3: TQRImage;
    ExM4: TQRImage;
    ChM1: TQRImage;
    ExM5: TQRImage;
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
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
  procedure TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
    { Public declarations }
  end;

var
  MounthRepForm: TMounthRepForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TMounthRepForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
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

procedure TMounthRepForm.NumLabelPrint(sender: TObject; var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TMounthRepForm.StudNameTextPrint(sender: TObject;
var Value: String);
begin
Value := ' '+Value;
end;

procedure TMounthRepForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

end.
