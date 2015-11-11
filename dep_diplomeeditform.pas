unit dep_diplomeeditform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, DB, ADODB;

type
  TDiplomeEditForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    PDFNameEdit: TLabeledEdit;
    SekretarEdit: TLabeledEdit;
    DateEdit: TDateTimePicker;
    MembersEdit: TLabeledEdit;
    Label1: TLabel;
    TypeComboBox: TComboBox;
    ProjectGroup: TRadioGroup;
    PDMNameEdit: TLabeledEdit;
    PDLNameEdit: TLabeledEdit;
    procedure PDFNameEditChange(Sender: TObject);
    procedure SekretarEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiplomeEditForm: TDiplomeEditForm;

implementation

uses dep_diplomeform, dep_main, kern;

{$R *.dfm}

procedure TDiplomeEditForm.PDFNameEditChange(Sender: TObject);
begin
OkBtn.Enabled :=
         (Trim(PDFNameEdit.Text) <> '') and
         (Trim(PDMNameEdit.Text) <> '') and
         (Trim(PDLNameEdit.Text) <> '') and
         (Trim(SekretarEdit.Text) <> '')
end;

procedure TDiplomeEditForm.SekretarEditChange(Sender: TObject);
begin
OkBtn.Enabled :=
         (Trim(PDFNameEdit.Text) <> '') and
         (Trim(PDMNameEdit.Text) <> '') and
         (Trim(PDLNameEdit.Text) <> '') and
         (Trim(SekretarEdit.Text) <> '')
end;

procedure TDiplomeEditForm.FormCreate(Sender: TObject);
var
query : TADOQuery;
x     : integer;
cont  : TContainer;

begin
query := TADOQuery.Create(self);
query.Connection := MainForm.Connection;
query.SQL.Clear;
query.SQL.Add('SELECT * FROM ComissionTypes ORDER BY ct_Type');
query.Open;
if query.RecordCount > 0 then
  for x := 1 to query.RecordCount do
    begin
    query.RecNo := x;
    cont := TContainer.Create;
    cont.Name := query.FieldByName('ct_Type').AsString;
    cont.Key := query.FieldByName('ct_pcode').AsString;
    TypeComboBox.Items.AddObject(cont.Name, cont);
    end;
DateEdit.Date := Now;
OkBtn.Enabled :=
         (Trim(PDFNameEdit.Text) <> '') and
         (Trim(PDMNameEdit.Text) <> '') and
         (Trim(PDLNameEdit.Text) <> '') and
         (Trim(SekretarEdit.Text) <> '')
end;

end.
