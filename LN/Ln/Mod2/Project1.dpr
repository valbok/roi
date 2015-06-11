program Project1;

uses
  Forms,
  unMainForm in 'unMainForm.pas' {fmMainForm},
  unDMBooks in 'unDMBooks.pas' {dmBooks: TDataModule},
  unDBNavStatForm in 'unDBNavStatForm.pas' {DbNavStatForm},
  unChildForm in 'unChildForm.pas' {ChildForm},
  unDBModeForm in 'unDBModeForm.pas' {DBModeForm},
  unBooks in 'unBooks.pas' {fmBooks},
  unGenres in 'unGenres.pas' {fmGenres},
  unAuthors in 'unAuthors.pas' {fmAuthors},
  unCountries in 'unCountries.pas' {fmCountries},
  unRelese in 'unRelese.pas' {fmRelese},
  unPublishing in 'unPublishing.pas' {fmPublishing},
  unLogin in 'unLogin.pas' {fmLogin},
  unLike in 'unLike.pas' {fmLike};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMainForm, fmMainForm);
  Application.CreateForm(TfmPublishing, fmPublishing);
  Application.CreateForm(TdmBooks, dmBooks);
  Application.CreateForm(TDbNavStatForm, DbNavStatForm);
  Application.CreateForm(TChildForm, ChildForm);
  Application.CreateForm(TDBModeForm, DBModeForm);
  Application.CreateForm(TfmBooks, fmBooks);
  Application.CreateForm(TfmGenres, fmGenres);
  Application.CreateForm(TfmAuthors, fmAuthors);
  Application.CreateForm(TfmCountries, fmCountries);
  Application.CreateForm(TfmRelese, fmRelese);
  Application.CreateForm(TfmLike, fmLike);
  Application.Run;
end.
