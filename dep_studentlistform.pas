unit dep_studentlistform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TStudentListForm = class(TForm)
    AddBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentListForm: TStudentListForm;

implementation

{$R *.dfm}

end.
