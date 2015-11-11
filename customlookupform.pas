unit customlookupform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst;

type
  TCustomLookupForm = class(TForm)
    GroupBox: TGroupBox;
    OkBtn: TButton;
    CancelBtn: TButton;
    ListBox: TCheckListBox;
    procedure ListBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  CustomLookupForm: TCustomLookupForm;

implementation

{$R *.dfm}

procedure TCustomLookupForm.ListBoxClick(Sender: TObject);
var
x,s   : integer;

begin
s := 0;
for x := 0 to ListBox.Items.Count -1 do
  if ListBox.Checked[x] then
    inc(s);
OkBtn.Enabled := s > 0;
end;

end.
