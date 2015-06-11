unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls,unDM, ToolWin,
  ImgList, Buttons,DBTables;

type
  TfrmMain = class(TForm)


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;
  cls:TSet;

implementation

{$R *.dfm}


initialization
  cls:=TSet.Create;

end.
