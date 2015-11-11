unit dep_groupweekmissform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TGroupWeekMissForm = class(TForm)
    WeekGrid: TDBGrid;
    WeekCommand: TADOCommand;
    WeekQuery: TADOQuery;
    WeekDataSource: TDataSource;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure WeekDataSourceDataChange(Sender: TObject; Field: TField);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
  AGroupID: string;
  AYear   : word;
  AMounth : byte;
  ANew    : boolean;
    { Private declarations }
  public
  property GroupID: string read AGroupID write AGroupID;
  property Mounth: byte read AMounth write AMounth;
  property Year: word read AYear write AYear;
  property New: boolean read ANew write ANew;
    { Public declarations }
  end;

var
  GroupWeekMissForm: TGroupWeekMissForm;

implementation

uses dep_main, dep_studmissform, kern, dep_groupmissmanform;

{$R *.dfm}

procedure TGroupWeekMissForm.FormCreate(Sender: TObject);
begin
GroupID := MainForm.GroupQuery.FieldByName('gr_pcode').AsString;
with Owner as TGroupMissManForm do
begin
if MissQuery.RecordCount = 0 then
  begin
  Mounth := MounthComboBox.ItemIndex;
  Year := YearEdit.Value;
  end else
  begin
  Mounth := MissQuery.FieldByName('gwm_Mounth').AsInteger;
  Year := MissQuery.FieldByName('gwm_Year').AsInteger;
  end;
end;

Caption := WEEK_MISSINGS+'('+GetMounthStr(Mounth)+' '+IntToStr(Year)+')';
if WeekQuery.Active then
  WeekQuery.Close;
  WeekQuery.SQL.Clear;
  WeekQuery.SQL.Add('SELECT gwm_Week, gr_Name, gwm_Legal, gwm_Illegal, ');
  WeekQuery.SQL.Add('gwm_All, gr_pcode, gwm_Mounth, gwm_Year ');
  WeekQuery.SQL.Add('FROM Groups, GrWeekMissings ');
  WeekQuery.SQL.Add('WHERE gr_pcode = gwm_grcode');
  WeekQuery.SQL.Add(' and gr_pcode = '''+GroupID+''' and gwm_Mounth = '''+
  IntToStr(Mounth)+''' and gwm_Year = '''+IntToStr(Year)+''' ');
  WeekQuery.SQL.Add('ORDER BY gwm_Week, gwm_Mounth, gwm_Year;');
  WeekQuery.Open;
end;

procedure TGroupWeekMissForm.AddBtnClick(Sender: TObject);
var
studmissform : TStudMissForm;
studquery    : TADOQuery;
x            : integer;
cont         : TContainer;
leg, illeg   : word;
begin
New := true;
studmissform := TStudMissForm.Create(self);
studmissform.StudGrid.Cells[1,0] := 'Уважительных';
studmissform.StudGrid.Cells[2,0] := 'Неуважительных';
studquery := TADOQuery.Create(self);
studquery.Connection := MainForm.Connection;
studquery.SQL.Add('SELECT st_FullName AS st_Name, st_pcode FROM Students where st_grcode = '''+
  GroupID+''' and st_Attributes = 0 ORDER BY st_FullName;');
studquery.Open;
if studquery.RecordCount > 0 then
begin
studmissform.StudGrid.RowCount := studquery.RecordCount+1;

 for x := 1 to studquery.RecordCount do
 begin
  studquery.RecNo := x;
  cont := TContainer.Create;
  cont.Name := studquery.FieldByName('st_Name').AsString;
  cont.Key := studquery.FieldByName('st_pcode').AsString;
  Studmissform.StudGrid.Cols[0].Objects[x] := cont;
  StudMissform.StudGrid.Cells[0,x] := cont.Name;
 end;
studquery.Free;
if studmissform.ShowModal = mrOk then
 begin
 for x := 1 to studmissform.StudGrid.RowCount -1 do
  begin
  // Добавить запрос в базу данных
  leg := StrToIntDef(studmissform.StudGrid.Cells[1,x],0);
  illeg := StrToIntDef(studmissform.StudGrid.Cells[2,x],0);
  if leg > MAXWORK then leg := MAXWORK;
  if illeg > MAXWORK then illeg := MAXWORK;
  WeekCommand.CommandText :=
  'INSERT INTO StWeekMissings (swm_pcode, swm_Week, '+
  'swm_Legal, swm_Illegal, swm_Mounth, swm_Year, swm_stcode) '+
  'VALUES (NEWID(), '''+IntToStr(studmissform.WeekEdit.Value)+
  ''', '''+IntToStr(leg)+''', '''+IntToStr(illeg)+''', '''+
  IntToStr(Mounth)+''', '''+IntToStr(Year)+''', '''+
  TContainer(studmissform.StudGrid.Cols[0].Objects[x]).Key+''');';
  WeekCommand.Execute;
  TContainer(studmissform.StudGrid.Cols[0].Objects[x]).Free;
  end;// for
 WeekQuery.Requery([]);
 end;
end else
MessageDlg(NONE_STUDENTS,mtError,[mbOk],0);
studmissform.Free;
end;

procedure TGroupWeekMissForm.WeekDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
EditBtn.Enabled := WeekQuery.RecNo > 0;
DelBtn.Enabled := WeekQuery.RecNo > 0;
AddBtn.Enabled := WeekQuery.RecordCount < MAXWEEK;
end;

procedure TGroupWeekMissForm.DelBtnClick(Sender: TObject);
var
mounth, year : string;
week         : string;

begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  mounth := WeekQuery.FieldByName('gwm_Mounth').AsString;
  year := WeekQuery.FieldByName('gwm_Year').AsString;
  week := WeekQuery.FieldByName('gwm_Week').AsString;
  WeekCommand.CommandText :=
  'DELETE FROM StWeekMissings WHERE swm_stcode in '+
  '(SELECT st_pcode FROM Students WHERE st_grcode = '''+GroupID+
  ''' and st_Attributes = 0) and swm_Year = '''+year+''' and swm_Mounth = '''+mounth+
  ''' and swm_Week = '''+week+''';';
  WeekCommand.Execute;
  WeekQuery.Requery([]);
  end;
end;

// Изменение параметров посещаемости
procedure TGroupWeekMissForm.EditBtnClick(Sender: TObject);
var
studmissform : TStudMissForm;
studquery    : TADOQuery;
x            : integer;
cont         : TContainer;
leg, illeg   : word;
qyear, qmounth : string;
qweek          : string;

begin
New := false;
qyear := WeekQuery.FieldByName('gwm_Year').AsString;
qmounth := WeekQuery.FieldByName('gwm_Mounth').AsString;
qweek := WeekQuery.FieldByName('gwm_Week').AsString;
studmissform := TStudMissForm.Create(self);
studmissform.StudGrid.Cells[1,0] := 'Уважительных';
studmissform.StudGrid.Cells[2,0] := 'Неуважительных';
studquery := TADOQuery.Create(self);
studquery.Connection := MainForm.Connection;
studquery.SQL.Add('SELECT st_FullName AS st_Name, swm_Legal, swm_Illegal, swm_pcode ');
studquery.SQL.Add('FROM Students, StWeekMissings ');
studquery.SQL.Add('WHERE st_grcode = '''+GroupID+''' and st_Attributes = 0 ');
studquery.SQL.Add('and st_pcode = swm_stcode and swm_Year = '''+qyear+''' ');
studquery.SQL.Add('and swm_Mounth = '''+qmounth+''' ');
studquery.SQL.Add('and swm_Week = '''+qweek+''' ORDER BY st_FullName;');
studquery.Open;
if studquery.RecordCount > 0 then
begin
studmissform.StudGrid.RowCount := studquery.RecordCount+1;
 for x := 1 to studquery.RecordCount do
 begin
  studquery.RecNo := x;
  cont := TContainer.Create;
  cont.Name := studquery.FieldByName('st_Name').AsString;
  cont.Key := studquery.FieldByName('swm_pcode').AsString;
  studmissform.StudGrid.Cols[0].Objects[x] := cont;
  studmissform.StudGrid.Cells[0,x] := cont.Name;
  studmissform.StudGrid.Cells[1,x] :=
    studquery.FieldByName('swm_Legal').AsString;
  studmissform.StudGrid.Cells[2,x] :=
    studquery.FieldByName('swm_Illegal').AsString;
 end;
studquery.Free;
if studmissform.ShowModal = mrOk then
 begin
 for x := 1 to studmissform.StudGrid.RowCount -1 do
  begin
  // Добавить запрос в базу данных
  leg := StrToIntDef(studmissform.StudGrid.Cells[1,x],0);
  illeg := StrToIntDef(studmissform.StudGrid.Cells[2,x],0);
  if leg > MAXWORK then leg := MAXWORK;
  if illeg > MAXWORK then illeg := MAXWORK;
  WeekCommand.CommandText :=
  'UPDATE StWeekMissings  SET swm_Legal = '''+IntToStr(leg)+
  ''', swm_Illegal = '''+IntToStr(illeg)+''' WHERE swm_pcode = '''+
  TContainer(studmissform.StudGrid.Cols[0].Objects[x]).Key+''';';
  WeekCommand.Execute;
  TContainer(studmissform.StudGrid.Cols[0].Objects[x]).Free;
  end;// for
 WeekQuery.Requery([]);
 end;
end else
MessageDlg(NONE_STUDENTS,mtError,[mbOk],0);
studmissform.Free;
end;

end.
