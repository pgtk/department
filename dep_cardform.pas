unit dep_cardform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls;

type
  TCardForm = class(TForm)
    CloseBtn: TButton;
    CardsQuery: TADOQuery;
    CardsSource: TDataSource;
    Command: TADOCommand;
    PageControl1: TPageControl;
    SubjSheet: TTabSheet;
    CardGrid: TDBGrid;
    AddBtn: TButton;
    DetailBtn: TButton;
    DelBtn: TButton;
    CourseSheet: TTabSheet;
    PractSheet: TTabSheet;
    CourseQuery: TADOQuery;
    CourseSource: TDataSource;
    PractSource: TDataSource;
    PractQuery: TADOQuery;
    CourseGrid: TDBGrid;
    PractGrid: TDBGrid;
    ThemeBtn: TButton;
    PrintBtn: TButton;
    procedure DelBtnClick(Sender: TObject);
    procedure CardsSourceDataChange(Sender: TObject; Field: TField);
    procedure AddBtnClick(Sender: TObject);
    procedure DetailBtnClick(Sender: TObject);
    procedure ThemeBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
  private
  AStudentID : string;
    { Private declarations }
  public
  property studentID : string read AStudentID write AStudentID;
  procedure ImportData;
    { Public declarations }
  end;

var
  CardForm: TCardForm;

implementation

uses dep_dep, dep_main, kern, dep_carddetailform, dep_subjectselectform,
  dep_cardprintform;

{$R *.dfm}

procedure TCardForm.ImportData;
var
tmpQuery : TADOQuery;
markQuery: TADOQuery;
x,y      : integer;
values   : string;
fields   : string;
smnumber : string;
exists   : boolean;

begin
//Импорт данных из таблиц семестровых оценок
// Зачеты и т.п.

tmpQuery := TADOQuery.Create(self);
tmpQuery.Connection := MainForm.Connection;
markQuery := TADOQuery.Create(self);
markQuery.Connection := MainForm.Connection;
tmpQuery.SQL.Clear;
tmpQuery.SQL.Add('SELECT DISTINCT mk_sbcode FROM Marks WHERE mk_stcode = '''+
  studentID+''';');
tmpQuery.Open;
if tmpQuery.RecordCount > 0 then
  for x := 1 to tmpQuery.RecordCount do
  begin
  command.CommandText := '';
  tmpQuery.RecNo := x;
  // Зачеты
  markQuery.SQL.Clear;
  markQuery.SQL.Add('SELECT * FROM CpMarks, Checkpoints, Semesters');
  markQuery.SQL.Add('WHERE (cp_pcode = cpm_cpcode) AND (cp_smcode = sm_pcode) AND (cp_sbcode = '''+
    tmpQuery.FieldByName('mk_sbcode').AsString+''') AND (cpm_stcode = '''+
    studentID+''');');
//  showMessage(markQuery.SQL.Text);
  markQuery.Open;
//  showMessage(IntToStr(markQuery.RecordCount)+' Записей найдено');
  fields := 'crd_stcode, crd_grcode, crd_subjectcode';
  values := ''''+studentID+''', '''+
    MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''', '''+
    tmpQuery.FieldByName('mk_sbcode').AsString+'''';
    exists := markQuery.RecordCount > 0;
    for y := 1 to markQuery.RecordCount do
      begin
      markQuery.RecNo := y;
      smnumber := markQuery.FieldByName('sm_Number').AsString;
      fields := fields+', crd_S'+smnumber+'Hours, crd_S'+smnumber+'Mark, crd_S'+
        smnumber+'isExam';
      values := values+', '+markQuery.FieldByName('cp_Hours').AsString+', '+
        markQuery.FieldByName('cpm_Mark').AsString+', 0';
      end;
  // Экзамены
  markQuery.SQL.Clear;
  markQuery.SQL.Add('SELECT * FROM ExMarks, Exams, Semesters');
  markQuery.SQL.Add('WHERE (ex_pcode = exm_excode) AND (ex_smcode = sm_pcode) AND (ex_sbcode = '''+
    tmpQuery.FieldByName('mk_sbcode').AsString+''') AND (exm_stcode = '''+
    studentID+''');');
//  showMessage(markQuery.SQL.Text);
  markQuery.Open;
//  showMessage(IntToStr(markQuery.RecordCount)+' Записей найдено');
    exists := exists or (markQuery.RecordCount > 0);
    for y := 1 to markQuery.RecordCount do
      begin
      markQuery.RecNo := y;
      smnumber := markQuery.FieldByName('sm_Number').AsString;
      fields := fields+', crd_S'+smnumber+'Hours, crd_S'+smnumber+'Mark, crd_S'+
        smnumber+'isExam';
      values := values+', '+markQuery.FieldByName('ex_Hours').AsString+', '+
        markQuery.FieldByName('exm_Mark').AsString+', 1';
      end;
  if exists then
    begin
    command.CommandText := 'INSERT INTO Cards('+fields+') VALUES('+values+');';
//    showmessage('------>'+command.CommandText);
    command.Execute;
    end else
    MessageDlg('Не обнаружено записей в экзаменах и зачетах!',mtWarning,[mbOk],0);
  end;
tmpQuery.Close;
tmpQuery.Free;
markQuery.Close;
markQuery.Free;
CardsQuery.Requery;
end;



procedure TCardForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  command.CommandText := 'DELETE FROM FnMarks WHERE fnm_pcode = '''+
    CardsQuery.FieldByName('fnm_pcode').AsString+''';';
  command.Execute;
  CardsQuery.Requery;
  end;
end;

procedure TCardForm.CardsSourceDataChange(Sender: TObject; Field: TField);
begin
DetailBtn.Enabled := CardsQuery.RecordCount > 0;
DelBtn.Enabled := CardsQuery.RecordCount > 0;
end;

procedure TCardForm.AddBtnClick(Sender: TObject);
const
semesterscount = 10; // максимальное кол-во семестров

var
form     : TCardDetailForm;
subjform : TSubjectSelectForm;
markQuery: TADOQuery;
smnumber : integer;
hours    : integer;
ahours   : integer;
y        : integer;
cphours  : integer;
exhours  : integer;
cpcount  : integer;
excount  : integer;
mark     : integer;
cpmark   : real;
exmark   : real;
cpsum    : integer;
exsum    : integer;
allhours : integer;
semesters: array [1..semesterscount] of String;
oschool  : integer;
fakultative : integer;

begin
subjform := TSubjectSelectForm.Create(self);
subjform.Caption := 'Выберите предмет';
with subjform.SubjQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT DISTINCT sb_pcode, (sb_Name+'' (''+sbt_ShortType+'')'') AS sb_Name FROM Subjects, SbTypes, Marks');
  SQL.Add('WHERE (sb_pcode = mk_sbcode) AND (sb_sbtcode = sbt_pcode) AND (mk_stcode = '''+studentID+''')');
  SQL.Add('AND (sb_pcode NOT IN (SELECT fnm_sbcode FROM FnMarks WHERE fnm_stcode = '''+
    studentID+'''))');
  Open;
  end;
if (subjform.ShowModal = mrOk) then
  begin
  cphours := 0;
  exhours := 0;
  cpcount := 0;
  cpsum := 0;
  excount := 0;
  exsum := 0;
  cpmark := 0;
  exmark := 0;
  fakultative := 0;
  form := TCardDetailForm.Create(self);
  form.Caption := 'Новый предмет ('+
    subjform.SubjQuery.FieldByName('sb_Name').AsString+')';
  form.NumberEdit.Text := IntToStr(CardsQuery.RecordCount + 1);
  markQuery := TADOQuery.Create(self);
  markQuery.Connection := MainForm.Connection;
  markQuery.SQL.Clear;
  markQuery.SQL.Add('SELECT * FROM CpMarks, Checkpoints, Semesters');
  markQuery.SQL.Add('WHERE (cp_pcode = cpm_cpcode) AND (cp_smcode = sm_pcode) AND (cp_sbcode = '''+
    subjform.SubjQuery.FieldByName('sb_pcode').AsString+''') AND (cpm_stcode = '''+
    studentID+''');');
  markQuery.Open;
  for y := 1 to markQuery.RecordCount do
    begin
    markQuery.RecNo := y;
    smnumber := markQuery.FieldByName('sm_Number').AsInteger;
//    hours := markQuery.FieldByName('cp_Hours').AsInteger;
    hours := markQuery.FieldByName('cp_MaxHours').AsInteger;
    cphours := cphours+hours;
    cpsum := cpsum + hours*markQuery.FieldByName('cpm_Mark').AsInteger;
    inc(cpcount);
    semesters[smnumber] := IntToStr(smnumber)+
      '-й семестр, нагрузка '+markQuery.FieldByName('cp_Hours').AsString+
      ' часов, оценка - '+markQuery.FieldByName('cpm_Mark').AsString+
      ' (зачет)';
    end;
  if (cpcount > 0) and (cphours > 0) then
    cpmark := (cpsum / cpcount) / (cphours / cpcount);
  // Экзамены
  markQuery.SQL.Clear;
  markQuery.SQL.Add('SELECT * FROM ExMarks, Exams, Semesters');
  markQuery.SQL.Add('WHERE (ex_pcode = exm_excode) AND (ex_smcode = sm_pcode) AND (ex_sbcode = '''+
    subjform.SubjQuery.FieldByName('sb_pcode').AsString+''') AND (exm_stcode = '''+
    studentID+''');');
  markQuery.Open;
  for y := 1 to markQuery.RecordCount do
    begin
    markQuery.RecNo := y;
    smnumber := markQuery.FieldByName('sm_Number').AsInteger;
//    hours := markQuery.FieldByName('ex_Hours').AsInteger;
    hours := markQuery.FieldByName('ex_MaxHours').AsInteger;
    exhours := exhours + hours;
    exsum := exsum + hours*markQuery.FieldByName('exm_Mark').AsInteger;
    inc(excount);
    semesters[smnumber] := IntToStr(smnumber)+
      '-й семестр, нагрузка '+markQuery.FieldByName('ex_Hours').AsString+
      ' часов, оценка - '+markQuery.FieldByName('exm_Mark').AsString+
      ' (экзамен)';
  end;
  for y := 1 to semesterscount do
    if trim(semesters[y]) <> '' then
      form.Memo.Lines.Add(semesters[y]);
  if (excount > 0) and (exhours > 0) then
    exmark := ((exsum / excount) / (exhours / excount)) * 1.2;

  if (cpmark = 0) then
    mark := round(exmark)
  else if (exmark = 0) then
    mark := round(cpmark)
  else
    mark := trunc((cpmark + exmark) / 2);
//-----added 31.03.2008
  if mark > 5 then mark := 5;
  allhours := cphours+exhours;
  form.HoursEdit.Text := IntToStr(allhours);
  if mark = 0 then
    form.MarkEdit.Text := ''
  else
    form.MarkEdit.Text := IntToStr(mark);
  if form.ShowModal = mrOk then
    begin
    hours := StrToIntDef(form.HoursEdit.Text, 0);
    ahours := StrToIntDef(form.AHoursEdit.Text, 0);
    if (hours <> 0) and (hours <> allhours) then
      allhours := hours;
    mark := StrToIntDef(form.MarkEdit.Text, 0);
    if ((mark > 5) and (mark < 10)) or (mark > 20) then mark := 0;
    oschool := 0;
    if form.OtherSchoolCheckBox.Checked then
        oschool := 1;
    Command.CommandText :=
      'INSERT INTO FnMarks(fnm_stcode, fnm_sbcode, fnm_otherschool, fnm_isfakultative, fnm_Mark, fnm_Hours, fnm_AHours, fnm_number) VALUES('''+
      studentID+''', '''+subjform.SubjQuery.FieldByName('sb_pcode').AsString+''', '+
      IntToStr(oschool)+', '+IntToStr(fakultative)+', '+IntToStr(mark)+', '+IntToStr(allhours)+', '+IntToStr(ahours)+
      ', '+IntToStr(StrToIntDef(form.NumberEdit.Text, 0))+')';
    Command.Execute;
    CardsQuery.Requery;
    end;
  form.Free;
  end; // subjform.showmodal
subjform.Free;
end;

procedure TCardForm.DetailBtnClick(Sender: TObject);
const
semesterscount = 10; // максимальное кол-во семестров

var
form     : TCardDetailForm;
markQuery: TADOQuery;
smnumber : integer;
hours    : integer;
ahours   : integer;
y        : integer;
cphours  : integer;
exhours  : integer;
mark     : integer;
allhours : integer;
oschool  : integer;
fakultative : integer;
semesters: array [1..semesterscount] of String;

begin
cphours := 0;
exhours := 0;
ahours  := 0;
oschool := 0;
fakultative := 0;
form := TCardDetailForm.Create(self);
form.Caption := 'Новый предмет ('+
  CardsQuery.FieldByName('sb_Name').AsString+')';
markQuery := TADOQuery.Create(self);
markQuery.Connection := MainForm.Connection;
markQuery.SQL.Clear;
markQuery.SQL.Add('SELECT * FROM CpMarks, Checkpoints, Semesters');
markQuery.SQL.Add('WHERE (cp_pcode = cpm_cpcode) AND (cp_smcode = sm_pcode) AND (cp_sbcode = '''+
  CardsQuery.FieldByName('sb_pcode').AsString+''') AND (cpm_stcode = '''+
  studentID+''');');
markQuery.Open;
for y := 1 to markQuery.RecordCount do
  begin
  markQuery.RecNo := y;
  smnumber := markQuery.FieldByName('sm_Number').AsInteger;
  // next one need to prevent EAccessViolation exception
  if smnumber > semesterscount then smnumber := semesterscount;
//  hours := markQuery.FieldByName('cp_Hours').AsInteger;
  ahours := ahours + markQuery.FieldByName('cp_AHours').AsInteger;
  hours := markQuery.FieldByName('cp_MaxHours').AsInteger;
  cphours := cphours+hours;
  semesters[smnumber] := IntToStr(smnumber)+
    '-й семестр, нагрузка '+markQuery.FieldByName('cp_Hours').AsString+
    ' часов, оценка - '+markQuery.FieldByName('cpm_Mark').AsString+
    ' (зачет)';
  end;
// Экзамены
markQuery.SQL.Clear;
markQuery.SQL.Add('SELECT * FROM ExMarks, Exams, Semesters');
markQuery.SQL.Add('WHERE (ex_pcode = exm_excode) AND (ex_smcode = sm_pcode) AND (ex_sbcode = '''+
  CardsQuery.FieldByName('sb_pcode').AsString+''') AND (exm_stcode = '''+
  studentID+''');');
markQuery.Open;
for y := 1 to markQuery.RecordCount do
  begin
  markQuery.RecNo := y;
  smnumber := markQuery.FieldByName('sm_Number').AsInteger;
//  hours := markQuery.FieldByName('ex_Hours').AsInteger;
  ahours := ahours + markQuery.FieldByName('ex_AHours').AsInteger;
  hours := markQuery.FieldByName('ex_MaxHours').AsInteger;
  exhours := exhours + hours;
  semesters[smnumber] := IntToStr(smnumber)+
    '-й семестр, нагрузка '+markQuery.FieldByName('ex_Hours').AsString+
    ' часов, оценка - '+markQuery.FieldByName('exm_Mark').AsString+
    ' (экзамен)';
  end;
for y := 1 to semesterscount do
  if trim(semesters[y]) <> '' then
    form.Memo.Lines.Add(semesters[y]);
allhours := cphours+exhours;
form.HoursEdit.Text := IntToStr(allhours);
form.OtherSchoolCheckBox.Checked := CardsQuery.FieldByName('fnm_otherschool').AsBoolean;
form.FakultativeCheckBox.Checked := CardsQuery.FieldByName('fnm_isfakultative').AsBoolean;
y := CardsQuery.FieldByName('fnm_AHours').AsInteger;
form.NumberEdit.Text := CardsQuery.FieldByName('fnm_number').AsString;
if y > 0 then
  form.AHoursEdit.Text := IntToStr(y)
else
  form.AHoursEdit.Text := IntToStr(ahours);
form.MarkEdit.Text := CardsQuery.FieldByName('fnm_Mark').AsString;
if form.ShowModal = mrOk then
  begin
  hours := StrToIntDef(form.HoursEdit.Text,0);
  ahours := StrToIntDef(form.AHoursEdit.Text,0);
  if (hours <> 0) and (hours <> allhours) then
    allhours := hours;
  mark := StrToIntDef(form.MarkEdit.Text, 0);
  if (form.otherSchoolcheckbox.checked) then
    oschool := 1;
  if (form.fakultativeCheckbox.checked) then
    fakultative := 1;
  if ((mark > 5) and (mark < 10)) or (mark > 20) or (mark < 0) then mark := 0;
  Command.CommandText :=
    'UPDATE FnMarks SET fnm_Mark = '+
    IntToStr(mark)+
    ', fnm_Hours = '+IntToStr(allhours)+', fnm_AHours = '+IntToStr(ahours)+
    ', fnm_number = '+IntToStr(StrToIntDef(form.NumberEdit.Text, 0))+
    ', fnm_otherschool = '+IntToStr(oschool)+
    ', fnm_isfakultative = '+IntToStr(fakultative)+
    ' WHERE (fnm_sbcode = '''+
    CardsQuery.FieldByName('sb_pcode').AsString+''') AND (fnm_stcode = '''+
    MainForm.StudentsQuery.FieldByName('st_pcode').AsString+''')';
  Command.Execute;
  CardsQuery.Requery;
  end;
form.Free;
end;

procedure TCardForm.ThemeBtnClick(Sender: TObject);
var
theme : string;
begin
theme := InputBox('Тема курсового', 'Введите тему курсового проекта',
  CourseQuery.FieldByName('cwm_theme').AsString);
try
  Command.CommandText := 'UPDATE CwMarks SET cwm_Theme = '''+theme+
    ''' WHERE cwm_pcode = '''+CourseQuery.FieldByName('cwm_pcode').AsString+''';';
  Command.Execute;
  CourseQuery.Requery;
except
MessageDlg(OP_ERROR, mtError, [mbOk], 0);
end; // try
end;

procedure TCardForm.PrintBtnClick(Sender: TObject);
var
form : TCardPrintForm;

begin
form := TCardPrintForm.Create(self);
form.StNameLabel.Caption := MainForm.StudentsQuery.FieldByName('st_FullName').AsString;
form.CardRep.Preview;
form.Free;
end;

end.
