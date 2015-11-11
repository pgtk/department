unit dep_semesterselectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TComboSelectForm = class(TForm)
    OkBtn: TButton;
    SelectComboBox: TComboBox;
    Label1: TLabel;
    CancelBtn: TButton;
    AutoFillCheckBox: TCheckBox;
    procedure SelectComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComboSelectForm: TComboSelectForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TComboSelectForm.SelectComboBoxChange(Sender: TObject);
begin
OkBtn.Enabled := SelectComboBox.ItemIndex >= 0;
end;

procedure TComboSelectForm.FormCreate(Sender: TObject);
begin
OkBtn.Enabled := SelectComboBox.ItemIndex >= 0;
end;

end.
