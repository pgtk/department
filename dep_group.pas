unit dep_group;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, kern;

type
  TGroupManForm = class(TForm)
    GroupGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    GroupDataSource: TDataSource;
    GroupQuery: TADOQuery;
    Command: TADOCommand;
    procedure AddBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
  ASpecID : string;
    { Private declarations }
  public
  Connection : TADOConnection;
  property SpecID: string read ASpecID write ASpecID;
    { Public declarations }
  end;

var
  GroupManForm: TGroupManForm;

implementation

uses dep_main, dep_groupform, dep_spec;

{$R *.dfm}

procedure TGroupManForm.AddBtnClick(Sender: TObject);
var
Commercial: byte;
groupform : TGroupForm;
mcode     : string;
mfield    : string;
zaochstr  : string;

begin
mcode := '';
mfield := '';
Commercial := 0;
zaochstr := '0';
if MainForm.isZaoch then
  zaochstr := '1';
groupform := TGroupForm.Create(self);
groupform.Caption := NEW_GROUP;
if groupform.ShowModal = mrOk then
 begin
 if groupform.MCode <> '' then
 begin
 mfield := ', gr_mastercode';
 mcode := ''', '''+groupform.MCode;
 end;
 if groupform.CommercialCheckBox.Checked then
 Commercial := 1;
 //Add group to database
 Command.CommandText :=
 'INSERT INTO Groups (gr_isZaoch, gr_Name, gr_Course, gr_Commercial, '+
 'gr_CreateYear, gr_speccode, gr_LernLength, gr_ShortLernLength, gr_depcode'+mfield+
 ') VALUES ('''+zaochstr+''', '''+
 groupform.NameEdit.Text+''', '''+IntToStr(groupform.CourseEdit.Value)+''', '''+
 IntToStr(Commercial)+''', '''+
 IntToStr(groupform.CreateYearEdit.Value)+''', '''+
 SpecID+''', '''+groupform.LernLengthEdit.Text+''', '''+
 groupform.ShortLernLengthEdit.Text+''', '''+
 MainForm.DepID+mcode+''');';
 {$ifdef debug}
 ShowMessage(Command.CommandText);
 {$endif}
 Command.Execute;
 GroupQuery.Requery([]);
 end;
groupform.Free;
end;

procedure TGroupManForm.FormCreate(Sender: TObject);
begin
Connection := MainForm.Connection;
{$ifdef debug}
ShowMessage(Owner.ClassName);
{$endif}
Command.Connection := Connection;
SpecID := TSpecManForm(Owner).SpecQuery.FieldByName('sp_pcode').AsString;
if GroupQuery.Active then
GroupQuery.Close;
GroupQuery.Connection := Connection;
GroupQuery.SQL.Clear;
if MainForm.isZaoch then
  GroupQuery.SQL.Add('SELECT * FROM groups WHERE (gr_isZaoch = 1) AND (gr_speccode = '''+
    SpecID+''');')
else
  GroupQuery.SQL.Add('SELECT * FROM groups WHERE (gr_depcode = '''+
    MainForm.DepID+''') and (gr_speccode = '''+SpecID+''');');

{$ifdef debug}
ShowMessage(GroupQuery.SQL.Text);
{$endif}
GroupQuery.Open;
end;

procedure TGroupManForm.DelBtnClick(Sender: TObject);
var
pcode : string;
begin
pcode := GroupQuery.FieldByName('gr_pcode').AsString;
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
Command.CommandText := 'DELETE FROM Groups WHERE gr_pcode = '''+pcode+''';';
Command.Execute;
GroupQuery.Requery([]);
end;

procedure TGroupManForm.EditBtnClick(Sender: TObject);
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
groupform.Caption := EX_GROUP;
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
for x := 0 to groupform.MasterComboBox.Items.Count-1 do
if TContainer(groupform.MasterComboBox.Items.Objects[x]).Key = mcode then
groupform.MasterComboBox.Text :=
TContainer(groupform.MasterComboBox.Items.Objects[x]).Name;
if groupform.ShowModal = mrOk then
 begin
 if groupform.MCode <> '' then
 begin
 mfield := ', gr_mastercode = '''+groupForm.MCode+''' ';
// mcode := ''' '''+groupform.MCode;
 end;
 if groupform.CommercialCheckBox.Checked then
 Commercial := 1;
 //Add group to database
 Command.CommandText :=
 'UPDATE Groups SET gr_Name = '''+groupform.NameEdit.Text+''', '+
 'gr_Course = '''+IntToStr(groupform.CourseEdit.Value)+''', '+
 'gr_Commercial = '''+IntToStr(Commercial)+''', '+
 'gr_CreateYear = '''+IntToStr(groupform.CreateYearEdit.Value)+''', '+
 'gr_speccode = '''+SpecID+''', '+
 'gr_LernLength = '''+groupform.LernLengthEdit.Text+''', '+
 'gr_ShortLernLength = '''+groupform.ShortLernLengthEdit.Text+''', '+
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

end.
