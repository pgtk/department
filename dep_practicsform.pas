unit dep_practicsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TPracticsForm = class(TForm)
    ExitBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    PracticsGrid: TDBGrid;
    PracticsQuery: TADOQuery;
    PracticsCommand: TADOCommand;
    PracticsSource: TDataSource;
    DetailBtn: TButton;
    RepBtn: TButton;
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DetailBtnClick(Sender: TObject);
    procedure RepBtnClick(Sender: TObject);
    procedure PracticsSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PracticsForm: TPracticsForm;

implementation

uses dep_main, dep_semestersmanform, kern, dep_pkmembersform,
  dep_studentsmarkform, dep_practreportform, dep_editpracticsform;

{$R *.dfm}

procedure TPracticsForm.AddBtnClick(Sender: TObject);
var
form    : TEditPracticsform;
len     : double;
slength : string;
x       : integer;
num     : integer;

begin
form := TEditPracticsForm.Create(self);
if form.ShowModal = mrOk then
  begin
  num := StrToIntDef(form.NumberEdit.Text,0);
  if num > 100 then
    num := 100; 
  slength := form.LengthEdit.Text;
  for x := 1 to length(slength) do
    if (slength[x] = '.') then slength[x] := ',';
  len := StrToFloatDef(slength, MIN_PK_WEEK);
  if (MIN_PK_WEEK > len) then len := MIN_PK_WEEK;
  if (MAX_PK_WEEK < len) then len := MAX_PK_WEEK;
  for x := 1 to length(slength) do
    if (slength[x] = ',') then slength[x] := '.';
  PracticsCommand.CommandText :=
  'INSERT INTO Practics(pk_smcode, pk_Title, pk_Teachers, pk_Length, pk_Number) VALUES('''+
  TSemestersManForm(owner).SemestersQuery.FieldByName('sm_pcode').AsString+
  ''', '''+form.TitleEdit.Text+''', '''+form.TeachersEdit.Text+''', '''+slength+
  ''', '+IntToStr(num)+');';
  PracticsCommand.Execute;
  PracticsQuery.Requery([]);
  end;
form.Free;
end;

procedure TPracticsForm.EditBtnClick(Sender: TObject);
var
form    : TEditPracticsform;
len     : double;
x       : integer;
slength : string;
num     : integer;

begin
form := TEditPracticsForm.Create(self);
form.TitleEdit.Text := PracticsQuery.FieldByName('pk_Title').AsString;
form.TeachersEdit.Text := PracticsQuery.FieldByName('pk_Teachers').AsString;
form.LengthEdit.Text := PracticsQuery.FieldByName('pk_Length').AsString;
form.NumberEdit.Text := PracticsQuery.FieldByName('pk_Number').AsString;
if form.ShowModal = mrOk then
  begin
  slength := form.LengthEdit.Text;
  num := StrToIntDef(form.NumberEdit.Text, 0);
  if num > 100 then
    num := 100;
  for x := 1 to Length(slength) do
    if (slength[x] = '.') then slength[x] := ',';
  len := StrToFloatDef(slength, MIN_PK_WEEK);
  if (MIN_PK_WEEK > len) then len := MIN_PK_WEEK;
  if (MAX_PK_WEEK < len) then len := MAX_PK_WEEK;
  slength := FormatFloat('###.#', len);
  for x := 1 to length(slength) do
    if (slength[x] = ',') then slength[x] := '.';
  PracticsCommand.CommandText :=
  'UPDATE Practics SET pk_Title = '''+form.TitleEdit.Text+
  ''', pk_Teachers = '''+form.TeachersEdit.Text+''', pk_Length = '''+
  slength+''', pk_Number = '+IntToStr(num)+' WHERE pk_pcode='''+
  PracticsQuery.FieldByName('pk_pcode').AsString+''';';
  {$ifdef debug}
  ShowMessage(PracticsCommand.CommandText);
  {$endif}
  PracticsCommand.Execute;
  PracticsQuery.Requery([]);
  end;
form.Free;
end;

procedure TPracticsForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = MrYes then
  begin
  PracticsCommand.CommandText :=
  'DELETE FROM Practics WHERE pk_pcode='''+
  PracticsQuery.FieldByName('pk_pcode').AsString+''';';
  PracticsCommand.Execute;
  PracticsQuery.Requery([]);
  end;
end;

procedure TPracticsForm.DetailBtnClick(Sender: TObject);
var
studform  : TStudentsMarkForm;
cont      : TContainer;
x         : integer;
tmpquery  : TADOQuery;
mark      : integer;

begin
 studform := TStudentsMarkForm.Create(self);
 with studform do
 begin
  Caption := 'Оценки по практике';
  StudGrid.Cells[0,0] := 'Студент';
  StudGrid.Cells[1,0] := 'Оценка';
  StudGrid.FixedCols := 1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT st_Name, pmk_Mark, st_pcode FROM Students, PkMarks ');
  tmpquery.SQL.Add('WHERE st_Attributes = 0 and st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
  tmpquery.SQL.Add(' and pmk_pkcode = '''+PracticsQuery.FieldByName('pk_pcode').AsString+'''');
  tmpquery.SQL.Add(' and st_pcode *= pmk_stcode ORDER BY st_Name;');
  tmpquery.Open;
  StudGrid.RowCount := tmpquery.RecordCount + 1;
  for x := 1 to tmpquery.RecordCount do
  begin
   tmpquery.RecNo := x;
   cont := TContainer.Create;
   cont.Name := tmpquery.FieldByName('st_Name').AsString;
   cont.Key := tmpquery.FieldByName('st_pcode').AsString;
   StudGrid.Cols[0].Objects[x] := cont;
   StudGrid.Cells[0,x] := cont.Name;
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('pmk_Mark').AsInteger);
  end; // for
  tmpquery.Free;
 end; // with
 if studform.ShowModal = mrOk then
  begin
   PracticsCommand.CommandText := 'BEGIN TRAN UAPk';
   PracticsCommand.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if mark > 5 then mark := 0;
     if mark < 0 then mark := 0;
     PracticsCommand.CommandText :=
     'IF (SELECT COUNT(pmk_Mark) FROM PkMarks WHERE pmk_stcode = '''+cont.Key+''''+
     ' AND pmk_pkcode = '''+PracticsQuery.FieldByName('pk_pcode').AsString+''') > 0 BEGIN '+
     'UPDATE PkMarks SET pmk_Mark = '''+IntToStr(mark)+
     ''' WHERE pmk_stcode = '''+cont.Key+''' AND pmk_pkcode = '''+
     PracticsQuery.FieldByName('pk_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO PkMarks (pmk_stcode, pmk_pkcode, pmk_Mark) '+
     'VALUES ('''+cont.Key+''', '''+PracticsQuery.FieldByName('pk_pcode').AsString+
     ''', '''+IntToStr(mark)+''') END;';
     PracticsCommand.Execute;
     cont.Free;
    end; // for
   PracticsCommand.CommandText := 'COMMIT TRAN UAPk';
   PracticsCommand.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    PracticsCommand.CommandText := 'ROLLBACK TRAN UAPk';
    PracticsCommand.Execute;
   end; // try
  end; // if
 studform.Free;
end;

procedure TPracticsForm.RepBtnClick(Sender: TObject);
var
report  : TPractReportForm;
tmpquery: TADOQuery;

begin
report := TPractReportForm.Create(self);
report.NameLabel.Caption := '('+PracticsQuery.FieldByName('pk_Title').AsString+')';
report.SchoolNameLabel.Caption := MainForm.SchoolName;
report.DescLabel.Caption := 'группы '+MainForm.GroupQuery.FieldByName('gr_Name').AsString+' '+
MainForm.GroupQuery.FieldByName('gr_Course').AsString+'-го курса очной формы обучения за '+
TSemestersManForm(Owner).SemestersQuery.FieldByName('sm_Number').AsString+'-й семестр '+
GetYears(TSemestersManForm(Owner).SemestersQuery.FieldByName('sm_BMounth').AsInteger,
         TSemestersManForm(Owner).SemestersQuery.FieldByName('sm_BYear').AsInteger)+'.';
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
  MainForm.GroupQuery.FieldByName('gr_speccode').AsString+''';');
tmpquery.Open;
report.SpecLabel.Caption := 'Специальность: '+
tmpquery.FieldByName('sp_Key').AsString+' "'+tmpquery.FieldbyName('sp_Name').AsString+'".';
tmpquery.Close;
tmpquery.SQL.Clear;
report.TeacherLabel.Caption := 'Руководители: '+
   PracticsQuery.FieldByName('pk_Teachers').AsString;
tmpquery.Free;
report.PractRep.Preview;
report.Free;
end;

procedure TPracticsForm.PracticsSourceDataChange(Sender: TObject;
  Field: TField);
var
e : boolean;

begin
e := PracticsQuery.Active and (PracticsQuery.RecordCount > 0);
EditBtn.Enabled := e;
DelBtn.Enabled := e;
DetailBtn.Enabled := e;
RepBtn.Enabled := e;
end;

end.
