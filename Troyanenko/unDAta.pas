unit unDAta;

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
    miBy: TMenuItem;
    miBy2: TMenuItem;
    procedure setInfo(ds:tdatasource;mq:Tquery;Caption,miStr1,mistr2:string);
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
    procedure miByClick(Sender: TObject);
    procedure miBy2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  masterQ:tquery;
  end;

var
  frmData: TfrmData;

implementation
uses unDm;
{$R *.dfm}
procedure tfrmData.setInfo(ds:tdatasource;mQ:tquery;Caption,miStr1,mistr2:string);
begin
  grid.DataSource:=ds;
  masterQ:=mq;
  frmData.Caption:=caption;
  if mistr1 ='' then miBy.Visible:=false else
  begin
    miBy.Visible:=true;
    miBy.Caption:=miSTR1;
  end;
  if mistr2 ='' then miBy2.Visible:=false else
  begin
    miBy2.Visible:=true;
    miBy2.Caption:=miSTR2;
  end;
end;
procedure TfrmData.sbFirstClick(Sender: TObject);
begin
    dm.first(masterQ);
    setNav(masterQ);
end;
procedure TfrmData.sbPriorClick(Sender: TObject);
begin
    dm.prior(masterQ);
  setNav(masterQ);
end;
procedure TfrmData.sbNextClick(Sender: TObject);
begin
    dm.NExt(masterQ);
    setNav(masterQ);
end;
procedure TfrmData.sbLastClick(Sender: TObject);
begin
    dm.last(masterQ);
  setNav(masterQ);
end;
procedure TfrmData.sbEditClick(Sender: TObject);
begin
    dm.edit(masterQ);
end;
procedure TfrmData.sbApplyClick(Sender: TObject);
begin
    dm.applyupdates(masterQ);
end;
procedure TfrmData.sbCancelClick(Sender: TObject);
begin
    dm.Cancelupdates(masterQ);
end;
procedure TfrmData.sbRefreshClick(Sender: TObject);
begin
    masterQ.Close;
    masterQ.open;
end;

procedure TfrmData.sbDEleteClick(Sender: TObject);
begin
    with dm do
    begin
    if grid.DataSource=dsQVidi then
      if messagedlg('Удалить Вид "'+masterQ.FieldByName('Name').AsString+'"?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_vid.ParamByName('ivid_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_vid);
        showmessage('Вид '+masterQ.FieldByName('name').AsString+' удалён!');
      end;
    if (grid.DataSource=dsQtkani) or (grid.DataSource=dsQtkani_by_vid) then
      if messagedlg('Удалить Ткань <'+intToStr(masterQ.FieldByName('id').Asinteger)+'> ?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDElete_tkan.ParamByName('itkan_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_tkan);
        showmessage('Ткань '+intToStr(masterQ.FieldByName('id').Asinteger)+' удалёна!');
      end;
    if grid.DataSource=dsQizdeliya then
      if messagedlg('Удалить Изделие <'+masterQ.FieldByName('name').Asstring+'> ?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_izdelie.ParamByName('iizdelie_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_izdelie);
        showmessage('Изделие '+masterQ.FieldByName('name').Asstring+' удалёно!');
      end;
    if (grid.DataSource=dsqrask_tk) or (grid.DataSource=dsqRask_by_izdelie )then
      if messagedlg('Удалить РАСК.ТК <'+inttoStr(masterQ.FieldByName('id').Asinteger)+'> ?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_rask.ParamByName('irask_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_rask);
        showmessage('Раск. ткани '+intToStr(masterQ.FieldByName('id').Asinteger)+' удалёна!');
      end;
    if grid.DataSource=dsQZakazchiki then
      if messagedlg('Удалить Заказчика <'+(masterQ.FieldByName('name').Asstring)+'> ?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_zakazchik.ParamByName('izakazchik_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_zakazchik);
        showmessage('Заказчик '+(masterQ.FieldByName('name').Asstring)+' удалён!');
      end;

    if (grid.DataSource=dsQZakazi)
       or (grid.DataSource=dsqzakazi_by_tkan)
       or (grid.datasource=dsqzakazi_by_zakazchik)
       or (grid.datasource=dsqZakazi_by_izdelie) then
      if messagedlg('Удалить Заказ <'+intToStr(masterQ.FieldByName('id').AsInteger)+'> ?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_zakaz.ParamByName('izakaz_id').AsInteger:=masterQ.fieldByName('id').AsInteger;
        delete(spDElete_zakaz);
        showmessage('Заказ '+intToStr(masterQ.FieldByName('id').Asinteger)+' удалён!');
      end;
  end;
end;


procedure TfrmData.sbNewClick(Sender: TObject);
begin
    dm.New(masterQ);
end;


procedure TfrmData.FormActivate(Sender: TObject);
begin
  setNav(masterQ);
end;

procedure TfrmData.miByClick(Sender: TObject);
begin
  with dm do
  begin
        if grid.DataSource=dsqVidi then
        begin
           setinfo(dsqtkani_by_vid,qtkani_by_vid,
                'Ткани вида: '+masterQ.fieldByName('name').asstring,
                'Заказы этой ткани','');
           if not qtkani_by_vid.active then
                         qtkani_by_vid.Open
         end else
        if (grid.DataSource=dsQtkani) or  (grid.DataSource=dsqtkani_by_vid )then
         begin
           setinfo(dsqzakazi_by_tkan,qzakazi_by_tkan,
               'Заказы ткани: '+intToStr(masterQ.fieldByName('id').asinteger),
               '','');
               if not qzakazi_by_tkan.active then
                         qzakazi_by_tkan.Open
         end else
        if (grid.DataSource=dsqizdeliya) then
         begin
           setinfo(dsqRask_by_izdelie,qrask_by_izdelie,
                'Раск. тк. изделия: '+(masterQ.fieldByName('name').asstring),
                '','');
           if not qrask_by_izdelie.active then
                         qrask_by_izdelie.Open
         end;
        if (grid.DataSource=dsQZakazchiki) then
         begin
           setinfo(dsqzakazi_by_zakazchik,qzakazi_by_zakazchik,
                'Заказы заказчика: '+(masterQ.fieldByName('name').asstring),
                '','');
           if not qzakazi_by_zakazchik.active then
                         qzakazi_by_zakazchik.Open
         end;
  end
end;

procedure TfrmData.miBy2Click(Sender: TObject);
begin
with dm do
        if (grid.DataSource=dsQizdeliya) then
         begin
           setinfo(dsqZakazi_by_izdelie,qZakazi_by_izdelie,
                'Заказы изделия: '+(masterQ.fieldByName('name').asstring),
                '','');
           if not qZakazi_by_izdelie.active then
                         qZakazi_by_izdelie.Open
         end;

end;

end.
