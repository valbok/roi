unit unMastera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,unNav,dbtables,db,
  Menus;

type
  TfrmMastera = class(TFrmNav)
    pnlMain: TPanel;
    grid: TDBGrid;
    pnlBotom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeID: TDBEdit;
    dbeFam: TDBEdit;
    dbeName: TDBEdit;
    Label7: TLabel;
    dbeOtch: TDBEdit;
    Label3: TLabel;
    dbeAddress: TDBEdit;
    Label4: TLabel;
    dbeDAT: TDBEdit;
    Label5: TLabel;
    dbeKvalifik_id: TDBEdit;
    Label6: TLabel;
    dblcbKvalifik: TDBLookupComboBox;
    Label8: TLabel;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    procedure dblcbKvalifikClick(Sender: TObject);
    procedure setMastera(ds:tdatasource);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbDEleteClick(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  mastera:tquery;
  end;

var
  frmMastera: TfrmMastera;

implementation
uses unDm, unIzdeliya;
{$R *.dfm}
procedure tfrmMastera.setMastera(ds:tdatasource);
begin
  dbeID.DataSource:=ds;
  dbeFam.DataSource:=ds;
  dbeName.DataSource:=ds;
  dbeOtch.DataSource:=ds;
  dbeAddress.DataSource:=ds;
  dbedat.DataSource:=ds;
  dbeKvalifik_id.DataSource:=ds;
  grid.DataSource:=ds;    
end;
procedure TfrmMastera.dblcbKvalifikClick(Sender: TObject);
begin
  sbEdit.click;
  dbeKvalifik_id.text:=dblcbKvalifik.keyValue;
end;
procedure TfrmMastera.sbFirstClick(Sender: TObject);
begin
    dm.first(mastera);
    setNav(mastera);
end;
procedure TfrmMastera.sbPriorClick(Sender: TObject);
begin
    dm.prior(mastera);
  setNav(mastera);
end;
procedure TfrmMastera.sbNextClick(Sender: TObject);
begin
    dm.NExt(mastera);
    setNav(mastera);
end;
procedure TfrmMastera.sbLastClick(Sender: TObject);
begin
    dm.last(mastera);
  setNav(mastera);
end;
procedure TfrmMastera.sbEditClick(Sender: TObject);
begin
    dm.edit(mastera);
end;
procedure TfrmMastera.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(mastera);
end;
procedure TfrmMastera.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(mastera);
end;
procedure TfrmMastera.sbRefreshClick(Sender: TObject);
begin
    mastera.Close;
    mastera.open;
end;

procedure TfrmMastera.sbDEleteClick(Sender: TObject);
begin
    with dm do
    begin
      if messagedlg('Удалить МАСТЕРА "'+mastera.FieldByName('fam').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_master.ParamByName('imaster_id').AsInteger:=mastera.fieldByName('id').AsInteger;
        delete(spDElete_master);
        showmessage('Мастера '+mastera.FieldByName('fam').AsString+' удалён!');
      end;
    end;

end;


procedure TfrmMastera.sbNewClick(Sender: TObject);
begin
    dm.New(mastera);
end;


procedure TfrmMastera.FormActivate(Sender: TObject);
begin
  setNav(mastera);
end;

procedure TfrmMastera.N1Click(Sender: TObject);
begin
  frmizdeliya.izdeliya:=dm.qIzdeliya_by_master;
  frmIzdeliya.Setizdeliya(dm.dsqIzdeliya_by_master);
  if not dm.qIzdeliya_by_master.Active then
      dm.qIzdeliya_by_master.Open;
  frmIzdeliya.show;

end;

end.
