unit dep_pkmembersform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TPkMembersForm = class(TForm)
    MembersSource: TDataSource;
    MembersGrid: TDBGrid;
    MembersCommand: TADOCommand;
    MembersQuery: TADOQuery;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PkMembersForm: TPkMembersForm;

implementation

uses dep_main, dep_practicsform, kern;

{$R *.dfm}

procedure TPkMembersForm.AddBtnClick(Sender: TObject);
var
mname  : string;
begin
mname := InputBox('Введите ФИО руководителя','ФИО','');
if Trim(mname) <> '' then
  begin
  MembersCommand.CommandText :=
  'INSERT INTO PkMembers(pkm_pkcode, pkm_Name) VALUES('''+
  TPracticsForm(Owner).PracticsQuery.FieldByName('pk_pcode').AsString+
  ''', '''+mname+''');';
  MembersCommand.Execute;
  MembersQuery.Requery([]);
  end;
end;

procedure TPkMembersForm.EditBtnClick(Sender: TObject);
var
mname  : string;
begin
mname := MembersQuery.FieldByName('pkm_Name').AsString;
mname := InputBox('Введите ФИО руководителя','ФИО',mname);
if Trim(mname) <> '' then
  begin
  MembersCommand.CommandText :=
  'UPDATE PkMembers SET pkm_Name='''+mname+''' WHERE pkm_pcode='''+
  MembersQuery.FieldByName('pkm_pcode').AsString+''';';
  MembersCommand.Execute;
  MembersQuery.Requery([]);
  end;
end;

procedure TPkMembersForm.DelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  MembersCommand.CommandText :=
  'DELETE PkMembers WHERE pkm_pcode='''+
  MembersQuery.FieldByName('pkm_pcode').AsString+''';';
  MembersCommand.Execute;
  MembersQuery.Requery([]);
  end;
end;

end.
