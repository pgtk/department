unit dep_fnpracticsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TFnPracticsForm = class(TForm)
    FPkGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    Command: TADOCommand;
    FPkQuery: TADOQuery;
    FPkDataSource: TDataSource;
    DetailBtn: TButton;
    procedure FPkDataSourceDataChange(Sender: TObject; Field: TField);
    procedure DelBtnClick(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DetailBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FnPracticsForm: TFnPracticsForm;

implementation

uses dep_main, kern, dep_editpracticsform, dep_studentsmarkform;

{$R *.dfm}

procedure TFnPracticsForm.FPkDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := FPkQuery.Active;
EditBtn.Enabled := (FPkQuery.Active) and (FPkQuery.RecordCount > 0);
DelBtn.Enabled := (FPkQuery.Active) and (FPkQuery.RecordCount > 0);
DetailBtn.Enabled := (FPkQuery.Active) and (FPkQuery.RecordCount > 0);
end;

procedure TFnPracticsForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  try
  Command.CommandText := 'DELETE FROM FnPractics WHERE fpk_pcode = '''+
    FPkQuery.FieldByName('fpk_pcode').AsString+''';';
  Command.Execute;
  FPkQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end; // try
end;

procedure TFnPracticsForm.AddBtnClick(Sender: TObject);
var
form : TEditPracticsForm;
begin
form := TEDitPracticsForm.Create(self);
form.TeachersGroupBox.Visible := false;
if (mrOk = form.ShowModal) then
  try
  Command.CommandText := 'INSERT INTO FnPractics(fpk_Title, fpk_Length, fpk_grcode, fpk_number) '+
    'VALUES('''+form.TitleEdit.Text+''', '''+GetDottedFloat(form.LengthEdit.Text)+''', '''+
    MainForm.GroupQuery.FieldByName('gr_pcode').AsString+''', '''+
    form.NumberEdit.Text+''')';
  Command.Execute;
  FPkQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
form.Free;
end;

procedure TFnPracticsForm.EditBtnClick(Sender: TObject);
var
form : TEditPracticsForm;
begin
form := TEDitPracticsForm.Create(self);
form.TeachersGroupBox.Visible := false;
form.TitleEdit.Text := FPkQuery.FieldByName('fpk_Title').AsString;
form.LengthEdit.Text := FPkQuery.FieldByName('fpk_Length').AsString;
form.NumberEdit.Text := FPkQuery.FieldByName('fpk_Number').AsString;
if (mrOk = form.ShowModal) then
  try
  Command.CommandText := 'UPDATE FnPractics SET fpk_Title = '''+form.TitleEdit.Text+
  ''', fpk_Length = '''+GetDottedFloat(form.LengthEdit.Text)+
  ''', fpk_Number = '''+form.NumberEdit.Text+''' WHERE fpk_pcode = '''+
  FPkQuery.FieldByName('fpk_pcode').AsString+''';';
  Command.Execute;
  FPkQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
form.Free;
end;

procedure TFnPracticsForm.DetailBtnClick(Sender: TObject);
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
  tmpquery.SQL.Add('SELECT st_Name, fpm_Mark, st_pcode FROM Students, FpMarks ');
  tmpquery.SQL.Add('WHERE st_Attributes = 0 and st_grcode = '''+
  MainForm.GroupQuery.FieldByName('gr_pcode').AsString+'''');
  tmpquery.SQL.Add(' and fpm_fpcode = '''+FPkQuery.FieldByName('fpk_pcode').AsString+'''');
  tmpquery.SQL.Add(' and st_pcode *= fpm_stcode ORDER BY st_Name;');
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
   StudGrid.Cells[1,x] := IntToStr(tmpquery.FieldByName('fpm_Mark').AsInteger);
  end; // for
  tmpquery.Free;
 end; // with
 if studform.ShowModal = mrOk then
  begin
   Command.CommandText := 'BEGIN TRAN FPkMarks';
   Command.Execute;
   try
    for x := 1 to studform.StudGrid.RowCount-1 do
    begin
     cont := TContainer(studform.StudGrid.Cols[0].Objects[x]);
     mark := StrToIntDef(studform.StudGrid.Cells[1,x],0);
     if (mark > 5) and (mark <> ZC) then mark := 0;
     if mark < 0 then mark := 0;
     Command.CommandText :=
     'IF (SELECT COUNT(fpm_Mark) FROM FpMarks WHERE fpm_stcode = '''+cont.Key+''''+
     ' AND fpm_fpcode = '''+FPkQuery.FieldByName('fpk_pcode').AsString+''') > 0 BEGIN '+
     'UPDATE FpMarks SET fpm_Mark = '''+IntToStr(mark)+
     ''' WHERE fpm_stcode = '''+cont.Key+''' AND fpm_fpcode = '''+
     FPkQuery.FieldByName('fpk_pcode').AsString+''' END ELSE BEGIN '+
     'INSERT INTO FpMarks (fpm_stcode, fpm_fpcode, fpm_Mark) '+
     'VALUES ('''+cont.Key+''', '''+FPkQuery.FieldByName('fpk_pcode').AsString+
     ''', '''+IntToStr(mark)+''') END;';
     Command.Execute;
     cont.Free;
    end; // for
   Command.CommandText := 'COMMIT TRAN FPkMarks';
   Command.Execute;
   except
    MessageDlg(OP_ERROR,mtError,[mbOk],0);
    Command.CommandText := 'ROLLBACK TRAN FPkMarks';
    Command.Execute;
   end; // try
  end; // if
 studform.Free;
end;

end.
