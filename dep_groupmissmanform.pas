unit dep_groupmissmanform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Spin;

type
  TGroupMissManForm = class(TForm)
    MissGrid: TDBGrid;
    MissDataSource: TDataSource;
    MissQuery: TADOQuery;
    DetailBtn: TButton;
    ExitBtn: TButton;
    MounthComboBox: TComboBox;
    YearEdit: TSpinEdit;
    Label2: TLabel;
    YearCheckBox: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure AcceptFilter(Sender: TObject);
    procedure DetailBtnClick(Sender: TObject);
    procedure MissDataSourceDataChange(Sender: TObject; Field: TField);
  private
  AGroupID: string;
    { Private declarations }
  public
//  Connection : TADOConnection;
  property GroupID: string read AGroupID write AGroupID;
    { Public declarations }
  end;

var
  GroupMissManForm: TGroupMissManForm;

implementation

uses dep_main, dep_groupweekmissform;

{$R *.dfm}

procedure TGroupMissManForm.AcceptFilter(Sender: TObject);
var
mounth : string;
year   : string;

begin
if MounthComboBox.ItemIndex > 0 then
mounth := ' and gwm_Mounth = '''+IntToStr(MounthComboBox.ItemIndex)+'''';
if YearCheckBox.Checked then
year   := ' and gwm_Year = '''+IntToStr(YearEdit.Value)+'''';
  MissQuery.Close;
MissQuery.SQL.Clear;
MissQuery.SQL.Add('SELECT gr_Name, gr_pcode, SUM(gwm_Legal) as gwm_Legal,');
MissQuery.SQL.Add(' SUM(gwm_Illegal) as gwm_Illegal, SUM(gwm_All) as gwm_All,');
MissQuery.SQL.Add('gwm_Mounth, gwm_Year from Groups, GrWeekMissings ');
MissQuery.SQL.Add('where gr_pcode = gwm_grcode and gr_pcode = '''+
  GroupID+''' '+mounth+year);
MissQuery.SQL.Add(' GROUP BY gwm_Mounth, gwm_Year, gr_pcode, gr_Name ');
MissQuery.SQL.Add('ORDER BY gwm_Mounth, gwm_Year;');
MissQuery.Open;
DetailBtn.Enabled := (MissQuery.RecNo > 0) or ((MounthComboBox.ItemIndex > 0) and
  YearCheckBox.Checked);
// Accept the filter
end;

procedure TGroupMissManForm.FormCreate(Sender: TObject);
begin
//Connection := MainForm.Connection;
GroupID := MainForm.GroupQuery.FieldByName('gr_pcode').AsString;
YearEdit.Value := CurrentYear;
end;

procedure TGroupMissManForm.DetailBtnClick(Sender: TObject);
var
weekmissform : TGroupWeekMissForm;
begin
weekmissform := TGroupWeekMissForm.Create(self);
weekmissform.ShowModal;
weekmissform.Free;
MissQuery.Requery([]);
end;

procedure TGroupMissManForm.MissDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
DetailBtn.Enabled := (MissQuery.RecNo > 0) or ((MounthComboBox.ItemIndex > 0) and
  YearCheckBox.Checked);
end;

end.
