unit dep_studyplanslistform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TStudyPlansListForm = class(TForm)
    DBGrid1: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    CloseBtn: TButton;
    StudyPlansQuery: TADOQuery;
    StudyPlansDataSource: TDataSource;
    PlansCommand: TADOCommand;
    DetailsBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure StudyPlansDataSourceDataChange(Sender: TObject;
      Field: TField);
    procedure DetailsBtnClick(Sender: TObject);
  private
    AspCode : string;
    AisZaoch: boolean;
    { Private declarations }
  public
    property spCode: string read AspCode write AspCode;
    property isZaoch: boolean read AisZaoch write AisZaoch;
    procedure queryPlans();
    { Public declarations }
  end;

var
  StudyPlansListForm: TStudyPlansListForm;

implementation

uses kern, dep_main, dep_studyplandetailsform;

{$R *.dfm}

procedure TStudyPlansListForm.queryPlans;
var
zaoch : string;
begin
if StudyPlansQuery.Active then
  StudyPlansQuery.Close;
StudyPlansQuery.SQL.Clear;
zaoch := '0';
if isZaoch then
  zaoch := '1';
if (spCode <> '') then
  begin
  StudyPlansQuery.SQL.Add('SELECT * FROM StudyPlans WHERE (stp_spccode = '''+
    spCode+''') AND (stp_isZaoch = '+zaoch+');');
  StudyPlansQuery.Open;
  end;
end;

procedure TStudyPlansListForm.FormCreate(Sender: TObject);
begin
isZaoch := MainForm.isZaoch;
end;

procedure TStudyPlansListForm.AddBtnClick(Sender: TObject);
var
stp_name : string;
zaoch    : string;
begin
stp_name := trim(inputBox('Название учебного плана', 'Название', ''));
zaoch := '0';
if isZaoch then
  zaoch := '1';
if (stp_name <> '') then
  try
  PlansCommand.CommandText := 'INSERT INTO StudyPlans(stp_name, stp_isZaoch, stp_spccode) VALUES ('''+
    stp_name+''', '+zaoch+', '''+spCode+''');';
  PlansCommand.Execute;
  queryPlans;
  except
    on e: exception do
    MessageDlg('ошибка при выполнении запроса: '+e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TStudyPlansListForm.EditBtnClick(Sender: TObject);
var
stp_name : string;
begin
stp_name := inputBox('Название учебного плана', 'Название', StudyPlansQuery.FieldByName('stp_name').AsString);
if (trim(stp_name) <> '') then
  try
  PlansCommand.CommandText := 'UPDATE StudyPlans SET stp_name = '''+
    stp_name+''' WHERE (stp_pcode = '+StudyPlansQuery.FieldByName('stp_pcode').AsString+');';
  PlansCommand.Execute;
  queryPlans;
  except
    on e: exception do
    MessageDlg('ошибка при выполнении запроса: '+e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TStudyPlansListForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  try
  PlansCommand.CommandText := 'DELETE FROM StudyPlans WHERE (stp_pcode = '+
    StudyPlansQuery.FieldByName('stp_pcode').AsString+');';
  PlansCommand.Execute;
  queryPlans;
  except
    on e: exception do
    MessageDlg('ошибка при выполнении запроса: '+e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TStudyPlansListForm.StudyPlansDataSourceDataChange(
  Sender: TObject; Field: TField);
begin
addBtn.Enabled := false;
editBtn.Enabled := false;
delBtn.Enabled := false;
if (StudyPlansDataSource.State = dsBrowse) then
  begin
  addBtn.Enabled := true;
  editBtn.Enabled := StudyPlansQuery.RecordCount > 0;
  delBtn.Enabled := StudyPlansQuery.RecordCount > 0;
  end;
end;

procedure TStudyPlansListForm.DetailsBtnClick(Sender: TObject);
var
detailsform : TStudyPlanDetailsForm;
begin
detailsform := TStudyPlanDetailsForm.Create(self);
detailsform.planCode := StudyPlansQuery.FieldByName('stp_pcode').AsString;
detailsform.ShowModal;
detailsform.Free;
end;

end.
