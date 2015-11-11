unit dep_selectmounthform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TSelectMounthForm = class(TForm)
    MounthComboBox: TComboBox;
    Label1: TLabel;
    YearEdit: TSpinEdit;
    Label2: TLabel;
    OkBtn: TButton;
    CancelBtn: TButton;
    AutofillCheckBox: TCheckBox;
    GroupCheckBox: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure MounthComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
  procedure NextMonth;
  procedure PrevMonth;
    { Public declarations }
  end;

var
  SelectMounthForm: TSelectMounthForm;

implementation

{$R *.dfm}

procedure TSelectMounthForm.NextMonth;
begin
if (MounthComboBox.ItemIndex > 0) then
  MounthComboBox.ItemIndex := MounthComboBox.ItemIndex - 1
else
  begin
  MounthComboBox.ItemIndex := 11;
  YearEdit.Value := YearEdit.Value-1;
  end;
end;


procedure TSelectMounthForm.PrevMonth;
begin
if (MounthComboBox.ItemIndex < 11) then
  MounthComboBox.ItemIndex := MounthComboBox.ItemIndex + 1
else
  begin
  MounthComboBox.ItemIndex := 0;
  YearEdit.Value := YearEdit.Value+1;
  end;
end;


procedure TSelectMounthForm.FormCreate(Sender: TObject);
var
Day, Mounth, Year : word;
begin
DecodeDate(Now,Year,Mounth,Day);
 if Mounth > 1 then
   dec(Mounth)
 else
   begin
   Mounth := 12;
   dec(Year);
   end;
MounthComboBox.ItemIndex := Mounth-1;
YearEdit.Value := Year;
end;

procedure TSelectMounthForm.MounthComboBoxChange(Sender: TObject);
begin
OkBtn.Enabled := (MounthComboBox.ItemIndex >= 0);
end;

end.
