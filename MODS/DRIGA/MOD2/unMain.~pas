unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, DBCtrls;

type
  TfrmMain = class(TForm)
    procedure miDisconnectClick(Sender: TObject);



  private
    { Private declarations }


  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation
uses unDM;
{$R *.dfm}
procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
   dm.Database.Connected:=false;
end;



end.
