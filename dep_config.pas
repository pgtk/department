unit dep_config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TConfigForm = class(TForm)
    SchoolDataSource: TDataSource;
    Label1: TLabel;
    SchoolQuery: TADOQuery;
    DepQuery: TADOQuery;
    DepDataSource: TDataSource;
    Label2: TLabel;
    OkBtn: TButton;
    CancelBtn: TButton;
    SchoolGrid: TDBGrid;
    DepGrid: TDBGrid;
    PlaceGrid: TDBGrid;
    PlaceDataSource: TDataSource;
    PlaceQuery: TADOQuery;
    Label3: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure SchoolDataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DepDataSourceDataChange(Sender: TObject; Field: TField);
    procedure PlaceDataSourceDataChange(Sender: TObject; Field: TField);
  private
  ASchoolID : string;
  ADepEdit  : string;
  APlaceID  : string;
    { Private declarations }
  public
  property SchoolID: string read ASchoolID write ASchoolID;
  property DepID   : string read ADepEdit write ADepEdit;
  property PlaceID : string read APlaceID write APlaceID;
    { Public declarations }
  end;

var
  ConfigForm: TConfigForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TConfigForm.FormDestroy(Sender: TObject);
begin
if DepQuery.Active then
DepQuery.Close;
if SchoolQuery.Active then
SchoolQuery.Close;
if PlaceQuery.Active then
PlaceQuery.Close;
end;

procedure TConfigForm.SchoolDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
if SchoolDataSource.State = dsBrowse then
begin
DepQuery.Close;
DepQuery.SQL.Clear;
SchoolID := SchoolQuery.FieldByName('sc_pcode').AsString;
DepQuery.SQL.Add('select * from departments;');
DepQuery.Open;
end;
end;

procedure TConfigForm.FormCreate(Sender: TObject);
begin
if not SchoolQuery.Active then
schoolQuery.Open;
if not PlaceQuery.Active then
placeQuery.Open;
end;

procedure TConfigForm.DepDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
if DepDataSource.State = dsBrowse then
begin
DepID := DepQuery.FieldByName('dp_pcode').AsString;
end;
end;

procedure TConfigForm.PlaceDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
if PlaceDataSource.State = dsBrowse then
begin
PlaceID := PlaceQuery.FieldByName('pl_pcode').AsString;
end;
end;

end.
