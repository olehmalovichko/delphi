unit RunApp;

interface
Uses Windows,Sysutils,IniFiles,classes;

function WinExecAndWait32(FileName : PChar; CommandLine : PChar; Visibility : Integer) : Integer;
procedure RunAppSer;
function GetWinVer: string;

implementation

function GetWinVer: string;
var
  Ver: TOsVersionInfo;
  Platform: string[4];
begin
  Ver.dwOSVersionInfoSize := SizeOf(Ver);
  GetVersionEx(Ver);
  with Ver do begin
    case dwPlatformId of
      VER_PLATFORM_WIN32s: Platform := '32s';
      VER_PLATFORM_WIN32_WINDOWS:
        begin
          dwBuildNumber := dwBuildNumber and $0000FFFF;
          if (dwMajorVersion > 4) or ((dwMajorVersion = 4) and
            (dwMinorVersion >= 10)) then Platform := '98'
          else Platform := '95';
        end;
      VER_PLATFORM_WIN32_NT: Platform := 'NT';
    end;
    Result := Trim(Platform);
  end;
end;


{запускает файл на выполнение}
function WinExecAndWait32(FileName : PChar; CommandLine : PChar; Visibility : Integer) : Integer;
 { returns -1 if the Exec failed, otherwise returns the process' exit
   code when the process terminates }
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:ShortString;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
begin
  StrCopy(zAppName, FileName);
  StrCat(zAppName, CommandLine);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
      zAppName,                      { pointer to command line string }
      nil,                           { pointer to process security attributes }
      nil,                           { pointer to thread security attributes }
      false,                         { handle inheritance flag }
      CREATE_NEW_CONSOLE or          { creation flags }
      NORMAL_PRIORITY_CLASS,
      nil,                           { pointer to new environment block }
      nil,                           { pointer to current directory name }
      StartupInfo,                   { pointer to STARTUPINFO }
      ProcessInfo) then              { pointer to PROCESS_INF }
        Result := -1
  else begin
// а ждать не будем :-)   WaitforSingleObject(ProcessInfo.hProcess,INFINITE);
//    GetExitCodeProcess(ProcessInfo.hProcess,Result);
  end;
end;

function MSUser:String;
var
   IniFileName: String;
   MaxNameLen: Cardinal;
   SNameUser:String;
begin
  MaxNameLen:=60;
  SetLength(SNameUser,MaxNameLen);
  GetUserName(PChar(SNameUser),MaxNameLen);
  SetLength(SNameUser,Pred(MaxNameLen));
  Result:=TRIM(SNameUser);
end;

function GetItem(s:String): String ;
begin
result:= copy(s,1,pos('=',s)-1);
end;

function GetRun(s:String): String ;
begin
result:= copy(s,pos('=',s)+1,length(s)-pos('=',s)+1 );
end;


procedure RunAppSer;
var
IniFile : TIniFile;
sList :TStringList;
i :Integer;
ss: String;
begin

if (Copy(UpperCase(MSUser),1,3)<>'OVT') then
 if (UpperCase(MSUser)<>'SV1') then
  if (UpperCase(MSUser)<>'MAIL') then
  begin
  if GetWinVer<>'95' then
   if FileExists('N:\APP\appser.exe') then
       WinExecAndWait32(PChar('N:\APP\appser.exe'),PChar(''),sw_Shownormal);//выполнить программу
  end;

//--проверим не заблокирована ли программа
IniFile:=TIniFile.Create('N:\APP\MAPP.INI');
sList:=TStringList.Create;
try
 IniFile.ReadSectionValues('Blokada',sList);
 for i := 0 to  SList.Count-1 do
  begin
    ss:=UpperCase(ExtractFileName(GetItem(sList.Strings[i])));

    if  (UpperCase(ExtractFileName(GetItem(sList.Strings[i])))=
           UpperCase(ExtractFileName(ParamStr(0)))) then //нашли в списке программ
      begin
       if GetRun(sList.Strings[i])='True' then
           begin
            if FileExists('N:\APP\stop.exe') then
               WinExecAndWait32(PChar('N:\APP\stop.exe'),PChar(''),sw_Shownormal);//выполнить программу
               Halt;
           end;
      end;
  end;


finally
 IniFile.Free;
 sList.Free;
end;

end;


end.
