unit dep_diplomerepform2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TDiplomeRepForm2 = class(TForm)
    DiplomeRep2: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Query: TADOQuery;
    PageFooterBand1: TQRBand;
    PageNumLabel: TQRLabel;
    QRLabel9: TQRLabel;
    NameLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    NumLabel: TQRLabel;
    RegNumLabel: TQRLabel;
    QRLabel12: TQRLabel;
    QRMemo: TQRMemo;
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure Page2Copy(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure FrameCopyPrint(sender: TObject; var Value: String);
    procedure PageNumLabelPrint(sender: TObject; var Value: String);
    procedure PrintCopy2(sender: TObject; var Value: String);
    procedure PrintValue2(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
  AisSlim : boolean;
  AStrHeight: integer;
  AStrLen   : integer;
  AFontSize : integer;
  AInYear   : integer;
  AOutYear  : integer;
  Aforeign  : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
  property isSlim: boolean read AisSlim write AisSlim;
  property size: integer read AFontSize write AFontSize;
  property len: integer read AStrLen write AStrLen;
  property h: integer read AStrHeight write AStrHeight;
  property inYear: integer read AInYear write AInYear;
  property outYear: integer read AOutYear write AOutYear;
  property Foreign: boolean read AForeign write AForeign;
    { Public declarations }
  end;

var
  DiplomeRepForm2: TDiplomeRepForm2;
  finished : boolean;



//{---------------- compact version
//const
//  len  = 95; // max length
//  h    = 12;  // string height
//  size = 7;
// h = 15; // old value
//----------------- end compact}


implementation

uses dep_main, dep_dep, kern, dep_studentform;

{$R *.dfm}

procedure TDiplomeRepForm2.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
if not isCopy then
  with sender as TQRLabel do
  begin
  Frame.DrawTop := false;
  Frame.DrawBottom := false;
  Frame.DrawLeft := false;
  Frame.DrawRight := false;
  end;
end;

procedure TDiplomeRepForm2.Page2Copy(sender: TObject;
  var Value: String);
begin
if not isCopy then
  Value := '';

end;

procedure TDiplomeRepForm2.QRDBText3Print(sender: TObject;
  var Value: String);
var
mark : integer;
begin
mark := StrToIntDef(Value,0);
case mark of
 0..2 : Value := '';
 3    : Value := 'удовлетворительно';
 4    : Value := 'хорошо';
 5    : Value := 'отлично';
 NN   : Value := 'освобожден(а)';
 NS   : Value := 'не изучал(а)';
 ZC   : Value := 'зачет';
end; // case;
end;

procedure TDiplomeRepForm2.FrameCopyPrint(sender: TObject;
  var Value: String);
begin
if not isCopy then
  with sender as TQRDBText do
  begin
  Frame.DrawTop := false;
  Frame.DrawBottom := false;
  Frame.DrawLeft := false;
  Frame.DrawRight := false;
  end;
  if Value = '0' then Value := ' ';
end;

procedure TDiplomeRepForm2.PageNumLabelPrint(sender: TObject;
  var Value: String);
begin
if DiplomeRep2.PageNumber > 1 then
  Value := Value+IntToStr(DiplomeRep2.PageNumber) else
  Value := ' ';
end;

procedure TDiplomeRepForm2.PrintCopy2(sender: TObject;
  var Value: String);
begin
if not ((DiplomeRep2.PageNumber > 1) and (isCopy)) then
  Value := ' ';
end;

procedure TDiplomeRepForm2.PrintValue2(sender: TObject; var Value: String);
begin
if (DiplomeRep2.PageNumber <= 1) then
  Value := ' ';
end;

procedure TDiplomeRepForm2.FormCreate(Sender: TObject);
begin
  len  := 90; // max length
  h    := 12;  // string height
  size := 7;
  finished := false;
end;

procedure TDiplomeRepForm2.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  year : cardinal;
begin
if not finished then
  begin
  QRMemo.Height := 14;
  year := CurrentYear;
  if ((inYear < 1992) and (Year > 1992) and (not foreign)) then
//  if ((inYear < 1992) and (outYear > 1992) and (not foreign)) then
    begin
    QRMemo.Lines.Add('Прокопьевский горный техникум с 13.08.1992 г. переименован в '+
      'государственное образовательное учреждение среднего профессионального образования Прокопьевский '+
      'горнотехнический колледж, приказ Минтопэнерго РФ №116/а от 13.08.1992 г.');
    QRMemo.Height := QRMemo.Height + 22;
    end; //if
  if ((inYear < 2003) and (Year > 2003) and (not foreign)) then
//  if ((inYear < 2003) and (outYear > 2003) and (not foreign)) then
    begin
    QRMemo.Lines.Add('Государственное образовательное учреждение '+
      'среднего профессионального образования Прокопьевский горнотехнический колледж '+
      'с 29.07.2003 переименован в Государственное '+
      'образовательное учреждение среднего профессионального образования Прокопьевский '+
      'горнотехнический колледж им. В.П. Романова, приказ '+
      'от 18.08.2003 г. №173/пр.');
    QRMemo.Height := QRMemo.Height + 37;
    end; // if
  if ((inYear < 2009) and (Year >= 2009) and (not foreign)) then
//  if ((inYear < 2009) and (outYear >= 2009) and (not foreign)) then
    begin
    QRMemo.Lines.Add('Государственное образовательное учреждение '+
      'среднего профессионального образования Прокопьевский горнотехнический колледж '+
      'им. В.П. Романова с 28.01.2009 переименован в Федеральное государственное '+
      'образовательное учреждение среднего профессионального образования Прокопьевский '+
      'горнотехнический колледж им. В.П. Романова, приказ Федерального агенства по '+
      'образованию от 22.12.2006 г. №1598.');
    QRMemo.Height := QRMemo.Height + 37;
    end; // if
  QRMemo.Lines.Add(
  '-----------------------------------------------------------------------------'+
  ' Конец документа '+
  '-----------------------------------------------------------------------------');
  SummaryBand1.Height := QRMemo.Height+1;
  finished := true;
  end;
 //SummaryBand1.Frame.DrawBottom := true;
end;

procedure TDiplomeRepForm2.QRDBText1Print(sender: TObject;
  var Value: String);
var
bstr, estr : string;
x, pos     : integer;
i          : integer;
force      : boolean;

begin
Value := ' '+Value;
//{ ---------- compact version
if isSlim then
  begin
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
      if ((i >= 3) and (len >= x)) then break;
      end;
    bstr := copy(Value, 1, pos);
    estr := copy(Value, pos, length(Value)-pos+1);
    Value := bstr+#$D+estr;
  end;
  QRDBText1.Font.Size := size;
  if QRDBText1.Height < h then QRDBText1.Height := h;
  QRDBText2.Height := QRDBText1.Height;
  QRDBText3.Height := QRDBText1.Height;
  QRDBText2.Font.Size := size;
  QRDBText3.Font.Size := size;
  DetailBand1.Height := QRDBText1.Height+2;
  end;
//------------ end compact}
end;

end.
