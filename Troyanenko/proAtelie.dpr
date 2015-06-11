program proAtelie;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unCon in 'unCon.pas' {frmCon},
  unNav in 'unNav.pas' {frmNav},
  unDAta in 'unDAta.pas' {frmData};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCon, frmCon);
  Application.CreateForm(TfrmNav, frmNav);
  Application.CreateForm(TfrmData, frmData);
  Application.Run;
end.
