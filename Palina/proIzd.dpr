program proIzd;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unConnect in 'unConnect.pas' {frmConnect};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConnect, frmConnect);
  Application.Run;
end.
