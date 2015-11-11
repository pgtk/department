unit dep_specform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSpecForm = class(TForm)
    Label1: TLabel;
    NameEdit: TEdit;
    Label2: TLabel;
    SpecializationEdit: TEdit;
    Label3: TLabel;
    KvalificationEdit: TEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    KeyEdit: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    ShortNameEdit: TEdit;
    SpecCheckBox: TCheckBox;
    ActCheckBox: TCheckBox;
    procedure SpecCheckBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecForm: TSpecForm;

implementation

{$R *.dfm}

procedure TSpecForm.SpecCheckBoxClick(Sender: TObject);
begin
SpecializationEdit.Enabled := SpecCheckBox.Checked;
end;

end.
