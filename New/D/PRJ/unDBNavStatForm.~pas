unit unDBNavStatForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  unDBModeForm, ImgList, ComCtrls, ToolWin, Menus, StdCtrls;

type
  TDbNavStatForm = class(TDBModeForm)
    tlbNavigationBar: TToolBar;
    sbAccept: TToolButton;
    sbCancel: TToolButton;
    sbDelete: TToolButton;
    sbEdit: TToolButton;
    sbInsert: TToolButton;
    sbBrowse: TToolButton;
    sbFirst: TToolButton;
    sbNext: TToolButton;
    sbPrev: TToolButton;
    sbLast: TToolButton;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Button1: TButton;
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbBrowseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
        procedure Setbuttons; virtual;
        procedure SetStatusBar; virtual;
        procedure SetFormMode(AValue: TFormMode); override;

  public
    { Public declarations }
        constructor Create(AOwner: TComponent);overload; override;
        constructor Create(AOwner: TComponent; AParent: TWinControl);overload;

        procedure Loaded; override;
        procedure SetToolBarParent(AParent: TWinControl);
        procedure SetStatusBarParent(AParent: TWinControl);
        procedure RefreshToolBar;
  end;

var
  DbNavStatForm: TDbNavStatForm;

implementation

{$R *.dfm}

procedure TDbNavStatForm.sbInsertClick(Sender: TObject);
begin
     FormMode:=fmInsert;
end;

procedure TDbNavStatForm.sbEditClick(Sender: TObject);
begin
     FormMode:=fmEdit;
end;


constructor TDbNavStatForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TDbNavStatForm.Create(AOwner: TComponent;
  AParent: TWinControl);
begin
  inherited Create(AOwner,AParent);
end;

procedure TDbNavStatForm.Loaded;
begin
  inherited Loaded;
end;

procedure TDbNavStatForm.RefreshToolBar;
begin
  tlbNavigationBar.Refresh;
end;

procedure TDbNavStatForm.SetStatusBarParent(AParent: TWinControl);
begin
  StatusBar1.Parent := AParent;
end;

procedure TDbNavStatForm.SetToolBarParent(AParent: TWinControl);
begin
  tlbNavigationBar.Parent := AParent;
end;

procedure TDbNavStatForm.Setbuttons;
  procedure SetBrowseButtons;
  begin
    sbAccept.Enabled  := False;
    sbCancel.Enabled  := False;
    sbInsert.Enabled  := True;
    sbDelete.Enabled  := True; 
    sbEdit.Enabled    := True;
   // sbFind.Enabled    := True;
    sbBrowse.Enabled  := True;
    sbFirst.Enabled   := True ;
    sbPrev.Enabled    := True ;
    sbNext.Enabled    := True ;
    sbLast.Enabled    := True ;
  end;
  procedure SetInsertButtons;
  begin
    sbAccept.Enabled  := True;
    sbCancel.Enabled  := True;
    sbInsert.Enabled  := False;
    sbDelete.Enabled  := False;
    sbEdit.Enabled    := False;
   // sbFind.Enabled    := False;
    sbBrowse.Enabled  := False;
    sbFirst.Enabled   := False;
    sbPrev.Enabled    := False;
    sbNext.Enabled    := False;
    sbLast.Enabled    := False;
  end;
  procedure SetEditButtons;
  begin
    sbAccept.Enabled  := True;
    sbCancel.Enabled  := True;
    sbInsert.Enabled  := False;
    sbDelete.Enabled  := False;
    sbEdit.Enabled    := False;
  //  sbFind.Enabled    := False;
    sbBrowse.Enabled  := True;
    sbFirst.Enabled   := False;
    sbPrev.Enabled    := False;
    sbNext.Enabled    := False;
    sbLast.Enabled    := False;
  end;
begin
  case FormMode of
    fmBrowse: SetBrowseButtons;
    fmInsert: SetInsertButtons;
    fmEdit:   SetEditButtons;
  end; { case }
end;

procedure TDbNavStatForm.SetFormMode(AValue: TFormMode);
begin
  inherited SetFormMode(AValue);
  SetButtons;
  SetStatusBar;
end;

procedure TDbNavStatForm.SetStatusBar;
begin
  case FormMode of
    fmBrowse: StatusBar1.Panels[1].Text := 'Browsing';
    fmInsert: StatusBar1.Panels[1].Text := 'Inserting';
    fmEdit:   StatusBar1.Panels[1].Text := 'Edit';
  end;
end;

procedure TDbNavStatForm.sbBrowseClick(Sender: TObject);
begin
    FormMode:=fmBrowse;
end;



procedure TDbNavStatForm.Button1Click(Sender: TObject);
begin
  inherited;
Close;
end;

end.
