unit unDBModeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  unChildForm;

type
  TFormMode = (fmBrowse, fmInsert, fmEdit);

  TDBModeForm = class(TChildForm)

  private
    { Private declarations }
        FFormMode: TFormMode;
        FOnSetFormMode :TNotifyEvent;
        Function GetFormMode:TFormMode;

  published
         property OnSetFormMode: TNotifyEvent read FOnSetFormMode write FOnSetFormMode;
         Procedure SetFormMode(AValue:TFormMode); virtual;

  public
    { Public declarations }
        property FormMode: TFormMode read GetFormMode write SetFormMode;
  end;

var
  DBModeForm: TDBModeForm;

implementation

{$R *.dfm}

{ TDBModeForm }

function TDBModeForm.GetFormMode: TFormMode;
begin
     Result:=FFormMode;
end;

procedure TDBModeForm.SetFormMode(AValue: TFormMode);
begin
  FFormMode := AValue;
  if Assigned(FOnSetFormMode) then
    FOnSetFormMode(self);
end;

end.
