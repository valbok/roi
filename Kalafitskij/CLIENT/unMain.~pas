unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls,unDM, ToolWin,
  ImgList, Buttons,DBTables, StdCtrls, Mask;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    MainMenu: TMainMenu;
    pnlTop: TPanel;
    pnlL: TPanel;
    PageControl: TPageControl;
    tsFiles: TTabSheet;
    tsUsers: TTabSheet;
    tsComps: TTabSheet;
    tsTypes: TTabSheet;
    pnlF: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    dbeNameT: TDBEdit;
    dbeKodeT: TDBEdit;
    dbmDEsc: TDBMemo;
    gridFiles: TDBGrid;
    pnlBot: TPanel;
    pnlTopF: TPanel;
    sbPriorF: TSpeedButton;
    sbFirstF: TSpeedButton;
    sbNextF: TSpeedButton;
    sbLastF: TSpeedButton;
    sbRefreshF: TSpeedButton;
    sbEditF: TSpeedButton;
    sbCancelF: TSpeedButton;
    sbApplyF: TSpeedButton;
    sbDEleteF: TSpeedButton;
    sbNewF: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    sbPriorU: TSpeedButton;
    sbFirstU: TSpeedButton;
    sbNextU: TSpeedButton;
    sbLastU: TSpeedButton;
    sbREfreshU: TSpeedButton;
    sbEditU: TSpeedButton;
    SBCancelU: TSpeedButton;
    sbApplyU: TSpeedButton;
    sbDEleteU: TSpeedButton;
    sbNewU: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    sbPriorC: TSpeedButton;
    sbFirstC: TSpeedButton;
    sbNextC: TSpeedButton;
    sbLastC: TSpeedButton;
    sbRefreshC: TSpeedButton;
    sbEditC: TSpeedButton;
    sbCancelC: TSpeedButton;
    sbApplyC: TSpeedButton;
    sbDEleteC: TSpeedButton;
    sbNewC: TSpeedButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    sbPriorT: TSpeedButton;
    sbFirstT: TSpeedButton;
    sbNextT: TSpeedButton;
    sbLastT: TSpeedButton;
    sbRefreshT: TSpeedButton;
    sbEditT: TSpeedButton;
    sbCancelT: TSpeedButton;
    sbApplyT: TSpeedButton;
    sbDeleteT: TSpeedButton;
    sbNewT: TSpeedButton;
    Panel10: TPanel;
    Panel11: TPanel;
    dbeNum_klass: TDBEdit;
    dbeNameC: TDBEdit;
    dbeKodC: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel12: TPanel;
    dbeGroup: TDBEdit;
    dbeOtch: TDBEdit;
    dbeFirstName: TDBEdit;
    dbeLastName: TDBEdit;
    dbeKodU: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel13: TPanel;
    dbeDate_modific: TDBEdit;
    dbeDate_create: TDBEdit;
    dbeSize: TDBEdit;
    cbUser: TDBLookupComboBox;
    cbType: TDBLookupComboBox;
    cbComp: TDBLookupComboBox;
    dbeKodF: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    N1: TMenuItem;
    miLogin: TMenuItem;
    miLogout: TMenuItem;
    procedure sbFirstFClick(Sender: TObject);
    procedure sbPriorFClick(Sender: TObject);
    procedure sbNextFClick(Sender: TObject);
    procedure sbLastFClick(Sender: TObject);
    procedure sbNewFClick(Sender: TObject);
    procedure sbDEleteFClick(Sender: TObject);
    procedure sbApplyFClick(Sender: TObject);
    procedure sbCancelFClick(Sender: TObject);
    procedure sbEditFClick(Sender: TObject);
    procedure sbRefreshFClick(Sender: TObject);
    procedure sbFirstUClick(Sender: TObject);
    procedure sbPriorUClick(Sender: TObject);
    procedure sbNextUClick(Sender: TObject);
    procedure sbLastUClick(Sender: TObject);
    procedure sbNewUClick(Sender: TObject);
    procedure sbDEleteUClick(Sender: TObject);
    procedure sbApplyUClick(Sender: TObject);
    procedure SBCancelUClick(Sender: TObject);
    procedure sbEditUClick(Sender: TObject);
    procedure sbREfreshUClick(Sender: TObject);
    procedure sbFirstCClick(Sender: TObject);
    procedure sbPriorCClick(Sender: TObject);
    procedure sbNextCClick(Sender: TObject);
    procedure sbLastCClick(Sender: TObject);
    procedure sbNewCClick(Sender: TObject);
    procedure sbDEleteCClick(Sender: TObject);
    procedure sbApplyCClick(Sender: TObject);
    procedure sbCancelCClick(Sender: TObject);
    procedure sbEditCClick(Sender: TObject);
    procedure sbRefreshCClick(Sender: TObject);
    procedure sbFirstTClick(Sender: TObject);
    procedure sbPriorTClick(Sender: TObject);
    procedure sbNextTClick(Sender: TObject);
    procedure sbLastTClick(Sender: TObject);
    procedure sbNewTClick(Sender: TObject);
    procedure sbApplyTClick(Sender: TObject);
    procedure sbCancelTClick(Sender: TObject);
    procedure sbEditTClick(Sender: TObject);
    procedure sbRefreshTClick(Sender: TObject);
    procedure sbDeleteTClick(Sender: TObject);
    procedure miLoginClick(Sender: TObject);
    procedure setn(v:boolean);
    procedure miLogoutClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;


implementation
uses  unCon, DB;
{$R *.dfm}
procedure TfrmMain.setn(v:boolean);
begin
  miLogin.Enabled:=not v;
  miLogout.Enabled:=v;
end;
procedure TfrmMain.sbFirstFClick(Sender: TObject);
begin
  dm.qryFiles.First;
end;

procedure TfrmMain.sbPriorFClick(Sender: TObject);
begin
  dm.qryFiles.Prior;
end;

procedure TfrmMain.sbNextFClick(Sender: TObject);
begin
  dm.qryFiles.Next;
end;

procedure TfrmMain.sbLastFClick(Sender: TObject);
begin
  dm.qryFiles.last;
end;

procedure TfrmMain.sbNewFClick(Sender: TObject);
begin
  dm.qryFiles.Insert;
end;

procedure TfrmMain.sbDEleteFClick(Sender: TObject);
begin
          if messagedlg('DElete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                dm.qryFiles.Delete;
                                // showmessage('Was delete!');
                          end;
end;

procedure TfrmMain.sbApplyFClick(Sender: TObject);
begin
  dm.qryFiles.ApplyUpdates;
end;

procedure TfrmMain.sbCancelFClick(Sender: TObject);
begin
  dm.qryFiles.CancelUpdates;
end;

procedure TfrmMain.sbEditFClick(Sender: TObject);
begin
  dm.qryFiles.edit;
end;

procedure TfrmMain.sbRefreshFClick(Sender: TObject);
begin
  dm.qryFiles.close;
  dm.qryFiles.Open;  
end;

procedure TfrmMain.sbFirstUClick(Sender: TObject);
begin
  dm.qryUsers.first;
end;

procedure TfrmMain.sbPriorUClick(Sender: TObject);
begin
  dm.qryUsers.Prior;
end;

procedure TfrmMain.sbNextUClick(Sender: TObject);
begin
  dm.qryUsers.Next;
end;

procedure TfrmMain.sbLastUClick(Sender: TObject);
begin
  dm.qryUsers.last;
end;

procedure TfrmMain.sbNewUClick(Sender: TObject);
begin
  dm.qryUsers.Insert;
end;

procedure TfrmMain.sbDEleteUClick(Sender: TObject);
begin
with dm do
          if messagedlg('Delete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDeLUSer.ParamByName('ikod_user').Asinteger:=qryUsers.FieldByName('kod').AsInteger;
                                spDeLUSer.ExecProc;
                                showmessage('Was deleted!');
                          end;
end;

procedure TfrmMain.sbApplyUClick(Sender: TObject);
begin
  dm.qryUsers.ApplyUpdates;
end;

procedure TfrmMain.SBCancelUClick(Sender: TObject);
begin
  dm.qryUsers.CancelUpdates;
end;

procedure TfrmMain.sbEditUClick(Sender: TObject);
begin
  dm.qryUsers.Edit;
end;

procedure TfrmMain.sbREfreshUClick(Sender: TObject);
begin
  dm.qryUsers.close;
  dm.qryUsers.open;  
end;

procedure TfrmMain.sbFirstCClick(Sender: TObject);
begin
  dm.qryComps.first;
end;

procedure TfrmMain.sbPriorCClick(Sender: TObject);
begin
  dm.qryComps.Prior;
end;

procedure TfrmMain.sbNextCClick(Sender: TObject);
begin
  dm.qryComps.Next;
end;

procedure TfrmMain.sbLastCClick(Sender: TObject);
begin
  dm.qryComps.last;
end;

procedure TfrmMain.sbNewCClick(Sender: TObject);
begin
  dm.qryComps.insert;
end;

procedure TfrmMain.sbDEleteCClick(Sender: TObject);
begin
with dm do
          if messagedlg('DElete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelComp.ParamByName('ikod_comp').Asinteger:=qryComps.FieldByName('kod').AsInteger;
                                spDelComp.ExecProc;
                                showmessage('Was delete!');
                          end;
end;

procedure TfrmMain.sbApplyCClick(Sender: TObject);
begin
  dm.qryComps.ApplyUpdates;
end;

procedure TfrmMain.sbCancelCClick(Sender: TObject);
begin
  dm.qryComps.CancelUpdates;
end;

procedure TfrmMain.sbEditCClick(Sender: TObject);
begin
  dm.qryComps.Edit;
end;

procedure TfrmMain.sbRefreshCClick(Sender: TObject);
begin
  dm.qryComps.close;
  dm.qryComps.open;  
end;

procedure TfrmMain.sbFirstTClick(Sender: TObject);
begin
  dm.qryTypes.first;
end;

procedure TfrmMain.sbPriorTClick(Sender: TObject);
begin
  dm.qryTypes.prior;
end;

procedure TfrmMain.sbNextTClick(Sender: TObject);
begin
  dm.qryTypes.next;
end;

procedure TfrmMain.sbLastTClick(Sender: TObject);
begin
  dm.qryTypes.last;
end;

procedure TfrmMain.sbNewTClick(Sender: TObject);
begin
  dm.qryTypes.insert;
end;

procedure TfrmMain.sbApplyTClick(Sender: TObject);
begin
  dm.qryTypes.ApplyUpdates;
end;

procedure TfrmMain.sbCancelTClick(Sender: TObject);
begin
  dm.qryTypes.CancelUpdates;
end;

procedure TfrmMain.sbEditTClick(Sender: TObject);
begin
  dm.qryTypes.edit;
end;

procedure TfrmMain.sbRefreshTClick(Sender: TObject);
begin
  dm.qryTypes.close;
  dm.qryTypes.open;  
end;

procedure TfrmMain.sbDeleteTClick(Sender: TObject);
begin
with dm do
          if messagedlg('DElete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDELType.ParamByName('ikod_type').Asinteger:=qryTypes.FieldByName('kod').AsInteger;
                                spDELType.ExecProc;
                                showmessage('Was delete!');
                          end;
end;

procedure TfrmMain.miLoginClick(Sender: TObject);
begin
if GetLoginParams then
  showmessage('OK') else
  Showmessage('Can`t connect');
end;

procedure TfrmMain.miLogoutClick(Sender: TObject);
begin
  dm.database.Close;
end;

end.
