unit dep_schoolform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TSchoolManForm = class(TForm)
    SchoolGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    SchoolQuery: TADOQuery;
    SchoolCommand: TADOCommand;
    SchoolDataSource: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SchoolDataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SchoolManForm: TSchoolManForm;

implementation

uses dep_main, kern, dep_inputform;

{$R *.dfm}

procedure TSchoolManForm.FormCreate(Sender: TObject);
begin
if not SchoolQuery.Active then
SchoolQuery.Open;
end;

// Изменение названия учреждения
procedure TSchoolManForm.AddBtnClick(Sender: TObject);
var
inputform : TInputForm;
begin
inputform := TInputForm.Create(self);
if inputform.ShowModal = mrOk then
begin
 SchoolCommand.CommandText :=
  'INSERT INTO Schools (sc_pcode, sc_Name) VALUES (NEWID(), '''+
  inputform.NameEdit.Text+''');';
 SchoolCommand.Execute;
 SchoolQuery.Requery([]);
end;
inputform.Free;
end;

// Изменение названия учреждения
procedure TSchoolManForm.EditBtnClick(Sender: TObject);
var
inputform : TInputForm;
begin
inputform := TInputForm.Create(self);
inputform.NameEdit.Text :=
SchoolQuery.FieldByName('sc_Name').AsString;
if inputform.ShowModal = mrOk then
begin
 SchoolCommand.CommandText :=
  'UPDATE Schools SET sc_Name = '''+
  inputform.NameEdit.Text+''' WHERE sc_pcode = '''+
  SchoolQuery.FieldByName('sc_pcode').AsString+''';';
 SchoolCommand.Execute;
 SchoolQuery.Requery([]);
end;
inputform.Free;
end;

procedure TSchoolManForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
begin
SchoolCommand.CommandText := 'DELETE FROM Schools WHERE sc_pcode = '''+
SchoolQuery.FieldByName('sc_pcode').AsString+''';';
SchoolCommand.Execute;
SchoolQuery.Requery([]);
end;
end;

procedure TSchoolManForm.SchoolDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
DelBtn.Enabled := SchoolQuery.RecNo > 0;
EditBtn.Enabled := SchoolQuery.RecNo > 0;
end;

end.
