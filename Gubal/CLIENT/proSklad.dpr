program proSklad;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unConnect in 'unConnect.pas' {frmConnect},
  unManeger in 'unManeger.pas' {frmManeger};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConnect, frmConnect);
  Application.CreateForm(TfrmManeger, frmManeger);
  Application.Run;
end.
