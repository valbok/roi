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
    Bevel1: TBevel;
    sbIzdeliya: TSpeedButton;
    sbTkani: TSpeedButton;
    sbVidi: TSpeedButton;
    sbZakazchiki: TSpeedButton;
    sbRask: TSpeedButton;
    sbZakazi: TSpeedButton;
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure setbtn(value:boolean);
    procedure sbTkaniClick(Sender: TObject);
    procedure sbVidiClick(Sender: TObject);
    procedure sbIzdeliyaClick(Sender: TObject);
    procedure sbRaskClick(Sender: TObject);
    procedure sbZakazchikiClick(Sender: TObject);
    procedure sbZakaziClick(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation
uses unDM, unCon, DB,  unData;
{$R *.dfm}

procedure TfrmMain.miConnectClick(Sender: TObject);
begin
  frmCon.Show;
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

procedure tfrmMain.setbtn(value:boolean);
begin
  sbTkani.Enabled:=value;
  sbVidi.Enabled:=value;
  sbIzdeliya.Enabled:=value;
  sbRask.Enabled:=value;
  sbZakazchiki.Enabled:=value;
  sbZakazi.Enabled:=value;
end;
procedure TfrmMain.sbTkaniClick(Sender: TObject);
begin
  frmData.setinfo(dm.dsQtkani,dm.qTkani,'Tkani','Zakazi of this tkan','');
  if not dm.qTkani.Active then dm.qTkani.Open;
  frmData.show;
end;

procedure TfrmMain.sbVidiClick(Sender: TObject);
begin
  frmData.setInfo(dm.dsQvidi,dm.qvidi,'Kind tkani','Tkani of this kind','');
  if not dm.qvidi.Active then dm.qvidi.Open;
  frmData.show;

end;

procedure TfrmMain.sbIzdeliyaClick(Sender: TObject);
begin
  frmData.setInfo(dm.dsQizdeliya,dm.qizdeliya,'Izdeliya','Rashod tkani izdeliya','Zakazi izdeliya');
  if not dm.qizdeliya.Active then dm.qizdeliya.Open;
  frmData.show;

end;

procedure TfrmMain.sbRaskClick(Sender: TObject);
begin
  frmData.setInfo(dm.dsQrask_tk,dm.qrask_tk,'Rashod tkani','','');
  if not dm.qrask_tk.Active then dm.qrask_tk.Open;
  frmData.show;

end;

procedure TfrmMain.sbZakazchikiClick(Sender: TObject);
begin
  frmData.setInfo(dm.dsQZakazchiki,dm.qZakazchiki,'Zakazchiki','zakazi zakazchika','');
  if not dm.qZakazchiki.Active then dm.qZakazchiki.Open;
  frmData.show;
end;

procedure TfrmMain.sbZakaziClick(Sender: TObject);
begin
  frmData.setinfo(dm.dsQzakazi,dm.qZakazi,'ZAkazi','','');
  if not dm.qZakazi.Active then dm.qZakazi.Open;
  frmData.show;

end;

end.


