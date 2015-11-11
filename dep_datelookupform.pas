unit dep_datelookupform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TDateLookupForm = class(TForm)
    Calendar: TMonthCalendar;
    OkBtn: TButton;
    CancelBtn: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateLookupForm: TDateLookupForm;

implementation

{$R *.dfm}

procedure TDateLookupForm.FormCreate(Sender: TObject);
begin
Calendar.Date := Now;
end;

end.
