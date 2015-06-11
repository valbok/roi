unit unManeger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Menus;

type
  TfrmManeger = class(TForm)
    pnlMain: TPanel;
    gridMain: TDBGrid;
    DBNavMain: TDBNavigator;
    pnlTop: TPanel;
    PageControl: TPageControl;
    tsPotrebiteli: TTabSheet;
    tsTovari: TTabSheet;
    tsNakladnie: TTabSheet;
    tsPostavka: TTabSheet;
    pmManeger: TPopupMenu;
    miDelete: TMenuItem;
    miRefresh: TMenuItem;
    MainMenu: TMainMenu;
    miService: TMenuItem;
    miSave: TMenuItem;
    miCancel: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManeger: TfrmManeger;

implementation
uses unDm;
{$R *.dfm}


end.
