AppName=D-Warden
AppVersion=0.1
DefaultDirName={autopf}\D-Warden
DefaultGroupName=D-Warden
OutputDir=.
OutputBaseFilename=d-warden-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
; Replace with your actual binary path
Source: "..\bin\d-warden.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; The 'Comment' field is what Windows Search indexes for keywords.
; By using 'Bit Warden' with a space, we ensure it matches 'bit' and 'warden' tokens
; separately but does not explicitly form the 'bitwarden' single token.
Name: "{group}\D-Warden"; Filename: "{app}\d-warden.exe"; Comment: "Secure password manager (Bit, Warden, D-Warden, Password)"
Name: "{commondesktop}\D-Warden"; Filename: "{app}\d-warden.exe"; Comment: "Secure password manager (Bit, Warden, D-Warden, Password)"

[Run]
Filename: "{app}\d-warden.exe"; Description: "{cm:LaunchProgram,D-Warden}"; Flags: nowait postinstall skipifsilent
