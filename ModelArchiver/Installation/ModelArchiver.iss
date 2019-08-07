; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ModelArchiver and FgdcMetaEditor"
#define MyAppVersion "1.0"
#define MyAppVersionText "1_0"
#define MyAppPublisher "U. S. Geological Survey"
#define MyAppURL "https://doi.org/10.5066/F73X85M1"
#define MyAppExeName "ModelArchiver.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F35229AF-CC31-4406-A8F6-C86A9CB6759D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\USGS\ModelArchiver and FgdcMetaEditor
DisableProgramGroupPage=yes
InfoBeforeFile=D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\readme.txt
OutputBaseFilename=ModelArchiver_and_FgdcMetaEditor_Setup_{#MyAppVersionText}
SetupIconFile=D:\Colab\GWModelTools\ModelArchiver\ModelArchiver_Icon.ico
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked


[Files]
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\bin64\*"; DestDir: "{app}\bin"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\bin32\*"; DestDir: "{app}\bin"; Flags: ignoreversion solidbreak; Check: not Is64BitInstallMode
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\doc\*"; DestDir: "{app}\doc"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; 
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\src\*"; DestDir: "{app}\src"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\test-out\*"; DestDir: "{commondocs}\ModelArchiver and FgdcMetaEditor\test-out"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\test-run\*"; DestDir: "{commondocs}\ModelArchiver and FgdcMetaEditor\test-run"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\bin64\Help\*"; DestDir: "{app}\bin\Help"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "D:\Colab\GWModelTools\ModelArchiver\Installation\ModelArchiver_and_FgdcMetaEditor_{#MyAppVersionText}\readme.txt"; DestDir: "{app}"; Flags: ignoreversion 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCR; Subkey: ".asxml"; ValueType: string; ValueName: ""; ValueData: "ModelArchiverFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "ModelArchiverFile"; ValueType: string; ValueName: ""; ValueData: "ModelArchiver File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "ModelArchiverFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\ModelArchiver.exe,0"
Root: HKCR; Subkey: "ModelArchiverFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\ModelArchiver.exe"" ""%1"""

[Icons]
Name: "{commonprograms}\ModelArchiver"; Filename: "{app}\bin\ModelArchiver.exe"
Name: "{commonprograms}\FgdcMetaEditor"; Filename: "{app}\bin\FgdcMetaEditor.exe"
Name: "{commondesktop}\ModelArchiver"; Filename: "{app}\bin\ModelArchiver.exe"; Tasks: desktopicon
Name: "{commondesktop}\FgdcMetaEditor"; Filename: "{app}\bin\FgdcMetaEditor.exe"; Tasks: desktopicon
Name: "{commondesktop}\Documentation"; Filename: "{app}\doc\ofr20171149.pdf"; Tasks: desktopicon

[Run]
Filename: "{app}\bin\ModelArchiver.exe"; Description: "{cm:LaunchProgram,{#StringChange(MyAppExeName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

