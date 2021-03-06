unit unPlayers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmPlayers = class(TDbNavStatForm)
    dbePlayer_Id: TDBEdit;
    dbeLastName: TDBEdit;
    dbeFirstName: TDBEdit;
    dbeBirth_Date: TDBEdit;
    dbeHeight: TDBEdit;
    dbeWeight: TDBEdit;
    dbeAmplua: TDBEdit;
    dbeNumber: TDBEdit;
    dblcbTeam_Id: TDBLookupComboBox;
    lbPlayer_Id: TLabel;
    lbLastName: TLabel;
    lbFirstName: TLabel;
    lbBirth_Date: TLabel;
    lbBirth_Place: TLabel;
    dblcbBirthPlace: TDBLookupComboBox;
    lbHeight: TLabel;
    lbWeight: TLabel;
    lbAmplua: TLabel;
    lbNumber: TLabel;
    Label6: TLabel;
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
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
  fmPlayers: TfmPlayers;

implementation

{$R *.dfm}

procedure TfmPlayers.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptPlayers;
  SetNavButtons;
end;

procedure TfmPlayers.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditPlayers;
end;

procedure TfmPlayers.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewPlayers;
end;

function TfmPlayers.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmPlayers.GetFormMenu: TMainMenu;
begin

end;

procedure TfmPlayers.SetNavButtons;
begin
      sbFirst.Enabled:=not(FootbDM.IsFirstPlayers);
      sbNext.Enabled:=not(FootbDM.IsLastPlayers);
      sbPrev.Enabled:=not(FootbDM.IsFirstPlayers);
      sbLast.Enabled:=not(FootbDM.IsLastPlayers);
      sbInsert.Enabled:=true;
      sbBrowse.Enabled:=true;
      sbEdit.Enabled:=true;

end;

end.
