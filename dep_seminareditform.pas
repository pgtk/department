unit dep_seminareditform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, CheckLst;

type
  TDetailEditForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    StudentListBox: TCheckListBox;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  ASubjectID: string;
  public
    { Public declarations }
  property SubjectID: string read ASubjectID write ASubjectID;  
  end;

var
  DetailEditForm: TDetailEditForm;

implementation

uses kern, dep_subjectselectform;

{$R *.dfm}

procedure TDetailEditForm.FormDestroy(Sender: TObject);
var
x  : integer;
begin
for x := 0 to StudentListBox.Items.Count -1 do
  StudentListBox.Items.Objects[x].Free;
end;

end.
