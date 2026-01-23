PowerShell Cmd lists
Terminal Hygiene

Clear-Host or cls
Clears the screen — keeps your terminal crisp and readable.

Get-History or h
Lists previous commands (great for reviewing what you ran).

Clear-History
Wipes your command history for a fresh start or privacy.

Remove-Item -Path $env:TEMP\* -Recurse -Force
Cleans out your temp folder — terminal hygiene and system hygiene.

Get-ChildItem -Recurse | Sort-Object Length -Descending | Select-Object -First 10
Finds your 10 largest files in the current directory. Helps tidy up cluttered dev folders.

💅 5 Beautification + Usability Tweaks

These improve readability, usability, and your day-to-day feel.

Set-PSReadLineOption -EditMode Emacs
Enables Emacs-style editing (or -EditMode Windows if you prefer classic keys).

Set-PSReadLineOption -PredictionSource History
Adds inline command prediction based on your history — feels like having Copilot in your terminal.

Set-PSReadLineOption -Colors @{ "Command" = "Cyan"; "Parameter" = "Yellow"; "String" = "Green" }
Customizes syntax highlighting colors — brighten up your syntax life!

Install-Module oh-my-posh -Scope CurrentUser + Set-PoshPrompt -Theme paradox
Full-on beautification: add icons, colors, Git status, and more to your prompt. Like zsh powerlevel10k for PowerShell.

Install-Module Terminal-Icons -Scope CurrentUser + Import-Module Terminal-Icons
Adds pretty icons (folders, files, git, etc.) to ls output.

🧠 5 “Power User” or Lesser-Known Enhancers

For the curious tinkerer who loves a trick up their sleeve.

Set-PSReadLineOption -BellStyle None
Turns off that annoying system beep when you typo.

Get-Command -Module Microsoft.PowerShell.Utility
Discover hidden built-ins you might not even know exist.

function ll { Get-ChildItem -Force | Format-Table Mode, LastWriteTime, Length, Name }
Custom “ll” alias like Linux — shows hidden files, formatted nicely.

New-Alias open Start-Process
Adds a clean macOS-style open command (e.g. open . to open the current folder in Explorer).

Write-Host "🔥 PowerShell ready to roll." -ForegroundColor Magenta
Little flair on startup — add this to your PowerShell profile for a greeting or branding line.

Create a new folder
New-Item -Path "C:\path\to\your\new\folder" -ItemType Directory -Name "MyNewFolder"
delete a folder
Remove-Item -Path "C:\Path\To\Your\Folder"
Rename a local user
Rename-LocalUser -Name "CurrentUsername" -NewName "NewUsername"
get logs
Get-WinEvent -ListLog *