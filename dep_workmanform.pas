unit dep_workmanform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ADODB, DB;

type
  TWorkerManForm = class(TForm)
    GroupGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    WorkDataSource: TDataSource;
    WorkQuery: TADOQuery;
    WorkCommand: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  Connection : TADOConnection;
    { Public declarations }
  end;

var
  WorkerManForm: TWorkerManForm;

implementation

uses dep_main, dep_workform, kern;

{$R *.dfm}

procedure TWorkerManForm.FormCreate(Sender: TObject);
begin
Connection := MainForm.Connection;
WorkCommand.Connection := Connection;
if WorkQuery.Active then
WorkQuery.Close;
WorkQuery.Connection := Connection;
WorkQuery.Open;
end;

procedure TWorkerManForm.AddBtnClick(Sender: TObject);
var
workform : TWorkForm;
begin
workform := TWorkForm.Create(self);
if workform.ShowModal = mrOk then
begin
WorkCommand.CommandText :=
'INSERT INTO Workers (wk_pcode, wk_FName, wk_MName, wk_LName) VALUES (NEWID(), '''+
workform.FNameEdit.Text+''', '''+workform.MNameEdit.Text+''', '''+
workform.LNameEdit.Text+''');';
WorkCommand.Execute;
WorkQuery.Requery([]);
end;
workform.Free;
end;

procedure TWorkerManForm.EditBtnClick(Sender: TObject);
var
workform : TWorkForm;
begin
workform := TWorkForm.Create(self);
workform.FNameEdit.Text := WorkQuery.FieldByName('wk_FName').AsString;
workform.MNameEdit.Text := WorkQuery.FieldByName('wk_MName').AsString;
workform.LNameEdit.Text := WorkQuery.FieldByName('wk_LName').AsString;
if workform.ShowModal = mrOk then
begin
WorkCommand.CommandText :=
'UPDATE Workers SET wk_FName = '''+workform.FNameEdit.Text+''', '+
'wk_MName = '''+workform.MNameEdit.Text+''', '+
'wk_LName = '''+workform.LNameEdit.Text+''' WHERE wk_pcode = '''+
WorkQuery.FieldByName('wk_pcode').AsString+''';';
WorkCommand.Execute;
WorkQuery.Requery([]);
end;
workform.Free;
end;

procedure TWorkerManForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes,mbNo],0) = mrYes then
begin
WorkCommand.CommandText :=
'DELETE FROM Workers WHERE wk_pcode = '''+
WorkQuery.FieldByName('wk_pcode').AsString+''';';
WorkCommand.Execute;
WorkQuery.Requery([]);
end;
end;

end.
