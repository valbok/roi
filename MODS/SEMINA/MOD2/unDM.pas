unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient, Provider;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    qryAllizdatelstva: TQuery;
    qryAllKnigi: TQuery;
    qryAllJanri: TQuery;
    qryAllStrani: TQuery;
    qryAllAvtori: TQuery;
    qryAllVipusk: TQuery;
    usqryAllIzdatelstva: TUpdateSQL;
    usqryAllVipusk: TUpdateSQL;
    usqryAllKnigi: TUpdateSQL;
    usqryAllJanri: TUpdateSQL;
    usqryAllAvtori: TUpdateSQL;
    usqryAllStrani: TUpdateSQL;
    dsQryAllIzdatelstva: TDataSource;
    dsQryAllKnigi: TDataSource;
    dsQryAllJanri: TDataSource;
    dsQryAllAvtori: TDataSource;
    dsqryAllStrani: TDataSource;
    dsqryAllVipusk: TDataSource;
    spDElete_Izdatelstvo: TStoredProc;
    spDelete_vipusk: TStoredProc;
    spDelete_avtor: TStoredProc;
    spDelete_Kniga: TStoredProc;
    spDelete_strana: TStoredProc;
    spDelete_Janr: TStoredProc;
    qryAllizdatelstvaID: TIntegerField;
    qryAllizdatelstvaNAME: TStringField;
    qryAllizdatelstvaADDRESS: TStringField;
    qryAllizdatelstvaPHONE: TStringField;
    qryAllizdatelstvaE_MAIL: TStringField;
    qryAllizdatelstvaGLAV_REDAKTOR: TStringField;
    qryAllKnigiID: TIntegerField;
    qryAllKnigiNAME: TStringField;
    qryAllKnigiJANR_ID: TIntegerField;
    qryAllKnigiAVTOR_ID: TIntegerField;
    qryAllKnigiCOST: TFloatField;
    qryAllKnigiLUJanr: TStringField;
    qryAllKnigiLUAvtor: TStringField;
    qryVipuskK: TQuery;
    qryVipuski: TQuery;
    qryAvtori: TQuery;
    qryVipuskKID: TIntegerField;
    qryVipuskKKNIGA_ID: TIntegerField;
    qryVipuskKCOL_COPIES: TIntegerField;
    qryVipuskKIZD_ID: TIntegerField;
    qryVipuskKDATA_VIPUSKA: TDateTimeField;
    qryVipuskKLUIzd: TStringField;
    qryTMPKnigi: TQuery;
    qryVipuskKLUKniga: TStringField;
    qryVipuskiID: TIntegerField;
    qryVipuskiKNIGA_ID: TIntegerField;
    qryVipuskiCOL_COPIES: TIntegerField;
    qryVipuskiIZD_ID: TIntegerField;
    qryVipuskiDATA_VIPUSKA: TDateTimeField;
    qryVipuskiLUkniga: TStringField;
    qryTMPizdatelstva: TQuery;
    qryVipuskiLUIZD: TStringField;
    qryAllStraniID: TIntegerField;
    qryAllStraniNAME: TStringField;
    qryAllAvtoriID: TIntegerField;
    qryAllAvtoriFAM: TStringField;
    qryAllAvtoriNAME: TStringField;
    qryAllAvtoriOTCH: TStringField;
    qryAllAvtoriSTRANA_ID: TIntegerField;
    qryAllAvtoriLUStrana: TStringField;
    qryAvtoriID: TIntegerField;
    qryAvtoriFAM: TStringField;
    qryAvtoriNAME: TStringField;
    qryAvtoriOTCH: TStringField;
    qryAvtoriSTRANA_ID: TIntegerField;
    qryKnigiA: TQuery;
    qryKnigiAID: TIntegerField;
    qryKnigiANAME: TStringField;
    qryKnigiAJANR_ID: TIntegerField;
    qryKnigiAAVTOR_ID: TIntegerField;
    qryKnigiACOST: TFloatField;
    qryKnigiALU: TStringField;
    qryKnigiJ: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    qryKnigiJLUAvt: TStringField;
    dsqryVipuskK: TDataSource;
    dsqryVipuski: TDataSource;
    dsqryKnigiJ: TDataSource;
    dsqryKnigiA: TDataSource;
    dsqryAvtori: TDataSource;
    usqryVK: TUpdateSQL;
    usqryVI: TUpdateSQL;
    usqryKnigiJ: TUpdateSQL;
    qryAllJanriID: TIntegerField;
    qryAllJanriNAME: TStringField;
    usqryKnigiA: TUpdateSQL;
    usQryAvtori: TUpdateSQL;
    qryAllVipuskID: TIntegerField;
    qryAllVipuskKNIGA_ID: TIntegerField;
    qryAllVipuskCOL_COPIES: TIntegerField;
    qryAllVipuskIZD_ID: TIntegerField;
    qryAllVipuskDATA_VIPUSKA: TDateTimeField;
    qryAllVipuskLuKnigi: TStringField;
    qryAllVipuskluIzd: TStringField;
    StoredProc: TStoredProc;

    procedure DatabaseAfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
TSet = class

  private

  public

    procedure SetFirst(var qry:Tquery); overload;
    procedure SetLast(var qry:Tquery); overload;
    procedure SetPrior(var qry:Tquery); overload;
    procedure SetNext(var qry:Tquery); overload;

    procedure SetNew(var qry:Tquery); overload;
    procedure SetDelete(var qry:TStoredProc); overload;
    procedure SetEdit(var qry:Tquery); overload;

    procedure SetMoveBy(var qry:Tquery;i:integer); overload;

    procedure SetApplyUpdates(var qry:Tquery); overload;
    procedure SetCancelUpdates(var qry:Tquery); overload;

    function  isEOF(var qry:Tquery) : Boolean; overload;
    function  isBOF(var qry:Tquery) : Boolean; overload;

  end;

var
  DM: TDM;

implementation

uses unMain;

{$R *.dfm}


procedure TDM.DatabaseAfterDisconnect(Sender: TObject);
begin
with frmMain do
begin
 end;
end;

function  TSet.IsBOF(var qry:Tquery) : Boolean;
begin
   result:=qry.Bof;
end;


function  TSet.IsEOF(var qry:Tquery) : Boolean;
begin
   result:=qry.Eof;
end;
procedure TSet.SetApplyUpdates(var qry:Tquery);
begin
   qry.ApplyUpdates;
end;

procedure TSet.SetCancelUpdates(var qry:Tquery);
begin
   qry.CancelUpdates;
end;


procedure TSet.SetEdit(var qry:Tquery);
begin
  qry.Edit;
end;
procedure TSet.SetDelete(var qry:TStoredProc);
begin
  qry.ExecProc;
end;
procedure TSet.SetNew(var qry:Tquery);
begin
  qry.ExecSQL;
end;

procedure TSet.SetFirst(var qry:Tquery);
begin
  qry.First;
end;

procedure TSet.SetLast(var qry:Tquery);
begin
  qry.Last;
end;

procedure TSet.SetNext(var qry:Tquery);
begin
  qry.Next;
end;

procedure TSet.SetPrior(var qry:Tquery);
begin
  qry.Prior;
end;

procedure TSet.SetMoveBy(var qry:Tquery;i:integer);
begin
  qry.MoveBy(i);
end;
////////////////////////////////////////////


end.
