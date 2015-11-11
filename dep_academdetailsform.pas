unit dep_academdetailsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TAcademDetailsForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    FormComboBox: TComboBox;
    GetDatePicker: TDateTimePicker;
    NumberEdit: TEdit;
    RegNumberEdit: TEdit;
    Label6: TLabel;
    ReasonMemo: TMemo;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    StartDatePicker: TDateTimePicker;
    Label8: TLabel;
    StopDatePicker: TDateTimePicker;
    Label9: TLabel;
    PlaceMemo: TMemo;
    CmdEdit: TEdit;
    GetReasonLabel: TLabel;
    GetReasonComboBox: TComboBox;
    Label10: TLabel;
    CmdDateEdit: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure CmdDateEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AcademDetailsForm: TAcademDetailsForm;

implementation

{$R *.dfm}

procedure TAcademDetailsForm.FormCreate(Sender: TObject);
begin
GetDatePicker.Date := Now;
end;

procedure TAcademDetailsForm.CmdDateEditChange(Sender: TObject);
begin
StopDatePicker.Date := CmdDateEdit.Date;
end;

end.
