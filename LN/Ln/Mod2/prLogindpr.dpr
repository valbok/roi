program prLogindpr;

uses
  Forms,
  unLogin in 'unLogin.pas' {fmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmLogin, fmLogin);
  Application.Run;
end.
