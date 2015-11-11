unit dep_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls, ActnList,
  ActnMan, ExtCtrls, ToolWin, ComCtrls, Spin, DateUtils, QRCtrls, QuickRpt;

type
  TMainForm = class(TForm)
    Connection: TADOConnection;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N5: TMenuItem;
    GroupDataSource: TDataSource;
    GroupQuery: TADOQuery;
    StudentsDataSource: TDataSource;
    StudentsQuery: TADOQuery;
    ActionManager: TActionManager;
    GroupManAction: TAction;
    ExitAction: TAction;
    SchoolAction: TAction;
    DepartmentsAction: TAction;
    SpecAction: TAction;
    ToolBar1: TToolBar;
    GroupPopupMenu: TPopupMenu;
    StudentsPopupMenu: TPopupMenu;
    ChangeGroupItem: TMenuItem;
    DeleteGroupItem: TMenuItem;
    ChangeItem: TMenuItem;
    AddItem: TMenuItem;
    DeleteItem: TMenuItem;
    Command: TADOCommand;
    StatusBar: TStatusBar;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    MissItem: TMenuItem;
    YearFilterCheckBox: TCheckBox;
    YearEdit: TSpinEdit;
    N10: TMenuItem;
    N12: TMenuItem;
    PageControl: TPageControl;
    ActiveTabSheet: TTabSheet;
    StudentsGrid: TDBGrid;
    DeletedTabSheet: TTabSheet;
    GroupGrid: TDBGrid;
    Splitter1: TSplitter;
    DeletedPopupMenu: TPopupMenu;
    DelDataSource: TDataSource;
    DelStudentsGrid: TDBGrid;
    DelQuery: TADOQuery;
    RestoreItem: TMenuItem;
    ErrorTabSheet: TTabSheet;
    ErQuery: TADOQuery;
    ErDataSource: TDataSource;
    ErGrid: TDBGrid;
    ErPopupMenu: TPopupMenu;
    DeleteErStudentItem: TMenuItem;
    RestoreErStudentItem: TMenuItem;
    TestReportItem: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    EraseAllItem: TMenuItem;
    SemestersManItem: TMenuItem;
    TotalMissingsItem: TMenuItem;
    CmdErMenuItem: TMenuItem;
    CmdDelMenuItem: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    MissActionItem: TAction;
    N27: TMenuItem;
    N28: TMenuItem;
    StudentsDataReportItem: TMenuItem;
    DiplomeDataEnterAction: TAction;
    N30: TMenuItem;
    MounthReportAction: TAction;
    CompReportAction: TAction;
    N4: TMenuItem;
    N7: TMenuItem;
    WeekMissingsAction: TAction;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    MounthSummary: TMenuItem;
    ArchiveTabSheet: TTabSheet;
    ArGroupQuery: TADOQuery;
    ArStudentsQuery: TADOQuery;
    ArGroupDataSource: TDataSource;
    ArStudentsDataSource: TDataSource;
    ArGroupGrid: TDBGrid;
    Splitter2: TSplitter;
    ArStudentsGrid: TDBGrid;
    N18: TMenuItem;
    N24: TMenuItem;
    N26: TMenuItem;
    N25: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    MounthMarksReportAction: TAction;
    SemesterSummaryAction: TAction;
    MounthSummaryAction: TAction;
    N15: TMenuItem;
    N38: TMenuItem;
    StudentCardAction: TAction;
    N39: TMenuItem;
    N40: TMenuItem;
    DetailedMounthMissingsRepAction: TAction;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    DiplomeResultsRepAction: TAction;
    N45: TMenuItem;
    N46: TMenuItem;
    GroupBox1: TGroupBox;
    GOSResultsRepAction: TAction;
    N47: TMenuItem;
    N48: TMenuItem;
    GraduateReportAction: TAction;
    N49: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N21: TMenuItem;
    N29: TMenuItem;
    N33: TMenuItem;
    N50: TMenuItem;
    FilterCheckBox: TCheckBox;
    FilterEdit: TEdit;
    ArcPopupMenu: TPopupMenu;
    ArcStudentDetailsMenuitem: TMenuItem;
    AppRepMenuItem: TMenuItem;
    ExortListAction: TAction;
    N51: TMenuItem;
    AcademTabSheet: TTabSheet;
    AddCourseTabSheet: TTabSheet;
    AddCourseGrid: TDBGrid;
    AcademGrid: TDBGrid;
    AddCourseQuery: TADOQuery;
    AcademQuery: TADOQuery;
    AddCourseDataSource: TDataSource;
    AcademDataSource: TDataSource;
    N52: TMenuItem;
    N53: TMenuItem;
    PracticsItem: TMenuItem;
    ServiceGroup: TMenuItem;
    UpdateItem: TMenuItem;
    ArcGrPopupMenu: TPopupMenu;
    N54: TMenuItem;
    MounthStatistics: TMenuItem;
    N56: TMenuItem;
    FinalStudyResultsAction: TAction;
    N55: TMenuItem;
    SemesterSpecSummaryAction: TAction;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    FindTabSheet: TTabSheet;
    GroupBox2: TGroupBox;
    FNameFilter: TCheckBox;
    FNameEdit: TEdit;
    MNameFilter: TCheckBox;
    MNameEdit: TEdit;
    LNameFilter: TCheckBox;
    LNameEdit: TEdit;
    ResultGrid: TDBGrid;
    FindQuery: TADOQuery;
    FindDataSource: TDataSource;
    KvalificationExamItem: TMenuItem;
    KvalificationExamReportAction: TAction;
    N60: TMenuItem;
    StipendiaListAction: TAction;
    N61: TMenuItem;
    AcademPopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ExitActionExecute(Sender: TObject);
    procedure GroupManActionExecute(Sender: TObject);
    procedure SchoolActionExecute(Sender: TObject);
    procedure SpecActionExecute(Sender: TObject);
    procedure GroupDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ChangeGroupItemClick(Sender: TObject);
    procedure DeleteGroupItemClick(Sender: TObject);
    procedure AddItemClick(Sender: TObject);
    procedure ChangeItemClick(Sender: TObject);
    procedure DeleteItemClick(Sender: TObject);
    procedure StudentsDataSourceDataChange(Sender: TObject; Field: TField);
    procedure MarkItemClick(Sender: TObject);
    procedure MissItemClick(Sender: TObject);
    procedure YearFilterCheckBoxClick(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure MarkMenuItem(Sender: TObject);
    procedure DepartmentsActionExecute(Sender: TObject);
    procedure RestoreItemClick(Sender: TObject);
    procedure DelDataSourceDataChange(Sender: TObject; Field: TField);
    procedure DeleteErStudentItemClick(Sender: TObject);
    procedure RestoreErStudentItemClick(Sender: TObject);
    procedure ErDataSourceDataChange(Sender: TObject; Field: TField);
    procedure TestReportItemExecute(Sender: TObject);
    procedure EraseAllItemClick(Sender: TObject);
    procedure SemestersManItemClick(Sender: TObject);
    procedure TotalMissingsItemClick(Sender: TObject);
    procedure CmdErMenuItemClick(Sender: TObject);
    procedure ContReportItem(Sender: TObject);
    procedure ParentLessReportItem(Sender: TObject);
    procedure MissActionExecute(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure StudentsDataReportItemClick(Sender: TObject);
    procedure MounthReportActionExecute(Sender: TObject);
    procedure CompReportActionExecute(Sender: TObject);
    procedure WeekMissingsActionExecute(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure MounthSummaryClick(Sender: TObject);
    procedure ArGroupDataSourceDataChange(Sender: TObject; Field: TField);
    procedure MarksMounthReportAction(Sender: TObject);
    procedure SemesterSummaryActionExecute(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure StudentCardActionExecute(Sender: TObject);
    procedure DetailedMounthMissingsRepActionExecute(Sender: TObject);
    procedure DeletedStudentDetailsMenuItemClick(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure DiplomeResultsRepActionExecute(Sender: TObject);
    procedure GOSResultsRepActionExecute(Sender: TObject);
    procedure GraduateReportActionExecute(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure FilterDeleted(Sender: TObject);
    procedure ArcStudentDetailsMenuitemClick(Sender: TObject);
    procedure AppRepMenuItemClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure ExortListActionExecute(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure PracticsItemClick(Sender: TObject);
    procedure UpdateItemClick(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure MounthStatisticsClick(Sender: TObject);
    procedure FinalStudyResultsActionExecute(Sender: TObject);
    procedure SemesterSpecSummaryActionExecute(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure FindFilter(Sender: TObject);
    procedure KvalificationExamReportActionExecute(Sender: TObject);
    procedure StipendiaListActionExecute(Sender: TObject);
    procedure AcademStudentPropertiesClick(Sender: TObject);
    procedure AcademStudentRestoreClick(Sender: TObject);
  private
  ASchoolID     : string;
  ADepID        : string;
  ADepName      : string;
  ASchoolName   : string;
  ASchoolPlace  : string;
  AMinistryName : string;
  APlaceID      : string;
  AisZaoch      : boolean;
  
//  StatusQuery : TADOQuery;
    { Private declarations }
  public
  property SchoolID : string read ASchoolID write ASchoolID;
  property PlaceID  : string read APlaceID write APlaceID;
  property SchoolName : string read ASchoolName write ASchoolName;
  property SchoolPlace : string read ASchoolPlace write ASchoolPlace;
  property MinistryName : string read AMinistryName write AMinistryName;
  property DepID : string read ADepID write ADepID;
  property isZaoch : boolean read AisZaoch write AisZaoch;
  property DepName : string read ADepName write ADepName;
  procedure TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
  procedure InitDB;
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses dep_group, dep_config, kern, dep_spec, dep_groupform, dep_studentform,
  dep_skillsform, dep_groupmissmanform, dep_paramform, dep_studdelform,
  dep_testrepform, dep_semestersmanform, dep_totalmissrepform,
  dep_reportselectform, dep_coursereportform, dep_examrepform,
  dep_svodvedrepform, dep_practreportform, dep_weightmanform,
  dep_contreportform, dep_mounthmissreportform, dep_selectmounthform,
  dep_listreportform, dep_studentsdatareportform, dep_diplomeform,
  dep_mounthrepform, dep_uchrepform, dep_dateselectform,
  dep_semesterselectform, dep_weekmissingsrepform, contr_groupsreport,
  dep_mounthmarksrepform, dep_restorestudentform, dep_cardform,
  dep_detailedmounthmissingsrepform, dep_langrepform, dep_diplomeresultform,
  dep_gosresultsreportform, dep_graduatereportform, dep_appreportform, math,
  dep_appcontreportform, dep_birthlistreportform, dep_fnpracticsform,
  dep_stmounthstatisticsform, dep_finalstudyresultsreport, customlookupform,
  dep_kvalificationexamrepform;

{$R *.dfm}



procedure TMainForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
var
LogFont : TLOGFONT;
size    : integer;
x       : integer;
pos     : integer;
fwidth  : integer;

begin
size := 10;
pos := 0;
fwidth := c.ClipRect.Bottom - c.ClipRect.Top;
if s >= 10 then size := s;
c.Brush.Style := bsSolid;
c.Font.Style := [];
GetObject(c.Font.Handle, SizeOf(LOGFONT), @LogFont);
LogFont.lfHeight := size;
LogFont.lfEscapement := angle*10 ;
LogFont.lfOrientation := angle*10;
LogFont.lfCharSet := DEFAULT_CHARSET;
LogFont.lfFaceName := 'Arial';
c.FillRect(c.ClipRect);
c.Font.Handle := CreateFontIndirect(LogFont);
if c.TextWidth(text) > fwidth then
 for x := 1 to length(text) do
  if ((text[x] = ' ') or (text[x] = '-')) and
  (c.TextWidth(Copy(text,1,x)) <= fwidth) then
     pos := x;
if pos > 0 then
begin
c.TextOut(1,c.ClipRect.Bottom-5,Copy(text,1,pos));
c.TextOut(c.TextHeight(text),c.ClipRect.Bottom-5,Copy(text,pos,length(text)-pos+1));
end else
c.TextOut(1,c.ClipRect.Bottom-5,text);
end;


procedure TMainForm.InitDB;
begin
// reserved.
end;


procedure TMainForm.FormCreate(Sender: TObject);
var
cfilename   : string;
ConfigForm  : TConfigForm;
fout        : textfile;
buffer      : string;
path        : string;
tmpquery    : TADOQuery;
error       : boolean;
pos         : integer;

begin
// init params
DepName := 'Неизвестно';
error := false;
YearEdit.Value := CurrentYear;
path := ExtractFilePath(Application.ExeName);
if Connection.Connected then
Connection.Close;
Connection.ConnectionString := 'FILE NAME='+
path+filename;
try
  Connection.Open;
except
  on e : Exception do
    begin
    MessageDlg('Ошибка соединения с базой данных ('+e.Message+')',mtError,[mbOk],0);
    error := true;
    end;
end;
if  not error then
begin
//StatusQuery := TADOQuery.Create(self);
//StatusQuery.Connection := Connection;
cfilename := path+PARAMSFILENAME;
if not FileExists(cfilename) then
 begin
 // Ask for department and school
 ConfigForm := TConfigForm.Create(self);
 if ConfigForm.ShowModal = mrOk then
  begin
  AssignFile(fout,cfilename);
  Rewrite(fout);
  SchoolID := ConfigForm.SchoolID;
  DepID := ConfigForm.DepID;
  PlaceID := ConfigForm.PlaceID;
  WriteLn(fout, SchoolID);
  WriteLn(fout, DepID);
  writeln(fout, PlaceID);
  CloseFile(fout);
  end;
 ConfigForm.Free;
 end else
 begin
 AssignFile(fout,cfilename);
 Reset(fout);
 ReadLn(fout,buffer);
 if ID_LENGTH = Length(buffer) then
  SchoolID := buffer else
  ShowMessage(IntToStr(length(buffer)));
 if not EOF(fout) then
  ReadLn(fout,buffer);
 if ID_LENGTH = Length(buffer) then
  DepID := buffer;
 if not EOF(fout) then
  ReadLn(fout, buffer);
 if ID_LENGTH = Length(buffer) then
  PlaceID := buffer;
 CloseFile(fout);
 end;
 tmpquery := TADOQuery.Create(self);
 tmpquery.Connection := Connection;
 tmpquery.SQL.Add('SELECT * FROM Schools WHERE sc_pcode = '''+SchoolID+''';');
 tmpquery.Open;
 if tmpquery.RecordCount > 0 then
   begin
   SchoolName := tmpquery.FieldByName('sc_Name').AsString;
   MinistryName := tmpquery.FieldByName('sc_MinistryName').AsString;
   SchoolPlace := tmpquery.FieldByName('sc_Place').AsString;
   end;
 pos := AnsiPos('Прокопьевский', SchoolName);
 if (pos > 1) then
 ASchoolName[pos-1] := #$D;
 tmpquery.SQL.Clear;
 tmpquery.SQL.Add('SELECT * FROM Departments WHERE dp_pcode = '''+DepID+''';');
 tmpQuery.Open;
 if tmpQuery.RecordCount > 0 then
  begin
  DepName := tmpquery.FieldByName('dp_Name').AsString;
  Caption := DEPMODULE_CAPTION+' '+DepName;
  isZaoch := false;
  if tmpquery.FieldByName('dp_isZaoch').AsBoolean then
    isZaoch := true;
  end;
 tmpquery.Close;
 tmpquery.Free;
 if GroupQuery.Active then
  GroupQuery.Close;
 GroupQuery.SQL.Clear;
// if (isZaoch) then
//   GroupQuery.SQL.Add('SELECT * FROM Groups WHERE '+
//    '(gr_speccode IN (SELECT sp_pcode FROM Specialities WHERE (sp_isZaoch = 1)))'+
//    'AND (gr_Attributes = 0) AND (gr_isZaoch = 1) ORDER BY gr_Name;')
// else
   GroupQuery.SQL.Add('SELECT * FROM Groups WHERE (gr_depcode = '''+DepID+
     ''') AND (gr_Attributes = 0) ORDER BY gr_speccode, gr_course DESC, gr_Name;');

//   GroupQuery.SQL.Add('SELECT * FROM Groups WHERE (gr_depcode = '''+DepID+
//     ''') AND (gr_Attributes = 0) AND (gr_isZaoch = 0) ORDER BY gr_Name;');


 {$ifdef debug}
 ShowMessage(GroupQuery.SQL.Text);
 {$endif}
 GroupQuery.Open;
 if ArGroupQuery.Active then
  ArGroupQuery.Close;
 ArGroupQuery.SQL.Clear;
 ArGroupQuery.SQL.Add('SELECT * FROM Groups WHERE (gr_depcode = '''+DepID+
   ''') AND ((gr_Attributes & '+IntToStr(ARCH)+') > 0) ORDER BY gr_Name;');
 {$ifdef debug}
 ShowMessage(ArGroupQuery.SQL.Text);
 {$endif}
 ArGroupQuery.Open;
 if DelQuery.Active then
 DelQuery.Close;
 DelQuery.SQL.Clear;
 DelQuery.SQL.Add('SELECT gr_Name, gr_pcode, st_Name, st_pcode, st_Attributes,');
 DelQuery.SQL.Add(' cm_Text, cm_Number, cm_Date FROM Groups, Students, Commands '+
 'WHERE (gr_pcode = st_grcode) AND (st_pcode = cm_stcode) '+
 'AND ((st_Attributes & '+IntToStr(DEL_LEG)+') > 0) '+
 'ORDER BY gr_Name, st_Name;');
 DelQuery.Open;
 if ErQuery.Active then
 ErQuery.Close;
 ErQuery.SQL.Clear;
 ErQuery.SQL.Add('SELECT gr_Name, gr_pcode, st_Name, st_pcode, st_Attributes');
 ErQuery.SQL.Add('FROM Groups, Students WHERE '+
 '(gr_pcode = st_grcode) AND ((st_Attributes & '+IntToStr(DEL_ERR)+') > 0) ORDER BY gr_Name, st_Name;');
 ErQuery.Open;
 if AcademQuery.Active then
 AcademQuery.Close;
 AcademQuery.SQL.Clear;
 AcademQuery.SQL.Add('SELECT gr_Name, gr_pcode, st_Name, st_pcode, st_Attributes');
 AcademQuery.SQL.Add('FROM Groups, Students WHERE '+
 '(gr_pcode = st_grcode) AND ((st_Attributes & '+IntToStr(ACADEM)+') > 0)');
 AcademQuery.SQL.Add('AND (gr_speccode IN (SELECT sp_pcode FROM Specialities WHERE sp_depcode = '''+
 DepID+'''))');
 AcademQuery.SQL.Add(' ORDER BY gr_Name, st_Name;');
 AcademQuery.Open;
 if AddCourseQuery.Active then
 AddCourseQuery.Close;
 AddCourseQuery.SQL.Clear;
 AddCourseQuery.SQL.Add('SELECT gr_Name, gr_pcode, st_Name, st_pcode, st_Attributes');
 AddCourseQuery.SQL.Add('FROM Groups, Students WHERE '+
 '(gr_pcode = st_grcode) AND ((st_Attributes & '+IntToStr(ADD_COURSE)+') > 0)');
 AddCourseQuery.SQL.Add('AND (gr_speccode IN (SELECT sp_pcode FROM Specialities WHERE sp_depcode = '''+
 DepID+'''))');
 AddCourseQuery.SQL.Add(' ORDER BY gr_Name, st_Name;');
 AddCourseQuery.Open;
end else // if error
  Application.Terminate;
end;

procedure TMainForm.ExitActionExecute(Sender: TObject);
begin
if StudentsQuery.Active then
StudentsQuery.Close;
if GroupQuery.Active then
GroupQuery.Close;
Application.Terminate;
end;

procedure TMainForm.GroupManActionExecute(Sender: TObject);
var
GrForm : TGroupManForm;
begin
GrForm := TGroupManForm.Create(self);
GrForm.ShowModal;
GrForm.Free;
end;

procedure TMainForm.SchoolActionExecute(Sender: TObject);
begin
// show school select form
NotYet;
end;

procedure TMainForm.SpecActionExecute(Sender: TObject);
var
SpecForm : TSpecManForm;
begin
// показать окно специальностей.
SpecForm := TSpecManForm.Create(self);
SpecForm.ShowModal;
SpecForm.Free;
GroupQuery.Requery([]);
end;

procedure TMainForm.GroupDataSourceDataChange(Sender: TObject;
  Field: TField);

begin
ChangeGroupItem.Enabled := GroupQuery.RecordCount > 0;
DeleteGroupItem.Enabled := GroupQuery.RecordCount > 0;
//SpecGroupItem.Enabled := GroupQuery.RecordCount > 0;
//MarkItem.Enabled := GroupQuery.RecordCount > 0;
MissItem.Enabled := GroupQuery.RecordCount > 0;
if (GroupQuery.State = dsBrowse) and (GroupQuery.RecNo > 0)  then
begin
//if StatusQuery.Active then
//  StatusQuery.Close;
//StatusQuery.SQL.Clear;
//StatusQuery.SQL.Add('SELECT * FROM GroupView WHERE gw_grcode = '''+
//GroupQuery.FieldByName('gr_pcode').AsString+''';');
//StatusQuery.Open;
//if (StatusQuery.RecordCount > 0) then
//  StatusBar.SimpleText := StatusQuery.FieldByName('gw_GrName').AsString+' ('+
//  StatusQuery.FieldByName('gw_StudentsCount').AsString+' чел.)';
ChangeGroupItem.Enabled := GroupQuery.RecNo > 0;
DeleteGroupItem.Enabled := GroupQuery.RecNo > 0;
//SpecGroupItem.Enabled := GroupQuery.RecNo > 0;
//MarkItem.Enabled := GroupQuery.RecNo > 0;
MissItem.Enabled := GroupQuery.RecNo > 0;
if StudentsQuery.Active then
StudentsQuery.Close;
StudentsQuery.SQL.Clear;
StudentsQuery.SQL.Add(
  'SELECT st_pcode, st_FName, st_MName, st_LName, st_Name, st_FullName, st_BirthDate, st_grcode ');
StudentsQuery.SQL.Add('FROM Students WHERE (st_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''') AND (st_Attributes = 0) ORDER BY st_FullName;');
{$ifdef debug}
ShowMessage(StudentsQuery.SQL.Text);
{$endif}
StudentsQuery.Open;
StatusBar.SimpleText := GroupQuery.FieldByName('gr_Name').AsString+' ('+
IntToStr(StudentsQuery.RecordCount)+' чел.)';
end;
StudentsQuery.Active := GroupQuery.RecordCount > 0;
AddItem.Enabled := StudentsQuery.Active;
ChangeItem.Enabled := (StudentsQuery.Active) and
   (StudentsQuery.RecNo > 0);
DeleteItem.Enabled := (StudentsQuery.Active) and
   (StudentsQuery.RecNo > 0);
end;

procedure TMainForm.ChangeGroupItemClick(Sender: TObject);
var
Commercial: byte;
groupform : TGroupForm;
mcode     : string;
mfield    : string;
pcode     : string;
x         : integer;
begin
pcode := GroupQuery.FieldByName('gr_pcode').AsString;
mcode := GroupQuery.FieldByName('gr_mastercode').AsString;
mfield := '';
Commercial := 0;
groupform := TGroupForm.Create(self);
groupform.NameEdit.Text :=
   GroupQuery.FieldByName('gr_Name').AsString;
groupform.CommercialCheckBox.Checked :=
   GroupQuery.FieldByName('gr_Commercial').AsBoolean;
groupform.CourseEdit.Value :=
   GroupQuery.FieldByName('gr_Course').AsInteger;
groupform.CreateYearEdit.Value :=
   GroupQuery.FieldByName('gr_CreateYear').AsInteger;
groupform.LernLengthEdit.Text :=
   GroupQuery.FieldByName('gr_LernLength').AsString;
groupform.ShortLernLengthEdit.Text :=
   GroupQuery.FieldByName('gr_ShortLernLength').AsString;
groupform.ComissionEdit.Text :=
   GroupQuery.FieldByName('gr_Comission').AsString;
for x := 0 to groupform.MasterComboBox.Items.Count -1 do
if TContainer(groupform.MasterComboBox.Items.Objects[x]).Key = mcode then
groupform.MasterComboBox.Text :=
TContainer(groupform.MasterComboBox.Items.Objects[x]).Name;
if groupform.ShowModal = mrOk then
 begin
 if groupform.MCode <> '' then
 begin
 mfield := ', gr_mastercode = '''+groupForm.MCode+''' ';
 //mcode := ''' '''+groupform.MCode;
 end;
 if groupform.CommercialCheckBox.Checked then
 Commercial := 1;
 //Add group to database
 Command.CommandText :=
 'UPDATE Groups SET gr_Name = '''+groupform.NameEdit.Text+''', '+
 'gr_Course = '''+IntToStr(groupform.CourseEdit.Value)+''', '+
 'gr_Commercial = '''+IntToStr(Commercial)+''', '+
 'gr_CreateYear = '''+IntToStr(groupform.CreateYearEdit.Value)+''', '+
 'gr_LernLength = '''+groupform.LernLengthEdit.Text+''', '+
 'gr_ShortLernLength = '''+groupform.ShortLernLengthEdit.Text+''', '+
 'gr_Comission = '''+groupform.ComissionEdit.Text+''', '+
 'gr_depcode = '''+MainForm.DepID+''''+mfield+
 'WHERE gr_pcode = '''+pcode+''';';
 {$ifdef debug}
 ShowMessage(Command.CommandText);
 {$endif}
 Command.Execute;
 GroupQuery.Requery([]);
 end;
groupform.Free;
end;

procedure TMainForm.DeleteGroupItemClick(Sender: TObject);
begin
{
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Groups WHERE gr_pcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+''';';
  Command.Execute;
  GroupQuery.Requery([]);
  end;
}
NotYet;
end;

procedure TMainForm.AddItemClick(Sender: TObject);
var
studentform : TStudentForm;
begin
// Добавление студента
studentform := TStudentForm.Create(self);
with studentform.StudentQuery do
begin
close;
SQL.Clear;
SQL.Add('SELECT * FROM Students WHERE st_pcode = NULL');
Open;
Append;
FieldByName('st_grcode').AsString := GroupQuery.FieldByName('gr_pcode').AsString;
end;
studentform.Caption := NEW_STUDENT+GroupQuery.FieldByName('gr_Name').AsString;
studentform.OkBtn.Enabled := (studentform.TestsEdit.ItemIndex>=0) and
   (studentform.IsMaleEdit.ItemIndex>=0);
studentform.IsCommercialCheckBox.Checked :=
  GroupQuery.FieldByName('gr_Commercial').AsBoolean;
studentform.HotelCheckBox.Checked := false;
studentform.ParentLessEdit.Checked := false;
studentform.ParentsQuery.Close;
//studentform.ParentsQuery.SQL.Clear;
//studentform.ParentsQuery.SQL.Add('SELECT * FROM Parents WHERE (pr_stcode = '''+
//  Studentform.studentquery.FieldByName('st_pcode').AsString+''');');
studentform.ShowModal;
studentform.Free;
StudentsQuery.Requery([]);
end;

procedure TMainForm.ChangeItemClick(Sender: TObject);
var
studentform : TStudentForm;
begin
// Изменение параметров студента
studentform := TStudentForm.Create(self);
studentform.Caption := 'Студент ('+StudentsQuery.FieldByName('st_Name').AsString+')';
with studentform.StudentQuery do
  begin
  close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Students WHERE st_pcode = '''+
    StudentsQuery.FieldByName('st_pcode').AsString+''';');
  Open;
  Edit;
  end;
with studentform.ParentsQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Parents WHERE pr_stcode = '''+
    StudentsQuery.FieldByName('st_pcode').AsString+''' ORDER BY pr_IsMother;');
  Open;
  end;
with studentform.AcademQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Academs WHERE ac_stcode = '''+
    StudentsQuery.FieldByName('st_pcode').AsString+''';');
  Open;
  end;
studentform.ShowModal;
studentform.Free;
StudentsQuery.Requery([]);
end;

procedure TMainForm.DeleteItemClick(Sender: TObject);
var
delform : TDelStudentForm;
pcode   : string;
reason  : string;

begin
// Удаляем студента
delform := TDelStudentForm.Create(self);
if delform.ShowModal = mrOk then
begin
pcode := StudentsQuery.FieldByName('st_pcode').AsString;
if delform.ReasonEdit.Enabled then
 reason := delform.ReasonEdit.Text else
 reason := delform.ReasonComboBox.Text;
if delform.ActionComboBox.ItemIndex >= 0 then
  begin
  Command.CommandText :=
  'UPDATE Students SET st_Attributes = '+
  IntToStr(Trunc(Power(2, delform.ActionComboBox.ItemIndex)));
  if delform.ActionComboBox.ItemIndex = 1 then
    Command.CommandText := Command.CommandText + ', st_IsCommercial = 1';
  Command.CommandText := Command.CommandText +' WHERE st_pcode = '''+
  pcode+''';';
//  ShowMessage(Command.CommandText);
  Command.Execute;
  if delform.ActionComboBox.ItemIndex = delform.ActionComboBox.Items.Count-1 then
    begin
    Command.CommandText :=
    'INSERT INTO Commands (cm_Text, cm_Date, cm_Number, cm_rcode, cm_stcode ) '+
    'VALUES ('''+reason+''', '''+
    DateToStr(delform.DateEdit.Date)+''', '''+delform.NumEdit.Text+''', '+
    TContainer(delform.ReasonComboBox.Items.Objects[
      delform.ReasonComboBox.ItemIndex]).key+', '''+
    pcode+''');';
    Command.Execute;
    end;
  StudentsQuery.Requery;
  DelQuery.Requery;
  ErQuery.Requery;
  AcademQuery.Requery;
  AddCourseQuery.Requery;
  end;
end;
delform.Free;

end;

procedure TMainForm.StudentsDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddItem.Enabled := StudentsQuery.Active;
ChangeItem.Enabled := (StudentsQuery.Active) and
   (StudentsQuery.RecNo > 0);
DeleteItem.Enabled := (StudentsQuery.Active) and
   (StudentsQuery.RecNo > 0);
end;

procedure TMainForm.MarkItemClick(Sender: TObject);
var
skillsman : TSkillsManForm;
begin
// отобразить форму для успеваемости
skillsman := TSkillsManForm.Create(self);
skillsman.Caption := SKILLS+'('+GroupQuery.FieldByName('gr_Name').AsString+')';
skillsman.ShowModal;
skillsman.Free;
end;

procedure TMainForm.MissItemClick(Sender: TObject);
var
groupmissmanform : TGroupMissManForm;
begin
groupmissmanform := TGroupMissManForm.Create(self);
groupmissmanform.ShowModal;
groupmissmanform.Free;
end;

procedure TMainForm.YearFilterCheckBoxClick(Sender: TObject);
begin
  if PageControl.ActivePage = ArchiveTabSheet then
    begin
    ArGroupQuery.Filtered := YearFilterCheckBox.Checked;
    GroupQuery.Filtered := false;
    end;
  if PageControl.ActivePage = ActiveTabSheet then
    begin
    GroupQuery.Filtered := YearFilterCheckBox.Checked;
    ArGroupQuery.Filtered := false;
    end;
end;

procedure TMainForm.YearEditChange(Sender: TObject);
begin
  if PageControl.ActivePage = ArchiveTabSheet then
    begin
    ArGroupQuery.Filtered := false;
    ArGroupQuery.Filter := 'gr_CreateYear = '''+IntToStr(YearEdit.Value)+'''';
    ArGroupQuery.Filtered := YearFilterCheckBox.Checked;
    GroupQuery.Filtered := false;
    end;
  if PageControl.ActivePage = ActiveTabSheet then
    begin
    GroupQuery.Filtered := false;
    GroupQuery.Filter := 'gr_CreateYear = '''+IntToStr(YearEdit.Value)+'''';
    GroupQuery.Filtered := YearFilterCheckBox.Checked;
    ArGroupQuery.Filtered := false;
    end;
end;

procedure TMainForm.MarkMenuItem(Sender: TObject);
var
report    : TUchReportForm;
tmpquery  : TADOQuery;
selectform: TDateSelectForm;
Mounth    : byte;
Year      : integer;
x         : integer;
begin
selectform := TDateSelectForm.Create(self);
Mounth := 0;
Year := 0;
if selectform.ShowModal = mrOk then
 begin
 Mounth := selectform.MounthComboBox.ItemIndex+1;
 Year := selectform.YearEdit.Value;
 end;
report := TUchReportForm.Create(self);
report.CourseLabel.Caption := GroupQuery.FieldByName('gr_Course').AsString+
  '-й курс';
report.GroupLabel.Caption := 'Группа '+GroupQuery.FieldByName('gr_Name').AsString;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add(
'SELECT * FROM Groups, Specialities WHERE gr_speccode = sp_pcode AND gr_pcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''';');
tmpquery.Open;
if tmpquery.RecNo > 0 then
begin
report.SpecLabel.Caption := 'Специальность '+
  tmpquery.FieldByName('sp_Key').AsString+' '+tmpquery.FieldByName('sp_Name').AsString;
end;
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
'SELECT DISTINCT mkv_sbcode, mkv_SbName FROM MarksView WHERE mkv_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''' AND mkv_Mounth = '''+
IntToStr(Mounth)+''' AND mkv_BYEar <= '''+IntToStr(Year)+''' AND mkv_EYEar >= '''+
IntToStr(Year)+''' ORDER BY mkv_SbName;');
{$ifdef debug}
tmpquery.SQL.SaveToFile('tmpquery.sql');
{$endif}
tmpquery.Open;
report.UspQuery.SQL.Clear;
report.UspQuery.SQL.Add(
'SELECT mkv_StName AS StName, ');
if tmpquery.RecordCount > 0 then
for x := 1 to tmpquery.RecordCount do
begin
tmpquery.RecNo := x;
case x of
1:
 begin
 report.TextAngle(report.ExImage1.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
2:
 begin
 report.TextAngle(report.ExImage2.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
3:
 begin
 report.TextAngle(report.ExImage3.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
4:
 begin
 report.TextAngle(report.ExImage4.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
5:
 begin
 report.TextAngle(report.ExImage5.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
6:
 begin
 report.TextAngle(report.ExImage6.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
7:
 begin
 report.TextAngle(report.ExImage7.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
8:
 begin
 report.TextAngle(report.ExImage8.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
9:
 begin
 report.TextAngle(report.ExImage9.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
10:
 begin
 report.TextAngle(report.ExImage10.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
11:
 begin
 report.TextAngle(report.ExImage11.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
12:
 begin
 report.TextAngle(report.ExImage12.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
13:
 begin
 report.TextAngle(report.ExImage13.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
14:
 begin
 report.TextAngle(report.ExImage14.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
15:
 begin
 report.TextAngle(report.ExImage15.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
16:
 begin
 report.TextAngle(report.ExImage16.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
17:
 begin
 report.TextAngle(report.ExImage17.Canvas, 90, 10,
 tmpquery.FieldByName('mkv_SbName').AsString);
 end;
end;
report.UspQuery.SQL.Add('MAX(CASE mkv_sbcode ');
report.UspQuery.SQL.Add(' WHEN '''+
tmpquery.FieldByName('mkv_sbcode').AsString+''' THEN mkv_Mark');
report.UspQuery.SQL.Add(' ELSE 0 END) AS Ex'+IntToStr(x)+', ');
end;
report.UspQuery.SQL.Add('smm_Legal, smm_Illegal, smm_All');
report.UspQuery.SQL.Add('FROM MarksView, StMounthMissingsView');
report.UspQuery.SQL.Add('WHERE mkv_stcode = smm_stcode AND mkv_Mounth = smm_Mounth');
report.UspQuery.SQL.Add('AND mkv_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''' AND mkv_Mounth = '''+IntToStr(Mounth)+'''');
report.UspQuery.SQL.Add('AND (smm_Year BETWEEN mkv_BYear AND mkv_EYear) AND smm_Year='''+
IntToStr(Year)+'''');
report.UspQuery.SQL.Add('GROUP BY mkv_StName, smm_Legal, smm_Illegal, smm_All');
report.UspQuery.SQL.Add('ORDER BY mkv_StName;');

//ShowMessage(report.CompQuery.SQL.Text);
//report.UspQuery.SQL.SaveToFile('crosstable.sql');

report.UspQuery.Open;


report.StudNameText.DataField := 'StName';
report.LMText.DataField := 'smm_Legal';
report.IMText.DataField := 'smm_Illegal';
report.AMText.DataField := 'smm_All';
report.Ex1.DataField := 'Ex1';
report.Ex2.DataField := 'Ex2';
report.Ex3.DataField := 'Ex3';
report.Ex4.DataField := 'Ex4';
report.Ex5.DataField := 'Ex5';
report.Ex6.DataField := 'Ex6';
report.Ex7.DataField := 'Ex7';
report.Ex8.DataField := 'Ex8';
report.Ex9.DataField := 'Ex9';
report.Ex10.DataField := 'Ex10';
report.Ex11.DataField := 'Ex11';
report.Ex12.DataField := 'Ex12';
report.Ex13.DataField := 'Ex13';
report.Ex14.DataField := 'Ex14';
report.Ex15.DataField := 'Ex15';
report.Ex16.DataField := 'Ex16';
report.Ex17.DataField := 'Ex17';
// посещаемость
report.TextAngle(report.MLImage.Canvas, 90, 14,'Уваж.');
report.TextAngle(report.MIImage.Canvas, 90, 14,'Неув.');
report.TextAngle(report.MAImage.Canvas, 90, 14,'Всего');
report.UspRep.Preview;
report.Free;
tmpquery.Free;
end;


procedure TMainForm.DepartmentsActionExecute(Sender: TObject);
var
pform : TParamForm;
begin
pform := TParamForm.Create(self);
pform.ShowModal;
pform.Free;
end;


procedure TMainForm.RestoreItemClick(Sender: TObject);
var
pcode : string;
form  : TRestoreStudentForm;

begin
form := TRestoreStudentForm.Create(self);
if form.ShowModal = mrOk then
  begin
  if PageControl.ActivePage = DeletedTabSheet then
    begin
    pcode := DelQuery.FieldByName('st_pcode').AsString;
    end
  else if PageControl.ActivePage = ErrorTabSheet then
    begin
    pcode := ErQuery.FieldByName('st_pcode').AsString;
    end
  else if PageControl.ActivePage = AcademTabSheet then
    begin
    pcode := AcademQuery.FieldByName('st_pcode').AsString;
    end
  else if PageControl.ActivePage = AddCourseTabSheet then
    begin
    pcode := AddCourseQuery.FieldByName('st_pcode').AsString;
  end;
  if (MessageDlg(RESTORE_REQ,mtConfirmation,[mbYes, mbNo],0) = mrYes) then
    begin
    if (not form.OtherGroupCheckBox.Checked) then
      begin
      Command.CommandText :=
        'UPDATE Students SET st_Attributes = (SELECT gr_Attributes FROM Groups WHERE (gr_pcode = st_grcode))'+
        'WHERE st_pcode = '''+pcode+''';';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''';';
      Command.Execute;
    end
  else
    begin
    Command.CommandText := 'BEGIN TRAN Update_and_restore;';
    Command.Execute;
    try
      Command.CommandText :=
        'UPDATE Students SET st_Attributes = (SELECT gr_Attributes FROM Groups WHERE (gr_pcode = '''+
        GroupQuery.FieldByName('gr_pcode').AsString+''')), '+
        'st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+''' '+
        'WHERE st_pcode = '''+pcode+''';';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM PkMarks WHERE (pmk_pcode IN ('+
        'SELECT pmk_pcode FROM PkMarks, Practics WHERE (pmk_pkcode = pk_pcode) AND'+
        ' (pk_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
        GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (pmk_stcode = '''+pcode+''')))';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM CpMarks WHERE (cpm_pcode IN ('+
        'SELECT cpm_pcode FROM CpMarks, CheckPoints WHERE (cpm_cpcode = cp_pcode) AND'+
        ' (cp_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
        GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (cpm_stcode = '''+pcode+''')))';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM ExMarks WHERE (exm_pcode IN ('+
        'SELECT exm_pcode FROM ExMarks, Exams WHERE (exm_excode = ex_pcode) AND'+
        ' (ex_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
        GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (exm_stcode = '''+pcode+''')))';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM CwMarks WHERE (cwm_pcode IN ('+
        'SELECT cwm_pcode FROM CwMarks, CourseWorks WHERE (cwm_cwcode = cw_pcode) AND'+
        ' (cw_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
        GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (cwm_stcode = '''+pcode+''')))';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''';';
      Command.Execute;
      Command.CommandText := 'COMMIT TRAN Update_and_restore;';
      Command.Execute;
    except
      MessageDlg(OP_ERROR, mtError, [mbOk], 0);
      Command.CommandText := 'COMMIT TRAN Update_and_restore;';
      Command.Execute;
    end; // try
    end;
  end;
  end;
form.Free;
DelQuery.Requery;
StudentsQuery.Requery;
AcademQuery.Requery;
AddCourseQuery.Requery;
end;

procedure TMainForm.DelDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
RestoreItem.Enabled := ((DelQuery.RecNo > 0) and (DelQuery.Active));
end;

procedure TMainForm.DeleteErStudentItemClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  Command.CommandText :=
  'DELETE FROM Students WHERE st_pcode = '''+
  ErQuery.FieldByName('st_pcode').AsString+''';';
  Command.Execute;
  ErQuery.Requery([]);
  StudentsQuery.Requery([]);
  end;
end;

procedure TMainForm.RestoreErStudentItemClick(Sender: TObject);
var
pcode : string;
begin
if MessageDlg(RESTORE_REQ,mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
  pcode := ErQuery.FieldByName('st_pcode').AsString;
  Command.CommandText :=
  'UPDATE Students SET st_Attributes = 0 '+
  'WHERE st_pcode = '''+pcode+''';';
  Command.Execute;
  Command.CommandText :=
  'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''';';
  ErQuery.Requery([]);
  StudentsQuery.Requery([]);
  end;
end;

procedure TMainForm.ErDataSourceDataChange(Sender: TObject; Field: TField);
begin
DeleteErStudentItem.Enabled := ((ErQuery.RecNo > 0) and (ErQuery.Active));
RestoreErStudentItem.Enabled := ((ErQuery.RecNo > 0) and (ErQuery.Active));
end;

procedure TMainForm.TestReportItemExecute(Sender: TObject);
var
tmpquery  : TADOQuery;
testrep   : TTestReportForm;
selectform: TComboSelectForm;
s_num     : integer;
entry     : TContainer;
x         : integer;
sname     : string;
smcode    : string;

begin
// зачетная ведомость
selectform := TComboSelectForm.Create(self);
selectform.AutoFillCheckBox.Visible := true;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT sm_pcode, sm_Number, sm_BYear, sm_BMounth FROM Semesters WHERE sm_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''' ORDER BY sm_Number;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
for x := 1 to tmpquery.RecordCount do
 begin
 tmpquery.RecNo := x;
 entry := TContainer.Create;
 entry.Name := tmpquery.FieldByName('sm_Number').AsString+'-й семестр';
 entry.Key := tmpquery.FieldByName('sm_pcode').AsString;
 selectform.SelectComboBox.Items.AddObject(entry.Name, entry);
 end;
if selectform.ShowModal = mrOk then
  begin
  tmpquery.Locate('sm_pcode',
    TContainer(
               selectform.SelectComboBox.Items.Objects[
               selectform.SelectComboBox.ItemIndex]
               ).Key,[]);
  s_num := tmpquery.FieldByName('sm_Number').AsInteger;
  sname := GetYears(tmpquery.FieldByName('sm_BMounth').AsInteger,
  tmpquery.FieldByName('sm_BYear').AsInteger);
  smcode := tmpquery.FieldByName('sm_pcode').AsString;
  testrep := TTestReportForm.Create(self);
  testrep.SchoolNameLabel.Caption := SchoolName;
  testrep.MinistryLabel.Caption := MinistryName;
  if selectform.AutoFillCheckBox.Checked then
    begin
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add(
    'SELECT sb_Name, sm_pcode, cp_pcode AS code ');
    tmpquery.SQL.Add(
    'FROM Subjects, Semesters, Checkpoints WHERE (sm_grcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+''') AND (sm_Number = '+
    IntToStr(s_num)+')');
    tmpquery.SQL.Add(
    ' AND (sm_pcode = '''+smcode+''') AND (cp_smcode = sm_pcode) ');
    tmpquery.SQL.Add(
    ' AND (cp_sbcode = sb_pcode) AND (cp_hasCheck = 1)');
    tmpquery.SQL.Add(
    'UNION SELECT sb_Name, sm_pcode, ex_pcode AS code ');
    tmpquery.SQL.Add(
    'FROM Subjects, Semesters, Exams WHERE (sm_grcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+''') AND (sm_Number = '+
    IntToStr(s_num)+')');
    tmpquery.SQL.Add(
    ' AND (sm_pcode = '''+smcode+''') AND (ex_smcode = sm_pcode) ');
    tmpquery.SQL.Add(
    ' AND (ex_sbcode = sb_pcode)');
    tmpquery.SQL.Add('ORDER BY sb_Name;');
    tmpquery.Open;
  if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    case x of
    1: begin
       TextAngle(testrep.Ch1.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    2: begin
       TextAngle(testrep.Ch2.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    3: begin
       TextAngle(testrep.Ch3.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    4: begin
       TextAngle(testrep.Ch4.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    5: begin
       TextAngle(testrep.Ch5.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    6: begin
       TextAngle(testrep.Ch6.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    7: begin
       TextAngle(testrep.Ch7.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    8: begin
       TextAngle(testrep.Ch8.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
    9: begin
       TextAngle(testrep.Ch9.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   10: begin
       TextAngle(testrep.Ch10.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   11: begin
       TextAngle(testrep.Ch11.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   12: begin
       TextAngle(testrep.Ch12.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   13: begin
       TextAngle(testrep.Ch13.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   14: begin
       TextAngle(testrep.Ch14.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   15: begin
       TextAngle(testrep.Ch15.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   16: begin
       TextAngle(testrep.Ch16.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   17: begin
       TextAngle(testrep.Ch17.Canvas, 90, 10,
       tmpquery.FieldByName('sb_Name').AsString);
       end;
   end; // case
   end;// for;
  end; // if
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''';');
  tmpquery.Open;
  if tmpquery.RecNo > 0 then
  testrep.SpecLabel.Caption := 'Cпециальность: '+
    tmpquery.FieldByName('sp_Key').AsString+
    ' "'+tmpquery.FieldByName('sp_Name').AsString+'".';
  tmpquery.Free;
  TextAngle(testrep.MI.Canvas,90,12,'Неуваж');
  TextAngle(testrep.ML.Canvas,90,12,'Уваж');
  TextAngle(testrep.MA.Canvas,90,12,'Всего');
  testrep.DescLabel.Caption := 'Успеваемости студентов '+
    GroupQuery.FieldByName('gr_Course').AsString+'-го курса группы '+
    GroupQuery.FieldByName('gr_Name').AsString+' очной формы обучения ';
  testrep.TimeLabel.Caption := 'за '+IntToStr(s_num)+'-й семестр '+
    sname+'.';
// добавить смену министерства и наименования.
  testrep.TestRep.Preview;
  testrep.Free;
  end;
selectform.Free;
end;

procedure TMainForm.EraseAllItemClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  Command.CommandText :=
  'DELETE FROM Students WHERE ((st_Attributes & DEL_ERR) > 0)';
  Command.Execute;
  ErQuery.Requery([]);
  end;
end;

procedure TMainForm.SemestersManItemClick(Sender: TObject);
var
manform : TSemestersManForm;
begin
// тут сделать управление семетрами.
manform := TSemestersManForm.Create(self);
manform.Caption := 'Семестры ('+GroupQuery.FieldByName('gr_Name').AsString+')';
manform.ShowModal;
manform.Free;
end;

procedure TMainForm.TotalMissingsItemClick(Sender: TObject);
var
selectform : TReportSelectForm;
report     : TTotalMissingsReport;
where      : string;
tmpquery   : TADOQuery;
y,m,d      : word;

begin
DecodeDate(Now,y,m,d);
// создаем отчет по итогам посещаемости
selectform := TReportSelectForm.Create(self);
// ParamGadioGroup хранит опции выбора в св-ве Items
selectform.ParamRadioGroup.ItemIndex := 0;
if selectform.ShowModal = mrOk then
  begin
  report := TTotalMissingsReport.Create(self);
  report.MinistryLabel.Caption := MinistryName;
  report.SchoolLabel.Caption := SchoolName;
  case selectform.ParamRadioGroup.ItemIndex of
  0: begin
    where := 'mt_depcode = '''+MainForm.DepID+
    ''' AND (mt_SmNumber = mt_GrCourse * 2 - 1) ';
    report.DescLabel.Caption := 'За 1-й семестр '+GetYears(m, y);
    end;
  1: begin
    where := 'mt_depcode = '''+MainForm.DepID+
    ''' AND ((mt_SmNumber = mt_GrCourse * 2 - 1) OR (mt_SmNumber = mt_GrCourse * 2)) ';
    report.DescLabel.Caption := 'За '+GetYearsNum(m, y)+' учебный год';
    end;
  end; // case
  With report.TotalQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT (SELECT gw_StudentsCount FROM GroupView WHERE (gw_grcode = mt_grcode)) AS mt_StudentsCount, mt_GrName, mt_GrCourse,');
    SQL.Add('SUM(mt_HumHours) AS mt_HumHours, SUM(mt_GrMissAll) AS mt_GrMissAll, ');
    SQL.Add('CAST((SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))AS decimal(5,2)) AS mt_GrMissAllPercent,');
    SQL.Add('SUM(mt_GrMissIllegal) AS mt_GrMissIllegal,');
    SQL.Add('CAST((SUM(mt_GrMissIllegal)*100/CAST(SUM(mt_HumHours) AS float))AS decimal(5,2)) AS mt_GrMissIllegalPercent, ');
    SQL.Add('100 - CAST((SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))AS decimal(5,2)) AS mt_GrPresentPercent');
    SQL.Add('FROM MissingsTotal WHERE '+where+' GROUP BY mt_grcode, mt_GrName, mt_GrCourse');
    SQL.Add('UNION SELECT (SELECT SUM(gw_StudentsCount)');
    SQL.Add('FROM GroupView WHERE (gw_depcode = mt_depcode) AND (gw_grCourse = mt_grCourse)) AS mt_StudentsCount, ');
    SQL.Add('(''Итого по курсу ''+CAST([mt_GrCourse] AS varchar)) AS mts_GrName, ');
    SQL.Add('mt_GrCourse, SUM(mt_HumHours) AS mt_HumHours,');
    SQL.Add('SUM(mt_GrMissAll) AS mt_GrMissAll,');
    SQL.Add('CAST(SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissAllPercent,');
    SQL.Add('SUM(mt_GrMissIllegal) AS mt_GrMissIllegal,');
    SQL.Add('CAST(SUM(mt_GrMissIllegal)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissIllegal,');
    SQL.Add('CAST(100 - (SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))');
    SQL.Add('  AS decimal(5,2)) AS mt_GrPresentPercent');
    SQL.Add('FROM MissingsTotal WHERE '+where+'GROUP BY mt_GrCourse, mt_depcode UNION SELECT');
    SQL.Add('( SELECT SUM(gw_StudentsCount) FROM GroupView WHERE (gw_depcode = mt_depcode)) AS mt_StudentsCount, ');
    SQL.Add('(''Итого всего'') AS mt_GrName, ''9'',');
    SQL.Add('SUM(mt_HumHours) AS mt_HumHours,');
    SQL.Add('SUM(mt_GrMissAll) AS mt_GrMissAll,');
    SQL.Add('CAST(SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissAllPercent,');
    SQL.Add('SUM(mt_GrMissIllegal) AS mt_GrMissIllegal,');
    SQL.Add('CAST(SUM(mt_GrMissIllegal)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissIllegal,');
    SQL.Add('CAST(100 - (SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))');
    SQL.Add('  AS decimal(5,2)) AS mt_GrPresentPercent');
    SQL.Add('FROM MissingsTotal WHERE '+where+' GROUP BY mt_depcode ORDER BY mt_GrCourse;');
    SQL.SaveToFile('newmissingstotal.sql');
{================= backup=================================================
    SQL.Add('SELECT mt_StudentsCount, mt_GrName, mt_GrCourse, mt_HumHours, mt_GrMissAll, ');
    SQL.Add('mt_GrMissAllPercent, mt_GrMissIllegal, mt_GrMissIllegalPercent, ');
    SQL.Add('mt_GrPresentPercent FROM MissingsTotal '+where+'UNION SELECT');
    SQL.Add('SUM(mt_StudentsCount) AS mt_StudentsCount, ');
    SQL.Add('(''Итого по курсу ''+CAST([mt_GrCourse] AS varchar)) AS mts_GrName, ');
    SQL.Add('mt_GrCourse, SUM(mt_HumHours) AS mt_HumHours,');
    SQL.Add('SUM(mt_GrMissAll) AS mt_GrMissAll,');
    SQL.Add('CAST(SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissAllPercent,');
    SQL.Add('SUM(mt_GrMissIllegal) AS mt_GrMissIllegal,');
    SQL.Add('CAST(SUM(mt_GrMissIllegal)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissIllegal,');
    SQL.Add('CAST(100 - (SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))');
    SQL.Add('  AS decimal(5,2)) AS mt_GrPresentPercent');
    SQL.Add('FROM MissingsTotal '+where+'GROUP BY mt_GrCourse UNION SELECT');
    SQL.Add('SUM(mt_StudentsCount) AS mt_StudentsCount, ');
    SQL.Add('(''Итого всего'') AS mt_GrName, ''9'',');
    SQL.Add('SUM(mt_HumHours) AS mt_HumHours,');
    SQL.Add('SUM(mt_GrMissAll) AS mt_GrMissAll,');
    SQL.Add('CAST(SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissAllPercent,');
    SQL.Add('SUM(mt_GrMissIllegal) AS mt_GrMissIllegal,');
    SQL.Add('CAST(SUM(mt_GrMissIllegal)*100/CAST(SUM(mt_HumHours) AS float)');
    SQL.Add('   AS decimal(5,2)) AS mt_GrMissIllegal,');
    SQL.Add('CAST(100 - (SUM(mt_GrMissAll)*100/CAST(SUM(mt_HumHours) AS float))');
    SQL.Add('  AS decimal(5,2)) AS mt_GrPresentPercent');
    SQL.Add('FROM MissingsTotal '+where+'ORDER BY mt_GrCourse;');
============== end backup=========================================}
    Open;
  end;
  //вычисляем название отделения и зава
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT * FROM Departments, Workers');
  tmpquery.SQL.Add('WHERE dp_mastercode = wk_pcode AND dp_pcode = '''+MainForm.DepID+''';');
  //Showmessage(tmpquery.SQL.Text);
  tmpquery.Open;
  if tmpquery.RecordCount > 0then
  begin
    tmpquery.First;
    // выводим в отчет название отделения
    report.DepartmentNameLabel.Caption :=
    tmpquery.FieldByName('dp_Name').AsString;
    // выводим заведующего отделением.
    report.DepartmentManagerNameLabel.Caption :=
    tmpquery.FieldByName('wk_Name').AsString;
  end else
  begin
    // выводим в отчет ошибочное название отделения
    report.DepartmentNameLabel.Caption := 'Неизвестное отделение';
    // выводим ошибочного заведующего отделением.
    report.DepartmentManagerNameLabel.Caption := 'Неизвестно';
  end;
  tmpquery.Free;
  // заголовок отчета
  report.TotalMissingsReport.Preview;
  report.Free;
  end;
selectform.Free;
end;

procedure TMainForm.CmdErMenuItemClick(Sender: TObject);
var
delform : TDelStudentForm;
pcode   : string;
reason  : string;
attr    : byte;

begin
// Удаляем студента
delform := TDelStudentForm.Create(self);
attr := 0;
if delform.ShowModal = mrOk then
begin
if PageControl.ActivePage = DeletedTabSheet then
  begin
  pcode := DelQuery.FieldByName('st_pcode').AsString;
  attr := DelQuery.FieldByName('st_Attributes').AsInteger;
  end
else if PageControl.ActivePage = ErrorTabSheet then
  begin
  pcode := ErQuery.FieldByName('st_pcode').AsString;
  attr := ErQuery.FieldByName('st_Attributes').AsInteger;
  end
else if PageControl.ActivePage = AcademTabSheet then
  begin
  pcode := AcademQuery.FieldByName('st_pcode').AsString;
  attr := AcademQuery.FieldByName('st_Attributes').AsInteger;
  end
else if PageControl.ActivePage = AddCourseTabSheet then
  begin
  pcode := AddCourseQuery.FieldByName('st_pcode').AsString;
  attr := AddCourseQuery.FieldByName('st_Attributes').AsInteger;
  end;
if delform.ReasonEdit.Enabled then
  reason := delform.ReasonEdit.Text else
  reason := delform.ReasonComboBox.Text;
if delform.ActionComboBox.ItemIndex >= 0 then
 begin
  if attr > ARCH then
    attr := ARCH + Trunc(Power(2, delform.ActionComboBox.ItemIndex))
  else
    attr := Trunc(Power(2, delform.ActionComboBox.ItemIndex));
  Command.CommandText :=
  'BEGIN TRAN Td UPDATE Students SET st_Attributes = '+
  IntToStr(attr);
  if delform.ActionComboBox.ItemIndex = 1 then
    Command.CommandText := Command.CommandText + ', st_IsCommercial = 1';
  Command.CommandText := Command.CommandText + ' WHERE st_pcode = '''+
  pcode+''';';
//  ShowMessage(Command.CommandText);
  Command.Execute;
  if delform.ActionComboBox.ItemIndex = delform.ActionComboBox.Items.Count-1 then
  begin
   Command.CommandText :=
   'DELETE FROM Commands WHERE cm_stcode = '''+pcode+'''; '+
   'INSERT INTO Commands (cm_Text, cm_Date, cm_Number, cm_rcode, cm_stcode ) '+
   'VALUES ('''+reason+''', '''+
   DateToStr(delform.DateEdit.Date)+''', '''+delform.NumEdit.Text+''', '+
   TContainer(delform.ReasonComboBox.Items.Objects[
     delform.ReasonComboBox.ItemIndex]).Key+', '''+
   pcode+''') COMMIT TRAN Td;';
   Command.Execute;
  end else
  begin
   Command.CommandText :=
   'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''' COMMIT TRAN Td;';
   Command.Execute;
  end;
//  StudentsQuery.Requery;
  DelQuery.Requery;
  ErQuery.Requery;
  AcademQuery.Requery;
  AddCourseQuery.Requery;
  end;
end;
delform.Free;
end;
procedure TMainForm.ContReportItem(Sender: TObject);
var
report   : TContReportForm;
tmpquery : TADOQuery;
begin
report := TContReportForm.Create(self);
report.SchoolLabel.Caption := SchoolName;
report.DepLabel.Caption := 'Неизвестное отделение';
  report.DateLabel.Caption := 'За '+DateToStr(Now);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+DepID+''');');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  report.DepLabel.Caption := tmpquery.FieldByName('dp_Name').AsString;
  report.DepartmentMasterLabel.Caption := 'зав. отделением __________________ '+
  tmpquery.FieldByName('wk_ShortName').AsString;
  end;
tmpquery.Close;
tmpquery.Free;
with report.ContQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT ([sp_Key]+'' бюджет'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsCommercial = 0 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('GROUP BY sp_Key');
SQL.Add('UNION SELECT ([sp_Key]+'' внебюджет'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsCommercial = 1 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('GROUP BY sp_Key');
SQL.Add('UNION SELECT ([sp_Key]+'' мужского пола'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsMale = 1 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('GROUP BY sp_Key');
SQL.Add('UNION SELECT ([sp_Key]+'' женского пола'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsMale = 0 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('GROUP BY sp_Key');
SQL.Add('UNION SELECT (''Итого бюджет'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsCommercial = 0 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('UNION SELECT (''Итого внебюджет'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsCommercial = 1 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('UNION SELECT (''Студентов мужского пола'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsMale = 1 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('UNION SELECT (''Студенток женского пола'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND st_IsMale = 0 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('UNION SELECT (''Общий итог'') AS sp_Key,');
SQL.Add('SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),');
SQL.Add('SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),');
SQL.Add('COUNT(st_Name)');
SQL.Add('FROM Specialities, Groups, Students');
SQL.Add('WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode');
SQL.Add('AND st_Attributes = 0 AND gr_isZaoch = 0');
SQL.Add('AND sp_depcode = '''+DepID+'''');
SQL.Add('ORDER BY sp_Key;');
//SQL.SaveToFile('contingent.sql');
Open;
end;
report.ContReport.Preview;
report.ContQuery.Close;
report.Free;
end;

procedure TMainForm.ParentLessReportItem(Sender: TObject);
var
report    : TListReportForm;
tmpquery  : TADOQuery;
begin
report := TListReportForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Departments, Workers WHERE (dp_mastercode = wk_pcode) AND (dp_pcode = '''+
  DepID+''');');
tmpquery.Open;
if tmpquery.RecordCount >= 0 then
  begin
  report.DepartmentLabel.Caption := 'Отделение '+
    tmpquery.FieldByName('dp_Name').AsString;
  report.DepartmentMasterLabel.Caption := 'зав. отделением __________________ '+
    tmpquery.FieldByName('wk_ShortName').AsString;
  end;
tmpquery.Close;
tmpquery.Free;
report.SchoolLabel.Caption := SchoolName;
report.TypeLabel.Caption := 'Являющихся сиротами';
with report.ListQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT st_Name, gr_Name FROM Students, Groups ');
SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = gr_pcode)');
SQL.Add('AND (st_Parentless = 1) ');
SQL.Add('AND gr_speccode IN (SELECT sp_pcode FROM Specialities ');
SQL.Add('WHERE sp_depcode = '''+DepID+''');');
Open;
end;
report.ListReport.Preview;
report.Free;
end;


procedure TMainForm.MissActionExecute(Sender: TObject);
var
report     : TMounthMissReportForm;
selectform : TSelectMounthForm;
groups, c  : integer;
result     : integer;


begin
groups := 1;
selectform := TSelectMounthForm.Create(self);
result := selectform.ShowModal;
if (result = mrOk) then
begin
 report := TMounthMissReportForm.Create(self);
 if (selectform.GroupCheckBox.Checked) then
   begin
   if (MessageDlg(ALL_PRINT, mtWarning,[mbYes, mbNo],0) = mrYes) then
   groups := GroupQuery.RecordCount;
   end;
 for c := 1 to groups do
 begin
 if groups > 1 then
   GroupQuery.RecNo := c;
 report.GroupLabel.Caption := 'группы '+GroupQuery.FieldByName('gr_Name').AsString;
 report.MounthLabel.Caption := 'за '+selectform.MounthComboBox.Text+
 ' '+GetYears(selectform.MounthComboBox.ItemIndex+1, YearEdit.Value);
 with report.MounthMissQuery do
 begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT smm_Name, smm_Legal, smm_Illegal, smm_All ');
  SQL.Add('FROM StMounthMissingsView WHERE smm_Mounth = '''+
    IntToStr(selectform.MounthComboBox.ItemIndex+1)+
    ''' AND smm_Year = '''+selectform.YearEdit.Text+
    ''' AND smm_grcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+'''');
  SQL.Add('ORDER BY smm_FullName');
  Open;
 end;
 if groups = 1 then
   report.MounthMissReport.Preview
 else
   report.MounthMissReport.Print;
 end; // for
 report.Free;
end;
selectform.Free;
end;

procedure TMainForm.N28Click(Sender: TObject);
var
report    : TListReportForm;
tmpquery  : TADOQuery;
begin
report := TListReportForm.Create(self);
report.SchoolLabel.Caption := SchoolName;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Departments, Workers WHERE (dp_mastercode = wk_pcode) AND (dp_pcode = '''+
  DepID+''');');
tmpquery.Open;
if tmpquery.RecordCount >= 0 then
  begin
  report.DepartmentLabel.Caption := 'Отделение '+
    tmpquery.FieldByName('dp_Name').AsString;
  report.DepartmentMasterLabel.Caption := 'зав. отделением __________________ '+
    tmpquery.FieldByName('wk_ShortName').AsString;
  end;
tmpquery.Close;
tmpquery.Free;
report.TypeLabel.Caption := 'Проживающих в общежитии';
with report.ListQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT st_Name, gr_Name FROM Students, Groups ');
SQL.Add('WHERE st_Attributes = 0 AND st_grcode = gr_pcode AND st_Hotel = 1 ');
SQL.Add('AND gr_speccode IN (SELECT sp_pcode FROM Specialities ');
SQL.Add('WHERE sp_depcode = '''+DepID+''');');
Open;
end;
report.ListReport.Preview;
report.Free;
end;

procedure TMainForm.StudentsDataReportItemClick(Sender: TObject);
var
report : TStudentsDataReportForm;
begin
// вывести отчет о данных студента
report := TStudentsDataReportForm.Create(self);
report.GroupNameLabel.Caption := GroupQuery.FieldByName('gr_Name').AsString;
with report.StudentsDataQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT ([st_Name]+'' (''+CONVERT(varchar, [st_BirthDate], 104)+'')'') AS st_Name, ');
SQL.Add('st_Documents, st_Address, st_Further, st_Mother, ');
SQL.Add('st_Passport ');
SQL.Add('FROM StudentsDataListView ');
SQL.Add('WHERE st_Attributes = 0 AND st_grcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+''';');
Open;
end;
report.StudentsDataReport.Preview;
report.Free;
end;

procedure TMainForm.MounthReportActionExecute(Sender: TObject);
var
report          : TMounthRepForm;
selform         : TSelectMounthForm;
tmpquery        : TADOQuery;
mounth, year, x : word;
groups, c       : integer;
result          : integer;
img             : TQRImage;
syeareq         : string;
eyeareq         : string;
mstr, ystr      : string;

begin
selform := TSelectMounthForm.Create(self);
selform.NextMonth;
selform.AutofillCheckBox.Visible := true;
groups := 1;
result := selform.ShowModal;
if (result = mrOk) then
begin
syeareq := '<=';
eyeareq := '>=';
mounth := selform.MounthComboBox.ItemIndex+1;
if mounth <= 8 then
  begin
  syeareq := '<=';
  eyeareq := '=';
  end else
  begin
  syeareq := '=';
  eyeareq := '>=';
  end;
year := selform.YearEdit.Value;
mstr := IntToStr(mounth);
ystr := IntToStr(year);
if mounth < 10 then
  mstr := '0'+mstr;
report := TMounthRepForm.Create(self);
report.SchoolNameLabel.Caption := SchoolName;
report.MinistryLabel.Caption := MinistryName;
if (selform.GroupCheckBox.Checked) then
  if (MessageDlg(ALL_PRINT, mtWarning,[mbYes, mbNo],0) = mrYes) then
    groups := GroupQuery.RecordCount;
  for c := 1 to groups do
  begin
  if groups > 1 then
    GroupQuery.RecNo := c;
  report.DescLabel.Caption := 'группы '+GroupQuery.FieldByName('gr_Name').AsString+' '+
  GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения за '+
  selform.MounthComboBox.Text+' '+GetYears(mounth, year)+'.';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''';');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    report.SpecLabel.Caption := 'Специальность: '+tmpquery.FieldByName('sp_Key').AsString+
    ' "'+tmpquery.FieldByName('sp_Name').AsString+'".';
  if (selform.AutofillCheckBox.Checked) then
    begin
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('getSemesterSubjectsList '''+
      GroupQuery.FieldByName('gr_pcode').AsString+''', ''15.'+mstr+'.'+ystr+''';');
    tmpquery.Open;
    for x := 1 to tmpquery.RecordCount do
      begin
      tmpquery.RecNo := x;
      img := TQRImage(report.FindComponent('Image'+IntToStr(x)));
      if img <> NIL then
        begin
        TextAngle(img.Canvas, 90, 10,
        tmpquery.FieldByName('sb_Name').AsString);
        end;
      end;
    end; // if
    tmpquery.Free;
    report.TextAngle(report.MLImage.Canvas,90,10,'Уважительно');
    report.TextAngle(report.MIImage.Canvas,90,10,'Неуважительно');
    report.TextAngle(report.MAImage.Canvas,90,10,'Всего');
    if groups = 1 then
      report.MounthRep.Preview
    else
      report.MounthRep.Print;
  end; // for
  report.Free;
end;
selform.Free;
end;

// crosstable generation script
procedure TMainForm.CompReportActionExecute(Sender: TObject);
var
report        : TCompReportForm;
tmpquery      : TADOQuery;
selectform    : TComboSelectForm;
s_num         : integer;
entry         : TContainer;
x             : integer;
sname         : string;
slots         : integer;

begin
slots := 0;
s_num := 0;
selectform := TComboSelectForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT sm_pcode, sm_Number, sm_BYear, sm_BMounth FROM Semesters WHERE sm_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''' ORDER BY sm_Number;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
for x := 1 to tmpquery.RecordCount do
 begin
 tmpquery.RecNo := x;
 entry := TContainer.Create;
 entry.Name := tmpquery.FieldByName('sm_Number').AsString+'-й семестр';
 entry.Key := tmpquery.FieldByName('sm_pcode').AsString;
 selectform.SelectComboBox.Items.AddObject(entry.Name, entry);
 end;
if selectform.ShowModal = mrOk then
  begin
  tmpquery.Locate('sm_pcode',
    TContainer(
               selectform.SelectComboBox.Items.Objects[
               selectform.SelectComboBox.ItemIndex]
               ).Key,[]);
  s_num := tmpquery.FieldByName('sm_Number').AsInteger;
  sname := GetYears(tmpquery.FieldByName('sm_BMounth').AsInteger,
  tmpquery.FieldByName('sm_BYear').AsInteger);
  end;
selectform.Free;
tmpquery.Close;
tmpquery.SQL.Clear;
report := TCompReportForm.Create(self);
report.SchoolNameLabel.Caption := SchoolName;
report.MinistryLabel.Caption := MinistryName;
report.DescLabel.Caption := 'успеваемости группы '+
  GroupQuery.FieldByName('gr_Name').AsString+' '+
  GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения за '+
  IntToStr(s_num)+'-й семестр '+sname+'.';
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add(
  'SELECT * FROM Groups, Specialities');
tmpquery.SQL.Add(
  'WHERE gr_speccode = sp_pcode AND gr_pcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+''';');
tmpquery.Open;
if tmpquery.RecNo > 0 then
begin
report.SpecLabel.Caption := 'Специальность: '+
  tmpquery.FieldByName('sp_Key').AsString+' "'+
  tmpquery.FieldByName('sp_Name').AsString+'".';
end;
report.CompQuery.SQL.Clear;
report.CompQuery.SQL.Add('SELECT st_Name AS StName, ');
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
  'SELECT cp_sbcode, sb_Name, sm_pcode, cp_Teacher ');
tmpquery.SQL.Add(
  'FROM Checkpoints, Subjects, Semesters WHERE (sm_grCode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+
  ''') AND (sm_Number = '''+IntToStr(s_num)+
  ''') AND (cp_sbcode = sb_pcode) AND (sm_pcode = cp_smcode) AND (cp_hasCheck = 1) ORDER BY sb_Name;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  case x of
  1:
    begin
    TextAngle(report.ChImage1.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM1.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  2:
    begin
    TextAngle(report.ChImage2.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM2.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  3:
    begin
    TextAngle(report.ChImage3.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM3.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  4:
    begin
    TextAngle(report.ChImage4.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM4.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  5:
    begin
    TextAngle(report.ChImage5.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM5.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  6:
    begin
    TextAngle(report.ChImage6.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM6.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  7:
    begin
    TextAngle(report.ChImage7.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM7.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  8:
    begin
    TextAngle(report.ChImage8.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM8.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  9:
    begin
    TextAngle(report.ChImage9.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM9.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  10:
    begin
    TextAngle(report.ChImage10.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM10.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  11:
    begin
    TextAngle(report.ChImage11.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM11.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  12:
    begin
    TextAngle(report.ChImage12.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM12.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  13:
    begin
    TextAngle(report.ChImage13.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ChM13.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    end;
  end; // case
  report.CompQuery.SQL.Add('(SELECT cpv_Mark FROM CpView');
  report.CompQuery.SQL.Add(' WHERE (cpv_sbcode = '''+
  tmpquery.FieldByName('cp_sbcode').AsString+''') AND (cpv_stcode = st_pcode)');
  report.CompQuery.SQL.Add(' AND (cpv_smcode = sm_pcode)) AS Ch'+IntToStr(x)+', ');
  end; // for
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
  'SELECT ex_sbcode, sb_Name, sm_pcode, ex_Teacher');
tmpquery.SQL.Add(
  'FROM Exams, Subjects, Semesters WHERE sm_grCode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+
  ''' AND sm_Number = '''+IntToStr(s_num)+
  ''' AND ex_sbcode = sb_pcode AND sm_pcode = ex_smcode ORDER BY sb_Name;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
begin
for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  case x of
  1:
    begin
    TextAngle(report.ExImage1.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM1.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  2:
    begin
    TextAngle(report.ExImage2.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM2.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  3:
    begin
    TextAngle(report.ExImage3.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM3.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  4:
    begin
    TextAngle(report.ExImage4.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM4.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  5:
    begin
    TextAngle(report.ExImage5.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM5.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  6:
    begin
    TextAngle(report.ExImage6.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.ExM6.Canvas, 90, 12,
    tmpquery.FieldByName('ex_Teacher').AsString);
    end;
  end; // case
  report.CompQuery.SQL.Add('(SELECT exv_Mark FROM ExView ');
  report.CompQuery.SQL.Add(' WHERE (exv_sbcode = '''+
  tmpquery.FieldByName('ex_sbcode').AsString+''') AND (exv_stcode = st_pcode)');
  report.CompQuery.SQL.Add(' AND (exv_smcode = sm_pcode)) AS Ex'+IntToStr(x)+', ');
  end; // for
end; // if
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
  'SELECT pk_pcode As code, pk_Title As sb_Name, pk_Teachers As cp_Teacher, sm_pcode');
tmpquery.SQL.Add(
  'FROM Practics, Semesters WHERE sm_grcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+
  ''' AND sm_Number = '''+IntToStr(s_num)+
  ''' AND pk_smcode = sm_pcode ORDER BY sb_Name;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
begin
for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  case x of
  1:
    begin
    TextAngle(report.OthImage1.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM1.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    slots := 1;
    end;
  2:
    begin
    TextAngle(report.OthImage2.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM2.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    slots := 2;
    end;
  3:
    begin
    TextAngle(report.OthImage3.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM3.Canvas, 90, 12,
    tmpquery.FieldByName('cp_Teacher').AsString);
    slots := 3;
    end;
  end; // case
  report.CompQuery.SQL.Add('(SELECT pkv_Mark FROM PkView ');
  report.CompQuery.SQL.Add(' WHERE (pkv_pkcode = '''+
  tmpquery.FieldByName('code').AsString+''') AND (pkv_stcode = st_pcode)');
  report.CompQuery.SQL.Add(' AND (pkv_smcode = sm_pcode)) AS Oth'+IntToStr(x)+', ');
end;// for
end;
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
  'SELECT cw_pcode As code, sb_Name, cw_Teacher, sm_pcode');
tmpquery.SQL.Add(
  'FROM CourseWorks, Semesters, Subjects WHERE sm_grcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+
  ''' AND sm_Number = '''+IntToStr(s_num)+
  ''' AND cw_smcode = sm_pcode');
tmpquery.SQL.Add(' AND cw_sbcode = sb_pcode');
tmpquery.SQL.Add('ORDER BY sb_Name;');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
begin
for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  case x+slots of
  1:
    begin
    TextAngle(report.OthImage1.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM1.Canvas, 90, 12,
    tmpquery.FieldByName('cw_Teacher').AsString);
    end;
  2:
    begin
    TextAngle(report.OthImage2.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM2.Canvas, 90, 12,
    tmpquery.FieldByName('cw_Teacher').AsString);
    end;
  3:
    begin
    TextAngle(report.OthImage3.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM3.Canvas, 90, 12,
    tmpquery.FieldByName('cw_Teacher').AsString);
    end;
  4:
    begin
    TextAngle(report.OthImage4.Canvas, 90, 10,
    tmpquery.FieldByName('sb_Name').AsString);
    TextAngle(report.OthM4.Canvas, 90, 12,
    tmpquery.FieldByName('cw_Teacher').AsString);
    end;
  end; // case
  report.CompQuery.SQL.Add('(SELECT cwv_Mark FROM CwView ');
  report.CompQuery.SQL.Add(' WHERE (cwv_cwcode = '''+
  tmpquery.FieldByName('code').AsString+''') AND (cwv_stcode = st_pcode)');
  report.CompQuery.SQL.Add(' AND (cwv_smcode = sm_pcode)) AS Oth'+IntToStr(x+slots)+', ');
end;// for
end;
tmpquery.Free;

report.CompQuery.SQL.Add(
  '(SELECT SUM(swm_Legal) FROM StWeekMissings');
report.CompQuery.SQL.Add(
  '  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_legal,');
report.CompQuery.SQL.Add(
  '(SELECT SUM(swm_illegal) FROM StWeekMissings');
report.CompQuery.SQL.Add(
  '  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_illegal,');
report.CompQuery.SQL.Add(
  '(SELECT SUM(swm_all) FROM StWeekMissings');
report.CompQuery.SQL.Add(
  '  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_all');
report.CompQuery.SQL.Add('FROM Students, Semesters');
report.CompQuery.SQL.Add(
  'WHERE (st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+
  ''') AND (sm_Number = '''+IntToStr(s_num)+''')');
report.CompQuery.SQL.Add(
  'AND (sm_grcode = st_grcode) AND (st_Attributes = 0)');
report.CompQuery.SQL.Add('ORDER BY st_Name;');
report.CompQuery.Open;
//{$ifdef debug}
//report.CompQuery.SQL.SaveToFile('crosstable.sql');
//{$endif}
report.StudNameText.DataField := 'StName';
report.LMText.DataField := 'stm_Legal';
report.IMText.DataField := 'stm_Illegal';
report.AMText.DataField := 'stm_All';
report.Ex1.DataField := 'Ex1';
report.Ex2.DataField := 'Ex2';
report.Ex3.DataField := 'Ex3';
report.Ex4.DataField := 'Ex4';
report.Ex5.DataField := 'Ex5';
report.Ch1.DataField := 'Ch1';
report.Ch2.DataField := 'Ch2';
report.Ch3.DataField := 'Ch3';
report.Ch4.DataField := 'Ch4';
report.Ch5.DataField := 'Ch5';
report.Ch6.DataField := 'Ch6';
report.Ch7.DataField := 'Ch7';
report.Ch8.DataField := 'Ch8';
report.Ch9.DataField := 'Ch9';
report.Ch10.DataField := 'Ch10';
report.Ch11.DataField := 'Ch11';
report.Ch12.DataField := 'Ch12';
report.Oth1.DataField := 'Oth1';
report.Oth2.DataField := 'Oth2';
report.Oth3.DataField := 'Oth3';
report.Oth4.DataField := 'Oth4';
// посещаемость
TextAngle(report.MLImage.Canvas, 90, 14,'Уваж.');
TextAngle(report.MIImage.Canvas, 90, 14,'Неув.');
TextAngle(report.MAImage.Canvas, 90, 14,'Всего');
report.CompRep.Preview;
report.Free;
end;

procedure TMainForm.WeekMissingsActionExecute(Sender: TObject);
var
report     : TWeekMissingsRepForm;
selectform : TReportSelectForm;
day        : word;
mounth     : word;
dayofweek  : word;
year       : word;
delta      : word;
wasdate    : TDate;
tmpquery   : TADOQuery;

begin
// show report
selectform := TReportSelectForm.Create(self);
selectform.Caption := 'Ведомость пропусков';
selectform.ParamRadioGroup.Caption := 'Ведомость за:';
selectform.ParamRadioGroup.Items.Clear;
selectform.ParamRadioGroup.Items.Add('Эту неделю');
selectform.ParamRadioGroup.Items.Add('Следующую неделю');
selectform.ParamRadioGroup.ItemIndex := 1;
if selectform.ShowModal = mrOk then
  begin
  report := TWeekMissingsRepForm.Create(self);
  DecodeDateFully(Now, year, mounth, day, dayofweek);
  if selectform.ParamRadioGroup.ItemIndex = 0 then
    begin
    if dayofweek > 1 then
      wasdate := Now - (dayofweek-1)
    else
      wasdate := Now;
    end
  else
    wasdate := Now + (8-dayofweek);
  delta := 0;
  while delta < 7 do
    begin
    DecodeDateFully(wasdate, year, mounth, day, dayofweek);
      case dayofweek of
       2 : report.DayLabel1.Caption := 'пн ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
       3 : report.DayLabel2.Caption := 'вт ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
       4 : report.DayLabel3.Caption := 'ср ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
       5 : report.DayLabel4.Caption := 'чт ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
       6 : report.DayLabel5.Caption := 'пт ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
       7 : report.DayLabel6.Caption := 'сб ('+
           GetStr(day)+'.'+GetStr(mounth)+')';
      end; //case
    wasdate := wasdate+1;
    inc(delta);
    end; // while
  report.DescLabel.Caption := 'Учета учебных часов, пропущенных студентами группы '+
    GroupQuery.FieldByName('gr_Name').AsString+' '+
    GroupQuery.FieldByName('gr_Course').AsString+
    '-го курса очной формы обучения за '+GetMounthStr(mounth)+' '+
    IntToStr(year)+'г.';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  with tmpquery do
  begin
  SQL.Add('SELECT * FROM Specialities WHERE sp_pcode='''+
  GroupQuery.FieldByName('gr_speccode').AsString+''';');
  Open;
  end;
  if tmpquery.RecordCount > 0 then
    report.SpecLabel.Caption := 'Специальность: '+
    tmpquery.FieldByName('sp_Key').AsString+' "'+
    tmpquery.FieldByName('sp_Name').AsString+'".';
  tmpquery.Free;
  TextAngle(report.LMImage.Canvas, 90, 14,'Уваж.');
  TextAngle(report.IMImage.Canvas, 90, 14,'Неув.');
  TextAngle(report.AMImage.Canvas, 90, 14,'Всего');
  report.WeekMissingsRep.Preview;
  report.Free;
  end;// showmodal = mrOk
end;// procedure

procedure TMainForm.N14Click(Sender: TObject);
begin
// Поместить в архив
if MessageDlg(ARCHIVE_REQ,mtWarning,[mbYes,mbNo],0) = mrYes then
  try
  Command.CommandText := 'BEGIN TRAN ARCH_GR '+
  'UPDATE Groups SET gr_Attributes = (gr_Attributes | '+IntToStr(ARCH)+') '+
  'WHERE gr_pcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+''';';
  Command.Execute;
  Command.CommandText :=
  'UPDATE Students SET st_Attributes = (st_Attributes | '+IntToStr(ARCH)+') '+
  'WHERE st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+''' '+
  'COMMIT TRAN ARCH_GR;';
  Command.Execute;
  except
   begin
   Command.CommandText := 'ROLLBACK TRAN ARCH_GR;';
   Command.Execute;
   MessageDlg(OP_ERROR,mtError,[mbOk],0);
   end;
  end;// try
GroupQuery.Requery;
ArGroupQuery.Requery;
end;

procedure TMainForm.MounthSummaryClick(Sender: TObject);
var
report  : TMounthReportForm;
selform : TSelectMounthForm;
tmpquery: TADOQuery;

begin
selform := TSelectMounthForm.Create(self);
selform.GroupCheckBox.Visible := false;
if selform.ShowModal = mrOk then
  begin
  report := TMounthReportForm.Create(self);
  report.SpecLabel.Caption := ' ';
  report.DepLabel.Caption := 'Отделение "'+DepName+'"';
  report.DateLabel.Caption := DateTimeToStr(Now);
  report.DetailLabel.Caption := 'За '+
  selform.MounthComboBox.Text+' '+
  selform.YearEdit.Text+'-го года';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add(
    'SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+
    DepID+''')');
  tmpquery.Open;
  if (tmpquery.RecordCount >= 1) then
    begin
    tmpquery.First;
    report.DepMasterLabel.Caption := 'зав. отделением ________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
  tmpquery.Close;
  tmpquery.Free;
  with report.ReportQuery.SQL do
    begin
    Clear;
    Add('EXEC GetControllerView '+IntToStr(selform.MounthComboBox.ItemIndex+1)+
      ', '+selform.YearEdit.Text+', '''+DepID+'''');
    end;
  report.ReportQuery.Open;
  report.GroupsReport.Preview;
  report.ReportQuery.Close;
  report.Free;
  end;
selform.Free;
end;

procedure TMainForm.ArGroupDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
if (ArGroupQuery.State = dsBrowse) and (ArGroupQuery.RecordCount > 0) then
  begin
  if ArStudentsQuery.Active then
  ArStudentsQuery.Close;
  ArStudentsQuery.SQL.Clear;
  ArStudentsQuery.SQL.Add(
    'SELECT st_pcode, st_FName, st_MName, st_LName, st_Name, st_FullName, st_BirthDate, st_grcode ');
  ArStudentsQuery.SQL.Add(
    'FROM Students WHERE (st_grcode = '''+
    ArGroupQuery.FieldByName('gr_pcode').AsString+
    ''') AND (st_Attributes = '+IntToStr(ARCH)+') ORDER BY st_Name;');
//  ShowMessage(ArStudentsQuery.SQL.Text);
  ArStudentsQuery.Open;
  StatusBar.SimpleText := ArGroupQuery.FieldByName('gr_Name').AsString+' ('+
  IntToStr(ArStudentsQuery.RecordCount)+' чел.)';
  end;
end;

procedure TMainForm.MarksMounthReportAction(Sender: TObject);
var
report        : TMounthMarkReportForm;
tmpquery      : TADOQuery;
selectform    : TSelectMounthForm;
x             : integer;
mounth        : integer;
year          : integer;
groups, c     : integer;
result        : integer;
syeareq       : string;
eyeareq       : string;
date          : string;
img           : TQRImage;

begin
syeareq := '<=';
eyeareq := '>=';
selectform := TSelectMounthForm.Create(self);
groups := 1;
result := selectform.ShowModal;
if (result = mrOk) then
  begin
  mounth := selectform.MounthComboBox.ItemIndex + 1;
  if mounth <= 8 then
    begin
    syeareq := '<=';
    eyeareq := '=';
  end else
    begin
    syeareq := '=';
    eyeareq := '>=';
  end;
  year := selectform.YearEdit.Value;
  if mounth < 10 then
  date := IntToStr(year)+'0'+IntToStr(mounth)+'4' else
    date := IntToStr(year)+IntToStr(mounth)+'4';
  if (selectform.GroupCheckBox.Checked) then
    if (MessageDlg(ALL_PRINT, mtWarning,[mbYes, mbNo],0) = mrYes) then
      groups := GroupQuery.RecordCount;
  for c := 1 to groups do
  begin
  if groups > 1 then
    GroupQuery.RecNo := c;
  report := TMounthMarkReportForm.Create(self);
  report.SchoolNameLabel.Caption := SchoolName;
  report.MinistryLabel.Caption := MinistryName;
  report.MounthMarkQuery.Close;
  report.DescLabel.Caption := 'успеваемости группы '+
    GroupQuery.FieldByName('gr_Name').AsString+' '+
    GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения за '+
    GetMounthStr(mounth)+' месяц '+IntToStr(year)+'-го года.';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add(
    'SELECT * FROM Groups, Specialities');
  tmpquery.SQL.Add(
    'WHERE gr_speccode = sp_pcode AND gr_pcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+''';');
  tmpquery.Open;
  if tmpquery.RecNo > 0 then
  begin
    report.SpecLabel.Caption := 'Специальность: '+
      tmpquery.FieldByName('sp_Key').AsString+' "'+
      tmpquery.FieldByName('sp_Name').AsString+'".';
  end;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('getSemesterSubjectsList '''+
   GroupQuery.FieldByName('gr_pcode').AsString+''', ''25.'+IntToStr(mounth)+
     '.'+IntToStr(year)+''';');
  tmpquery.Open;
  report.MounthMarkQuery.SQL.Clear;
  report.MounthMarkQuery.SQL.Add('SELECT st_Name, st_FullName, st_pcode, ');
  if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
  begin
    tmpquery.RecNo := x;
    img := TQRImage(report.FindComponent('SbImage'+IntToStr(x)));
    if img <> NIL then
      begin
      TextAngle(img.Canvas, 90, 10,
      tmpquery.FieldByName('sb_Name').AsString);
      end;
  report.MounthMarkQuery.SQL.Add('MAX(CASE mk_sbcode ');
  report.MounthMarkQuery.SQL.Add(' WHEN '''+
  tmpquery.FieldByName('sb_pcode').AsString+''' THEN mk_Mark');
  report.MounthMarkQuery.SQL.Add(' ELSE 0 END) AS Sb'+IntToStr(x)+', ');
  end; // for
  tmpquery.Close;
//  report.MounthMarkQuery.SQL.Add('smm_Legal, smm_Illegal, smm_All');
  report.MounthMarkQuery.SQL.Add('(SELECT SUM(swm_legal) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_legal,');
  report.MounthMarkQuery.SQL.Add('(SELECT SUM(swm_illegal) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_illegal,');
  report.MounthMarkQuery.SQL.Add('(SELECT SUM(swm_all) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_all');
  report.MounthMarkQuery.SQL.Add('FROM Students, Marks, subjects');
  report.MounthMarkQuery.SQL.Add(
    'WHERE (st_Attributes = 0) AND (st_grcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+''')');
  report.MounthMarkQuery.SQL.Add(
    'AND (mk_stcode = st_pcode) AND (mk_sbcode = sb_pcode) '+
    'AND (mk_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
    GroupQuery.FieldByName('gr_pcode').AsString+
    ''')) AND (mk_Year = '+intToStr(year)+
    ') AND (mk_mounth = '+intToStr(mounth)+')');
  report.MounthMarkQuery.SQL.Add('GROUP BY st_Name, st_FullName, st_pcode,  mk_stcode, mk_year, mk_mounth');
  report.MounthMarkQuery.SQL.Add('ORDER BY st_FullName;');

//  report.MounthMarkQuery.SQL.SaveToFile('mounthmarks.sql');

  report.MounthMarkQuery.Open;
  report.StudNameText.DataField := 'st_Name';
  report.LMText.DataField := 'smm_Legal';
  report.IMText.DataField := 'smm_Illegal';
  report.AMText.DataField := 'smm_All';
  report.Sb1.DataField := 'Sb1';
  report.Sb2.DataField := 'Sb2';
  report.Sb3.DataField := 'Sb3';
  report.Sb4.DataField := 'Sb4';
  report.Sb5.DataField := 'Sb5';
  report.Sb6.DataField := 'Sb6';
  report.Sb7.DataField := 'Sb7';
  report.Sb8.DataField := 'Sb8';
  report.Sb9.DataField := 'Sb9';
  report.Sb10.DataField := 'Sb10';
  report.Sb11.DataField := 'Sb11';
  report.Sb12.DataField := 'Sb12';
  report.Sb13.DataField := 'Sb13';
  report.Sb14.DataField := 'Sb14';
  report.Sb15.DataField := 'Sb15';
  report.Sb16.DataField := 'Sb16';
  report.Sb17.DataField := 'Sb17';
  report.Sb18.DataField := 'Sb18';
  report.Sb19.DataField := 'Sb19';
  report.Sb20.DataField := 'Sb20';
  report.Sb21.DataField := 'Sb21';
  // посещаемость
  TextAngle(report.MLImage.Canvas, 90, 14,'Уваж.');
  TextAngle(report.MIImage.Canvas, 90, 14,'Неув.');
  TextAngle(report.MAImage.Canvas, 90, 14,'Всего');
  if groups = 1 then
    report.MounthMarkRep.Preview
  else
    report.MounthMarkRep.Print;
  report.Free;
  tmpquery.Free;
  end;
  end;
selectform.Free;
end;

procedure TMainForm.SemesterSummaryActionExecute(Sender: TObject);
var
report  : TMounthReportForm;
selform : TReportSelectForm;
//semester: string;
mounth  : word;
year    : word;
day     : word;
semnum  : string;
semester: integer;
tmpquery: TADOQuery;

begin
DecodeDate(Now, year, mounth, day);
selform := TReportSelectForm.Create(self);
//selform.ParamRadioGroup.Items.Count := 3;
selform.ParamRadioGroup.Items[1] := 'Отчет за второй семестр учебного года';
//selform.ParamRadioGroup.Items.Add('Отчет за весь учебный год');
//semester := '';
semnum := '';
if selform.ShowModal = mrOk then
  begin
  semester := 1 - selform.ParamRadioGroup.ItemIndex;
  if semester < 0 then semester := 0;
  case selform.ParamRadioGroup.ItemIndex of
  0 : begin
//      semester := '(scw_smNumber = scw_grcourse * 2 - 1)';
      semnum := ' первый семестр ';
      end;
  1 : begin
//      semester := '(scw_smNumber = scw_grcourse * 2)';
      semnum := ' второй семестр ';
      end;
{
  2 : begin
      semester := '((scw_smNumber = scw_grcourse * 2) OR (scw_smNumber = scw_grcourse * 2 - 1))';
      semnum := ' все семестры ';
      end;
}
  end;
  report := TMounthReportForm.Create(self);
  report.DepLabel.Caption := 'Отделение "'+DepName+'"';
  report.SpecLabel.Caption := 'По всем специальностям отделения';
  report.DateLabel.Caption := DateTimeToStr(Now);
  report.DetailLabel.Caption := 'За'+semnum+GetYears(mounth, year);
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add(
    'SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+
    DepID+''')');
  tmpquery.Open;
  if (tmpquery.RecordCount >= 1) then
    begin
    tmpquery.First;
    report.DepMasterLabel.Caption := 'зав. отделением ________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
  tmpquery.Close;
  tmpquery.Free;
  with report.ReportQuery.SQL do
    begin
    Clear;
    Add('EXEC GetSemesterControllerView '+IntToStr(semester)+', '''+DepID+''';');
    end;
//  ShowMessage(report.ReportQuery.SQL.Text);
  report.ReportQuery.Open;
  report.GroupsReport.Preview;
  report.ReportQuery.Close;
  report.Free;
  end;
selform.Free;
end;

procedure TMainForm.N38Click(Sender: TObject);
var
report    : TListReportForm;
selform   : TReportSelectForm;
semester  : string;
semnum    : string;
mounth    : word;
year      : word;
day       : word;
zaoch     : byte;
tmpquery  : TADOQuery;

begin
DecodeDate(Now, year, mounth, day);
selform := TReportSelectForm.Create(self);
selform.ParamRadioGroup.Items[1] := 'Отчет за второй семестр учебного года';
semester := '';
semnum := '';
if selform.ShowModal = mrOk then
  begin
  case selform.ParamRadioGroup.ItemIndex of
  0 : begin
      semester := '(sm_Number = gr_Course * 2-1)';
      semnum := 'первого';
      end;
  1 : begin
      semester := '(sm_Number = gr_Course * 2)';
      semnum := 'второго';
      end;
  end; // case
  report := TListReportForm.Create(self);
  report.SchoolLabel.Caption := SchoolName;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM Departments, Workers WHERE (dp_mastercode = wk_pcode) AND (dp_pcode = '''+
  DepID+''');');
  tmpquery.Open;
  if tmpquery.RecordCount >= 0 then
    begin
    report.DepartmentLabel.Caption := 'Отделение '+
      tmpquery.FieldByName('dp_Name').AsString;
    report.DepartmentMasterLabel.Caption := 'зав. отделением __________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
  tmpquery.Close;
  tmpquery.Free;
  report.TypeLabel.Caption := 'Являющихся отличниками по итогам '+semnum+
    ' семестра '+GetYears(mounth, year);
  zaoch := 0;
  if isZaoch then zaoch := 1;
  with report.ListQuery do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT st_Name, gr_Name FROM Students, Groups, Semesters');
    SQL.Add('WHERE (st_grcode = gr_pcode) AND (gr_pcode = sm_grcode) AND '+semester);
    SQL.Add('AND (gr_isZaoch = '+IntToStr(zaoch)+')AND ((SELECT COUNT(*) FROM SemesterMarks '+
      'WHERE (sk_stcode = st_pcode) AND (sk_smcode = sm_pcode) AND (sk_Mark = 5)) > 0)');
    SQL.Add('AND ((SELECT COUNT(*) FROM SemesterMarks '+
      'WHERE (sk_stcode = st_pcode) AND (sk_smcode = sm_pcode) AND (sk_Mark < 5)) = 0)');
    SQL.Add('AND (st_Attributes = 0) AND (gr_pcode IN (');
    SQL.Add('  SELECT gr_pcode FROM Groups, Specialities');
    SQL.Add('  WHERE (sp_pcode = gr_speccode) AND (sp_depcode = '''
      +DepID+''') AND (gr_Attributes = 0))) ORDER BY st_Name;');
//    SQL.SaveToFile('bug-20080305.sql');
    Open;
    end;
  report.ListReport.Preview;
  report.Free;
end;
selform.Free;
end;

procedure TMainForm.StudentCardActionExecute(Sender: TObject);
var
cardform : TCardForm;

begin
cardform := TCardForm.Create(self);
cardform.studentID := StudentsQuery.FieldByName('st_pcode').AsString;
with cardform.CardsQuery do
  begin
  SQL.Clear;
  SQL.Add('SELECT * FROM FnMarks, Subjects, SbTypes');
  SQL.Add('WHERE (fnm_sbcode = sb_pcode) AND (sb_sbtcode = sbt_pcode) AND (fnm_stcode = '''+
    cardform.studentID+''')');
  SQL.Add('ORDER BY sb_Name');
  Open;
  end;
with cardform.CourseQuery do
  begin
  SQL.Clear;
  SQL.Add('SELECT cwm_Mark, sb_Name, sm_Number, cw_Hours, cwm_pcode, cwm_theme');
  SQL.Add('FROM CourseWorks, Semesters, CwMarks, Subjects');
  SQL.Add('WHERE (cw_pcode = cwm_cwcode) AND (cw_sbcode = sb_pcode)');
  SQL.Add('AND (cw_smcode = sm_pcode) AND (cwm_stcode = '''+
    cardform.studentID+''')');
  SQL.Add('ORDER BY sb_Name');
  Open;
  end;
with cardform.PractQuery do
  begin
  SQL.Clear;
  SQL.Add('SELECT fpk_Title, fpm_Mark, fpk_Length');
  SQL.Add('FROM FnPractics, FpMarks');
  SQL.Add('WHERE (fpk_pcode = fpm_fpcode) AND (fpm_stcode = '''+
    cardform.studentID+''')');
  SQL.Add('ORDER BY fpk_Number, fpk_Title');
  Open;
  end;

//if (cardform.CardsQuery.RecordCount = 0) and
//  (MessageDlg('Данных нет. Импортировать начальные данные?',
//   mtConfirmation,[mbYes, mbNo],0) = mrYes) then
//  cardform.ImportData;
cardform.showmodal;
cardform.Free;
end;

procedure TMainForm.DetailedMounthMissingsRepActionExecute(
  Sender: TObject);
var
rep     : TDetailedMounthMissingsRepForm;
selform : TSelectMounthForm;

begin
selform := TSelectMounthForm.Create(self);
selform.GroupCheckBox.Visible := false;
if selform.ShowModal = mrOk then
  begin
  rep := TDetailedMounthMissingsRepForm.Create(self);
  rep.DescriptionLabel.Caption := 'Группы '+
    MainForm.GroupQuery.FieldByName('gr_Name').AsString+' за '+
    selform.MounthComboBox.Text+' месяц '+selform.YearEdit.Text+'-го года.';
  rep.Report.PreviewModal;
  rep.Free;
  end;
selform.Free;
end;

procedure TMainForm.DeletedStudentDetailsMenuItemClick(Sender: TObject);
var
studentform : TStudentForm;
pcode       : string;
stname      : string;

begin
// Изменение параметров студента
studentform := TStudentForm.Create(self);
if PageControl.ActivePage = DeletedTabSheet then
  begin
  pcode := DelQuery.FieldByName('st_pcode').AsString;
  stname := DelQuery.FieldByName('st_Name').AsString;
  end
else if PageControl.ActivePage = ErrorTabSheet then
  begin
  pcode := ErQuery.FieldByName('st_pcode').AsString;
  stname := ErQuery.FieldByName('st_Name').AsString;
  end
else if PageControl.ActivePage = AcademTabSheet then
  begin
  pcode := AcademQuery.FieldByName('st_pcode').AsString;
  stname := AcademQuery.FieldByName('st_Name').AsString;
  end
else if PageControl.ActivePage = AddCourseTabSheet then
  begin
  pcode := AddCourseQuery.FieldByName('st_pcode').AsString;
  stname := AddCourseQuery.FieldByName('st_Name').AsString;
  end;
studentform.Caption := 'Студент ('+stname+')';
StudentForm.PageControl.Pages[StudentForm.DiplomeSheet.TabIndex].Enabled := false;
with studentform.StudentQuery do
  begin
  close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Students WHERE st_pcode = '''+pcode+''';');
  Open;
  Edit;
  end;
with studentform.ParentsQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Parents WHERE pr_stcode = '''+pcode+''' ORDER BY pr_IsMother;');
  Open;
  end;
with studentform.AcademQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Academs WHERE ac_stcode = '''+pcode+''';');
  Open;
  end;
studentform.ShowModal;
studentform.Free;
DelQuery.Requery;
AcademQuery.Requery;
AddCourseQuery.Requery;
end;

procedure TMainForm.N44Click(Sender: TObject);
var
repform : TLangReportForm;
begin
repform := TLangReportForm.Create(self);
repform.MinistryLabel.Caption := MinistryName;
repform.SchoolLabel.Caption := SchoolName;
repform.TitleLabel.Caption := '(По изучаемым языкам)';
repform.DepLabel.Caption := 'Отделение: "'+DepName+'"';
if repform.LangQuery.Active then
  repform.LangQuery.Close;
repform.LangQuery.SQL.Clear;
repform.LangQuery.SQL.Add('SELECT * FROM GroupsLangView WHERE glw_depcode = '''+
  DepID+'''');
repform.LangQuery.Open;
repform.LangRep.Preview;
repform.Free;
end;

procedure TMainForm.DiplomeResultsRepActionExecute(Sender: TObject);
var
rep      : TDiplomeResultsRepForm;
m,y,d    : word;
tmpquery : TADOQuery;


begin
// Отчет о дипломировании
DecodeDate(Now, y, m, d);
rep := TDiplomeResultsRepForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_pcode = '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''')');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  rep.SpecLabel.Caption := 'Специальность: '+
  tmpquery.FieldByName('sp_Key').AsString+' "'+tmpquery.FieldByName('sp_Name').AsString+'".';
tmpquery.Free;
rep.MinistryLabel.Caption := MinistryName;
rep.SchoolNameLabel.Caption := SchoolName;
rep.ComissionLabel.Caption := 'Руководители дипломного проектирования: '+
  GroupQuery.FieldByName('gr_Comission').AsString;
rep.DescLabel.Caption := 'группы '+GroupQuery.FieldByName('gr_Name').AsString+
  ' '+GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения '+
  GetYears(m,y);
with rep.Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT st_Name, st_DProject, st_ExamDate, st_DMark FROM Students');
  SQL.Add('WHERE (st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+''')');
  SQL.Add('AND (st_Attributes = 0)');
  SQL.Add('ORDER BY st_Name');
  Open;
  end;
rep.DiplomeResultsRep.Preview;
rep.Free;
end;

procedure TMainForm.GOSResultsRepActionExecute(Sender: TObject);
var
rep      : TGOSResultsRepForm;
m,y,d    : word;
tmpquery : TADOQuery;

begin
rep := TGOSresultsRepForm.Create(self);
rep.Query.Connection := Connection;
DecodeDate(Now, y, m, d);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_pcode = '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''')');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  rep.SpecLabel.Caption := 'Специальность: '+
  tmpquery.FieldByName('sp_Key').AsString+' "'+tmpquery.FieldByName('sp_Name').AsString+'".';
tmpquery.Free;
rep.MinistryLabel.Caption := MinistryName;
rep.SchoolNameLabel.Caption := SchoolName;
rep.DescLabel.Caption := 'группы '+GroupQuery.FieldByName('gr_Name').AsString+
  ' '+GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения '+
  GetYears(m,y);
with rep.Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT st_FullName, st_GOSDate, st_GOSMark FROM Students');
  SQL.Add('WHERE (st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+
    ''') AND (st_Attributes = 0)');
  SQL.Add('ORDER BY st_FullName');
  Open;
  end;
rep.GOSResultsRep.Preview;
rep.Free;
end;

procedure TMainForm.GraduateReportActionExecute(Sender: TObject);
var
rep      : TGraduateReportForm;
m,y,d    : word;
form     : TDateSelectForm;
tmpquery : TADOQuery;

begin
form := TDateSelectForm.Create(self);
DecodeDate(Now, y, m, d);
form.Label1.Visible := false;
form.MounthComboBox.Visible := false;
form.YearEdit.Value := y;
//form.MounthComboBox.ItemIndex := m-1;
if form.ShowModal = mrOk then
  begin
//  m := form.MounthComboBox.ItemIndex+1;
  y := form.YearEdit.Value;
  rep := TGraduateReportForm.Create(self);
  rep.Query.Connection := Connection;
  //rep.MinistryLabel.Caption := MinistryName;
  rep.SchoolLabel.Caption := SchoolName;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add(
    'SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+
    DepID+''')');
  tmpquery.Open;
  if (tmpquery.RecordCount >= 1) then
    begin
    tmpquery.First;
    rep.DepartmentLabel.Caption := 'отделение '+tmpquery.FieldByName('dp_Name').AsString;
    rep.DepartmentMasterLabel.Caption := 'зав. отделением ________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
  tmpquery.Close;
  tmpquery.Free;
  //rep.DescLabel.Caption := 'о выпуске студентов '+GetYears(m,y);
  rep.DescLabel.Caption := 'о выпуске студентов '+IntToStr(y-1)+
    '-'+IntToStr(y)+' учебного года';
  with rep.Query do
   begin
   SQL.Clear;
  // SQL.Add('SELECT * FROM GraduateView');
  // SQL.Add('WHERE (grv_speccode IN (SELECT sp_pcode FROM Specialities WHERE sp_depcode = '''+
  //  DepID+''')) ORDER BY grv_SpecName;');
   SQL.Add('EXEC GetDiplomeSummary '+IntToStr(y)+', '''+DepID+'''');
   Open;
   end;
  rep.GraduateReport.Preview;
  rep.Free;
  end;
form.Free;
end;


procedure TMainForm.N33Click(Sender: TObject);
// Список иногородних
const
filename : string = 'foreign.csv';

var
fout : textfile;
query: TADOQuery;
x    : integer;

begin
//showmessage(PlaceID);
if '' = PlaceID then
  MessageDlg('Нет сведений относительно населенного пункта учреждения. Список будет неточным!',
    mtWarning, [mbOk], 0);
query := TADOQuery.Create(self);
query.Connection := Connection;
with query do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT st_FName, st_MName, st_LName, gr_Name,');
  SQL.Add(' pl_FullName, st_StudNumber, st_Address FROM Students, Groups, Places ');
  SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = gr_pcode) ');
  SQL.Add('AND (st_plcode != '''+PlaceID+''') AND (st_plcode = pl_pcode)');
  SQL.Add('AND (gr_speccode IN (SELECT sp_pcode FROM Specialities ');
  SQL.Add('WHERE sp_depcode = '''+DepID+''')) ORDER BY gr_Name, st_Name;');
//  SQL.SaveToFile('bug-2008-09-04.sql');
  Open;
  end;
AssignFile(fout, filename);
Rewrite(fout);
write(fout, '№;');
write(fout, 'Фамилия;');
write(fout, 'Имя;');
write(fout, 'Отчество;');
write(fout, 'Группа;');
write(fout, 'Полное наименование образовательного учреждения;');
write(fout, 'Сокращенное наименование образовательного учреждения;');
write(fout, 'Город, где расположено образовательное учреждение;');
write(fout, '№ студ. билета;');
write(fout, 'Адрес. Город или район;');
writeln(fout, 'Адрес. Поселок, улица, дом');
for x := 1 to query.RecordCount do
  begin
  query.RecNo := x;
  write(fout, IntToStr(x)+';');
  write(fout, query.FieldByName('st_FName').AsString+';');
  write(fout, query.FieldByName('st_MName').AsString+';');
  write(fout, query.FieldByName('st_LName').AsString+';');
  write(fout, query.FieldByName('gr_Name').AsString+';');
  write(fout, SchoolName+';');
  write(fout, 'ПГТК;');
  write(fout, SchoolPlace+';');
  write(fout, query.FieldByName('st_StudNumber').AsString+';');
  write(fout, query.FieldByName('pl_FullName').AsString+';');
  writeln(fout, query.FieldByName('st_Address').AsString);
  end;
CloseFile(fout);
query.Free;
MessageDlg('Список иногородних выгружен в '+ExtractFilePath(Application.ExeName)+
  filename, mtInformation, [mbOk], 0);
end;

procedure TMainForm.N50Click(Sender: TObject);
const
filename : string = '1stcourse.csv';

var
fout : textfile;
query: TADOQuery;
x    : integer;

begin
query := TADOQuery.Create(self);
query.Connection := Connection;
with query do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT st_Fullname, st_BirthDate, gr_Name, ');
  SQL.Add(' ([pl_Name]+'' ''+[st_Address]) AS st_Address FROM Students, Groups, Places ');
  SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = gr_pcode) ');
  SQL.Add('AND (st_plcode = pl_pcode)');
  SQL.Add('AND (gr_speccode IN (SELECT sp_pcode FROM Specialities ');
  SQL.Add('WHERE sp_depcode = '''+DepID+''')) ORDER BY gr_Name, st_FullName;');
  Open;
  end;
AssignFile(fout, filename);
Rewrite(fout);
write(fout, 'Группа;');
write(fout, 'ФИО;');
write(fout, 'Дата рождения;');
writeln(fout, 'Адрес');
for x := 1 to query.RecordCount do
  begin
  query.RecNo := x;
  write(fout, query.FieldByName('gr_Name').AsString+';');
  write(fout, query.FieldByName('st_FullName').AsString+';');
  write(fout, DateToStr(query.FieldByName('st_BirthDate').AsDateTime)+';');
  writeln(fout, query.FieldByName('st_Address').AsString);
  end;
CloseFile(fout);
query.Free;
MessageDlg('Список первокурсников выгружен в '+ExtractFilePath(Application.ExeName)+
  filename, mtInformation, [mbOk], 0);
end;

procedure TMainForm.FilterDeleted(Sender: TObject);
begin
// filter deleted records
DelQuery.Filtered := false;
if (FilterCheckBox.Checked) and (Trim(FilterEdit.Text) <> '') then
  begin
  DelQuery.Filter := 'st_Name like '''+FilterEdit.Text+'%''';
  DelQuery.Filtered := true;
  end;
StatusBar.SimpleText := 'Всего студентов - '+IntToStr(DelQuery.RecordCount);
end;

procedure TMainForm.ArcStudentDetailsMenuitemClick(Sender: TObject);
var
studentform : TStudentForm;
begin
// Изменение параметров студента
studentform := TStudentForm.Create(self);
studentform.Caption := 'Студент ('+ArStudentsQuery.FieldByName('st_Name').AsString+')';
//StudentForm.PageControl.Pages[StudentForm.DiplomeSheet.TabIndex].Enabled := false;
with studentform.StudentQuery do
  begin
  close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Students WHERE st_pcode = '''+
    ArStudentsQuery.FieldByName('st_pcode').AsString+''';');
  Open;
  Edit;
  end;
with studentform.ParentsQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Parents WHERE pr_stcode = '''+
  ArStudentsQuery.FieldByName('st_pcode').AsString+''' ORDER BY pr_IsMother;');
  Open;
  end;
with studentform.AcademQuery do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Academs WHERE ac_stcode = '''+
    ArStudentsQuery.FieldByName('st_pcode').AsString+''';');
  Open;
  end;
studentform.ShowModal;
studentform.Free;
ArStudentsQuery.Requery([]);
end;

procedure TMainForm.AppRepMenuItemClick(Sender: TObject);
var
rep     : TAppReportForm;
selform : TSelectMounthForm;
tmpquery: TADOQuery;

begin
selform := TSelectMounthForm.Create(self);
selform.GroupCheckBox.Visible := false;
if selform.ShowModal = mrOk then
  begin
  rep := TAppReportForm.Create(self);
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Workers, Departments WHERE (dp_mastercode = wk_pcode)');
  tmpQuery.SQL.Add('AND (dp_pcode = '''+MainForm.DepID+''')');
  tmpquery.Open;
  rep.DepLabel.Caption := 'Отделение "'+DepName+'"';
  rep.DateLabel.Caption := DateTimeToStr(Now);
  rep.DescLabel.Caption := 'За '+
  selform.MounthComboBox.Text+' '+
  selform.YearEdit.Text+'-го года';
  if (tmpquery.RecordCount > 0) then
    rep.SignLabel.Caption := rep.SignLabel.Caption+' '+
      tmpQuery.FieldByName('wk_ShortName').AsString;
  with rep.Query.SQL do
    begin
    Clear;
    Add('EXEC GetMounthReport '+IntToStr(selform.MounthComboBox.ItemIndex+1)+
      ', '+selform.YearEdit.Text+', '''+DepID+'''');
    end; //with
  rep.Query.Open;
  rep.Crep.Preview;
  rep.Free;
  tmpquery.Free;
  end; // if
selform.Free;
end;

procedure TMainForm.PageControlChange(Sender: TObject);
begin
  FindQuery.Close;
  if PageControl.ActivePage = ErrorTabSheet then
    begin
    StatusBar.SimpleText := 'Всего студентов - '+IntToStr(ErQuery.RecordCount);
    end;
  if PageControl.ActivePage = AcademTabSheet then
    begin
    StatusBar.SimpleText := 'Всего студентов - '+IntToStr(AcademQuery.RecordCount);
    end;
  if PageControl.ActivePage = AddCourseTabSheet then
    begin
    StatusBar.SimpleText := 'Всего студентов - '+IntToStr(AddCourseQuery.RecordCount);
    end;
  if PageControl.ActivePage = DeletedTabSheet then
    begin
    StatusBar.SimpleText := 'Всего студентов - '+IntToStr(DelQuery.RecordCount);
    end;
  if PageControl.ActivePage = FindTabSheet then
    begin
    FindQuery.Open;
    StatusBar.SimpleText := 'Всего студентов - '+IntToStr(DelQuery.RecordCount);
    end;
  if PageControl.ActivePage = ArchiveTabSheet then
    begin
    ArGroupQuery.Filtered := false;
    ArGroupQuery.Filter := 'gr_CreateYear = '''+IntToStr(YearEdit.Value)+'''';
    ArGroupQuery.Filtered := YearFilterCheckBox.Checked;
    GroupQuery.Filtered := false;
    if ArGroupQuery.Active and ArStudentsQuery.Active then
    StatusBar.SimpleText := ArGroupQuery.FieldByName('gr_Name').AsString+' ('+
      IntToStr(ArStudentsQuery.RecordCount)+' чел.)';
    end;
  if PageControl.ActivePage = ActiveTabSheet then
    begin
    GroupQuery.Filtered := false;
    GroupQuery.Filter := 'gr_CreateYear = '''+IntToStr(YearEdit.Value)+'''';
    GroupQuery.Filtered := YearFilterCheckBox.Checked;
    ArGroupQuery.Filtered := false;
    StatusBar.SimpleText := GroupQuery.FieldByName('gr_Name').AsString+' ('+
      IntToStr(StudentsQuery.RecordCount)+' чел.)';
    end;
end;

procedure TMainForm.ExortListActionExecute(Sender: TObject);
var
fout : textfile;
x    : integer;
fname: string;

begin
// List export;
try
  fname := GroupQuery.FieldByName('gr_Name').AsString+'.csv';
  AssignFile(fout, fname);
  Rewrite(fout);
  for x := 1 to StudentsQuery.RecordCount do
    begin
    StudentsQuery.RecNo := x;
    writeln(fout, StudentsQuery.FieldByName('st_FullName').AsString+';'+
      StudentsQuery.FieldByName('st_Name').AsString);
    end;
    CloseFile(fout);
    MessageDlg('Данные выгружены в файл "'+ExtractFilePath(Application.ExeName)+
      fname+'"', mtInformation, [mbOk], 0);
except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
end; // try
end;

procedure TMainForm.N52Click(Sender: TObject);
const
filename = 'birthday.csv';

var
//report    : TBirthListReportForm;
fout : textfile;
x    : integer;
query: TADOQuery;
form : TSelectMounthForm;
d,m,y: word;

begin
//  report := TBirthListReportForm.Create(self);
//  report.MinistryLabel.Caption := MinistryName;
//  report.SchoolLabel.Caption := SchoolName;
//  report.DepartmentLabel.Caption := 'Отделение '+DepName;
//  report.TypeLabel.Caption := 'Являющихся именинниками';
form := TSelectMounthForm.Create(self);
form.GroupCheckBox.Visible := false;
form.YearEdit.Visible := false;
form.Label2.Visible := false;
if (mrOk = form.ShowModal) then
  try
  AssignFile(fout, filename);
  rewrite(fout);
  query := TADOQuery.Create(self);
  query.Connection := Connection;
    with query do
      begin
      SQL.Clear;
      SQL.Add('SELECT st_FName, st_MName, st_Name, st_BirthDate, gr_Name FROM Students, Groups');
      SQL.Add('WHERE (st_grcode = gr_pcode) AND (st_Attributes = 0)');
      SQL.Add('AND (MONTH(st_BirthDate) = '''+IntToStr(form.MounthComboBox.ItemIndex+1)+''')');
      SQL.Add('AND (gr_speccode IN (SELECT sp_pcode FROM Specialities WHERE (sp_depcode = '''+DepID+''')))');
      SQL.Add('ORDER BY DAY(st_BirthDate), st_Name, gr_Name');
  //    SQL.SaveToFile('bug-20080305.sql');
      Open;
    end; // with
    for x := 1 to query.RecordCount do
      begin
      query.RecNo := x;
      decodeDate(query.FieldByName('st_BirthDate').AsDateTime, y, m, d);
      writeln(fout, IntToStr(d)+' '+GetRMounthStr(m)+';'+
        query.FieldByName('st_FName').AsString+' '+query.FieldByName('st_MName').AsString+';'+
        query.FieldByName('gr_Name').AsString);
      end;
    CloseFile(fout);
  MessageDlg('Данные выгружены в файл "'+ExtractFilePath(Application.ExeName)+filename+'".',
    mtInformation, [mbOk], 0);
  except
  MessageDlg(OP_ERROR, mtError, [mbOk],0);
  end; // try
form.Free;
//    report.BirthListReport.Preview;
//    report.Free;
end;

procedure TMainForm.N53Click(Sender: TObject);
var
fout : textfile;
x    : integer;
query: TADOQuery;

const
fname = 'avgmarks.csv';

begin
// List export;
try
  query := TADOQuery.Create(self);
  query.Connection := Connection;
  query.SQL.Clear;
  query.SQL.Add('EXEC GetAVGMarks '''+DepID+''', 0');
  query.Open;
  AssignFile(fout, fname);
  Rewrite(fout);
  for x := 1 to query.RecordCount do
    begin
    query.RecNo := x;
    writeln(fout, query.FieldByName('rp_grname').AsString+';'+
      query.FieldByName('rp_stname').AsString+';'+
      query.FieldByName('rp_avg').AsString);
    end;
    CloseFile(fout);
    MessageDlg('Данные выгружены в файл "'+ExtractFilePath(Application.ExeName)+
      fname+'"', mtInformation, [mbOk], 0);
    query.Free;
except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
end; // try
end;

procedure TMainForm.PracticsItemClick(Sender: TObject);
var
form : TFnPracticsForm;
begin
form := TFnPracticsForm.Create(self);
form.FPkQuery.SQL.Clear;
form.FPkQuery.SQL.Add('SELECT * FROM FnPractics WHERE fpk_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+''';');
form.FPkQuery.Open;
form.ShowModal;
form.Free;
end;

procedure TMainForm.UpdateItemClick(Sender: TObject);

var
updater  : string;
lfile    : extended;
rfile    : extended;
filename : string;
fin      : textfile;
line     : string;
param    : string;
value    : string;
pos      : integer;
sfile    : string;
spath    : string;
path     : string;


begin
sfile := '';
spath := '';
path := ExtractFilePath(Application.ExeName);
filename := path+UPD_CONF;
if FileExists(filename) then
  begin
  AssignFile(fin, filename);
  reset(fin);
  while not eof(fin) do
    begin
    readln(fin, line);
    line := trim(line);
    if ('#' = line[1]) then continue;
    pos := AnsiPos('=', line);
    if (pos > 0) then
      begin
      param := uppercase(trim(Copy(line, 1, pos-1)));
      value := uppercase(trim(Copy(line, pos+1, length(line))));
      if ('FILE' = param) then sfile := value;
      if ('PATH' = param) then spath := value;
      end;
    end;
  CloseFile(fin);
  if (FileExists(spath+sfile)) and (FileExists(path+sfile)) then
    begin
    // У нас есть оба пути. Проверяем.
    lfile := FileInfo(path+sfile);
    rfile := FileInfo(spath+sfile);
    if (rfile > lfile) then
      begin
      updater := ExtractFilePath(Application.ExeName)+UPD_FILE;
      if (FileExists(updater)) then
        begin
        if (MessageDlg('Обновить программу до более новой версии?', mtConfirmation,
            [mbYes, mbNo], 0) = mrYes) then
          begin
          winexec(PChar(updater), SW_SHOWNORMAL);
          Application.Terminate;
          end;
        end else
          MessageDlg('Отсутствует утилита обновления '+updater+'!', mtError, [mbOk], 0);
      end
    else if (rfile < lfile) then
      begin
      if (MessageDlg('Обновить программу в репозитории до более новой версии?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes) then
        begin
        if CopyFile(PChar(Application.ExeName),PChar(BASE_REPO), false) then
          MessageDlg('Обновление завершено успешно!', mtInformation, [mbOk], 0)
        else
          MessageDlg('Не удалось обновить репозиторий!', mtError, [mbOk], 0);
        end;
      end
    else
      MessageDlg('Программа не нуждается в обновлении!', mtInformation, [mbOk], 0)
    end;
  end else
  MessageDlg('Не найден конфигурационный файл программы (updater.conf)!', mtError, [mbOk], 0);
end;

procedure TMainForm.N54Click(Sender: TObject);
begin
// restore Group Action;
Command.CommandText := 'BEGIN TRAN GrRestore';
Command.Execute;
try
  Command.CommandText :=
    'UPDATE Groups SET gr_Attributes = gr_Attributes - 128 WHERE (gr_pcode = '''+
    ArGroupQuery.FieldByName('gr_pcode').AsString+''')';
  Command.Execute;
  Command.CommandText :=
    'UPDATE Students SET st_Attributes = st_Attributes - 128 WHERE (st_grcode = '''+
    ArGroupQuery.FieldByName('gr_pcode').AsString+''')';
  Command.Execute;
  Command.CommandText := 'COMMIT TRAN GrRestore';
  Command.Execute;
  GroupQuery.Requery;
  ArGroupQuery.Requery;
except
  begin
  Command.CommandText := 'ROLLBACL TRAN GrRestore';
  MessageDlg('Ошибка при высстановлении группы из архива!', mtError, [mbOk], 0);
  end;
end; // try

end;

procedure TMainForm.MounthStatisticsClick(Sender: TObject);
var
selform : TSelectMounthForm;
form    : TStMounthStatisticsForm;

begin
selform := TSelectMounthForm.Create(self);
selform.AutofillCheckBox.Visible := false;
selform.GroupCheckBox.Visible := false;
if selform.ShowModal = mrOk then
  begin
  form := TStMounthStatisticsForm.Create(self);
  form.ADOQuery.SQL.Clear;
  form.ADOQuery.SQL.Add('EXEC GetStMounthStatistics '''+
    GroupQuery.FieldByName('gr_pcode').AsString+''', '+
    IntToStr(selform.MounthComboBox.ItemIndex+1)+', '+selform.YearEdit.Text+';');
  form.ADOQuery.Open;
  form.QuickRep.Preview;
  form.Free;
  end;
selform.Free;
end;

procedure TMainForm.FinalStudyResultsActionExecute(Sender: TObject);
var
form     : TFinalStudyResultsReportForm;
tmpquery : TADOQuery;
y,m,d    : word;
Zaoch    : integer;

begin
Zaoch := 0;
if isZaoch then Zaoch := 1;
decodedate(now, y,m,d);
form := TFinalStudyResultsReportForm.Create(self);
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetFinalStudyResults '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''', '+
  IntToStr(Zaoch)+';');
form.Query.Open;
form.SchoolNameLabel.Caption := SchoolName;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_pcode = '''+
  GroupQuery.FieldByName('gr_speccode').AsString+''');');
tmpquery.Open;
if (tmpquery.RecordCount > 0 ) then
  form.DetailsLabel.Caption := 'По специальности '+tmpquery.FieldByName('sp_FullKey').AsString+
  ' '+tmpquery.FieldByName('sp_Name').AsString+' за '+GetYearsNum(m,y)+' учебный год.';
tmpquery.Close;
tmpquery.SQL.Clear;
tmpquery.SQL.Add(
    'SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+
    DepID+''')');
tmpquery.Open;
  if (tmpquery.RecordCount >= 1) then
    begin
    tmpquery.First;
    form.DepartmentLabel.Caption := 'отделение '+tmpquery.FieldByName('dp_Name').AsString;
    form.DepartmentMasterLabel.Caption := 'зав. отделением ________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
form.FinalStudyReport.Preview;

tmpquery.Free;
form.Free;
end;

procedure TMainForm.SemesterSpecSummaryActionExecute(Sender: TObject);
var
report  : TMounthReportForm;
selform : TReportSelectForm;
tmpquery: TADOQuery;
//semester: string;
mounth  : word;
year    : word;
day     : word;
semnum  : string;
semester: integer;

begin
DecodeDate(Now, year, mounth, day);
selform := TReportSelectForm.Create(self);
//selform.ParamRadioGroup.Items.Count := 3;
selform.ParamRadioGroup.Items[1] := 'Отчет за второй семестр учебного года';
//selform.ParamRadioGroup.Items.Add('Отчет за весь учебный год');
//semester := '';
semnum := '';
if selform.ShowModal = mrOk then
  begin
  semester := 1 - selform.ParamRadioGroup.ItemIndex;
  if semester < 0 then semester := 0;
  case selform.ParamRadioGroup.ItemIndex of
  0 : begin
//      semester := '(scw_smNumber = scw_grcourse * 2 - 1)';
      semnum := ' первый семестр ';
      end;
  1 : begin
//      semester := '(scw_smNumber = scw_grcourse * 2)';
      semnum := ' второй семестр ';
      end;
{
  2 : begin
      semester := '((scw_smNumber = scw_grcourse * 2) OR (scw_smNumber = scw_grcourse * 2 - 1))';
      semnum := ' все семестры ';
      end;
}
  end;
  report := TMounthReportForm.Create(self);
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
    GroupQuery.FieldByName('gr_speccode').AsString+''';');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    report.SpecLabel.Caption := 'Специальности '+tmpquery.FieldByName('sp_FullKey').AsString+
    ' "'+tmpquery.FieldByName('sp_Name').AsString+'"';
  report.DepLabel.Caption := 'Отделение "'+DepName+'"';
  report.DateLabel.Caption := DateTimeToStr(Now);
  report.DetailLabel.Caption := 'За'+semnum+GetYears(mounth, year);
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add(
    'SELECT * FROM Departments, Workers WHERE (wk_pcode = dp_mastercode) AND (dp_pcode = '''+
    DepID+''')');
  tmpquery.Open;
  if (tmpquery.RecordCount >= 1) then
    begin
    tmpquery.First;
    report.DepMasterLabel.Caption := 'зав. отделением ________________ '+
      tmpquery.FieldByName('wk_ShortName').AsString;
    end;
  with report.ReportQuery.SQL do
    begin
    Clear;
    Add('EXEC GetSpecSemesterControllerView '+IntToStr(semester)+', '''+DepID+''', '''+
    GroupQuery.FieldByName('gr_speccode').AsString+''';');
    end;
//  ShowMessage(report.ReportQuery.SQL.Text);
  report.ReportQuery.Open;
  report.GroupsReport.Preview;
  report.ReportQuery.Close;
  tmpquery.Free;
  report.Free;
  end;
selform.Free;
end;

procedure TMainForm.N58Click(Sender: TObject);
var
form     : TCustomLookupForm;
cont     : TContainer;
tmpquery : TADOQuery;
x        : integer;
selcount : integer;
//lstr     : string;
//comm     : string;
addstr   : string;

begin
addstr := '0';
form := TCustomLookupForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
if (CurrentYear - GroupQuery.FieldByName('gr_CreateYear').AsInteger > 0 )then
  addstr := '1';
//comm := '0';
//if GroupQuery.FieldByName('gr_Commercial').AsBoolean then
//  comm := '1';
tmpquery.SQL.Add('SELECT * FROM Abiturients WHERE (ab_grcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+''') AND (ab_InYear = YEAR(GETDATE()))');
tmpquery.SQL.Add('AND (ab_serial NOT IN (SELECT DISTINCT st_oldcode FROM Students WHERE (st_grcode = '''+
  GroupQuery.FieldByName('gr_pcode').AsString+''') AND (st_oldcode IS NOT NULL) AND (ab_InYear = YEAR(GETDATE()))))');
tmpquery.SQL.Add('ORDER BY ab_Name');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
//    lstr := '';
//    if tmpquery.FieldByName('ab_isParentLess').AsBoolean or
//      tmpquery.FieldByName('ab_isInvalid').AsBoolean or
//      tmpquery.FieldByName('ab_isMedal').AsBoolean or
//      tmpquery.FieldByName('ab_isVeteran').AsBoolean or
//      tmpquery.FieldByName('ab_isFurtherLess').AsBoolean then
//      lstr := ', льготник';
    cont := TContainer.Create;
    cont.Name := tmpquery.FieldByName('ab_Name').AsString;
//    cont.Name := tmpquery.FieldByName('ab_Name').AsString+' ('+
//    tmpquery.FieldByName('ab_GroupBall').AsString+lstr+')';
    cont.Key := tmpquery.FieldByName('ab_pcode').AsString;
    form.ListBox.Items.AddObject(cont.Name, cont);
    end;
selcount := 0;
form.OkBtn.Enabled := form.ListBox.Items.Count > 0;
if form.ShowModal = mrOk then
  try
  for x := 0 to form.ListBox.Items.Count -1 do
    begin
    if form.ListBox.Checked[x] then
      begin
      inc(selcount);
      if selcount = 1 then
        begin
        Command.CommandText := 'BEGIN TRAN TInsert';
//        showmessage(command.CommandText);
        Command.Execute;
        end; // if selcount
      Command.CommandText :=
        'INSERT INTO Students(st_oldcode, st_FName, st_MName, st_LName, st_Address, '+
        'st_BirthDate, st_Documents, st_grcode, st_plcode, st_InYear, st_isCommercial, '+
        'st_Attributes, st_WorkPhone, st_HomePhone, st_CellPhone, st_Lang, st_ParentLess, '+
        'st_isMale, st_Hotel, st_PassptSeria, st_PassptNum, st_PassptDate, st_PassptDept, '+
        'st_INN, st_BankDep, st_BankNum, st_isAdditional, st_DFName, st_DMName, st_DLName, '+
        'st_oldsccode, st_sccode) SELECT ab_serial, ab_FName, ab_MName, ab_LName, ab_Address, '+
        'ab_BirthDate, (ab_Document+'' ''+ab_School), ab_grcode, ab_plcode, ab_InYear, ab_isCommercial, '+
        'ab_Attributes, ab_WorkPhone, ab_HomePhone, ab_CellPhone, ab_Lang, ab_isParentLess, '+
        'ab_isMale, ab_isHotel, ab_PassptSeria, ab_PassptNum, ab_PassptDate, ab_PassptDept, '+
        'ab_INN, ab_BankDep, ab_BankNum, '+addstr+', ab_FName, ab_MName, ab_LName, '''+
        SchoolID+''', '''+SchoolID+''' FROM Abiturients WHERE ab_pcode = '''+
        TContainer(form.ListBox.Items.Objects[x]).Key+'''';
//      ShowMessage(command.CommandText);
//      InputBox('Debug', 'Check this', Command.CommandText);
      Command.Execute;
      end; // if checked
    end; // for
  if selcount > 0 then
    begin
    Command.CommandText := 'COMMIT TRAN TInsert';
    Command.Execute;
    end;
  StudentsQuery.Requery;
  except
  if selcount > 0 then
    begin
    Command.CommandText := 'ROLLBACK TRAN TInsert';
    Command.Execute;
    end;
  MessageDlg('Ошибка при обработке транзакции!',mtError,[mbOk],0);
  end;
form.Free;
end;

procedure TMainForm.FindFilter(Sender: TObject);
var
filter : String;

begin
FindQuery.Filtered := false;
filter := '';
if (FNameFilter.Checked) and (trim(FNameEdit.Text) <> '') then
  filter := filter + '(st_FName LIKE '''+trim(FNameEdit.Text)+'%'')';
if (MNameFilter.Checked) and (trim(MNameEdit.Text) <> '') then
  begin
    if length(filter) > 0 then filter := filter +' AND ';
    filter := filter + '(st_MName LIKE '''+trim(MNameEdit.Text)+'%'')';
  end;
if (MNameFilter.Checked) and (trim(FNameEdit.Text) <> '') then
  begin
    if length(filter) > 0 then filter := filter +' AND ';
    filter := filter + '(st_MName LIKE '''+trim(MNameEdit.Text)+'%'')';
  end;
if length(filter) > 0 then
  begin
  FindQuery.Filter := filter;
  findQuery.Filtered := true;
  end;
end;

procedure TMainForm.KvalificationExamReportActionExecute(Sender: TObject);
var
form     : TKvalificationExamReportForm;
tmpQuery : TADOQuery;

begin

form := TKvalificationExamReportForm.Create(self);
tmpQuery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT sp_Name FROM Specialities WHERE (sp_pcode = ''' +
  groupQuery.FieldByName('gr_speccode').AsString + ''');');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  form.DescriptionLabel.Caption := 'Специальность "' + tmpquery.FieldByName('sp_Name').AsString +
  '".' + #$D + 'Группа ' + GroupQuery.FieldByName('gr_Name').AsString + ', ' +
  GroupQuery.FieldByName('gr_Course').AsString + '-й курс.';
  end;
tmpquery.Close;
tmpquery.Free;
form.Query.SQL.Clear;
form.Query.SQL.Add(
  'SELECT st_Name, st_FullName, st_pcode FROM Students WHERE (st_Attributes = 0) AND (st_grcode = ''' +
  GroupQuery.FieldByName('gr_pcode').AsString + ''') ORDER BY st_FullName;');
form.Query.Open;
form.Report.PreviewModal;
form.Query.Close;
form.Free;
end;


// Экспорт списка стипендиатов
procedure TMainForm.StipendiaListActionExecute(Sender: TObject);
const
filename = 'stipendia.csv';

var
fout    : textfile;
query   : TADOQuery;
x       : integer;
selform : TSelectMounthForm;

begin
  try
  selform := TSelectMounthForm.Create(self);
  selform.AutofillCheckBox.Visible := false;
  selform.GroupCheckBox.Visible := false;
  if (mrOk = selform.ShowModal) then
    begin
    query := TADOQuery.Create(self);
    query.Connection := Connection;
    with query do
      begin
      Close;
      SQL.Clear;
      SQL.Add('EXEC getStipendiats ''' + DepID + ''', '
        + IntToStr(selform.MounthComboBox.ItemIndex+1) +', '
        + IntToStr(selform.YearEdit.Value));
      Open;
      end;
    AssignFile(fout, filename);
    Rewrite(fout);
    write(fout, '№;');
    write(fout, 'Группа;');
    write(fout, 'ФИО;');
    write(fout, 'Средний балл;');
    write(fout, 'Пропуски;');
    writeln(fout, 'Сумма;');
    for x := 1 to query.RecordCount do
      begin
      query.RecNo := x;
      write(fout, IntToStr(x)+';');
      write(fout, query.FieldByName('rp_groupName').AsString+';');
      write(fout, query.FieldByName('rp_fullName').AsString+';');
      write(fout, query.FieldByName('rp_average').AsString+';');
      write(fout, query.FieldByName('rp_missings').AsString+';');
      writeln(fout, query.FieldByName('rp_money').AsString);
      end;
    CloseFile(fout);
    query.Free;
    MessageDlg('Список иногородних выгружен в '+ExtractFilePath(Application.ExeName)+
      filename, mtInformation, [mbOk], 0);
    end;
    selform.Free;
  except
    MessageDlg('Ошибка при экспорте списка стипендиатов.', mtError, [mbOk], 0);
  end;
end;

procedure TMainForm.AcademStudentPropertiesClick(Sender: TObject);
var
studentform : TStudentForm;
pcode       : string;
stname      : string;

begin
  // Изменение параметров студента
  studentform := TStudentForm.Create(self);
  pcode := AcademQuery.FieldByName('st_pcode').AsString;
  stname := AcademQuery.FieldByName('st_Name').AsString;
  studentform.Caption := 'Студент ('+stname+')';
  StudentForm.PageControl.Pages[StudentForm.DiplomeSheet.TabIndex].Enabled := false;
  with studentform.StudentQuery do
    begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM Students WHERE st_pcode = '''+pcode+''';');
    Open;
    Edit;
    end;
  with studentform.ParentsQuery do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM Parents WHERE pr_stcode = '''+pcode+''' ORDER BY pr_IsMother;');
    Open;
    end;
  with studentform.AcademQuery do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM Academs WHERE ac_stcode = '''+pcode+''';');
    Open;
    end;
  studentform.ShowModal;
  studentform.Free;
  AcademQuery.Requery;
  StudentsQuery.Requery;
end;

procedure TMainForm.AcademStudentRestoreClick(Sender: TObject);
var
pcode : string;
form  : TRestoreStudentForm;

begin
form := TRestoreStudentForm.Create(self);
if form.ShowModal = mrOk then
  begin
    pcode := AcademQuery.FieldByName('st_pcode').AsString;
  end;
  if (MessageDlg(RESTORE_REQ,mtConfirmation,[mbYes, mbNo],0) = mrYes) then
    begin
    if (not form.OtherGroupCheckBox.Checked) then
      begin
      Command.CommandText :=
        'UPDATE Students SET st_Attributes = (SELECT gr_Attributes FROM Groups WHERE (gr_pcode = st_grcode))'+
        'WHERE st_pcode = '''+pcode+''';';
      Command.Execute;
      Command.CommandText :=
        'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''';';
      Command.Execute;
      end
    else
      begin
      Command.CommandText := 'BEGIN TRAN Update_and_restore;';
      Command.Execute;
      try
        Command.CommandText :=
          'UPDATE Students SET st_Attributes = (SELECT gr_Attributes FROM Groups WHERE (gr_pcode = '''+
          GroupQuery.FieldByName('gr_pcode').AsString+''')), '+
          'st_grcode = '''+GroupQuery.FieldByName('gr_pcode').AsString+''' '+
          'WHERE st_pcode = '''+pcode+''';';
        Command.Execute;
        Command.CommandText :=
          'DELETE FROM PkMarks WHERE (pmk_pcode IN ('+
          'SELECT pmk_pcode FROM PkMarks, Practics WHERE (pmk_pkcode = pk_pcode) AND'+
          ' (pk_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
          GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (pmk_stcode = '''+pcode+''')))';
        Command.Execute;
        Command.CommandText :=
          'DELETE FROM CpMarks WHERE (cpm_pcode IN ('+
          'SELECT cpm_pcode FROM CpMarks, CheckPoints WHERE (cpm_cpcode = cp_pcode) AND'+
          ' (cp_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
          GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (cpm_stcode = '''+pcode+''')))';
        Command.Execute;
        Command.CommandText :=
          'DELETE FROM ExMarks WHERE (exm_pcode IN ('+
          'SELECT exm_pcode FROM ExMarks, Exams WHERE (exm_excode = ex_pcode) AND'+
          ' (ex_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
          GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (exm_stcode = '''+pcode+''')))';
        Command.Execute;
        Command.CommandText :=
          'DELETE FROM CwMarks WHERE (cwm_pcode IN ('+
          'SELECT cwm_pcode FROM CwMarks, CourseWorks WHERE (cwm_cwcode = cw_pcode) AND'+
          ' (cw_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '''+
          GroupQuery.FieldByName('gr_pcode').AsString+''')) AND (cwm_stcode = '''+pcode+''')))';
        Command.Execute;
        Command.CommandText :=
          'DELETE FROM Commands WHERE cm_stcode = '''+pcode+''';';
        Command.Execute;
        Command.CommandText := 'COMMIT TRAN Update_and_restore;';
        Command.Execute;
      except
        MessageDlg(OP_ERROR, mtError, [mbOk], 0);
        Command.CommandText := 'COMMIT TRAN Update_and_restore;';
        Command.Execute;
      end; // try
    end;
  end;
form.Free;
StudentsQuery.Requery;
AcademQuery.Requery;
end;

end.
