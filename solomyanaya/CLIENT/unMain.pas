unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls, Buttons;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    miService: TMenuItem;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    N1: TMenuItem;
    pnlmain: TPanel;
    pnlMain2: TPanel;
    sbIzdeliya: TSpeedButton;
    sbKvalifik: TSpeedButton;
    sbMastera: TSpeedButton;
    sbPromisli: TSpeedButton;
    sbExit: TSpeedButton;
    Bevel1: TBevel;
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbIzdeliyaClick(Sender: TObject);
    procedure setbtn(value:boolean);
    procedure sbKvalifikClick(Sender: TObject);
    procedure sbMasteraClick(Sender: TObject);
    procedure sbPromisliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation
uses unDM, unCon, DB, unIzdeliya, unKvalifik, unMastera, unPromisli;
{$R *.dfm}
procedure TfrmMain.miConnectClick(Sender: TObject);
begin
  frmConnect.Show;
end;

procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
   dm.Database.Connected:=false;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.sbExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.sbIzdeliyaClick(Sender: TObject);
begin
  if not  dm.qAll_izdeliya.active then
    dm.qAll_izdeliya.active :=true;
    frmIzdeliya.Setizdeliya(dm.dsQall_izdeliya);
    frmIzdeliya.izdeliya:=dm.qAll_izdeliya;
  frmIzdeliya.show;
end;
procedure tfrmMain.setbtn(value:boolean);
begin
  sbIzdeliya.Enabled:=value;
  sbKvalifik.Enabled:=value;
  sbMastera.Enabled:=value;
  sbPromisli.Enabled:=value;
end;
procedure TfrmMain.sbKvalifikClick(Sender: TObject);
begin
   if not dm.qall_kvalifik.Active then
     dm.qall_kvalifik.active:=true;
     frmkvalifik.show;

end;

procedure TfrmMain.sbMasteraClick(Sender: TObject);
begin
   if not dm.qAll_mastera.Active then
     dm.qAll_mastera.active:=true;
       frmMastera.mastera:=dm.qAll_mastera;
       frmMastera.setMastera(dm.dsQAll_mastera);
       frmmastera.show;

end;

procedure TfrmMain.sbPromisliClick(Sender: TObject);
begin
   if not dm.qAll_promisli.Active then
     dm.qAll_promisli.active:=true;
     frmpromisli.show;

end;

end.
