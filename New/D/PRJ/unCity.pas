unit unCity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ImgList, Menus, ComCtrls, ToolWin,StdCtrls, Mask, DBCtrls,
  unDMFootb,unDBModeForm, unDBNavStatForm;

type
  TfmCity = class(TDbNavStatForm)
    dbeCity_ID: TDBEdit;
    dbeCITY: TDBEdit;
    lbCity: TLabel;
    lbCity_Id: TLabel;
    procedure sbAcceptClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
   { procedure sbFindClick(Sender: TObject);}
    procedure sbEditClick(Sender: TObject);
   { procedure sbDeleteClick(Sender: TObject);}
    procedure sbInsertClick(Sender: TObject);
  
    { Private declarations }
    procedure SetNavButtons;
  public
    { Public declarations }
    function CanChange:Boolean; override;
    function GetFormMenu:TMainMenu;
  end;

var
  fmCity: TfmCity;

implementation

{$R *.dfm}

procedure TfmCity.sbAcceptClick(Sender: TObject);
begin
  inherited;
   FootbDM.AcceptCities;
   SetNavButtons;

end;

procedure TfmCity.sbFirstClick(Sender: TObject);
begin
  inherited;
  FootbDM.FirstCities;
  SetNavButtons;
end;

procedure TfmCity.sbLastClick(Sender: TObject);
begin
  inherited;
  FootbDM.LastCities;
  SetNavButtons;
end;

procedure TfmCity.sbNextClick(Sender: TObject);
begin
  inherited;
  FootbDM.NextCities;
  SetNavButtons;
end;

procedure TfmCity.sbPrevClick(Sender: TObject);
begin
  inherited;
  FootbDM.PriorCities;
  SetNavButtons;
end;

procedure TfmCity.sbCancelClick(Sender: TObject);
begin
  inherited;
   FootbDM.CancelCities;
   SetNavButtons;
end;

procedure TfmCity.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  FootbDM.CancelCities;
   SetNavButtons;  
end;

{procedure TfmCity.sbFindClick(Sender: TObject);
begin
  inherited;
  FootbDM.FindCities;
end;}

procedure TfmCity.sbEditClick(Sender: TObject);
begin
  inherited;
  FootbDM.EditCities;
end;

{procedure TfmCity.sbDeleteClick(Sender: TObject);
begin
  inherited;
  FootbDM.DeleteCities;
end; }

procedure TfmCity.sbInsertClick(Sender: TObject);
begin
  inherited;
   FootbDM.NewCities;
   
end;

function TfmCity.CanChange: Boolean;
begin
Result:=FormMode=fmBrowse;
end;

function TfmCity.GetFormMenu: TMainMenu;
begin

end;

procedure TfmCity.SetNavButtons;
begin
  sbFirst.Enabled:=not(FootbDM.IsFirstCities);
  sbNext.Enabled:=not(FootbDM.IsLastCities);
  sbPrev.Enabled:=not(FootbDM.IsFirstCities);
  sbLast.Enabled:=not(FootbDM.IsLastCities);
  sbInsert.Enabled:=true;
  sbBrowse.Enabled:=true;
  sbEdit.Enabled:=true;
end;



end.
