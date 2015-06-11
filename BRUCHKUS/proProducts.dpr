program proProducts;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unConnect in 'unConnect.pas' {frmConnect},
  unIzdeliya in 'unIzdeliya.pas' {frmEditIzdeliya},
  unVidi in 'unVidi.pas' {frmEditVidi},
  unIzgotoviteli in 'unIzgotoviteli.pas' {frmEditIzgotovitel},
  unFormi in 'unFormi.pas' {frmEditFormi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConnect, frmConnect);
  Application.CreateForm(TfrmEditIzdeliya, frmEditIzdeliya);
  Application.CreateForm(TfrmEditVidi, frmEditVidi);
  Application.CreateForm(TfrmEditIzgotovitel, frmEditIzgotovitel);
  Application.CreateForm(TfrmEditFormi, frmEditFormi);
  Application.Run;
end.
