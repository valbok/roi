program prjTransfer;

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
  unTransfer in 'unTransfer.pas' {fmTransfer};

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
  Application.Run;
end.
