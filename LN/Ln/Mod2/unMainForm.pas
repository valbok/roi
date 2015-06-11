unit unMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unBooks,unAuthors,unCountries,unRelese,unPublishing,unGenres,
  Menus, ComCtrls, StdCtrls, ExtCtrls,unChildForm;

type

  TActiveScreenType=(asGenres,asPublishing,asAuthors,asRelese,asCountries,asBooks);

  TfmMainForm = class(TForm)
    mmMainMenu: TMainMenu;
    mmiScreen: TMenuItem;
    mmiAuthors: TMenuItem;
    mmiBooks: TMenuItem;
    mmiCountries: TMenuItem;
    mmiGenres: TMenuItem;
    mmiPublishing: TMenuItem;
    mmiRelease: TMenuItem;
    mmiUser: TMenuItem;
    mmiLogin: TMenuItem;
    mmiLogout: TMenuItem;
    mmiFile: TMenuItem;
    mmiExit: TMenuItem;
    bAuthors: TButton;
    bGenres: TButton;
    bPublishing: TButton;
    bRelese: TButton;
    bCountries: TButton;
    bBooks: TButton;
    pnlMain: TPanel;
    mmiLike: TMenuItem;

    procedure mmiBooksClick(Sender: TObject);
    procedure mmiCountriesClick(Sender: TObject);
    procedure mmiGenresClick(Sender: TObject);
    procedure mmiPublishingClick(Sender: TObject);
    procedure mmiReleaseClick(Sender: TObject);
    procedure mmiExitClick(Sender: TObject);
    procedure bGenresClick(Sender: TObject);
    procedure bPublishingClick(Sender: TObject);
    procedure bReleseClick(Sender: TObject);
    procedure bCountriesClick(Sender: TObject);
    procedure bBooksClick(Sender: TObject);
    procedure mmiLoginClick(Sender: TObject);
    procedure bAuthorsClick(Sender: TObject);
    procedure mmiAuthorsClick(Sender: TObject);
    procedure mmiLikeClick(Sender: TObject);
    procedure mmiLogoutClick(Sender: TObject);
//    procedure Login1Click(Sender: TObject);



  private
  ActiveScreenType:TActiveScreenType;
  ActiveScreen:TChildForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainForm: TfmMainForm;

implementation

uses unLogin, unDMBooks, unLike;
  
{$R *.dfm}



procedure TfmMainForm.mmiBooksClick(Sender: TObject);
begin
  bBooks.Click;
end;

procedure TfmMainForm.mmiCountriesClick(Sender: TObject);
begin
   bCountries.Click;
end;

procedure TfmMainForm.mmiGenresClick(Sender: TObject);
begin
   bGenres.click;
end;

procedure TfmMainForm.mmiPublishingClick(Sender: TObject);
begin
    bPublishing.click;
end;

procedure TfmMainForm.mmiReleaseClick(Sender: TObject);
begin
  bRelese.click;
end;

procedure TfmMainForm.mmiExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMainForm.bGenresClick(Sender: TObject);
begin
if not dmBooks.qGenres.active
   then dmBooks.qGenres.Open;

    fmGenres.Show;
end;

procedure TfmMainForm.bPublishingClick(Sender: TObject);
begin
if not dmBooks.qPublishing.active
   then dmBooks.qPublishing.Open;

   fmPublishing.Show;
end;

procedure TfmMainForm.bReleseClick(Sender: TObject);
begin
if not dmBooks.qRelese.active
   then dmBooks.qRelese.Open;

    fmRelese.Show;
end;

procedure TfmMainForm.bCountriesClick(Sender: TObject);
begin
if not dmBooks.qCountries.active
   then dmBooks.qCountries.Open;

  fmCountries.Show;
end;

procedure TfmMainForm.bBooksClick(Sender: TObject);
begin
if not dmBooks.qBooks.active
   then dmBooks.qBooks.Open;
   fmBooks.Show;
end;
procedure TfmMainForm.mmiLoginClick(Sender: TObject);
var st:TStrings;
begin

st:=TStrings.Create;

GetLoginParams(st);
//  fmLogin.show;
end;

procedure TfmMainForm.bAuthorsClick(Sender: TObject);
begin
if not dmBooks.qAuthors.active
   then dmBooks.qAuthors.Open;
if not dmBooks.qCountries.active
   then dmBooks.qCountries.Open;

  fmAuthors.Show;

end;

procedure TfmMainForm.mmiAuthorsClick(Sender: TObject);
begin
  bAuthors.Click;
end;

procedure TfmMainForm.mmiLikeClick(Sender: TObject);
begin
  fmLike.show;
end;

procedure TfmMainForm.mmiLogoutClick(Sender: TObject);
begin
  dmbooks.logOUT;
end;

end.



