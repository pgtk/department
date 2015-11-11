unit dep_subjectselectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TSubjectSelectForm = class(TForm)
    SubjQuery: TADOQuery;
    SubjDataSource: TDataSource;
    SubjGrid: TDBGrid;
    OkBtn: TButton;
    CancelBtn: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubjectSelectForm: TSubjectSelectForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TSubjectSelectForm.FormCreate(Sender: TObject);
begin
SubjQuery.Open;
end;

end.
