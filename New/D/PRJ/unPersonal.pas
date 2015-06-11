unit unPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Menus;

type
  TfmPersonal = class(TForm)
    mmPersonal: TMainMenu;
    Exit1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label3: TLabel;
    dbedPr: TDBEdit;
    Label4: TLabel;
    dbedTr: TDBEdit;
    Label5: TLabel;
    dbedpTr: TDBEdit;
    Label6: TLabel;
    dbedDoct: TDBEdit;
    dbedMass: TDBEdit;
    Label7: TLabel;
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPersonal: TfmPersonal;

implementation

{$R *.dfm}

procedure TfmPersonal.Exit1Click(Sender: TObject);
begin
Close;
end;

end.
