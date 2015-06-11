unit unVidi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unMain, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TfrmEditVidi = class(TfrmMain)
    pnlMaini: TPanel;
    pnlMain2i: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditVidi: TfrmEditVidi;

implementation
uses unDM;
{$R *.dfm}

procedure TfrmEditVidi.FormCreate(Sender: TObject);
begin
//  StatusBar.Free;
  MainMenu.Free;  
end;

procedure TfrmEditVidi.FormActivate(Sender: TObject);
begin
 gridMain.DataSource:=dm.dsQVidi;
 SetNavBTN;
 frmEditVidi.StatusBar.Panels[1].Text:=frmMain.StatusBar.Panels[1].Text;
 WindowState:=wsMaximized;  
end;

end.
