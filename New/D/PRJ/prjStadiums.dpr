program prjStadiums;

uses
  Forms,
  unMainForm in 'unMainForm.pas' {Form1},
  unDMFootb in 'unDMFootb.pas' {FootbDM: TDataModule},
  unChildForm in 'unChildForm.pas' {ChildForm},
  unDBModeForm in 'unDBModeForm.pas' {DBModeForm},
  unDBNavStatForm in 'unDBNavStatForm.pas' {DbNavStatForm},
  unCity in 'unCity.pas' {fmCity},
  unTeams in 'unTeams.pas' {DbNavStatForm1},
  unCountries in 'unCountries.pas' {fmCountry},
  unStadiums in 'unStadiums.pas' {fmStadiums};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFootbDM, FootbDM);
  Application.CreateForm(TChildForm, ChildForm);
  Application.CreateForm(TDBModeForm, DBModeForm);
  Application.CreateForm(TDbNavStatForm, DbNavStatForm);
  Application.CreateForm(TfmCity, fmCity);
  Application.CreateForm(TDbNavStatForm1, DbNavStatForm1);
  Application.CreateForm(TfmCountry, fmCountry);
  Application.CreateForm(TfmStadiums, fmStadiums);
  Application.Run;
end.
