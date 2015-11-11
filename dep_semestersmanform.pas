unit dep_semestersmanform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TSemestersManForm = class(TForm)
    SemestersGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    SemestersCommand: TADOCommand;
    SemestersQuery: TADOQuery;
    SemestersDataSource: TDataSource;
    ExamBtn: TButton;
    MarkBtn: TButton;
    PractBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure ExamBtnClick(Sender: TObject);
    procedure MarkBtnClick(Sender: TObject);
    procedure SemestersDataSourceDataChange(Sender: TObject;
      Field: TField);
    procedure PractBtnClick(Sender: TObject);
  private
  ASID : string;
    { Private declarations }
  public
  property SID: string read ASID write ASID;
    { Public declarations }
  end;

var
  SemestersManForm: TSemestersManForm;

implementation

uses dep_main, kern, dep_semsubjectsform, dep_semestersform,
  dep_marksmanform, dep_practicsform;

{$R *.dfm}

procedure TSemestersManForm.FormCreate(Sender: TObject);
begin
// изменить запрос на выборку информации
if SemestersQuery.Active then
SemestersQuery.Close;
SemestersQuery.SQL.Clear;
SemestersQuery.SQL.Add('SELECT * FROM Semesters WHERE sm_grcode = '''+
MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''' ORDER BY sm_Number;');
SemestersQuery.Open;
end;

procedure TSemestersManForm.AddBtnClick(Sender: TObject);
var
form  : TSemesterForm;
canadd: boolean;
begin
canadd := false;
form := TSemesterForm.Create(self);
repeat
if form.ShowModal = mrOk then
begin
SemestersQuery.Filtered := false;
SemestersQuery.Filter := 'sm_Number = '+form.SNumEdit.Text;
SemestersQuery.Filtered := true;
canadd := SemestersQuery.RecordCount = 0;
SemestersQuery.Filtered := false;
if not canadd then
MessageDlg('Ќевозможно создать два семестра с одинаковыми номерами',mtError,[mbOk],0);
SemestersQuery.Filtered := false;
end else
break;
until(canadd);
if canadd then
begin
SemestersCommand.CommandText :=
'INSERT INTO Semesters (sm_pcode, sm_Number, sm_BWeek, sm_BMounth, sm_BYear, '+
'sm_EWeek, sm_EMounth, sm_EYear, sm_grcode, sm_WeekCount, sm_WeekWork) VALUES (NEWID(), '''+
form.SNumEdit.Text+''', '''+
form.BWeekEdit.Text+''', '''+
IntToStr(form.BMounthEdit.ItemIndex+1)+''', '''+
form.BYearEdit.Text+''', '''+
form.EWeekEdit.Text+''', '''+
IntToStr(form.EMounthEdit.ItemIndex+1)+''', '''+
form.EYearEdit.Text+''', '''+
MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''', '''+
form.WeekEdit.Text+''', '''+
form.WeekWorkEdit.Text+''');';
SemestersCommand.Execute;
SemestersQuery.Requery([]);
end;
form.Free;
end;

procedure TSemestersManForm.EditBtnClick(Sender: TObject);
var
form : TSemesterForm;
begin
form := TSemesterForm.Create(self);
form.SNumEdit.Value := SemestersQuery.FieldByName('sm_Number').AsInteger;
form.BWeekEdit.Value := SemestersQuery.FieldByName('sm_BWeek').AsInteger;
form.BMounthEdit.ItemIndex := SemestersQuery.FieldByName('sm_BMounth').AsInteger-1;
form.BYearEdit.Value := SemestersQuery.FieldByName('sm_BYear').AsInteger;
form.EWeekEdit.Value := SemestersQuery.FieldByName('sm_EWeek').AsInteger;
form.EMounthEdit.ItemIndex := SemestersQuery.FieldByName('sm_EMounth').AsInteger-1;
form.EYearEdit.Value := SemestersQuery.FieldByName('sm_EYear').AsInteger;
form.WeekEdit.Value := SemestersQuery.FieldByName('sm_WeekCount').AsInteger;
form.WeekWorkEdit.Value := SemestersQuery.FieldByName('sm_WeekWork').AsInteger;
if form.ShowModal = mrOk then
begin
SemestersCommand.CommandText :=
'UPDATE Semesters SET sm_Number = '''+
form.SNumEdit.Text+''', '+
'sm_BWeek = '''+
form.BWeekEdit.Text+''', '+
'sm_BMounth = '''+
IntToStr(form.BMounthEdit.ItemIndex+1)+''', '+
'sm_BYear = '''+
form.BYearEdit.Text+''', '+
'sm_EWeek = '''+
form.EWeekEdit.Text+''', '+
'sm_EMounth = '''+
IntToStr(form.EMounthEdit.ItemIndex+1)+''', '+
'sm_WeekCount = '''+
form.WeekEdit.Text+''', '+
'sm_WeekWork = '''+
form.WeekWorkEdit.Text+''', '+
'sm_EYear = '''+
IntToStr(form.EYearEdit.Value)+''' WHERE sm_pcode = '''+
SemestersQuery.FieldByName('sm_pcode').AsString+''';';
SemestersCommand.Execute;
SemestersQuery.Requery([]);
end;
form.Free;
end;

procedure TSemestersManForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
begin
SemestersCommand.CommandText :=
'DELETE FROM Semesters WHERE sm_pcode = '''+
  SemestersQuery.FieldByName('sm_pcode').AsString+''';';
SemestersCommand.Execute;
SemestersQuery.Requery([]);
end;
end;

procedure TSemestersManForm.ExamBtnClick(Sender: TObject);
var
form : TSemesterSubjectsForm;
begin
form := TSemesterSubjectsForm.Create(self);
form.SID := SID;
form.Caption := 'Ёкзамены и зачеты ('+
SemestersQuery.FieldByName('sm_Number').AsString+'-й семестр)';
form.ShowModal;
form.Free;
end;

procedure TSemestersManForm.MarkBtnClick(Sender: TObject);
var
manform : TMarksManForm;
begin
manform := TMarksManForm.Create(self);
manform.Caption := 'ќценки ('+
MainForm.GroupQuery.FieldByName('gr_Name').AsString+')';
manform.SID := SemestersQuery.FieldByName('sm_pcode').AsString;
manform.BDate := trunc(SemestersQuery.FieldByName('sm_BDate').AsInteger/10);
manform.EDate := trunc(SemestersQuery.FieldByName('sm_EDate').AsInteger/10);
with manform.GOSQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT DISTINCT sb_Name, sb_pcode');
  SQL.Add('FROM Subjects, GOSMarks, SbTypes');
  SQL.Add('WHERE (sbt_pcode = sb_sbtcode) AND (sb_pcode = gsm_sbcode) AND (gsm_stcode IN ');
  SQL.Add('  (SELECT st_pcode FROM Students WHERE st_grcode = '''+
    MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''))');
  Open;
  end;

with manform.ExQuery do
begin
Close;
SQL.Clear;
SQL.Add(
 'SELECT * FROM Exams, Subjects WHERE ex_sbcode = sb_pcode and ex_smcode = '''+
 SemestersQuery.FieldByName('sm_pcode').AsString+''';');
Open;
end;
with manform.CpQuery do
begin
Close;
SQL.Clear;
SQL.Add(
 'SELECT * FROM Checkpoints, Subjects WHERE (cp_hasCheck = 1) AND (cp_sbcode = sb_pcode) AND (cp_smcode = '''+
 SemestersQuery.FieldByName('sm_pcode').AsString+''');');
Open;
end;
with manform.CwQuery do
begin
Close;
SQL.Clear;
SQL.Add(
 'SELECT * FROM CourseWorks, Subjects WHERE cw_sbcode = sb_pcode and cw_smcode = '''+
 SemestersQuery.FieldByName('sm_pcode').AsString+''';');
//SQL.SaveToFile('bug-20080129.sql');
Open;
end;
with manform.MnQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT COUNT(mk_Mark) AS mk_Mark, mk_Mounth, mk_smcode, sb_Name, sb_pcode, ');
SQL.Add('sm_BDate/10 AS sm_BDate, sm_EDate/10 AS sm_EDate');
SQL.Add('FROM Marks, Subjects, Semesters WHERE (mk_sbcode = sb_pcode) and (mk_smcode = '''+
   SemestersQuery.FieldByName('sm_pcode').AsString+
   ''') AND (sm_pcode = mk_smcode) ');
SQL.Add('GROUP BY mk_Mounth, mk_smcode, sb_Name, sb_pcode, sm_BDate, sm_EDate;');
Open;
end;
manform.ShowModal;
manform.Free;
end;

procedure TSemestersManForm.SemestersDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
ExamBtn.Enabled := SemestersQuery.Active and (SemestersQuery.RecNo > 0);
MarkBtn.Enabled := SemestersQuery.Active and (SemestersQuery.RecNo > 0);
if SemestersQuery.RecNo > 0 then
SID := SemestersQuery.FieldByName('sm_pcode').AsString;
end;

procedure TSemestersManForm.PractBtnClick(Sender: TObject);
var
form : TPracticsForm;
begin
form := TPracticsForm.Create(self);
with form.PracticsQuery do
  begin
  SQL.Clear;
  SQL.Add('SELECT * FROM Practics WHERE pk_smcode = '''+
  SemestersQuery.FieldByName('sm_pcode').AsString+''';');
  Open;
  end;
form.ShowModal;
form.Free;
end;

end.
