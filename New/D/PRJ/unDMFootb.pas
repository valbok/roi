unit unDMFootb;

interface

uses
  SysUtils, Classes, DBTables, DB,QDialogs, unLogin;

type
  TFootbDM = class(TDataModule)
    FootbDB: TDatabase;
    qCountries: TQuery;
    qCities: TQuery;
    qStadiums: TQuery;
    qTeams: TQuery;
    qPlayers: TQuery;
    qTransfer: TQuery;
    qPosts: TQuery;
    qStaff: TQuery;
    udCountries: TUpdateSQL;
    udCities: TUpdateSQL;
    upStadiums: TUpdateSQL;
    udTeams: TUpdateSQL;
    udPlayers: TUpdateSQL;
    udPosts: TUpdateSQL;
    udStaff: TUpdateSQL;
    spAddTransfers_UpdatePlayers: TStoredProc;
    qCountriesCOUNTRY_ID: TIntegerField;
    qCountriesCOUNTRY: TStringField;
    qCitiesCITY_ID: TIntegerField;
    qCitiesCITY: TStringField;
    qStadiumsSTADIUM_ID: TIntegerField;
    qStadiumsSTADIUM: TStringField;
    qStadiumsCOUNTRY_ID: TIntegerField;
    qStadiumsMARK: TStringField;
    qTeamsTEAM_ID: TIntegerField;
    qTeamsTEAM: TStringField;
    qTeamsCOUNTRY_ID: TIntegerField;
    qTeamsCITY_ID: TIntegerField;
    qTeamsSTADIUM_ID: TIntegerField;
    qPlayersPLAYER_ID: TIntegerField;
    qPlayersLASTNAME: TStringField;
    qPlayersFIRSTNAME: TStringField;
    qPlayersBIRTH_DATE: TDateTimeField;
    qPlayersBIRTH_PLACE: TIntegerField;
    qPlayersHEIGHT: TStringField;
    qPlayersWEIGHT: TStringField;
    qPlayersAMPLUA: TStringField;
    qPlayersTEAM_ID: TIntegerField;
    qPlayersNUMBER: TStringField;
    qPostsPOST_ID: TIntegerField;
    qPostsPOST: TStringField;
    qStaffSTAFF_ID: TIntegerField;
    qStaffLASTNAME: TStringField;
    qStaffFIRSTNAME: TStringField;
    qStaffBIRTH_DATE: TDateTimeField;
    qStaffTEAM_ID: TIntegerField;
    qStaffPOST_ID: TIntegerField;
    dsCities: TDataSource;
    dsCountries: TDataSource;
    dsTeams: TDataSource;
    dsStadiums: TDataSource;
    dsPlayers: TDataSource;
    dsTransfer: TDataSource;
    dsPosts: TDataSource;
    dsStaff: TDataSource;
    ust: TUpdateSQL;
    qTransferTRANSFER_ID: TIntegerField;
    qTransferPLAYER_ID: TIntegerField;
    qTransferFROM_TEAM: TIntegerField;
    qTransferTO_TEAM: TIntegerField;
    qTransferTRANSFER_DATE: TDateTimeField;
    qTransferTERM: TFloatField;
    qTransferPRICE: TIntegerField;
    qCLeg_by_stad: TQuery;
    dsqCL_by_s: TDataSource;
    qL_by_s: TQuery;
    dsqL_by_s: TDataSource;
    qS_by_Strana: TQuery;
    dsqS_by_Strana: TDataSource;
    qT_by_Stad: TQuery;
    qS_by_StranaSTADIUM_ID: TIntegerField;
    qS_by_StranaSTADIUM: TStringField;
    qS_by_StranaCOUNTRY_ID: TIntegerField;
    qS_by_StranaMARK: TStringField;
    dsqT_by_stad: TDataSource;
    qT_by_StadTEAM_ID: TIntegerField;
    qT_by_StadTEAM: TStringField;
    qT_by_StadCOUNTRY_ID: TIntegerField;
    qT_by_StadCITY_ID: TIntegerField;
    qT_by_StadSTADIUM_ID: TIntegerField;
    dsStad_by_mark: TDataSource;
    qStad_by_mark: TQuery;
    procedure FootbDBAfterConnect(Sender: TObject);
    procedure FootbDBAfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    //������, ��������� � ����. Countries
  procedure FirstCountries;
  procedure NextCountries;
  procedure LastCountries;
  procedure PriorCountries;
  procedure NewCountries;
  {procedure DeleteCountries;}
  procedure EditCountries;
  procedure CancelCountries;
  procedure AcceptCountries;
  function IsFirstCountries:Boolean;
  function IsLastCountries:Boolean;

  //������, ��������� � �������� Cities
  procedure FirstCities;
  procedure NextCities;
  procedure LastCities;
  procedure PriorCities;
  procedure NewCities;
  {procedure DeleteCities;}
  procedure EditCities;
  procedure CancelCities;
  procedure AcceptCities;
  function IsFirstCities:Boolean;
  function IsLastCities:Boolean;


//������, ��������� � �������� Stadiums
  procedure FirstStadiums;
  procedure NextStadiums;
  procedure LastStadiums;
  procedure PriorStadiums;
  procedure NewStadiums;
  {procedure DeleteStadiums;}
  procedure EditStadiums;
  procedure CancelStadiums;
  procedure AcceptStadiums;
  function IsFirstStadiums:Boolean;
  function IsLastStadiums:Boolean;


  //������, ��������� � �������� Teams
  procedure FirstTeams;
  procedure NextTeams;
  procedure LastTeams;
  procedure PriorTeams;
  procedure NewTeams;
  {procedure DeleteTeams;}
  procedure EditTeams;
  procedure CancelTeams;
  procedure AcceptTeams;
  function IsFirstTeams:Boolean;
  function IsLastTeams:Boolean;

  //������, ��������� � �������� Players
  procedure FirstPlayers;
  procedure NextPlayers;
  procedure LastPlayers;
  procedure PriorPlayers;
  procedure NewPlayers;
  procedure DeletePlayers;
  procedure EditPlayers;
  procedure CancelPlayers;
  procedure AcceptPlayers;
  function IsFirstPlayers:Boolean;
  function IsLastPlayers:Boolean;

  //������, ��������� � �������� Transfer
  procedure FirstTransfer;
  procedure NextTransfer;
  procedure LastTransfer;
  procedure PriorTransfer;
  procedure NewTransfer;
  procedure DeleteTransfer;
  procedure EditTransfer;
  procedure CancelTransfer;
  procedure AcceptTransfer;
  function IsFirstTransfer:Boolean;
  function IsLastTransfer:Boolean;

  //������, ��������� � �������� Posts
  procedure FirstPosts;
  procedure NextPosts;
  procedure LastPosts;
  procedure PriorPosts;
  procedure NewPosts;
  {procedure DeletePosts;}
  procedure EditPosts;
  procedure CancelPosts;
  procedure AcceptPosts;
  function IsFirstPosts:Boolean;
  function IsLastPosts:Boolean;


  //������, ��������� � �������� Staff
  procedure FirstStaff;
  procedure NextStaff;
  procedure LastStaff;
  procedure PriorStaff;
  procedure NewStaff;
  procedure DeleteStaff;
  procedure EditStaff;
  procedure CancelStaff;
  procedure AcceptStaff;
  function IsFirstStaff:Boolean;
  function IsLastStaff:Boolean;

    procedure Logout;
    function Login: Boolean;
    function Connect: Boolean;
    procedure Disconnect;
end;

var
  FootbDM: TFootbDM;

implementation

uses unMainForm;

{$R *.dfm}


{ TFootbDM }

procedure TFootbDM.AcceptCities;
begin
     FootbDB.ApplyUpdates([QCities]);
     qCities.Close;
     qCities.Open;
end;

procedure TFootbDM.AcceptCountries;
begin
    FootbDB.ApplyUpdates([QCountries]);
    qCountries.Close;
    qCountries.Open;
end;

procedure TFootbDM.AcceptPlayers;
begin
    FootbDB.ApplyUpdates([QPlayers]);
    qPlayers.Close;
    qPlayers.Open;
end;

procedure TFootbDM.AcceptPosts;
begin
    FootbDB.ApplyUpdates([QPosts]);
    qPosts.Close;
    qPosts.Open;
end;

procedure TFootbDM.AcceptStadiums;
begin
    FootbDB.ApplyUpdates([QStadiums]);
    qStadiums.Close;
    qStadiums.Open;
end;

procedure TFootbDM.AcceptStaff;
begin
    FootbDB.ApplyUpdates([QStaff]);
    qStaff.Close;
    qStaff.Open;
end;

procedure TFootbDM.AcceptTeams;
begin
    FootbDB.ApplyUpdates([QTeams]);
    qTeams.Close;
    qTeams.Open;
end;

procedure TFootbDM.AcceptTransfer;
begin
    FootbDB.ApplyUpdates([QTransfer]);
    qTransfer.Close;
    qTransfer.Open;
end;

procedure TFootbDM.CancelCities;
begin
    QCities.CancelUpdates;
end;

procedure TFootbDM.CancelCountries;
begin
    QCountries.CancelUpdates;
end;

procedure TFootbDM.CancelPlayers;
begin
     QPlayers.CancelUpdates;
end;

procedure TFootbDM.CancelPosts;
begin
    QPosts.CancelUpdates;
end;

procedure TFootbDM.CancelStadiums;
begin
     QStadiums.CancelUpdates;
end;

procedure TFootbDM.CancelStaff;
begin
     QStaff.CancelUpdates;
end;

procedure TFootbDM.CancelTeams;
begin
    QTeams.CancelUpdates;
end;

procedure TFootbDM.CancelTransfer;
begin
     QTransfer.CancelUpdates;
end;

{procedure TFootbDM.DeleteCities;
begin
    QCities.Delete;
end;}

{procedure TFootbDM.DeleteCountries;
begin
     QCountries.Delete;
end;}

function TFootbDM.Connect: Boolean;
begin
try
        FootbDB.Connected:=true;
        qCountries.Active:=True;
        qCities.Active:=True;
        qStadiums.Active:=True;
        qTeams.Active:=True;
        qPlayers.Active:=True;
        qTransfer.Active:=True;
        qPosts.Active:=True;
        qStaff.Active:=True;
        Result:=true;
     except
          Exception.Create('Invalid Password or Login information, can not login.');
          FootbDB.Connected:=False;
          Result:=False;
     end;
end;

procedure TFootbDM.DeletePlayers;
begin
     QPlayers.Delete;
end;

{procedure TFootbDM.DeletePosts;
begin
    QPosts.Delete;
end;}

{procedure TFootbDM.DeleteStadiums;
begin
     QStadiums.Delete;
end;}

procedure TFootbDM.DeleteStaff;
begin
    QStaff.Delete;
end;

{procedure TFootbDM.DeleteTeams;
begin
    QTeams.Delete;
end;}

procedure TFootbDM.DeleteTransfer;
begin
     QTransfer.Delete;
end;

procedure TFootbDM.Disconnect;
begin
  FootbDB.Connected:=False;
end;

procedure TFootbDM.EditCities;
begin
    QCities.Edit;
end;

procedure TFootbDM.EditCountries;
begin
    QCountries.Edit;
end;

procedure TFootbDM.EditPlayers;
begin
        QPlayers.Edit;
end;

procedure TFootbDM.EditPosts;
begin
     QPosts.Edit;
end;

procedure TFootbDM.EditStadiums;
begin
    QStadiums.Edit;
end;

procedure TFootbDM.EditStaff;
begin
     QStaff.Edit;
end;

procedure TFootbDM.EditTeams;
begin
    QTeams.Edit;
end;

procedure TFootbDM.EditTransfer;
begin
     QTransfer.Edit;
end;

procedure TFootbDM.FirstCities;
begin
    QCities.First;
end;

procedure TFootbDM.FirstCountries;
begin
   QCountries.First;
end;

procedure TFootbDM.FirstPlayers;
begin
   QPlayers.First;
end;

procedure TFootbDM.FirstPosts;
begin
     QPosts.First;
end;

procedure TFootbDM.FirstStadiums;
begin
    QStadiums.First;
end;

procedure TFootbDM.FirstStaff;
begin
     QStaff.First;
end;

procedure TFootbDM.FirstTeams;
begin
    QTeams.First;
end;

procedure TFootbDM.FirstTransfer;
begin
   QTransfer.First;
end;

function TFootbDM.IsFirstCities: Boolean;
begin
  Result:=QCities.Bof;
end;

function TFootbDM.IsFirstCountries: Boolean;
begin
 Result:=QCountries.Bof;
end;

function TFootbDM.IsFirstPlayers: Boolean;
begin
 Result:=QPlayers.Bof;
end;

function TFootbDM.IsFirstPosts: Boolean;
begin
 Result:=QPosts.Bof;
end;

function TFootbDM.IsFirstStadiums: Boolean;
begin
  Result:=QStadiums.Bof;
end;

function TFootbDM.IsFirstStaff: Boolean;
begin
  Result:=QStaff.Bof;
end;

function TFootbDM.IsFirstTeams: Boolean;
begin
  Result:=QTeams.Bof;
end;

function TFootbDM.IsFirstTransfer: Boolean;
begin
Result:=QTransfer.Bof;
end;

function TFootbDM.IsLastCities: Boolean;
begin
 Result:=QCities.Eof;
end;

function TFootbDM.IsLastCountries: Boolean;
begin
 Result:=QCountries.Eof;
end;

function TFootbDM.IsLastPlayers: Boolean;
begin
 Result:=QPlayers.Eof;
end;

function TFootbDM.IsLastPosts: Boolean;
begin
 Result:=QPosts.Eof;
end;

function TFootbDM.IsLastStadiums: Boolean;
begin
  Result:=QStadiums.Eof;
end;

function TFootbDM.IsLastStaff: Boolean;
begin
  Result:=QStaff.Eof;
end;

function TFootbDM.IsLastTeams: Boolean;
begin
  Result:=QTeams.Eof;
end;

function TFootbDM.IsLastTransfer: Boolean;
begin
  Result:=QTransfer.Eof;
end;

procedure TFootbDM.LastCities;
begin
    QCities.Last;
end;

procedure TFootbDM.LastCountries;
begin
    QCountries.Last;
end;

procedure TFootbDM.LastPlayers;
begin
     QPlayers.Last;
end;

procedure TFootbDM.LastPosts;
begin
    QPosts.Last;
end;

procedure TFootbDM.LastStadiums;
begin
     QStadiums.Last;
end;

procedure TFootbDM.LastStaff;
begin
     QStaff.Last;
end;

procedure TFootbDM.LastTeams;
begin
     QTeams.Last;
end;

procedure TFootbDM.LastTransfer;
begin
    QTransfer.Last;
end;

function TFootbDM.Login: Boolean;
begin
 Result:=Connect;
end;

procedure TFootbDM.Logout;
begin
 disconnect;
end;

procedure TFootbDM.NewCities;
begin
     QCities.Insert;
end;

procedure TFootbDM.NewCountries;
begin
    QCountries.Insert;
end;

procedure TFootbDM.NewPlayers;
begin
    QPlayers.Insert;
end;

procedure TFootbDM.NewPosts;
begin
     QPosts.Insert;
end;

procedure TFootbDM.NewStadiums;
begin
    QStadiums.Insert;
end;

procedure TFootbDM.NewStaff;
begin
    QStaff.Insert;
end;

procedure TFootbDM.NewTeams;
begin
    QTeams.Insert;
end;

procedure TFootbDM.NewTransfer;
begin
    qTransfer.Insert;
end;

procedure TFootbDM.NextCities;
begin
    QCities.Next;
end;

procedure TFootbDM.NextCountries;
begin
   QCountries.Next;
end;

procedure TFootbDM.NextPlayers;
begin
   QPlayers.Next;
end;

procedure TFootbDM.NextPosts;
begin
    QPosts.Next;
end;

procedure TFootbDM.NextStadiums;
begin
    QStadiums.Next;
end;

procedure TFootbDM.NextStaff;
begin
    QStaff.Next;
end;

procedure TFootbDM.NextTeams;
begin
    QTeams.Next;
end;

procedure TFootbDM.NextTransfer;
begin
    QTransfer.Next;
end;

procedure TFootbDM.PriorCities;
begin
   QCities.Prior;
end;

procedure TFootbDM.PriorCountries;
begin
     QCountries.Prior;
end;

procedure TFootbDM.PriorPlayers;
begin
     QPlayers.Prior;
end;

procedure TFootbDM.PriorPosts;
begin
    QPosts.Prior;
end;

procedure TFootbDM.PriorStadiums;
begin
      QStadiums.Prior;
end;

procedure TFootbDM.PriorStaff;
begin
   QStaff.Prior;
end;

procedure TFootbDM.PriorTeams;
begin
    QTeams.Prior;
end;

procedure TFootbDM.PriorTransfer;
begin
   QTransfer.Prior;
end;

procedure TFootbDM.FootbDBAfterConnect(Sender: TObject);
begin
  showmessage('Connected');
  form1.SetBTn(true);
end;

procedure TFootbDM.FootbDBAfterDisconnect(Sender: TObject);
begin
//  showmessage('Disconnected');
  form1.SetBTn(false);

end;

end.
