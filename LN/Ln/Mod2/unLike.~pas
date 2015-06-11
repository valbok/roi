unit unLike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfmLike = class(TForm)
    pnlMain: TPanel;
    edtAuthor: TEdit;
    Label1: TLabel;
    grid: TDBGrid;
    btnView: TBitBtn;
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLike: TfmLike;

implementation
uses unDMBooks;
{$R *.dfm}

procedure TfmLike.btnViewClick(Sender: TObject);
begin
 dmBooks.qAuthors_.close;
 dmBooks.qAuthors_.ParamByName('ISTROKA').AsString:=edtAuthor.text;
 dmBooks.qAuthors_.Open;
end;

end.
