unit dep_studyplandetailsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TStudyPlanDetailsForm = class(TForm)
    CloseBtn: TButton;
    PageControl1: TPageControl;
    SubjectsTabSheet: TTabSheet;
    SubjectsDataGrid: TDBGrid;
    AddSubjectBtn: TButton;
    EditSubjectBtn: TButton;
    DelSubjectBtn: TButton;
    SubjectsQuery: TADOQuery;
    SubjectsDataSource: TDataSource;
    SQLCommand: TADOCommand;
    CoursesTabSheet: TTabSheet;
    CourseQuery: TADOQuery;
    CourseDataSource: TDataSource;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    SemesterGroupBox: TGroupBox;
    CourseDataGrid: TDBGrid;
    SemesterDataGrid: TDBGrid;
    SemestersQuery: TADOQuery;
    SemesterDataSource: TDataSource;
    AddCourseBtn: TButton;
    EditCourseBtn: TButton;
    DelCourseBtn: TButton;
    AddSemesterBtn: TButton;
    EditSemesterBtn: TButton;
    DelSemesterBtn: TButton;
    procedure AddSubjectBtnClick(Sender: TObject);
    procedure EditSubjectBtnClick(Sender: TObject);
    procedure DelSubjectBtnClick(Sender: TObject);
    procedure SubjectsTabSheetShow(Sender: TObject);
    procedure SubjectsTabSheetHide(Sender: TObject);
    procedure CoursesTabSheetHide(Sender: TObject);
    procedure CoursesTabSheetShow(Sender: TObject);
    procedure AddCourseBtnClick(Sender: TObject);
    procedure EditCourseBtnClick(Sender: TObject);
    procedure DelCourseBtnClick(Sender: TObject);
    procedure AddSemesterBtnClick(Sender: TObject);
    procedure EditSemesterBtnClick(Sender: TObject);
    procedure DelSemesterBtnClick(Sender: TObject);
    procedure SubjectsDataSourceDataChange(Sender: TObject; Field: TField);
    procedure CourseDataSourceDataChange(Sender: TObject; Field: TField);
  private
  APlanCode : string;
  procedure querySubjects;
  procedure queryCourses;
  procedure querySemesters;
  procedure queryData(var component: TADOQuery; const query: String);
  procedure executeCommand(const command: WideString);
    { Private declarations }
  public
  property planCode: string read APlanCode write APlanCode;
    { Public declarations }
  end;

var
  StudyPlanDetailsForm: TStudyPlanDetailsForm;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TStudyPlanDetailsForm.AddSubjectBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.EditSubjectBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.DelSubjectBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.executeCommand(const command: WideString);
begin
  try
  SQLCommand.CommandText := command;
  SQLCommand.Execute;
  except
    On e: Exception do
      MessageDlg('Проблема при выполнении команды: '+e.message , mtError, [mbOk], 0);
  end;
end;

procedure TStudyPlanDetailsForm.queryData(var component: TADOQuery; const query: String);
begin
  if (component.Active) then
    component.Close;
  try
    component.SQL.Clear;
    component.SQL.Add(query);
    component.Open;
  except
    On e: Exception do
      MessageDlg('Проблема при выборке: '+e.message , mtError, [mbOk], 0);
  end;
end;


procedure TStudyPlanDetailsForm.querySubjects;
var
query : string;
begin
  query := 'SELECT * FROM PlanSubjects, SbTypes WHERE (sbt_pcode = psb_type) AND (psb_stpcode = '''+
    planCode+''');';
  queryData(SubjectsQuery, query);
end;

procedure TStudyPlanDetailsForm.queryCourses;
var
query : string;
begin
  query := 'SELECT pcs_pcode, pcs_number, (SELECT COUNT(psm_pcode) FROM PlanSemesters '+
    '  WHERE (psm_pcscode = pcs_pcode)) AS pcs_semesters FROM PlanCourses '+
    '  WHERE (pcs_stpcode = '''+planCode+''') GROUP BY pcs_pcode, pcs_number;';
  queryData(CourseQuery, query);
end;

procedure TStudyPlanDetailsForm.querySemesters;
var
query : string;
begin
  query := 'SELECT psm_pcode, psm_number, psm_length FROM PlanSemesters '+
    '  WHERE (psm_pcscode = '''+CourseQuery.FieldByName('pcs_pcode').AsString+
    ''') AND (psm_stpcode = '''+planCode+''');';
  queryData(SemestersQuery, query);
end;


procedure TStudyPlanDetailsForm.SubjectsTabSheetShow(Sender: TObject);
begin
  querySubjects;
end;

procedure TStudyPlanDetailsForm.SubjectsTabSheetHide(Sender: TObject);
begin
  SubjectsQuery.Close;
end;

procedure TStudyPlanDetailsForm.CoursesTabSheetHide(Sender: TObject);
begin
  CourseQuery.Close;
end;

procedure TStudyPlanDetailsForm.CoursesTabSheetShow(Sender: TObject);
begin
  queryCourses;
end;

procedure TStudyPlanDetailsForm.AddCourseBtnClick(Sender: TObject);
var
course : integer;
input  : string;
begin
// Добавление курса
  input := trim(InputBox('Добавить курс', 'Номер курса', ''));
  if (input <> '') then
    begin
    course := StrToIntDef(input, 0);
    if course > 0 then
      begin
      executeCommand('INSERT INTO PlanCourses(pcs_number, pcs_stpcode) VALUES('+
        intToStr(course)+', '''+planCode+''');');
      queryCourses;
      end else
      MessageDlg('Некорректный номер курса', mtError, [mbOk], 0);
    end;
end;

procedure TStudyPlanDetailsForm.EditCourseBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.DelCourseBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.AddSemesterBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.EditSemesterBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.DelSemesterBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudyPlanDetailsForm.SubjectsDataSourceDataChange(
  Sender: TObject; Field: TField);
begin
AddSubjectBtn.Enabled := false;
EditSubjectBtn.Enabled := false;
DelSubjectBtn.Enabled := false;
if (SubjectsDataSource.State = dsBrowse) then
  begin
  AddSubjectBtn.Enabled := true;
  EditSubjectBtn.Enabled := SubjectsQuery.RecordCount > 0;
  DelSubjectBtn.Enabled := SubjectsQuery.RecordCount > 0;
  end;
end;

procedure TStudyPlanDetailsForm.CourseDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddCourseBtn.Enabled := false;
EditCourseBtn.Enabled := false;
DelCourseBtn.Enabled := false;
if (CourseDataSource.State = dsBrowse) then
  begin
  AddCourseBtn.Enabled := true;
  EditCourseBtn.Enabled := CourseQuery.RecordCount > 0;
  DelCourseBtn.Enabled := CourseQuery.RecordCount > 0;
  SemesterGroupBox.Enabled := CourseQuery.RecNo > 0;
  if (CourseQuery.RecNo > 0) then
    begin
      querySemesters;
    end;
  end;
end;

end.
