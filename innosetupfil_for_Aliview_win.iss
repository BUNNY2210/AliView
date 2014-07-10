; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AliView"
#define MyAppVersion "1.x"
#define MyAppPublisher "Systematic Biology, Uppsala University"
#define MyAppURL "http://www.ormbunkar.se"
#define MyAppExeName "AliView.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DC75EEAA-05CC-4923-ADE4-0D84CBD25703}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir="Z:\home\anders\maven\AliView\target\windows-latest\"
OutputBaseFilename={#MyAppName}-Setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: fasAssociation; Description: "Associate "".fas,.fa,.fasta)"" extension"; GroupDescription: File extensions; Flags: unchecked
Name: nexAssociation; Description: "Associate "".nex,.nexus"" extension"; GroupDescription: File extensions; Flags: unchecked
Name: phyAssociation; Description: "Associate "".phy,.phylip"" extension"; GroupDescription: File extensions; Flags: unchecked
Name: clustalAssociation; Description: "Associate "".aln,.clustal"" extension"; GroupDescription: File extensions; Flags: unchecked
Name: msfAssociation; Description: "Associate "".msf"" extension"; GroupDescription: File extensions; Flags: unchecked
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Registry]
Root: HKCR; Subkey: ".nex"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_nex"; Flags: uninsdeletevalue; Tasks: nexAssociation
Root: HKCR; Subkey: ".nexus"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_nex"; Flags: uninsdeletevalue; Tasks: nexAssociation 
Root: HKCR; Subkey: "{#MyAppName}_nex"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}"; Flags: uninsdeletekey; Tasks: nexAssociation
Root: HKCR; Subkey: "{#MyAppName}_nex\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppName}"" ""%1"""
Root: HKCR; Subkey: ".phy"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_phy"; Flags: uninsdeletevalue; Tasks: phyAssociation 
Root: HKCR; Subkey: ".phylip"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_phy"; Flags: uninsdeletevalue; Tasks: phyAssociation 
Root: HKCR; Subkey: "{#MyAppName}_phy"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}"; Flags: uninsdeletekey; Tasks: phyAssociation
Root: HKCR; Subkey: "{#MyAppName}_phy\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppName}"" ""%1"""
Root: HKCR; Subkey: ".fas"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_fas"; Flags: uninsdeletevalue; Tasks: fasAssociation 
Root: HKCR; Subkey: ".fa"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_fas"; Flags: uninsdeletevalue; Tasks: fasAssociation 
Root: HKCR; Subkey: ".fasta"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_fas"; Flags: uninsdeletevalue; Tasks: fasAssociation 
Root: HKCR; Subkey: "{#MyAppName}_fas"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_fas"; Flags: uninsdeletekey; Tasks: fasAssociation
Root: HKCR; Subkey: "{#MyAppName}_fas\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppName}"" ""%1"""
Root: HKCR; Subkey: ".clustal"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_clustal"; Flags: uninsdeletevalue; Tasks: clustalAssociation 
Root: HKCR; Subkey: ".aln"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_clustal"; Flags: uninsdeletevalue; Tasks: clustalAssociation 
Root: HKCR; Subkey: "{#MyAppName}_clustal"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}"; Flags: uninsdeletekey; Tasks: clustalAssociation
Root: HKCR; Subkey: "{#MyAppName}_clustal\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppName}"" ""%1"""
Root: HKCR; Subkey: ".msf"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}_msf"; Flags: uninsdeletevalue; Tasks: msfAssociation 
Root: HKCR; Subkey: "{#MyAppName}_msf"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName}"; Flags: uninsdeletekey; Tasks: msfAssociation
Root: HKCR; Subkey: "{#MyAppName}_msf\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppName}"" ""%1"""

[Files]
Source: "Z:\home\anders\maven\AliView\target\windows-latest\AliView.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Z:\home\anders\maven\AliView\AliView.l4j.ini"; DestDir: "{app}";
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

