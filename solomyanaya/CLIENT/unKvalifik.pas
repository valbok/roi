unit unKvalifik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,unNav, Menus;

type
  TfrmKvalifik = class(TfrmNav)
    pnlMain: TPanel;
    grid: TDBGrid;
    pnlBotom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    PopupMenu: TPopupMenu;
    miMastera_by_kvalifik: TMenuItem;
    procedure FormActivate(Sender: TObject);
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
    procedure miMastera_by_kvalifikClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmKvalifik: TfrmKvalifik;

implementation
{$R *.dfm}
uses unDM, unMastera;

procedure Tfrmkvalifik.sbFirstClick(Sender: TObject);
begin
    dm.first(dm.qall_kvalifik    );
    setNav(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbPriorClick(Sender: TObject);
begin
    dm.prior(dm.qall_kvalifik);
  setNav(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbNextClick(Sender: TObject);
begin
    dm.NExt(dm.qall_kvalifik);
    setNav(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbLastClick(Sender: TObject);
begin
    dm.last(dm.qall_kvalifik);
  setNav(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbEditClick(Sender: TObject);
begin
    dm.edit(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(dm.qall_kvalifik);
end;
procedure Tfrmkvalifik.sbRefreshClick(Sender: TObject);
begin
    dm.qall_kvalifik.Close;
    dm.qall_kvalifik.open;
end;

procedure Tfrmkvalifik.sbDEleteClick(Sender: TObject);
begin
    with dm do
    begin
      if messagedlg('Удалить Квалификацию "'+qall_kvalifik.FieldByName('name').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_kvalifik.ParamByName('ikvalifik_id').AsInteger:=qall_kvalifik.fieldByName('id').AsInteger;
        delete(spDElete_kvalifik);
        showmessage('Квалификация `'+qall_kvalifik.FieldByName('name').AsString+'` удалёна!');
      end;
    end;

end;


procedure Tfrmkvalifik.sbNewClick(Sender: TObject);
begin
    dm.New(dm.qall_kvalifik);
end;


procedure TfrmKvalifik.FormActivate(Sender: TObject);
begin
   setNav(dm.qall_kvalifik);
end;

procedure TfrmKvalifik.miMastera_by_kvalifikClick(Sender: TObject);
begin
  frmmastera.mastera:=dm.qMastera_by_kvalifik;
  frmMastera.setMastera(dm.dsqMastera_by_kvalifik);
  if not dm.qMastera_by_kvalifik.Active then
      dm.qMastera_by_kvalifik.Open;
  frmMastera.show;
end;

end.
