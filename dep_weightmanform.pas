unit dep_weightmanform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TWeightManForm = class(TForm)
    CloseBtn: TButton;
    WeightGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    WeightQuery: TADOQuery;
    WeightCommand: TADOCommand;
    WeightDataSource: TDataSource;
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WeightManForm: TWeightManForm;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TWeightManForm.AddBtnClick(Sender: TObject);
begin
NotYet;
end;

procedure TWeightManForm.EditBtnClick(Sender: TObject);
begin
NotYet;
end;

procedure TWeightManForm.DelBtnClick(Sender: TObject);
begin
NotYet;
end;

end.
