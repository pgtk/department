unit dep_groupform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, ADODB;

type
  TGroupForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    NameEdit: TEdit;
    CommercialCheckBox: TCheckBox;
    Label2: TLabel;
    CourseEdit: TSpinEdit;
    Label3: TLabel;
    CreateYearEdit: TSpinEdit;
    Label4: TLabel;
    LernLengthEdit: TEdit;
    MasterComboBox: TComboBox;
    Label5: TLabel;
    MasterLookupBtn: TButton;
    Label6: TLabel;
    ShortLernLengthEdit: TEdit;
    Label7: TLabel;
    ComissionEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure MasterLookupBtnClick(Sender: TObject);
    procedure MasterComboBoxChange(Sender: TObject);
  private
  AMCode: string;
    { Private declarations }
  public
  Connection : TADOConnection;
  property MCode: string read AMCode write AMCode;
    { Public declarations }
  end;

var
  GroupForm: TGroupForm;

implementation

uses dep_main, kern, dep_workmanform;

{$R *.dfm}

procedure TGroupForm.FormCreate(Sender: TObject);
var
mquery : TADOQuery;
x      : integer;
cont   : TContainer;

begin
Connection := MainForm.Connection;
mquery := TADOQuery.Create(self);
mquery.Connection := Connection;
mquery.SQL.Add('SELECT * FROM Workers ORDER BY wk_Name;');
mquery.Open;
if mquery.RecordCount > 0 then
for x := 1 to mquery.RecordCount do
begin
mquery.RecNo := x;
cont := TContainer.Create;
cont.Name := mquery.FieldByName('wk_FName').AsString+' '+
mquery.FieldByName('wk_MName').AsString+' '+
mquery.FieldByName('wk_LName').AsString;
cont.Key := mquery.FieldByName('wk_pcode').AsString;
MasterComboBox.Items.AddObject(cont.Name,cont);
end;
mquery.Close;
mquery.Free;
MCode := '';
CreateYearEdit.Value := CurrentYear;
end;

procedure TGroupForm.MasterLookupBtnClick(Sender: TObject);
var
workform : TWorkerManForm;
mquery : TADOQuery;
x      : integer;
cont   : TContainer;

begin
workform := TWorkerManForm.Create(self);
workform.ShowModal;
workform.Free;
for x := 0 to MasterComboBox.Items.Count-1 do
MasterComboBox.Items.Objects[x].Free;
MasterComboBox.Items.Clear;
mquery := TADOQuery.Create(self);
mquery.Connection := Connection;
mquery.SQL.Add('SELECT * FROM Workers ORDER BY wk_Name;');
mquery.Open;
if mquery.RecordCount > 0 then
for x := 1 to mquery.RecordCount do
begin
mquery.RecNo := x;
cont := TContainer.Create;
cont.Name := mquery.FieldByName('wk_FName').AsString+' '+
mquery.FieldByName('wk_MName').AsString+' '+
mquery.FieldByName('wk_LName').AsString;
cont.Key := mquery.FieldByName('wk_pcode').AsString;
MasterComboBox.Items.AddObject(cont.Name,cont);
end;
mquery.Close;
mquery.Free;
end;

procedure TGroupForm.MasterComboBoxChange(Sender: TObject);
begin
if MasterComboBox.ItemIndex >= 0 then
begin
MCode := TContainer(
MasterComboBox.Items.Objects[MasterComboBox.ItemIndex]).Key;
end;
end;

end.
