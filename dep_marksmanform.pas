unit dep_marksmanform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, DB, ADODB, Spin;

type
  TMarksManForm = class(TForm)
    MarksPageControl: TPageControl;
    ExSheet: TTabSheet;
    CpSheet: TTabSheet;
    OkBtn: TButton;
    ExQuery: TADOQuery;
    CpQuery: TADOQuery;
    ExDataSource: TDataSource;
    CpDataSource: TDataSource;
    ExamGrid: TDBGrid;
    EDetailBtn: TButton;
    CpGrid: TDBGrid;
    CDetailBtn: TButton;
    MnSheet: TTabSheet;
    MnQuery: TADOQuery;
    MnDataSource: TDataSource;
    MnGrid: TDBGrid;
    Command: TADOCommand;
    MnAddBtn: TButton;
    MDetailBtn: TButton;
    MounthComboBox: TComboBox;
    CwSheet: TTabSheet;
    CwGrid: TDBGrid;
    CwDetailBtn: TButton;
    CwSource: TDataSource;
    CwQuery: TADOQuery;
    TabSheet1: TTabSheet;
    GOSGrid: TDBGrid;
    GOSAddBtn: TButton;
    GOSDetailBtn: TButton;
    GOSQuery: TADOQuery;
    GOSSource: TDataSource;
    GOSDelBtn: TButton;
    YearEdit: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure MnDataSourceDataChange(Sender: TObject; Field: TField);
    procedure CpDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ExDataSourceDataChange(Sender: TObject; Field: TField);
    procedure CDetailBtnClick(Sender: TObject);
    procedure EDetailBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateChange(Sender: TObject);
    procedure MnAddBtnClick(Sender: TObject);
    procedure MDetailBtnClick(Sender: TObject);
    procedure CwDetailBtnClick(Sender: TObject);
    procedure CwSourceDataChange(Sender: TObject; Field: TField);
    procedure GOSAddBtnClick(Sender: TObject);
    procedure GOSDetailBtnClick(Sender: TObject);
    procedure GOSDelBtnClick(Sender: TObject);
    procedure GOSSourceDataChange(Sender: TObject; Field: TField);
  private
  ASID   : string;
  ABDate : integer;
  AEDate : integer;
    { Private declarations }
  public
  property SID: string read ASID write ASID;
  property BDate: integer read ABDate write ABDate;
  property EDate: integer read AEDate write AEDate;
    { Public declarations }
  end;

var
  MarksManForm: TMarksManForm;

implementation

uses dep_main, dep_studentsmarkform, kern, dep_subjectselectform,
  dep_semestersmanform;

{$R *.dfm}

//{$define debug=true}


procedure TMarksManForm.MnDataSourceDataChange(Sender: TObject;
  Field: TField);
var
date : integer;
index: integer;
begin
index := MounthComboBox.ItemIndex;
date := YearEdit.Value*100+index;
MnAddBtn.Enabled := MnQuery.Active and (index > 0) and
  (date >= BDate) and (date <= EDate);
MounthComboBox.Enabled := MnQuery.Active;
MDetailBtn.Enabled := MnQuery.Active and (MnQuery.RecNo > 0)and
  (date >= BDate) and (date <= EDate);
end;

procedure TMarksManForm.CpDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
CDetailBtn.Enabled := CpQuery.Active and (CpQuery.RecNo > 0);
end;

procedure TMarksManForm.ExDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
EDetailBtn.Enabled := ExQuery.Active and (ExQuery.RecNo > 0);
end;

procedure TMarksManForm.CDetailBtnClick(Sender: TObject);
var
studform : TStudentsMarkForm;
cont     : TContainer;
x        : integer;
tmpquery : TADOQuery;
mark     : integer;

begin
studform := TStudentsMarkForm.Create(self);
with studform do
begin
 Caption := CpQuery.FieldByName('sb_Name').AsString;
 StudGrid.Cells[0,0] := 'Студент';
 StudGrid.Cells[1,0] := 'Оценка';
 StudGrid.FixedCols := 1;
 tmpquery := TADOQuery.Create(self);
 tmpquery.Connection := MainForm.Connection;
 tmpquery.SQL.Add('SELECT st_FullName AS st_Name, cpm_Mark, st_pcode FROM Students, CpMarks ');
 tmpquery.SQL.Add('WHERE st_Attributes = 0 AND st_grcode = '''+
 MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
 tmpquery.SQL.Add(' and st_pcode *= cpm_stcode and cpm_cpcode = '''+
 CpQuery.FieldByName('cp_pcode').AsString+''' ORDER BY st_FullName;');
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
  StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('cpm_Mark').AsInteger);
 end;
end; // with
if studform.ShowModal = mrOk then
 begin
 Command.CommandText := 'BEGIN TRAN UACp';
 Command.Execute;
 try
 for x := 1 to studform.StudGrid.RowCount-1 do
  begin
  cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
  mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
  if (mark > 5) and (mark < 10) then mark := 0;
  if mark < 0 then mark := 0;
  if mark > 20 then mark := 0;
  Command.CommandText :=
  'IF (SELECT COUNT(cpm_Mark) FROM CpMarks WHERE cpm_stcode = '''+cont.Key+''''+
  ' and cpm_cpcode = '''+CpQuery.FieldByName('cp_pcode').AsString+''') > 0 BEGIN '+
  'UPDATE CpMarks SET cpm_Mark = '''+IntToStr(mark)+''', cpm_Passed = '''+
  IntToStr(trunc(mark/3))+''' WHERE cpm_stcode = '''+cont.Key+''''+
  ' and cpm_cpcode = '''+CpQuery.FieldByName('cp_pcode').AsString+''' END ELSE BEGIN '+
  'INSERT INTO CpMarks (cpm_pcode, cpm_stcode, cpm_cpcode, cpm_Mark, cpm_Passed) '+
  'VALUES (NEWID(), '''+cont.Key+''', '''+CpQuery.FieldByName('cp_pcode').AsString+
  ''', '''+IntToStr(mark)+''', '''+IntToStr(trunc(mark/3))+''') END;';
{$ifdef debug}
  showmessage(command.CommandText);
{$endif}
  Command.Execute;
  cont.Free;
  end; // for
 Command.CommandText := 'COMMIT TRAN UACp';
 Command.Execute;
 except
 MessageDlg(OP_ERROR,mtError,[mbOk],0);
 Command.CommandText := 'ROLLBACK TRAN UACp';
 Command.Execute;
 end;
 end; // if
studform.Free;
end;

procedure TMarksManForm.EDetailBtnClick(Sender: TObject);
var
studform : TStudentsMarkForm;
cont     : TContainer;
x        : integer;
tmpquery : TADOQuery;
mark     : integer;

begin
studform := TStudentsMarkForm.Create(self);
with studform do
begin
 Caption := ExQuery.FieldByName('sb_Name').AsString;
 StudGrid.Cells[0,0] := 'Студент';
 StudGrid.Cells[1,0] := 'Оценка';
 StudGrid.FixedCols := 1;
 tmpquery := TADOQuery.Create(self);
 tmpquery.Connection := MainForm.Connection;
 tmpquery.SQL.Add('SELECT st_FullName AS st_Name, exm_Mark, st_pcode FROM Students, ExMarks ');
 tmpquery.SQL.Add('WHERE st_Attributes = 0 AND st_grcode = '''+
 MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
 tmpquery.SQL.Add(' and st_pcode *= exm_stcode and exm_excode = '''+
 ExQuery.FieldByName('ex_pcode').AsString+''' ORDER BY st_FullName;');
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
  StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('exm_Mark').AsInteger);
 end;
end; // with
if studform.ShowModal = mrOk then
 begin
 Command.CommandText := 'BEGIN TRAN UAEx';
 Command.Execute;
 try
 for x := 1 to studform.StudGrid.RowCount-1 do
  begin
  cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
  mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
  if (mark > 5) and (mark < 10) then mark := 0;
  if mark < 0 then mark := 0;
  if mark > 20 then mark := 0;
  Command.CommandText :=
  'IF (SELECT COUNT(exm_Mark) FROM ExMarks WHERE exm_stcode = '''+cont.Key+''''+
  ' and exm_excode = '''+ExQuery.FieldByName('ex_pcode').AsString+''') > 0 BEGIN '+
  'UPDATE ExMarks SET exm_Mark = '''+IntToStr(mark)+
  ''' WHERE exm_stcode = '''+cont.Key+''''+' and exm_excode = '''+
  ExQuery.FieldByName('ex_pcode').AsString+''' END ELSE BEGIN '+
  'INSERT INTO ExMarks (exm_pcode, exm_stcode, exm_excode, exm_Mark) '+
  'VALUES (NEWID(), '''+cont.Key+''', '''+ExQuery.FieldByName('ex_pcode').AsString+
  ''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
 showmessage(command.CommandText);
{$endif}
  Command.Execute;
  cont.Free;
  end; // for
 Command.CommandText := 'COMMIT TRAN UAEx';
 Command.Execute;
 except
 MessageDlg(OP_ERROR,mtError,[mbOk],0);
 Command.CommandText := 'ROLLBACK TRAN UAEx';
 Command.Execute;
 end;
 end; // if
studform.Free;
end;

procedure TMarksManForm.FormCreate(Sender: TObject);
begin
MounthComboBox.ItemIndex := 0;
YearEdit.Value := CurrentYear;
end;

procedure TMarksManForm.DateChange(Sender: TObject);
var
date : integer;
index: integer;
begin
index := MounthComboBox.ItemIndex;
date := YearEdit.Value*100+index;
MnAddBtn.Enabled := MnQuery.Active and (index > 0) and
 (date <= EDate) and (date >= BDate);
if index > 0 then
begin
 MnQuery.Filtered := false;
 MnQuery.Filter := '(mk_Mounth = '+IntToStr(MounthComboBox.ItemIndex)+
 ') AND (sm_BDate <= '+IntToStr(date)+') AND (sm_EDate >= '+IntToStr(date)+')';
 MnQuery.Filtered := true;
end else
MnQuery.Filtered := false;
end;

procedure TMarksManForm.MnAddBtnClick(Sender: TObject);
var
subjform  : TSubjectSelectForm;
studform  : TStudentsMarkForm;
cont      : TContainer;
x         : integer;
tmpquery  : TADOQuery;
mark      : integer;

begin
subjform := TSubjectSelectForm.Create(self);
with subjform.SubjQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM Subjects WHERE sb_pcode IN (');
SQL.Add('SELECT cp_sbcode FROM Checkpoints WHERE cp_smcode = '''+SID+''' UNION ');
SQL.Add('SELECT ex_sbcode AS cp_sbcode FROM Exams WHERE ex_smcode = '''+SID+''')');
SQL.Add('AND sb_pcode NOT IN (');
SQL.Add('SELECT mk_sbcode FROM Marks WHERE mk_Mounth = '''+
IntToStr(MounthComboBox.ItemIndex)+''' and mk_smcode = '''+SID+''')');
SQL.Add('ORDER BY sb_Name');
Open;
end; // with
if subjform.ShowModal = mrOk then
begin
 studform := TStudentsMarkForm.Create(self);
 with studform do
 begin
  Caption := subjform.SubjQuery.FieldByName('sb_Name').AsString;
  StudGrid.Cells[0,0] := 'Студент';
  StudGrid.Cells[1,0] := 'Оценка';
  StudGrid.FixedCols := 1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT st_FullName AS st_Name, mk_Mark, st_pcode FROM Students, Marks ');
  tmpquery.SQL.Add('WHERE st_Attributes = 0 AND st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
  tmpquery.SQL.Add(' and mk_smcode = '''+SID+'''');
  tmpquery.SQL.Add(' and mk_Mounth = '''+IntToStr(MounthComboBox.ItemIndex)+'''');
  tmpquery.SQL.Add(' and st_pcode *= mk_stcode and mk_sbcode = '''+
  subjform.SubjQuery.FieldByName('sb_pcode').AsString+''' ORDER BY st_FullName;');
  {$ifdef debug}
  showmessage(tmpquery.SQL.Text);
  {$endif}
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
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('mk_Mark').AsInteger);
  end; // for
 end; // with
 if studform.ShowModal = mrOk then
  begin
   Command.CommandText := 'BEGIN TRAN UAMn';
   Command.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if (mark > 5) and (mark < 10) then mark := 0;
     if mark < 0 then mark := 0;
     if mark > 20 then mark := 0;
     Command.CommandText :=
     'IF (SELECT COUNT(mk_Mark) FROM Marks WHERE mk_stcode = '''+cont.Key+''''+
     ' AND mk_smcode = '''+SID+''' AND mk_Mounth = '''+
     IntToStr(MounthComboBox.ItemIndex)+''' AND mk_sbcode = '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''') > 0 BEGIN '+
     'UPDATE Marks SET mk_Mark = '''+IntToStr(mark)+
     ''' WHERE mk_stcode = '''+cont.Key+''' AND mk_smcode = '''+SID+
     ''' AND mk_Mounth = '''+IntToStr(MounthComboBox.ItemIndex)+''' AND mk_sbcode = '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO Marks (mk_pcode, mk_stcode, mk_smcode, mk_Mounth, mk_sbcode, mk_Mark) '+
     'VALUES (NEWID(), '''+cont.Key+''', '''+SID+''', '''+
     IntToStr(MounthComboBox.ItemIndex)+''', '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
     showmessage(command.CommandText);
{$endif};
     Command.Execute;
     cont.Free;
    end; // for
   Command.CommandText := 'COMMIT TRAN UAMn';
   Command.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    Command.CommandText := 'ROLLBACK TRAN UAMn';
    Command.Execute;
   end; // try
  end; // if
 studform.Free;
end;
subjform.Free;
MnQuery.Requery([]);
end;

procedure TMarksManForm.MDetailBtnClick(Sender: TObject);
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
  Caption := MnQuery.FieldByName('sb_Name').AsString;
  StudGrid.Cells[0,0] := 'Студент';
  StudGrid.Cells[1,0] := 'Оценка';
  StudGrid.FixedCols := 1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT st_FullName AS st_Name, mk_Mark, st_pcode FROM Students, Marks ');
  tmpquery.SQL.Add('WHERE st_Attributes = 0 and st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
  tmpquery.SQL.Add(' and mk_Mounth = '''+MnQuery.FieldByName('mk_Mounth').AsString+'''');
  tmpquery.SQL.Add(' and mk_smcode = '''+SID+'''');
  tmpquery.SQL.Add(' and mk_year = '+YearEdit.Text);
  tmpquery.SQL.Add(' and st_pcode *= mk_stcode and mk_sbcode = '''+
    MnQuery.FieldByName('sb_pcode').AsString+''' ORDER BY st_FullName;');
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
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('mk_Mark').AsInteger);
  end; // for
 end; // with
 if studform.ShowModal = mrOk then
  begin
   Command.CommandText := 'BEGIN TRAN UCW';
   Command.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if (mark > 5) and (mark < 10) then mark := 0;
     if mark < 0 then mark := 0;
     if mark > 20 then mark := 0;
     Command.CommandText :=
     'IF (SELECT COUNT(mk_Mark) FROM Marks WHERE mk_stcode = '''+cont.Key+''''+
     ' AND mk_year = '+YearEdit.Text+' AND mk_Mounth = '+
     MnQuery.FieldByName('mk_Mounth').AsString+' AND mk_stcode = '''+
     cont.Key+''' AND mk_sbcode = '''+
     MnQuery.FieldByName('sb_pcode').AsString+''' AND mk_smcode = '''+SID+''') > 0 BEGIN '+
     'UPDATE Marks SET mk_Mark = '''+IntToStr(mark)+
     ''' WHERE mk_stcode = '''+cont.Key+''' AND mk_year = '+YearEdit.Text+
     ' AND mk_Mounth = '+MnQuery.FieldByName('mk_Mounth').AsString+' AND mk_sbcode = '''+
     MnQuery.FieldByName('sb_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO Marks (mk_stcode, mk_smcode, mk_Mounth, mk_Year, mk_sbcode, mk_Mark) '+
     'VALUES ('''+cont.Key+''', '''+SID+''', '+
     MnQuery.FieldByName('mk_Mounth').AsString+', '+YearEdit.Text+', '''+
     MnQuery.FieldByName('sb_pcode').AsString+''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
     showmessage(command.CommandText);
{$endif}
     Command.Execute;
     cont.Free;
    end; // for
   Command.CommandText := 'COMMIT TRAN UCW';
   Command.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    Command.CommandText := 'ROLLBACK TRAN UCW';
    Command.Execute;
   end; // try
  end; // if
 studform.Free;
 MnQuery.Requery([]);
end;

procedure TMarksManForm.CwDetailBtnClick(Sender: TObject);
var
studform : TStudentsMarkForm;
cont     : TContainer;
x        : integer;
tmpquery : TADOQuery;
mark     : integer;

begin
studform := TStudentsMarkForm.Create(self);
with studform do
begin
 Caption := CwQuery.FieldByName('sb_Name').AsString;
 StudGrid.Cells[0,0] := 'Студент';
 StudGrid.Cells[1,0] := 'Оценка';
 StudGrid.FixedCols := 1;
 tmpquery := TADOQuery.Create(self);
 tmpquery.Connection := MainForm.Connection;
 tmpquery.SQL.Add('SELECT st_FullName AS st_Name, cwm_Mark, st_pcode FROM Students, CwMarks ');
 tmpquery.SQL.Add('WHERE st_Attributes = 0 AND st_grcode = '''+
 MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
 tmpquery.SQL.Add(' and st_pcode *= cwm_stcode and cwm_cwcode = '''+
 CwQuery.FieldByName('cw_pcode').AsString+''' ORDER BY st_FullName;');
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
  StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('cwm_Mark').AsInteger);
 end;
end; // with
if studform.ShowModal = mrOk then
 begin
 Command.CommandText := 'BEGIN TRAN UACw';
 Command.Execute;
 try
 for x := 1 to studform.StudGrid.RowCount-1 do
  begin
  cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
  mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
  if (mark > 5) and (mark < 10) then mark := 0;
  if mark < 0 then mark := 0;
  if mark > 20 then mark := 0;
  Command.CommandText :=
  'IF (SELECT COUNT(cwm_Mark) FROM CwMarks WHERE cwm_stcode = '''+cont.Key+''''+
  ' and cwm_cwcode = '''+CwQuery.FieldByName('cw_pcode').AsString+''') > 0 BEGIN '+
  'UPDATE CwMarks SET cwm_Mark = '''+IntToStr(mark)+
  ''' WHERE cwm_stcode = '''+cont.Key+''''+' and cwm_cwcode = '''+
  CwQuery.FieldByName('cw_pcode').AsString+''' END ELSE BEGIN '+
  'INSERT INTO CwMarks (cwm_stcode, cwm_cwcode, cwm_Mark) '+
  'VALUES ('''+cont.Key+''', '''+CwQuery.FieldByName('cw_pcode').AsString+
  ''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
 showmessage(command.CommandText);
{$endif}
  Command.Execute;
  cont.Free;
  end; // for
 Command.CommandText := 'COMMIT TRAN UACw';
 Command.Execute;
 except
 MessageDlg(OP_ERROR,mtError,[mbOk],0);
 Command.CommandText := 'ROLLBACK TRAN UACw';
 Command.Execute;
 end;
 end; // if
studform.Free;
end;

procedure TMarksManForm.CwSourceDataChange(Sender: TObject; Field: TField);
begin
CwDetailBtn.Enabled := CwQuery.Active and (CwQuery.RecNo > 0);
end;

procedure TMarksManForm.GOSAddBtnClick(Sender: TObject);
var
subjform  : TSubjectSelectForm;
studform  : TStudentsMarkForm;
cont      : TContainer;
x         : integer;
tmpquery  : TADOQuery;
mark      : integer;

begin
subjform := TSubjectSelectForm.Create(self);
with subjform.SubjQuery do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM Subjects WHERE sb_pcode IN (');
SQL.Add('  SELECT DISTINCT mk_sbcode FROM Marks, Students');
SQL.Add('    WHERE (mk_stcode = st_pcode) AND (st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''))');
SQL.Add('AND sb_pcode NOT IN (SELECT DISTINCT gsm_sbcode FROM GOSMarks, Students');
SQL.Add('  WHERE (gsm_stcode = st_pcode) AND (st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''))');
SQL.Add('ORDER BY sb_Name');
{$ifdef debug}
showmessage(SQL.Text);
{$endif}
Open;
end; // with
if subjform.ShowModal = mrOk then
begin
 studform := TStudentsMarkForm.Create(self);
 with studform do
 begin
  Caption := subjform.SubjQuery.FieldByName('sb_Name').AsString;
  StudGrid.Cells[0,0] := 'Студент';
  StudGrid.Cells[1,0] := 'Оценка';
  StudGrid.FixedCols := 1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT st_Name, gsm_Mark, st_pcode FROM Students, GOSMarks ');
  tmpquery.SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''')');
  tmpquery.SQL.Add(' AND (st_pcode *= gsm_stcode) AND (gsm_sbcode = '''+
  subjform.SubjQuery.FieldByName('sb_pcode').AsString+''') ORDER BY st_Name;');
{$ifdef debug}
  showmessage(tmpquery.SQL.Text);
{$endif}
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
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('gsm_Mark').AsInteger);
  end; // for
 end; // with
 if studform.ShowModal = mrOk then
  begin
   Command.CommandText := 'BEGIN TRAN UAMn';
   Command.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if (mark > 5) then mark := 0;
     if (mark < 0) then mark := 0;
     Command.CommandText :=
     'IF (SELECT COUNT(gsm_Mark) FROM GOSMarks WHERE (gsm_stcode = '''+cont.Key+''')'+
     ' AND (gsm_sbcode = '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''')) > 0 BEGIN '+
     'UPDATE GOSMarks SET gsm_Mark = '''+IntToStr(mark)+
     ''' WHERE gsm_stcode = '''+cont.Key+''' AND gsm_sbcode = '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO GOSMarks (gsm_stcode, gsm_sbcode, gsm_Mark) '+
     'VALUES ('''+cont.Key+''', '''+
     subjform.SubjQuery.FieldByName('sb_pcode').AsString+''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
     showmessage(command.CommandText);
{$endif};
     Command.Execute;
     cont.Free;
    end; // for
   Command.CommandText := 'COMMIT TRAN UAMn';
   Command.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    Command.CommandText := 'ROLLBACK TRAN UAMn';
    Command.Execute;
   end; // try
  end; // if
 studform.Free;
end;
subjform.Free;
GOSQuery.Requery([]);
end;

procedure TMarksManForm.GOSDetailBtnClick(Sender: TObject);
var
studform : TStudentsMarkForm;
x, mark  : integer;
cont     : TContainer;
tmpquery : TADOQuery;

begin
 studform := TStudentsMarkForm.Create(self);
 with studform do
 begin
  Caption := GOSQuery.FieldByName('sb_Name').AsString;
  StudGrid.Cells[0,0] := 'Студент';
  StudGrid.Cells[1,0] := 'Оценка';
  StudGrid.FixedCols := 1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT st_FullName AS st_Name, gsm_Mark, st_pcode FROM Students, GOSMarks ');
  tmpquery.SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''')');
  tmpquery.SQL.Add(' AND (st_pcode *= gsm_stcode) AND (gsm_sbcode = '''+
  GOSQuery.FieldByName('sb_pcode').AsString+''') ORDER BY st_FullName;');
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
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('gsm_Mark').AsInteger);
  end; // for
 end; // with
 if studform.ShowModal = mrOk then
  begin
   Command.CommandText := 'BEGIN TRAN UBMn';
   Command.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if (mark > 5) then mark := 0;
     if (mark < 0) then mark := 0;
     Command.CommandText :=
     'IF (SELECT COUNT(gsm_Mark) FROM GOSMarks WHERE (gsm_stcode = '''+cont.Key+''')'+
     ' AND (gsm_sbcode = '''+
     GOSQuery.FieldByName('sb_pcode').AsString+''')) > 0 BEGIN '+
     'UPDATE GOSMarks SET gsm_Mark = '''+IntToStr(mark)+
     ''' WHERE gsm_stcode = '''+cont.Key+''' AND gsm_sbcode = '''+
     GOSQuery.FieldByName('sb_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO GOSMarks (gsm_stcode, gsm_sbcode, gsm_Mark) '+
     'VALUES ('''+cont.Key+''', '''+
     GOSQuery.FieldByName('sb_pcode').AsString+''', '''+IntToStr(mark)+''') END;';
{$ifdef debug}
     showmessage(command.CommandText);
{$endif};
     Command.Execute;
     cont.Free;
    end; // for
   Command.CommandText := 'COMMIT TRAN UBMn';
   Command.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    Command.CommandText := 'ROLLBACK TRAN UBMn';
    Command.Execute;
   end; // try
  end; // if
 studform.Free;
end;

procedure TMarksManForm.GOSDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning, [mbYes, mbNo],0) = mrYes then
  begin
  Command.CommandText :=
  'DELETE FROM GOSMarks WHERE (gsm_sbcode = '''+
    GOSQuery.FieldByName('sb_pcode').AsString+
    ''') AND (gsm_stcode IN (SELECT st_pcode FROM Students WHERE st_grcode = '''+
    MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''))';
  Command.Execute;
  GOSQuery.Requery;
  end;
end;

procedure TMarksManForm.GOSSourceDataChange(Sender: TObject;
  Field: TField);
begin
GOSDetailBtn.Enabled := (GOSQuery.Active) and (GOSQuery.State = dsBrowse) and (GOSQuery.RecNo > 0);
GOSDelBtn.Enabled := (GOSQuery.Active) and (GOSQuery.State = dsBrowse) and (GOSQuery.RecNo > 0);
GOSAddBtn.Enabled := (GOSQuery.Active) and (GOSQuery.State = dsBrowse);
end;

end.
