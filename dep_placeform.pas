unit dep_placeform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ADODB, DB, StdCtrls;

type
  TPlaceManForm = class(TForm)
    PlaceGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    PlaceCommand: TADOCommand;
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  Connection : TADOConnection;
    { Public declarations }
  end;

var
  PlaceManForm: TPlaceManForm;

implementation

uses dep_main, kern, dep_inputform, dep_studentform;

{$R *.dfm}

procedure TPlaceManForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrOk then
begin
 PlaceCommand.CommandText :=
  'DELETE FROM Places WHERE pl_pcode = '''+
  TStudentForm(Owner).PlaceQuery.FieldByName('pl_pcode').AsString+''';';
 PlaceCommand.Execute;
 TStudentForm(Owner).PlaceQuery.Requery([]);
end;
end;

procedure TPlaceManForm.EditBtnClick(Sender: TObject);
var
inputform : TInputForm;
begin
inputform := TInputForm.Create(self);
inputform.NameEdit.Text :=
TStudentForm(Owner).PlaceQuery.FieldByName('pl_Name').AsString;
if inputform.ShowModal = mrOk then
begin
 PlaceCommand.CommandText :=
  'UPDATE Places SET pl_Name = '''+InputForm.NameEdit.Text+
  ''' WHERE pl_pcode = '''+
  TStudentForm(Owner).PlaceQuery.FieldByName('pl_Name').AsString+''';';
 PlaceCommand.Execute;
 TStudentForm(Owner).PlaceQuery.Requery([]);
end;
inputform.Free;
end;

procedure TPlaceManForm.AddBtnClick(Sender: TObject);
var
inputform : TInputForm;
begin
inputform := TInputForm.Create(self);
if inputform.ShowModal = mrOk then
begin
PlaceCommand.CommandText :=
'INSERT INTO Places (pl_pcode, pl_Name) VALUES '+
'(NEWID(), '''+InputForm.NameEdit.Text+''');';
PlaceCommand.Execute;
TStudentForm(Owner).PlaceQuery.Requery([]);
end;
inputform.Free;
end;

procedure TPlaceManForm.FormCreate(Sender: TObject);
begin
Connection := MainForm.Connection;
end;

end.
