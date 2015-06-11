unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables,dialogs;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    qVidi: TQuery;
    qTkani: TQuery;
    qizdeliya: TQuery;
    qrask_tk: TQuery;
    usqVidi: TUpdateSQL;
    usqTkani: TUpdateSQL;
    usqizdeliya: TUpdateSQL;
    usqrask_tk: TUpdateSQL;
    dsQVidi: TDataSource;
    dsQtkani: TDataSource;
    dsQizdeliya: TDataSource;
    dsQrask_tk: TDataSource;
    spDElete_vid: TStoredProc;
    spDelete_izdelie: TStoredProc;
    spDelete_rask: TStoredProc;
    spDelete_tkan: TStoredProc;
    qzakazi_by_zakazchik: TQuery;
    qtkani_by_vid: TQuery;
    qzakazi_by_tkan: TQuery;
    dsqzakazi_by_tkan: TDataSource;
    dsqtkani_by_vid: TDataSource;
    dsqzakazi_by_zakazchik: TDataSource;
    usz_by_z: TUpdateSQL;
    usz_b_t: TUpdateSQL;
    ust_by_v: TUpdateSQL;
    qVidiID: TIntegerField;
    qVidiNAME: TStringField;
    qTkaniID: TIntegerField;
    qTkaniVID_ID: TIntegerField;
    qTkaniCOLOR: TStringField;
    qTkaniCOST_FOR_1M: TFloatField;
    qTkaniPROIZVODITEL: TStringField;
    qTkaniLUVID: TStringField;
    qizdeliyaID: TIntegerField;
    qizdeliyaNAME: TStringField;
    qizdeliyaCOST_POSHIVA: TFloatField;
    qizdeliyaVID_MODELI: TStringField;
    qrask_tkID: TIntegerField;
    qrask_tkIZDELIE_ID: TIntegerField;
    qrask_tkRAZMER: TStringField;
    qrask_tkRASHOD: TFloatField;
    qrask_tkLUIzd: TStringField;
    qZakazchiki: TQuery;
    usQzakazchik: TUpdateSQL;
    dsQZakazchiki: TDataSource;
    spDelete_zakazchik: TStoredProc;
    qZakazchikiID: TIntegerField;
    qZakazchikiNAME: TStringField;
    qZakazchikiADDRESS: TStringField;
    qZakazchikiTELEPHONE: TStringField;
    qZakazi: TQuery;
    usQzakazi: TUpdateSQL;
    dsQzakazi: TDataSource;
    spDelete_zakaz: TStoredProc;
    qZakaziID: TIntegerField;
    qZakaziZAKAZCHIK_ID: TIntegerField;
    qZakaziIZDELIE_ID: TIntegerField;
    qZakaziTKAN_ID: TIntegerField;
    qZakaziCOL: TFloatField;
    qZakaziRAZMER: TStringField;
    qZakaziDATA_ZAKAZA: TDateTimeField;
    qZakaziSROK_VIPOLNENIYA: TStringField;
    qZakaziLUZ: TStringField;
    qZakaziLUizd: TStringField;
    qzakazi_by_tkanID: TIntegerField;
    qzakazi_by_tkanZAKAZCHIK_ID: TIntegerField;
    qzakazi_by_tkanIZDELIE_ID: TIntegerField;
    qzakazi_by_tkanTKAN_ID: TIntegerField;
    qzakazi_by_tkanCOL: TFloatField;
    qzakazi_by_tkanRAZMER: TStringField;
    qzakazi_by_tkanDATA_ZAKAZA: TDateTimeField;
    qzakazi_by_tkanSROK_VIPOLNENIYA: TStringField;
    qzakazi_by_zakazchikID: TIntegerField;
    qzakazi_by_zakazchikZAKAZCHIK_ID: TIntegerField;
    qzakazi_by_zakazchikIZDELIE_ID: TIntegerField;
    qzakazi_by_zakazchikTKAN_ID: TIntegerField;
    qzakazi_by_zakazchikCOL: TFloatField;
    qzakazi_by_zakazchikRAZMER: TStringField;
    qzakazi_by_zakazchikDATA_ZAKAZA: TDateTimeField;
    qzakazi_by_zakazchikSROK_VIPOLNENIYA: TStringField;
    qZakazi_by_izdelie: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    dsqZakazi_by_izdelie: TDataSource;
    usZ_by_iz: TUpdateSQL;
    qrask_by_izdelie: TQuery;
    dsqRask_by_izdelie: TDataSource;
    usRask_b_i: TUpdateSQL;
    qtkani_by_vidID: TIntegerField;
    qtkani_by_vidVID_ID: TIntegerField;
    qtkani_by_vidCOLOR: TStringField;
    qtkani_by_vidCOST_FOR_1M: TFloatField;
    qtkani_by_vidPROIZVODITEL: TStringField;
    qzakazi_by_tkanLUZakaz: TStringField;
    qzakazi_by_tkanLuIzd: TStringField;
    qrask_by_izdelieID: TIntegerField;
    qrask_by_izdelieIZDELIE_ID: TIntegerField;
    qrask_by_izdelieRAZMER: TStringField;
    qrask_by_izdelieRASHOD: TFloatField;
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
  frmMain.miConnect.Enabled:=false;
  frmMain.miDisConnect.Enabled:=true;
  frmMain.setbtn(true);
  showmessage('Connected');
end;

procedure TDM.DatabaseAfterDisconnect(Sender: TObject);
begin
  showmessage('Disconnected');
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
