unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient, Provider,dialogs;

type
  TDM = class(TDataModule)
    database: TDatabase;
    qryFiles: TQuery;
    qryUsers: TQuery;
    qryComps: TQuery;
    qryTypes: TQuery;
    usqf: TUpdateSQL;
    usqryUsers: TUpdateSQL;
    usqryComps: TUpdateSQL;
    usqryTypes: TUpdateSQL;
    dsQqryTypes: TDataSource;
    spDELType: TStoredProc;
    spDeLUSer: TStoredProc;
    spDelComp: TStoredProc;
    qryfiles_by_comp: TQuery;
    dsQryFiles: TDataSource;
    dsQryUsers: TDataSource;
    dsQryComps: TDataSource;
    qryFiles_by_USer: TQuery;
    qryFiles_by_Type: TQuery;
    qryUsersKOD: TIntegerField;
    qryUsersLASTNAME: TStringField;
    qryUsersFIRSTNAME: TStringField;
    qryUsersOTCH: TStringField;
    qryUsersGROUPA: TStringField;
    qryFilesKOD: TIntegerField;
    qryFilesKOD_COMP: TIntegerField;
    qryFilesKOD_TYPE: TIntegerField;
    qryFilesKOD_USER: TIntegerField;
    qryFilesFSIZE: TFloatField;
    qryFilesDATE_CREATE: TDateTimeField;
    qryFilesDATE_MODIFIC: TDateTimeField;
    qryCompsKOD: TIntegerField;
    qryCompsNAME: TStringField;
    qryCompsNUM_KLASS: TStringField;
    qryTypesKOD: TIntegerField;
    qryTypesNAME: TStringField;
    qryTypesDESCRIPTION: TStringField;
    dsQryFiles_by_comp: TDataSource;
    dsQryFiles_by_User: TDataSource;
    dsQryFiles_by_Type: TDataSource;
    procedure databaseAfterConnect(Sender: TObject);
    procedure databaseAfterDisconnect(Sender: TObject);

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


procedure TDM.databaseAfterConnect(Sender: TObject);
begin
//   showmessage('Connected');
  frmMain.setn(true);
end;

procedure TDM.databaseAfterDisconnect(Sender: TObject);
begin
  frmMain.setn(false);
end;

end.
