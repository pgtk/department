unit dep_editpracticsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TEditPracticsForm = class(TForm)
    Label1: TLabel;
    TitleEdit: TEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    Label3: TLabel;
    LengthEdit: TEdit;
    Label4: TLabel;
    TeachersGroupBox: TGroupBox;
    TeachersEdit: TEdit;
    Memo1: TMemo;
    NumberEdit: TSpinEdit;
    procedure TitleEditChange(Sender: TObject);
    procedure TeachersEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditPracticsForm: TEditPracticsForm;

implementation

{$R *.dfm}

procedure TEditPracticsForm.TitleEditChange(Sender: TObject);
begin
OkBtn.Enabled := (Trim(TitleEdit.Text) <> '');
end;

procedure TEditPracticsForm.TeachersEditChange(Sender: TObject);
begin
OkBtn.Enabled := (Trim(TitleEdit.Text) <> '');
end;

procedure TEditPracticsForm.FormCreate(Sender: TObject);
begin
OkBtn.Enabled := (Trim(TitleEdit.Text) <> '');
end;

end.
