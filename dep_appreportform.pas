unit dep_appreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TAppReportForm = class(TForm)
    AppRep: TQuickRep;
    Query: TADOQuery;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescLabel: TQRLabel;
    DepLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    Crep: TQRCompositeReport;
    PageFooterBand1: TQRBand;
    DateLabel: TQRLabel;
    SignLabel: TQRLabel;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure CrepAddReports(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppReportForm: TAppReportForm;

implementation

uses dep_dep, dep_main, dep_appcontreportform, kern;

{$R *.dfm}

procedure TAppReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
var
bstr, estr : string;
x, pos     : integer;
i          : integer;
force      : boolean;

const
len = 50;
h   = 20;

begin
Value := ' '+Value;
//{ ---------- compact version
//  force := (abs ((length(Value) mod len) - len) <= 10) and (length(Value) > 10);
  force := (length(Value) > len);
  QRDBText1.Height := h*Roof(Length(Value), len);
//  if (force and (QRDBText1.Height = h)) then
  if (force) then
  begin
//    QRDBText1.Height := QRDBText1.Height + h;
  i := 0;
  pos := 0;
  for x := length(Value) downto 1 do
    if Value[x] = ' ' then
      begin
      pos := x;
      inc(i);
      if ((i >= 2) and (len >= x)) then break;
      end;
    bstr := copy(Value, 1, pos);
    estr := copy(Value, pos, length(Value)-pos+1);
    Value := bstr+#$D+estr;
  end;
  if QRDBText1.Height < h then QRDBText1.Height := h;
  QRDBText2.Height := QRDBText1.Height;
  QRDBText3.Height := QRDBText1.Height;
  QRDBText4.Height := QRDBText1.Height;
  QRDBText5.Height := QRDBText1.Height;
  QRDBText6.Height := QRDBText1.Height;
  QRDBText7.Height := QRDBText1.Height;
  DetailBand1.Height := QRDBText1.Height;
end;

procedure TAppReportForm.QRLabel3Print(sender: TObject; var Value: String);
begin
Value := '';
end;

procedure TAppReportForm.QRDBText8Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TAppReportForm.CrepAddReports(Sender: TObject);
var
rep      : TAppContRepForm;
//tmpquery : TADOQuery;

begin
rep := TAppContRepForm.Create(self);
with rep.ContQuery.SQL do
  begin
  Clear;
  Add('EXEC GetSpecContingent '''+MainForm.DepID+'''');
  end;
rep.ContQuery.Open;
rep.DateLabel.Caption := DateLabel.Caption;
rep.SignLabel.Caption := SignLabel.Caption;
Crep.Reports.Add(AppRep);
Crep.Reports.Add(rep.AppContRep);
end;

end.
