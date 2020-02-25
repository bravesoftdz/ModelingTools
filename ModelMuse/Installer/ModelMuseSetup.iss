; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
;MMVersion is only updated for major releases e.g. 4.0, 5.0 etc.
#define MMVersion "4" 
;MMCurrentVersion is updated for each version released
#define MMCurrentVersion "4_2" 
AppVerName=ModelMuse 4.2.0.0

;enable or disable the following to install in 32-bit or 64-bit mode
;#define Win64

; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8194A6A0-728E-4993-97C2-3A25EAA73F1E}
AppName=ModelMuse
AppPublisher=U. S. Geological Survey
AppPublisherURL=https://www.usgs.gov/software/modelmuse-a-graphical-user-interface-groundwater-models
AppSupportURL=https://www.usgs.gov/software/modelmuse-a-graphical-user-interface-groundwater-models
AppUpdatesURL=https://www.usgs.gov/software/modelmuse-a-graphical-user-interface-groundwater-models
DefaultDirName={commonpf}\USGS\ModelMuse{#MMVersion}
DefaultGroupName=ModelMuse
InfoAfterFile=C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\readme.txt
OutputDir=C:\ModelingTools\ModelMuse\Installer
#ifdef Win64
OutputBaseFilename=ModelMuseSetup64_{#MMCurrentVersion}
#else
OutputBaseFilename=ModelMuseSetup32_{#MMCurrentVersion}
#endif
SetupIconFile=C:\ModelingTools\ModelMuse\ModelMuseIcon5.ico
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
#ifdef Win64
ArchitecturesInstallIn64BitMode=x64 
#endif

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse\bin\ModelMuse.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\data\*"; DestDir: "{commondocs}\ModelMuse Examples\data"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.svn"
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\doc\*"; DestDir: "{app}\doc"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.svn"
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\readme.txt"; DestDir: "{app}"; Flags: ignoreversion; Excludes: "*.svn"
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\examples\*"; DestDir: "{commondocs}\ModelMuse Examples\examples"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.svn"
#ifdef Win64
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\bin64\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.svn"
#else
Source: "C:\ModelingTools\ModelMuse\Installer\ModelMuse{#MMCurrentVersion}\bin32\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.svn"
#endif
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
; Create file association for .gpt files.
Root: HKCR; Subkey: ".gpt"; ValueType: string; ValueName: ""; ValueData: "ModelMuseTextFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "ModelMuseTextFile"; ValueType: string; ValueName: ""; ValueData: "ModelMuse Text File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "ModelMuseTextFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\ModelMuse.exe,0"
Root: HKCR; Subkey: "ModelMuseTextFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\ModelMuse.exe"" ""%1"""

; Create file association for .gpb files.
Root: HKCR; Subkey: ".gpb"; ValueType: string; ValueName: ""; ValueData: "ModelMuseBinaryFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "ModelMuseBinaryFile"; ValueType: string; ValueName: ""; ValueData: "ModelMuse Binary File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "ModelMuseBinaryFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\ModelMuse.exe,0"
Root: HKCR; Subkey: "ModelMuseBinaryFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\ModelMuse.exe"" ""%1"""

; Create file association for .mmZlib files.
Root: HKCR; Subkey: ".mmZlib"; ValueType: string; ValueName: ""; ValueData: "ModelMuseCompressedBinaryFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "ModelMuseCompressedBinaryFile"; ValueType: string; ValueName: ""; ValueData: "ModelMuse Compressed Binary File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "ModelMuseCompressedBinaryFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\ModelMuse.exe,0"
Root: HKCR; Subkey: "ModelMuseCompressedBinaryFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\ModelMuse.exe"" ""%1"""

[Icons]
Name: "{group}\ModelMuse"; Filename: "{app}\bin\ModelMuse.exe"
Name: "{group}\ModelMuse 2.0 Documentation"; Filename: "{app}\doc\tm6A29.pdf"
Name: "{group}\ModelMuse 3.0 Documentation"; Filename: "{app}\doc\tm6-a49.pdf"
Name: "{group}\WellFootprint Documentation"; Filename: "{app}\doc\ofr20171137.pdf"
Name: "{group}\ModelMuse 4.0 Documentation"; Filename: "{app}\doc\sir20195036.pdf"
Name: "{group}\MODFLOW 6 Supported Features"; Filename: "{app}\doc\MODFLOW 6 Supported Features.pdf"
Name: "{group}\ModelMuse Revision History"; Filename: "{app}\doc\Release.chm"
Name: "{commondesktop}\ModelMuse"; Filename: "{app}\bin\ModelMuse.exe"; Tasks: desktopicon
Name: "{group}\ModelMonitor"; Filename: "{app}\bin\ModelMonitor.exe"
Name: "{group}\ModelMuse readme.txt"; Filename: "{app}\readme.txt"

[Run]
Filename: "{app}\bin\ModelMuse.exe"; Description: "{cm:LaunchProgram,ModelMuse}"; Flags: nowait postinstall skipifsilent















