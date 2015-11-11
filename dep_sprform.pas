unit dep_sprform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TSprForm = class(TForm)
    SprRep: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    TextLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    procedure QRLabel3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SprForm: TSprForm;

implementation

{$R *.dfm}

procedure TSprForm.QRLabel3Print(sender: TObject; var Value: String);
begin
Value := 'Директор '+#$D+'ГОУ СПО ПГТК им. В. П. Романова';
end;

end.
