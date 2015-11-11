unit dep_skillsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Spin;

type
  TSkillsManForm = class(TForm)
    SkillsGrid: TDBGrid;
    SkillsQuery: TADOQuery;
    SkillsCommand: TADOCommand;
    SkillsDataSource: TDataSource;
    ExitBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    MounthComboBox: TComboBox;
    YearEdit: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure MounthComboBoxChange(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SkillsManForm: TSkillsManForm;

implementation

uses dep_main, dep_skillsinputform, kern;

{$R *.dfm}


procedure TSkillsManForm.FormCreate(Sender: TObject);
begin
YearEdit.Value := CurrentYear;
MounthComboBox.ItemIndex := 0;
SkillsQuery.Close;
SkillsQuery.SQL.Clear;
SkillsQuery.SQL.Add('SELECT * FROM GrSkills WHERE gsk_Year = '''+
IntToStr(YearEdit.Value)+''' and gsk_grcode = '''+
TMainForm(Owner).GroupQuery.FieldByName('gr_pcode').AsString+
''' ORDER BY gsk_Mounth;');
SkillsQuery.Open;
end;

procedure TSkillsManForm.YearEditChange(Sender: TObject);
var
mounth : string;
begin
if mounthComboBox.ItemIndex > 0 then
mounth := ' and gsk_Mounth = '''+IntToStr(mounthComboBox.ItemIndex)+'''';
SkillsQuery.Close;
SkillsQuery.SQL.Clear;
SkillsQuery.SQL.Add('SELECT * FROM GrSkills WHERE gsk_Year = '''+
IntToStr(YearEdit.Value)+''''+mounth+
' and gsk_grcode = '''+
TMainForm(Owner).GroupQuery.FieldByName('gr_pcode').AsString+
''' ORDER BY gsk_Mounth;');
SkillsQuery.Open;
end;

procedure TSkillsManForm.MounthComboBoxChange(Sender: TObject);
var
mounth : string;
begin
if mounthComboBox.ItemIndex > 0 then
mounth := ' and gsk_Mounth = '''+IntToStr(mounthComboBox.ItemIndex)+'''';
SkillsQuery.Close;
SkillsQuery.SQL.Clear;
SkillsQuery.SQL.Add('SELECT * FROM GrSkills WHERE gsk_Year = '''+
IntToStr(YearEdit.Value)+''''+mounth+
' and gsk_grcode = '''+
TMainForm(Owner).GroupQuery.FieldByName('gr_pcode').AsString+
''' ORDER BY gsk_Mounth;');
SkillsQuery.Open;
end;

procedure TSkillsManForm.AddBtnClick(Sender: TObject);
var
skform : TSkillsForm;
begin
skform := TSkillsForm.Create(self);
if skform.ShowModal = mrOk then
begin
// создать и запустить запрос на добавление.
skillscommand.CommandText :=
'INSERT INTO GrSkills (gsk_pcode, gsk_grcode, gsk_Level, gsk_Mounth, gsk_Year) '+
'VALUES (NEWID(), '''+
TMainForm(Owner).GroupQuery.FieldByName('gr_pcode').AsString+''', '''+
skform.LevelEdit.Text+''', '''+IntToStr(skform.MounthComboBox.ItemIndex+1)+''', '''+
IntToStr(YearEdit.Value)+''');';
{$ifdef debug}
showmessage(skillscommand.commandtext);
{$endif}
skillscommand.Execute;
SkillsQuery.Requery([]);
end;
skform.Free;
end;

procedure TSkillsManForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
  SkillsCommand.CommandText :=
  'DELETE FROM GrSkills WHERE gsk_pcode = '''+
  SkillsQuery.FieldByName('gsk_pcode').AsString+''';';
  SkillsCommand.Execute;
  SkillsQuery.Requery([]);
  end;
end;

procedure TSkillsManForm.EditBtnClick(Sender: TObject);
var
skform : TSkillsForm;
begin
skform := TSkillsForm.Create(self);
skform.LevelEdit.Text := SkillsQuery.FieldByName('gsk_Level').AsString;
skform.MounthComboBox.ItemIndex := SkillsQuery.FieldByName('gsk_Mounth').AsInteger-1;
if skform.ShowModal = mrOk then
begin
// создать и запустить запрос на добавление.
skillscommand.CommandText :=
'UPDATE GrSkills SET gsk_Level = '''+skform.LevelEdit.Text+''', '+
'gsk_Mounth = '''+IntToStr(skform.MounthComboBox.ItemIndex+1)+
''' WHERE gsk_pcode = '''+
SkillsQuery.FieldByName('gsk_pcode').AsString+''';';
{$ifdef debug}
showmessage(skillscommand.commandtext);
{$endif}
skillscommand.Execute;
SkillsQuery.Requery([]);
end;
skform.Free;
end;

end.
