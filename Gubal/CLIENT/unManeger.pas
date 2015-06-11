unit unManeger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Menus;

type
  TfrmManeger = class(TForm)
    pnlMain: TPanel;
    gridMain: TDBGrid;
    DBNavMain: TDBNavigator;
    pnlTop: TPanel;
    PageControl: TPageControl;
    tsPotrebiteli: TTabSheet;
    tsTovari: TTabSheet;
    tsNakladnie: TTabSheet;
    tsPostavka: TTabSheet;
    pmManeger: TPopupMenu;
    miDelete: TMenuItem;
    miRefresh: TMenuItem;
    MainMenu: TMainMenu;
    miService: TMenuItem;
    miSave: TMenuItem;
    miCancel: TMenuItem;
    procedure tsPotrebiteliShow(Sender: TObject);
    procedure tsTovariShow(Sender: TObject);
    procedure tsNakladnieShow(Sender: TObject);
    procedure tsPostavkaShow(Sender: TObject);
    procedure miDeleteClick(Sender: TObject);
    procedure miRefreshClick(Sender: TObject);
    procedure miSaveClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManeger: TfrmManeger;

implementation
uses unDm;
{$R *.dfm}

procedure TfrmManeger.tsPotrebiteliShow(Sender: TObject);
begin
 with dm do
  begin
    gridMain.DataSource:=dsQPotreBitels;
    DBnavMain.DataSource:=dsQPotreBitels;
    if not qPotrebitels.Active then
       qPotrebitels.Active:=true;
  end;
end;

procedure TfrmManeger.tsTovariShow(Sender: TObject);
begin
 with dm do
  begin
    gridMain.DataSource:=dsQTovars;
    DBnavMain.DataSource:=dsQTovars;
    if not qTovars.Active then
       qTovars.Active:=true;
  end;

end;

procedure TfrmManeger.tsNakladnieShow(Sender: TObject);
begin
 with dm do
  begin
    gridMain.DataSource:=dsQNakladnies;
    DBnavMain.DataSource:=dsQNakladnies;
    if not qNakladnies.Active then
       qNakladnies.Active:=true;
  end;

end;

procedure TfrmManeger.tsPostavkaShow(Sender: TObject);
begin
 with dm do
  begin
    gridMain.DataSource:=dsQPostavkas;
    DBnavMain.DataSource:=dsQPostavkas;
    if not qPostavkas.Active then
       qPostavkas.Active:=true;
  end;

end;

procedure TfrmManeger.miDeleteClick(Sender: TObject);
begin
 with dm do
 begin
     if gridMain.DataSource=dsQPotreBitels then
          if messagedlg('Delete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDELpotrebitel.ParamByName('ipotrebitel_code').Asinteger:=qPotrebitels.FieldByName('code').AsInteger;
                                spDELpotrebitel.ExecProc;
                                showmessage('Was deleted!');
                          end;
     if gridMain.DataSource=dsQTovars then
          if messagedlg('Delete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDeLTovar.ParamByName('itovar_code').AsInteger:=qTovars.FieldByName('code').AsInteger;
                                spDeLTovar.ExecProc;
                                showmessage('Was deleted!');
                          end;
      if gridMain.DataSource=dsQNakladnies then
       begin
          if messagedlg('DElete?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelNakl.ParamByName('inakl_code').Asinteger:=qNakladnies.FieldByName('code').AsInteger;
                                spDelNakl.ExecProc;
                                showmessage('Was delete!');
                          end;

       end;

     if gridMain.DataSource=dsQPostavkas then
       begin

                            DBNavMain.BtnClick(nbDelete);


       end else
end;

end;

procedure TfrmManeger.miRefreshClick(Sender: TObject);
begin
 with dm do
  begin

     if gridMain.DataSource=dsQPotreBitels then
        begin
          qPotrebitels.close;
          qPotrebitels.open;
        end;
     if gridMain.DataSource=dsQTovars then
       begin
          qTovars.close;
          qTovars.open;
       end;
     if gridMain.DataSource=dsQNakladnies then
       begin
          qNakladnies.close;
          qNakladnies.open;
       end;
     if gridMain.DataSource=dsQPostavkas then
       begin
          qPostavkas.close;
          qPostavkas.Open;
       end;

end;

end;

procedure TfrmManeger.miSaveClick(Sender: TObject);
begin
 with dm do
 begin
{     if gridMain.DataSource=dsQPotreBitels then qPotrebitels.ApplyUpdates(;
     if gridMain.DataSource=dsQTovars then qTovars.ApplyUpdates;
     if gridMain.DataSource=dsQNakladnies then qNakladnies.ApplyUpdates;
     if gridMain.DataSource=dsQPostavkas then qPostavkas.ApplyUpdates;}
 end;
end;

procedure TfrmManeger.miCancelClick(Sender: TObject);
begin
 with dm do
 begin
     if gridMain.DataSource=dsQPotreBitels then qPotrebitels.CancelUpdates;
     if gridMain.DataSource=dsQTovars then qTovars.CancelUpdates;
     if gridMain.DataSource=dsQNakladnies then qNakladnies.CancelUpdates;
     if gridMain.DataSource=dsQPostavkas then qPostavkas.CancelUpdates;
 end;

end;

end.
