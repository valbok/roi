unit unIzgotoviteli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unMain, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TfrmEditIzgotovitel = class(TFrmMain)
    pnlMaini: TPanel;
    pnlMain2i: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    dbeAddress: TDBEdit;
    dbeFace: TDBEdit;
    dbeforma_sob_id: TDBEdit;
    dbeTelephone: TDBEdit;
    Splitter1: TSplitter;
    dbeE_mail: TDBEdit;
    dbLcbForma: TDBLookupComboBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbLcbFormaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditIzgotovitel: TfrmEditIzgotovitel;

implementation
uses unDm;
{$R *.dfm}

procedure TfrmEditIzgotovitel.FormActivate(Sender: TObject);
begin
 gridMain.DataSource:=dm.dsQizgotoviteli;
 SetNavBTN;
 frmEditIzgotovitel.StatusBar.Panels[1].Text:=frmMain.StatusBar.Panels[1].Text;
 WindowState:=wsMaximized;  
end;

procedure TfrmEditIzgotovitel.FormCreate(Sender: TObject);
begin
//  StatusBar.Free;
  MainMenu.Free;  

end;

procedure TfrmEditIzgotovitel.dbLcbFormaClick(Sender: TObject);
begin
  sbEdit.click;
  dbeforma_sob_id.Text:=dbLcbForma.KeyValue;
end;

end.