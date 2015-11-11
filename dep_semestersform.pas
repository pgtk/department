unit dep_semestersform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DateUtils;

type
  TSemesterForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    SNumEdit: TSpinEdit;
    BGroupBox: TGroupBox;
    EGroupBox: TGroupBox;
    BWeekEdit: TSpinEdit;
    BYearEdit: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EWeekEdit: TSpinEdit;
    EYearEdit: TSpinEdit;
    Label8: TLabel;
    WeekEdit: TSpinEdit;
    Label9: TLabel;
    WeekWorkEdit: TSpinEdit;
    BMounthEdit: TComboBox;
    EMounthEdit: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure CountWeeks(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemesterForm: TSemesterForm;

implementation

uses kern;

{$R *.dfm}

procedure TSemesterForm.CountWeeks(Sender: TObject);
var
BDate, EDate : TDate;
WeekCount    : word;
begin
if BMounthEdit.ItemIndex > 11 then BMounthEdit.ItemIndex := 11;
if BMounthEdit.ItemIndex < 0 then BMounthEdit.ItemIndex := 0;
if EMounthEdit.ItemIndex > 11 then EMounthEdit.ItemIndex := 11;
if EMounthEdit.ItemIndex < 0 then EMounthEdit.ItemIndex := 0;
BDate := EncodeDate(BYearEdit.Value,BMounthEdit.ItemIndex+1,BWeekEdit.Value*7-6);
EDate := EncodeDate(EYearEdit.Value,EMounthEdit.ItemIndex+1,EWeekEdit.Value*7-6);
WeekCount := WeeksBetween(BDate, EDate);
if WeekCount = 0 then WeekCount := 1;
WeekEdit.Value := WeekCount;
end;


procedure TSemesterForm.FormCreate(Sender: TObject);
begin
BMounthEdit.ItemIndex := 0;
EMounthEdit.ItemIndex := 0;
BYearEdit.Value := CurrentYear;
BWeekEdit.MaxValue := MAXWEEK;
EYearEdit.Value := CurrentYear;
EWeekEdit.MaxValue := MAXWEEK;
end;

end.
