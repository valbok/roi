program proIzd;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unCon in 'unCon.pas' {frmConnect},
  unIzdeliya in 'unIzdeliya.pas' {frmIzdeliya},
  unNav in 'unNav.pas' {frmNav},
  unKvalifik in 'unKvalifik.pas' {frmKvalifik},
  unMastera in 'unMastera.pas' {frmMastera},
  unPromisli in 'unPromisli.pas' {frmPromisli};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConnect, frmConnect);
  Application.CreateForm(TfrmIzdeliya, frmIzdeliya);
  Application.CreateForm(TfrmNav, frmNav);
  Application.CreateForm(TfrmKvalifik, frmKvalifik);
  Application.CreateForm(TfrmMastera, frmMastera);
  Application.CreateForm(TfrmPromisli, frmPromisli);
  Application.Run;
end.
