unit dep_inputform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TInputForm = class(TForm)
    Label1: TLabel;
    NameEdit: TEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InputForm: TInputForm;

implementation

{$R *.dfm}

end.
