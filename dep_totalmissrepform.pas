unit dep_totalmissrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, StdCtrls;

type
  TTotalMissingsReport = class(TForm)
    TotalMissingsReport: TQuickRep;
    TitleBand: TQRBand;
    ColumnHeaderBand: TQRBand;
    DetailBand: TQRBand;
    QRLabel1: TQRLabel;
    TitleLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    TotalQuery: TADOQuery;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    DepartmentNameLabel: TQRLabel;
    DepartmentManagerNameLabel: TQRLabel;
    MinistryLabel: TQRLabel;
    SchoolLabel: TQRLabel;
    DescLabel: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TotalMissingsReport: TTotalMissingsReport;

implementation

uses dep_main;

{$R *.dfm}

end.
