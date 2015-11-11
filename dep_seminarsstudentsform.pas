unit dep_seminarsstudentsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TSeminarsStudentsForm = class(TForm)
    StudentsGrid: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    StudentsQuery: TADOQuery;
    Command: TADOCommand;
    StudentsSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SeminarsStudentsForm: TSeminarsStudentsForm;

implementation

uses dep_main;

{$R *.dfm}

end.
