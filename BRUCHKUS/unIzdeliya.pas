unit unIzdeliya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,unMain, StdCtrls, Mask, DBCtrls;

type
  TfrmEditIzdeliya = class(TfrmMain)
    pnlMaini: TPanel;
    pnlMain2i: TPanel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    dbeVid_id: TDBEdit;
    dbeCostForOne: TDBEdit;
    dbeUnit_izmr: TDBEdit;
    dbeIzg_id: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbLcbVidName: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbLcbIzgot: TDBLookupComboBox;
    Label8: TLabel;
    Bevel1: TBevel;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbLcbVidNameClick(Sender: TObject);
    procedure dbLcbIzgotClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditIzdeliya: TfrmEditIzdeliya;

implementation
uses unDM;
{$R *.dfm}

procedure TfrmEditIzdeliya.FormCreate(Sender: TObject);
begin
//  StatusBar.Free;
  MainMenu.Free;
end;

procedure TfrmEditIzdeliya.FormActivate(Sender: TObject);
begin
 gridMain.DataSource:=dm.dsQizdeliya;
 SetNavBTN;
 frmEditIzdeliya.StatusBar.Panels[1].Text:=frmMain.StatusBar.Panels[1].Text;
 WindowState:=wsMaximized;
end;

procedure TfrmEditIzdeliya.dbLcbVidNameClick(Sender: TObject);
begin
  sbEdit.click;
  dbeVid_id.Text:=dbLcbVidName.KeyValue;
end;

procedure TfrmEditIzdeliya.dbLcbIzgotClick(Sender: TObject);
begin
  sbEdit.click;
  dbeIzg_id.Text:=dbLcbIzgot.KeyValue
end;

end.
