unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls,unDM, ToolWin,
  ImgList, Buttons,DBTables;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    MainMenu: TMainMenu;
    pnlTop: TPanel;
    pmManeger: TPopupMenu;
    miMode1: TMenuItem;
    miMode2: TMenuItem;
    miEdit: TMenuItem;
    miDelete: TMenuItem;
    miAdd: TMenuItem;
    miRefresh: TMenuItem;
    sbConnect: TSpeedButton;
    sbManeger: TSpeedButton;
    N2: TMenuItem;
    miSelectMode: TMenuItem;
    miPotrebitels: TMenuItem;
    miTovars: TMenuItem;
    miNakladnies: TMenuItem;
    miPostavkas: TMenuItem;
    procedure setB(v:boolean);
    procedure sbConnectClick(Sender: TObject);
    procedure sbManegerClick(Sender: TObject);
    procedure miPotrebitelsClick(Sender: TObject);
    procedure miTovarsClick(Sender: TObject);
    procedure miNakladniesClick(Sender: TObject);
    procedure miPostavkasClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;


implementation
uses  unConnect, DB, unManeger;
{$R *.dfm}

procedure TfrmMain.setB(v:boolean);
begin
  miSelectMode.Enabled:=v;
  if v then
   sbConnect.Caption:='Disconnect' else
   sbConnect.Caption:='Connect';
  sbManeger.Enabled:=v;
end;
procedure TfrmMain.sbConnectClick(Sender: TObject);
begin
if sbConnect.Caption='Connect' then
 begin
{    dm.qTovars.Open;
    dm.qNakladnies.Open;
    dm.qPostavkas.Open;}
   frmCOnnect.showmodal;
 end  else
   dm.db.Close;
end;

procedure TfrmMain.sbManegerClick(Sender: TObject);
begin
  frmManeger.show;
end;

procedure TfrmMain.miPotrebitelsClick(Sender: TObject);
begin
  frmManeger.PageControl.ActivePageIndex:=0;
  frmManeger.show;
end;

procedure TfrmMain.miTovarsClick(Sender: TObject);
begin
  frmManeger.PageControl.ActivePageIndex:=1;
  frmManeger.show;

end;

procedure TfrmMain.miNakladniesClick(Sender: TObject);
begin
  frmManeger.PageControl.ActivePageIndex:=2;
  frmManeger.show;

end;

procedure TfrmMain.miPostavkasClick(Sender: TObject);
begin
  frmManeger.PageControl.ActivePageIndex:=3;
  frmManeger.show;

end;

end.