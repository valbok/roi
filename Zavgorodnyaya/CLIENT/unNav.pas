unit unNav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls,DBTables;

type
  TfrmNav = class(TForm)
    pnlTopF: TPanel;
    sbNew: TSpeedButton;
    sbDElete: TSpeedButton;
    sbPrior: TSpeedButton;
    sbApply: TSpeedButton;
    sbCancel: TSpeedButton;
    sbEdit: TSpeedButton;
    sbFirst: TSpeedButton;
    sbNext: TSpeedButton;
    sbLast: TSpeedButton;
    sbRefresh: TSpeedButton;
    procedure sbFirstClick(Sender: TObject); virtual; abstract;
    procedure sbPriorClick(Sender: TObject); virtual;abstract;
    procedure sbNextClick(Sender: TObject);virtual;abstract;
    procedure sbLastClick(Sender: TObject);virtual;abstract;
    procedure sbEditClick(Sender: TObject); virtual;abstract;
    procedure sbApplyClick(Sender: TObject); virtual; abstract;
    procedure sbCancelClick(Sender: TObject);  virtual;abstract;
    procedure sbRefreshClick(Sender: TObject);virtual; abstract;
    procedure sbDEleteClick(Sender: TObject); virtual; abstract;
    procedure sbNewClick(Sender: TObject);  virtual;abstract;
    procedure setNav(qry:Tquery);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNav: TfrmNav;

implementation

uses unDM;

{$R *.dfm}
procedure Tfrmnav.setNav(qry:Tquery);
begin
with dm do
begin
  sbFirst.Enabled := not isBOF(qry);
  sbLast.Enabled  := not isEOF(qry);
  sbPrior.Enabled  := not isBOF(qry);
  sbNext.Enabled  := not isEOF(qry);
end;
end;
end.
