unit dep_studdelform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, DBCtrls;

type
  TDelStudentForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    AdvGroupBox: TGroupBox;
    NumEdit: TEdit;
    NumLabel: TLabel;
    ReasonEdit: TEdit;
    ReasonLabel: TLabel;
    ActionComboBox: TRadioGroup;
    Label1: TLabel;
    DateEdit: TDateTimePicker;
    Label2: TLabel;
    ReasonComboBox: TComboBox;
    procedure ActionComboBoxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReasonComboBoxChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelStudentForm: TDelStudentForm;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TDelStudentForm.ActionComboBoxClick(Sender: TObject);
begin
AdvGroupBox.Visible := ActionComboBox.ItemIndex = ActionComboBox.Items.Count-1;
end;

procedure TDelStudentForm.FormCreate(Sender: TObject);
var
query : TADOQuery;
x     : integer;
cont  : TContainer;

begin
DateEdit.Date := Now;
AdvGroupBox.Visible := ActionComboBox.ItemIndex = ActionComboBox.Items.Count-1;
query := TADOQuery.Create(self);
query.Connection := MainForm.Connection;
query.SQL.Clear;
query.SQL.Add('SELECT * FROM DelReasons ORDER BY dr_pcode;');
query.Open;
for x := 1 to query.RecordCount do
  begin
  query.RecNo := x;
  cont := TContainer.Create;
  cont.Name := query.FieldByName('dr_ReasonText').AsString;
  cont.Key := query.FieldByName('dr_pcode').AsString;
  cont.Value := query.FieldByName('dr_pcode').AsInteger;
  ReasonComboBox.Items.AddObject(cont.Name, cont);
  end;
query.Free;
ReasonComboBox.ItemIndex := 0;
end;

procedure TDelStudentForm.ReasonComboBoxChange(Sender: TObject);
begin
ReasonEdit.Enabled := (ReasonComboBox.ItemIndex = 0);
if not ReasonEdit.Enabled then ReasonEdit.Text := '';
end;

procedure TDelStudentForm.FormDestroy(Sender: TObject);
var
x      : integer;
begin
for x := 0 to ReasonComboBox.Items.Count-1 do
  ReasonComboBox.Items.Objects[x].Free;
end;

end.
