unit unPosts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmPosts = class(TDbNavStatForm)
    dbePost_ID: TDBEdit;
    dbePost: TDBEdit;
    lbPost_Id: TLabel;
    lbPost: TLabel;
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure sbAcceptClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
  private
    { Private declarations }
     procedure SetNavButtons;
  public
    { Public declarations }
    function CanChange:Boolean; override;
    function GetFormMenu:TMainMenu;
  end;

var
  fmPosts: TfmPosts;

implementation

{$R *.dfm}

procedure TfmPosts.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelCities;
end;

procedure TfmPosts.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptPosts;
  SetNavButtons;
end;

procedure TfmPosts.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditPosts;
end;

procedure TfmPosts.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewPosts;
end;

function TfmPosts.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmPosts.GetFormMenu: TMainMenu;
begin

end;

procedure TfmPosts.SetNavButtons;
begin
      sbFirst.Enabled:=not(FootbDM.IsFirstPosts);
      sbNext.Enabled:=not(FootbDM.IsLastPosts);
      sbPrev.Enabled:=not(FootbDM.IsFirstPosts);
      sbLast.Enabled:=not(FootbDM.IsLastPosts);
      sbInsert.Enabled:=true;
      sbBrowse.Enabled:=true;
      sbEdit.Enabled:=true;

end;

end.
