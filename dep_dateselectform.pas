unit dep_dateselectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TDateSelectForm = class(TForm)
    MounthComboBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    YearEdit: TSpinEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateSelectForm: TDateSelectForm;

implementation

{$R *.dfm}

procedure TDateSelectForm.FormCreate(Sender: TObject);
var
Year  : word;
Mounth: word;
Day   : word;
begin
DecodeDate(Now,Year,Mounth,Day);
YearEdit.Value := Year;
MounthComboBox.ItemIndex := Mounth-1;
end;

end.
