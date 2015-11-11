unit dep_addsubjectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, Spin;

type
  TAddSubjectForm = class(TForm)
    Label1: TLabel;
    DateEdit: TDateTimePicker;
    Label2: TLabel;
    TeacherEdit: TEdit;
    LookupBtn: TButton;
    OkBtn: TButton;
    CancelBtn: TButton;
    Label3: TLabel;
    HoursEdit: TSpinEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    CwHoursEdit: TSpinEdit;
    Label4: TLabel;
    CwDateEdit: TDateTimePicker;
    CwCheckBox: TCheckBox;
    Label6: TLabel;
    AHoursEdit: TSpinEdit;
    Label7: TLabel;
    HomHoursEdit: TSpinEdit;
    hasMarkCheckBox: TCheckBox;
    procedure LookupBtnClick(Sender: TObject);
    procedure CwCheckBoxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddSubjectForm: TAddSubjectForm;

implementation

uses kern, dep_semsubjectsform;

{$R *.dfm}

procedure TAddSubjectForm.LookupBtnClick(Sender: TObject);
begin
NotYet;
end;

procedure TAddSubjectForm.CwCheckBoxClick(Sender: TObject);
begin
CwDateEdit.Enabled := CwCheckBox.Checked;
CwHoursEdit.Enabled := CwCheckBox.Checked;
end;

procedure TAddSubjectForm.FormCreate(Sender: TObject);
begin
CwDateEdit.Enabled := CwCheckBox.Checked;
CwDateEdit.Date := now;
DateEdit.Date := now;
CwHoursEdit.Enabled := CwCheckBox.Checked;
end;

end.
