unit dep_studentsmarkform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DB, ADODB;

type
  TStudentsMarkForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    StudGrid: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MarkGroupBox: TGroupBox;
    NABtn: TButton;
    Mark3Btn: TButton;
    Mark4Btn: TButton;
    Mark5Btn: TButton;
    Label4: TLabel;
    procedure NABtnClick(Sender: TObject);
    procedure Mark3BtnClick(Sender: TObject);
    procedure Mark4BtnClick(Sender: TObject);
    procedure Mark5BtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentsMarkForm: TStudentsMarkForm;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TStudentsMarkForm.NABtnClick(Sender: TObject);
var
x : integer;
begin
for x := 1 to StudGrid.RowCount -1 do
  StudGrid.Cells[1,x] := IntToStr(NA);
end;

procedure TStudentsMarkForm.Mark3BtnClick(Sender: TObject);
var
x : integer;
begin
for x := 1 to StudGrid.RowCount -1 do
  StudGrid.Cells[1,x] := IntToStr(3);
end;

procedure TStudentsMarkForm.Mark4BtnClick(Sender: TObject);
var
x : integer;
begin
for x := 1 to StudGrid.RowCount -1 do
  StudGrid.Cells[1,x] := IntToStr(4);
end;

procedure TStudentsMarkForm.Mark5BtnClick(Sender: TObject);
var
x : integer;
begin
for x := 1 to StudGrid.RowCount -1 do
  StudGrid.Cells[1,x] := IntToStr(5);
end;

end.
