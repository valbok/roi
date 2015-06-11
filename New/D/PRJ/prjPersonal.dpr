program prjPersonal;

uses
  Forms,
  unMainForm in 'unMainForm.pas' {Form1},
  unDMFootb in 'unDMFootb.pas' {FootbDM: TDataModule},
  unChildForm in 'unChildForm.pas' {ChildForm},
  unDBModeForm in 'unDBModeForm.pas' {DBModeForm},
  unDBNavStatForm in 'unDBNavStatForm.pas' {DbNavStatForm},
  unCity in 'unCity.pas' {fmCity},
  unTeams in 'unTeams.pas' {fmTeams},
  unCountries in 'unCountries.pas' {fmCountry},
  unStadiums in 'unStadiums.pas' {fmStadiums},
  unPlayers in 'unPlayers.pas' {fmPlayers},
  unTransfer in 'unTransfer.pas' {fmTransfer},
  unStaff in 'unStaff.pas' {fmStaff},
  unPosts in 'unPosts.pas' {fmPosts},
  unLogin in '\\Ws14-12\users\proba\unLogin.pas' {FLogin},
  unLegioners in 'unLegioners.pas' {fmLegioners},
  unStadions in 'unStadions.pas' {fmStadions},
  unPersonal in 'unPersonal.pas' {fmPersonal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFootbDM, FootbDM);
  Application.CreateForm(TChildForm, ChildForm);
  Application.CreateForm(TDBModeForm, DBModeForm);
  Application.CreateForm(TDbNavStatForm, DbNavStatForm);
  Application.CreateForm(TfmCity, fmCity);
  Application.CreateForm(TfmTeams, fmTeams);
  Application.CreateForm(TfmCountry, fmCountry);
  Application.CreateForm(TfmStadiums, fmStadiums);
  Application.CreateForm(TfmPlayers, fmPlayers);
  Application.CreateForm(TfmTransfer, fmTransfer);
  Application.CreateForm(TfmStaff, fmStaff);
  Application.CreateForm(TfmPosts, fmPosts);
  Application.CreateForm(TfmLegioners, fmLegioners);
  Application.CreateForm(TfmStadions, fmStadions);
  Application.CreateForm(TfmPersonal, fmPersonal);
  Application.Run;
end.
