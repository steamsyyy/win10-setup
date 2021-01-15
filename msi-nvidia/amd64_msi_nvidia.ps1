Set-Location "C:\Windows\System32"
# Install Chocolatey package managewr
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install applications through Chocolatey
choco install adobereader firefox adoptopenjdk8 7zip.install `
  notepadplusplus.install vcredist140 vlc git.install `
  nodejs-lts visualstudio2017buildtools filezilla `
  libreoffice-still vscode thunderbird php youtube-dl `
  cmake microsoft-windows-terminal spotify ninja make `
  calibre autohotkey.install windirstat `
  audacity ffmpeg github-desktop qbittorrent mingw steam `
  rufus pswindowsupdate blender discord.install handbrake.install `
  mkvtoolnix obs-studio.install geforce-game-ready-driver unity-hub `
  uplay geforce-experience telnet epicgameslauncher shutup10 `
  sudo zerotier-one msiafterburner rclone

# Latest version working with many python libs that don't support 3.9
choco install python3 --version=3.8.5.20200721

# Install BetterDiscordApp (automated version of https://github.com/rauenzi/BetterDiscordApp#manual-installation)
Set-Location "C:\Windows\Temp"
Invoke-WebRequest -Uri https://github.com/rauenzi/BetterDiscordApp/archive/injector.zip -OutFile "injector.zip"
Expand-Archive -LiteralPath "C:\Windows\Temp\injector.zip" -DestinationPath "C:\Windows\Temp"
Rename-Item "C:\Windows\Temp\BetterDiscordApp-injector" "C:\Windows\Temp\app"
Set-Location $env:LOCALAPPDATA; Set-Location ".\Discord\app*\resources"
Remove-Item "app" -Recurse -ErrorAction Ignore
Move-Item "C:\Windows\Temp\app" .
"BetterDiscordApp will be installed automatically after you close Discord and open it again."
