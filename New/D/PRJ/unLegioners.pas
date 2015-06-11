unit unLegioners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TfmLegioners = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    gTeams: TDBGrid;
    gPlayers: TDBGrid;
    dbeCountp: TDBEdit;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLegioners: TfmLegioners;

implementation
uses unDmFootB;
{$R *.dfm}

end.
