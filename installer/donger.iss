#define MyAppName "Donger"
#ifndef MyAppVersion
  #define MyAppVersion "0.1.0"
#endif

[Setup]
AppId={{0A10D9BE-1073-4C1B-AC26-082B123C6954}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher=is-leeroy-jenkins
DefaultDirName={localappdata}\Programs\Donger
DefaultGroupName=Donger
OutputDir=..\dist-installer
OutputBaseFilename=Donger-Setup-{#MyAppVersion}
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
WizardStyle=modern
UninstallDisplayName=Donger
UninstallDisplayIcon={app}\Donger.exe
CloseApplications=yes

[Files]
Source: "..\dist\Donger\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Icons]
Name: "{group}\Donger"; Filename: "{app}\Donger.exe"
Name: "{autodesktop}\Donger"; Filename: "{app}\Donger.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Donger.exe"; Description: "Launch Donger"; Flags: nowait postinstall skipifsilent
