unit unTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmTransfer = class(TDbNavStatForm)
    dbeTransfer_Id: TDBEdit;
    dblcbPlayer_Id: TDBLookupComboBox;
    dblcbFrom: TDBLookupComboBox;
    dblcbTo: TDBLookupComboBox;
    dbeTransfer_Date: TDBEdit;
    dbeTerm: TDBEdit;
    dbePrice: TDBEdit;
    lbTransfer_Id: TLabel;
    lbPlayer_Id: TLabel;
    lbFrom_Team: TLabel;
    lbTo_Team: TLabel;
    lbTransfer_Date: TLabel;
    lbTerm: TLabel;
    lbPrice: TLabel;
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure sbAcceptClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
     procedure SetNavButtons;
  public
    { Public declarations }
    function CanChange:Boolean; override;
    function GetFormMenu:TMainMenu;
  end;

var
  fmTransfer: TfmTransfer;

implementation

{$R *.dfm}

procedure TfmTransfer.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelTransfer;
end;

procedure TfmTransfer.sbAcceptClick(Sender: TObject);
begin
  inherited;
  FootbDM.AcceptTransfer;
  SetNavButtons;
end;

procedure TfmTransfer.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditTransfer;
end;

procedure TfmTransfer.sbDeleteClick(Sender: TObject);
begin
  inherited;
  FootbDM.DeleteTransfer;
end;

procedure TfmTransfer.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewTransfer;
  SetNavButtons;
end;

function TfmTransfer.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmTransfer.GetFormMenu: TMainMenu;
begin

end;

procedure TfmTransfer.SetNavButtons;
begin
        sbFirst.Enabled:=not(FootbDM.IsFirstTransfer);
        sbNext.Enabled:=not(FootbDM.IsLastTransfer);
        sbPrev.Enabled:=not(FootbDM.IsFirstTransfer);
        sbLast.Enabled:=not(FootbDM.IsLastTransfer);
        sbInsert.Enabled:=true;
        sbBrowse.Enabled:=true;
        sbEdit.Enabled:=true;

end;

procedure TfmTransfer.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
