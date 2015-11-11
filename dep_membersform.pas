unit dep_membersform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TMembersForm = class(TForm)
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    MembersQuery: TADOQuery;
    Command: TADOCommand;
    MembersSource: TDataSource;
    MembersGrid: TDBGrid;
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MembersForm: TMembersForm;

implementation

uses dep_main, kern, dep_diplomeform;

{$R *.dfm}

procedure TMembersForm.AddBtnClick(Sender: TObject);
var
ename : string;
begin
ename := InputBox('Введите имя участника','Имя','');
if trim(ename) <> '' then
  begin
  Command.CommandText := 'INSERT INTO Members (mem_comcode, mem_Name) VALUES ('''+
  TDiplomeForm(owner).ComissionQuery.FieldByName('comv_pcode').AsString+
  ''', '''+ename+''');';
  Command.Execute;
  MembersQuery.Requery([]);
  end;
end;

procedure TMembersForm.EditBtnClick(Sender: TObject);
var
ename : string;
begin
ename := MembersQuery.FieldByName('mem_Name').AsString;
ename := InputBox('Введите имя участника','Имя',ename);
if trim(ename) <> '' then
  begin
  Command.CommandText := 'UPDATE Members SET mem_Name='''+ename+
  ''' WHERE mem_pcode='''+MembersQuery.FieldByName('mem_pcode').AsString+''';';
  Command.Execute;
  MembersQuery.Requery([]);
  end;
end;

procedure TMembersForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Members WHERE mem_pcode='''+
  MembersQuery.FieldByName('mem_pcode').AsString+''';';
  Command.Execute;
  MembersQuery.Requery([]);
  end;
end;

end.
