unit unCountries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls,db,
  unDMBooks, dblookup,
  unDBModeForm, ExtCtrls, Buttons;

type
  TfmCountries = class(TDbNavStatForm)
    pnlMain: TPanel;
    lbCodeCountries: TLabel;
    dbeCodeCountries: TDBEdit;
    lbNameCountries: TLabel;
    dbeNameCountries: TDBEdit;
    bA: TBitBtn;
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
    procedure bAClick(Sender: TObject);
  private
    { Private declarations }
      procedure SetNavButtons;
  public
    { Public declarations }
     function CanChange:Boolean;

  end;

var
  fmCountries: TfmCountries;

implementation

uses unLike;

{$R *.dfm}

{ TfmCountries }

function TfmCountries.CanChange: Boolean;
begin
    Result:=FormMode=fmBrowse;
end;



procedure TfmCountries.sbAcceptClick(Sender: TObject);
begin
   inherited;
   dmBooks.AcceptCountries;
   dmBooks.qCountries.Close;
   dmBooks.qCountries.Open;
   SetNavButtons;   
end;

procedure TfmCountries.sbBrowseClick(Sender: TObject);
begin
   inherited;
     if not (FormMode=fmBrowse) then
  dmBooks.CancelCountries;
end;

procedure TfmCountries.sbCancelClick(Sender: TObject);
begin
     inherited;
  dmBooks.CancelCountries;
  SetNavButtons;
end;

procedure TfmCountries.sbEditClick(Sender: TObject);
begin
      inherited;
     dmBooks.EditCountries;
end;

procedure TfmCountries.sbFirstClick(Sender: TObject);
begin
    inherited;
    dmBooks.FirstCountries;
  SetNavButtons;
end;

procedure TfmCountries.sbInsertClick(Sender: TObject);
begin
    inherited;
    dmBooks.NewCountries;
end;

procedure TfmCountries.sbLastClick(Sender: TObject);
begin
     inherited;
    dmBooks.LastCountries;
  SetNavButtons;
end;

procedure TfmCountries.sbNextClick(Sender: TObject);
begin
   inherited;
    dmBooks.NextCountries;
  SetNavButtons;
end;

procedure TfmCountries.sbPrevClick(Sender: TObject);
begin
     inherited;
     dmBooks.PriorCountries;
     SetNavButtons;
end;

procedure TfmCountries.SetNavButtons;
begin
     sbFirst.visible:=not(dmBooks.IsFirstCountries);
     sbNext.visible:=not(dmBooks.IsLastCountries);
     sbPrev.visible:=not(dmBooks.IsFirstCountries);
     sbLast.visible:=not(dmBooks.IsLastCountries);
     sbEdit.Enabled:=true;
     sbDElete.Enabled:=true;
     sbInsert.Enabled:=true;          
end;

procedure TfmCountries.sbDeleteClick(Sender: TObject);
begin
  inherited;
    with dmbooks do
    begin
      if messagedlg('Удалить Страну "'+qCountries.FieldByName('name').AsString+'`?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        spDelete_Country.ParamByName('ICOUNTRY_ID').AsInteger:=qCountries.fieldByName('code_countries').AsInteger;
        spDelete_Country.ExecProc;
        showmessage('Страна '+qCountries.FieldByName('name').AsString+' удалёна!');
      end;
    end;

end;

procedure TfmCountries.bAClick(Sender: TObject);
var s:string;
ds:Tdatasource;
begin
  inherited;
  with dmBooks do
  begin
   qAuthors.Close;
   qAuthors.DataSource:=dsCountries;
   s:=qAuthors.SQL.Text;
   qAuthors.SQL.Add('where code_countries=:code_countries');
   ds:=fmlike.grid.DataSource;
   fmlike.grid.DataSource:=dsAuthors;
   qAuthors.Open;
   fmlike.showmodal;
   qAuthors.SQL.Text:=s;
   fmlike.grid.DataSource:=ds;
  end;
end;

end.
