unit dep_semsubjectsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls;

type
  TSemesterSubjectsForm = class(TForm)
    SubjCommand: TADOCommand;
    SubjQuery: TADOQuery;
    SubjDataSource: TDataSource;
    SubjComboBox: TGroupBox;
    SubjGrid: TDBGrid;
    ExamGroupBox: TGroupBox;
    CheckpointGroupBox: TGroupBox;
    ExamGrid: TDBGrid;
    CheckPointGrid: TDBGrid;
    CloseBtn: TButton;
    ExDataSource: TDataSource;
    ChDataSource: TDataSource;
    ExQuery: TADOQuery;
    ChQuery: TADOQuery;
    ExAddBtn: TButton;
    ChAddBtn: TButton;
    ExDelBtn: TButton;
    ExEditBtn: TButton;
    ChDelBtn: TButton;
    ChEditBtn: TButton;
    ExReportBtn: TButton;
    ChCourseBtn: TButton;
    ExCourseBtn: TButton;
    FilterEdit: TEdit;
    Label1: TLabel;
    procedure ExAddBtnClick(Sender: TObject);
    procedure ChAddBtnClick(Sender: TObject);
    procedure ExEditBtnClick(Sender: TObject);
    procedure ExDelBtnClick(Sender: TObject);
    procedure ChEditBtnClick(Sender: TObject);
    procedure ChDelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SubjDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ExDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ChDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ExReportBtnClick(Sender: TObject);
    procedure ChCourseBtnClick(Sender: TObject);
    procedure ExCourseBtnClick(Sender: TObject);
    procedure FilterEditChange(Sender: TObject);
  private
  ASID : string;
    { Private declarations }
  public
  property SID: string read ASID write ASID;
    { Public declarations }
  end;

var
  SemesterSubjectsForm: TSemesterSubjectsForm;

implementation

uses dep_main, kern, dep_semestersmanform, dep_addsubjectform,
  dep_examrepform, dep_coursereportform, dep_semesterselectform;

{$R *.dfm}



procedure TSemesterSubjectsForm.ExAddBtnClick(Sender: TObject);
var
form : TAddSubjectForm;
begin
form := TAddSubjectForm.Create(self);
form.hasMarkCheckBox.Enabled := false;
form.Caption := SubjQuery.FieldByName('sb_Name').AsString;
if form.ShowModal = mrOk then
  begin
  try
    SubjCommand.CommandText := 'BEGIN TRAN TSadd INSERT INTO Exams '+
    '(ex_pcode, ex_sbcode, ex_smcode, ex_Date, ex_Hours, ex_AHours, ex_HomHours, ex_Teacher)'+
    ' VALUES (NEWID(), '''+SubjQuery.FieldByName('sb_pcode').AsString+''', '''+
    TSemestersManForm(Owner).SID+''', '''+
    DateToStr(form.DateEdit.Date)+''', '''+
    form.HoursEdit.Text+''', '''+
    form.AHoursEdit.Text+''', '''+
    form.HomHoursEdit.Text+''', '''+
    form.TeacherEdit.Text+''');';
    SubjCommand.Execute;
    if form.CwCheckBox.Checked then
      begin
      SubjCommand.CommandText :=
      'INSERT INTO CourseWorks '+
      ' (cw_sbcode, cw_smcode, cw_Date, cw_Teacher) '+
      'VALUES ('''+
      SubjQuery.FieldByName('sb_pcode').AsString+''', '''+
      TSemestersManForm(Owner).SID+''', '''+
      DateToStr(form.CwDateEdit.Date)+''', '''+
      form.TeacherEdit.Text+''');';
      SubjCommand.Execute;
      end;
    SubjCommand.CommandText := 'COMMIT TRAN TSadd;';
    SubjCommand.Execute;
  except
    begin
    SubjCommand.CommandText := 'ROLLBACK TRAN TSadd;';
    SubjCommand.Execute;
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    end;
  end; // try...except
  ExQuery.Requery([]);
  end;
form.Free;
end;

procedure TSemesterSubjectsForm.ChAddBtnClick(Sender: TObject);
var
form : TAddSubjectForm;
hc   : integer;

begin
form := TAddSubjectForm.Create(self);
form.Caption := SubjQuery.FieldByName('sb_Name').AsString;
hc := 1;
if not form.hasMarkCheckBox.Checked then
  hc := 0;
if form.ShowModal = mrOk then
  begin
  try
    SubjCommand.CommandText :=
    'BEGIN TRAN TSadd INSERT INTO Checkpoints '+
    ' (cp_hasCheck, cp_sbcode, cp_smcode, cp_Date, cp_Hours, cp_AHours, cp_HomHours, cp_Teacher) '+
    'VALUES ('+IntToStr(hc)+', '''+
    SubjQuery.FieldByName('sb_pcode').AsString+''', '''+
    TSemestersManForm(Owner).SID+''', '''+
    DateToStr(form.DateEdit.Date)+''', '''+
    form.HoursEdit.Text+''', '''+
    form.AHoursEdit.Text+''', '''+
    form.HomHoursEdit.Text+''', '''+
    form.TeacherEdit.Text+''');';
    SubjCommand.Execute;
    if form.CwCheckBox.Checked then
      begin
      SubjCommand.CommandText :=
      'INSERT INTO CourseWorks '+
      ' (cw_sbcode, cw_smcode, cw_Date, cw_Teacher) '+
      'VALUES ('''+
      SubjQuery.FieldByName('sb_pcode').AsString+''', '''+
      TSemestersManForm(Owner).SID+''', '''+
      DateToStr(form.CwDateEdit.Date)+''', '''+
      form.TeacherEdit.Text+''');';
      SubjCommand.Execute;
      end;
    SubjCommand.CommandText := 'COMMIT TRAN TSadd;';
    SubjCommand.Execute;
  except
    SubjCommand.CommandText := 'ROLLBACK TRAN TSadd;';
    SubjCommand.Execute;
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
  end; // try...except
    ChQuery.Requery([]);
  end;
form.Free;
end;

procedure TSemesterSubjectsForm.ExEditBtnClick(Sender: TObject);
var
form    : TAddSubjectForm;
tmpquery: TADOQuery;
begin
form := TAddSubjectForm.Create(self);
form.hasMarkCheckBox.Enabled := false;
form.Caption := ExQuery.FieldByName('sb_Name').AsString;
form.DateEdit.Date := ExQuery.FieldByName('ex_Date').AsDateTime;
form.HoursEdit.Text := ExQuery.FieldByName('ex_Hours').AsString;
form.AHoursEdit.Text := ExQuery.FieldByName('ex_AHours').AsString;
form.HomHoursEdit.Text := ExQuery.FieldByName('ex_HomHours').AsString;
form.TeacherEdit.Text := ExQuery.FieldByName('ex_Teacher').AsString;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add(
  'SELECT cw_Date, cw_Hours FROM CourseWorks WHERE cw_sbcode = '''+
  ExQuery.FieldByName('ex_sbcode').AsString+''' AND cw_smcode = '''+SID+'''');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  form.CwCheckBox.Checked := true;
  form.CwDateEdit.Date := tmpquery.FieldByName('cw_Date').AsDateTime;
  form.CwHoursEdit.Value := tmpquery.FieldByName('cw_Hours').AsInteger;
  end;
tmpquery.Free;
if form.ShowModal = mrOk then
  begin
  try
  SubjCommand.CommandText := 'BEGIN TRAN UPsb UPDATE Exams SET ex_Date = '''+
  DateToStr(form.DateEdit.Date)+''', '+
  'ex_Hours = '''+form.HoursEdit.Text+''', '+
  'ex_AHours = '''+form.AHoursEdit.Text+''', '+
  'ex_HomHours = '''+form.HomHoursEdit.Text+''', '+
  'ex_Teacher = '''+form.TeacherEdit.Text+''' '+
  'WHERE ex_pcode = '''+ExQuery.FieldByName('ex_pcode').AsString+''';';
  SubjCommand.Execute;
    if form.CwCheckBox.Checked then
      begin
      // А мож добавили курсовой проект?
      SubjCommand.CommandText :=
      'IF (SELECT COUNT(cw_Date) FROM CourseWorks WHERE cw_sbcode = '''+
      ExQuery.FieldByName('ex_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''') > 0 BEGIN '+
      'UPDATE CourseWorks SET cw_Date = '''+DateToStr(form.CwDateEdit.Date)+
      ''', cw_Hours = '''+form.CwHoursEdit.Text+''', cw_Teacher = '''+
      form.TeacherEdit.Text+''' WHERE cw_sbcode = '''+
      ExQuery.FieldByName('ex_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''' END ELSE BEGIN '+
      'INSERT INTO CourseWorks '+
      ' (cw_sbcode, cw_smcode, cw_Date, cw_Teacher, cw_Hours) '+
      'VALUES ('''+
      ExQuery.FieldByName('ex_sbcode').AsString+''', '''+
      TSemestersManForm(Owner).SID+''', '''+
      DateToStr(form.CwDateEdit.Date)+''', '''+
      form.TeacherEdit.Text+''', '''+
      form.CwHoursEdit.Text+''') END;';
      end
    else
      begin
      // А мож удалили курсовой проект?
      SubjCommand.CommandText :=
      'DELETE FROM CourseWorks WHERE cw_sbcode = '''+
      ExQuery.FieldByName('ex_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''';';
      end;
    SubjCommand.Execute;
    SubjCommand.CommandText := 'COMMIT TRAN UPsb;';
    SubjCommand.Execute;
  except
  begin
    SubjCommand.CommandText := 'ROLLBACK TRAN UPsb;';
    SubjCommand.Execute;
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
  end;
  end; // try...except
  ExQuery.Requery([]);
  end;
form.Free;
end;

procedure TSemesterSubjectsForm.ExDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
   try
   SubjCommand.CommandText :=
   'BEGIN TRAN UDEx DELETE FROM ExMarks WHERE exm_excode = '''+
     ExQuery.FieldByName('ex_pcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM Marks WHERE mk_sbcode='''+
     ExQuery.FieldByName('ex_sbcode').AsString+''' AND mk_smcode='''+
     ExQuery.FieldByName('ex_smcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM CourseWorks WHERE cw_sbcode='''+
     ExQuery.FieldByName('ex_sbcode').AsString+''' AND cw_smcode='''+
     ExQuery.FieldByName('ex_smcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM Exams WHERE ex_pcode = '''+
     ExQuery.FieldByName('ex_pcode').AsString+''' COMMIT TRAN UDEx;';
   SubjCommand.Execute;
  except
  begin
   MessageDlg(OP_ERROR,mtError,[mbOk],0);
   SubjCommand.CommandText := 'ROLLBACK TRAN UDEx';
   SubjCommand.Execute;
  end;
  end; // try...except
  ExQuery.Requery([]);
  end;
end;

procedure TSemesterSubjectsForm.ChEditBtnClick(Sender: TObject);
var
form     : TAddSubjectForm;
tmpquery : TADOQuery;
hc       : integer;

begin
form := TAddSubjectForm.Create(self);
form.hasMarkCheckBox.Checked := ChQuery.FieldByName('cp_hasCheck').AsBoolean;
form.Caption := ChQuery.FieldByName('sb_Name').AsString;
form.DateEdit.Date := ChQuery.FieldByName('cp_Date').AsDateTime;
form.HoursEdit.Text := ChQuery.FieldByName('cp_Hours').AsString;
form.AHoursEdit.Text := ChQuery.FieldByName('cp_AHours').AsString;
form.HomHoursEdit.Text := ChQuery.FieldByName('cp_HomHours').AsString;
form.TeacherEdit.Text := ChQuery.FieldByName('cp_Teacher').AsString;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add(
  'SELECT cw_Date, cw_Hours FROM CourseWorks WHERE cw_sbcode = '''+
  ChQuery.FieldByName('cp_sbcode').AsString+''' AND cw_smcode = '''+SID+'''');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  form.CwCheckBox.Checked := true;
  form.CwDateEdit.Date := tmpquery.FieldByName('cw_Date').AsDateTime;
  form.CwHoursEdit.Value := tmpquery.FieldByName('cw_Hours').AsInteger;
  end;
tmpquery.Free;
if form.ShowModal = mrOk then
  begin
  try
    hc := 1;
    if not form.hasMarkCheckBox.checked then
      hc := 0;
    SubjCommand.CommandText := 'BEGIN TRAN UPsb UPDATE Checkpoints SET '+
    'cp_hasCheck = '+IntToStr(hc)+', '+
    'cp_Date = '''+DateToStr(form.DateEdit.Date)+''', '+
    'cp_Hours = '''+form.HoursEdit.Text+''', '+
    'cp_AHours = '''+form.AHoursEdit.Text+''', '+
    'cp_HomHours = '''+form.HomHoursEdit.Text+''', '+
    'cp_Teacher = '''+form.TeacherEdit.Text+''' '+
    'WHERE cp_pcode = '''+ChQuery.FieldByName('cp_pcode').AsString+''';';
    SubjCommand.Execute;
    if form.CwCheckBox.Checked then
      begin
      // А мож добавили курсовой проект?
      SubjCommand.CommandText :=
      'IF (SELECT COUNT(cw_Date) FROM CourseWorks WHERE cw_sbcode = '''+
      ChQuery.FieldByName('cp_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''') > 0 BEGIN '+
      'UPDATE CourseWorks SET cw_Date = '''+DateToStr(form.CwDateEdit.Date)+
      ''', cw_Hours = '''+form.CwHoursEdit.Text+''', cw_Teacher = '''+
      form.TeacherEdit.Text+''' WHERE cw_sbcode = '''+
       ChQuery.FieldByName('cp_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''' END ELSE BEGIN '+
      'INSERT INTO CourseWorks '+
      ' (cw_sbcode, cw_smcode, cw_Date, cw_Teacher, cw_Hours) '+
      'VALUES ('''+
      ChQuery.FieldByName('cp_sbcode').AsString+''', '''+
      TSemestersManForm(Owner).SID+''', '''+
      DateToStr(form.CwDateEdit.Date)+''', '''+
      form.TeacherEdit.Text+''', '''+
      form.CwHoursEdit.Text+''') END;';
      end
    else
      begin
      // А мож удалили курсовой проект?
      SubjCommand.CommandText :=
      'DELETE FROM CourseWorks WHERE cw_sbcode = '''+
      ChQuery.FieldByName('cp_sbcode').AsString+''''+
      ' AND cw_smcode = '''+SID+''';';
      end;
    SubjCommand.Execute;    
    SubjCommand.CommandText := 'COMMIT TRAN UPsb;';
    SubjCommand.Execute;
  except
    begin
    MessageDlg('Ошибка при удалении записей',mtError,[mbOk],0);
    SubjCommand.CommandText :=
    'ROLLBACK TRAN UPsb';
    SubjCommand.Execute;
    end;
  end; // try...except
  ChQuery.Requery([]);
  end;
form.Free;
end;

procedure TSemesterSubjectsForm.ChDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  try
   begin
   SubjCommand.CommandText :=
   'BEGIN TRAN UDCp DELETE FROM CpMarks WHERE cpm_cpcode = '''+
     ChQuery.FieldByName('cp_pcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM Marks WHERE mk_sbcode='''+
     ChQuery.FieldByName('cp_sbcode').AsString+''' AND mk_smcode='''+
     ChQuery.FieldByName('cp_smcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM CourseWorks WHERE cw_sbcode='''+
     ChQuery.FieldByName('cp_sbcode').AsString+''' AND cw_smcode='''+
     ChQuery.FieldByName('cp_smcode').AsString+''';';
   SubjCommand.Execute;
   SubjCommand.CommandText :=
   'DELETE FROM Checkpoints WHERE cp_pcode = '''+
     ChQuery.FieldByName('cp_pcode').AsString+''' COMMIT TRAN UDCp;';
   SubjCommand.Execute;
   ChQuery.Requery([]);
   end
  except
   begin
   MessageDlg('Ошибка при удалении записей',mtError,[mbOk],0);
   SubjCommand.CommandText :=
   'ROLLBACK TRAN UDCp';
   SubjCommand.Execute;
   end;
  end; // try...except
end;

procedure TSemesterSubjectsForm.FormCreate(Sender: TObject);
begin
SubjQuery.Close;
SubjQuery.SQL.Clear;
SubjQuery.SQL.Add('SELECT (sb_Name+'' (''+sbt_SHortType+'')'') AS sb_Name, sb_pcode FROM Subjects, SbTypes WHERE (sb_sbtcode = sbt_pcode)ORDER BY sb_Name;');
SubjQuery.Open;
ChQuery.Close;
ChQuery.SQL.Clear;
ChQuery.SQL.Add('SELECT * FROM Checkpoints, Subjects WHERE cp_sbcode = sb_pcode and cp_smcode = '''+
TSemestersManForm(Owner).SemestersQuery.FieldByName('sm_pcode').AsString+''' ORDER BY sb_Name;');
ChQuery.Open;
ExQuery.Close;
ExQuery.SQL.Clear;
ExQuery.SQL.Add('SELECT * FROM Exams, Subjects WHERE ex_sbcode = sb_pcode and ex_smcode = '''+
TSemestersManForm(Owner).SemestersQuery.FieldByName('sm_pcode').AsString+''' ORDER BY sb_Name;');
ExQuery.Open;
end;

procedure TSemesterSubjectsForm.FormDestroy(Sender: TObject);
begin
SubjQuery.Close;
ChQuery.Close;
ExQuery.Close;
end;

procedure TSemesterSubjectsForm.SubjDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
ExAddBtn.Enabled := SubjQuery.Active and (SubjQuery.RecNo > 0);
ChAddBtn.Enabled := SubjQuery.Active and (SubjQuery.RecNo > 0);
end;

procedure TSemesterSubjectsForm.ExDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
ExEditBtn.Enabled := ExQuery.Active and (ExQuery.RecNo > 0);
ExDelBtn.Enabled := ExQuery.Active and (ExQuery.RecNo > 0);
ExCourseBtn.Enabled := ChQuery.Active and (ChQuery.RecNo > 0);
end;

procedure TSemesterSubjectsForm.ChDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
ChEditBtn.Enabled := ChQuery.Active and (ChQuery.RecNo > 0);
ChDelBtn.Enabled := ChQuery.Active and (ChQuery.RecNo > 0);
ChCourseBtn.Enabled := ChQuery.Active and (ChQuery.RecNo > 0);
end;

procedure TSemesterSubjectsForm.ExReportBtnClick(Sender: TObject);
var
report    : TExamReportForm;
testquery : TADOQuery;

begin
// Экзаменационная ведомость
report := TExamReportForm.Create(self);
report.DescLabel.Caption :='группы '+
  MainForm.GroupQuery.FieldByName('gr_Name').AsString+' '+
  MainForm.GroupQuery.FieldByName('gr_Course').AsString+
  '-го курса очной формы обучения за '+
  TSemestersManForm(owner).SemestersQuery.FieldByName('sm_Number').AsString+
  '-й семестр '+GetYears(
     TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BMounth').AsInteger,
     TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BYear').AsInteger)+'.';
report.DateTimeLabel.Caption := 'Время проведения экзамена: '+GetDateStr(ExQuery.FieldByName('ex_Date').AsDateTime)+'г.';
report.TeacherLabel.Caption := 'Экзаменатор: '+
  ExQuery.FieldByName('ex_Teacher').AsString;
report.SchoolNameLabel.Caption := MainForm.SchoolName;
report.SubjectLabel.Caption := 'Дисциплина: '+
  ExQuery.FieldByName('sb_Name').AsString;
testquery := TADOQuery.Create(self);
testquery.Connection := MainForm.Connection;
testquery.SQL.Add('SELECT * FROM Groups, Specialities ');
testquery.SQL.Add('WHERE gr_speccode = sp_pcode AND gr_pcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''';');
testquery.Open;
if testquery.RecNo > 0 then
begin
report.SpecLabel.Caption := 'Cпециальность: '+
  testquery.FieldByName('sp_Key').AsString+
  ' "'+testquery.FieldByName('sp_Name').AsString+'".';
end;
testquery.Free;
report.ExamRep.Preview;
report.Free;
end;

procedure TSemesterSubjectsForm.ChCourseBtnClick(Sender: TObject);
var
report     : TCourseReportForm;
tmpquery   : TADOQuery;

begin
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT cw_pcode FROM CourseWorks WHERE cw_smcode = '''+
  TSemestersManForm(owner).SemestersQuery.FieldByName('sm_pcode').AsString+
  ''' AND cw_sbcode = '''+ChQuery.FieldByName('cp_sbcode').AsString+''';');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  report := TCourseReportForm.Create(self);
  report.SchoolNameLabel.Caption := MainForm.SchoolName;
  report.DescLabel.Caption :='группы '+
    MainForm.GroupQuery.FieldByName('gr_Name').AsString+' '+
    MainForm.GroupQuery.FieldByName('gr_Course').AsString+
    '-го курса очной формы обучения за '+
    TSemestersManForm(owner).SemestersQuery.FieldByName('sm_Number').AsString+
    '-й семестр '+GetYears(
       TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BMounth').AsInteger,
       TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BYear').AsInteger)+'.';
  report.TeacherLabel.Caption := 'Руководитель: '+
    ChQuery.FieldByName('cp_Teacher').AsString;
  report.SubjectLabel.Caption := 'Дисциплина: '+
    ChQuery.FieldByName('sb_Name').AsString;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT sp_pcode, sp_Key, sp_Name FROM Specialities WHERE sp_pcode = '''+
    MainForm.GroupQuery.FieldByName('gr_speccode').AsString+''';');
  tmpquery.Open;
  if tmpQuery.RecNo > 0 then
    begin
    report.SpecLabel.Caption := 'Специальность: '+
    tmpquery.FieldByName('sp_Key').AsString+' "'+
    tmpquery.FieldByName('sp_Name').AsString+'".';
    end;
  report.CourseRep.Preview;
  report.Free;
  end else
  MessageDlg(NO_COURSE,mtError,[mbOk],0);
  tmpquery.Free;
end;


procedure TSemesterSubjectsForm.ExCourseBtnClick(Sender: TObject);
var
report     : TCourseReportForm;
tmpquery   : TADOQuery;

begin
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT cw_pcode FROM CourseWorks WHERE cw_smcode = '''+
  TSemestersManForm(owner).SemestersQuery.FieldByName('sm_pcode').AsString+
  ''' AND cw_sbcode = '''+ExQuery.FieldByName('ex_sbcode').AsString+''';');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  report := TCourseReportForm.Create(self);
  report.SchoolNameLabel.Caption := MainForm.SchoolName;
  report.DescLabel.Caption :='группы '+
    MainForm.GroupQuery.FieldByName('gr_Name').AsString+' '+
    MainForm.GroupQuery.FieldByName('gr_Course').AsString+
    '-го курса очной формы обучения за '+
    TSemestersManForm(owner).SemestersQuery.FieldByName('sm_Number').AsString+
    '-й семестр '+GetYears(
       TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BMounth').AsInteger,
       TSemestersManForm(owner).SemestersQuery.FieldByName('sm_BYear').AsInteger)+'.';
  report.TeacherLabel.Caption := 'Руководитель: '+
    ExQuery.FieldByName('ex_Teacher').AsString;
  report.SubjectLabel.Caption := 'Дисциплина: '+
    ExQuery.FieldByName('sb_Name').AsString;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT sp_pcode, sp_Key, sp_Name FROM Specialities WHERE sp_pcode = '''+
    MainForm.GroupQuery.FieldByName('gr_speccode').AsString+''';');
  tmpquery.Open;
  if tmpQuery.RecNo > 0 then
    begin
    report.SpecLabel.Caption := 'Специальность: '+
    tmpquery.FieldByName('sp_Key').AsString+' "'+
    tmpquery.FieldByName('sp_Name').AsString+'".';
    end;
  report.CourseRep.Preview;
  report.Free;
  end else
  MessageDlg(NO_COURSE,mtError,[mbOk],0);

  tmpquery.Free;
end;

procedure TSemesterSubjectsForm.FilterEditChange(Sender: TObject);
begin
SubjQuery.Filtered := false;
if (Trim(FilterEdit.Text) <> '') then
  begin
  SubjQuery.Filter := 'sb_Name like '''+FilterEdit.Text+'%''';
  SubjQuery.Filtered := true;
  end;
end;

end.
