unit unIzdeliya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons,unNav, StdCtrls, Mask, DBCtrls, Grids, DBGrids,dbtables,db;

type
  TfrmIzdeliya = class(TfrmNav)
    pnlMain: TPanel;
    grid: TDBGrid;
    pnlBotom: TPanel;
    dbeID: TDBEdit;
    Label1: TLabel;
    dbeName: TDBEdit;
    Label2: TLabel;
    dbePromisel_id: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dblcbProm_name: TDBLookupComboBox;
    Label5: TLabel;
    dbeMaster_id: TDBEdit;
    dblcbFam: TDBLookupComboBox;
    Label6: TLabel;
    procedure dblcbProm_nameClick(Sender: TObject);
    procedure dblcbFamClick(Sender: TObject);

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
    procedure Setizdeliya(ds:tdatasource);
  private
    { Private declarations }
  public
    { Public declarations }
    izdeliya:tquery;
  end;

var
  frmIzdeliya: TfrmIzdeliya;

implementation
uses unDM;
{$R *.dfm}
procedure tfrmizdeliya.setizdeliya(ds:tdatasource);
begin
  dbeID.DataSource:=ds;
  dbeName.DataSource:=ds;
  dbePromisel_id.DataSource:=ds;
  dbeMaster_id.DataSource:=ds;
  grid.DataSource:=ds;
end;

procedure TfrmIzdeliya.dblcbProm_nameClick(Sender: TObject);
begin
 sbEdit.click;
 dbePromisel_id.Text:=dblcbProm_name.KeyValue;
end;

procedure TfrmIzdeliya.dblcbFamClick(Sender: TObject);
begin
  sbEdit.click;
  dbeMaster_id.Text:=dblcbFam.KeyValue;
end;
procedure Tfrmizdeliya.sbFirstClick(Sender: TObject);
begin
    dm.first(izdeliya);
    setNav(izdeliya);
end;
procedure Tfrmizdeliya.sbPriorClick(Sender: TObject);
begin
    dm.prior(izdeliya);
  setNav(izdeliya);
end;
procedure Tfrmizdeliya.sbNextClick(Sender: TObject);
begin
    dm.NExt(izdeliya);
    setNav(izdeliya);
end;
procedure Tfrmizdeliya.sbLastClick(Sender: TObject);
begin
    dm.last(izdeliya);
  setNav(izdeliya);
end;
procedure Tfrmizdeliya.sbEditClick(Sender: TObject);
begin
    dm.edit(izdeliya);
end;
procedure Tfrmizdeliya.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(izdeliya);
end;
procedure Tfrmizdeliya.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(izdeliya);
end;
procedure Tfrmizdeliya.sbRefreshClick(Sender: TObject);
begin
    izdeliya.Close;
    izdeliya.open;
end;

procedure Tfrmizdeliya.sbDEleteClick(Sender: TObject);
begin
    with dm do
    begin
      if messagedlg('Удалить Изделия "'+izdeliya.FieldByName('name').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_izdelie.ParamByName('iizdelie_id').AsInteger:=izdeliya.fieldByName('id').AsInteger;
        delete(spDElete_izdelie);
        showmessage('Изделие `'+izdeliya.FieldByName('name').AsString+'` удалёно!');
      end;
    end;

end;


procedure Tfrmizdeliya.sbNewClick(Sender: TObject);
begin
    dm.New(izdeliya);
end;

procedure TfrmIzdeliya.FormActivate(Sender: TObject);
begin
  if not dm.qAll_promisli.Active then
    dm.qAll_promisli.Active:=true;
  if not dm.qAll_mastera.Active then
    dm.qAll_mastera.Active:=true;

  setNav(izdeliya);
end;

end.
