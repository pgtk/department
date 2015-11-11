unit dep_seminarsformform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TDetailForm = class(TForm)
    AddBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    SeminarsGrid: TDBGrid;
    DetailSource: TDataSource;
    Command: TADOCommand;
    DetailQuery: TADOQuery;
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DetailSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  ASpecID: string;
  AComissionID : string;
  public
    { Public declarations }
  property specID: string read ASpecID write ASpecID;
  property comissionID: string read AComissionID write AComissionID;
  end;

var
  DetailForm: TDetailForm;

implementation

uses dep_main, kern, dep_seminareditform, dep_seminarsstudentsform;

{$R *.dfm}

procedure TDetailForm.AddBtnClick(Sender: TObject);
var
form  : TDetailEditForm;
query : TADOQuery;
x     : integer;
cont  : TContainer;

begin
form := TDetailEditForm.Create(self);
query := TADOQuery.Create(self);
query.Connection := MainForm.Connection;
query.SQL.Clear;
query.SQL.Add('SELECT st_FullName, gr_Name, st_pcode FROM Students, Groups');
query.SQL.Add('WHERE (st_Attributes = 0) AND (st_grcode = gr_pcode) AND (gr_speccode = '''+
  specID+''')');
query.SQL.Add('AND (st_pcode NOT IN (SELECT ss_stcode FROM Sessions))');
query.SQL.Add('AND (st_pcode IN (SELECT fnm_stcode FROM FnMarks))');
query.SQL.Add('ORDER BY gr_Name, st_FullName');
Query.SQL.SaveToFile('Sessions.sql');
query.Open;
if (query.RecordCount > 0) then
  for x := 1 to query.RecordCount do
  begin
  query.RecNo := x;
  cont := TContainer.Create;
  cont.Name := query.FieldByName('st_FullName').AsString+' ('+
    query.FieldByName('gr_Name').AsString+')';
  cont.Key := query.FieldByName('st_pcode').AsString;
  form.StudentListBox.Items.AddObject(cont.Name, cont);
  end;
query.Free;
if (mrOk = form.ShowModal) then
  try
  Command.CommandText := 'BEGIN TRAN AddStToComission';
  Command.Execute;
  for x := 0 to form.StudentListBox.Items.Count-1 do
    if form.StudentListBox.Checked[x] then
      begin
      Command.CommandText := 'INSERT INTO Sessions(ss_comcode, ss_stcode) VALUES('''+
        ComissionID+''', '''+
        TContainer(form.StudentListBox.Items.Objects[x]).Key+''')';
      Command.Execute;
      end;
  Command.CommandText := 'COMMIT TRAN AddStToComission';
  Command.Execute;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  Command.CommandText := 'ROLLBACK TRAN AddStToComission';
  Command.Execute;
  end; //try
form.Free;
DetailQuery.Requery;
end;

procedure TDetailForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
  Command.CommandText :=
  'DELETE FROM Sessions WHERE ss_pcode='''+
  DetailQuery.FieldByName('ss_pcode').AsString+''';';
  Command.Execute;
  DetailQuery.Requery([]);
  end;
end;

procedure TDetailForm.DetailSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := DetailQuery.Active;
DelBtn.Enabled := (DetailQuery.Active) and (DetailQuery.RecNo > 0);
end;

end.
