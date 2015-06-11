unit unPublishing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls,db,
  unDMBooks, dblookup,
  unDBModeForm, ExtCtrls, Buttons;

type
  TfmPublishing = class(TDbNavStatForm)
    pnlMain: TPanel;
    dbeMainditor: TDBEdit;
    dbeEMail: TDBEdit;
    dbeTelephone: TDBEdit;
    dbeAddress: TDBEdit;
    dbeNamePublishing: TDBEdit;
    dbeCodePublishing: TDBEdit;
    lbCodePublishing: TLabel;
    lbNamePublishing: TLabel;
    lbAddress: TLabel;
    lbTelephone: TLabel;
    lbEmail: TLabel;
    lbMainEditor: TLabel;
    bRelese: TBitBtn;
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
    procedure bReleseClick(Sender: TObject);
  private
    { Private declarations }
     procedure SetNavButtons;
  public
    { Public declarations }
     function CanChange:Boolean;

  end;

var
  fmPublishing: TfmPublishing;

implementation

uses unLike;


{$R *.dfm}

procedure TfmPublishing.sbAcceptClick(Sender: TObject);
begin
  inherited;
 dmBooks.AcceptPublishing;
   dmBooks.qPublishing.Close;
   dmBooks.qPublishing.Open;

 SetNavButtons;
end;

procedure TfmPublishing.sbCancelClick(Sender: TObject);
begin
  inherited;
  dmBooks.CancelPublishing;
  SetNavButtons;
end;

procedure TfmPublishing.sbEditClick(Sender: TObject);
begin
  inherited;
     dmBooks.EditPublishing;
end;

procedure TfmPublishing.sbInsertClick(Sender: TObject);
begin
  inherited;
    dmBooks.NewPublishing;
end;

procedure TfmPublishing.sbBrowseClick(Sender: TObject);
begin
  inherited;
     if not (FormMode=fmBrowse) then
  dmBooks.CancelPublishing;
end;

procedure TfmPublishing.sbFirstClick(Sender: TObject);
begin
  inherited;
    dmBooks.FirstPublishing;
  SetNavButtons;

end;

procedure TfmPublishing.sbNextClick(Sender: TObject);
begin
  inherited;
    dmBooks.NextPublishing;
  SetNavButtons;

end;

procedure TfmPublishing.sbPrevClick(Sender: TObject);
begin
  inherited;
   dmBooks.PriorPublishing;
  SetNavButtons;
end;

procedure TfmPublishing.sbLastClick(Sender: TObject);
begin
  inherited;
    dmBooks.LastPublishing;
  SetNavButtons;
end;

procedure TfmPublishing.SetNavButtons;
begin
    sbFirst.Enabled:=not(dmBooks.IsFirstPublishing);
     sbNext.Enabled:=not(dmBooks.IsLastPublishing);
     sbPrev.Enabled:=not(dmBooks.IsFirstPublishing);
     sbLast.Enabled:=not(dmBooks.IsLastPublishing);
     sbEdit.Enabled:=true;
     sbInsert.Enabled:=true;
     sbDElete.Enabled:=true;
end;

function TfmPublishing.CanChange: Boolean;
begin
    Result:=FormMode=fmBrowse;
end;


procedure TfmPublishing.sbDeleteClick(Sender: TObject);
begin
//  inherited;
    with dmbooks do
    begin
      if messagedlg('Удалить Издательство "'+qPublishing.FieldByName('name').Asstring+'"?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_Publishing.ParamByName('IPUBLISHING_ID').AsInteger:=qPublishing.fieldByName('code_publishing').AsInteger;
        spDelete_Publishing.ExecProc;
        showmessage('Издательство '+qPublishing.FieldByName('name').AsString+' удалёно!');
      end;
    end;
end;

procedure TfmPublishing.bReleseClick(Sender: TObject);
var s:string;
ds:Tdatasource;
begin
  inherited;
  with dmBooks do
  begin
   qRelese.Close;
   qRelese.DataSource:=dsPublishing;
   s:=qRelese.SQL.Text;
   qBooks.SQL.Add('where code_publishing=:code_publishing');
   ds:=fmlike.grid.DataSource;
   fmlike.grid.DataSource:=dsRelese;
   qRelese.Open;
   fmlike.showmodal;
   qRelese.SQL.Text:=s;
   fmlike.grid.DataSource:=ds;
  end;

end;

end.
