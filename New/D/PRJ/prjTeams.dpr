program prjTeams;

uses
  Forms,
  unMainForm in 'unMainForm.pas' {Form1},
  unDMFootb in 'unDMFootb.pas' {FootbDM: TDataModule},
  unChildForm in 'unChildForm.pas' {ChildForm},
  unDBModeForm in 'unDBModeForm.pas' {DBModeForm},
  unDBNavStatForm in 'unDBNavStatForm.pas' {DbNavStatForm},
  unCity in 'unCity.pas' {fmCity},
  unTeams in 'unTeams.pas' {fmTeams};

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
  Application.Run;
end.
