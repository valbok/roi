unit unCountries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ImgList, Menus,ComCtrls, ToolWin,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmCountry = class(TDbNavStatForm)
    dbeCountry_ID: TDBEdit;
    lbCountry_Id: TLabel;
    lbCountry: TLabel;
    dbeCountry: TDBEdit;
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
  fmCountry: TfmCountry;

implementation

{$R *.dfm}

procedure TfmCountry.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstCountries;
 SetNavButtons;
end;

procedure TfmCountry.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastCountries;
  SetNavButtons;
end;

procedure TfmCountry.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextCountries;
  SetNavButtons;
end;

procedure TfmCountry.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorCountries;
  SetNavButtons;
end;

procedure TfmCountry.sbCancelClick(Sender: TObject);
begin
  inherited;
  FootbDM.CancelCountries;
  SetNavButtons;
end;

procedure TfmCountry.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
   FootbDM.CancelCountries;
   SetNavButtons;
end;

procedure TfmCountry.sbAcceptClick(Sender: TObject);
begin
  inherited;
   FootbDM.AcceptCountries;
   SetNavButtons;
end;

procedure TfmCountry.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditCountries;
end;

procedure TfmCountry.sbInsertClick(Sender: TObject);
begin
  inherited;
  FootbDM.NewCountries;
end;

function TfmCountry.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmCountry.GetFormMenu: TMainMenu;
begin

end;

procedure TfmCountry.SetNavButtons;
begin
  sbFirst.Enabled:=not(FootbDM.IsFirstCountries);
  sbNext.Enabled:=not(FootbDM.IsLastCountries);
  sbPrev.Enabled:=not(FootbDM.IsFirstCountries);
  sbLast.Enabled:=not(FootbDM.IsLastCountries);
  sbInsert.Enabled:=true;
  sbBrowse.Enabled:=true;
  sbEdit.Enabled:=true;

end;

end.
