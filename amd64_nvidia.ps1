Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install adobereader firefox adoptopenjdk8 7zip.install `
  notepadplusplus.install vcredist140 vlc git.install `
  nodejs-lts visualstudio2017buildtools filezilla `
  libreoffice-still vscode thunderbird php youtube-dl `
  cmake microsoft-windows-terminal spotify ninja make `
  microsoft-teams calibre autohotkey.install windirstat `
  audacity ffmpeg github-desktop qbittorrent mingw steam `
  rufus pswindowsupdate blender discord.install handbrake.install `
  mkvtoolnix obs-studio.install geforce-game-ready-driver unity-hub `
  uplay geforce-experience telnet epicgameslauncher shutup10 `
  sudo zerotier-one msiafterburner rclone

choco install python3 --version=3.8.5.20200721
