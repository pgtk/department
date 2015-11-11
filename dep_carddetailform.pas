unit dep_carddetailform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, Mask;

type
  TCardDetailForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Sem8GroupBox: TGroupBox;
    Label18: TLabel;
    MarkEdit: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    HoursEdit: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    AHoursEdit: TEdit;
    Label6: TLabel;
    NumberEdit: TEdit;
    Memo: TMemo;
    otherSchoolCheckBox: TCheckBox;
    fakultativeCheckBox: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CardDetailForm: TCardDetailForm;

implementation

uses dep_cardform, dep_main;

{$R *.dfm}

end.
