New-Item -Force -ItemType SymbolicLink -Target ./Microsoft.Powershell_profile.ps1 -Path $env:USERPROFILE\Documents\WindowsPowershell\Microsoft.PowerShell_profile.ps1
New-Item -Force -ItemType SymbolicLink -Target ./settings.json -Path $env:APPDATA\Code\User\settings.json
New-Item -Force -ItemType SymbolicLink -Target ./keybindings.json -Path $env:APPDATA\Code\User\keybindings.json