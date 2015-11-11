unit dep_comissionrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TComissionReportForm = class(TForm)
    ComissionRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    Query: TADOQuery;
    DescLabel: TQRLabel;
    DirectorLabel: TQRLabel;
    MembersLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText3: TQRDBText;
    DateLabel: TQRLabel;
    QRLabel24: TQRLabel;
    PDirectorSignLabel: TQRLabel;
    MembersSignLabel: TQRLabel;
    QRLabel14: TQRLabel;
    SecretarSignLabel: TQRLabel;
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComissionReportForm: TComissionReportForm;

const
 mh = 70;
 dh = 16;
 h  = 32;
 i  = 0.48;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TComissionReportForm.QRLabel18Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(Query.RecNo);
if 'TQRDBText' = sender.ClassName then
  with sender as TQRDBText do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end
else
  with sender as TQRLabel do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end; // with
DetailBand1.Height := QRDBText1.Height-1;
end;

procedure TComissionReportForm.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
if 'TQRDBText' = sender.ClassName then
  with sender as TQRDBText do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end
else
  with sender as TQRLabel do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end; // with
DetailBand1.Height := QRDBText1.Height-1;
end;

procedure TComissionReportForm.QRDBText3Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
if 'TQRDBText' = sender.ClassName then
  with sender as TQRDBText do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end
else
  with sender as TQRLabel do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end; // with
DetailBand1.Height := QRDBText1.Height-1;
end;

procedure TComissionReportForm.QRDBText1Print(sender: TObject;
  var Value: String);

var
pos  : integer;
str  : string;
x    : integer;

begin
pos := 0;
Value := ' '+Value;
for x := length(Value) downto 1 do
  if Value[x] = ' ' then
    begin
    pos := x;
    if (pos <= mh) then break;
    end;
str := Copy(Value, 1, pos-1)+#$D+' '+Copy(Value, pos+1, Length(Value)-pos);
if 'TQRDBText' = sender.ClassName then
  with sender as TQRDBText do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end
else
  with sender as TQRLabel do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end; // with
DetailBand1.Height := QRDBText1.Height-1;
end;

procedure TComissionReportForm.QRDBText2Print(sender: TObject;
  var Value: String);
var
val : real;
wdg : TQRDBText;
begin
val := StrToFloatDef(Value, 0);
wdg := TQRDBText(sender);
if val > MINAVG then
   wdg.Font.Style := [fsBold]
   else
   wdg.Font.Style := [];
if 'TQRDBText' = sender.ClassName then
  with sender as TQRDBText do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end
else
  with sender as TQRLabel do
    begin
    Height := dh*Round(Length(Query.FieldByName('rp_theme').AsString)/mh + i);
    if Height < h then Height := h;
    end; // with
DetailBand1.Height := QRDBText1.Height-1;
end;

end.
