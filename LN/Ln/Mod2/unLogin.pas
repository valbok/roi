unit unLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtName: TEdit;
    edtPassWord: TEdit;
    Label2: TLabel;
    btnOk: TButton;
    Cencel: TButton;
    edtPAth: TEdit;
    Label3: TLabel;
    procedure CencelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
   function GetLoginParams(ALoginParams:TStrings ):Boolean;

var
  fmLogin: TfmLogin;

implementation

uses unDMBooks;

{$R *.dfm}
  function GetLoginParams(ALoginParams: TStrings): Boolean;
var
  fmLogin: TfmLogin;
begin
  Result := False;
  fmLogin := TfmLogin.Create(Application);
  try
  if fmLogin.ShowModal = mrOk then
    begin
      with dmBOOKS.dbbooks do
      begin
            Params.Clear;
            Params.Add('USER NAME='+fmLogin.edtName.Text);
            Params.Add('PASSWORD='+fmLogin.edtPassword.Text);
            Params.Add('SERVER NAME='+fmLogin.edtPath.Text);
            Open;
      end;
{      ALoginParams.Values['USER NAME'] := fmLogin.edtName.Text;
      ALoginParams.Values['PASSWORD'] := fmLogin.edtPassWord.Text;}
      Result := True;
    end;
  finally
    fmLogin.Free;
  end;
end;



procedure TfmLogin.CencelClick(Sender: TObject);
begin
  close;
end;

end.






