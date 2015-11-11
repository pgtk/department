unit dep_lookupstudentsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, CheckLst;

type
  TStudentsLookupForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    GroupComboBox: TComboBox;
    Label1: TLabel;
    Query: TADOQuery;
    StudentsListBox: TCheckListBox;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentsLookupForm: TStudentsLookupForm;

implementation

uses dep_main;

{$R *.dfm}

end.
