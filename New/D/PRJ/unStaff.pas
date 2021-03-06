unit unStaff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmStaff = class(TDbNavStatForm)
    dbeStaff_Id: TDBEdit;
    dbeLastName: TDBEdit;
    dbeFirstName: TDBEdit;
    dbeBirth_Date: TDBEdit;
    dblcbTeam_Id: TDBLookupComboBox;
    dblcbPost_Id: TDBLookupComboBox;
    lbStaff_Id: TLabel;
    lbLastName: TLabel;
    lbFirstName: TLabel;
    lbBirth_Date: TLabel;
    lbTeam_Id: TLabel;
    lbPost_Id: TLabel;
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure sbAcceptClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
  private
    { Private declarations }
      procedure SetNavButtons;
  public
    { Public declarations }
    function CanChange:Boolean; override;
    function GetFormMenu:TMainMenu;
  end;

var
  fmStaff: TfmStaff;

implementation

{$R *.dfm}

procedure TfmStaff.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstStaff;
  SetNavButtons;
end;

procedure TfmStaff.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastStaff;
  SetNavButtons;
end;

procedure TfmStaff.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorStaff;
  SetNavButtons;
end;

procedure TfmStaff.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelStaff;
  SetNavButtons;
end;

procedure TfmStaff.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelStaff;
end;

procedure TfmStaff.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptStaff;
  SetNavButtons;
end;

procedure TfmStaff.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditStaff;
end;

procedure TfmStaff.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewStaff;
end;

procedure TfmStaff.sbDeleteClick(Sender: TObject);
begin
  inherited;
  FootbDM.DeleteStaff;
end;

procedure TfmStaff.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextStaff;
  SetNavButtons;

end;

function TfmStaff.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmStaff.GetFormMenu: TMainMenu;
begin

end;

procedure TfmStaff.SetNavButtons;
begin
        sbFirst.Enabled:=not(FootbDM.IsFirstStaff);
        sbNext.Enabled:=not(FootbDM.IsLastStaff);
        sbPrev.Enabled:=not(FootbDM.IsFirstStaff);
        sbLast.Enabled:=not(FootbDM.IsLastStaff);
        sbInsert.Enabled:=true;
        sbBrowse.Enabled:=true;
        sbEdit.Enabled:=true;
end;

end.
