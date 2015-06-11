unit unLogin;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls,DBTables;

type
  TFLogin = class(TForm)
    LblPassword: TLabel;
    LblName: TLabel;
    EdtName: TEdit;
    EdtPassword: TEdit;
    BtnOK: TButton;
    BtnCancel: TButton;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
     function GetLoginParams(var ALoginParams: TStrings; var db: TDatabase): Boolean;


implementation

uses Windows;

{$R *.dfm}
function GetLoginParams(var ALoginParams: TStrings; var db: TDatabase): Boolean;
 var
  FLogin:TFLogin;
  begin
  Result:=false;
  FLogin:=TFLogin.Create(Application);
  try
  if FLogin.ShowModal=mrOK then
  begin
    db.Params.Values['USER NAME']:=FLogin.EdtName.Text;
    db.Params.Values['PASSWORD']:=FLogin.EdtPassword.Text;
    Result:=True;
  end ;

  finally
  FLogin.Free;
  end;
  end;
procedure TFLogin.BtnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;


procedure TFLogin.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
