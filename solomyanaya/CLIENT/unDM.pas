unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables,dialogs;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    qAll_izdeliya: TQuery;
    qAll_kvalifik: TQuery;
    qAll_mastera: TQuery;
    qAll_promisli: TQuery;
    usqAll_izdeiya: TUpdateSQL;
    usqAll_kvalifik: TUpdateSQL;
    usqAll_mastera: TUpdateSQL;
    usqAll_promisli: TUpdateSQL;
    dsQall_izdeliya: TDataSource;
    dsQAll_kvalifik: TDataSource;
    dsQAll_mastera: TDataSource;
    dsQAll_promisli: TDataSource;
    spDElete_izdelie: TStoredProc;
    spDelete_master: TStoredProc;
    spDelete_promisel: TStoredProc;
    spDelete_kvalifik: TStoredProc;
    qIzdeliya_by_promisel: TQuery;
    qMastera_by_kvalifik: TQuery;
    qIzdeliya_by_master: TQuery;
    dsqIzdeliya_by_master: TDataSource;
    dsqMastera_by_kvalifik: TDataSource;
    dsqIzdeliya_by_promisel: TDataSource;
    usQi_by_p: TUpdateSQL;
    usqI_by_m: TUpdateSQL;
    qAll_kvalifikID: TIntegerField;
    qAll_kvalifikNAME: TStringField;
    usM_by_k: TUpdateSQL;
    qAll_izdeliyaID: TIntegerField;
    qAll_izdeliyaNAME: TStringField;
    qAll_izdeliyaPROMISEL_ID: TIntegerField;
    qAll_izdeliyaMASTER_ID: TIntegerField;
    qAll_izdeliyaluProm: TStringField;
    qAll_izdeliyaLUMAster: TStringField;
    qAll_masteraID: TIntegerField;
    qAll_masteraFAM: TStringField;
    qAll_masteraNAME: TStringField;
    qAll_masteraOTCH: TStringField;
    qAll_masteraADDRESS: TStringField;
    qAll_masteraDAT: TDateTimeField;
    qAll_masteraKVALIFIK_ID: TIntegerField;
    qAll_masteraLUkval: TStringField;
    qAll_promisliID: TIntegerField;
    qAll_promisliNAME: TStringField;
    qMastera_by_kvalifikID: TIntegerField;
    qMastera_by_kvalifikFAM: TStringField;
    qMastera_by_kvalifikNAME: TStringField;
    qMastera_by_kvalifikOTCH: TStringField;
    qMastera_by_kvalifikADDRESS: TStringField;
    qMastera_by_kvalifikDAT: TDateTimeField;
    qMastera_by_kvalifikKVALIFIK_ID: TIntegerField;
    qIzdeliya_by_masterID: TIntegerField;
    qIzdeliya_by_masterNAME: TStringField;
    qIzdeliya_by_masterPROMISEL_ID: TIntegerField;
    qIzdeliya_by_masterMASTER_ID: TIntegerField;
    qIzdeliya_by_promiselID: TIntegerField;
    qIzdeliya_by_promiselNAME: TStringField;
    qIzdeliya_by_promiselPROMISEL_ID: TIntegerField;
    qIzdeliya_by_promiselMASTER_ID: TIntegerField;
    procedure DatabaseAfterConnect(Sender: TObject);
    procedure DatabaseAfterDisconnect(Sender: TObject);
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

procedure TDM.DatabaseAfterConnect(Sender: TObject);
begin
{if frmMain.pathTodb ='' then
  frmMain.pathTodb:=Database.DatabaseName;}
//  frmMain.StatusBar.Panels[1].Text:='Подключено к ['+frmMain.pathTodb+']';
  showmessage('Соединение установлено');
  frmMain.miConnect.Enabled:=false;
  frmMain.miDisConnect.Enabled:=true;
  frmMain.setbtn(true);
end;

procedure TDM.DatabaseAfterDisconnect(Sender: TObject);
begin
//  frmMain.StatusBar.Panels[1].Text:='Отключено';
  frmMain.miConnect.Enabled:=true;
  frmMain.miDisConnect.Enabled:=false;
  frmMain.setbtn(false);  
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
  qry.insert;
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
