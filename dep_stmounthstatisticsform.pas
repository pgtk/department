unit dep_stmounthstatisticsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls;

type
  TStMounthStatisticsForm = class(TForm)
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    ADOQuery: TADOQuery;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StMounthStatisticsForm: TStMounthStatisticsForm;

implementation

uses dep_main;

{$R *.dfm}

end.
