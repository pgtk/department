unit dep_skillsinputform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Mask;

type
  TSkillsForm = class(TForm)
    Label2: TLabel;
    MounthComboBox: TComboBox;
    Label3: TLabel;
    OkBtn: TButton;
    CancelBtn: TButton;
    LevelEdit: TMaskEdit;
    procedure MounthComboBoxChange(Sender: TObject);
  private
  ALevel : real;
    { Private declarations }
  public
  property Level: real read ALevel write ALevel;
    { Public declarations }
  end;

var
  SkillsForm: TSkillsForm;

implementation

uses dep_skillsform;

{$R *.dfm}

procedure TSkillsForm.MounthComboBoxChange(Sender: TObject);
begin
if TSkillsManForm(Owner).SkillsQuery.Active then
with TSkillsManForm(Owner) do
begin
SkillsQuery.Filtered := false;
SkillsQuery.Filter := 'gsk_Mounth = '''+
   IntToStr(self.MounthComboBox.ItemIndex+1)+'''';
SkillsQuery.Filtered := true;
OkBtn.Enabled := SkillsQuery.RecordCount = 0;
SkillsQuery.Filtered := false;
end;

end;

end.
