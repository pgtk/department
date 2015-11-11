unit dep_workform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TWorkForm = class(TForm)
    FNameEdit: TLabeledEdit;
    MNameEdit: TLabeledEdit;
    LNameEdit: TLabeledEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorkForm: TWorkForm;

implementation

{$R *.dfm}

end.
