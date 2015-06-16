; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "�������� (����������)"
#define MyAppVerName "�������� (����������) v. 2.0"
#define MyAppPublisher "����������"
#define MyAppURL "http://www.privatbank.com.ua"
#define MyAppExeName "m_zprtl.exe"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName="C:\PrivatBank\M_ZPRTL\"
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=m_zprtl_setup
SetupIconFile=E:\#DATA\Icons\Icons\4000\SYSTEMST.ICO
LicenseFile=D:\#VKLAD\APP\M_ZPRTL\_INSTALL_\FILES\license.txt
Compression=lzma
SolidCompression=yes

[Languages]
Name: "rus"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\#VKLAD\APP\M_ZPRTL\_INSTALL_\M_ZPRTL\m_zprtl.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\#VKLAD\APP\M_ZPRTL\_INSTALL_\M_ZPRTL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: D:\#VKLAD\APP\M_ZPRTL\_INSTALL_\FILES\license.txt; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon
Name: {group}\License; Filename: {app}\license.txt


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent

