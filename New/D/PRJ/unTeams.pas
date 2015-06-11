unit unTeams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ComCtrls, ToolWin, DBCtrls, StdCtrls, Mask,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmTeams = class(TDbNavStatForm)
    dbeTeam_ID: TDBEdit;
    dbeTeam: TDBEdit;
    dblucbCity_ID: TDBLookupComboBox;
    dblucbCountries: TDBLookupComboBox;
    lbTeam: TLabel;
    lbCity: TLabel;
    lbCountry: TLabel;
    dblucbStadiums: TDBLookupComboBox;
    lbStadium: TLabel;
    lbTeam_Id: TLabel;
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
  fmTeams: TfmTeams;

implementation

{$R *.dfm}

procedure TfmTeams.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelTeams;
end;

procedure TfmTeams.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptTeams;
  SetNavButtons;
end;

procedure TfmTeams.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditTeams;
end;

procedure TfmTeams.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewTeams;
end;

function TfmTeams.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmTeams.GetFormMenu: TMainMenu;
begin

end;

procedure TfmTeams.SetNavButtons;
begin
        sbFirst.Enabled:=not(FootbDM.IsFirstTeams);
        sbNext.Enabled:=not(FootbDM.IsLastTeams);
        sbPrev.Enabled:=not(FootbDM.IsFirstTeams);
        sbLast.Enabled:=not(FootbDM.IsLastTeams);
        sbInsert.Enabled:=true;
        sbBrowse.Enabled:=true;
        sbEdit.Enabled:=true;
end;

end.
