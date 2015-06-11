unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient, Provider,dialogs;

type
  TDM = class(TDataModule)
    db: TDatabase;
    _qPotrebitels: TQuery;
    _qTovars: TQuery;
    _qNakladnies: TQuery;
    qPostavkas: TQuery;
    usqp: TUpdateSQL;
    usqrt: TUpdateSQL;
    usqn: TUpdateSQL;
    usqPostavkas: TUpdateSQL;
    dsQPotreBitels: TDataSource;
    dsQTovars: TDataSource;
    dsQNakladnies: TDataSource;
    dsQPostavkas: TDataSource;
    spDELpotrebitel: TStoredProc;
    spDeLTovar: TStoredProc;
    spDelNakl: TStoredProc;
    _qPotrebitelsCODE: TIntegerField;
    _qPotrebitelsNAME: TStringField;
    _qPotrebitelsADRES: TStringField;
    _qPotrebitelsPHONE: TStringField;
    _qPotrebitelsCOMMENTS: TStringField;
    _qTovarsCODE: TIntegerField;
    _qTovarsNAME: TStringField;
    _qTovarsIZMR: TStringField;
    _qTovarsCOST_FOR_ONE: TFloatField;
    _qTovarsPRODUCER: TStringField;
    _qNakladniesCODE: TIntegerField;
    _qNakladniesDAT: TDateTimeField;
    _qNakladniesPOTREBITEL_CODE: TIntegerField;
    qPostavkasCODE: TIntegerField;
    qPostavkasNAKL_CODE: TIntegerField;
    qPostavkasTOVAR_CODE: TIntegerField;
    qPostavkasCOL: TFloatField;
    _qNakladniesLUN: TStringField;
    qPostavkaslut: TStringField;
    qPotrebitels: TClientDataSet;
    pqPotrebitels: TDataSetProvider;
    qTovars: TClientDataSet;
    pqTovars: TDataSetProvider;
    qNakladnies: TClientDataSet;
    pqNakladnies: TDataSetProvider;
    qNakl_by_potr: TQuery;
    dspotr: TDataSource;
    qPotrebitelsCODE: TIntegerField;
    qPotrebitelsNAME: TStringField;
    qPotrebitelsADRES: TStringField;
    qPotrebitelsPHONE: TStringField;
    qPotrebitelsCOMMENTS: TStringField;
    dsTvr: TDataSource;
    dsNakl: TDataSource;
    qPost_by_nakl: TQuery;
    qpost_by_tovar: TQuery;
    qTovarsqpost_by_tovar: TDataSetField;
    qTovarsCODE: TIntegerField;
    qTovarsNAME: TStringField;
    qTovarsIZMR: TStringField;
    qTovarsCOST_FOR_ONE: TFloatField;
    qTovarsPRODUCER: TStringField;
    qNakladniesCODE: TIntegerField;
    qNakladniesDAT: TDateTimeField;
    qNakladniesLUN: TStringField;
    qNakladniesPOTREBITEL_CODE: TIntegerField;
    qNakladniesqPost_by_nakl: TDataSetField;
    qPotrebitelsqNakl_by_potr: TDataSetField;
    procedure dbAfterConnect(Sender: TObject);
    procedure dbAfterDisconnect(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses unMain;

{$R *.dfm}


procedure TDM.dbAfterConnect(Sender: TObject);
begin
//   showmessage('Connected');
   frmMain.setB(true);
end;

procedure TDM.dbAfterDisconnect(Sender: TObject);
begin
   frmMain.setB(false);
end;

end.
