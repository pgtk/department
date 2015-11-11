unit dep_weekmissingsrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TWeekMissingsRepForm = class(TForm)
    WeekMissingsRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DayLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DayLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    DayLabel3: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    DayLabel4: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    DayLabel5: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    LMImage: TQRImage;
    IMImage: TQRImage;
    AMImage: TQRImage;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescLabel: TQRLabel;
    SpecLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel47: TQRLabel;
    DayLabel6: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel45Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WeekMissingsRepForm: TWeekMissingsRepForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TWeekMissingsRepForm.QRLabel3Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TWeekMissingsRepForm.QRLabel45Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TWeekMissingsRepForm.QRDBText1Print(sender: TObject;
  var Value: String);

var
studentsCount : integer;
height        : integer;
fontSize      : integer;
x             : integer;
lb            : TQRLabel;

begin
studentsCount := MainForm.StudentsQuery.RecordCount;
fontSize := 9;
height := 16;
case studentsCount of
1..20 : begin
        fontSize := 11;
        height := 18;
        end;
21..30 : begin
        fontSize := 10;
        height := 16;
        end;
31..40 : begin
        fontSize := 8;
        height := 14;
        end;
//36..40 : begin
//        fontSize := 9;
//        height := 16;
//        end;

end; // case
Value := ' '+Value;
DetailBand1.Height := height-1;
QRLabel45.Font.Size := fontSize;
QRLabel45.Height := height;
QRDBText1.Font.Size := fontSize;
QRDBText1.Height := height;
for x := 52 to 79 do
  begin
  lb := FindComponent('QRLabel'+IntToStr(x)) As TQRLabel;
  if (nil <> lb) then
    begin
    lb.Font.Size := fontSize;
    lb.Height := height;
    end;
  end; // if
end;

end.
