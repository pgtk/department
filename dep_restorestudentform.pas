unit dep_restorestudentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB;

type
  TRestoreStudentForm = class(TForm)
    OtherGroupCheckBox: TCheckBox;
    GroupGrid: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure OtherGroupCheckBoxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RestoreStudentForm: TRestoreStudentForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TRestoreStudentForm.OtherGroupCheckBoxClick(Sender: TObject);
begin
GroupGrid.Visible := OtherGroupCheckBox.Checked;
end;

procedure TRestoreStudentForm.FormCreate(Sender: TObject);
begin
GroupGrid.Visible := OtherGroupCheckBox.Checked;
end;

end.
