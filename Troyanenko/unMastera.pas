unit unMastera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,unNav,dbtables,db,
  Menus;

type
  TfrmData = class(TfrmNav)
    pnlMain: TPanel;
    grid: TDBGrid;
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
  masterQ:tquery;
  end;

var
  frmData: TfrmData;

implementation
uses unDm, unIzdeliya;
{$R *.dfm}
procedure tfrmData.setD(ds:tdatasource;mQ:tquery;);
begin
  grid.DataSource:=ds;
  masterQ:=mq;
end;
procedure TfrmData.dblcbKvalifikClick(Sender: TObject);
begin
  sbEdit.click;
  dbeKvalifik_id.text:=dblcbKvalifik.keyValue;
end;
procedure TfrmData.sbFirstClick(Sender: TObject);
begin
    dm.first(mastera);
    setNav(mastera);
end;
procedure TfrmData.sbPriorClick(Sender: TObject);
begin
    dm.prior(mastera);
  setNav(mastera);
end;
procedure TfrmData.sbNextClick(Sender: TObject);
begin
    dm.NExt(mastera);
    setNav(mastera);
end;
procedure TfrmData.sbLastClick(Sender: TObject);
begin
    dm.last(mastera);
  setNav(mastera);
end;
procedure TfrmData.sbEditClick(Sender: TObject);
begin
    dm.edit(mastera);
end;
procedure TfrmData.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(mastera);
end;
procedure TfrmData.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(mastera);
end;
procedure TfrmData.sbRefreshClick(Sender: TObject);
begin
    mastera.Close;
    mastera.open;
end;

procedure TfrmData.sbDEleteClick(Sender: TObject);
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


procedure TfrmData.sbNewClick(Sender: TObject);
begin
    dm.New(mastera);
end;


procedure TfrmData.FormActivate(Sender: TObject);
begin
  setNav(mastera);
end;

procedure TfrmData.N1Click(Sender: TObject);
begin
  frmizdeliya.izdeliya:=dm.qIzdeliya_by_master;
  frmIzdeliya.Setizdeliya(dm.dsqIzdeliya_by_master);
  if not dm.qIzdeliya_by_master.Active then
      dm.qIzdeliya_by_master.Open;
  frmIzdeliya.show;

end;

end.
