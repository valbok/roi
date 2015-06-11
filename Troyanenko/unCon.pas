unit unCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmCon = class(TForm)
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
  frmCon: TfrmCon;

implementation
uses unDM, unMain;
{$R *.dfm}

procedure TfrmCon.btnOkClick(Sender: TObject);
begin
with dm do
  try
      Database.Params.Clear;
      Database.Params.Add('USER NAME='+eUSer.Text);
      Database.Params.Add('PASSWORD='+ePass.Text);
      Database.Params.Add('SERVER NAME='+ePath.Text);
//      frmmain.pathTodb:=ePath.Text;
      database.Open;
  finally
    close;
end;
end;

procedure TfrmCon.btnCancelClick(Sender: TObject);
begin
  close;
end;

end.
