unit unFormi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls,UnMain;

type
  TfrmEditFormi = class(TFrmMain)
    pnlMaini: TPanel;
    pnlMain2i: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    Splitter1: TSplitter;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditFormi: TfrmEditFormi;

implementation
uses unDM;
{$R *.dfm}

procedure TfrmEditFormi.FormActivate(Sender: TObject);
begin
 gridMain.DataSource:=dm.dsQFormi;
 SetNavBTN;
 frmEditFormi.StatusBar.Panels[1].Text:=frmMain.StatusBar.Panels[1].Text;
 WindowState:=wsMaximized;

end;

procedure TfrmEditFormi.FormCreate(Sender: TObject);
begin
  MainMenu.Free;  
end;

end.
