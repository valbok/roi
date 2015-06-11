unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    gridMain: TDBGrid;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    miService: TMenuItem;
    DBNavMain: TDBNavigator;
    pnlTop: TPanel;
    PageControl: TPageControl;
    tsPrepods: TTabSheet;
    tsIzdaniya: TTabSheet;
    tsAvtorstvo: TTabSheet;
    tsTypes_izds: TTabSheet;
    tsNauch_naprav: TTabSheet;
    tsKafedri: TTabSheet;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    N1: TMenuItem;
    pmManeger: TPopupMenu;
    miMode1: TMenuItem;
    miMode2: TMenuItem;
    miEdit: TMenuItem;
    miDelete: TMenuItem;
    miAdd: TMenuItem;
    miRefresh: TMenuItem;
    miSave: TMenuItem;
    miCancel: TMenuItem;
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure tsNauch_napravShow(Sender: TObject);
    procedure tsIzdaniyaShow(Sender: TObject);
    procedure tsAvtorstvoShow(Sender: TObject);
    procedure tsKafedriShow(Sender: TObject);
    procedure tsPrepodsShow(Sender: TObject);
    procedure tsTypes_izdsShow(Sender: TObject);
    procedure miEditClick(Sender: TObject);
    procedure miDeleteClick(Sender: TObject);
    procedure miAddClick(Sender: TObject);
    procedure miSaveClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);
    procedure miMode1Click(Sender: TObject);
    procedure miRefreshClick(Sender: TObject);
    procedure pmManegerPopup(Sender: TObject);
  private
    { Private declarations }
    _pathTodb:string;
    procedure SetpathTodb(value:string);
  public
    { Public declarations }
    property pathTodb: string read _pathTodb write SetpathTodb;
  end;

var
  frmMain: TfrmMain;

implementation
uses unDM, unConnect, DB;
{$R *.dfm}
procedure TfrmMain.SetpathTodb(value:string);
begin
  _pathTodb:=value;
end;
procedure TfrmMain.miConnectClick(Sender: TObject);
begin
  frmConnect.Show;
end;

procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
   dm.Database.Connected:=false;
end;

procedure TfrmMain.tsNauch_napravShow(Sender: TObject);
begin
  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

   gridMain.DataSource:=dsQryAllNauch_naprav;
    DBnavMain.DataSource:=dsQryAllNauch_naprav;   
   if not qryAllNauch_naprav.Active then
       qryAllNauch_naprav.Active:=true;
     StatusBar.Panels[0].Text:='Научные направления';
     StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.tsIzdaniyaShow(Sender: TObject);
begin

  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

   gridMain.DataSource:=dsQryAllIzdaniya;
    DBnavMain.DataSource:=dsQryAllIzdaniya;   
   if not QryAllIzdaniya.Active then
       QryAllIzdaniya.Active:=true;
     StatusBar.Panels[0].Text:='Издания';
     StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.tsAvtorstvoShow(Sender: TObject);
begin

  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

    gridMain.DataSource:=dsqryAllAvtorstvo;
    DBnavMain.DataSource:=dsqryAllAvtorstvo;
   if not qryAllAvtorstvo.Active then
       qryAllAvtorstvo.Active:=true;
     StatusBar.Panels[0].Text:='Авторство';
     StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.tsKafedriShow(Sender: TObject);
begin

  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

   gridMain.DataSource:=dsQryAllKafedri;
    DBnavMain.DataSource:=dsQryAllKafedri;   
   if not qryAllKafedri.Active then
       qryAllKafedri.Active:=true;
     StatusBar.Panels[0].Text:='Кафедры';
     StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,
                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.tsPrepodsShow(Sender: TObject);
begin
  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

   gridMain.DataSource:=dsQryAllPrepods;
  DBnavMain.DataSource:=dsQryAllPrepods;   
   if not qryAllPrepods.Active then
       qryAllPrepods.Active:=true;
     StatusBar.Panels[0].Text:='Преподаватели';
     StatusBar.Refresh;

           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,
                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];
     
 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.tsTypes_izdsShow(Sender: TObject);
begin

  with dm do
 try
  try
    gridMain.Cursor:=crHourGlass;

   gridMain.DataSource:=dsqryAllTypes_izds;
    DBnavMain.DataSource:=dsqryAllTypes_izds;   
   if not qryAllTypes_izds.Active then
       qryAllTypes_izds.Active:=true;
     StatusBar.Panels[0].Text:='Типы издания';
     StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,
                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

 finally
    gridMain.Cursor:=crDefault;
    cursor:=crDefault;
 end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miEditClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     if gridMain.DataSource=dsQryAllPrepods then
        begin
          qryAllPrepods.Edit
        end;
     if gridMain.DataSource=dsQryAllIzdaniya then
       begin
          qryAllIzdaniya.Edit
       end;
     if gridMain.DataSource=dsqryAllAvtorstvo then
       begin
          qryAllAvtorstvo.Edit;
       end;
     if gridMain.DataSource=dsqryAllTypes_izds then
       begin
          qryAllTypes_izds.Edit;
       end;
     if gridMain.DataSource=dsQryAllNauch_naprav then
       begin
          qryAllNauch_naprav.Edit;
       end;
     if gridMain.DataSource=dsQryAllKafedri then
     begin
          qryAllKafedri.Edit;
     end;

     if gridMain.DataSource=dsqryPrepodK then
     begin
         qryPrepodK.Edit;
     end;
     if gridMain.DataSource=dsqryPrepodN then
     begin
         qryPrepodK.Edit;
     end;
     if gridMain.DataSource=dsQryIzdaniya then
     begin
         QryIzdaniya.Edit;
     end;
{
     if gridMain.DataSource=dsQryPersonalsD then
     begin
         qryPersonalsD.Edit;
     end;
     if gridMain.DataSource=dsQryPersonalsC then
     begin
         qryPersonalsC.Edit;
     end;}

   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miDeleteClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     if gridMain.DataSource=dsQryAllPrepods then
          if messagedlg('Удалить преподавателя `'+qryAllPrepods.FieldByName('fam').AsString+'`? При удалении все авторства этого препо-ля тоже удалятся!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDElete_prepod.ParamByName('iprepod_id').Asinteger:=qryAllPrepods.FieldByName('id').AsInteger;
                                spDElete_prepod.ExecProc;
                                showmessage('Препод `'+qryAllPrepods.FieldByName('fam').AsString+'` удалён!');
                          end;
     if gridMain.DataSource=dsQryAllIzdaniya then
          if messagedlg('Удалить издания `'+qryAllIzdaniya.FieldByName('name').AsString+'`? При удалении все записи в таблице "Авторство" этого издания удалятся!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_izdanie.ParamByName('iizd_id').AsInteger:=qryAllIzdaniya.FieldByName('id').AsInteger;
                                spDelete_izdanie.ExecProc;
                                showmessage('Издание `'+qryAllIzdaniya.FieldByName('name').AsString+'` удалёно!');
                          end;
      if gridMain.DataSource=dsqryAllAvtorstvo then
       begin
          if messagedlg('Удалить авторство `'+IntToStr(qryAllAvtorstvo.FieldByName('id').Asinteger)+'`?',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_avtorstvo.ParamByName('iavtorstvo_id').Asinteger:=qryAllAvtorstvo.FieldByName('id').AsInteger;
                                spDelete_avtorstvo.ExecProc;
                                showmessage('Авторство  удалено!');
                          end;

       end;

     if gridMain.DataSource=dsqryAllTypes_izds then
       begin
                 if messagedlg('Удалить тип издания `'+qryAllTypes_izds.FieldByName('name').AsString+'? Записи в табл. ИЗДАНИЯ связаные с этим типом примут нулевое значение!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_type_izd.ParamByName('itype_izd').Asinteger:=qryAllTypes_izds.FieldByName('id').AsInteger;
                                spDelete_type_izd.ExecProc;
                                showmessage('Тип `'+qryAllTypes_izds.FieldByName('name').AsString+'` удален!');
                          end;
       end else
     if gridMain.DataSource=dsQryAllNauch_naprav then
       begin
          if messagedlg('Удалить направление `'+qryAllNauch_naprav.FieldByName('name').AsString+'`? При удалении все записи в таблице "Преподаватели" этого направления в поле "№ Науч. Направления" примут нулевое значение!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_Nauch_naprav.ParamByName('inaprav_name').Asstring:=qryAllNauch_naprav.FieldByName('name').Asstring;
                                spDelete_Nauch_naprav.ExecProc;
                                showmessage('Направление удалено!');
                          end;

       end else
     if gridMain.DataSource=dsQryAllKafedri then
     begin
          if messagedlg('Удалить Кафедру `'+qryAllKafedri.FieldByName('name').AsString+'? При удалении все записи в таблице "Преподаватели" этого направления в поле "№ Науч. Направления" примут нулевое значение!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_kafedra.ParamByName('ikafedra_name').AsString:=qryAllKafedri.FieldByName('name').AsString;
                                spDelete_kafedra.ExecProc;
                                showmessage('Кафедра удалена!');
                          end;

     end else
     if gridMain.DataSource=dsqryIzdaniya then
     begin
          if messagedlg('Удалить издания `'+qryIzdaniya.FieldByName('name').AsString+'`? При удалении все записи в таблице "Авторство" этого издания удалятся!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDelete_izdanie.ParamByName('iizd_id').AsInteger:=qryIzdaniya.FieldByName('id').AsInteger;
                                spDelete_izdanie.ExecProc;
                                showmessage('Издание `'+qryIzdaniya.FieldByName('name').AsString+'` удалёно!');
                          end;

     end else
     if gridMain.DataSource=dsqryPrepodN then
       begin
          if messagedlg('Удалить преподавателя `'+qryPrepodN.FieldByName('fam').AsString+'`? При удалении все авторства этого препо-ля тоже удалятся!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDElete_prepod.ParamByName('iprepod_id').Asinteger:=qryPrepodN.FieldByName('id').AsInteger;
                                spDElete_prepod.ExecProc;
                                showmessage('Препод `'+qryPrepodN.FieldByName('fam').AsString+'` удалён!');
                          end;
       end else
     if gridMain.DataSource=dsqryPrepodK then
       begin
          if messagedlg('Удалить преподавателя `'+qryPrepodK.FieldByName('fam').AsString+'`? При удалении все авторства этого препо-ля тоже удалятся!',
                        mtConfirmation,[mbYes,mbNo],0) = mryes then
                          begin
                                spDElete_prepod.ParamByName('iprepod_id').Asinteger:=qryPrepodK.FieldByName('id').AsInteger;
                                spDElete_prepod.ExecProc;
                                showmessage('Препод `'+qryPrepodK.FieldByName('fam').AsString+'` удалён!');
                          end;
       end else



   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miAddClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     DBnavmain.BtnClick(nbInsert);
   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miSaveClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     if gridMain.DataSource=dsQryAllPrepods then qryAllPrepods.ApplyUpdates;
     if gridMain.DataSource=dsQryAllIzdaniya then qryAllIzdaniya.ApplyUpdates;
     if gridMain.DataSource=dsqryAllAvtorstvo then qryAllAvtorstvo.ApplyUpdates;
     if gridMain.DataSource=dsqryAllTypes_izds then qryAllTypes_izds.ApplyUpdates;
     if gridMain.DataSource=dsQryAllNauch_naprav then qryAllNauch_naprav.ApplyUpdates;
     if gridMain.DataSource=dsQryAllKafedri then qryAllKafedri.ApplyUpdates;
     if gridMain.DataSource=dsqryPrepodN then qryPrepodN.ApplyUpdates;
     if gridMain.DataSource=dsqryPrepodK then qryPrepodk.ApplyUpdates;
     if gridMain.DataSource=dsQryIzdaniya then qryIzdaniya.ApplyUpdates;     

   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;


end;

procedure TfrmMain.miCancelClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     if gridMain.DataSource=dsQryAllPrepods then qryAllPrepods.CancelUpdates;
     if gridMain.DataSource=dsQryAllIzdaniya then qryAllIzdaniya.CancelUpdates;
     if gridMain.DataSource=dsqryAllAvtorstvo then qryAllAvtorstvo.CancelUpdates;
     if gridMain.DataSource=dsqryAllTypes_izds then qryAllTypes_izds.CancelUpdates;
     if gridMain.DataSource=dsQryAllNauch_naprav then qryAllNauch_naprav.CancelUpdates;
     if gridMain.DataSource=dsQryAllKafedri then qryAllKafedri.CancelUpdates;
     if gridMain.DataSource=dsqryPrepodN then qryPrepodN.CancelUpdates;
     if gridMain.DataSource=dsqryPrepodK then qryPrepodk.CancelUpdates;
     if gridMain.DataSource=dsQryIzdaniya then qryIzdaniya.CancelUpdates;

   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miMode1Click(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;

     if gridMain.DataSource=dsQryAllPrepods then
     begin
           qryIzdaniya_by_prepod.ParamByName('iprepod_id').AsInteger:=qryAllPrepods.fieldByName('id').AsInteger;
           gridMain.DataSource:=dsqryIzdaniya_by_prepod;

           DBnavMain.DataSource:=dsqryIzdaniya_by_prepod;
           DBNavMain.VisibleButtons:=[nbFirst,nbLast,nbPrior,nbNext];
           if not qryIzdaniya_by_prepod.Active then
              qryIzdaniya_by_prepod.Open else
              begin
               qryIzdaniya_by_prepod.close;
               qryIzdaniya_by_prepod.Active:=true;
              end;
           StatusBar.Panels[0].Text:='Издания преподавателя '+qryAllPrepods.fieldByName('Fam').AsString;
           StatusBar.Refresh;
     end;
     if gridMain.DataSource=dsQryAllIzdaniya then
     begin
           qryprepods_by_Izdanie.ParamByName('izdanie_id').AsInteger:=qryAllIzdaniya.fieldByName('id').AsInteger;
           gridMain.DataSource:=dsqryprepods_by_Izdanie;

           DBnavMain.DataSource:=dsqryprepods_by_Izdanie;
           DBNavMain.VisibleButtons:=[nbFirst,nbLast,nbPrior,nbNext];
           if not qryprepods_by_Izdanie.Active then
              qryprepods_by_Izdanie.Open else
              begin
                qryprepods_by_Izdanie.close;
                qryprepods_by_Izdanie.Open                
              end;

           StatusBar.Panels[0].Text:='Преподаватели издания '+qryAllIzdaniya.fieldByName('name').AsString;
           StatusBar.Refresh;
     end;

     if gridMain.DataSource=dsQryAllNauch_naprav then
       begin
           gridMain.DataSource:=dsqryPrepodN;
           DBnavMain.DataSource:=dsqryPrepodN;
           if not qryPrepodN.Active then
                        qryPrepodN.Active:=true;
           StatusBar.Panels[0].Text:='Преподаватели научного направления '+qryAllNauch_naprav.fieldByName('name').AsString;;
           StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];
       end;
     if gridMain.DataSource=dsQryAllKafedri  then
       begin
           gridMain.DataSource:=dsqryPrepodK;
           DBnavMain.DataSource:=dsqryPrepodK;
           if not qryPrepodK.Active then
                        qryPrepodk.Active:=true;
           StatusBar.Panels[0].Text:='Преподаватели кафедры '+qryAllKafedri.fieldByName('name').AsString;
           StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];

       end;
     if gridMain.DataSource=dsqryAllTypes_izds then
       begin
           gridMain.DataSource:=dsQryIzdaniya;
           DBnavMain.DataSource:=dsQryIzdaniya;
           if not qryIzdaniya.Active then
                        qryIzdaniya.Active:=true;
           StatusBar.Panels[0].Text:='Издания типа ' +qryAllTypes_izds.fieldByName('name').AsString;

           StatusBar.Refresh;
           DBNavMain.VisibleButtons:=[  nbFirst,
                                        nbPrior,
                                        nbNext,
                                        nbLast,
                                        nbInsert,

                                        nbEdit,
                                        nbPost,
                                        nbCancel,
                                        nbRefresh];           

       end;
   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miRefreshClick(Sender: TObject);
begin
 with dm do
 try
   try
     gridMain.Cursor:=crHourGlass;
     if gridMain.DataSource=dsQryAllPrepods then
        begin
          QryAllPrepods.close;
          QryAllPrepods.open;
        end;
     if gridMain.DataSource=dsQryAllIzdaniya then
       begin
          qryAllIzdaniya.close;
          qryAllIzdaniya.open;
       end;
     if gridMain.DataSource=dsqryAllAvtorstvo then
       begin
          qryAllAvtorstvo.close;
          qryAllAvtorstvo.open;
       end;
     if gridMain.DataSource=dsqryAllTypes_izds then
       begin
          qryAllTypes_izds.close;
          qryAllTypes_izds.Open;
       end;
     if gridMain.DataSource=dsQryAllNauch_naprav then
       begin
          qryAllNauch_naprav.Close;
          qryAllNauch_naprav.open;
       end;
     if gridMain.DataSource=dsQryAllKafedri then
     begin
         qryAllKafedri  .Close;
         qryAllKafedri.Open;
     end;
     if gridMain.DataSource=dsqryPrepodN then
     begin
         qryPrepodN.Close;
         qryPrepodN.Open;
     end;
     if gridMain.DataSource=dsqryPrepodK then
       begin
          qryPrepodK.close;
          qryPrepodK.Open;
       end;
     if gridMain.DataSource=dsqryPrepods_by_izdanie then
       begin
          qryPrepods_by_izdanie.close;
          qryPrepods_by_izdanie.Open;
       end;

     if gridMain.DataSource=dsQryIzdaniya then
       begin
          qryIzdaniya.close;
          qryIzdaniya.open;
       end;
     if gridMain.DataSource=dsqryIzdaniya_by_prepod then
       begin
          qryIzdaniya_by_prepod.close;
          qryIzdaniya_by_prepod.open;
       end;

   finally
    gridMain.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;


end;

procedure TfrmMain.pmManegerPopup(Sender: TObject);
begin
try
  with dm do
  begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Caption:='Удалить';
      miDElete.Enabled:=false;
      miAdd.Enabled:=false;
      miEdit.Enabled:=false;
      miMode1.Visible:=false;
      miMode2.Visible:=false;
//      miAdd.Enabled:=gridMain.SelectedField.Text<>'';
    if gridMain.DataSource =dsqryAllAvtorstvo then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;
      miMode1.Visible:=false;
      miMode2.Visible:=false;
    end else
    if gridMain.DataSource =dsQryIzdaniya then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;
      miMode1.Visible:=false;
      miMode2.Visible:=false;
    end else

    if gridMain.DataSource =dsQryAllPrepods then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;

      miMode1.Visible:=true;
      miMode1.Caption:='Издания преподавателя';
      miMode2.Visible:=false;
    end else
    if gridMain.DataSource =dsQryAllIzdaniya then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;

      miMode1.Visible:=true;
      miMode2.Visible:=false;
      miMode1.Caption:='Преподаватели издания';
    end else
    if gridMain.DataSource =dsQryAllNauch_naprav then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;

      miMode1.Visible:=true;
      miMode2.Visible:=false;
      miMode1.Caption:='Преподаватели направления';
     end else
    if gridMain.DataSource =dsQryAllKafedri then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';
      miMode1.Visible:=true;
      miMode2.Visible:=false;
      miMode1.Caption:='Преподаватели кафедры';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;

    end else
    if gridMain.DataSource =dsqryAllTypes_izds then
    begin
      miEdit.Enabled:=gridMain.SelectedField.Text<>'';
      miDelete.Enabled:=gridMain.SelectedField.Text<>'';

      miMode1.Visible:=true;
      miMode2.Visible:=false;
      miMode1.Caption:='Издания типа';
      miAdd.Enabled:=true;
      miDElete.Enabled:=true;
      miEdit.Enabled:=true;
    end else

  end
  except
      miEdit.Enabled:=false;
      miDelete.Enabled:=false;
      miDelete.Caption:='Удалить';
      miMode1.Visible:=false;
      miMode2.Visible:=false;
      miAdd.Enabled:=false;
      miAdd.Caption:='Добавить';
  end;

end;

end.
