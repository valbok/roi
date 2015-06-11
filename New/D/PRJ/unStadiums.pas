unit unStadiums;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ImgList, Menus, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmStadiums = class(TDbNavStatForm)
    dbeStadium_Id: TDBEdit;
    dbeStadium: TDBEdit;
    dblucbCountry_Id: TDBLookupComboBox;
    lbStadium_Id: TLabel;
    lbStadium: TLabel;
    lbCountry_id: TLabel;
    dbeMark: TDBEdit;
    lbMark: TLabel;
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
  fmStadiums: TfmStadiums;

implementation

{$R *.dfm}

procedure TfmStadiums.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelStadiums;
end;

procedure TfmStadiums.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptStadiums;
  SetNavButtons;
end;

procedure TfmStadiums.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditStadiums;
end;

procedure TfmStadiums.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewStadiums;
end;

function TfmStadiums.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmStadiums.GetFormMenu: TMainMenu;
begin

end;

procedure TfmStadiums.SetNavButtons;
begin
  sbFirst.Enabled:=not(FootbDM.IsFirstStadiums);
  sbNext.Enabled:=not(FootbDM.IsLastStadiums);
  sbPrev.Enabled:=not(FootbDM.IsFirstStadiums);
  sbLast.Enabled:=not(FootbDM.IsLastStadiums);
  sbInsert.Enabled:=true;
  sbBrowse.Enabled:=true;
  sbEdit.Enabled:=true;
end;

end.
