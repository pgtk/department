unit dep_spec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, kern;

type
  TSpecManForm = class(TForm)
    SpecDBGrid: TDBGrid;
    SpecDataSource: TDataSource;
    SpecQuery: TADOQuery;
    AddBtn: TButton;
    EditBtn: TButton;
    ExitBtn: TButton;
    Command: TADOCommand;
    GroupBtn: TButton;
    ComissionBtn: TButton;
    PlansBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
//    procedure DelBtnClick(Sender: TObject);
    procedure GroupBtnClick(Sender: TObject);
    procedure ComissionBtnClick(Sender: TObject);
    procedure SpecDataSourceDataChange(Sender: TObject; Field: TField);
    procedure PlansBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  Connection : TADOConnection;
    { Public declarations }
  end;

var
  SpecManForm: TSpecManForm;

implementation

uses dep_main, dep_specform, dep_groupform, dep_group, dep_diplomeform,
  dep_studyplanslistform;

{$R *.dfm}

procedure TSpecManForm.FormCreate(Sender: TObject);
begin
Connection := MainForm.Connection;
{$ifdef debug}
ShowMessage(Owner.ClassName);
{$endif}
Command.Connection := Connection;
SpecQuery.Close;
SpecQuery.Connection := Connection;
SpecQuery.SQL.Clear;
if MainForm.isZaoch then
  SpecQuery.SQL.Add('SELECT * FROM Specialities WHERE (sp_isZaoch=1);')
else
  SpecQuery.SQL.Add('SELECT * FROM Specialities WHERE (sp_depcode='''+
    MainForm.DepID+''');');
{$ifdef debug}
ShowMessage(SpecQuery.SQL.Text);
{$endif}
SpecQuery.Open;
end;

procedure TSpecManForm.AddBtnClick(Sender: TObject);
var
SpecForm : TSpecForm;
zaochstr : string;
actstr   : string;
specstr  : string;

begin
zaochstr := '0';
if MainForm.isZaoch then
  zaochstr := '1';
SpecForm := TSpecForm.Create(self);
SpecForm.Caption := NEW_SPEC;
if SpecForm.ShowModal = mrOk then
begin
specstr := '0';
if SpecForm.SpecCheckBox.Checked then
  specstr := '1';
actstr := '0';
if SpecForm.ActCheckBox.Checked then
  actstr := '1';
// add speciality to the database
Command.CommandText :=
  'INSERT into Specialities (sp_Key, sp_Name, '+
  'sp_Specialization, sp_Kvalification, sp_ShortName, '+
  'sp_depcode, sp_isZaoch, sp_actual, sp_hasSpecialization) values ('''+
  SpecForm.KeyEdit.Text+''', '''+
  SpecForm.NameEdit.Text+''', '''+
  SpecForm.SpecializationEdit.Text+''', '''+
  SpecForm.KvalificationEdit.Text+''', '''+
  SpecForm.ShortNameEdit.Text+''', '''+
  MainForm.DepID+''', '+zaochstr+', '+actstr+', '+specstr+');';
Command.Execute;
SpecQuery.Requery([]);
end;
SpecForm.Free;

end;

procedure TSpecManForm.EditBtnClick(Sender: TObject);
var
SpecForm : TSpecForm;
pcode    : string;
actstr   : string;
specstr  : string;

begin
SpecForm := TSpecForm.Create(self);
SpecForm.KeyEdit.Text := SpecQuery.FieldByName('sp_key').AsString;
SpecForm.NameEdit.Text := SpecQuery.FieldByName('sp_Name').AsString;
SpecForm.SpecializationEdit.Text :=
    SpecQuery.FieldByName('sp_Specialization').AsString;
SpecForm.KvalificationEdit.Text :=
    SpecQuery.FieldByName('sp_Kvalification').AsString;
SpecForm.ShortNameEdit.Text :=
    SpecQuery.FieldByName('sp_ShortName').AsString;
pcode := SpecQuery.FieldByName('sp_pcode').AsString;
SpecForm.ActCheckBox.Checked := SpecQuery.FieldByName('sp_actual').AsBoolean;
SpecForm.SpecCheckBox.Checked := SpecQuery.FieldByName('sp_hasSpecialization').AsBoolean;
if SpecForm.ShowModal = mrOk then
begin
specstr := '0';
if SpecForm.SpecCheckBox.Checked then
  specstr := '1';
actstr := '0';
if SpecForm.ActCheckBox.Checked then
  actstr := '1';
// add speciality to the database
Command.CommandText :=
  'UPDATE Specialities SET sp_Key = '''+SpecForm.KeyEdit.Text+''', '+
  'sp_Name =  '''+SpecForm.NameEdit.Text+''', '+
  'sp_Specialization = '''+SpecForm.SpecializationEdit.Text+''', '+
  'sp_Kvalification = '''+SpecForm.KvalificationEdit.Text+''', '+
  'sp_actual = '+actstr+', '+
  'sp_hasSpecialization = '+specstr+', '+
  'sp_ShortName = '''+SpecForm.ShortNameEdit.Text+''' '+
  'WHERE sp_pcode = '''+pcode+''';';
//ShowMessage(Command.CommandText);
Command.Execute;
SpecQuery.Requery([]);
end;
SpecForm.Free;
end;

{
procedure TSpecManForm.DelBtnClick(Sender: TObject);
var
pcode : string;
begin
pcode := SpecQuery.FieldByName('sp_pcode').AsString;
if MessageDlg(DELETE_REQ,
          mtWarning,[mbYes, mbNo],0) = mrYes then
Command.CommandText :=
   'DELETE FROM Specialities WHERE sp_pcode = '''+pcode+''';';
Command.Execute;
SpecQuery.Requery([]);
end;
}

procedure TSpecManForm.GroupBtnClick(Sender: TObject);
var
groupman : TGroupManForm;
begin
groupman := TGroupManForm.Create(self);
groupman.Caption := GROUPMAN_CAPTION+SpecQuery.FieldByName('sp_Key').AsString;
groupman.ShowModal;
groupman.Free;
end;

procedure TSpecManForm.ComissionBtnClick(Sender: TObject);
var
form   : TDiplomeForm;
begin
form := TDiplomeForm.Create(self);
form.specID := SpecQuery.FieldByName('sp_pcode').AsString;
form.specName := SpecQuery.FieldByName('sp_Key').AsString+' "'+
  SpecQuery.FieldByName('sp_Name').AsString+'"';
form.Caption := 'Комиссии по специальности '+SpecQuery.FieldByName('sp_Comment').AsString;
with form.ComissionQuery.SQL do
 begin
 Clear;
 Add('SELECT * FROM Comissions, ComissionTypes WHERE (ct_pcode = com_ComissionType) AND (com_spcode = '''+
 SpecQuery.FieldByName('sp_pcode').AsString+''')');
 Add('ORDER BY com_Date');
 end;// with
form.ComissionQuery.Open;
form.ShowModal;
form.Free;
end;

procedure TSpecManForm.SpecDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := SpecQuery.Active;
EditBtn.Enabled := (SpecQuery.Active) and (SpecQuery.RecNo > 0);
GroupBtn.Enabled := (SpecQuery.Active) and (SpecQuery.RecNo > 0);
ComissionBtn.Enabled := (SpecQuery.Active) and (SpecQuery.RecNo > 0);
end;

procedure TSpecManForm.PlansBtnClick(Sender: TObject);
var
form : TStudyPlansListForm;
begin
form := TStudyPlansListForm.Create(self);
form.spCode := SpecQuery.FieldByName('sp_pcode').AsString;
form.isZaoch := MainForm.isZaoch;
form.Caption := 'Учебные планы ('+SpecQuery.FieldByName('sp_ShortName').AsString+')';
form.queryPlans;
form.ShowModal;
form.Free;
end;

end.
