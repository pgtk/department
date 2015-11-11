unit dep_studentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Spin, DB, ADODB, Grids, DBGrids,
  Mask, ExtCtrls, QrCtrls, Menus, Word2000, OleServer, jpeg, dbTables;

type
  TStudentForm = class(TForm)
    PageControl: TPageControl;
    OkBtn: TButton;
    CancelBtn: TButton;
    PersonalSheet: TTabSheet;
    ParentsSheet: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PhoneGroupBox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AddrGroupBox: TGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    DiplomeSheet: TTabSheet;
    Label11: TLabel;
    DocumSheet: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    InGroupBox: TGroupBox;
    Label17: TLabel;
    ParentsQuery: TADOQuery;
    ParentsCommand: TADOCommand;
    ParentsDataSourse: TDataSource;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    PlaceQuery: TADOQuery;
    PlaceDataSource: TDataSource;
    ParentsGroupBox: TGroupBox;
    PAddBtn: TButton;
    PEditBtn: TButton;
    PDelBtn: TButton;
    ParentsGrid: TDBGrid;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GroupBox3: TGroupBox;
    PlaceComboBox: TDBLookupComboBox;
    StPhoto: TDBImage;
    IsMaleEdit: TDBComboBox;
    TestsEdit: TDBComboBox;
    HotelCheckBox: TDBCheckBox;
    HomePhoneEdit: TDBEdit;
    CellPhoneEdit: TDBEdit;
    WorkPhoneEdit: TDBEdit;
    AddressEdit: TDBEdit;
    FNameEdit: TDBEdit;
    MNameEdit: TDBEdit;
    LNameEdit: TDBEdit;
    BirthDateEdit: TDBEdit;
    BirthDateLookupBtn: TButton;
    DocumentsEdit: TDBMemo;
    PassptDeptEdit: TDBMemo;
    PassptSeriaEdit: TDBEdit;
    PassptNumEdit: TDBEdit;
    PassptDateEdit: TDBEdit;
    GetDateLookupBtn: TButton;
    PolisNumEdit: TDBEdit;
    PolisSeriaEdit: TDBEdit;
    INNEdit: TDBEdit;
    SocialNumEdit: TDBEdit;
    BankDepEdit: TDBEdit;
    BankNumEdit: TDBEdit;
    DiplGetDateEdit: TDBEdit;
    DiplGetDateLookupBtn: TButton;
    DiplNumEdit: TDBEdit;
    DiplRegNumEdit: TDBEdit;
    ZipCodeEdit: TDBEdit;
    Label35: TLabel;
    IsCommercialCheckBox: TDBCheckBox;
    SchoolComboBox: TDBLookupComboBox;
    SchoolQuery: TADOQuery;
    SchoolDataSource: TDataSource;
    ParentLessEdit: TDBCheckBox;
    StudentQuery: TADOQuery;
    StudentsDataSource: TDataSource;
    InYearEdit: TDBEdit;
    OutYearEdit: TDBEdit;
    GroupBox4: TGroupBox;
    FirstDiplomeFormBtn: TButton;
    SecondDiplomeFormBtn: TButton;
    IsDiplomeCopyCheckBox: TCheckBox;
    DiplomingGroupBox: TGroupBox;
    Label18: TLabel;
    DProjectEdit: TDBEdit;
    Label19: TLabel;
    ExamDateEdit: TDBEdit;
    ExamDateLookupBtn: TButton;
    DMarkEdit: TDBEdit;
    Label23: TLabel;
    GOSGroupBox: TGroupBox;
    Label36: TLabel;
    GOSDateEdit: TDBEdit;
    GOSLookupBtn: TButton;
    Label37: TLabel;
    GOSMarkEdit: TDBEdit;
    Label38: TLabel;
    GOSNameEdit: TDBEdit;
    Label39: TLabel;
    ComissionDateEdit: TDBEdit;
    ComissionDateLookupBtn: TButton;
    Label40: TLabel;
    BeginSchoolComboBox: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    AcademSheet: TTabSheet;
    AcademSource: TDataSource;
    AcademQuery: TADOQuery;
    AcademGrid: TDBGrid;
    AddAcademBtn: TButton;
    EditAcademBtn: TButton;
    DelAcademBtn: TButton;
    PrintAcademBtn: TButton;
    Label41: TLabel;
    LangLookupComboBox: TDBLookupComboBox;
    LangQuery: TADOQuery;
    LangSource: TDataSource;
    DBCheckBox2: TDBCheckBox;
    SprBtn: TButton;
    PhotoPopupMenu: TPopupMenu;
    FileOpenItem: TMenuItem;
    TWAINOpenItem: TMenuItem;
    N1: TMenuItem;
    IsOldDiplomeCheckBox: TCheckBox;
    IsOldAcademCheckBox: TCheckBox;
    IsSlimCheckBox: TCheckBox;
    IsSlimAcademCheckBox: TCheckBox;
    AdditionalTabSheet: TTabSheet;
    GroupBox5: TGroupBox;
    DFnameLabel: TLabel;
    DMNameLabel: TLabel;
    DLnameLabel: TLabel;
    DFNameEdit: TDBEdit;
    DMNameEdit: TDBEdit;
    DLNameEdit: TDBEdit;
    DiplomCopyBtn: TButton;
    isDuplicateCheckBox: TCheckBox;
    InKindCheckBox: TDBCheckBox;
    OutKindCheckBox: TDBCheckBox;
    WordCheckBox: TCheckBox;
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    StudentQueryst_FName: TStringField;
    StudentQueryst_MName: TStringField;
    StudentQueryst_LName: TStringField;
    StudentQueryst_BirthDate: TDateTimeField;
    StudentQueryst_Education: TStringField;
    StudentQueryst_ZipCode: TStringField;
    StudentQueryst_Address: TStringField;
    StudentQueryst_Documents: TStringField;
    StudentQueryst_OldSchool: TStringField;
    StudentQueryst_Tests: TStringField;
    StudentQueryst_InYear: TSmallintField;
    StudentQueryst_OutYear: TSmallintField;
    StudentQueryst_DProject: TStringField;
    StudentQueryst_DMark: TWordField;
    StudentQueryst_DiplGetDate: TDateTimeField;
    StudentQueryst_ExamDate: TDateTimeField;
    StudentQueryst_DiplNum: TStringField;
    StudentQueryst_DiplRegNum: TIntegerField;
    StudentQueryst_StudNumber: TSmallintField;
    StudentQueryst_ParentLess: TBooleanField;
    StudentQueryst_Hotel: TBooleanField;
    StudentQueryst_IsMale: TBooleanField;
    StudentQueryst_oldsccode: TGuidField;
    StudentQueryst_sccode: TGuidField;
    StudentQueryst_WorkPhone: TStringField;
    StudentQueryst_HomePhone: TStringField;
    StudentQueryst_Attributes: TWordField;
    StudentQueryst_IsCommercial: TBooleanField;
    StudentQueryst_CellPhone: TStringField;
    StudentQueryst_PassptDate: TDateTimeField;
    StudentQueryst_PassptDept: TStringField;
    StudentQueryst_Passport: TStringField;
    StudentQueryst_INN: TStringField;
    StudentQueryst_PolisSeria: TIntegerField;
    StudentQueryst_PolisNum: TLargeintField;
    StudentQueryst_Polis: TStringField;
    StudentQueryst_SocialNum: TStringField;
    StudentQueryst_BankNum: TStringField;
    StudentQueryst_BankDep: TStringField;
    StudentQueryst_Photo: TBlobField;
    StudentQueryst_Gender: TStringField;
    StudentQueryst_pcode: TGuidField;
    StudentQueryst_grcode: TGuidField;
    StudentQueryst_plcode: TGuidField;
    StudentQueryst_FullName: TStringField;
    StudentQueryst_Name: TStringField;
    StudentQueryst_oldcode: TLargeintField;
    StudentQueryst_Phones: TStringField;
    StudentQueryst_GOSDate: TDateTimeField;
    StudentQueryst_GOSMark: TWordField;
    StudentQueryst_GOSName: TStringField;
    StudentQueryst_ComissionDate: TDateTimeField;
    StudentQueryst_IsAdditional: TBooleanField;
    StudentQueryst_Lang: TWordField;
    StudentQueryst_IsRed: TBooleanField;
    StudentQueryst_DFName: TStringField;
    StudentQueryst_DMName: TStringField;
    StudentQueryst_DLName: TStringField;
    StudentQueryst_DFullName: TStringField;
    StudentQueryst_isInZaoch: TBooleanField;
    StudentQueryst_isOutZaoch: TBooleanField;
    StudentQueryst_PassptSeria: TStringField;
    StudentQueryst_PassptNum: TStringField;
    BirthPlaceEdit: TDBEdit;
    Label42: TLabel;
    StudentQueryst_BirthPlace: TStringField;
    Label43: TLabel;
    DocumentsSeriaEdit: TDBEdit;
    Label44: TLabel;
    DocumentsNumberEdit: TDBEdit;
    DocumentsYearEdit: TDBEdit;
    Label45: TLabel;
    Label15: TLabel;
    StudNumberEdit: TDBEdit;
    StudentQueryst_DocumentsYear: TIntegerField;
    StudentQueryst_DocumentsSeria: TStringField;
    StudentQueryst_DocumentsNumber: TStringField;
    OutCommandEdit: TDBEdit;
    Label46: TLabel;
    StudentQueryst_outcommand: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure HotelCheckBoxClick(Sender: TObject);
    procedure IsMaleEditChange(Sender: TObject);
    procedure TestsEditChange(Sender: TObject);
    procedure ParentLessEditClick(Sender: TObject);
    procedure PAddBtnClick(Sender: TObject);
    procedure ParentsDataSourseDataChange(Sender: TObject; Field: TField);
    procedure PDelBtnClick(Sender: TObject);
    procedure PEditBtnClick(Sender: TObject);
    procedure BirthDateLookupBtnClick(Sender: TObject);
    procedure GetDateLookupBtnClick(Sender: TObject);
    procedure DiplGetDateLookupBtnClick(Sender: TObject);
    procedure ExamDateLookupBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FirstDiplomeFormBtnClick(Sender: TObject);
    procedure ComissionDateLookupBtnClick(Sender: TObject);
    procedure GOSLookupBtnClick(Sender: TObject);
    procedure SecondDiplomeFormBtnClick(Sender: TObject);
    procedure AddAcademBtnClick(Sender: TObject);
    procedure DelAcademBtnClick(Sender: TObject);
    procedure EditAcademBtnClick(Sender: TObject);
    procedure PrintAcademBtnClick(Sender: TObject);
    procedure AcademSourceDataChange(Sender: TObject; Field: TField);
    procedure SprBtnClick(Sender: TObject);
    procedure TWAINOpenItemClick(Sender: TObject);
    procedure FileOpenItemClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DiplomCopyBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentForm   : TStudentForm;
  hdib, testdib : hbitmap;
  w, h, n       : integer;

implementation

uses dep_main, dep_schoolform, dep_placeform, kern, dep_parentsform,
  dep_datelookupform, MultiTWAIN, dep_addsubjectform, dep_diplomerepform1,
  dep_diplomerepform2, dep_academdetailsform, dep_academrepform1,
  dep_academrepform2, contr_groupsreport, dep_sprform,
  dep_newacademrepform1,
  dep_newacademrepform2, dep_diplomecopyrepform, dep_diplome2repform1,
  customlookupform, dep_diplome2repform2, dep_diplome2copyrepform;

{$R *.dfm}


procedure CallbackFxn(CurDib: THandle; index: Integer); stdcall;
begin
//   MessageBox(0, 'Called back!', 'CallbackFxn', mb_ok);
end;

procedure TStudentForm.FormCreate(Sender: TObject);
begin
// Инициализация начальных параметров
InYearEdit.Text := IntToStr(CurrentYear);
OutYearEdit.Text := IntToStr(CurrentYear);
IsMaleEdit.ItemIndex := 0;
ParentsQuery.Connection := MainForm.Connection;
LangQuery.Connection := MainForm.Connection;
//if ParentsQuery.Active then
//ParentsQuery.Close;
if not PlaceQuery.Active then
PlaceQuery.Open;
if not SchoolQuery.Active then
SchoolQuery.Open;
if not LangQuery.Active then
LangQuery.Open;
// added for TWAIN :)
hDib := 0;
w := 0; h := 0;
testDib := 0;
TWAIN_RegisterCallback(CallbackFxn);
end;



procedure TStudentForm.IsMaleEditChange(Sender: TObject);
begin
if IsMaleEdit.ItemIndex >= 0 then
  TestsEdit.ItemIndex := IsMaleEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Tests').AsString := TestsEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.TestsEditChange(Sender: TObject);
begin
if (TestsEdit.ItemIndex >= 0) and (TestsEdit.ItemIndex < 2) then
  IsMaleEdit.ItemIndex := TestsEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Gender').AsString := IsMaleEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.ParentLessEditClick(Sender: TObject);
begin
if (StudentQuery.State = dsInsert) then
 begin
 ParentsQuery.Active := false;
 ParentsGroupBox.Visible := false;
end
else if (StudentQuery.State = dsEdit) then
 begin
 ParentsQuery.Active := not ParentLessEdit.Checked;
 ParentsGroupBox.Visible := not ParentLessEdit.Checked;
end;
end;

procedure TStudentForm.PAddBtnClick(Sender: TObject);
var
pform : TParentsForm;
allow : boolean;
begin
allow := false;
pform := TParentsForm.Create(self);
repeat
if pform.ShowModal = mrOk then
begin
ParentsQuery.Filtered := false;
ParentsQuery.Filter := 'pr_IsMother = '''+IntToStr(pform.IsMotherComboBox.ItemIndex)+'''';
ParentsQuery.Filtered := true;
allow := ParentsQuery.RecordCount = 0;
ParentsQuery.Filtered := false;
if allow then
begin
ParentsCommand.CommandText :=
'INSERT INTO Parents(pr_FName, pr_MName, pr_LName, pr_JobPlace, pr_Job, '+
'pr_WorkPhone, pr_HomePhone, pr_CellPhone, pr_IsMother, pr_IsNativ, pr_Note, pr_stcode) '+
' VALUES ('''+pform.FNameEdit.Text+''', '''+pform.MNameEdit.Text+''', '''+
pform.LNameEdit.Text+''', '''+pform.JobPlaceEdit.Text+''', '''+pform.JobEdit.Text+''', '''+
pform.WorkPhoneEdit.Text+''', '''+pform.HomePhoneEdit.Text+''', '''+pform.CellPhoneEdit.Text+''', '''+
IntToStr(pform.IsMotherComboBox.ItemIndex)+''', '''+IntToStr(pform.IsNativComboBox.ItemIndex)+''', '''+
pform.NoteEdit.Lines.Text+''', '''+MainForm.StudentsQuery.FieldByName('st_pcode').AsString+''');';
ParentsCommand.Execute;
ParentsQuery.Requery([]);
end else
MessageDlg('Не может быть двух матерей или отцов',mtError,[mbOk],0);
end else
break;
until (allow);
pform.Free;
end;

procedure TStudentForm.HotelCheckBoxClick(Sender: TObject);
begin
AddrGroupBox.Enabled := not HotelCheckBox.Checked;
end;

procedure TStudentForm.ParentsDataSourseDataChange(Sender: TObject;
  Field: TField);
begin
PEditBtn.Enabled := ParentsQuery.RecordCount > 0;
PDelBtn.Enabled := ParentsQuery.RecordCount > 0;
PAddBtn.Enabled := ParentsQuery.RecordCount < 2;
end;

procedure TStudentForm.PDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
begin
ParentsCommand.CommandText := 'DELETE FROM Parents WHERE pr_pcode = '''+
  ParentsQuery.FieldByName('pr_pcode').AsString+''';';
ParentsCommand.Execute;
ParentsQuery.Requery([]);
end;
end;

procedure TStudentForm.PEditBtnClick(Sender: TObject);
var
pform : TParentsForm;
allow : boolean;
b     : boolean;
count : integer;
begin
allow := false;
count := ParentsQuery.RecordCount;
pform := TParentsForm.Create(self);
pform.IsMotherComboBox.Enabled := count < 2;
pform.FNameEdit.Text := ParentsQuery.FieldByName('pr_FName').AsString;
pform.MNameEdit.Text := ParentsQuery.FieldByName('pr_MName').AsString;
pform.LNameEdit.Text := ParentsQuery.FieldByName('pr_LName').AsString;
b := ParentsQuery.FieldByName('pr_IsMother').AsBoolean;
if b then
 pform.IsMotherComboBox.ItemIndex := 1
 else
 pform.IsMotherComboBox.ItemIndex := 0;
b := ParentsQuery.FieldByName('pr_IsNativ').AsBoolean;
if b then
 pform.IsNativComboBox.ItemIndex := 1
 else
 pform.IsNativComboBox.ItemIndex := 0;
pform.WorkPhoneEdit.Text := ParentsQuery.FieldByName('pr_WorkPhone').AsString;
pform.HomePhoneEdit.Text := ParentsQuery.FieldByName('pr_HomePhone').AsString;
pform.CellPhoneEdit.Text := ParentsQuery.FieldByName('pr_CellPhone').AsString;
pform.JobPlaceEdit.Text := ParentsQuery.FieldByName('pr_JobPlace').AsString;
pform.JobEdit.Text := ParentsQuery.FieldByName('pr_Job').AsString;
pform.NoteEdit.Text := ParentsQuery.FieldByName('pr_Note').AsString;
repeat
if pform.ShowModal = mrOk then
begin
ParentsQuery.Filtered := false;
ParentsQuery.Filter := 'pr_IsMother = '''+IntToStr(pform.IsMotherComboBox.ItemIndex)+'''';
ParentsQuery.Filtered := true;
allow := (count - ParentsQuery.RecordCount) = 1;
ParentsQuery.Filtered := false;
if allow then
begin
ParentsCommand.CommandText :=
'UPDATE Parents SET '+
'pr_FName = '''+pform.FNameEdit.Text+''', pr_MName = '''+pform.MNameEdit.Text+''', '+
'pr_LName = '''+pform.LNameEdit.Text+''', pr_JobPlace = '''+pform.JobPlaceEdit.Text+''', '+
'pr_Job = '''+pform.JobEdit.Text+''', pr_WorkPhone = '''+pform.WorkPhoneEdit.Text+''', '+
'pr_HomePhone = '''+pform.HomePhoneEdit.Text+''', pr_CellPhone = '''+pform.CellPhoneEdit.Text+''', '+
'pr_IsMother = '''+IntToStr(pform.IsMotherComboBox.ItemIndex)+''', pr_IsNativ = '''+
IntToStr(pform.IsNativComboBox.ItemIndex)+''', pr_Note = '''+pform.NoteEdit.Lines.Text+
''' WHERE pr_pcode = '''+ParentsQuery.FieldByName('pr_pcode').AsString+''';';
ParentsCommand.Execute;
ParentsQuery.Requery([]);
end else
MessageDlg('Не может быть двух матерей или отцов',mtError,[mbOk],0);
end else
break;
until (allow);
pform.Free;
end;

procedure TStudentForm.BirthDateLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
BirthDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;

procedure TStudentForm.GetDateLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
PassptDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;

procedure TStudentForm.DiplGetDateLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
DiplGetDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;

procedure TStudentForm.ExamDateLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
ExamDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;

procedure TStudentForm.FormShow(Sender: TObject);
begin
if (StudentQuery.State = dsInsert) then
 begin
 IsMaleEdit.ItemIndex := 0;
 ParentsQuery.Active := false;
 ParentsGroupBox.Visible := false;
end
else if (StudentQuery.State = dsEdit) then
 begin
 ParentsQuery.Active := not ParentLessEdit.Checked;
 ParentsGroupBox.Visible := not ParentLessEdit.Checked;
 end;
end;

procedure TStudentForm.OkBtnClick(Sender: TObject);
begin
StudentQuery.Post;
StudentQuery.Close;
end;

procedure TStudentForm.CancelBtnClick(Sender: TObject);
begin
StudentQuery.CanCel;
StudentQuery.Close;
end;

procedure TStudentForm.FirstDiplomeFormBtnClick(Sender: TObject);
var
orep           : TDiplomeRepForm1;
nrep           : TDiplome2RepForm1;
tmpquery      : TADOQuery;
st_sccode     : string;
st_oldsccode  : string;
x             : integer;
lb            : TQRLabel;
pages         : integer;
lines         :integer;
iformstr       : string;
oformstr       : string;

// Export to Word
Shablon   : OleVariant;
FileName  : OleVariant;
oldStr    : OleVariant;
newStr    : OleVariant;
replace   : OleVariant;



begin
if (WordCheckBox.Checked and
  FileExists(ExtractFilePath(Application.EXEName)+'diplome1tmpl.doc')) then
begin
try
  Shablon:=ExtractFilePath(Application.EXEName)+'diplome1tmpl.doc';
  FileName:=ExtractFilePath(Application.EXEName)+
    StudentQuery.FieldByName('st_FName').AsString+'_'+
    StudentQuery.FieldByName('st_MName').AsString+'-1.doc';
  //Открываем шаблон документа
  WordApp.Documents.Open(Shablon, EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam);
  //Связываем компоненту с существующим интерфейсом
  WordDoc.ConnectKind:=ckAttachToInterface;
  WordDoc.ConnectTo(WordApp.ActiveDocument);
  //Следующие переменные понадобятся нам для выполнения методов сервера
  replace:=1;
  iformstr := ' (очная форма)';
  if (StudentQuery.FieldByName('st_isInZaoch').AsBoolean) then
      iformstr := ' (заочная форма)';
  oformstr := ' (очная форма)';
  if (StudentQuery.FieldByName('st_isOutZaoch').AsBoolean) then
      oformstr := ' (заочная форма)';

  st_oldsccode := StudentQuery.FieldByName('st_oldsccode').AsString;
  st_sccode := StudentQuery.FieldByName('st_sccode').AsString;
  if (st_sccode <> '') and (st_oldsccode <> '') then
  begin
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
//  rep.FIOLabel.Caption := StudentQuery.FieldByName('st_FullName').AsString;
  oldStr:='FIOLabel'; newStr:=StudentQuery.FieldByName('st_FullName').AsString;
  WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//  rep.BirthDateLabel.Caption :=
//    GetDateStr(StudentQuery.FieldByName('st_BirthDate').AsDateTime)+' года';
  oldStr:='BirthDateLabel';
  newStr:=GetDateStr(StudentQuery.FieldByName('st_BirthDate').AsDateTime)+' года';
  WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//  rep.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString;
  oldStr:='DocumentLabel';
  newStr:=StudentQuery.FieldByName('st_Documents').AsString;
  WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//  rep.TestsResultLabel.Caption := StudentQuery.FieldByName('st_Tests').AsString;
  oldStr:='TestsResultLabel';
  newStr:=StudentQuery.FieldByName('st_Tests').AsString;
  WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM DiplomeRepView1 WHERE (drv_stcode = '''+
    StudentQuery.FieldByName('st_pcode').AsString+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
//    rep.ComeInLabel.Caption := tmpquery.FieldByName('drv_InYear').AsString+' году в '+
//      tmpquery.FieldByName('drv_InScName').AsString+iformstr;
    oldStr:='ComeInLabel';
    newStr:=tmpquery.FieldByName('drv_InYear').AsString+' году в '+
      tmpquery.FieldByName('drv_InScName').AsString+iformstr;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);

//    rep.ComeOutLabel.Caption := tmpquery.FieldByName('drv_OutYear').AsString+' году в '+
//      tmpquery.FieldByName('drv_OutScName').AsString+oformstr;
    oldStr:='ComeOutLabel';
    newStr:=tmpquery.FieldByName('drv_OutYear').AsString+' году в '+
      tmpquery.FieldByName('drv_OutScName').AsString+iformstr;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    if (tmpquery.FieldByName('drv_isAdditional').AsBoolean) then
      begin
//      rep.StudyTimeLabel.Caption := tmpquery.FieldByName('drv_ShortLernLength').AsString
      oldStr:='StudyTimeLabel';
      newStr:=tmpquery.FieldByName('drv_ShortLernLength').AsString;
      WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end
    else
      begin
//      rep.StudyTimeLabel.Caption := tmpquery.FieldByName('drv_LernLength').AsString;
      oldStr:='StudyTimeLabel';
      newStr:=tmpquery.FieldByName('drv_LernLength').AsString;
      WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;
//    rep.FullSpecialityLabel.Caption := rep.SpecialityLabel.Caption;
    oldStr:='FullSpecialityLabel';
    newStr:=tmpquery.FieldByName('drv_SpName').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.SpecialityLabel.Caption := tmpquery.FieldByName('drv_SpName').AsString;
    oldStr:='SpecialityLabel';
    newStr:=tmpquery.FieldByName('drv_SpName').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.SpecializationLabel.Caption := tmpquery.FieldByName('drv_Specialization').AsString;
    oldStr:='SpecializationLabel';
    newStr:=tmpquery.FieldByName('drv_Specialization').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.NumberLabel.Caption := tmpquery.FieldByName('drv_DiplNum').AsString;
    oldStr:='NumberLabel';
    newStr:=tmpquery.FieldByName('drv_DiplNum').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.RegNumLabel.Caption := tmpquery.FieldByName('drv_DiplRegNum').AsString;
    oldStr:='RegNumLabel';
    newStr:=tmpquery.FieldByName('drv_DiplRegNum').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.DiplomeGetDateLabel.Caption := GetDateStr(tmpquery.FieldByName('drv_DiplGetDate').AsDateTime);
    oldStr:='DiplomeGetDateLabel';
    newStr:=GetDateStr(tmpquery.FieldByName('drv_DiplGetDate').AsDateTime);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.ComissionDateLabel.Caption :=
//      GetDateStr(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
    oldStr:='ComissionDateLabel';
    newStr:=GetDateStr(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    if ('' <> Trim(tmpquery.FieldByName('drv_Dproject').AsString)) then
      begin
      //rep.DiplomeThemeLabel.Caption := '"'+tmpquery.FieldByName('drv_Dproject').AsString+'"'
      oldStr:='DiplomeThemeLabel';
      newStr:='"'+tmpquery.FieldByName('drv_Dproject').AsString+'"';
      WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end
    else
      begin
      //rep.DiplomeThemeLabel.Caption := 'Не предусмотрено';
      oldStr:='DiplomeThemeLabel';
      newStr:= 'Не предусмотрено';
      WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;
//    rep.DiplomeMark.Caption := tmpquery.FieldByName('drv_DMark').AsString;
    oldStr:='DiplomeMark';

    newStr:= MarkToStr(tmpquery.FieldByName('drv_DMark').AsInteger);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    oldStr:='KvalificationLabel';
    newStr:= tmpquery.FieldByName('drv_Kvalification').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  //----------------
  //  rep.FGOSLabel.Caption := tmpquery.FieldByName('drv_GOSName').AsString;
  //----------------
  //    rep.FGOSMark.Caption := tmpquery.FieldByName('drv_GOSMark').AsString;
    oldStr:='FGOSMark';
    newStr:= MarkToStr(tmpquery.FieldByName('drv_GOSMark').AsInteger);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end;
  // Учебное заведение
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
//    rep.PlaceLabel.Caption := tmpquery.FieldByName('sc_Place').AsString;
    oldStr:='PlaceLabel';
    newStr:= tmpquery.FieldByName('sc_Place').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//    rep.SchoolLabel.Caption := tmpquery.FieldByName('sc_Name').AsString;
    oldStr:='SchoolLabel';
    newStr:= tmpquery.FieldByName('sc_Name').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end;
  // Оценки за Гос Экзамены
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM DiplomeGOSView WHERE (dgv_stcode = '''+
    StudentQuery.FieldByName('st_pcode').AsString+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    oldStr:='GOSTitle'+IntToStr(x);
    newStr:= IntToStr(x)+'. '+tmpquery.FieldByName('dgv_Title').AsString+', '+
      MarkToStr(tmpquery.FieldByName('dgv_Mark').AsInteger);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end;
  tmpquery.Free;
  end else
  MessageDlg(ST_ERROR,mtError,[mbOk],0);
  WordDoc.SaveAs(FileName);
  WordDoc.Close;
  MessageDlg('Данные выгружены в файл '+FileName+'.', mtInformation, [mbOk], 0);
except
On e: Exception do
  MessageDlg('Ошибка "'+
    e.Message+'"', mtError, [mbOk], 0);
end; // try
end else
if isOldDiplomeCheckBox.Checked then
  //====================
  // Старые бланки
  //====================
  begin
  iformstr := ' (очная форма)';
  if (StudentQuery.FieldByName('st_isInZaoch').AsBoolean) then
    iformstr := ' (заочная форма)';
  oformstr := ' (очная форма)';
  if (StudentQuery.FieldByName('st_isOutZaoch').AsBoolean) then
    oformstr := ' (заочная форма)';

  st_oldsccode := StudentQuery.FieldByName('st_oldsccode').AsString;
  st_sccode := StudentQuery.FieldByName('st_sccode').AsString;
  if (st_sccode <> '') and (st_oldsccode <> '') then
  begin
  orep := TDiplomeRepForm1.Create(self);
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  orep.isCopy := isDiplomeCopyCheckBox.Checked;
  orep.isDuplicate := isDuplicateCheckBox.Checked;
  orep.FIOLabel.Caption := StudentQuery.FieldByName('st_FullName').AsString;
  orep.BirthDateLabel.Caption :=
    GetDateStr(StudentQuery.FieldByName('st_BirthDate').AsDateTime)+' года';
  orep.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString;
//  orep.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString+
//    ', серия '+StudentQuery.FieldByName('st_DocumentsSeria').AsString+
//    ' №'+StudentQuery.FieldByName('st_DocumentsNumber').AsString+
//    ', '+StudentQuery.FieldByName('st_DocumentsYear').AsString+' года';
  orep.TestsResultLabel.Caption := StudentQuery.FieldByName('st_Tests').AsString;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM DiplomeRepView1 WHERE (drv_stcode = '''+
    StudentQuery.FieldByName('st_pcode').AsString+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    orep.ComeInLabel.Caption := tmpquery.FieldByName('drv_InYear').AsString+' году в '+
      tmpquery.FieldByName('drv_InScName').AsString+iformstr;
    orep.ComeOutLabel.Caption := tmpquery.FieldByName('drv_OutYear').AsString+' году в '+
      tmpquery.FieldByName('drv_OutScName').AsString+oformstr;
    if (tmpquery.FieldByName('drv_isAdditional').AsBoolean) then
      orep.StudyTimeLabel.Caption := tmpquery.FieldByName('drv_ShortLernLength').AsString
    else
      orep.StudyTimeLabel.Caption := tmpquery.FieldByName('drv_LernLength').AsString;
    orep.SpecialityLabel.Caption := tmpquery.FieldByName('drv_SpName').AsString;
    orep.FullSpecialityLabel.Caption := orep.SpecialityLabel.Caption;
    orep.SpecializationLabel.Caption := tmpquery.FieldByName('drv_Specialization').AsString;
    orep.NumberLabel.Caption := tmpquery.FieldByName('drv_DiplNum').AsString;
    orep.RegNumLabel.Caption := tmpquery.FieldByName('drv_DiplRegNum').AsString;
    orep.DiplomeGetDateLabel.Caption :=
      GetDateStr(tmpquery.FieldByName('drv_DiplGetDate').AsDateTime);
    orep.ComissionDateLabel.Caption :=
      GetDateStr(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
      if ('' <> Trim(tmpquery.FieldByName('drv_Dproject').AsString)) then
    orep.DiplomeThemeLabel.Caption := '"'+tmpquery.FieldByName('drv_Dproject').AsString+'"' else
    orep.DiplomeThemeLabel.Caption := 'Не предусмотрено';
    orep.DiplomeMark.Caption := tmpquery.FieldByName('drv_DMark').AsString;
    orep.DiplomeGetDateLabel.Caption :=
      GetDateStr(tmpquery.FieldByName('drv_DiplGetDate').AsDateTime);
    orep.KvalificationLabel.Caption := tmpquery.FieldByName('drv_Kvalification').AsString;
  //----------------
  //  rep.FGOSLabel.Caption := tmpquery.FieldByName('drv_GOSName').AsString;
  //----------------
    orep.FGOSMark.Caption := tmpquery.FieldByName('drv_GOSMark').AsString;
    end;
  // Учебное заведение
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    orep.PlaceLabel.Caption := tmpquery.FieldByName('sc_Place').AsString;
    orep.SchoolLabel.Caption := tmpquery.FieldByName('sc_Name').AsString;
    end;
  // Оценки за Гос Экзамены
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM DiplomeGOSView WHERE (dgv_stcode = '''+
    StudentQuery.FieldByName('st_pcode').AsString+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    lb := TQRLabel(orep.FindComponent('GOSTitle'+IntToStr(x)));
    if lb <> NIL then
      lb.Caption := IntToStr(x)+'. '+tmpquery.FieldByName('dgv_Title').AsString+', '+
      MarkToStr(tmpquery.FieldByName('dgv_Mark').AsInteger);
    end;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('EXEC GetMarksList '''+
  StudentQuery.FieldByName('st_pcode').AsString+'''');
  tmpquery.Open;
  //showmessage(IntToStr(tmpquery.RecordCount));
  if not isSlimCheckBox.Checked then
  begin
    lines := LINESCOUNT;
    if 0 < (tmpquery.RecordCount mod LINESCOUNT) then
      pages := (tmpquery.RecordCount div lines)+1 else
      pages := (tmpquery.RecordCount div lines);
  end else pages := 1;
  orep.PagesCountLabel.Caption := orep.PagesCountLabel.Caption+' '+intToStr(pages);
  orep.DiplomeRep1.PreviewModal;
  tmpquery.Free;
  orep.Free;
  end else
  MessageDlg(ST_ERROR,mtError,[mbOk],0);

  end else begin
  //======================
  // Новые бланки
  //======================
  nrep := TDiplome2RepForm1.Create(self);
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  nrep.isCopy := isDiplomeCopyCheckBox.Checked;
  nrep.isDuplicate := isDuplicateCheckBox.Checked;
  nrep.FNameLabel.Caption := StudentQuery.FieldByName('st_DFName').AsString;
  nrep.MNameLabel.Caption := StudentQuery.FieldByName('st_DMName').AsString;
  nrep.LNameLabel.Caption := StudentQuery.FieldByName('st_DLName').AsString;
  nrep.NumLabel.Caption := StudentQuery.FieldByName('st_DiplNum').AsString;
  nrep.RegNumLabel.Caption := StudentQuery.FieldByName('st_DiplRegNum').AsString;
  nrep.BirthDateDayLabel.Caption := GetNewDateDay(StudentQuery.FieldByName('st_BirthDate').AsDateTime);
  nrep.BirthDateMonthLabel.Caption := GetNewDateMonth(StudentQuery.FieldByName('st_BirthDate').AsDateTime);
  nrep.BirthDateYearLabel.Caption := GetNewDateYear(StudentQuery.FieldByName('st_BirthDate').AsDateTime);
  nrep.BirthPlaceLabel.Caption := StudentQuery.FieldByName('st_BirthPlace').AsString;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    nrep.SchoolNameLabel.Caption := tmpquery.FieldByName('sc_Name').AsString+#$D+#$D+
      tmpquery.FieldByName('sc_Place').AsString;
    end;
  tmpquery.Close;
  tmpquery.SQL.Clear();
  tmpquery.SQL.Add('SELECT * FROM Specialities, Groups WHERE (sp_pcode = gr_speccode) AND (gr_pcode = '''+
    StudentQuery.FieldByName('st_grcode').AsString+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    if (StudentQuery.FieldByName('st_isAdditional').AsBoolean) then
      nrep.StudyLengthLabel.Caption := tmpquery.FieldByName('gr_ShortLernLength').AsString
    else
      nrep.StudyLengthLabel.Caption := tmpquery.FieldByName('gr_LernLength').AsString;
    nrep.SpecialityLabel.Caption := tmpquery.FieldByName('sp_Name').AsString;
    if (tmpquery.FieldByName('sp_hasSpecialization').AsBoolean) then
      nrep.SpecialityLabel.Caption := tmpquery.FieldByName('sp_Name').AsString+
      #$D+#$D+' специализация '+tmpquery.FieldByName('sp_Specialization').AsString;
    nrep.ComissionDayLabel.Caption := GetNewDateDay(StudentQuery.FieldByName('st_ComissionDate').AsDateTime);
    nrep.ComissionMonthLabel.Caption := GetNewDateMonth(StudentQuery.FieldByName('st_ComissionDate').AsDateTime);
    nrep.ComissionYearLabel.Caption := GetNewDateYear(StudentQuery.FieldByName('st_ComissionDate').AsDateTime);
    nrep.KvalificationLabel.Caption := tmpquery.FieldByName('sp_Kvalification').AsString;
    nrep.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString;
    nrep.DocumentSeriaLabel.Caption := StudentQuery.FieldByName('st_DocumentsSeria').AsString;
    nrep.DocumentNumberLabel.Caption := StudentQuery.FieldByName('st_DocumentsNumber').AsString;
    nrep.DocumentYearLabel.Caption := StudentQuery.FieldByName('st_DocumentsYear').AsString;
    end;
  nrep.DiplomeRep1.PreviewModal;
  tmpquery.Free;
  nrep.Free;
  end;
end;


procedure TStudentForm.ComissionDateLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
ComissionDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;


procedure TStudentForm.GOSLookupBtnClick(Sender: TObject);
var
dlookup : TDateLookupForm;
begin
dlookup := TDateLookupForm.Create(self);
if dlookup.ShowModal = mrOk then
GOSDateEdit.Text := DateToStr(dlookup.Calendar.Date);
dlookup.Free;
end;

procedure TStudentForm.SecondDiplomeFormBtnClick(Sender: TObject);
var
orep       : TDiplomeRepForm2;
nrep       : TDiplome2RepForm2;
//page      : integer;
// Export to Word
Shablon   : OleVariant;
FileName  : OleVariant;
oldStr    : OleVariant;
newStr    : OleVariant;
replace   : OleVariant;
tmpquery  : TADOQuery;
x         : integer;
//ext       : OleVariant;

begin
if (WordCheckBox.Checked and
  FileExists(ExtractFilePath(Application.EXEName)+'diplome2tmpl.doc')) then
begin
  try
  Shablon:=ExtractFilePath(Application.EXEName)+'diplome2tmpl.doc';
  FileName:=ExtractFilePath(Application.EXEName)+
    StudentQuery.FieldByName('st_FName').AsString+'_'+
    StudentQuery.FieldByName('st_MName').AsString+'-2.doc';
  //Открываем шаблон документа
  WordApp.Documents.Open(Shablon, EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam);
  //Связываем компоненту с существующим интерфейсом
  WordDoc.ConnectKind:=ckAttachToInterface;
  WordDoc.ConnectTo(WordApp.ActiveDocument);
  //Следующие переменные понадобятся нам для выполнения методов сервера
  replace:=1;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('EXEC  GetMarksList '''+StudentQuery.FieldByName('st_pcode').AsString+'''');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    oldStr:='Title'+IntToStr(x);
    newStr:=tmpquery.FieldByName('rp_sbName').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    oldStr:='Hours'+IntToStr(x);
    newStr := '';
    if tmpquery.FieldByName('rp_Hours').AsInteger > 0 then
      newStr:=tmpquery.FieldByName('rp_Hours').AsString;
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    oldStr:='Mark'+IntToStr(x);
    newStr:=MarkToStr(tmpquery.FieldByName('rp_Mark').AsInteger);
    WordDoc.Range.Find.Execute(oldStr, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, newStr, replace,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end;
  WordDoc.SaveAs(FileName);
  WordDoc.Close;
  MessageDlg('Данные выгружены в файл '+FileName+'.', mtInformation, [mbOk], 0);
  tmpquery.Free;
  except
  on e: Exception do
    MessageDlg('Ошибка "'+e.Message+'"', mtInformation, [mbOk], 0);
  end; // try
  end
else if isOldDiplomeCheckBox.Checked then
  // ==========================================
  // Старые бланки
  // ==========================================
  begin
  orep := TDiplomeRepForm2.Create(self);
  orep.isCopy := isDiplomeCopyCheckBox.Checked or isDuplicateCheckBox.Checked;
  orep.isSlim := isSlimCheckBox.Checked;
  try
    tmpquery := TADOQuery.Create(self);
    tmpquery.Connection := MainForm.Connection;
    tmpquery.SQL.Text := 'SELECT TOP 1 * FROM Schools WHERE sc_pcode = '''+
      StudentQuery.FieldByName('st_oldsccode').AsString+''';';
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      orep.foreign := tmpquery.FieldByName('sc_foreign').AsBoolean;
  except
    on e: Exception do
      MessageDlg('Ошибка "'+e.Message+'"', mtInformation, [mbOk], 0);
  end; // try
  orep.NameLabel.Caption := StudentQuery.FieldByName('st_FullName').AsString;
  orep.NumLabel.Caption := StudentQuery.FieldByName('st_DiplNum').AsString;
  orep.RegNumLabel.Caption := StudentQuery.FieldByName('st_DiplRegNum').AsString;
  orep.inYear := StudentQuery.FieldByName('st_inYear').AsInteger;
  orep.outYear := StudentQuery.FieldByName('st_outYear').AsInteger;

  with orep.Query do
    begin
    Close;
    SQL.Clear;
    SQL.Add('EXEC  GetMarksList '''+StudentQuery.FieldByName('st_pcode').AsString+'''');
    Open;
    end;
  case orep.Query.RecordCount of
  1 .. 25: begin
             orep.len  := 50; // max length
             orep.h    := 15;  // string height
             orep.size := 10;
           end;
  26 .. 35: begin
             orep.len  := 60; // max length
             orep.h    := 14;  // string height
             orep.size := 8;
           end;
  36 .. 55: begin
             orep.len  := 70; // max length
             orep.h    := 12;  // string height
             orep.size := 7;
           end;
  56 .. 65: begin
             orep.len  := 75; // max length
             orep.h    := 11;  // string height
             orep.size := 6;
           end;
  66 .. 75: begin
             orep.len  := 90; // max length
             orep.h    := 9;  // string height
             orep.size := 5;
           end;
  end; // case
  orep.DiplomeRep2.Preview;
  orep.Free;

  end else begin
  // ====================================
  // Новые бланки
  // ====================================
  nrep := TDiplome2RepForm2.Create(self);
  nrep.isCopy := isDiplomeCopyCheckBox.Checked;
  nrep.isSlim := isSlimCheckBox.Checked;
  if StudentQuery.FieldByName('st_DiplGetDate').IsNull then
    begin
    nrep.GetDateDayLabel.Caption := ' ';
    nrep.GetDateMonthLabel.Caption := ' ';
    nrep.GetDateYearLabel.Caption := ' ';
    end
  else
    begin
    nrep.GetDateDayLabel.Caption :=
      GetNewDateDay(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
    nrep.GetDateMonthLabel.Caption :=
      GetNewDateMonth(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
    nrep.GetDateYearLabel.Caption :=
      GetNewDateYear(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
    end;
  try
    tmpquery := TADOQuery.Create(self);
    tmpquery.Connection := MainForm.Connection;
    tmpquery.SQL.Text := 'SELECT TOP 1 * FROM Schools WHERE sc_pcode = '''+
       MainForm.SchoolID+''';';
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      nrep.foreign := tmpquery.FieldByName('sc_foreign').AsBoolean;
      nrep.DirectorLabel.Caption :=
        tmpquery.FieldByName('sc_DMName').AsString+' '+
        tmpquery.FieldByName('sc_DLName').AsString+' '+
        tmpquery.FieldByName('sc_DFName').AsString;
      end;
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Text := 'SELECT TOP 1 * FROM Departments WHERE dp_pcode = '''+
       MainForm.DepID+''';';
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      nrep.SecretarLabel.Caption := tmpquery.FieldByName('dp_secretar').AsString;
      end;
  except
    on e: Exception do
      MessageDlg('Ошибка "'+e.Message+'"', mtInformation, [mbOk], 0);
  end; // try
//  nrep.NameLabel.Caption := StudentQuery.FieldByName('st_FullName').AsString;
//  nrep.NumLabel.Caption := StudentQuery.FieldByName('st_DiplNum').AsString;
//  nrep.RegNumLabel.Caption := StudentQuery.FieldByName('st_DiplRegNum').AsString;
  nrep.inYear := StudentQuery.FieldByName('st_inYear').AsInteger;
  nrep.outYear := StudentQuery.FieldByName('st_outYear').AsInteger;
  with nrep.Query do
    begin
    Close;
    SQL.Clear;
    SQL.Add('EXEC  GetMarksList2 '''+StudentQuery.FieldByName('st_pcode').AsString+'''');
    Open;
    end;
  case nrep.Query.RecordCount of
  1 .. 15: begin
             nrep.len  := 50; // max length
             nrep.riskLen := 12;
             nrep.h    := 15;  // string height
             nrep.size := 9;
           end;
  16 .. 29: begin
             nrep.len  := 60; // max length
             nrep.riskLen := 14;
             nrep.h    := 14;  // string height
             nrep.size := 8;
           end;
  30 .. 50: begin
             nrep.len  := 80; // max length
             nrep.riskLen := 5;
             nrep.h    := 12;  // string height
             nrep.size := 7;
           end;
  51 .. 80: begin
             nrep.len  := 70; // max length
             nrep.riskLen := 5;
             nrep.h    := 9;  // string height
             nrep.size := 6;
           end;
  81 .. 95: begin
             nrep.len  := 110; // max length
            nrep.riskLen := 20;
            nrep.h    := 8;  // string height
             nrep.size := 5;
           end;
  96 .. 120: begin
             nrep.len  := 100; // max length
             nrep.riskLen := 35;
             nrep.h    := 7;  // string height
             nrep.size := 4;
           end;
  end; // case
  nrep.DiplomeRep2.Preview;
  nrep.Free;
  end;
end;


procedure TStudentForm.AddAcademBtnClick(Sender: TObject);
var
form         : TAcademDetailsForm;
tmpquery     : TADOQuery;
GetReason    : string;
GetReasonStr : string;

begin
GetReason := '';
form := TACademDetailsForm.Create(self);
if AcademQuery.RecordCount = 0 then
  begin
  form.GetReasonLabel.Visible := false;
  form.GetReasonComboBox.Visible := false;
  form.GetReasonComboBox.ItemIndex := -1;
  end;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Schools WHERE sc_pcode = '''+
  MainForm.SchoolID+''';');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  form.PlaceMemo.Text := tmpquery.FieldByName('sc_RName').AsString;
tmpquery.Close;
if StudentQuery.FieldByName('st_InYear').AsInteger > 0 then
  form.StartDatePicker.DateTime :=
    EncodeDate(StudentQuery.FieldByName('st_InYear').AsInteger, 9, 1);
if form.ShowModal = mrOk then
  begin
  if form.GetReasonComboBox.ItemIndex >= 0 then
    begin
    GetReason := ', ac_GetReason';
    GetReasonStr := ', '''+form.GetReasonComboBox.Text+'''';
    end;
  ParentsCommand.CommandText :=
    'INSERT INTO Academs(ac_stcode, ac_Cmd, ac_Num, ac_RegNum, ac_GetDate, '+
    'ac_SDate1, ac_EDate1, ac_StudyPlace1, ac_Reason, ac_Form1, ac_CmdDate'+
    GetReason+
    ') VALUES('''+StudentQuery.FieldByName('st_pcode').AsString+''', '''+
    form.CmdEdit.Text+''', '''+
    form.NumberEdit.Text+''', '''+
    form.RegNumberEdit.Text+''', '''+
    DateToStr(form.GetDatePicker.Date)+''', '''+
    DateToStr(form.StartDatePicker.Date)+''', '''+
    DateToStr(form.StopDatePicker.Date)+''', '''+
    form.PlaceMemo.Text+''', '''+
    form.ReasonMemo.Text+''', '''+
    form.FormComboBox.Text+''', '''+
    DateToStr(form.CmdDateEdit.Date)+''''+
    GetReasonStr+');';
{$ifdef debug}
  ShowMessage(ParentsCommand.CommandText);
{$endif}
  ParentsCommand.Execute;
  AcademQuery.Requery;
  end;
tmpquery.Free;
form.Free;
end;



procedure TStudentForm.DelAcademBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo],0) = mrYes then
  begin
  ParentsCommand.CommandText := 'DELETE FROM Academs WHERE ac_pcode='''+
    AcademQuery.FieldByName('ac_pcode').AsString+''';';
  ParentsCommand.Execute;
  AcademQuery.Requery;
  end;
end;


procedure TStudentForm.EditAcademBtnClick(Sender: TObject);
var
form     : TAcademDetailsForm;
GetReason: string;

begin
form := TAcademDetailsForm.Create(self);
if AcademQuery.RecordCount <= 1 then
  begin
  form.GetReasonLabel.Visible := false;
  form.GetReasonComboBox.Visible := false;
  form.GetReasonComboBox.ItemIndex := -1;
  end;
form.NumberEdit.Text := AcademQuery.FieldByName('ac_Num').AsString;
form.RegNumberEdit.Text := AcademQuery.FieldByName('ac_RegNum').AsString;
form.ReasonMemo.Text := AcademQuery.FieldByName('ac_Reason').AsString;
form.CmdEdit.Text := AcademQuery.FieldByName('ac_Cmd').AsString;
form.GetDatePicker.Date := AcademQuery.FieldByName('ac_GetDate').AsDateTime;
form.StartDatePicker.Date := AcademQuery.FieldByName('ac_SDate1').AsDateTime;
form.StartDatePicker.DateTime := AcademQuery.FieldByName('ac_SDate1').AsDateTime;
form.StopDatePicker.Date := AcademQuery.FieldByName('ac_EDate1').AsDateTime;
form.PlaceMemo.Text := AcademQuery.FieldByName('ac_StudyPlace1').AsString;
form.CmdDateEdit.Date := AcademQuery.FieldByName('ac_CmdDate').AsDateTime;
form.FormComboBox.ItemIndex :=
  form.FormComboBox.Items.IndexOf(
    AcademQuery.FieldByName('ac_Form1').AsString);
form.GetReasonComboBox.ItemIndex :=
  form.GetReasonComboBox.Items.IndexOf(
    AcademQuery.FieldByName('ac_GetReason').AsString);
// fill form data
if form.Showmodal = mrOk then
  begin
  if form.GetReasonComboBox.ItemIndex >= 0 then
    GetReason := ', ac_GetReason = '''+form.GetReasonComboBox.Text+'''';
  ParentsCommand.CommandText :=
    'UPDATE Academs SET ac_Cmd = '''+form.CmdEdit.Text+
    ''', ac_Num = '''+form.NumberEdit.Text+
    ''', ac_RegNum = '''+form.RegNumberEdit.Text+
    ''', ac_GetDate = '''+DateToStr(form.GetDatePicker.Date)+
    ''', ac_SDate1 = '''+DateToStr(form.StartDatePicker.Date)+
    ''', ac_EDate1 = '''+DateToStr(form.StopDatePicker.Date)+
    ''', ac_StudyPlace1 = '''+form.PlaceMemo.Text+
    ''', ac_Reason = '''+form.ReasonMemo.Text+
    ''', ac_Form1 = '''+form.FormComboBox.Text+
    ''', ac_CmdDate = '''+DateToStr(form.CmdDateEdit.Date)+''''+
    GetReason+' WHERE ac_pcode = '''+AcademQuery.FieldByName('ac_pcode').AsString+'''';
  ParentsCommand.Execute;
  AcademQuery.Requery;
  end;
form.Free;
end;



procedure TStudentForm.PrintAcademBtnClick(Sender: TObject);
const
lbCount = 38;

var
//rep1     : TAcademRepForm1;
//rep2     : TAcademRepForm2;
nrep1    : TNewAcademRepForm1;
nrep2    : TNewAcademRepForm2;
tmpquery : TADOQuery;
//st_sccode     : string;
//st_oldsccode  : string;
lines    : integer;
pages    : integer;
//s,p,l    : integer;
y,m,d    : word;
//line     : integer;
//lb       : TQRLabel;

begin
// print the academ
//if not isOldAcademCheckBox.Checked then
//  begin
// =============================================
// Новые бланки
// =============================================
//    NotYet();
//  end else begin
// =============================================
// Старые бланки
// =============================================
    nrep1 := TNewAcademRepForm1.Create(self);
    nrep1.isCopy := not isOldAcademCheckBox.Checked;
    nrep2 := TNewAcademRepForm2.Create(self);
    nrep2.isCopy := not isOldAcademCheckBox.Checked;
    nrep2.isSlim := IsSlimAcademCheckBox.Checked;
    nrep2.inYear := StudentQuery.FieldByName('st_inYear').AsInteger;
    tmpquery := TADOQuery.Create(self);
    tmpquery.Connection := MainForm.Connection;
    nrep1.ReasonLabel.Caption := AcademQuery.FieldByName('ac_Reason').AsString;
    nrep1.PrNumberLabel.Caption := AcademQuery.FieldByName('ac_Cmd').AsString;
    nrep1.PrDateLabel.Caption := GetDateStr(AcademQuery.FieldByName('ac_CmdDate').AsDateTime);
    nrep1.FIOLabel.Caption := StudentQuery.FieldByName('st_FullName').AsString;
    //dateval := StudentQuery.FieldByName('st_BirthDate').AsDateTime;
    nrep1.BirthDateLabel.Caption :=
      GetDateStr(StudentQuery.FieldByName('st_BirthDate').AsDateTime)+' года';
    nrep1.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString+
      ', серия '+StudentQuery.FieldByName('st_DocumentsSeria').AsString+
      ' №'+StudentQuery.FieldByName('st_DocumentsNumber').AsString+
      ' '+StudentQuery.FieldByName('st_DocumentsYear').AsString+' года';
    if StudentQuery.FieldByName('st_DocumentsSeria').IsNull or
      StudentQuery.FieldByName('st_DocumentsNumber').IsNull or
      StudentQuery.FieldByName('st_DocumentsYear').IsNull then
    nrep1.DocumentLabel.Caption := StudentQuery.FieldByName('st_Documents').AsString;
    nrep1.TestsResultLabel.Caption := StudentQuery.FieldByName('st_Tests').AsString;
    nrep1.StudyFormLabel.Caption := AcademQuery.FieldByName('ac_Form1').AsString;
    nrep1.DiplomeGetDateLabel.Caption := GetDateStr(AcademQuery.FieldByName('ac_GetDate').AsDateTime);
    nrep1.RegNumLabel.Caption := AcademQuery.FieldByName('ac_RegNum').AsString;
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Specialities, Groups WHERE (sp_pcode = gr_speccode)');
    tmpquery.SQL.Add('AND (gr_pcode = '''+StudentQuery.FieldByName('st_grcode').AsString+''')');
    tmpquery.Open;
    if tmpquery.RecNo > 0 then
      begin
      nrep1.SpecialityLabel.Caption := tmpquery.FieldByName('sp_Name').AsString;
      nrep1.SpecializationLabel.Caption := tmpquery.FieldByName('sp_Specialization').AsString;
      end;
    // Учебное заведение
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      nrep1.PlaceLabel.Caption := tmpquery.FieldByName('sc_Place').AsString;
      nrep1.SchoolLabel.Caption := tmpquery.FieldByName('sc_Name').AsString;
      end;
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Schools WHERE sc_pcode = '''+
      StudentQuery.FieldByName('st_oldsccode').AsString+'''');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      decodeDate(AcademQuery.FieldByName('ac_SDate1').AsDateTime,y,m,d);
      nrep1.ComeInLabel.Caption := IntToStr(y)+' году в '+
        tmpquery.FieldByName('sc_Name').AsString+' ('+
        AcademQuery.FieldByName('ac_Form1').AsString+' форма)';
      end;
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Schools WHERE sc_pcode = '''+
      StudentQuery.FieldByName('st_sccode').AsString+'''');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      decodeDate(AcademQuery.FieldByName('ac_EDate1').AsDateTime, y,m,d);
      nrep1.ComeOutLabel.Caption := IntToStr(y)+' году в '+
        tmpquery.FieldByName('sc_RName').AsString+' ('+
        AcademQuery.FieldByName('ac_Form1').AsString+' форма)';
      end;
    nrep2.Query.SQL.Clear;
    nrep2.Query.SQL.Add('EXEC GetMarksList '''+StudentQuery.FieldByName('st_pcode').AsString+'''');
    nrep2.Query.Open;
    lines := LINESCOUNT;
    if isSlimCheckBox.Checked then lines := LINESCOUNT*2;
    if 0 < (nrep2.Query.RecordCount mod LINESCOUNT) then
      pages := (nrep2.Query.RecordCount div lines)+1 else
      pages := (nrep2.Query.RecordCount div lines);
    if isSlimCheckBox.Checked then pages := 1;
    case nrep2.Query.RecordCount of
    1 .. 25: begin
             nrep2.len  := 50; // max length
             nrep2.h    := 16;  // string height
             nrep2.size := 10;
             end;
//    26 .. 35: begin
//             nrep2.len  := 60; // max length
//             nrep2.h    := 14;  // string height
//             nrep2.size := 8;
//             end;
    26 .. 55: begin
             nrep2.len  := 70; // max length
             nrep2.h    := 12;  // string height
             nrep2.size := 7;
             end;
    56 .. 65: begin
             nrep2.len  := 80; // max length
             nrep2.h    := 11;  // string height
             nrep2.size := 6;
             end;
    66 .. 75: begin
             nrep2.len  := 90; // max length
             nrep2.h    := 9;  // string height
             nrep2.size := 5;
             end;
    end; // case
    nrep1.PagesCountLabel.Caption := nrep1.PagesCountLabel.Caption+' '+intToStr(pages);
    nrep1.NewAcademRep1.PreviewModal;
    tmpquery.Free;
    nrep1.Free;
    nrep2.NewAcademRep2.PreviewModal;
    nrep2.Free;
//    end;
end;



procedure TStudentForm.AcademSourceDataChange(Sender: TObject;
  Field: TField);
begin
PrintAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
DelAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
EditAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
end;

procedure TStudentForm.SprBtnClick(Sender: TObject);
var
form     : TSprForm;
tmpquery : TADOQuery;
spstr    : string;

begin
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_pcode = '''+
  MainForm.GroupQuery.FieldByName('gr_speccode').AsString+''')');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  spstr := tmpquery.FieldByName('sp_Key').AsString+' "'+
    tmpquery.FieldByName('sp_Name').AsString+'"';
tmpquery.Free;
form := TSprForm.Create(self);
form.TextLabel.Caption :=
  StudentQuery.FieldByName('st_FullName').AsString+','+#$D+
  'выпускник ГОУ СПО Прокопьевского горнотехнического колледжа им. В.П.Романова '+
  OutYearEdit.Text+' г., '+#$D+'специальности '+spstr+', '+#$D+
  'получит оригинал приложения к диплому № '+
  DiplNumEdit.Text+' по мере обеспечения ГОУ СПО ПГТК им. В.П.Романова '+
  'бланочной документацией государственного образца, '+
  'действительной с 1 января 2008 г., утвержденной приказами '+
  'Минобрнауки России, изготовленной ФГУП "Гознак".';
form.SprRep.Preview;
form.Free;
end;

procedure TStudentForm.TWAINOpenItemClick(Sender: TObject);
var
img : TImage;
begin
TWAIN_SelectImageSource(0);
hdib := TWAIN_AcquireNative(0, 0);
n := TWAIN_GetNumDibs;
if n >= 1 then
   begin
   img := TImage.Create(self);
   img.Visible := false;
   TestDib := TWAIN_GetDib(0);
   CopyDibIntoImage(TestDib, img);
   StPhoto.Picture := img.Picture;
   img.Free;
   TWAIN_FreeNative(TestDib);
   TestDib := 0;
   end;
end;

procedure TStudentForm.FileOpenItemClick(Sender: TObject);
var
odlg : TOpenDialog;
//jpg  : TJPEGImage;

begin
odlg := TOpenDialog.Create(self);
//StPhoto.Picture.RegisterFileFormat('.jpg','JPEG Image', TJPEGImage);
odlg.Filter := 'Изображения|*.bmp';
if (odlg.Execute) and (FileExists(odlg.FileName)) then
  begin
//  jpg := TJPEGImage.Create;
//  jpg.LoadFromFile(odlg.FileName);
//  jpg.DIBNeeded;
  StPhoto.Picture.LoadFromFile(odlg.FileName);
  end;
odlg.Free;
end;

procedure TStudentForm.N1Click(Sender: TObject);
var
fname : string;
begin
// save to file.
fname := StudentQuery.FieldByName('st_pcode').AsString+'.bmp';
try
  StPhoto.Picture.SaveToFile(fname);
  MessageDlg('Картинка выгружена в файл '+fname, mtInformation, [mbOk], 0);
except
  MessageDlg('Ошибка при выгрузке картинки!', mtError, [mbOk], 0);
end;

end;

procedure TStudentForm.DiplomCopyBtnClick(Sender: TObject);
var
orep          : TDiplomeCopyRepForm;
nrep          : TDiplome2CopyRepForm;
//dateval       : TDateTime;
tmpquery      : TADOQuery;
st_sccode     : string;
st_oldsccode  : string;

begin
  st_oldsccode := StudentQuery.FieldByName('st_oldsccode').AsString;
  st_sccode := StudentQuery.FieldByName('st_sccode').AsString;
  if (st_sccode <> '') and (st_oldsccode <> '') then
  begin
  if isOldDiplomeCheckBox.Checked then
    begin
    // =======================================
    // old blanks
    // =======================================
    orep := TDiplomeCopyRepForm.Create(self);
    orep.isCopy := isDiplomeCopyCheckBox.Checked;
    tmpquery := TADOQuery.Create(self);
    tmpquery.Connection := MainForm.Connection;
    orep.FIOLabel.Caption := StudentQuery.FieldByName('st_DFullName').AsString;
    tmpquery.SQL.Add('SELECT * FROM DiplomeRepView1 WHERE (drv_stcode = '''+
      StudentQuery.FieldByName('st_pcode').AsString+''')');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      orep.FullSpecialityLabel.Caption := tmpquery.FieldByName('drv_SpName').AsString;
      orep.RegNumLabel.Caption := tmpquery.FieldByName('drv_DiplRegNum').AsString;
      orep.DiplomeGetDateLabel.Caption :=
      GetDateStr(tmpquery.FieldByName('st_DiplGetDate').AsDateTime);
      orep.ComissionDateLabel.Caption :=
        GetDateStr(tmpquery.FieldByName('st_ComissionDate').AsDateTime);
      orep.DiplomeGetDateLabel.Caption :=
        GetDateStr(tmpquery.FieldByName('st_DiplGetDate').AsDateTime);
      orep.KvalificationLabel.Caption := tmpquery.FieldByName('drv_Kvalification').AsString;
      end;
    // Учебное заведение
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      orep.PlaceLabel.Caption := tmpquery.FieldByName('sc_Place').AsString;
      orep.SchoolLabel.Caption := tmpquery.FieldByName('sc_Name').AsString;
      end;
    orep.DiplomeCopyRep.PreviewModal;
    tmpquery.Free;
    orep.Free;
    end else
    begin
    // ========================================
    // new blanks
    // ========================================
    nrep := TDiplome2CopyRepForm.Create(self);
    nrep.isCopy := isDiplomeCopyCheckBox.Checked;
    nrep.isDuplicate := isDuplicateCheckBox.Checked;
    tmpquery := TADOQuery.Create(self);
    tmpquery.Connection := MainForm.Connection;
    tmpquery.SQL.Add('SELECT * FROM DiplomeRepView1 WHERE (drv_stcode = '''+
      StudentQuery.FieldByName('st_pcode').AsString+''')');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      nrep.FullSpecialityLabel.Caption := tmpquery.FieldByName('drv_SpName').AsString;
      if (tmpquery.FieldByName('drv_hasSpecialization').AsBoolean) then
      nrep.FullSpecialityLabel.Caption := tmpquery.FieldByName('drv_SpName').AsString+
      ' специализация '+tmpquery.FieldByName('drv_Specialization').AsString;
      nrep.RegNumLabel.Caption := tmpquery.FieldByName('drv_DiplRegNum').AsString;
      nrep.ComissionDayLabel.Caption :=
//        GetNewDateDay(StudentQuery.FieldByName('st_ComissionDate').AsDateTime);
        GetNewDateDay(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
      nrep.ComissionMonthLabel.Caption :=
        GetNewDateMonth(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
      nrep.ComissionYearLabel.Caption :=
        GetNewDateYear(tmpquery.FieldByName('drv_ComissionDate').AsDateTime);
      nrep.ComissionChifNameLabel.Caption :=
        Copy(tmpquery.FieldByName('drv_PDMName').AsString, 1, 1)+'. '+
        Copy(tmpquery.FieldByName('drv_PDLName').AsString, 1, 1)+'. '+
        tmpquery.FieldByName('drv_PDFName').AsString;
      nrep.KvalificationLabel.Caption := tmpquery.FieldByName('drv_Kvalification').AsString;
      end;
    // Учебное заведение
    tmpquery.Close;
    tmpquery.SQL.Clear;
    tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_pcode = '''+MainForm.SchoolID+''')');
    tmpquery.Open;
    if tmpquery.RecordCount > 0 then
      begin
      nrep.SchoolLabel.Caption := tmpquery.FieldByName('sc_Name').AsString +
        #$D+#$D+tmpquery.FieldByName('sc_Place').AsString;
      nrep.DirectorNameLabel.Caption :=
        Copy(tmpquery.FieldByName('sc_DMName').AsString, 1, 1)+'. '+
        Copy(tmpquery.FieldByName('sc_DLName').AsString, 1, 1)+'. '+
        tmpquery.FieldByName('sc_DFName').AsString;
      end;
    nrep.FNameLabel.Caption := StudentQuery.FieldByName('st_DFName').asString;
    nrep.MNameLabel.Caption := StudentQuery.FieldByName('st_DMName').asString;
    nrep.LNameLabel.Caption := StudentQuery.FieldByName('st_DLName').asString;
    if StudentQuery.FieldByName('st_DiplGetDate').IsNull then
      begin
      nrep.GetDateDayLabel.Caption := ' ';
      nrep.GetDateMonthLabel.Caption := ' ';
      nrep.GetDateYearLabel.Caption := ' ';
      end
    else
      begin
      nrep.GetDateDayLabel.Caption :=
        GetNewDateDay(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
      nrep.GetDateMonthLabel.Caption :=
        GetNewDateMonth(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
      nrep.GetDateYearLabel.Caption :=
        GetNewDateYear(StudentQuery.FieldByName('st_DiplGetDate').AsDateTime);
      end;
    nrep.DiplomeCopyRep.PreviewModal;
    tmpquery.Free;
    nrep.Free;
    end;
  end else
  MessageDlg(ST_ERROR,mtError,[mbOk],0);
end;

end.
