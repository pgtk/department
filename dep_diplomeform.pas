unit dep_diplomeform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TDiplomeForm = class(TForm)
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    ComissionSource: TDataSource;
    ComissionGrid: TDBGrid;
    ComissionQuery: TADOQuery;
    Command: TADOCommand;
    DetailBtn: TButton;
    ReportBtn: TButton;
    KvalificationReportBtn: TButton;
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure MembersBtnClick(Sender: TObject);
    procedure SeminarsBtnClick(Sender: TObject);
    procedure ComissionSourceDataChange(Sender: TObject; Field: TField);
    procedure DetailBtnClick(Sender: TObject);
    procedure ReportBtnClick(Sender: TObject);
    procedure KvalificationReportBtnClick(Sender: TObject);
  private
  ASpecID : string;
  ASpecName : string;
    { Private declarations }
  public
  property specID: string read ASpecID write ASpecID;
  property specName: string read ASpecName write ASpecName;
    { Public declarations }
  end;

var
  DiplomeForm: TDiplomeForm;

implementation

uses dep_main, dep_diplomeeditform, kern, dep_membersform,
  dep_seminarsformform, dep_comissionrepform, dep_comissiongosrepform,
  dep_comissionkvalificationrepform;

{$R *.dfm}

procedure TDiplomeForm.AddBtnClick(Sender: TObject);
var
form : TDiplomeEditForm;
begin
form := TDiplomeEditForm.Create(self);
if form.ShowModal = mrOk then
begin
// добавить комиссию
Command.CommandText :=
'INSERT INTO Comissions(com_PDirector, com_PDFname, com_PDMname, com_PDLName, com_Members, '+
  'com_Sekretar, com_Date, com_ComissionType, com_spcode) VALUES('''+
  form.PDFNameEdit.Text+' '+form.PDMNameEdit.Text+' '+form.PDLNameEdit.Text+''', '''+
  form.PDFNameEdit.Text+''', '''+
  form.PDMNameEdit.Text+''', '''+
  form.PDLNameEdit.Text+''', '''+
  form.MembersEdit.Text+''', '''+
  form.SekretarEdit.Text+''', '''+
  DateToStr(form.DateEdit.Date)+''', '''+
  TContainer(form.TypeComboBox.Items.Objects[form.TypeComboBox.ItemIndex]).Key+''', '''+
  specID+'''); ';
Command.Execute;
ComissionQuery.Requery([]);
end;
form.Free;
end;

procedure TDiplomeForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning,[mbYes, mbNo],0) = mrYes then
begin
Command.CommandText :=
'DELETE FROM Comissions WHERE com_pcode = '''+
ComissionQuery.FieldByName('com_pcode').AsString+''';';
Command.Execute;
ComissionQuery.Requery([]);
end;
end;

procedure TDiplomeForm.EditBtnClick(Sender: TObject);
var
form : TDiplomeEditForm;
x    : integer;
b    : boolean;

begin
form := TDiplomeEditForm.Create(self);
form.DateEdit.Date := ComissionQuery.FieldByName('com_Date').AsDateTime;
form.PDFNameEdit.Text := ComissionQuery.FieldByName('com_PDFName').AsString;
form.PDMNameEdit.Text := ComissionQuery.FieldByName('com_PDMName').AsString;
form.PDLNameEdit.Text := ComissionQuery.FieldByName('com_PDLName').AsString;
form.SekretarEdit.Text := ComissionQuery.FieldByName('com_Sekretar').AsString;
form.MembersEdit.Text := ComissionQuery.FieldByName('com_Members').AsString;
b := ComissionQuery.FieldByName('com_isProject').AsBoolean;
if b then
  form.ProjectGroup.ItemIndex := 1
else
  form.ProjectGroup.ItemIndex := 0;
for x := 0 to form.TypeComboBox.Items.Count -1 do
  begin
  if ComissionQuery.FieldByName('com_ComissionType').AsString =
    TContainer(form.TypeComboBox.Items.Objects[x]).Key then
  form.TypeComboBox.ItemIndex := x;
  end;
if form.ShowModal = mrOk then
begin
// добавить комиссию
Command.CommandText :=
  'Update Comissions SET com_PDirector = '''+
  form.PDFNameEdit.Text+' '+form.PDMNameEdit.Text+' '+form.PDLNameEdit.Text+
  ''', com_PDFName = '''+form.PDFNameEdit.Text+
  ''', com_PDMName = '''+form.PDMNameEdit.Text+
  ''', com_PDLName = '''+form.PDLNameEdit.Text+
  ''', com_Sekretar = '''+form.SekretarEdit.Text+
  ''', com_Members = '''+form.MembersEdit.Text+
  ''', com_ComissionType = '''+TContainer(form.TypeComboBox.Items.Objects[
    form.TypeComboBox.ItemIndex]).Key+
  ''', com_Date = '''+DateToStr(form.DateEdit.Date)+
  ''', com_isProject = '''+IntToStr(form.ProjectGroup.ItemIndex)+
  ''' WHERE com_pcode = '''+ComissionQuery.FieldByName('com_pcode').AsString+'''; ';
Command.Execute;
ComissionQuery.Requery([]);
end;
form.Free;
end;

procedure TDiplomeForm.MembersBtnClick(Sender: TObject);
var
form : TMembersForm;
begin
form := TMembersForm.Create(self);
with form.MembersQuery do
begin
SQL.Clear;
SQL.Add('SELECT * FROM Members WHERE mem_comcode='''+
ComissionQuery.FieldByName('comv_pcode').AsString+''' ORDER BY mem_Name;');
Open;
end;
//form.ComissionID := ComissionQuery.FieldByName('comv_pcode').AsString;
form.ShowModal;
form.Free;
end;

procedure TDiplomeForm.SeminarsBtnClick(Sender: TObject);
var
form : TDetailForm;
begin
form := TDetailForm.Create(self);
form.ComissionID := ComissionQuery.FieldByName('comv_pcode').AsString;
with form.DetailQuery do
begin
SQL.Clear;
SQL.Add('SELECT * FROM SeminarsView WHERE sem_comcode='''+
ComissionQuery.FieldByName('comv_pcode').AsString+''';');
Open;
end;
form.ShowModal;
form.Free;
end;

procedure TDiplomeForm.ComissionSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := ComissionQuery.Active;
EditBtn.Enabled := (ComissionQuery.Active) and (ComissionQuery.RecNo > 0);
DelBtn.Enabled := (ComissionQuery.Active) and (ComissionQuery.RecNo > 0);
DetailBtn.Enabled := (ComissionQuery.Active) and (ComissionQuery.RecNo > 0);
ReportBtn.Enabled := (ComissionQuery.Active) and (ComissionQuery.RecNo > 0)
  and (ComissionQuery.FieldByName('com_ComissionType').AsInteger <> 5);
KvalificationReportBtn.Enabled := (ComissionQuery.Active) and (ComissionQuery.RecNo > 0)
  and (ComissionQuery.FieldByName('com_ComissionType').AsInteger = 5);
end;

procedure TDiplomeForm.DetailBtnClick(Sender: TObject);
var
form    : TDetailForm;
isZaoch : integer;

begin
form := TDetailForm.Create(self);
isZaoch := 0;
if (mainForm.isZaoch) then
isZaoch := 1;
with form.DetailQuery do
  begin
  SQL.Clear;
  SQL.Add('SELECT ss_pcode, st_FullName, st_pcode, gr_Name FROM Sessions, Students, Groups');
  SQL.Add('WHERE (ss_stcode = st_pcode) AND (gr_isZaoch = '+
  IntToStr(isZaoch)+') AND (st_grcode = gr_pcode) AND (ss_comcode = '''+
    ComissionQuery.FieldByName('com_pcode').AsString+''')');
  SQL.Add('ORDER BY gr_Name, st_FullName');
  Open;
  end;
form.specID := specID;
form.comissionID := ComissionQuery.FieldByName('com_pcode').AsString;
form.ShowModal;
form.Free;
end;

procedure TDiplomeForm.ReportBtnClick(Sender: TObject);
var
//rep : TComissionReportForm;
Drep : TComissionReportForm;
Grep : TComissionGOSReportForm;
dipl : boolean;
str  : string;
sub  : string;
pos  : integer;
c    : integer;
frm  : string;

const
blank = ' ____________/';

begin
frm := 'очной';
if mainform.isZaoch then frm := 'заочной';
dipl := ComissionQuery.FieldByName('com_isProject').AsBoolean;
str := ComissionQuery.FieldByName('com_Members').AsString;
sub := '';
pos := AnsiPos(',', str);
c := 0;
while pos > 0 do
  begin
  inc(c);
  sub := sub+blank+Copy(str, 1, pos-1);
  if 0 = (c mod 2) then
    sub := sub+#$D;
  str := Copy(str, pos+1, length(str)-(pos));
  pos := AnsiPos(',', str);
  end; // while
if (length(str) > 0) then
  sub := sub+blank+str;
if dipl then
  begin
  Drep := TComissionReportForm.Create(self);
  Drep.DateLabel.Caption := 'Дата: '+DateToStr(ComissionQuery.FieldByName('com_Date').AsDateTime);
  Drep.DescLabel.Caption := ComissionQuery.FieldByName('ct_Type').AsString+
    ' студентов '+frm+' формы обучения по специальности '+specName+'.';
  Drep.DirectorLabel.Caption := 'Председатель: '+
    ComissionQuery.FieldByName('com_PDFName').AsString+' '+
    Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
    Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1);
  Drep.MembersLabel.Caption := 'Члены комиссии: '+ComissionQuery.FieldByName('com_Members').AsString;
  Drep.MembersSignLabel.Caption := sub;
  Drep.PDirectorSignLabel.Caption := blank+
    Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
    Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1)+'. '+
    ComissionQuery.FieldByName('com_PDFName').AsString;
  Drep.SecretarSignLabel.Caption := blank+ComissionQuery.FieldByName('com_Sekretar').AsString;
  Drep.Query.SQL.Clear;
  Drep.Query.SQL.Add('EXEC GetComissionReport '''+
    ComissionQuery.FieldByName('com_pcode').AsString+'''');
  Drep.Query.Open;
  Drep.ComissionRep.Preview;
  Drep.Free;
  end
else
  begin
  Grep := TComissionGOSReportForm.Create(self);
  Grep.DateLabel.Caption := 'Дата: '+DateToStr(ComissionQuery.FieldByName('com_Date').AsDateTime);
  Grep.DescLabel.Caption := ComissionQuery.FieldByName('ct_Type').AsString+
    ' студентов '+frm+' формы обучения по специальности '+specName+'.';
  Grep.DirectorLabel.Caption := 'Председатель: '+
    ComissionQuery.FieldByName('com_PDFName').AsString+' '+
    Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
    Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1);
  Grep.MembersLabel.Caption := 'Члены комиссии: '+ComissionQuery.FieldByName('com_Members').AsString;
  Grep.MembersSignLabel.Caption := sub;
  Grep.PDirectorSignLabel.Caption := blank+
    Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
    Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1)+'. '+
    ComissionQuery.FieldByName('com_PDFName').AsString;
  Grep.SecretarSignLabel.Caption := blank+ComissionQuery.FieldByName('com_Sekretar').AsString;
  Grep.Query.SQL.Clear;
  Grep.Query.SQL.Add('EXEC GetComissionReport '''+
    ComissionQuery.FieldByName('com_pcode').AsString+'''');
  Grep.Query.Open;
  Grep.ComissionRep.Preview;
  Grep.Free;
  end;
end;

procedure TDiplomeForm.KvalificationReportBtnClick(Sender: TObject);
var
rep : TComissionKvalificationReportForm;
str  : string;
sub  : string;
pos  : integer;
c    : integer;
frm  : string;

const
blank = ' ____________/';

begin
frm := 'очной';
if mainform.isZaoch then frm := 'заочной';
str := ComissionQuery.FieldByName('com_Members').AsString;
sub := '';
pos := AnsiPos(',', str);
c := 0;
while pos > 0 do
  begin
  inc(c);
  sub := sub+blank+Copy(str, 1, pos-1);
  if 0 = (c mod 2) then
    sub := sub+#$D;
  str := Copy(str, pos+1, length(str)-(pos));
  pos := AnsiPos(',', str);
  end; // while
if (length(str) > 0) then
  sub := sub+blank+str;
rep := TComissionKvalificationReportForm.Create(self);
rep.DateLabel.Caption := 'Дата: '+DateToStr(ComissionQuery.FieldByName('com_Date').AsDateTime);
rep.DescLabel.Caption := ComissionQuery.FieldByName('ct_Type').AsString+
  ' студентов '+frm+' формы обучения по специальности '+specName+'.';
rep.DirectorLabel.Caption := 'Председатель: '+
  ComissionQuery.FieldByName('com_PDFName').AsString+' '+
  Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
  Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1);
rep.MembersLabel.Caption := 'Члены комиссии: '+ComissionQuery.FieldByName('com_Members').AsString;
rep.MembersSignLabel.Caption := sub;
rep.PDirectorSignLabel.Caption := blank+
  Copy(ComissionQuery.FieldByName('com_PDMName').AsString, 1, 1)+'. '+
  Copy(ComissionQuery.FieldByName('com_PDLName').AsString, 1, 1)+'. '+
  ComissionQuery.FieldByName('com_PDFName').AsString;
rep.SecretarSignLabel.Caption := blank+ComissionQuery.FieldByName('com_Sekretar').AsString;
rep.Query.SQL.Clear;
rep.Query.SQL.Add('EXEC GetComissionReport '''+
  ComissionQuery.FieldByName('com_pcode').AsString+'''');
rep.Query.Open;
rep.ComissionRep.Preview;
rep.Free;
end;

end.
