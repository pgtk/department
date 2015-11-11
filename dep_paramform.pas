unit dep_paramform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TParamForm = class(TForm)
    SpecGroupBox: TGroupBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    NameEdit: TEdit;
    Label2: TLabel;
    MasterEdit: TEdit;
    SpecGrid: TDBGrid;
    SpecQuery: TADOQuery;
    SpecDataSource: TDataSource;
    OkBtn: TButton;
    Label3: TLabel;
    SecretarEdit: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParamForm: TParamForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TParamForm.FormCreate(Sender: TObject);
var
tmpquery : TADOQuery;
code     : string;
begin
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT * FROM Departments, workers WHERE (dp_pcode = '''+
MainForm.DepID+''') AND (dp_mastercode = wk_pcode);');
tmpquery.Open;
NameEdit.Text := tmpquery.FieldByName('dp_Name').AsString;
code := tmpquery.FieldByName('dp_pcode').AsString;
MasterEdit.Text := tmpquery.FieldByName('wk_Name').AsString;
tmpquery.Close;
tmpquery.Free;
if SpecQuery.Active then
SpecQuery.Close;
SpecQuery.SQL.Clear;
SpecQuery.SQL.Add('SELECT * FROM Specialities WHERE sp_depcode = '''+
MainForm.DepID+''';');
SpecQuery.Open;
end;

end.
