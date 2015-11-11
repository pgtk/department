unit dep_cardprintform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TCardPrintForm = class(TForm)
    CardRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    StNameLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure CardRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CardPrintForm: TCardPrintForm;
  i : integer;
implementation

uses dep_cardform;

{$R *.dfm}

procedure TCardPrintForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
inc(i);
if i < 10 then
  Value := ' '+IntToStr(i)+'. '+Value
else
  Value := IntToStr(i)+'. '+Value
end;

procedure TCardPrintForm.FormCreate(Sender: TObject);
begin
i := 0;
end;

procedure TCardPrintForm.CardRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
i := 0;
end;

end.
