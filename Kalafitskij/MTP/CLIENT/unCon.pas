unit unCon;

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
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 function GetLoginParams:Boolean;
var
  frmConnect: TfrmConnect;

implementation
uses unDM, unMain;
{$R *.dfm}
  function GetLoginParams: Boolean;
var
  fmLogin: TfrmConnect;
begin
  Result := False;
  fmLogin := TfrmConnect.Create(Application);
  try
  if fmLogin.ShowModal = mrOk then
    begin
      with dm.database do
      begin
            Params.Clear;
            Params.Add('USER NAME='+fmLogin.Euser.Text);
            Params.Add('PASSWORD='+fmLogin.EPass.Text);
            Params.Add('SERVER NAME='+fmLogin.ePath.Text);
            Open;
            dm.qryFiles.Open;
            dm.qryComps.Open;
            dm.qryTypes.Open;
            DM.qryUsers.Open;
      end;
{      ALoginParams.Values['USER NAME'] := fmLogin.edtName.Text;
      ALoginParams.Values['PASSWORD'] := fmLogin.edtPassWord.Text;}
      Result := True;
    end;
  finally
    fmLogin.Free;
  end;
end;

procedure TfrmConnect.btnCancelClick(Sender: TObject);
begin
  close;
end;

end.
