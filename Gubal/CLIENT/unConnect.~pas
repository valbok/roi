unit unConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmConnect = class(TForm)
    pnlMain: TPanel;
    pnlMain2: TPanel;
    lblPath: TLabel;
    ePath: TEdit;
    eUser: TEdit;
    ePass: TEdit;
    lbluser: TLabel;
    lblPass: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConnect: TfrmConnect;

implementation
uses unDM, unMain;
{$R *.dfm}

procedure TfrmConnect.btnOkClick(Sender: TObject);
begin
with dm do
  try
      Db.Params.Clear;
      Db.Params.Add('USER NAME='+eUSer.Text);
      Db.Params.Add('PASSWORD='+ePass.Text);
      Db.Params.Add('SERVER NAME='+ePath.Text);
      Db.Connected:=true;
//      qPotrebitels.Open;
   finally
    close;
end;
end;

procedure TfrmConnect.btnCancelClick(Sender: TObject);
begin
  close;
end;

end.
