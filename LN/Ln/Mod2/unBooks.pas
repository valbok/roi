unit unBooks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls,db,
  unDMBooks, dblookup,
  unDBModeForm, ExtCtrls, Buttons;

type
  TfmBooks = class(TDbNavStatForm)
    pnlMain: TPanel;
    dbePrice: TDBEdit;
    dbeNameBooks: TDBEdit;
    dbeCodeBooks: TDBEdit;
    lbCodeBooks: TLabel;
    lbNameBooks: TLabel;
    lbCodeGenres: TLabel;
    lbCodeAuthor: TLabel;
    lbPrice: TLabel;
    DBEGenres_id: TDBEdit;
    DBECode_author: TDBEdit;
    bR: TBitBtn;
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
    procedure bRClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetNavButtons;
  public
    { Public declarations }
     function CanChange:Boolean;

  end;

var
  fmBooks: TfmBooks;

implementation

uses unLike;

{$R *.dfm}

{ TfmBooks }

function TfmBooks.CanChange: Boolean;
begin
  Result:=FormMode=fmBrowse;
end;


procedure TfmBooks.sbAcceptClick(Sender: TObject);
begin
    inherited;
    dmBooks.AcceptBooks;
   dmBooks.qBooks.Close;
   dmBooks.qBooks.Open;

    SetNavButtons;
end;

procedure TfmBooks.sbBrowseClick(Sender: TObject);
begin
    inherited;
    if not (FormMode=fmBrowse) then
    dmBooks.CancelBooks;
end;

procedure TfmBooks.sbCancelClick(Sender: TObject);
begin
     inherited;
     dmBooks.CancelBooks;
     SetNavButtons;
end;

procedure TfmBooks.sbEditClick(Sender: TObject);
begin
    inherited;
    dmBooks.EditBooks;
end;

procedure TfmBooks.sbFirstClick(Sender: TObject);
begin
    inherited;
    dmBooks.FirstBooks;
    SetNavButtons;
end;

procedure TfmBooks.sbInsertClick(Sender: TObject);
begin
    inherited;
    dmBooks.NewBooks;
end;

procedure TfmBooks.sbLastClick(Sender: TObject);
begin
    inherited;
    dmBooks.LastBooks;
    SetNavButtons;
end;

procedure TfmBooks.sbNextClick(Sender: TObject);
begin
    inherited;
    dmBooks.NextBooks;
    SetNavButtons;

end;

procedure TfmBooks.sbPrevClick(Sender: TObject);
begin
    inherited;
    dmBooks.PriorBooks;
    SetNavButtons;
end;

procedure TfmBooks.SetNavButtons;
begin
     sbFirst.Enabled:=not(dmBooks.IsFirstBooks);
     sbNext.Enabled:=not(dmBooks.IsLastBooks);
     sbPrev.Enabled:=not(dmBooks.IsFirstBooks);
     sbLast.Enabled:=not(dmBooks.IsLastBooks);

     sbEdit.Enabled:=true;
     sbInsert.Enabled:=true;
     sbDElete.Enabled:=true;
end;

procedure TfmBooks.sbDeleteClick(Sender: TObject);
begin
  inherited;
    with dmbooks do
    begin
      if messagedlg('������� ����� "'+qBooks.FieldByName('name').Asstring+'"?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_Book.ParamByName('IBOOK_ID').AsInteger:=qBooks.fieldByName('code_book').AsInteger;
        Spdelete_Book.ExecProc;
        showmessage('����� '+qBooks.FieldByName('name').Asstring+' ������!');
      end;
    end;

end;

procedure TfmBooks.bRClick(Sender: TObject);
var s:string;
ds:Tdatasource;
begin
  inherited;
  with dmBooks do
  begin
   qRelese.Close;
   qrelese.DataSource:=dsbooks;
   s:=qrelese.SQL.Text;
   qrelese.SQL.Add('where code_book=:code_book');
   ds:=fmlike.grid.DataSource;
   fmlike.grid.DataSource:=dsRelese;
   qRelese.Open;
   fmlike.showmodal;
   qRelese.SQL.Text:=s;
   fmlike.grid.DataSource:=ds;
  end;

end;

end.
