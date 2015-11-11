unit dep_reportselectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TReportSelectForm = class(TForm)
    ParamRadioGroup: TRadioGroup;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportSelectForm: TReportSelectForm;

implementation

{$R *.dfm}

end.
