unit unRelese;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unDBNavStatForm, ImgList, Menus, ComCtrls, ToolWin, StdCtrls,
  dblookup, Mask, DBCtrls,
  unDMBooks,
  unDBModeForm, ExtCtrls;

type
  TfmRelese = class(TDbNavStatForm)
    pnlMain: TPanel;
    dbeCodePatry: TDBEdit;
    lbNameBooks: TLabel;
    dbeQuantity: TDBEdit;
    lbQuantityCopies: TLabel;
    lbCodePublishing: TLabel;
    lbCodeParty: TLabel;
    lbDateRelese: TLabel;
    dbeDateRelese: TDBEdit;
    DBECode_book: TDBEdit;
    DBECode_publ: TDBEdit;
    procedure sbAcceptClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
  private
    { Private declarations }
       procedure SetNavButtons;
  public
    { Public declarations }
       function CanChange:Boolean;

  end;

var
  fmRelese: TfmRelese;

implementation



{$R *.dfm}

procedure TfmRelese.sbAcceptClick(Sender: TObject);
begin
  inherited;
  dmBooks.AcceptRelese;
   dmBooks.qRelese.Close;
   dmBooks.qRelese.Open;

  SetNavButtons;
end;

procedure TfmRelese.sbCancelClick(Sender: TObject);
begin
  inherited;
  dmBooks.CancelRelese;
  SetNavButtons;
end;

procedure TfmRelese.sbInsertClick(Sender: TObject);
begin
  inherited;
  dmBooks.NewRelese;
end;

procedure TfmRelese.sbEditClick(Sender: TObject);
begin
  inherited;
  dmBooks.EditRelese;
end;

procedure TfmRelese.sbBrowseClick(Sender: TObject);
begin
  inherited;
  if not (FormMode=fmBrowse) then
  dmBooks.CancelRelese;
end;

procedure TfmRelese.sbFirstClick(Sender: TObject);
begin
  inherited;
  dmBooks.FirstRelese;
  SetNavButtons;
end;

procedure TfmRelese.sbNextClick(Sender: TObject);
begin
  inherited;
  dmBooks.NextRelese;
  SetNavButtons;
end;

procedure TfmRelese.sbPrevClick(Sender: TObject);
begin
  inherited;
  dmBooks.PriorRelese;
  SetNavButtons;
end;

procedure TfmRelese.sbLastClick(Sender: TObject);
begin
  inherited;
  dmBooks.LastRelese;
  SetNavButtons;
end;

procedure TfmRelese.SetNavButtons;
begin
     sbFirst.Enabled:=not(dmBooks.IsFirstRelese);
     sbNext.Enabled:=not(dmBooks.IsLastRelese);
     sbPrev.Enabled:=not(dmBooks.IsFirstRelese);
     sbLast.Enabled:=not(dmBooks.IsLastRelese);

     sbEdit.Enabled:=true;
     sbInsert.Enabled:=true;
     sbDElete.Enabled:=true;

end;

function TfmRelese.CanChange: Boolean;
begin
     Result:=FormMode=fmBrowse;
end;


procedure TfmRelese.sbDeleteClick(Sender: TObject);
begin
  inherited;
    with dmbooks do
    begin
      if messagedlg('������� ������ "'+intToStr(qRelese.FieldByName('CODE_RELESE').AsInteger)+'"?',
       mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        Spdelete_Relese.ParamByName('IRELESE_ID').AsInteger:=qRelese.fieldByName('code_relese').AsInteger;
        Spdelete_Relese.ExecProc;
        showmessage('������ '+intToStr(qRelese.FieldByName('code_relese').AsInteger)+' �����!');
      end;
    end;

end;

end.
