unit unAuthors;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls,db,
  unDMBooks, dblookup,
  unDBModeForm, ExtCtrls, Buttons;

type
  TfmAuthors = class(TDbNavStatForm)
    pnlMain: TPanel;
    dbeCodeCountry: TDBEdit;
    dbePatronymic: TDBEdit;
    lbCodeCountry: TLabel;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbSurname: TLabel;
    lbCodeAuthors: TLabel;
    dbeCodeAuthors: TDBEdit;
    dbeName: TDBEdit;
    dbeSurname: TDBEdit;
    Bevel1: TBevel;
    dblcbNameC: TDBLookupComboBox;
    Label1: TLabel;
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
    procedure dblcbNameCClick(Sender: TObject);
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
  fmAuthors: TfmAuthors;

implementation

uses unLike;

{$R *.dfm}

{ TfmAuthors }

function TfmAuthors.CanChange: Boolean;
begin
    Result:=FormMode=fmBrowse;
end;


procedure TfmAuthors.sbAcceptClick(Sender: TObject);
begin
     inherited;
     dmBooks.AcceptAuthors;
     dmBooks.qAuthors.Close;
     dmBooks.qAuthors.Open;

     SetNavButtons;

end;

procedure TfmAuthors.sbBrowseClick(Sender: TObject);
begin
   inherited;
     if not (FormMode=fmBrowse) then
      dmBooks.CancelAuthors;
end;

procedure TfmAuthors.sbCancelClick(Sender: TObject);
begin
     inherited;
     dmBooks.CancelAuthors;
     SetNavButtons;
end;

procedure TfmAuthors.sbEditClick(Sender: TObject);
begin
    inherited;
   dmBooks.EditAuthors;
   
end;

procedure TfmAuthors.sbFirstClick(Sender: TObject);
begin
      inherited;
      dmBooks.FirstAuthors;
      SetNavButtons;
end;

procedure TfmAuthors.sbInsertClick(Sender: TObject);
begin
   inherited;
   dmBooks.NewAuthors;
end;

procedure TfmAuthors.sbLastClick(Sender: TObject);
begin
     inherited;
     dmBooks.LastAuthors;
     SetNavButtons;
end;

procedure TfmAuthors.sbNextClick(Sender: TObject);
begin
     inherited;
     dmBooks.NextAuthors;
     SetNavButtons;
end;

procedure TfmAuthors.sbPrevClick(Sender: TObject);
begin
     inherited;
     dmBooks.PriorAuthors;
     SetNavButtons;
end;

procedure TfmAuthors.SetNavButtons;
begin
     sbFirst.visible:=not(dmBooks.IsFirstAuthors);
     sbNext.visible:=not(dmBooks.IsLastAuthors);
     sbPrev.visible:=not(dmBooks.IsFirstAuthors);
     sbLast.visible:=not(dmBooks.IsLastAuthors);
     sbEdit.Enabled:=true;
     sbInsert.Enabled:=true;
     sbDelete.Enabled:=true;
end;

procedure TfmAuthors.dblcbNameCClick(Sender: TObject);
begin
  inherited;
 sbEdit.Click;
 dbeCodeCountry.Text:=intToStr(dblcbNameC.KeyValue);
end;

procedure TfmAuthors.sbDeleteClick(Sender: TObject);
begin
  inherited;
    with dmbooks do
    begin
      if messagedlg('������� ������ "'+qAuthors.FieldByName('fam').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_author.ParamByName('IAUTHOR_ID').AsInteger:=qauthors.fieldByName('code_authors').AsInteger;
        spDelete_author.ExecProc;
        showmessage('����� '+qAuthors.FieldByName('fam').AsString+' �����!');
      end;
    end;


end;

procedure TfmAuthors.bBooksClick(Sender: TObject);
var s:string;
ds:Tdatasource;
begin
  inherited;
  with dmBooks do
  begin
   qBooks.Close;
   qBooks.DataSource:=dsAuthors;
   s:=qBooks.SQL.Text;
   qBooks.SQL.Add('where code_authors=:code_authors');
   ds:=fmlike.grid.DataSource;
   fmlike.grid.DataSource:=dsBooks;
   qBooks.Open;
   fmlike.showmodal;
   qBooks.SQL.Text:=s;
   fmlike.grid.DataSource:=ds;
  end;
end;

end.
