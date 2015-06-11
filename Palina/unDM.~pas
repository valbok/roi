unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    qryAllPrepods: TQuery;
    qryAllNauch_naprav: TQuery;
    qryAllKafedri: TQuery;
    qryAllAvtorstvo: TQuery;
    qryAllIzdaniya: TQuery;
    qryAllTypes_izds: TQuery;
    usqryAllPrepods: TUpdateSQL;
    usqryAllTypes_izds: TUpdateSQL;
    usqryAllNauch_naprav: TUpdateSQL;
    usqryAllKafedri: TUpdateSQL;
    usqryAllIzdaniya: TUpdateSQL;
    usqryAllAvtorstvo: TUpdateSQL;
    dsQryAllPrepods: TDataSource;
    dsQryAllNauch_naprav: TDataSource;
    dsQryAllKafedri: TDataSource;
    dsQryAllIzdaniya: TDataSource;
    dsqryAllAvtorstvo: TDataSource;
    dsqryAllTypes_izds: TDataSource;
    qryAllPrepodsID: TIntegerField;
    qryAllPrepodsFAM: TStringField;
    qryAllPrepodsNAME: TStringField;
    qryAllPrepodsOTCH: TStringField;
    qryAllPrepodsBDATE: TDateTimeField;
    qryAllPrepodsEDUCATION: TStringField;
    qryAllPrepodsU_STEP: TStringField;
    qryAllPrepodsDOLGN: TStringField;
    qryAllPrepodsKAFEDRA_ID: TIntegerField;
    qryAllPrepodsNAUCH_NAPRAV_ID: TIntegerField;
    qryAllPrepodsLuKafedra: TStringField;
    qryAllPrepodsLUNauchNAPRAV: TStringField;
    qryAllNauch_napravID: TIntegerField;
    qryAllNauch_napravNAME: TStringField;
    qryAllKafedriID: TIntegerField;
    qryAllKafedriNAME: TStringField;
    qryAllIzdaniyaID: TIntegerField;
    qryAllIzdaniyaNAME: TStringField;
    qryAllIzdaniyaTYPE_IZD_ID: TIntegerField;
    qryAllIzdaniyaIZDATELSTVO: TStringField;
    qryAllIzdaniyaGOD_IZD: TIntegerField;
    qryAllIzdaniyaLUTypeizd: TStringField;
    qryAllAvtorstvoID: TIntegerField;
    qryAllAvtorstvoPREPOD_ID: TIntegerField;
    qryAllAvtorstvoIZD_ID: TIntegerField;
    qryAllAvtorstvoLUPrepod: TStringField;
    qryAllAvtorstvoLUIzd: TStringField;
    qryAllTypes_izdsID: TIntegerField;
    qryAllTypes_izdsNAME: TStringField;
    spDElete_prepod: TStoredProc;
    spDelete_type_izd: TStoredProc;
    spDelete_izdanie: TStoredProc;
    spDelete_Nauch_naprav: TStoredProc;
    spDelete_avtorstvo: TStoredProc;
    spDelete_kafedra: TStoredProc;
    qryPrepodN: TQuery;
    qryPrepodK: TQuery;
    qryIzdaniya_by_prepod: TQuery;
    qryPrepods_by_izdanie: TQuery;
    qryPrepods_by_izdanieRID: TIntegerField;
    qryPrepods_by_izdanieRFAM: TStringField;
    qryPrepods_by_izdanieRNAME: TStringField;
    qryPrepods_by_izdanieROTCH: TStringField;
    qryPrepods_by_izdanieRBDATE: TDateTimeField;
    qryPrepods_by_izdanieREDUCATION: TStringField;
    qryPrepods_by_izdanieRU_STEP: TStringField;
    qryPrepods_by_izdanieRDOLGN: TStringField;
    qryPrepods_by_izdanieRKAFEDRA_ID: TIntegerField;
    qryPrepods_by_izdanieRNAUCH_NAPRAV_ID: TIntegerField;
    qryPrepods_by_izdanieLUKafedra: TStringField;
    qryPrepods_by_izdanieLUNaprav: TStringField;
    qryIzdaniya_by_prepodRID: TIntegerField;
    qryIzdaniya_by_prepodRNAME: TStringField;
    qryIzdaniya_by_prepodRTYPE_IZD: TStringField;
    qryIzdaniya_by_prepodRIZDATELSTVO: TStringField;
    qryIzdaniya_by_prepodRGOD_IZD: TIntegerField;
    qryIzdaniya: TQuery;
    qryIzdaniyaID: TIntegerField;
    qryIzdaniyaNAME: TStringField;
    qryIzdaniyaTYPE_IZD_ID: TIntegerField;
    qryIzdaniyaIZDATELSTVO: TStringField;
    qryIzdaniyaGOD_IZD: TIntegerField;
    dsQryIzdaniya: TDataSource;
    dsqryPrepods_by_izdanie: TDataSource;
    dsqryPrepodN: TDataSource;
    dsqryPrepodK: TDataSource;
    dsqryIzdaniya_by_prepod: TDataSource;
    usQryPrepodK: TUpdateSQL;
    usQryPrepodN: TUpdateSQL;
    usQryIzdaniya: TUpdateSQL;
    qryPrepodNID: TIntegerField;
    qryPrepodNFAM: TStringField;
    qryPrepodNNAME: TStringField;
    qryPrepodNOTCH: TStringField;
    qryPrepodNBDATE: TDateTimeField;
    qryPrepodNEDUCATION: TStringField;
    qryPrepodNU_STEP: TStringField;
    qryPrepodNDOLGN: TStringField;
    qryPrepodNKAFEDRA_ID: TIntegerField;
    qryPrepodNNAUCH_NAPRAV_ID: TIntegerField;
    procedure DatabaseAfterConnect(Sender: TObject);
    procedure DatabaseAfterDisconnect(Sender: TObject);
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

procedure TDM.DatabaseAfterConnect(Sender: TObject);
begin
if frmMain.pathTodb ='' then
  frmMain.pathTodb:=Database.DatabaseName;
  frmMain.StatusBar.Panels[1].Text:='Подключено к ['+frmMain.pathTodb+']';
  frmMain.miConnect.Enabled:=false;
  frmMain.miDisConnect.Enabled:=true;
end;

procedure TDM.DatabaseAfterDisconnect(Sender: TObject);
begin
  frmMain.StatusBar.Panels[1].Text:='Отключено';
  frmMain.miConnect.Enabled:=true;
  frmMain.miDisConnect.Enabled:=false;
end;

end.
