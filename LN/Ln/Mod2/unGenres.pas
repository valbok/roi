unit unGenres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls,db,
  unDMBooks, dblookup,
  unDBModeForm, ExtCtrls, Buttons;

type
  TfmGenres = class(TDbNavStatForm)
    pnlMain: TPanel;
    dbeCodeGenres: TDBEdit;
    dbeNameGenres: TDBEdit;
    lbNameGenres: TLabel;
    lbCodeGenres: TLabel;
    bBooks: TBitBtn;
    procedure sbAcceptClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure bBooksClick(Sender: TObject);
  private
    { Private declarations }
     procedure SetNavButtons;
  public
    { Public declarations }
     function CanChange:Boolean;

  end;

var
  fmGenres: TfmGenres;

implementation

uses unLike;

{$R *.dfm}

procedure TfmGenres.sbAcceptClick(Sender: TObject);
begin
  inherited;
 dmBooks.AcceptGenres;
   dmBooks.qGenres.Close;
   dmBooks.qGenres.Open;

 SetNavButtons;
end;

procedure TfmGenres.sbCancelClick(Sender: TObject);
begin
  inherited;
  dmBooks.CancelGenres;
  SetNavButtons;
end;

procedure TfmGenres.sbEditClick(Sender: TObject);
begin
  inherited;
     dmBooks.EditGenres;
end;

procedure TfmGenres.sbInsertClick(Sender: TObject);
begin
  inherited;
    dmBooks.NewGenres;
end;

procedure TfmGenres.sbBrowseClick(Sender: TObject);
begin
  inherited;
     if not (FormMode=fmBrowse) then
  dmBooks.CancelGenres;
end;

procedure TfmGenres.sbFirstClick(Sender: TObject);
begin
  inherited;
    dmBooks.FirstGenres;
  SetNavButtons;

end;

procedure TfmGenres.sbNextClick(Sender: TObject);
begin
  inherited;
    dmBooks.NextGenres;
  SetNavButtons;

end;

procedure TfmGenres.sbPrevClick(Sender: TObject);
begin
  inherited;
   dmBooks.PriorGenres;
  SetNavButtons;
end;

procedure TfmGenres.sbLastClick(Sender: TObject);
begin
  inherited;
    dmBooks.LastGenres;
  SetNavButtons;
end;

procedure TfmGenres.SetNavButtons;
begin
    sbFirst.Enabled:=not(dmBooks.IsFirstGenres);
     sbNext.Enabled:=not(dmBooks.IsLastGenres);
     sbPrev.Enabled:=not(dmBooks.IsFirstGenres);
     sbLast.Enabled:=not(dmBooks.IsLastGenres);
     sbEdit.Enabled:=true;
     sbInsert.Enabled:=true;
     sbDElete.Enabled:=true;

end;

function TfmGenres.CanChange: Boolean;
begin
    Result:=FormMode=fmBrowse;
end;


procedure TfmGenres.sbDeleteClick(Sender: TObject);
begin
  inherited;
    with dmbooks do
    begin
      if messagedlg('”‰‡ÎËÚ¸ ∆¿Õ– "'+qGenres.FieldByName('name').Asstring+'"?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_Genres.ParamByName('IGENRES_ID').AsInteger:=qGenres.fieldByName('code_genres').AsInteger;
        spDelete_Genres.ExecProc;
        showmessage('∆‡Ì '+qGenres.FieldByName('name').AsString+' Û‰‡Î∏Ì!');
      end;
    end;
end;

procedure TfmGenres.bBooksClick(Sender: TObject);
var s:string;
ds:Tdatasource;
begin
  inherited;
  with dmBooks do
  begin
   qBooks.Close;
   qBooks.DataSource:=dsGenres;
   s:=qBooks.SQL.Text;
   qBooks.SQL.Add('where code_genres=:code_genres');
   ds:=fmlike.grid.DataSource;
   fmlike.grid.DataSource:=dsBooks;
   qBooks.Open;
   fmlike.showmodal;
   qBooks.SQL.Text:=s;
   fmlike.grid.DataSource:=ds;
  end;

end;

end.
