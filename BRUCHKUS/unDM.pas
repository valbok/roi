unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient, Provider,dialogs;

type
  TDM = class(TDataModule)
    DB: TDatabase;
    qizdeliya: TQuery;
    qVidi: TQuery;
    qIzgotoviteli: TQuery;
    qFormi: TQuery;
    usqizdeliya: TUpdateSQL;
    usqVidi: TUpdateSQL;
    usqizgotoviteli: TUpdateSQL;
    usqFormi: TUpdateSQL;
    dsQizdeliya: TDataSource;
    dsQVidi: TDataSource;
    dsQizgotoviteli: TDataSource;
    dsQFormi: TDataSource;
    spDElete_Formi: TStoredProc;
    spDelete_vid: TStoredProc;
    spDelete_Izdelie: TStoredProc;
    spDelete_Izgotovitel: TStoredProc;
    qUIzdeliyaV: TQuery;
    qUIzdeliyai: TQuery;
    qUizgotoviteli: TQuery;
    dsqUIzdeliyaV: TDataSource;
    dsQuizdeliyai: TDataSource;
    dsquizgotoviteli: TDataSource;
    usqIZDV: TUpdateSQL;
    usqizdi: TUpdateSQL;
    usquizg: TUpdateSQL;
    qizdeliyaID: TIntegerField;
    qizdeliyaNAME: TStringField;
    qizdeliyaVID_ID: TIntegerField;
    qizdeliyaUNIT_IZMR: TStringField;
    qizdeliyaCOST_FOR_ONE: TFloatField;
    qizdeliyaIZGOTOVITEL_ID: TIntegerField;
    qVidiID: TIntegerField;
    qVidiNAME: TStringField;
    qIzgotoviteliID: TIntegerField;
    qIzgotoviteliNAME: TStringField;
    qIzgotoviteliADDRESS: TStringField;
    qIzgotoviteliFORMA_SOB_ID: TIntegerField;
    qIzgotoviteliFACE: TStringField;
    qIzgotoviteliTELEPHONE: TStringField;
    qIzgotoviteliE_MAIL: TStringField;
    qFormiID: TIntegerField;
    qFormiNAME: TStringField;
    qIzgotoviteliLUFormi: TStringField;
    qizdeliyaLUVid: TStringField;
    qizdeliyaLUIzgot: TStringField;
    qUIzdeliyaVID: TIntegerField;
    qUIzdeliyaVNAME: TStringField;
    qUIzdeliyaVVID_ID: TIntegerField;
    qUIzdeliyaVUNIT_IZMR: TStringField;
    qUIzdeliyaVCOST_FOR_ONE: TFloatField;
    qUIzdeliyaVIZGOTOVITEL_ID: TIntegerField;
    qUIzdeliyaVLUIZg: TStringField;
    qUIzdeliyaiID: TIntegerField;
    qUIzdeliyaiNAME: TStringField;
    qUIzdeliyaiVID_ID: TIntegerField;
    qUIzdeliyaiUNIT_IZMR: TStringField;
    qUIzdeliyaiCOST_FOR_ONE: TFloatField;
    qUIzdeliyaiIZGOTOVITEL_ID: TIntegerField;
    qUIzdeliyaiLUVID: TStringField;
    qUizgotoviteliID: TIntegerField;
    qUizgotoviteliNAME: TStringField;
    qUizgotoviteliADDRESS: TStringField;
    qUizgotoviteliFORMA_SOB_ID: TIntegerField;
    qUizgotoviteliFACE: TStringField;
    qUizgotoviteliTELEPHONE: TStringField;
    qUizgotoviteliE_MAIL: TStringField;
    procedure DBAfterConnect(Sender: TObject);
    procedure DBAfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure First(var qry:Tquery);
    procedure Last(var qry:Tquery);
    procedure Prior(var qry:Tquery);
    procedure Next(var qry:Tquery);
    procedure New(var qry:Tquery);
    procedure Delete(var qry:TStoredProc);
    procedure Edit(var qry:Tquery);
    procedure MoveBy(var qry:Tquery;i:integer);

    procedure ApplyUpdates(var qry:Tquery);
    procedure CancelUpdates(var qry:Tquery);
    function  isEOF(var qry:Tquery) : Boolean;
    function  isBOF(var qry:Tquery) : Boolean;
  end;

var
  DM: TDM;

implementation

uses unMain;

{$R *.dfm}

procedure TDM.DBAfterConnect(Sender: TObject);
begin
with frmMain do
begin
if pathTodb ='' then
  pathTodb:=DB.Params[0];

  StatusBar.Panels[1].Text:='['+frmMain.pathTodb+']';
  miConnect.Enabled:=false;
  miDisConnect.Enabled:=true;
  qizdeliya.Open;
  SetNavBTN;

 sbNew.Enabled:=true;
 sbApply.Enabled:=true;
 sbCancel.Enabled:=true;
 sbDElete.Enabled:=true;
 sbEdit.Enabled:=true;

 sbFirst.Enabled:=true;
 sbLast.Enabled:=true;
 sbNext.Enabled:=true;
 sbPrior.Enabled:=true;
 sbRefresh.Enabled:=true;

 miIzdeliya.Enabled:=true;
 miVidi.Enabled:=true;
 miIzgotoviteli.Enabled:=true;
 miFormi.Enabled:=true;

 end;
end;

procedure TDM.DBAfterDisconnect(Sender: TObject);
begin
with frmMain do
begin
 StatusBar.Panels[1].Text:='Отключено';
 miConnect.Enabled:=true;
 miDisConnect.Enabled:=false;
 sbNew.Enabled:=false;
 sbApply.Enabled:=false;
 sbCancel.Enabled:=false;
 sbDElete.Enabled:=false;
 sbEdit.Enabled:=false;

 sbFirst.Enabled:=false;
 sbLast.Enabled:=false;
 sbNext.Enabled:=false;
 sbPrior.Enabled:=false;
 sbRefresh.Enabled:=false;

 miIzdeliya.Enabled:=false;
 miVidi.Enabled:=false;
 miIzgotoviteli.Enabled:=false;
 miFormi.Enabled:=false;

 end;
end;

function  TDM.IsBOF(var qry:Tquery) : Boolean;
begin
   result:=qry.Bof;
end;


function  TDM.IsEOF(var qry:Tquery) : Boolean;
begin
   result:=qry.Eof;
end;
procedure TDM.ApplyUpdates(var qry:Tquery);
begin
   qry.ApplyUpdates;
end;

procedure TDM.CancelUpdates(var qry:Tquery);
begin
   qry.CancelUpdates;
end;


procedure TDM.Edit(var qry:Tquery);
begin
  qry.Edit;
end;
procedure TDM.Delete(var qry:TStoredProc);
begin
  qry.ExecProc;
end;
procedure TDM.New(var qry:Tquery);
begin
  qry.ExecSQL;
end;

procedure TDM.First(var qry:Tquery);
begin
  qry.First;
end;

procedure TDM.Last(var qry:Tquery);
begin
  qry.Last;
end;

procedure TDM.Next(var qry:Tquery);
begin
  qry.Next;
end;

procedure TDM.Prior(var qry:Tquery);
begin
  qry.Prior;
end;

procedure TDM.MoveBy(var qry:Tquery;i:integer);
begin
  qry.MoveBy(i);
end;
////////////////////////////////////////////


end.
