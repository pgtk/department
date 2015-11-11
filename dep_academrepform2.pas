unit dep_academrepform2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TAcademRepForm2 = class(TForm)
    AcademRep2: TQuickRep;
    TitleBand1: TQRBand;
    SbTitle1: TQRLabel;
    SbTitle2: TQRLabel;
    SbTitle3: TQRLabel;
    SbTitle4: TQRLabel;
    SbTitle5: TQRLabel;
    SbTitle6: TQRLabel;
    SbTitle7: TQRLabel;
    SbTitle8: TQRLabel;
    SbTitle9: TQRLabel;
    SbTitle10: TQRLabel;
    SbTitle11: TQRLabel;
    SbTitle12: TQRLabel;
    SbTitle13: TQRLabel;
    SbTitle14: TQRLabel;
    SbTitle15: TQRLabel;
    SbTitle16: TQRLabel;
    HrLabel1: TQRLabel;
    HrLabel2: TQRLabel;
    HrLabel3: TQRLabel;
    HrLabel4: TQRLabel;
    HrLabel5: TQRLabel;
    HrLabel6: TQRLabel;
    HrLabel7: TQRLabel;
    HrLabel8: TQRLabel;
    HrLabel9: TQRLabel;
    HrLabel10: TQRLabel;
    HrLabel11: TQRLabel;
    HrLabel12: TQRLabel;
    HrLabel13: TQRLabel;
    HrLabel14: TQRLabel;
    HrLabel15: TQRLabel;
    HrLabel16: TQRLabel;
    MkLabel16: TQRLabel;
    MkLabel15: TQRLabel;
    MkLabel14: TQRLabel;
    MkLabel13: TQRLabel;
    MkLabel12: TQRLabel;
    MkLabel11: TQRLabel;
    MkLabel10: TQRLabel;
    MkLabel9: TQRLabel;
    MkLabel8: TQRLabel;
    MkLabel7: TQRLabel;
    MkLabel6: TQRLabel;
    MkLabel5: TQRLabel;
    MkLabel4: TQRLabel;
    MkLabel3: TQRLabel;
    MkLabel2: TQRLabel;
    MkLabel1: TQRLabel;
    SbTitle17: TQRLabel;
    SbTitle18: TQRLabel;
    SbTitle19: TQRLabel;
    SbTitle20: TQRLabel;
    SbTitle21: TQRLabel;
    SbTitle22: TQRLabel;
    SbTitle23: TQRLabel;
    SbTitle24: TQRLabel;
    SbTitle25: TQRLabel;
    SbTitle26: TQRLabel;
    SbTitle27: TQRLabel;
    SbTitle28: TQRLabel;
    SbTitle29: TQRLabel;
    SbTitle30: TQRLabel;
    SbTitle31: TQRLabel;
    SbTitle32: TQRLabel;
    HrLabel17: TQRLabel;
    HrLabel18: TQRLabel;
    HrLabel19: TQRLabel;
    HrLabel20: TQRLabel;
    HrLabel21: TQRLabel;
    HrLabel22: TQRLabel;
    HrLabel23: TQRLabel;
    HrLabel24: TQRLabel;
    HrLabel25: TQRLabel;
    HrLabel26: TQRLabel;
    HrLabel27: TQRLabel;
    HrLabel28: TQRLabel;
    HrLabel29: TQRLabel;
    HrLabel30: TQRLabel;
    HrLabel31: TQRLabel;
    MkLabel17: TQRLabel;
    MkLabel18: TQRLabel;
    MkLabel19: TQRLabel;
    MkLabel20: TQRLabel;
    MkLabel21: TQRLabel;
    MkLabel22: TQRLabel;
    MkLabel23: TQRLabel;
    MkLabel24: TQRLabel;
    MkLabel25: TQRLabel;
    MkLabel26: TQRLabel;
    MkLabel27: TQRLabel;
    MkLabel28: TQRLabel;
    MkLabel29: TQRLabel;
    MkLabel30: TQRLabel;
    MkLabel31: TQRLabel;
    MkLabel32: TQRLabel;
    HrLabel32: TQRLabel;
    SbTitle42: TQRLabel;
    SbTitle41: TQRLabel;
    SbTitle40: TQRLabel;
    SbTitle39: TQRLabel;
    SbTitle38: TQRLabel;
    SbTitle37: TQRLabel;
    SbTitle36: TQRLabel;
    SbTitle35: TQRLabel;
    SbTitle34: TQRLabel;
    SbTitle33: TQRLabel;
    HrLabel33: TQRLabel;
    MkLabel33: TQRLabel;
    HrLabel34: TQRLabel;
    MkLabel34: TQRLabel;
    HrLabel35: TQRLabel;
    MkLabel35: TQRLabel;
    HrLabel36: TQRLabel;
    MkLabel36: TQRLabel;
    HrLabel37: TQRLabel;
    MkLabel37: TQRLabel;
    HrLabel38: TQRLabel;
    MkLabel38: TQRLabel;
    HrLabel39: TQRLabel;
    MkLabel39: TQRLabel;
    HrLabel40: TQRLabel;
    MkLabel40: TQRLabel;
    HrLabel41: TQRLabel;
    MkLabel41: TQRLabel;
    HrLabel42: TQRLabel;
    MkLabel42: TQRLabel;
    SbTitle46: TQRLabel;
    SbTitle47: TQRLabel;
    SbTitle48: TQRLabel;
    SbTitle49: TQRLabel;
    SbTitle50: TQRLabel;
    SbTitle51: TQRLabel;
    SbTitle52: TQRLabel;
    SbTitle45: TQRLabel;
    SbTitle44: TQRLabel;
    SbTitle43: TQRLabel;
    HrLabel43: TQRLabel;
    HrLabel44: TQRLabel;
    HrLabel45: TQRLabel;
    HrLabel46: TQRLabel;
    HrLabel47: TQRLabel;
    HrLabel48: TQRLabel;
    HrLabel49: TQRLabel;
    HrLabel50: TQRLabel;
    HrLabel51: TQRLabel;
    HrLabel52: TQRLabel;
    MkLabel43: TQRLabel;
    MkLabel44: TQRLabel;
    MkLabel45: TQRLabel;
    MkLabel46: TQRLabel;
    MkLabel47: TQRLabel;
    MkLabel48: TQRLabel;
    MkLabel49: TQRLabel;
    MkLabel50: TQRLabel;
    MkLabel51: TQRLabel;
    MkLabel52: TQRLabel;
    SbTitle60: TQRLabel;
    SbTitle59: TQRLabel;
    SbTitle58: TQRLabel;
    SbTitle57: TQRLabel;
    SbTitle56: TQRLabel;
    SbTitle55: TQRLabel;
    SbTitle54: TQRLabel;
    SbTitle53: TQRLabel;
    HrLabel53: TQRLabel;
    HrLabel54: TQRLabel;
    HrLabel55: TQRLabel;
    HrLabel56: TQRLabel;
    HrLabel57: TQRLabel;
    HrLabel59: TQRLabel;
    HrLabel58: TQRLabel;
    HrLabel60: TQRLabel;
    MkLabel60: TQRLabel;
    MkLabel59: TQRLabel;
    MkLabel58: TQRLabel;
    MkLabel57: TQRLabel;
    MkLabel56: TQRLabel;
    MkLabel55: TQRLabel;
    MkLabel54: TQRLabel;
    MkLabel53: TQRLabel;
    SbTitle64: TQRLabel;
    HrLabel64: TQRLabel;
    MkLabel64: TQRLabel;
    SbTitle63: TQRLabel;
    SbTitle62: TQRLabel;
    SbTitle61: TQRLabel;
    HrLabel61: TQRLabel;
    HrLabel62: TQRLabel;
    HrLabel63: TQRLabel;
    MkLabel63: TQRLabel;
    MkLabel62: TQRLabel;
    MkLabel61: TQRLabel;
    SbTitle66: TQRLabel;
    HrLabel66: TQRLabel;
    MkLabel66: TQRLabel;
    SbTitle65: TQRLabel;
    HrLabel65: TQRLabel;
    MkLabel65: TQRLabel;
    SbTitle67: TQRLabel;
    HrLabel67: TQRLabel;
    MkLabel67: TQRLabel;
    SbTitle68: TQRLabel;
    SbTitle69: TQRLabel;
    SbTitle70: TQRLabel;
    SbTitle71: TQRLabel;
    HrLabel68: TQRLabel;
    HrLabel69: TQRLabel;
    HrLabel70: TQRLabel;
    HrLabel71: TQRLabel;
    MkLabel71: TQRLabel;
    MkLabel70: TQRLabel;
    MkLabel69: TQRLabel;
    MkLabel68: TQRLabel;
    SbTitle72: TQRLabel;
    SbTitle73: TQRLabel;
    HrLabel72: TQRLabel;
    HrLabel73: TQRLabel;
    MkLabel72: TQRLabel;
    MkLabel73: TQRLabel;
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure PrintCopy(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure MkLabel1Print(sender: TObject; var Value: String);
  private
  AisCopy : boolean;
    { Private declarations }
  public
  property isCopy: boolean read AisCopy write AisCopy;
    { Public declarations }
  end;

var
  AcademRepForm2: TAcademRepForm2;

implementation

uses dep_main, dep_dep, kern;

{$R *.dfm}

procedure TAcademRepForm2.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
if not isCopy then
  with sender as TQRLabel do
  begin
  Frame.DrawTop := false;
  Frame.DrawBottom := false;
  Frame.DrawLeft := false;
  Frame.DrawRight := false;
  end;
end;

procedure TAcademRepForm2.PrintCopy(sender: TObject;
  var Value: String);
begin
if Value = 'Empty' then Value := '';
end;

procedure TAcademRepForm2.QRDBText3Print(sender: TObject;
  var Value: String);
var
mark : integer;
begin
mark := StrToIntDef(Value,0);
case mark of
 0..2 : Value := '';
 3    : Value := 'удовлетворительно';
 4    : Value := 'хорошо';
 5    : Value := 'отлично';
end; // case;
end;

procedure TAcademRepForm2.MkLabel1Print(sender: TObject;
  var Value: String);
var
val : integer;

begin
val := StrToIntDef(Value,0);
case val of
 0..2 : Value := '';
 3    : Value := 'удовлетворительно';
 4    : Value := 'хорошо';
 5    : Value := 'отлично';
 NN   : Value := 'освобожден(а)';
 NS   : Value := 'не изучал(а)';
 ZC   : Value := 'зачет';
end; // case;
end;

end.
