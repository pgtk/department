unit dep_studmissform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Spin;

type
  TStudMissForm = class(TForm)
    StudGrid: TStringGrid;
    OkBtn: TButton;
    CancelBtn: TButton;
    WeekEdit: TSpinEdit;
    Label1: TLabel;
    procedure Check(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  new: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudMissForm: TStudMissForm;

implementation

uses dep_groupweekmissform, kern;

{$R *.dfm}

procedure TStudMissForm.Check(Sender: TObject);
begin
if new then
with Owner as TGroupWeekMissForm do
 begin
 WeekQuery.Filtered := false;
 WeekQuery.Filter := 'gwm_Week = '''+IntToStr(self.WeekEdit.Value)+'''';
 WeekQuery.Filtered := true;
 OkBtn.Enabled := WeekQuery.RecordCount = 0;
 WeekQuery.Filtered := false;
 end;
end;

procedure TStudMissForm.FormCreate(Sender: TObject);
begin
new := TGroupWeekMissForm(Owner).New;
WeekEdit.MaxValue := MAXWEEK;
WeekEdit.Enabled := new;
Check(self);
end;

end.
