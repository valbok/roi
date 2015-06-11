unit unPromisli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unNav, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Menus;

type
  TfrmPromisli = class(TFrmNav)
    pnlMain: TPanel;
    grid: TDBGrid;
    pnlBotom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeID: TDBEdit;
    dbeName: TDBEdit;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
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
  end;

var
  frmPromisli: TfrmPromisli;

implementation
uses unDM, unMastera, unIzdeliya;
{$R *.dfm}
procedure TfrmPromisli.sbFirstClick(Sender: TObject);
begin
    dm.first(dm.qall_promisli);
    setNav(dm.qall_promisli);
end;
procedure TfrmPromisli.sbPriorClick(Sender: TObject);
begin
    dm.prior(dm.qall_promisli);
  setNav(dm.qall_promisli);
end;
procedure TfrmPromisli.sbNextClick(Sender: TObject);
begin
    dm.NExt(dm.qall_promisli);
    setNav(dm.qall_promisli);
end;
procedure TfrmPromisli.sbLastClick(Sender: TObject);
begin
    dm.last(dm.qall_promisli);
  setNav(dm.qall_promisli);
end;
procedure TfrmPromisli.sbEditClick(Sender: TObject);
begin
    dm.edit(dm.qall_promisli);
end;
procedure TfrmPromisli.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(dm.qall_promisli);
end;
procedure TfrmPromisli.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(dm.qall_promisli);
end;
procedure TfrmPromisli.sbRefreshClick(Sender: TObject);
begin
    dm.qall_promisli.Close;
    dm.qall_promisli.open;
end;

procedure TfrmPromisli.sbDEleteClick(Sender: TObject);
begin
    with dm do
    begin
      if messagedlg('Удалить Промысел "'+qall_promisli.FieldByName('name').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_promisel.ParamByName('ipromisel_name').AsString:=qall_promisli.fieldByName('name').Asstring;
        delete(spDElete_promisel);
        showmessage('Промысел `'+qall_promisli.FieldByName('name').AsString+'` удалён!');
      end;
    end;

end;


procedure TfrmPromisli.sbNewClick(Sender: TObject);
begin
    dm.New(dm.qall_promisli);
end;

procedure TfrmPromisli.FormActivate(Sender: TObject);
begin
  setNav(dm.qAll_promisli);
end;

procedure TfrmPromisli.N1Click(Sender: TObject);
begin
  frmizdeliya.izdeliya:=dm.qIzdeliya_by_promisel;
  frmIzdeliya.Setizdeliya(dm.dsqIzdeliya_by_promisel);
  if not dm.qIzdeliya_by_promisel.Active then
      dm.qIzdeliya_by_promisel.Open;
  frmIzdeliya.show;

end;

end.
