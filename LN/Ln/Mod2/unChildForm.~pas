unit unChildForm;

interface

uses
  Windows, Messages, QMenus,SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TChildForm = class(TForm)
  private
        FAsChild : Boolean;
        FTempParent:TWinControl;
        procedure CreateParams(var Params: TCreateParams); override;
        procedure Loaded; override;
    { Private declarations }
  public
     { Public declarations }
        Constructor Create(AOwner: TComponent); overload; override;
        Constructor Create(AOwner: Tcomponent; Aparent: TWinControl);overload;
        function GetFormMenu: TMainMenu; virtual; abstract;
        function CanChange: Boolean; virtual;
        end;

var
  ChildForm: TChildForm;

implementation

{$R *.dfm}

{ TChildForm }

constructor TChildForm.Create(AOwner: TComponent);
    Begin
         FAsChild:=False;
         Inherited
            Create(AOwner); 
    End;

function TChildForm.CanChange: Boolean;
begin
  Result := True;
end;

constructor TChildForm.Create(AOwner: Tcomponent; Aparent: TWinControl);
begin
  FAsChild := True;
  FTempParent := aParent;
  inherited Create(AOwner);
end;
procedure TChildForm.CreateParams(var Params: TCreateParams);
Begin
  Inherited
     CreateParams(Params);
     if FAsChild then
        Params.Style := Params.Style or WS_CHILD;
end;

procedure TChildForm.Loaded;
begin
  inherited;
  if FAsChild then
  begin
    align := alClient;
    BorderStyle := bsNone;
    BorderIcons := [];
    Parent := FTempParent;
    Position := poDefault;
  end;
end;

end.
